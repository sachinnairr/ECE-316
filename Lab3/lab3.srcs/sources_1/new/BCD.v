`timescale 1ns / 1ps

module BCD(
    input s0,
    input s1,
    input s2,
    input s3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output dp,
    output AN0,
    output AN1,
    output AN2,
    output AN3
    );
    
    // Structural -- Comment when testing Behavioral
    // Both should never be uncommented at once
    
    // Defining wires for not signals
    wire s0_not, s1_not, s2_not, s3_not;
    not n0(s0_not, s0);
    not n1(s1_not, s1);
    not n2(s2_not, s2);
    not n3(s3_not, s3);
    
    wire a0, a1, b0, b1, d0, d1, d2, e0, f0, f1, f2, g00, g110, AN00, AN01;
    
    //Instantiating AND gates as per the schematic
    and g0(a0, s0, s1_not, s2_not, s3_not);
    and g1(a1, s0_not, s1_not, s2);
    or o0(a, a0, a1);
    
    and g2(b0, s2, s1_not, s0);
    and g3(b1, s2, s1, s0_not);
    or o1(b, b0, b1);
    
    and g4(c, s2_not, s1, s0_not);
    
    and g5(d0, s2, s1_not, s0_not);
    and g6(d1, s3_not, s2_not, s1_not, s0);
    and g7(d2, s2, s1, s0);
    or o2(d, d0, d1, d2);
    
    and g8(e0, s2, s1_not);
    or o3(e, s0, e0);
    
    and g9(f0, s3_not, s2_not, s0);
    and g10(f1, s1, s0);
    and g11(f2, s2_not, s1, s0_not);
    or o4(f, f0, f1, f2);
    
    and g12(g00, s3_not, s2_not, s1_not);
    and g13(g110, s2, s1, s0);
    or o5(g, g00, g110);
    
    and g14(AN00, s3, s1);
    and g15(AN01, s3, s2);
    or o6(AN0, AN00, AN01);
    or o7(dp, s0, s0_not);
    or o8(AN1, s0, s0_not);
    or o9(AN2, s0, s0_not);
    or o10(AN3, s0, s0_not);
    
    
endmodule
