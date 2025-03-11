module clock1_5Hz(
    input clkin,
    input rst,
    output clk1Hz
    );
	 
        reg[25:0] q;
    
    always @ (posedge clkin)    
    begin   
        if (rst)
        q = 0;        
     else   
      q <= q+1;    
    end
        assign clk1Hz = q[2];    
          
endmodule

