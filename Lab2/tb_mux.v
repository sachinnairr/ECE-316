`timescale 1ns / 1ps
module tb_mux;
// Inputs, defined as registers
reg i0;
reg i1;
reg i2;
reg i3;
reg s1;
reg s0;
// Outputs, defined as wires
wire d;
// Instantiate the UUT (unit under test)
mux uut(
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.s1(s1),
.s0(s0),
.d(d)
);
initial begin
// Initialize Inputs
i0 = 0;
i1 = 0;
i2 = 0;
i3 = 0;
s1 = 0;
s0 = 0;
// Wait 50 ns for global reset to finish
#50;
// Stimulus -- all input combinations followed by some wait time to observe the o/p
i0 = 0;
i1 = 0;
i2 = 0;
i3 = 0;
s1 = 0;
s0 = 0;
$display("TC01");
if( d != 1'b0 ) $display("Result is wrong");
i0 = 1;
i1 = 0;
i2 = 0;
i3 = 0;
s1 = 0;
s0 = 0;
#50;
$display("TC02");
if( d != 1'b1 ) $display("Result is wrong");
i0 = 0;
i1 = 0;
i2 = 0;
i3 = 0;
s1 = 0;
s0 = 1;
#50;
$display("TC03");
if( d != 1'b0 ) $display("Result is wrong");
i0 = 0;
i1 = 1;
i2 = 0;
i3 = 0;
s1 = 0;
s0 = 1;
#50;
$display("TC04");
if( d != 1'b1 ) $display("Result is wrong");
i0 = 0;
i1 = 0;
i2 = 0;
i3 = 0;
s1 = 1;
s0 = 0;
#50;
$display("TC05");
if( d != 1'b0 ) $display("Result is wrong");
i0 = 0;
i1 = 0;
i2 = 1;
i3 = 0;
s1 = 1;
s0 = 0;
#50;
$display("TC06");
if( d != 1'b1 ) $display("Result is wrong");
i0 = 0;
i1 = 0;
i2 = 0;
i3 = 0;
s1 = 1;
s0 = 1;
#50;
$display("TC07");
if( d != 1'b0 ) $display("Result is wrong");
i0 = 0;
i1 = 0;
i2 = 0;
i3 = 1;
s1 = 1;
s0 = 1;
#50;
$display("TC08");
if( d != 1'b1 ) $display("Result is wrong");
end
endmodule
