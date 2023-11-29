`timescale 1ns / 1ps
module time_multiplexing_main(
    input clk,
    input reset,
    input [15:0] sw,
    output [3:0] an,
    output [6:0] sseg
);

wire[6:0] in0, in1, in2, in3;
wire slow_clk;

hexto7segment c1 (.x(sw[3:0]), .r(in0));
hexto7segment c2 (.x(sw[7:4]), .r(in1));
hexto7segment c3 (.x(sw[11:8]), .r(in2));
hexto7segment c4 (.x(sw[15:12]), .r(in3));

clk_div_disp c5 (.clk(clk), .reset(reset), .slow_clk(slow_clk));

time_mux_state_machine c6(
    .clk(slow_clk),
    .reset(reset),
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .an(an),
    .sseg(sseg));

endmodule
