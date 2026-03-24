
//Instituto Tecnológico de Oaxaca
//Materia: Programación estructurada
//Autor: Miguel Angel Pérez Solano
//Departamento de Ingeniería Eléctrica y Electronica

`timescale 1ns / 1ps
module TB_LightController;

    reg clk_tb;
    reg reset_tb;
    wire [2:0] L1;
    wire [2:0] L2;
    wire [2:0] L3;
    wire [2:0] L4;
        
 LightController_4way uut (.clk(clk_tb),.reset(reset_tb),.L1(L1),.L2(L2),.L3(L3),.L4(L4));   
    
    always #5 clk_tb = ~clk_tb;
    
    initial begin    
    clk_tb = 0;   reset_tb = 1; #10;
    
     reset_tb = 0; #800;
    reset_tb = 1; #400;    
    $finish;    
end
endmodule
