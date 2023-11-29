`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2023 10:32:06 PM
// Design Name: 
// Module Name: hexto7segment_tb
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

module hexto7segment_tb;

    reg clk;
    reg reset;
    reg [15:0] sw;
    
    wire [3:0] an;
    wire [6:0] sseg;
    
    time_multiplexing_main u1 (
        .clk(clk),
        .reset(reset),
        .sw(sw),
        .an(an),
        .sseg(sseg)
    );
    
    initial 
    begin 
    
    clk = 0;
    reset = 1;
    sw = 0; 
    
    // First dsiplay 
    #10
    reset = 0;
    // 0
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 0;
    sw[3] = 0;
    
    #10
    //4
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 1;
    sw[3] = 0;
    
    #10
    //8
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 0;
    sw[3] = 1;
    
    #10
    //12 C
    sw[0] = 0;
    sw[1] = 0;
    sw[2] = 1;
    sw[3] = 1;
    
    
    // Second dsiplay 
    #10
    // 1
    sw[4] = 1;
    sw[5] = 0;
    sw[6] = 0;
    sw[7] = 0;
    
    #10
    //5
    sw[4] = 1;
    sw[5] = 0;
    sw[6] = 1;
    sw[7] = 0;
    
    #10
    //9
    sw[4] = 1;
    sw[5] = 0;
    sw[6] = 0;
    sw[7] = 1;
    
    #10
    //13 d
    sw[4] = 1;
    sw[5] = 0;
    sw[6] = 1;
    sw[7] = 1;
    
    
    // Third dsiplay 
    #10
    // 2
    sw[8] = 0;
    sw[9] = 1;
    sw[10] = 0;
    sw[11] = 0;
    
    #10
    //6
    sw[8] = 0;
    sw[9] = 1;
    sw[10] = 1;
    sw[11] = 0;
    
    #10
    //10
    sw[8] = 0;
    sw[9] = 1;
    sw[10] = 0;
    sw[11] = 1;
    
    #10
    //14 E
    sw[8] = 0;
    sw[9] = 1;
    sw[10] = 1;
    sw[11] = 1;
    
    // Fourth dsiplay 
    #10
    // 3
    sw[12] = 1;
    sw[13] = 1;
    sw[14] = 0;
    sw[15] = 0;
    
    #10
    //7
    sw[12] = 1;
    sw[13] = 1;
    sw[14] = 1;
    sw[15] = 0;
    
    #10
    //11 b
    sw[12] = 1;
    sw[13] = 1;
    sw[14] = 0;
    sw[15] = 1;
    
    #10
    //15 F
    sw[12] = 1;
    sw[13] = 1;
    sw[14] = 1;
    sw[15] = 1;
    
end

always 
#5 clk = ~clk;   
    
endmodule
