`timescale 1ns / 1ps

module RCA_4bits(
    input clk,
    input enable,
    input [3:0] A, B,
    input Cin,
    output [4:0] Q
    );
    reg [4:0] data;
    
    wire C0, C1, C2, C3;
    wire s0, s1, s2, s3;
    
    full_adder f1 (.A(A[0]), .B(B[0]), .S(s0), .Cin(Cin), .Cout(C0));
    full_adder f2 (.A(A[1]), .B(B[1]), .S(s1), .Cin(C0), .Cout(C1));
    full_adder f3 (.A(A[2]), .B(B[2]), .S(s2), .Cin(C1), .Cout(C2));
    full_adder f4 (.A(A[3]), .B(B[3]), .S(s3), .Cin(C2), .Cout(C3));
    
    always@(*)
        begin
            data = {C3, s3, s2, s1, s0};
        end
    
    register_logic r (.clk(clk), .enable(enable), .Data(data), .Q(Q));
        
endmodule
