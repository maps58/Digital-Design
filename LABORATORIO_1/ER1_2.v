`timescale 1ns / 1ps

    module PR1_2(
    input [3:0] in,
    output [3:0] out
    );


and   AndGateNG(out[0],~in[3], ~in[2], ~in[1], ~in[0]);
or    OrGateNG (out[1],~in[3], ~in[2], ~in[1], ~in[0]);
nand  NandGate (out[2],in[3], in[2], in[1], in[0]);
nor   NorGate  (out[3],in[3], in[2], in[1], in[0]);

endmodule
