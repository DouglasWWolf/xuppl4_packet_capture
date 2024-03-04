//=============================================================================
//                  ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 02-Mar-24  DWW  1000  Initial creation
//=============================================================================

/*
    This module reads in a packet from the input stream, and writes that packet to
    the output stream preceded by a header
*/

module add_header # (DW = 512, FIFO_DEPTH = 256, CLOCK_TYPE="independent_clock")
(
    input   sys_reset,

    (* X_INTERFACE_INFO      = "xilinx.com:signal:clock:1.0 src_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF AXIS_IN" *)
    input src_clk,

    (* X_INTERFACE_INFO      = "xilinx.com:signal:clock:1.0 dst_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF AXIS_OUT" *)
    input dst_clk,
    
    // Synchronous with dst_clk
    input             start_ts_timer_async,

    // Input stream, synchronous with src_clk
    input  [  DW-1:0] AXIS_IN_TDATA,
    input  [DW/8-1:0] AXIS_IN_TKEEP,
    input             AXIS_IN_TLAST,
    input             AXIS_IN_TVALID,
    output            AXIS_IN_TREADY,

    // Output stream, synchronous with dst_clk
    output [  DW-1:0] AXIS_OUT_TDATA,
    output            AXIS_OUT_TLAST,
    output            AXIS_OUT_TVALID,
    input             AXIS_OUT_TREADY
);



//=============================================================================
// This block synchronizes the reset pin "sys_reset" into "src_reset"
//=============================================================================
wire src_reset;
xpm_cdc_async_rst #
(
    .DEST_SYNC_FF(4), 
    .INIT_SYNC_FF(0), 
    .RST_ACTIVE_HIGH(1)
)
xpm_cdc_async_rst_src
(
    .src_arst (sys_reset),
    .dest_clk (src_clk  ),  
    .dest_arst(src_reset) 
);
//=============================================================================


//=============================================================================
// This block synchronizes the reset pin "sys_reset" into "dst_reset"
//=============================================================================
wire dst_reset;
xpm_cdc_async_rst #
(
    .DEST_SYNC_FF(4), 
    .INIT_SYNC_FF(0), 
    .RST_ACTIVE_HIGH(1)
)
xpm_cdc_async_rst_dst
(
    .src_arst (sys_reset),
    .dest_clk (dst_clk  ),  
    .dest_arst(dst_reset) 
);
//=============================================================================






//=============================================================================
// This blocks synchronizes start_ts_timer_async into start_ts_timer_sync
//=============================================================================
wire start_ts_timer_sync;
//-----------------------------------------------------------------------------
xpm_cdc_single #
(
    .DEST_SYNC_FF  (4),   
    .INIT_SYNC_FF  (0),   
    .SIM_ASSERT_CHK(0), 
    .SRC_INPUT_REG (0)   
)
start_ts_timer_synchronizer
(
    .src_clk (                    ),  
    .src_in  (start_ts_timer_async),
    .dest_clk(dst_clk             ), 
    .dest_out(start_ts_timer_sync ) 
);
//=============================================================================


// This is asserted on the last data-cycle of every packet
// synchronous with src_clk
wire axis_in_eop = AXIS_IN_TREADY & AXIS_IN_TVALID & AXIS_IN_TLAST;

// Output bus for the packet-data FIFO
// Synchronous with dst_clk
wire[DW-1:0] fpdout_tdata;
wire         fpdout_tvalid;
wire         fpdout_tlast;
wire         fpdout_tready;

// Output bus for the packet-length FIFO
// Synchronous with dst_clk
wire[16-1:0] fplout_tdata;
wire         fplout_tvalid;
wire         fplout_tready;



//=============================================================================
// This block counts the number of one bits in AXIS_IN_TKEEP, thereby 
// determining the number of data-bytes in the AXIS_IN_TDATA field.
//=============================================================================
reg[7:0] data_byte_count; // Synchronous with src_clk
//-----------------------------------------------------------------------------
integer n;
always @*
begin
    data_byte_count = 0;
    for (n=0;n<(DW/8);n=n+1) begin
        data_byte_count = data_byte_count + AXIS_IN_TKEEP[n];
    end
end
//=============================================================================


//=============================================================================
// This block counts the number of bytes in the incoming packet and stores them
// in "packet_length".   This block assumes that only the data-cycle with TLAST 
// asserted can have 0-bits in TKEEP.  
//=============================================================================
reg[15:0] partial_packet_length;

// This is only valid when TVALID, TREADY, and TLAST are asserted
// Synchronous with src_clk
wire[15:0] packet_length = partial_packet_length + data_byte_count;
//-----------------------------------------------------------------------------
always @(posedge src_clk) begin
    if (src_reset) begin
        partial_packet_length <= 0;
    end else if (AXIS_IN_TVALID & AXIS_IN_TREADY) begin
        if (AXIS_IN_TLAST == 0)
            partial_packet_length <= partial_packet_length + DW/8;
        else
            partial_packet_length <= 0;
    end
end
//=============================================================================


//=============================================================================
// This block controls the timestamp_timer.   This counts clock cycles, but
// only starts running on the rising edge of "start_ts_timer_sync"
//=============================================================================
reg[63:0] timestamp_timer;
//-----------------------------------------------------------------------------
always @(posedge dst_clk) begin
    if (dst_reset)
        timestamp_timer <= 0;
    else if (timestamp_timer == 0)
        timestamp_timer <= start_ts_timer_sync;
    else
        timestamp_timer <= timestamp_timer + 1;
end
//=============================================================================


// This is the header that we write out prior to the packet data
// Synchronous with dst_clk
wire[DW-1:0] header = {fplout_tdata, timestamp_timer};

//=============================================================================
// This block waits for an entry to be available in the packet-length FIFO
// then writes the header, followed by the contents of the packet
//=============================================================================
reg    fsm_state;
assign AXIS_OUT_TDATA  = (fsm_state == 0) ? header        : fpdout_tdata;
assign AXIS_OUT_TVALID = (fsm_state == 0) ? fplout_tvalid : fpdout_tvalid;
assign AXIS_OUT_TLAST  = (fsm_state == 1) & fpdout_tlast;
assign fplout_tready   = (fsm_state == 0) & AXIS_OUT_TREADY;
assign fpdout_tready   = (fsm_state == 1) & AXIS_OUT_TREADY;
//-----------------------------------------------------------------------------
always @(posedge dst_clk) begin
    if (dst_reset) begin
        fsm_state <= 0;

    end else case(fsm_state)
        
        // Here, we're waiting for the header to be emitted
        0:  if (AXIS_OUT_TVALID & AXIS_OUT_TREADY)
                fsm_state <= 1;

        // Here, we're waiting for the last cycle of the packet to be emitted
        1:  if (AXIS_OUT_TVALID & AXIS_OUT_TREADY & AXIS_OUT_TLAST)
                fsm_state <= 0;

    endcase
   
end
//=============================================================================

 

//=============================================================================
// This FIFO holds incoming packet-data
//=============================================================================
xpm_fifo_axis #
(
   .FIFO_DEPTH      (FIFO_DEPTH),
   .TDATA_WIDTH     (DW),
   .FIFO_MEMORY_TYPE("auto"),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CDC_SYNC_STAGES (2),
   .CLOCKING_MODE   (CLOCK_TYPE)
)
packet_data_fifo
(
    // Clock and reset
   .s_aclk   (src_clk   ),
   .m_aclk   (dst_clk   ),
   .s_aresetn(~src_reset),

    // The input bus to the FIFO comes straight from the AXIS_IN input stream
   .s_axis_tdata (AXIS_IN_TDATA ),
   .s_axis_tkeep (AXIS_IN_TKEEP ),
   .s_axis_tlast (AXIS_IN_TLAST ),
   .s_axis_tvalid(AXIS_IN_TVALID),
   .s_axis_tready(AXIS_IN_TREADY),

    // The output bus of the FIFO
   .m_axis_tdata (fpdout_tdata ),
   .m_axis_tlast (fpdout_tlast ),
   .m_axis_tvalid(fpdout_tvalid),
   .m_axis_tready(fpdout_tready),

    // Unused input stream signals
   .s_axis_tdest(),
   .s_axis_tid  (),
   .s_axis_tstrb(),
   .s_axis_tuser(),

    // Unused output stream signals
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



//=============================================================================
// This FIFO holds incoming packet-lengths
//=============================================================================
xpm_fifo_axis #
(
   .FIFO_DEPTH      (FIFO_DEPTH),
   .TDATA_WIDTH     (16),
   .FIFO_MEMORY_TYPE("auto"),
   .PACKET_FIFO     ("false"),
   .USE_ADV_FEATURES("0000"),
   .CDC_SYNC_STAGES (2),
   .CLOCKING_MODE   (CLOCK_TYPE)
)
packet_length_fifo
(
    // Clock and reset
   .s_aclk   (src_clk   ),
   .m_aclk   (dst_clk   ),
   .s_aresetn(~src_reset),

    // A new packet length gets written to the FIFO on the last 
    // data-cycle of every packet
   .s_axis_tdata (packet_length),
   .s_axis_tvalid(axis_in_eop  ),
   .s_axis_tready(             ),

    // The output bus of the FIFO
   .m_axis_tdata (fplout_tdata ),
   .m_axis_tvalid(fplout_tvalid),
   .m_axis_tready(fplout_tready),

    // Unused input stream signals
   .s_axis_tkeep(),
   .s_axis_tlast(),
   .s_axis_tdest(),
   .s_axis_tid  (),
   .s_axis_tstrb(),
   .s_axis_tuser(),


    // Unused output stream signals
   .m_axis_tdest(),
   .m_axis_tid  (),
   .m_axis_tstrb(),
   .m_axis_tuser(),
   .m_axis_tkeep(),
   .m_axis_tlast(),

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