`timescale 1ns / 1ps

module register_logic(
    input clk,
    input enable,
    input [4:0] Data,
    output reg [4:0] Q
    );
    
    always @(posedge clk or posedge enable) begin
        if(enable)
        begin
            Q[0] = Data[0];
            Q[1] = Data[1];
            Q[2] = Data[2];
            Q[3] = Data[3];
            Q[4] = Data[4];
        end
    end
    
endmodule
