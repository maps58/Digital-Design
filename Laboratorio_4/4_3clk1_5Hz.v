`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Miguel Angel Pérez Solano
// Instituto Tecnologico de Oaxaca
// Departamento de Ingeniería Electrónica y Electrónica
// Design Name: Circuitos Secuenciales
// Module Name: clk1_5Hz


module clk1_5Hz (
    input  clk100MHz,
    input  rst,   
    output clk_out
);

    reg [25:0] q;
    always @(posedge clk100MHz) begin
        if (rst)
            q <= 26'd0;
        else
            q <= q + 1'b1;
    end
    assign clk_out = q[25];   
endmodule
