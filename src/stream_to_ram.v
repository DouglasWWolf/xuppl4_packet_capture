//=============================================================================
//                  ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 02-Mar-24  DWW     1  Initial creation
//=============================================================================

/*
    This module streams incoming data-cycles out to memory-mapped RAM
*/

module stream_to_ram # (parameter DW=512, CHANNEL = 0)
(
    input   clk, sys_reset,

    // Keeps track of the number of blocks written to RAM
    output reg[31:0] ram_blocks_written,

    // This is asserted when free RAM is exhausted
    output       out_of_ram,

    // Input stream 
    input [DW-1:0] AXIS_IN_TDATA,
    input          AXIS_IN_TVALID,
    output         AXIS_IN_TREADY,

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
    output                                   M_AXI_AWVALID,
    input                                                   M_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    output [DW-1:0]                         M_AXI_WDATA,
    output [(DW/8)-1:0]                     M_AXI_WSTRB,
    output                                  M_AXI_WVALID,
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

// Include size definitions that descibe our configuration
`include "geometry.vh"

// Determine the base address of our bank of RAM
localparam[63:0] BASE_ADDR = (CHANNEL==0) ? BANK0_BASE_ADDR : BANK1_BASE_ADDR;

//=============================================================================
// This block synchronizes the reset pin "sys_reset" into "reset"
//=============================================================================
wire reset;
cdc_async_rst cdc0(sys_reset, clk, reset);
//=============================================================================

// This keeps track of the total number of data-cycles that
// have arrived on our input stream
reg [63:0] data_cycles_in;

// The total number of data-blocks worth of data that have arrived
wire[31:0] data_blocks_in = data_cycles_in / CYCLES_PER_RAM_BLOCK;

// The total number of data-blocks that have been written to RAM
reg [31:0] aw_blocks_out, w_blocks_out;

// The states of our two state machines
reg awsm_state, wsm_state;

//=============================================================================
// This block keeps track of the total number of data-cycles that have
// arrived on our input stream
//=============================================================================
always @(posedge clk) begin
    if (reset)
        data_cycles_in <= 0;
    else if (AXIS_IN_TVALID & AXIS_IN_TREADY)
        data_cycles_in <= data_cycles_in + 1;
end
//=============================================================================


// Constant values for the AW channel
assign M_AXI_AWLEN   = CYCLES_PER_RAM_BLOCK-1;
assign M_AXI_AWSIZE  = $clog2(DW/8);
assign M_AXI_AWBURST = 1;
assign M_AXI_AWVALID = (awsm_state == 1);

// This determine when it's time to issue a write-request on the AW-channel
wire emit_aw_block = (aw_blocks_out < data_blocks_in) 
                   & (aw_blocks_out < RAM_BLOCKS_PER_BANK);

//=============================================================================
// This block issues a write request on the AW-channel whenever a new data-
// block is available for writing, provided that we haven't already filled up
// our bank of RAM.
//=============================================================================
always @(posedge clk) begin

    if (reset) begin
        awsm_state    <= 0;
        aw_blocks_out <= 0;
        M_AXI_AWADDR  <= BASE_ADDR;
    end else case(awsm_state)

    0:  if (emit_aw_block) begin
            awsm_state    <= 1;
        end

    1:  if (M_AXI_AWREADY & M_AXI_AWVALID) begin
            aw_blocks_out <= aw_blocks_out + 1;
            M_AXI_AWADDR  <= M_AXI_AWADDR + RAM_BLOCK_SIZE;
            awsm_state    <= 0;
        end

    endcase
end
//=============================================================================


// These are the output side of the data-FIFO
wire fpdout_tvalid, fpdout_tready;

// This counts beats in a write-burst
reg[7:0] beat;

// Constant values for the W-channel
assign M_AXI_WSTRB   = -1;
assign M_AXI_WLAST   = (beat == M_AXI_AWLEN) & M_AXI_WVALID;
assign M_AXI_WVALID  = fpdout_tvalid & (wsm_state == 1);
assign fpdout_tready = M_AXI_WREADY  & (wsm_state == 1);

// This determine when it's time to write a block of data to RAM
wire emit_w_block = (w_blocks_out < data_blocks_in) 
                  & (w_blocks_out < RAM_BLOCKS_PER_BANK);

//=============================================================================
// This thread writes data blocks to the W-channel when there is a full block
// queued up and ready to be written
//=============================================================================
always @(posedge clk) begin
    
    if (reset) begin
        wsm_state    <= 0;
        w_blocks_out <= 0;
    end else case(wsm_state)
    
        // If it's time to emit a block on the write-channel...            
        0:  if (emit_w_block) begin
                w_blocks_out  <= w_blocks_out + 1;
                beat          <= 0;
                wsm_state     <= 1;
            end

        // Here we're waiting for data-cycles to be accepted
        1:  if (M_AXI_WVALID & M_AXI_WREADY) begin
                
                // If this isn't the last beat of the burst...
                if (M_AXI_WLAST == 0) begin
                    beat <= beat + 1;
                end 

                // Otherwise, it IS the last beat of the burst.
                // Do we need to write another data-block to RAM?
                else if (emit_w_block) begin
                    w_blocks_out <= w_blocks_out + 1;
                    beat         <= 0;
                end

                // If we get here, we need to go wait to be told to 
                // write another block to RAM
                else wsm_state <= 0;
            end

    endcase

end
//=============================================================================


//=============================================================================
// This block counts write-acknowledgments on the B-channel
//=============================================================================
assign M_AXI_BREADY = (~reset);
assign out_of_ram   = (ram_blocks_written == RAM_BLOCKS_PER_BANK);
//-----------------------------------------------------------------------------
always @(posedge clk) begin
    if (reset)
        ram_blocks_written <= 0;
    else if (M_AXI_BREADY & M_AXI_BVALID)
        ram_blocks_written <= ram_blocks_written + 1;
end
//=============================================================================




//=============================================================================
// This FIFO holds incoming packet-data
//=============================================================================
xpm_fifo_axis #
(
   .FIFO_DEPTH      (256),
   .TDATA_WIDTH     (DW),
   .FIFO_MEMORY_TYPE("auto"),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CDC_SYNC_STAGES (2),
   .CLOCKING_MODE   ("common_clock")
)
packet_data_fifo
(
    // Clock and reset
   .s_aclk   (clk   ),
   .m_aclk   (clk   ),
   .s_aresetn(~reset),

    // The input bus to the FIFO comes straight from the AXIS_IN input stream
   .s_axis_tdata (AXIS_IN_TDATA ),
   .s_axis_tvalid(AXIS_IN_TVALID),
   .s_axis_tready(AXIS_IN_TREADY),

    // The output bus of the FIFO
   .m_axis_tdata (M_AXI_WDATA  ),
   .m_axis_tvalid(fpdout_tvalid),
   .m_axis_tready(fpdout_tready),

    // Unused input stream signals
   .s_axis_tkeep(),
   .s_axis_tlast(),
   .s_axis_tdest(),
   .s_axis_tid  (),
   .s_axis_tstrb(),
   .s_axis_tuser(),

    // Unused output stream signals
   .m_axis_tlast(),
   .m_axis_tdest(),
   .m_axis_tid  (),
   .m_axis_tstrb(),
   .m_axis_tuser(),
   .m_axis_tkeep(),

    // Other unused signals
   .almost_empty_axis(),
   .almost_full_axis(),
   .dbiterr_axis(),
   .prog_empty_axis(),
   .prog_full_axis(),
   .rd_data_count_axis(),
   .sbiterr_axis(),
   .wr_data_count_axis(),
   .injectdbiterr_axis(),
   .injectsbiterr_axis()
);
//=============================================================================




endmodule