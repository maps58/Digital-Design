`timescale 1ns / 1ps
//

module PR1_1(
    input [3:0] X,
    output [6:0] out
    );
// 4-input seven gater instantiaded.

not  (out[0],X[3]); 
and  (out[1],X[3], X[2],X[1], X[0]);
or   (out[2],X[3], X[2],X[1], X[0]);
nand (out[3],X[3], X[2],X[1], X[0]);
nor  (out[4],X[3], X[2],X[1], X[0]);
xor  (out[5],X[3], X[2],X[1], X[0]);
xnor (out[6],X[3], X[2],X[1], X[0]);

endmodule
