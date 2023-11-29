`timescale 1ns / 1ps
module mux(
input i0,
input i1,
input i2,
input i3,
input s1,
input s0,
output d
);
// Defining wires
wire s1_not, s0_not, w0, w1, w2, w3;
not n1(s1_not, s1);
not n0(s0_not, s0);
//Instantiating AND / OR gates
and g0(w0, i0, s1_not, s0_not);
and g1(w1, i1, s1_not, s0);
and g2(w2, i2, s1, s0_not);
and g3(w3, i3, s1, s0);
or g4(d, w0, w1, w2, w3);
endmodule

//BEHAVIORAL
//
//`timescale 1ns / 1ps

//module mux(
//    input i0,
//    input i1,
//    input i2,
//    input i3,
//    input s1,
//    input s0,
//    output d
//    );
//
//wire i0, i1, i2, i3, s1, s0;
//    reg d;
//           
//    always @ (i0 or i1 or i2 or i3 or s1 or s0)
//    begin
//
//    case  ({s1,s0})
//
//        2'b00 : d = i0;
//        2'b01 : d = i1;
//        2'b10 : d = i2;
//        2'b11 : d = i3;
//
//        endcase
//    end
//
//endmodule
