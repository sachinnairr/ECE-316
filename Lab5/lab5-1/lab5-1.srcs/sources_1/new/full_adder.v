`timescale 1ns / 1ps

module full_adder(
    input A, B, Cin,
    output S, Cout
    );
    
    reg Cout, S;
    
    always @(A or B or Cin)
    begin
       Cout = B & Cin | A & Cin | A & B;
       S = A ^ B ^ Cin;
    end
    
endmodule