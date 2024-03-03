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

    output reg sys_reset_out,

    output reg  erase_ram,

    input  bank0_calib_complete,

    input  bank0_erase_idle,

    output reg [63:0] window_addr,

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

// Any time the register map of this module changes, this number should
// be bumped
localparam MODULE_VERSION = 1;

//=========================  AXI Register Map  =============================
localparam REG_MODULE_REV   = 0;
localparam REG_RUN          = 1;
localparam REG_WINDOW_ADDRH = 2;
localparam REG_WINDOW_ADDRL = 3;
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

//=============================================================================
// This blocks synchronizes bank0_calib_complete into bank0_calib_complete_sync
//=============================================================================
wire bank0_calib_complete_sync;
//-----------------------------------------------------------------------------
xpm_cdc_single #
(
    .DEST_SYNC_FF  (4),   
    .INIT_SYNC_FF  (0),   
    .SIM_ASSERT_CHK(0), 
    .SRC_INPUT_REG (0)   
)
xpm_cdc_single_0
(
    .src_clk (                         ),  
    .src_in  (bank0_calib_complete     ),
    .dest_clk(clk                      ), 
    .dest_out(bank0_calib_complete_sync) 
);
//=============================================================================


//=============================================================================
// This blocks synchronizes bank0_erase_idle into bank0_erase_idle_sync
//=============================================================================
wire bank0_erase_idle_sync;
//-----------------------------------------------------------------------------
xpm_cdc_single #
(
    .DEST_SYNC_FF  (4),   
    .INIT_SYNC_FF  (0),   
    .SIM_ASSERT_CHK(0), 
    .SRC_INPUT_REG (0)   
)
xpm_cdc_single_1
(
    .src_clk (                     ),  
    .src_in  (bank0_erase_idle     ),
    .dest_clk(clk                  ), 
    .dest_out(bank0_erase_idle_sync) 
);
//=============================================================================


// This is asserted when both banks complete RAM calibration
wire init_calib_complete = bank0_calib_complete_sync;

// This is asserted when both banks of RAM have been erased
wire bank_erase_idle = bank0_erase_idle_sync;

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

//==========================================================================
// This state machine handles AXI4-Lite write requests
//
// Drives:
//==========================================================================
always @(posedge clk) begin

    start_capture <= 0;

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
               
                    REG_RUN:            start_capture <= 1;
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
            REG_RUN:            ashi_rdata <= 0;
            REG_WINDOW_ADDRH:   ashi_rdata <= window_addr[63:32];
            REG_WINDOW_ADDRL:   ashi_rdata <= window_addr[31:00];

            // Reads of any other register are a decode-error
            default:
                begin
                    ashi_rdata <= 32'hDEAD_BEEF;
                    ashi_rresp <= DECERR;
                end
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

    erase_ram <= 0;

    if (delay) delay <= delay - 1;

    if (resetn == 0) begin
        csm_state     <= 0;
        sys_reset_out <= 0;
    end else case(csm_state)

        // If told to start a capture, put everything down stream in reset
        0:  if (start_capture) begin
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
                csm_state <= csm_state + 1;
            end

        // Wait for both RAM bank erasers to be doing their thing
        3:  if (bank_erase_idle == 0) csm_state <= csm_state + 1;

        // Now wait for both RAM bank erases to finish their job
        4:  if (bank_erase_idle == 1) csm_state <= 0;

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
