`timescale 1ns / 1ps

module clkdiv(
    input wire clk,
    output wire clk1Hz,
    output wire clk190Hz
    );
    
    reg [25:0] q;    
    //26-bit counter  
  always @(posedge clk)
  begin
            q <= q+1;
   end      
   assign clk1Hz = q[25];     
   assign clk190Hz = q[18];     

endmodule