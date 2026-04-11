`timescale 1ns / 1ps

module TB_RAM16x8;
   reg clk;
   reg we;
   reg [3:0] addr;
   reg [7:0] din;
   wire [7:0] dout;

ram_sincrona uut (.clk(clk),.we(we),.addr(addr),.din(din),.dout(dout));  
  
  always # 10 clk = ~clk; 
  
  initial begin
   clk = 0; we = 0; din = 0; addr = 0; #50; 
   
  we = 1; din = 8'hFF; addr = 4'h00; #50;
  din = 8'hEE; addr = 4'h01; #50;
  din = 8'hDD; addr = 4'h02; #50;
  din = 8'hCC; addr = 4'h03; #50;
  din = 8'hBB; addr = 4'h04; #50;
  din = 8'hAA; addr = 4'h05; #50;
  din = 8'h99; addr = 4'h06; #50;
  we = 0; addr = 4'h00; #50;
  addr = 4'h01; #50;
  addr = 4'h02; #50;
  addr = 4'h03; #50;
  addr = 4'h04; #50;
  addr = 4'h05; #50;
  addr = 4'h06; #50;
  $finish;  
end
endmodule
