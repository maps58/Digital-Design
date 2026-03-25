`timescale 1ns / 1ps

 module bin2bcd(
    input wire [6:0] b,
    output reg [7:0] p
    );
//variables intermedias
    reg [15:0] z;   
    integer i;   
    
     always @(*)
        begin
          for (i = 0; i <= 15; i = i+1) //run for 8 iterations
            z[i] = 0;
            z[9:3] = b;   //shifteo de b 3 lugares.
            
            repeat(5)
            begin
                                
                //if a hex digit of 'bcd' is more than 4, add 3 to it.  
                if(z[11:8] > 4)
                    z[11:8] = z[11:8] + 3;
                if(z [15:12] > 4)
                    z[15:12] = z[15:12] + 3;
                z[15:1] = z[14:0];  
            end
             p = z[15:8];
        end                     
endmodule