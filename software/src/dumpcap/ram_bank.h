#include <cstdint>

//=============================================================================
// This is a PCAP packet, returned by get_next_packet()
//=============================================================================
#pragma pack(push, 1)
struct pcap_packet_t
{
    uint32_t    ts_seconds;
    uint32_t    ts_nanoseconds;
    uint32_t    length1;
    uint32_t    length2;
    uint8_t     data[100000];
};
#pragma pack(pop)
//=============================================================================

class CRamBank
{
public:


    void    init(unsigned char* BAR0, unsigned char* BAR1);

    void    init_channel(int channel);

    bool    get_next_packet(pcap_packet_t*);

    void    dump_pcap(uint32_t channel, uint32_t packets);
    
protected:

    // Low level routines for writing FPGA registers
    void write_reg32(uint32_t addr, uint32_t value);
    void write_reg64(uint32_t addr, uint64_t value);
    
    // Low level routines for reading FPGA registers
    uint32_t read_reg32(uint32_t addr);
    uint64_t read_reg64(uint32_t addr);

    // Sets the base address of the sliding window into RAM
    void set_window_addr(uint64_t address);

    // Fetches 64 bytes into the specified buffer
    bool fetch_cycle(unsigned char* buffer, uint64_t ram_offset);

    // Current base address of the sliding window into RAM
    uint64_t m_current_window_addr;

    // The base address of the current bank of RAM
    uint64_t m_ram_bank_base_addr;

    // The size of a bank of RAM, in bytes
    uint64_t m_ram_bank_size;

    // The offset into the current bank of RAM where we will
    // fetch our next packet from
    uint64_t m_next_packet_offset;

    // The frequency of the clock that generates the raw timestamps
    uint64_t m_ts_frequency;

    // Userspace pointers to the PCIe resources of our device
    unsigned char *m_BAR0, *m_BAR1;
};