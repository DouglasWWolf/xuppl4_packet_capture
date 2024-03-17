#include "unistd.h"
#include <cstring>
#include <cstdlib>
#include <cstdio>
#include "ram_bank.h"


const uint32_t REG_BASE        = 0x1000;
const uint32_t REG_MODULE_REV  = (REG_BASE +  0 * 4);
const uint32_t REG_CAPTURE     = (REG_BASE +  1 * 4);
const uint32_t REG_WINDOWH     = (REG_BASE +  2 * 4);
const uint32_t REG_WINDOWL     = (REG_BASE +  3 * 4);
const uint32_t REG_STATUS      = (REG_BASE +  4 * 4);
const uint32_t REG_BANK_SIZEH  = (REG_BASE +  5 * 4);
const uint32_t REG_BANK_SIZEL  = (REG_BASE +  6 * 4);
const uint32_t REG_BANK0_ADDRH = (REG_BASE +  7 * 4);
const uint32_t REG_BANK0_ADDRL = (REG_BASE +  8 * 4);
const uint32_t REG_BANK1_ADDRH = (REG_BASE +  9 * 4);
const uint32_t REG_BANK1_ADDRL = (REG_BASE + 10 * 4);
const uint32_t REG_TS_FREQ     = (REG_BASE + 11 * 4);

const uint32_t WINDOW_SIZE = 1024 * 1024;

//=============================================================================
// write_reg32() - Writes a value to a 32-bit register on the FPGA
//=============================================================================
void CRamBank::write_reg32(uint32_t addr, uint32_t value)
{
    uint32_t* axi_addr = (uint32_t*)(m_BAR0 + addr);

    *axi_addr = value;
}
//=============================================================================


//=============================================================================
// read_reg32() - Reads a value from a 32-bit register on the FPGA
//=============================================================================
uint32_t CRamBank::read_reg32(uint32_t addr)
{
    uint32_t* axi_addr = (uint32_t*)(m_BAR0 + addr);

    return *axi_addr;
}
//=============================================================================



//=============================================================================
// write_reg64() - Writes a value to a 64-bit register on the FPGA
//=============================================================================
void CRamBank::write_reg64(uint32_t addr, uint64_t value)
{
    uint32_t* axi_addr_h = (uint32_t*)(m_BAR0 + addr);
    uint32_t* axi_addr_l = axi_addr_h + 1;

    *axi_addr_h = (value >> 32);
    *axi_addr_l = (value & 0xFFFFFFFF);
}
//=============================================================================


//=============================================================================
// read_reg64() - Reads a value from a 64-bit register on the FPGA
//=============================================================================
uint64_t CRamBank::read_reg64(uint32_t addr)
{
    uint32_t* axi_addr_h = (uint32_t*)(m_BAR0 + addr);
    uint32_t* axi_addr_l = axi_addr_h + 1;

    uint64_t hi32 = *axi_addr_h;
    uint32_t lo32 = *axi_addr_l;

    return (hi32 << 32) | lo32;
}
//=============================================================================



//=============================================================================
// set_window_address() - Sets the AXI address where BAR1 points to
//=============================================================================
void CRamBank::set_window_addr(uint64_t address)
{
    write_reg64(REG_WINDOWH, address);
    m_current_window_addr = address;
}
//=============================================================================


//=============================================================================
// init() - Initialize pointers, etc.
//=============================================================================
void CRamBank::init(unsigned char* BAR0, unsigned char* BAR1)
{
    // Save the base addresses of the two PCIe device resources
    m_BAR0 = BAR0;
    m_BAR1 = BAR1;

    // Fetch the frequency of the timestamp clock
    m_ts_frequency = read_reg32(REG_TS_FREQ);

    init_channel(0);
}
//=============================================================================

//=============================================================================
// init_channel() - Initializes all internal variables so that the function
//                  "get_next_packet" can do its job
//=============================================================================
void CRamBank::init_channel(int channel)
{
    // This is the size of a bank of RAM, in bytes
    m_ram_bank_size = read_reg64(REG_BANK_SIZEH);

    // This is the base address of our RAM bank
    if (channel == 0)
        m_ram_bank_base_addr = read_reg64(REG_BANK0_ADDRH);
    else
        m_ram_bank_base_addr = read_reg64(REG_BANK1_ADDRH);

    // Set the address of the sliding window to the start of our RAM bank
    set_window_addr(m_ram_bank_base_addr);

    // This is the address (offset from m_ram_bank_base_addr) where we will
    // fetch our next packet from
    m_next_packet_offset = 0;
}
//=============================================================================





//=============================================================================
// fetch_cycle() - Fetches 64 bytes of data from the specified offset
//                 into the current bank of RAM.
//=============================================================================
bool CRamBank::fetch_cycle(unsigned char* buffer, uint64_t ram_offset)
{
    // If the caller is trying to fetch data from a non-existent
    // RAM address, stop and tell them.
    if (ram_offset >= m_ram_bank_size) return false;

    // Compute the AXI address we're trying to fetch data from
    uint64_t axi_address = ram_offset + m_ram_bank_base_addr;

    // Figure out where our sliding window should be
    uint64_t new_window_address = axi_address & 0xFFFFFFFFFFF00000;
    uint64_t new_window_offset  = axi_address & 0x00000000000FFFFF;

    // Make sure the AXI address we're trying to read is inside of
    // the sliding window
    if (m_current_window_addr != new_window_address)
        set_window_addr(new_window_address);

    // Fetch this data-cycle from RAM on the FPGA board
    memcpy(buffer, m_BAR1 + new_window_offset, 64);

    // Tell the caller we have their data
    return true;
}
//=============================================================================



//=============================================================================
// get_next_packet() - Fetches the next packet from ram
//=============================================================================
bool CRamBank::get_next_packet(pcap_packet_t* packet_ptr)
{
    unsigned char buffer[64];

    // Create a convenient reference to the caller's packet structure
    pcap_packet_t& packet = *packet_ptr;

    // Fetch the block header
    if (!fetch_cycle(buffer, m_next_packet_offset))
        return false;

    // Point to first data-cycle of packet data
    m_next_packet_offset += 64;
    
    // Fetch the 7 byte packet signature
    uint64_t signature = *(uint64_t*)buffer;

    // If the signature is wrong, this isn't a packet
    if ((signature & 0xFFFFFFFFFFFFFF) != 0x666C6F57202E44) return false;

    // Fetch the timestamp from the block header
    uint64_t timestamp_clocks = *(uint64_t*)(buffer + 8);

    // Convert the timestamp to nanoseconds
    uint64_t timestamp_ns = timestamp_clocks * 1000000000 / m_ts_frequency;
       
    // Fetch the packet length (in bytes) from the block header
    uint32_t length_in_bytes = *(uint16_t*)(buffer + 16);

    // If length is invalid, this isn't a packet
    if (length_in_bytes > sizeof(packet.data))
    {
        printf("Invalid packet length encountered! (%i)\n", length_in_bytes);
        exit(1);
    }

    // If this entire packet didn't fit in RAM, then we're out
    // of packets to fetch
    if ((m_next_packet_offset + length_in_bytes) > m_ram_bank_size)
        return false;

    // Fill in the caller's fields that describe the packet we're handing him
    packet.ts_seconds     = timestamp_ns / 1000000000;
    packet.ts_nanoseconds = timestamp_ns % 1000000000;
    packet.length1        = length_in_bytes;
    packet.length2        = length_in_bytes;

    // Determine how many 64-byte data cycles are in this packet
    int partial_cycle = (length_in_bytes % 64) != 0;
    int data_cycles   = (length_in_bytes / 64) + partial_cycle;

    // Point to the place where we want to store the packet data
    unsigned char* pdata = packet.data;

    // Read packet data from the FPGA RAM and store it in the caller's structure
    for (int i=0; i<data_cycles; ++i)
    {
        if (!fetch_cycle(pdata, m_next_packet_offset))
            return false;
        pdata += 64;
        m_next_packet_offset += 64;
    }

    // Tell the caller that we have a packet for them
    return true;
}
//=============================================================================


//=============================================================================
// This is the header of a PCAP file
//=============================================================================
#pragma pack(push, 1)
struct pcap_header_t
{
    uint32_t    magic_number;
    uint16_t    major_version;
    uint16_t    minor_version;
    uint32_t    reserved1;
    uint32_t    reserved2;
    uint32_t    snaplen;
    uint32_t    link_type;
} header;
#pragma pack_pop;
//=============================================================================


//=============================================================================
// dump_pcap() - Creates a pcap file containing packet data
//=============================================================================
void CRamBank::dump_pcap(uint32_t channel, uint32_t packets)
{
    char filename[1000];
    pcap_packet_t packet;

    // Create the filename we're going to capture packets to
    sprintf(filename, "ch%i_packets.pcap", channel);
   
    // Initialize internal variables to read the specified channel
    init_channel(channel);

    // Create the PCAP header
    header.magic_number  = 0xA1B23C4D;
    header.major_version = 2;
    header.minor_version = 4;
    header.reserved1     = 0;
    header.reserved2     = 0;
    header.snaplen       = 65535;
    header.link_type     = 1;

    // Create the output file and complain if we can't
    FILE* ofile = fopen(filename, "w");
    if (ofile == nullptr)
    {
        printf("Can't create file %s\n", filename);
        exit(1);        
    }

    // Write the PCAP header
    fwrite(&header, sizeof(header), 1, ofile);

    // Fetch packets one at a time and write them to the file
    for (uint32_t i=0; i<packets; ++i)
    {
        if (!get_next_packet(&packet)) break;
        fwrite(&packet, packet.length1 + 16, 1, ofile);
    }

    // Close the file, we're done!
    fclose(ofile);
}
//=============================================================================
