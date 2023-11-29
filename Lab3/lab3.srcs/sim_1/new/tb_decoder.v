`timescale 1ns / 1ps

module tb_decoder;

reg up, center, left, right;
wire combo0, combo1, combo2, combo3, combo4, combo5, combo6, combo7;

decoder uut (up, center, left, right, combo0, combo1, combo2, combo3, combo4, combo5, combo6, combo7); 

initial begin 
center = 0; up = 0; left = 0; right = 0;
#10
center = 0; up = 0; left = 0; right = 1;
#10
center = 0; up = 0; left = 1; right = 0;
#10
center = 0; up = 0; left = 1; right = 1;
#10
center = 0; up = 1; left = 0; right = 0;
#10
center = 0; up = 1; left = 0; right = 1;
#10
center = 0; up = 1; left = 1; right = 0;
#10
center = 0; up = 1; left = 1; right = 1;
#10
center = 1; up = 0; left = 0; right = 0;
#10
center = 1; up = 0; left = 0; right = 1;
#10
center = 1; up = 0; left = 1; right = 0;
#10
center = 1; up = 0; left = 1; right = 1;
#10
center = 1; up = 1; left = 0; right = 0;
#10
center = 1; up = 1; left = 0; right = 1;
#10
center = 1; up = 1; left = 1; right = 0;
#10
center = 1; up = 1; left = 1; right = 1;

end


endmodule
