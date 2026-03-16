`timescale 1ns / 1ps



module TB_FSM2;
    reg clk_tb;
    reg rst_tb;
    reg inp_tb;
    wire outp_tb;


SeqDet101Moore uut (.clk(clk_tb),.rst(rst_tb),.inp(inp_tb),.outp(outp_tb));

always #25 clk_tb = ~clk_tb;

    initial begin
    
clk_tb = 0;
rst_tb = 1;
inp_tb = 0;

#60 rst_tb = 0;

@(negedge clk_tb) inp_tb = 1;
@(negedge clk_tb) inp_tb = 0;
@(negedge clk_tb) inp_tb = 1;
@(negedge clk_tb) inp_tb = 1;
@(posedge clk_tb) inp_tb = 1;
@(negedge clk_tb) inp_tb = 0;
@(negedge clk_tb) inp_tb = 1;

#100 $finish;
end
    
    endmodule    
   