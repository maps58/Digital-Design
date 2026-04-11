`timescale 1ns / 1ps

// 
//////////////////////////////////////////////////////////////////////////////////


module TB_ROM16X8;
reg [3:0] addr;
wire [7:0] data;

rom uut (.addr(addr),.data(data));

integer i;
initial begin

addr = 4'h0; #100;

for (i=0; i<16; i=i+1) begin
addr = i;
#10;
$display("Tiempo: %t | addr: %d | data: %b", $time, addr, data);
end
$finish;
end

endmodule
