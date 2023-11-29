`timescale 1ns / 1ps
module rising_edge_detector_tb;
reg clk;
reg signal;
reg reset;
wire outedge;
rising_edge_detector uut (
.clk(clk),
.signal(signal),
.reset(reset),
.outedge(outedge)
);
initial
begin
clk = 0;
signal = 0;
reset = 1;
#20
signal = 0;
reset = 0;
#20
signal = 0;
reset = 0;
#20
signal = 1; // should output 1
reset = 0;
#20
signal = 1;
reset = 0;
#20
signal = 1; // should still be 0
reset = 0;
#20
signal = 0; // at stage 00
reset = 0;
#20
signal = 0; // stays at stage 00
reset = 0;
#20
signal = 0;
reset = 0;
#20
signal = 1; // should output 1
reset = 0;
#20
signal = 0; // should still move to 10
reset = 0;
#20
signal = 1; // should still be 0
reset = 0;
#20
signal = 0;
reset = 0;
#20
signal = 1; // should output 1
reset = 0;
#20
signal = 0; // should still move to 10
reset = 0;
#20
signal = 1; // should still be 0
reset = 0;
#20
signal = 0;
reset = 0;
end
always
#5 clk = ~clk;
endmodule