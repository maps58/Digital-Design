//timescale 1ns / 1ps

module PP1_1(  
  input [5:0] in,
  output [6:0] out
  );

  and AndGate (out[6],in[5], in[4], in[3], in[2], in[1], in[0]);
  or  OrGate  (out[5],in[5], in[4], in[3], in[2], in[1], in[0]);
  nand NandGate (out[4],in[5], in[4], in[3], in[2], in[1], in[0]);
  nor NorGate (out[3],in[5], in[4], in[3], in[2], in[1], in[0]);
  xor XorGate (out[2],in[5], in[4], in[3], in[2], in[1], in[0]);
  xnor XnorGate (out[1],in[5], in[4], in[3], in[2], in[1], in[0]);
  not NotGate (out[0],in[5]);

endmodule