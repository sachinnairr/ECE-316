`timescale 1ns / 1ps
module CLA_4bits_tb;

 reg clk;
 reg enable;
 reg [3:0] A, B;
 reg Cin;
 
 wire [4:0] Q;
 CLA_4bits u1 (
    .clk(clk),
    .enable(enable),
    .A(A),
    .B(B),
    .Cin(Cin),
    .Q(Q)
 );
 
 initial
 begin
 
 enable = 1;
 clk = 0;
 A = 0;
 B = 0;
 Cin = 0;;
 
 // First test
 #10
 A = 4'b0000;
 B = 4'b0101;
 Cin = 0;
 
 // Second
 #10
 A = 4'b0101;
 B = 4'b0111;
 Cin = 0;
 
 // Third
 #10
 A = 4'b1000;
 B = 4'b0111;
 Cin = 1;
 
 // Fourth
 #10
 A = 4'b1001;
 B = 4'b0100;
 Cin = 0;
 
 // Fifth
 #10
 A = 4'b1000;
 B = 4'b1000;
 Cin = 1;
 
 // Sixth
 #10
 A = 4'b1101;
 B = 4'b1010;
 Cin = 1;
 
 // Seventh
 #10
 A = 4'b1110;
 B = 4'b1111;
 Cin = 0;
 
end

always
#5 clk = ~clk;
 



endmodule
