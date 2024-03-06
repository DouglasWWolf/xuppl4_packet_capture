#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <cstring>
#include <fcntl.h>
#include <sys/mman.h>
#include <errno.h>
#include <cstdint>
#include "PciDevice.h"
#include "ram_bank.h"

using namespace std;
PciDevice PCI;
uint32_t  channel     = 0;
uint32_t  max_packets = 1000;

void execute();
void parseCommandLine(const char** argv);


//=============================================================================
// main() - Execution starts here
//=============================================================================
int main(int argc, const char** argv)
{
    parseCommandLine(argv);

    try
    {
        execute();
    }
    catch(const std::exception& e)
    {
        printf("%s\n", e.what());
        exit(1);
    }
}
//=============================================================================



//=============================================================================
// showHelp() - Displays some help-text and exits the program
//=============================================================================
void showHelp()
{
    printf("dumpcap [-ch <0|1>] <packet_count>\n");
    exit(1);
}
//=============================================================================



//=============================================================================
// parseCommandLine() - Parses the command line parameters
//
//=============================================================================
void parseCommandLine(const char** argv)
{
    int i=1;

    while (true)
    {
        // Fetch the next token from the command line
        const char* token = argv[i++];

        // If we're out of tokens, we're done
        if (token == nullptr) break;

        // If it's the "-ch" switch, the user is specifying channel
        if ((strcmp(token, "-ch") == 0) || strcmp(token, "-channel") == 0)
        {
            token = argv[i++];
            if (token == nullptr) showHelp();
            channel = strtoul(token, 0, 0);
            if (channel < 0 || channel > 1)
            {
                printf("Invalid channel number.\n");
                showHelp();
            }
            continue;
        }

        // If this is an unrecognized command-line switch, complain
        else if (token[0] == '-')
        {
            printf("invalid command line switch.\n");
            showHelp();            
        }

        // Store the number of packet we want to dump
        max_packets = strtoul(token, 0, 0);
    }
}
//=============================================================================



//=============================================================================
// execute() - Creates a PCAP file from a bank of RAM on the FPGA board
//=============================================================================
void execute()
{
    CRamBank RAM;

    // Open a connection to our FPGA card and complain if we can't
    PCI.open("10ee:903f");
    vector<PciDevice::resource_t> resource = PCI.resourceList();
    if (resource.size() != 2)
    {
        printf("There is/are %li PCI resource(s) when there should be exactly 2!\n", resource.size());
        exit(1);
    }

    // Fetch the base address registers for the two PCI resources
    unsigned char* BAR0 = resource[0].baseAddr;
    unsigned char* BAR1 = resource[1].baseAddr;

    // Initialize the RAM manager
    RAM.init(BAR0, BAR1);

    // And dump the PCAP file for the specified channel
    RAM.dump_pcap(channel, max_packets);
}
//=================================================================================================
