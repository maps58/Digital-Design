`timescale 1ns / 1ps

module PP1_3(
    input a,b,c,d,
    output out
    );
wire x, y;

and And_1(x,a,b);
and And_2(y,c,d);
or Or_1(out,x,y);

endmodule
