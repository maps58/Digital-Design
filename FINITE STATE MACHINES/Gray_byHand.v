`timescale 1ns / 1ps
module Gray_Counter4bits(
    input wire clk,
    input wire rst,
    output reg [3:0] gray_out
);

    // Registro interno del contador binario
    reg [3:0] bin_count;

    // Logica secuencial para el contador binario
    always @(posedge clk or posedge rst) begin
        if (rst) 
            bin_count <= 4'b0000;
         else 
            bin_count <= bin_count + 1'b1;
         end

    // Logica Combinacional para la conversion binary-a-Gray.
    // El código Gray de salida es actualizado cuando cambia bin_count
    always @(*) begin
        gray_out = (bin_count >> 1) ^ bin_count;
    end

endmodule