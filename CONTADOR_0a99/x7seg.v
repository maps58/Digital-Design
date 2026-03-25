`timescale 1ns / 1ps

module x7seg(
    input wire [7:0] x,
    input wire clk190,
    input wire reset,
    output reg [6:0] a_to_g,
    output reg [7:0] an,
    output wire dp    
    );
    
    reg  s;
    reg [3:0] digit;
    wire [1:0] aen;
    
    assign dp = 1;  
    
    //configurar aen[7:0] ára blankear digitos
    
    assign aen[1]= x[7]|x[6]|x[5]|x[4];
    assign aen[0]=1;
    
    //Multiplexor 4x1
    
    always @(*)
          case(s) 
                 0: digit = x[3:0];
                 1: digit = x[7:4];
                 default digit = x[3:0];
          endcase
          
          //7-segment decoder:        
    always@(*)
        case (digit)
                  0: a_to_g = 7'b000_0001;
                  1: a_to_g = 7'b100_1111;
                  2: a_to_g = 7'b001_0010;
                  3: a_to_g = 7'b000_0110;
                  4: a_to_g = 7'b100_1100;
                  5: a_to_g = 7'b010_0100;
                  6: a_to_g = 7'b010_0000;
                  7: a_to_g = 7'b000_1111;
                  8: a_to_g = 7'b000_0000;
                  9: a_to_g = 7'b000_0100;
                  default: a_to_g = 7'b000_0001;
           endcase
           
    //selec digit
      always @(*)
        begin
            an = 8'hFF;
            if (aen[s] ==1)
              an[s] = 0;
        end     
        
        //contador-1 bit
   always @(posedge clk190)         
           begin
               if (reset ==1)
                     s <= 0;
               else
                     s <=s+1;       
                  
   end             
  endmodule
