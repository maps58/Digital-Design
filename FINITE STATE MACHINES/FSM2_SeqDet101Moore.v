`timescale 1ns / 1ps

module SeqDet101Moore(
input clk,
input rst,
input inp,
output reg outp); 

reg [1:0] state;

   always @( posedge clk)
   begin
   if( rst )begin
       state <= 2'b00;
       outp <= 0;
       end
   else
   begin   
    case( {state,inp} )
          3'b000: begin
             state <= 2'b00;
             outp  <= 0;
          end
          3'b001: begin
             state <= 2'b01;
             outp  <= 0;
          end
          3'b010: begin
             state <= 2'b10;
             outp  <= 0;
          end
          3'b011: begin
             state <= 2'b01;
             outp  <= 0;
          end
          3'b100: begin
             state <= 2'b00;
             outp <= 0;
          end
          3'b101: begin
             state <= 2'b11;
             outp  <= 0;
          end
          3'b110: begin
             state <= 2'b10;
             outp  <= 1;
          end
          3'b111: begin
             state <= 2'b01;
             outp  <= 1;
          end
       endcase
        end
end
endmodule