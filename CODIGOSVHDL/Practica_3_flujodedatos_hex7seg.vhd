PRACTICA 3: DECODIFICADOR BCD/7SEGMENTOS (Modelado por flujo de datos) 

entity bcd7seg is
	 port(
		 SW : in STD_LOGIC_VECTOR(3 downto 0);
		 seg : out STD_LOGIC_VECTOR(6 downto 0);
		 an: out STD_LOGIC_VECTOR (3 downto 0));
		 
end bcd7seg;
architecture bcd7seg of bcd7seg is
signal a_to_g: std_logic_vector (6 downto 0);
signal b: std_logic_vector ( 3 downto 0);
begin

--a
a_to_g(6) <= (b(2) and not b(1) and not b(0)) or (not b(3) and not b(2) and not b(1) and b(0));
--b
a_to_g(5) <= (b(2) and not b(1) and b(0)) or (b(2) and b(1) and not b(0));
--c
a_to_g(4) <=  not b(3) and not b(2) and b(1) and not b(0); 
--d	
a_to_g(3) <= ( b(2) and not b(1) and not b(0)) or (b(2) and b(1) and b(0)) or (not b(3) and not b(2) and not b(1) and b(0));
--e
a_to_g(2) <= b(0) or (b(2) and not b(1));
--f	
a_to_g(1) <= (b(1) and b(0)) or (not b(3) and not b(2) and b(0)) or (not b(3) and not b(2) and b(1));	
--g
a_to_g(0) <=	(not b(3) and not b(2) and not b(1)) or (b(2) and b(1) and b(0));

an<= x"e";
seg (6)<= a_to_g(6);
seg (5)<= a_to_g(5);
seg (4)<= a_to_g(4);
seg (3)<= a_to_g(3);
seg (2)<= a_to_g(2);
seg (1)<= a_to_g(1);
seg (0)<= a_to_g(0);
b(0) <= sw(0);
b(1) <= sw(1);
b(2) <= sw(2);
b(3) <= sw(3);
end bcd7seg;
