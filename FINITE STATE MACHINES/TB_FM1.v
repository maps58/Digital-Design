`timescale 1ns / 1ps

module TB_FM1;
    reg tb_clk;
    reg tb_reset;
    wire [3:0] tb_GrayCount;
        
    fsm_GrayCounter4bits uut (.clk(tb_clk),.reset(tb_reset),.GrayCount(tb_GrayCount));
    
    always #10 tb_clk = ~tb_clk;
    
    initial begin
    
    tb_clk = 1'b1; tb_reset = 1'b1; #50;    
    tb_reset = 1'b0; #600;
    tb_reset = 1'b1; #200;
    $finish;
    end      
endmodule
