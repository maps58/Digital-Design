PRACTICA 6: DECODIFICADOR 3 A 8 (modelado por flujo de datos)


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decode38a is
	 port(
		 sw : in STD_LOGIC_VECTOR(2 downto 0);
		 led : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end decode38a;

architecture decode38a of decode38a is
signal y: std_logic_vector (7 downto 0);
signal a: std_logic_vector (2 downto 0);

begin

	y(0) <= not a(2) and not a(1) and not a(0);
	y(1) <= not a(2) and not a(1) and a(0);
	y(2) <= not a(2) and a(1) and not a(0);
	y(3) <= not a(2) and a(1) and a(0);
	y(4) <= a(2) and not a(1) and not a(0);
	y(5) <= a(2) and not a(1) and a(0);
	y(6) <= a(2) and a(1) and not a(0);
	y(7) <= a(2) and a(1) and a(0);

a<= sw(2 downto 0);
led<= y(7 downto 0);

end decode38a;
