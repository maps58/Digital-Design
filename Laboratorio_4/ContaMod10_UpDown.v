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
      else begin   
   //conteo ascendente
      if (UD) begin      
       if (aux == 4'h9)
           aux <= 4'h0;
      else    
         aux <= aux + 4'b0001; 
      end
           
      else begin    
     //conteo descendente       
     if (aux == 4'd0)   
         aux <= 4'd9;  
     else     
         aux <= aux - 1'b1;     
      end  
    end 
  end
   assign conta_out = aux;
endmodule
