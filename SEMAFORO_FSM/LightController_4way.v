`timescale 1ns / 1ps

//Modulo de Instanciacion
module TOP_lightController (

input clk100MHz,
input reset,
input rst,
output [2:0] L1, 
output [2:0] L2,
output [2:0] L3,
output [2:0] L4);

wire aux;

clk1Hz uut (.clk100MHz(clk100MHz),.rst(rst),.clk_out(aux));

LightController_4way dut (.clk(aux),.reset(reset),.L1(L1),.L2(L2),.L3(L3),.L4(L4));

endmodule

/* Modulo de clk de 1 MHz */

module clk1Hz (

    input clk100MHz,      
    input rst,      
    output reg clk_out   
);
    // Asi pues el Contador será de 26 bits
    reg [25:0] count = 0; 

    always @(posedge clk100MHz, posedge rst) begin
        if (rst == 1'b1) begin
            count <= 0;
            clk_out <= 0;
        end 
        else begin
            if (count == 12_499_999) begin
                count <= 0;         // Reset del contador en active alto
                clk_out <= ~clk_out; // Togglear el clk de salida.
            end 
            else 
                count <= count + 1; // Incrementa el contador
             end
    end
endmodule



/* Módulo de sistema controlador de semaforos*/

module LightController_4way(
input clk,
input reset, 
output reg [2:0] L1, L2,L3,L4
); 

reg [11:0]state = 12'o4111;
reg [5:0]count=6'o00;

    parameter S0 = 12'o4111;
    parameter S1 = 12'o6111;
    parameter S2 = 12'o1411;
    parameter S3 = 12'o1611;
    parameter S4 = 12'o1141;
    parameter S5 = 12'o1161;
    parameter S6 = 12'o1114;
    parameter S7 = 12'o1116;
    
    always @ (posedge clk) begin 
    if (reset) 
        state <= 12'o4111;
    else begin
    
case (state) 

    S0: begin   //State_0
        count <= count+1;                
     if (count == 10)begin              
        state <= S1;
        count <= 0;
      end
      else 
        state <= S0;
      end
      
                
   S1: begin //state_1
        count <= count+1;
    if (count == 5)begin
        state <= S2;           
        count <= 0;
    end
    else 
        state <= S1;
    end


    S2 : begin   //state_2
        count <= count+1;
    if (count == 10)begin
        state <= S3;          
        count <= 0;
    end
    else 
        state <= S2;
    end


    S3 : begin  //state_3
        count <= count+1;
    if (count == 5)begin
        state <= S4;            
        count <= 0;
    end
    else 
        state <= S3;
    end


    S4 : begin  //state 4
        count <= count+1;
    if (count == 10)begin
        state <= S5;         
        count <= 0;
    end
    else 
        state <= S4;
    end


    S5 : begin // state_5
        count <= count+1;
    if (count == 5)begin
     state <= S6;         
        count <= 0;
    end
    else 
        state <= S5;
    end


   S6 : begin   //state_6
        count <= count+1;
    if (count == 10)begin
        state <= S7;          
    count <= 0;
    end
    else 
        state <= S6;
    end

    S7: begin  //state 7
        count <= count+1;
        if (count == 5)begin
        state <= S0;           
        count <= 0;
        end
        else 
        state <= S7;
        end
endcase
end
L1 <= state[11:9];
L2 <= state[8:6];
L3 <= state[5:3];
L4 <= state[2:0];
end
endmodule


