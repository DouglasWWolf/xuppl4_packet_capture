//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 02-Mar-24  DWW     1  Initial creation
//====================================================================================

/*
     This module allows packets on the input stream to be emitted on the output
     stream, but only when "enable_async" is asserted.   This module will never
     emit a partial packet (presuming that partial packets are never present at
     the input.)
*/

module packet_gate # (parameter DW = 512)
(
    input   clk, sys_reset,

    input   enable_async,

    input  [  DW-1:0] AXIS_IN_TDATA,
    input  [DW/8-1:0] AXIS_IN_TKEEP,
    input             AXIS_IN_TLAST,
    input             AXIS_IN_TVALID,
    output            AXIS_IN_TREADY,

    output [  DW-1:0] AXIS_OUT_TDATA,
    output [DW/8-1:0] AXIS_OUT_TKEEP,
    output            AXIS_OUT_TLAST,
    output            AXIS_OUT_TVALID,
    input             AXIS_OUT_TREADY
);

//=============================================================================
// Synchronize unsynchronized signals
//=============================================================================
wire enable_sync;
cdc_single cdc0(enable_async, clk, enable_sync);

wire reset;
cdc_async_rst cdc1(sys_reset, clk, reset);
//=============================================================================


//=============================================================================
// This block allows the gate to open when "enable_sync" is true and we're not
// in the middle of receiving a packet.
//=============================================================================
reg  gate_is_open;
wire gate_is_closed = ~gate_is_open;
reg  in_packet;
always @(posedge clk) begin

    if (reset) begin
        gate_is_open  <= 0;
        in_packet     <= 0;
    end 
    
    else if (AXIS_IN_TVALID & AXIS_IN_TREADY) begin
        if (AXIS_IN_TLAST) begin
            in_packet    <= 0;
            gate_is_open <= enable_sync;
        end else
            in_packet <= 1;
    end

    else if (~in_packet)    
        gate_is_open <= enable_sync;
end
//=============================================================================

// We're ready to receive when our receiver is ready to receive OR whenever
// the gate is closed.  (in the later case, we'll throw away the data)
assign AXIS_IN_TREADY = AXIS_OUT_TREADY | gate_is_closed;

// The entire output bus is the input bus, gated by "gate_is_open"
assign AXIS_OUT_TDATA  = gate_is_open ? AXIS_IN_TDATA  : 0;
assign AXIS_OUT_TKEEP  = gate_is_open ? AXIS_IN_TKEEP  : 0;
assign AXIS_OUT_TLAST  = gate_is_open ? AXIS_IN_TLAST  : 0;
assign AXIS_OUT_TVALID = gate_is_open ? AXIS_IN_TVALID : 0;

endmodule