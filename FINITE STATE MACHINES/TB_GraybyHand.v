`timescale 1ns / 1ps


module Gray_Counter4bits_tb;

    reg clk;
    reg rst;
    wire [3:0] gray_out;

    Gray_Counter4bits uut (.clk(clk),.rst(rst),.gray_out(gray_out));

 always #10 clk = ~clk;
    
    initial begin
        // Inicialización de señales
        clk = 1'b0;   rst = 1'b1; #50

        // Estímulos
        rst = 1'b0; #500; // Esperar 500 ns
        // Aquí agregar estímulos adicionales
        rst = 1'b1; #500;
        $finish;
    end

endmodule
