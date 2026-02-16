`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module PR1_4(
    input x1,
    input x2,
    input x3,
    output z1,
    output z2
    );


nand inst1(net1, x1, x2, x3);
nand inst2(net2, x1, x2, x3);
or   inst3(net3, net2, net5);
nand inst4(z1, net1, net3);
nand inst5(net5, x1, x2);
nand inst6(net6, x1, x3);
nand inst7(net7, x2, x3);
nand inst8(z2, net5, net6, net7);
endmodule
