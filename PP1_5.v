`timescale 1ns / 1ps
module PP1_5 (X, Y, S, Co);
 input [3:0] X, Y;// Two 4-bit inputs
 output [3:0] S;
 output Co;
 wire w1, w2, w3;
 // instantiating 4 1-bit full adders in Verilog
 fulladder FA0(X[0], Y[0], 1'b0, S[0], w1);
 fulladder FA1(X[1], Y[1], w1, S[1], w2);
 fulladder FA2(X[2], Y[2], w2, S[2], w3);
 fulladder FA3(X[3], Y[3], w3, S[3], Co);
endmodule
	

module fulladder(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire w1,w2,w3;
  //Structural code for one bit full adder
  xor G1(w1, X, Y);
  xor G2(S, w1, Ci);
  and G3(w2, w1, Ci);
  and G4(w3, X, Y);
  or G5(Co, w2, w3);
endmodule	