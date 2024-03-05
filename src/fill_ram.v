//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 02-Mar-24  DWW     1  Initial creation
//====================================================================================

/*
    This fills a block of RAM with a constant byte value
*/

module fill_ram #
(
    parameter       DW         = 512,
    parameter[ 7:0] FILL_VALUE = 8'hFC,
    parameter       CHANNEL    = 0
)
(
    (* X_INTERFACE_INFO      = "xilinx.com:signal:clock:1.0 clk CLK"            *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET reset" *)
    input             clk,
    input             reset,
    output  reg[63:0] elapsed,
    output  reg       idle,

    // When this is asserted, we'll start erasing RAM
    input             start_async,

    //=================   This is the AXI4 output interface   ==================

    // "Specify write address"              -- Master --    -- Slave --
    output reg [63:0]                        M_AXI_AWADDR,
    output     [7:0]                         M_AXI_AWLEN,
    output     [2:0]                         M_AXI_AWSIZE,
    output     [3:0]                         M_AXI_AWID,
    output     [1:0]                         M_AXI_AWBURST,
    output                                   M_AXI_AWLOCK,
    output     [3:0]                         M_AXI_AWCACHE,
    output     [3:0]                         M_AXI_AWQOS,
    output     [2:0]                         M_AXI_AWPROT,
    output reg                               M_AXI_AWVALID,
    input                                                   M_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    output    [DW-1:0]                      M_AXI_WDATA,
    output    [(DW/8)-1:0]                  M_AXI_WSTRB,
    output reg                              M_AXI_WVALID,
    output                                  M_AXI_WLAST,
    input                                                   M_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    input[1:0]                                              M_AXI_BRESP,
    input                                                   M_AXI_BVALID,
    output                                  M_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    output[63:0]                            M_AXI_ARADDR,
    output                                  M_AXI_ARVALID,
    output[2:0]                             M_AXI_ARPROT,
    output                                  M_AXI_ARLOCK,
    output[3:0]                             M_AXI_ARID,
    output[7:0]                             M_AXI_ARLEN,
    output[1:0]                             M_AXI_ARBURST,
    output[3:0]                             M_AXI_ARCACHE,
    output[3:0]                             M_AXI_ARQOS,
    input                                                   M_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    input[DW-1:0]                                           M_AXI_RDATA,
    input                                                   M_AXI_RVALID,
    input[1:0]                                              M_AXI_RRESP,
    input                                                   M_AXI_RLAST,
    output                                  M_AXI_RREADY
    //==========================================================================

);

// Include size definitions that descibe our hardware
`include "geometry.vh"

// Determine the base address of our bank of RAM
localparam[63:0] BASE_ADDR = (CHANNEL==0) ? BANK0_BASE_ADDR : BANK1_BASE_ADDR;


// Synchronize "start_async" into "start"
wire start;
cdc_single cdc0(start_async, clk, start);


//=============================================================================
// This block counts the number of AXI-write acknowledgements we receive
//=============================================================================
reg[63:0] write_ack_count;
//-----------------------------------------------------------------------------
assign M_AXI_BREADY = 1;

always @(posedge clk) begin
    if (reset | start) 
        write_ack_count <= 0;
    else if (M_AXI_BREADY & M_AXI_BVALID)
        write_ack_count <= write_ack_count + 1;
end
//=============================================================================


// Setup the constant values for the AW channel
assign M_AXI_AWSIZE  = $clog2(DW/8);
assign M_AXI_AWLEN   = CYCLES_PER_RAM_BLOCK - 1;
assign M_AXI_AWBURST = 1;

//=============================================================================
// This block sends the neccessary number of write-requests on the AW channel
//=============================================================================
reg       awsm_state;
reg[31:0] aw_block_count;
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (reset) begin
        awsm_state    <= 0;
        M_AXI_AWVALID <= 0;
    end else case (awsm_state)

        0:  if (start) begin
                aw_block_count <= 1;
                M_AXI_AWADDR   <= BASE_ADDR;
                M_AXI_AWVALID  <= 1;
                awsm_state     <= awsm_state + 1;
            end

        1:  if (M_AXI_AWVALID & M_AXI_AWREADY) begin
                if (aw_block_count == RAM_BLOCKS_PER_BANK) begin
                    M_AXI_AWVALID <= 0;
                    awsm_state    <= 0;
                end else begin
                    aw_block_count <= aw_block_count + 1;
                    M_AXI_AWADDR   <= M_AXI_AWADDR + RAM_BLOCK_SIZE;
                end
            end

    endcase

end
//=============================================================================


//=============================================================================
// This sends the correct number of AXI bursts to the W-channel
//=============================================================================
reg[ 1:0] wsm_state;
reg[31:0] w_block_count;
reg[ 7:0] cycle_count;

assign M_AXI_WDATA = {(DW/8){FILL_VALUE}};
assign M_AXI_WSTRB = -1;
assign M_AXI_WLAST = (cycle_count == CYCLES_PER_RAM_BLOCK);

always @(posedge clk) begin

    // Count the number of clock cycles it takes to completely
    // fill our bank of RAM with a constant    
    if (~idle) elapsed <= elapsed + 1;
    
    if (reset) begin
        wsm_state    <= 0;
        M_AXI_WVALID <= 0;
        idle         <= 1;
    end else case (wsm_state)

        // Here we wait for someone to say "go!"
        0:  if (start) begin
                idle          <= 0;
                w_block_count <= 1;
                M_AXI_WVALID  <= 1;
                cycle_count   <= 1;
                elapsed       <= 0;
                wsm_state     <= wsm_state + 1;
            end

        1:  if (M_AXI_WVALID & M_AXI_WREADY) begin
                cycle_count <= cycle_count + 1;
                if (M_AXI_WLAST) begin
                    if (w_block_count == RAM_BLOCKS_PER_BANK) begin
                        M_AXI_WVALID <= 0;
                        wsm_state    <= wsm_state + 1;
                    end else begin
                        cycle_count   <= 1;
                        w_block_count <= w_block_count + 1;
                    end
                end
            end

        // Here we wait for all of the write-acknowledgements to arrive
        2:  if (write_ack_count == RAM_BLOCKS_PER_BANK) begin
                idle      <= 1;
                wsm_state <= 0;            
            end

    endcase

end
//=============================================================================




endmodule