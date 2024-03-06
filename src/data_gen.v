module data_gen # (parameter DW=512, CHANNEL=0)
(

    input   clk, resetn,

    output [  DW-1:0] AXIS_OUT_TDATA,
    output [DW/8-1:0] AXIS_OUT_TKEEP,
    output            AXIS_OUT_TLAST,
    output reg        AXIS_OUT_TVALID,
    input             AXIS_OUT_TREADY
);

reg[2:0] cycle_counter;
reg[15:0] data;

assign AXIS_OUT_TLAST = (cycle_counter == 3'b111);
assign AXIS_OUT_TDATA = {32{data}};
assign AXIS_OUT_TKEEP = -1;


always @(posedge clk) begin
    if (resetn == 0) begin
        data            <= (CHANNEL << 8) | CHANNEL;
        cycle_counter   <= 0;
        AXIS_OUT_TVALID <= 0;
    end else begin
        AXIS_OUT_TVALID <= 1;
        if (AXIS_OUT_TVALID & AXIS_OUT_TREADY) begin
            cycle_counter <= cycle_counter + 1;
            data          <= data + 1;
        end
    end
end


endmodule
