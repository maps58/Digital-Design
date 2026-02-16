PRACTICA 5: SUMADOR DE 4 BITS (Modelado estructural: Instanciado)


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_adderbits is
    Port ( sw : in  STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (4 downto 0);
           btn : in  STD_LOGIC_VECTOR (0 downto 0));
end top_adderbits;

architecture Behavioral of top_adderbits is

signal c: std_logic_vector (2 downto 0);

begin

		FA_0: entity work.ADDER_4_BITS PORT MAP(
		a => sw(0),
		b => sw(4),
		Cin => btn(0),
		Cout => c(0),
		Suma => led (0)
		);
		
		FA_1: entity work.ADDER_4_BITS PORT MAP(
		a => sw(1),
		b => sw(5),
		Cin => c(0),
		Cout => c(1),
		Suma => led(1)
		);
		
		FA_2: entity work.ADDER_4_BITS PORT MAP(
		a => sw(2),
		b => sw(6),
		Cin => c(1),
		Cout => c(2),
		Suma => led(2)
      );
		
		
		FA_3: entity work.ADDER_4_BITS PORT MAP(
		a => sw(3) ,
		b => sw(7) ,
		Cin => c(2),
		Cout => led (4),
		Suma => led(3)
		
		);



end Behavioral;

