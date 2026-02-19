`timescale 1ns / 1ps


module ContaMod10_UpDown(
input clk,
input reset,
input UD,
output [3:0] conta_out
 );
reg[3:0] aux;
   always@(posedge clk) begin
      if (reset)
         aux <= 4'h0;       
      else if (aux == 4'h9)
          aux <= 4'h0;
      else if (UD)    
         aux <= aux + 4'b0001;    
      else
         aux <= aux - 4'b0001; 
 end
   assign conta_out = aux;

endmodule
