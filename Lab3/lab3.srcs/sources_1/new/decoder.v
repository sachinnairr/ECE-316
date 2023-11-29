`timescale 1ns / 1ps

module decoder(
    input up, center, left, right, 
    output combo0, combo1, combo2, combo3, combo4, combo5, combo6, combo7
    );
    
    // Structural
    wire notup, notleft, notright;
    not int1(notup, up);
    not int2(notleft, left);
    not int3(notright, right);
    and out0 (combo0, center, notup, notleft, notright);
    and out1 (combo1, center, notup, notleft, right);
    and out2 (combo2, center, notup, left, notright);
    and out3 (combo3, center, notup, left, right);
    and out4 (combo4, center, up, notleft, notright);
    and out5 (combo5, center, up, notleft, right);
    and out6 (combo6, center, up, left, notright);
    and out7 (combo7, center, up, left, right);
    
    
//    // Dataflow
//    assign combo0 = center & ~up & ~left & ~right;
//    assign combo1 = center & ~up & ~left & right;
//    assign combo2 = center & ~up & left & ~right;
//    assign combo3 = center & ~up & left & right;
//    assign combo4 = center & up & ~left & ~right;
//    assign combo5 = center & up & ~left & right;
//    assign combo6 = center & up & left & ~right;
//    assign combo7 = center & up & left & right;
    
//    // Behavioral
//    reg combo0_buf, combo1_buf, combo2_buf, combo3_buf, combo4_buf, combo5_buf, combo6_buf, combo7_buf;
//    assign combo0 = combo0_buf;
//    assign combo1 = combo1_buf;
//    assign combo2 = combo2_buf;
//    assign combo3 = combo3_buf;
//    assign combo4 = combo4_buf;
//    assign combo5 = combo5_buf;
//    assign combo6 = combo6_buf;
//    assign combo7 = combo7_buf;
    
//    always @(*) begin
    
//        // Turn off previous LED that was on
//        combo0_buf = 0;
//        combo1_buf = 0;
//        combo2_buf = 0;
//        combo3_buf = 0;
//        combo4_buf = 0;
//        combo5_buf = 0;
//        combo6_buf = 0;
//        combo7_buf = 0;
        
//        // Ligh
//        if(center == 1) 
//           case({up, left, right}) 
//               3'b000: combo0_buf = 1; 
//               3'b001: combo1_buf = 1; 
//               3'b010: combo2_buf = 1; 
//               3'b011: combo3_buf = 1; 
//               3'b100: combo4_buf = 1; 
//               3'b101: combo5_buf = 1; 
//               3'b110: combo6_buf = 1; 
//               3'b111: combo7_buf = 1; 
               
//               default: begin
//                combo0_buf = 0;
//                combo1_buf = 0;
//                combo2_buf = 0;
//                combo3_buf = 0;
//                combo4_buf = 0;
//                combo5_buf = 0;
//                combo6_buf = 0;
//                combo7_buf = 0;
//                end
//           endcase
//    end
    
endmodule
