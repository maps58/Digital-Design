`timescale 1ns / 1ps

module ContaMod_16(
    input clk,
    input reset,
    output reg [3:0] conta_out
    );
    
   always@(posedge clk) begin
      if (reset)
      conta_out = 4'h0;
      else 
      conta_out <= conta_out + 4'b1;
    end
endmodule
