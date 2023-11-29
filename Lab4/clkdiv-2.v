`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2022 05:55:38 PM
// Design Name: 
// Module Name: clkdiv
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_div_disp(
    input clk,
    input reset,
    output slow_clk
    );
    
    reg[15:0] COUNT;
    
    assign slow_clk = COUNT[15];
    
    always@(posedge clk)
    begin
    if (reset)
        COUNT = 0;
    else
        COUNT = COUNT + 1;
    end
    
endmodule
