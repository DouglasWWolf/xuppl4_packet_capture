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

void execute();
void parseCommandLine(const char** argv);


//=================================================================================================
// main() - Execution starts here
//=================================================================================================
int main(int argc, const char** argv)
{

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
//=================================================================================================



//=================================================================================================
// execute() - Does everything neccessary to begin a data transfer
//
// This routine assumes the run data has already been loaded into the contiguous RAM buffer
//=================================================================================================
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
    RAM.dump_pcap(0, 1000);
}
//=================================================================================================
