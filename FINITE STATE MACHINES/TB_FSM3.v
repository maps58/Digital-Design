`timescale 1ns / 1ps

module TB_FSM3;
reg clk;
reg rst;
reg inp;
wire outp;

SeqDet101Mealy DUT(.clk(clk),.rst(rst),.inp(inp),.outp(outp));

always #10 clk = ~clk;

initial begin

    clk = 0;  rst = 1;  inp = 0; #80
     rst = 0;

    // Secuencia de prueba
    // 1 0 1 0 1 1 0 1

    #20 inp = 1;
    #20 inp = 0;
    #20 inp = 1;   // detección 101

    #20 inp = 0;
    #20 inp = 1;   // segunda detección 101 (traslape)

    #20 inp = 1;
    #20 inp = 0;
    #20 inp = 1;   // tercera detección
    #20 inp = 1;
    #20 inp = 0;
    #10 inp = 1;   // detección 101

    #10 inp = 0;
    #10 inp = 1;   // segunda detección 101 (traslape)

    #10 inp = 1;
    #10 inp = 0;
    #10 inp = 1;   // tercera detección
    #150
    $finish;

end

//////////////////////////////////////////
// Monitor de simulación
//////////////////////////////////////////

initial begin
    $monitor("Tiempo=%0t  rst=%b  inp=%b  outp=%b",
              $time, rst, inp, outp);
end

endmodule