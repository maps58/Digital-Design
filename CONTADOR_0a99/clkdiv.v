// Miguel Angel Pérez Solano
// Instituto Tecnologico de Oaxaca
// Departamento de Ingeniería Electrónica y Electrónica
// Design Name: Circuitos Secuenciales
// Module Name: clk1.4Hz

module clkdiv(
    input wire clk,
    output wire clk1_4Hz,
    output wire clk190Hz
    );
    
    reg [25:0] q;    
    //26-bit counter  
  always @(posedge clk)
  begin
            q <= q+1;
   end      
   assign clk1_4Hz = q[25];     
   assign clk190Hz = q[18];     

endmodule
