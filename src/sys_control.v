//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 02-Mar-24  DWW     1  Initial creation
//====================================================================================

/*
     AXI4-Lite slave for system control
*/

module sys_control
(
    input clk, resetn,

    // Reset for everything downstream
    output reg sys_reset_out,

    // This strobes high to start the "erase RAM" process
    output reg  erase_ram,

    // When this is asserted, incoming packets are allowed
    // to flow from the CMAC  into the rest of the system
    output reg  packet_gate,

    // When this is asserted, RAM bank N has completed calibration
    input  bank0_calib_complete_async, bank1_calib_complete_async,

    // When this is asserted, RAM bank N eraser is idle
    input  bank0_erase_idle_async, bank1_erase_idle_async,

    // This is the AXI address that PCIe BAR1 maps to
    output reg [63:0] window_addr,

    // The "up and aligned" status of the two QSFP ports
    input   qsfp0_status_async, qsfp1_status_async,

    // Drives the (active low) LEDs
    output [3:0] led_orang_l, led_green_l,


    //================== This is an AXI4-Lite slave interface ==================
        
    // "Specify write address"              -- Master --    -- Slave --
    input[31:0]                             S_AXI_AWADDR,   
    input                                   S_AXI_AWVALID,  
    output                                                  S_AXI_AWREADY,
    input[2:0]                              S_AXI_AWPROT,

    // "Write Data"                         -- Master --    -- Slave --
    input[31:0]                             S_AXI_WDATA,      
    input                                   S_AXI_WVALID,
    input[3:0]                              S_AXI_WSTRB,
    output                                                  S_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    output[1:0]                                             S_AXI_BRESP,
    output                                                  S_AXI_BVALID,
    input                                   S_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    input[31:0]                             S_AXI_ARADDR,     
    input                                   S_AXI_ARVALID,
    input[2:0]                              S_AXI_ARPROT,     
    output                                                  S_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    output[31:0]                                            S_AXI_RDATA,
    output                                                  S_AXI_RVALID,
    output[1:0]                                             S_AXI_RRESP,
    input                                   S_AXI_RREADY
    //==========================================================================
);  

// Include the constants that define our RAM configuration
`include "geometry.vh"

// Any time the register map of this module changes, this number should
// be bumped
localparam MODULE_VERSION = 1;


//=========================  AXI Register Map  =============================
localparam REG_MODULE_REV   =  0;
localparam REG_CAPTURE      =  1;
localparam REG_WINDOW_ADDRH =  2;
localparam REG_WINDOW_ADDRL =  3;
localparam REG_STATUS       =  4;
localparam REG_BANK_SIZEH   =  5;
localparam REG_BANK_SIZEL   =  6;
localparam REG_BANK0_ADDRH  =  7;
localparam REG_BANK0_ADDRL  =  8;
localparam REG_BANK1_ADDRH  =  9;
localparam REG_BANK1_ADDRL  = 10;
localparam REG_TS_FREQ      = 11;
//==========================================================================


//==========================================================================
// We'll communicate with the AXI4-Lite Slave core with these signals.
//==========================================================================
// AXI Slave Handler Interface for write requests
wire[31:0]  ashi_windx;     // Input   Write register-index
wire[31:0]  ashi_waddr;     // Input:  Write-address
wire[31:0]  ashi_wdata;     // Input:  Write-data
wire        ashi_write;     // Input:  1 = Handle a write request
reg[1:0]    ashi_wresp;     // Output: Write-response (OKAY, DECERR, SLVERR)
wire        ashi_widle;     // Output: 1 = Write state machine is idle

// AXI Slave Handler Interface for read requests
wire[31:0]  ashi_rindx;     // Input   Read register-index
wire[31:0]  ashi_raddr;     // Input:  Read-address
wire        ashi_read;      // Input:  1 = Handle a read request
reg[31:0]   ashi_rdata;     // Output: Read data
reg[1:0]    ashi_rresp;     // Output: Read-response (OKAY, DECERR, SLVERR);
wire        ashi_ridle;     // Output: 1 = Read state machine is idle
//==========================================================================

// QSFP aligned-status signals, synchronous to clk
wire qsfp0_status, qsfp1_status;
cdc_single cdc0(qsfp0_status_async, clk, qsfp0_status);
cdc_single cdc1(qsfp1_status_async, clk, qsfp1_status);

// Bank[n] calibration complete, synchronized to clk
wire bank0_calib_complete, bank1_calib_complete;
cdc_single cdc2(bank0_calib_complete_async, clk, bank0_calib_complete);
cdc_single cdc3(bank1_calib_complete_async, clk, bank1_calib_complete);

// Bank[n] erase complete, synchronized to clk
wire bank0_erase_idle, bank1_erase_idle;
cdc_single cdc4(bank0_erase_idle_async, clk, bank0_erase_idle);
cdc_single cdc5(bank1_erase_idle_async, clk, bank1_erase_idle);

// This is asserted when both banks complete RAM calibration
wire init_calib_complete = bank0_calib_complete & bank1_calib_complete;

// This is asserted when both banks of RAM are being erased
wire bank_erase_busy = (bank0_erase_idle == 0) & (bank1_erase_idle == 0);

// This is asserted when both banks of RAM have been erased
wire bank_erase_idle = (bank0_erase_idle == 1) & (bank1_erase_idle == 1);

//=============================================================================
// Status LED management
//=============================================================================
reg[3:0] orang, green;

// The LEDs are active low
assign led_orang_l = ~orang;
assign led_green_l = ~green;

// LED 0 will be orange or green to reflect the status of QSFP_0
always @* begin
    orang[0] = ~qsfp0_status;
    green[0] =  qsfp0_status;
end

// LED 1 will be orange or green to reflect the status of QSFP_1
always @* begin
    orang[1] = ~qsfp1_status;
    green[1] =  qsfp1_status;
end
//=============================================================================


//=============================================================================
// Build a status word that can be read from an AXI register
//=============================================================================
wire[3:0] status_word =
{
    bank1_calib_complete,
    bank0_calib_complete,
    qsfp1_status,
    qsfp0_status
};
//=============================================================================


// The state of the state-machines that handle AXI4-Lite read and AXI4-Lite write
reg ashi_write_state, ashi_read_state;

// The AXI4 slave state machines are idle when in state 0 and their "start" signals are low
assign ashi_widle = (ashi_write == 0) && (ashi_write_state == 0);
assign ashi_ridle = (ashi_read  == 0) && (ashi_read_state  == 0);
   
// These are the valid values for ashi_rresp and ashi_wresp
localparam OKAY   = 0;
localparam SLVERR = 2;
localparam DECERR = 3;

// An AXI slave is gauranteed a minimum of 128 bytes of address space
// (128 bytes is 32 32-bit registers)
localparam ADDR_MASK = 7'h7F;

// This will strobe high when it's time to start a capture
reg start_capture;

// This will strobe high when a capture if manually stopped
reg stop_capture;

//==========================================================================
// This state machine handles AXI4-Lite write requests
//
// Drives:
//==========================================================================
always @(posedge clk) begin

    start_capture <= 0;
    stop_capture  <= 0;

    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_write_state  <= 0;
        window_addr       <= 0;

    // If we're not in reset, and a write-request has occured...        
    end else case (ashi_write_state)
        
        0:  if (ashi_write) begin
       
                // Assume for the moment that the result will be OKAY
                ashi_wresp <= OKAY;              
            
                // Convert the byte address into a register index
                case (ashi_windx)
               
                    REG_CAPTURE:        if (ashi_wdata)
                                            start_capture <= 1;                                
                                        else
                                            stop_capture  <= 1;

                    REG_WINDOW_ADDRH:   window_addr[63:32] <= ashi_wdata;
                    REG_WINDOW_ADDRL:   window_addr[31:00] <= ashi_wdata;

                    // Writes to any other register are a decode-error
                    default: ashi_wresp <= DECERR;
                endcase
            end

        // Dummy state, doesn't do anything
        1: ashi_write_state <= 0;

    endcase
end
//==========================================================================





//==========================================================================
// World's simplest state machine for handling AXI4-Lite read requests
//==========================================================================
always @(posedge clk) begin
    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_read_state <= 0;
    
    // If we're not in reset, and a read-request has occured...        
    end else if (ashi_read) begin
   
        // Assume for the moment that the result will be OKAY
        ashi_rresp <= OKAY;              
        
        // Return the value associated with the register index
        case (ashi_rindx)
            
            // Allow a read from any valid register                
            REG_MODULE_REV:     ashi_rdata <= MODULE_VERSION;
            REG_CAPTURE:        ashi_rdata <= 0;
            REG_WINDOW_ADDRH:   ashi_rdata <= window_addr[63:32];
            REG_WINDOW_ADDRL:   ashi_rdata <= window_addr[31:00];
            REG_STATUS:         ashi_rdata <= status_word;
            REG_BANK_SIZEH:     ashi_rdata <= RAM_BANK_SIZE[63:32];
            REG_BANK_SIZEL:     ashi_rdata <= RAM_BANK_SIZE[31:00];
            REG_BANK0_ADDRH:    ashi_rdata <= BANK0_BASE_ADDR[63:32];
            REG_BANK0_ADDRL:    ashi_rdata <= BANK0_BASE_ADDR[31:00];
            REG_BANK1_ADDRH:    ashi_rdata <= BANK1_BASE_ADDR[63:32];
            REG_BANK1_ADDRL:    ashi_rdata <= BANK1_BASE_ADDR[31:00];
            REG_TS_FREQ:        ashi_rdata <= RAM_CLOCK_FREQ;

            // Because we are a 32-bit slave on a 512-bit bus, every
            // read operation will be 16-consecutive read operations.
            // Don't return a DECERR for any of them.
            default:            ashi_rdata <= 0;
        endcase
    end
end
//==========================================================================


//==========================================================================
// This block initializes a packet capture
//==========================================================================
reg[31:0] delay;
reg[ 2:0] csm_state;
//--------------------------------------------------------------------------
always @(posedge clk) begin

    // This will strobe high for one cycle
    erase_ram <= 0;

    // This is a countdown-to-zero counter
    if (delay) delay <= delay - 1;

    // If we're in reset, or we want to halt a running capture...
    if (resetn == 0 || stop_capture) begin
        csm_state     <= 0;
        sys_reset_out <= 0;
        packet_gate   <= 0;
    end 
    
    else case(csm_state)

        // If told to start a capture, put everything down stream in reset
        0:  if (start_capture) begin
                packet_gate   <= 0;
                sys_reset_out <= 1;
                delay         <= 20;
                csm_state     <= csm_state + 1;
            end

        // Release the downstream reset, and start waiting
        // for everything to come out of reset
        1:  if (delay == 0) begin
                sys_reset_out <= 0;
                delay         <= 20;
                csm_state     <= csm_state + 1;
            end

        // If everything is out of reset and RAM calibration is complete, erase
        // the contents of RAM by filling it with a fixed value
        2:  if (delay == 0 && init_calib_complete) begin
                erase_ram <= 1;
                delay     <= 20;
                csm_state <= csm_state + 1;
            end

        // Here we wait for the timer to run out.  Once it does, it's safe
        // to de-assert "erase_ram" because we know that the "fill_ram" module
        // has already seen it.
        3:  if (delay == 0) begin
                erase_ram <= 0;
                if (bank_erase_busy) begin
                    csm_state <= csm_state + 1;
                end
            end

        // Once both banks of RAM have been erased, open the gate
        // that allows packets to flow into the system
        4:  if (bank_erase_idle) begin
                packet_gate <= 1;
                csm_state   <= 0;   
            end
         
    endcase
end
//==========================================================================




//==========================================================================
// This connects us to an AXI4-Lite slave core
//==========================================================================
axi4_lite_slave#(ADDR_MASK) axil_slave
(
    .clk            (clk),
    .resetn         (resetn),
    
    // AXI AW channel
    .AXI_AWADDR     (S_AXI_AWADDR),
    .AXI_AWVALID    (S_AXI_AWVALID),   
    .AXI_AWREADY    (S_AXI_AWREADY),
    
    // AXI W channel
    .AXI_WDATA      (S_AXI_WDATA),
    .AXI_WVALID     (S_AXI_WVALID),
    .AXI_WSTRB      (S_AXI_WSTRB),
    .AXI_WREADY     (S_AXI_WREADY),

    // AXI B channel
    .AXI_BRESP      (S_AXI_BRESP),
    .AXI_BVALID     (S_AXI_BVALID),
    .AXI_BREADY     (S_AXI_BREADY),

    // AXI AR channel
    .AXI_ARADDR     (S_AXI_ARADDR), 
    .AXI_ARVALID    (S_AXI_ARVALID),
    .AXI_ARREADY    (S_AXI_ARREADY),

    // AXI R channel
    .AXI_RDATA      (S_AXI_RDATA),
    .AXI_RVALID     (S_AXI_RVALID),
    .AXI_RRESP      (S_AXI_RRESP),
    .AXI_RREADY     (S_AXI_RREADY),

    // ASHI write-request registers
    .ASHI_WADDR     (ashi_waddr),
    .ASHI_WINDX     (ashi_windx),
    .ASHI_WDATA     (ashi_wdata),
    .ASHI_WRITE     (ashi_write),
    .ASHI_WRESP     (ashi_wresp),
    .ASHI_WIDLE     (ashi_widle),

    // ASHI read registers
    .ASHI_RADDR     (ashi_raddr),
    .ASHI_RINDX     (ashi_rindx),
    .ASHI_RDATA     (ashi_rdata),
    .ASHI_READ      (ashi_read ),
    .ASHI_RRESP     (ashi_rresp),
    .ASHI_RIDLE     (ashi_ridle)
);
//==========================================================================



endmodule
