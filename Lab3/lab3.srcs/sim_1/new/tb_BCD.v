`timescale 1ns / 1ps

module tb_BCD;
        // Inputs, defined as registers
    reg s0;
    reg s1;
    reg s2;
    reg s3;
    
    // Outputs, defined as wires
    wire a, b, c, d, e, f, g, dp, AN0, AN1, AN2, AN3;
    
    // Instantiate the UUT (unit under test)
    BCD uut(
        .s0(s0), 
        .s1(s1),
        .s2(s2),
        .s3(s3),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .dp(dp),
        .AN0(AN0),
        .AN1(AN1),
        .AN2(AN2),
        .AN3(AN3)
    );
    
    initial begin
        // Initialize Inputs
        s0 = 0;
        s1 = 0;
        s2 = 0;
        s3 = 0;
        
        // Wait 50 ns for global reset to finish
        #50;
        
        // Stimulus -- all input combinations followed by some wait time to observe the o/p  
        s0 = 0;
        s1 = 0;
        s2 = 0;
        s3 = 0;
        #50;
        
        s0 = 1;
        s1 = 0;
        s2 = 0;
        s3 = 0;
        #50;
        
        s0 = 0;
        s1 = 1;
        s2 = 0;
        s3 = 0;
        #50;
        
        s0 = 1;
        s1 = 1;
        s2 = 0;
        s3 = 0;
        #50;
        
        s0 = 0;
        s1 = 0;
        s2 = 1;
        s3 = 0;
        #50;
        
        s0 = 1;
        s1 = 0;
        s2 = 1;
        s3 = 0;
        #50;
        
        s0 = 0;
        s1 = 1;
        s2 = 1;
        s3 = 0;
        #50;
        
        s0 = 1;
        s1 = 1;
        s2 = 1;
        s3 = 0;
        #50;
        
        s0 = 0;
        s1 = 0;
        s2 = 0;
        s3 = 1;
        #50;
        
        s0 = 1;
        s1 = 0;
        s2 = 0;
        s3 = 1;
        #50;
        
        s0 = 0;
        s1 = 1;
        s2 = 0;
        s3 = 1;
        #50;
        
        s0 = 1;
        s1 = 1;
        s2 = 0;
        s3 = 1;
        #50;
        
        s0 = 0;
        s1 = 0;
        s2 = 1;
        s3 = 1;
        #50;
        
        s0 = 1;
        s1 = 0;
        s2 = 1;
        s3 = 1;
        #50;
        
        s0 = 0;
        s1 = 1;
        s2 = 1;
        s3 = 1;
        #50;
        
        s0 = 1;
        s1 = 1;
        s2 = 1;
        s3 = 1;
        #50;
        
    end
    
endmodule

