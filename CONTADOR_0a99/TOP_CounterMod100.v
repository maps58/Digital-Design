`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Oaxaca
// Engineer: Miguel Angel Perez Solano
// 
// Create Date: 12/09/2024 01:49:23 PM
// Design Name: Contador Modulo_100
// Module Name: TOP_CounterMod100
// Target Devices: Nexys4 DDR Artix 7/XC7A100T-CSG324
// Tool Versions: VIVADO 2020.1// 
//////////////////////////////////////////////////////////////////////////////////

module TOP_CounterMod100(
    input CLK100MHZ,
    input BTNC,
    input SW0,
    output [6:0] a_to_g,
    output [7:0] an,
    output dp
    );
    
    wire cable1;
    wire cable2;
    wire [6:0] cable3;
    wire [7:0] cable4;
    
    clkdiv U1 (.clk(CLK100MHZ),.clk1Hz(cable1),.clk190Hz(cable2));                                           
    counterMod100 U2 (.reset(BTNC),.clk(cable1),.updown(SW0),.counter(cable3));
    bin2bcd U3 (.b(cable3),.p(cable4));
    x7seg U4 (.x(cable4),.clk190(cable2),.reset(BTNC),.an(an),.a_to_g(a_to_g),.dp(dp));
    
    
endmodule
