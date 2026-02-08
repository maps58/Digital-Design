`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Miguel Angel Pérez Solano
// Instituto Tecnologico de Oaxaca
// Departamento de Ingeniería Electrónica y Electrónica
// Design Name: Circuitos Secuenciales
// Module Name: clkbit3


module clkbit3 (
    input  clk100MHz,
    input  rst,   
    output clk_out
);
    reg [3:0] q;
    always @(posedge clk100MHz) begin
        if (rst)
            q <= 4'd0;
        else
            q <= q + 1'b1;
    end
    assign clk_out = q[3];   
endmodule