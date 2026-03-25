// Miguel Angel Pérez Solano
// Instituto Tecnologico de Oaxaca
// Departamento de Ingeniería Electrónica y Electrónica
// Design Name: Circuitos Secuenciales
// Module Name: Contador Mod_100

module counterMod100(
	input reset,
	input  updown,
	input  clk,
	output [6:0]counter
	);
reg [6:0] temp;
	always @ (posedge clk)
	begin
      if(reset)
			temp <=0;
			else if (updown == 1)
			    begin
			       if(temp ==99)
			       temp <= 0;
			       else			       
			    temp <= temp +1;
			    end  
			else 
			begin
			    if (temp == 0)
			      temp<=99;
			      else
			     temp <= temp - 1;    
			     end
	end
	assign counter = temp;
	endmodule
