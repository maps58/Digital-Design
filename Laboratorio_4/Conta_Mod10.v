`timescale 1ns / 1ps


module Conta_Mod10(
input clk,
input reset,
output [3:0] conta_out
 );
reg[3:0] aux;
   always@(posedge clk) begin
      if (reset)
         aux <= 4'h0;
      else if (aux == 4'b1001)    
        aux <= 4'h0;   
      else 
      aux <= aux + 4'b0001; 
 end
   assign conta_out = aux;
endmodule
