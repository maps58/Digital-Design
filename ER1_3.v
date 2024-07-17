`timescale 1ns / 1ps

module PR1_3(
    input A,
    input B,
    input C,
    output X
    );

wire net1, net2;

and And_1(net1, B, C);
and And_2(net2, A, ~C);
or  Or_1(X, net1, net2);

endmodule
