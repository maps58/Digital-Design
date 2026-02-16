

PRACTICA 5: SUMADOR DE 4 BITS (Modelado Comportamental: ciclo for) 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder4bits_comportamental is
    Port ( sw : in  STD_LOGIC_VECTOR (7 downto 0);
           btn : in  STD_LOGIC_VECTOR (0 downto 0);
           led : out  STD_LOGIC_VECTOR (4 downto 0));
end adder4bits_comportamental;

architecture Behavioral of adder4bits_comportamental is

signal a,b, sum:std_logic_vector (3 downto 0);
signal Cin, Cout:std_logic;
signal c:std_logic_vector (4 downto 0);
begin
process (a,b,Cin,c)

begin
c(0) <= Cin;

for i in 0 to 3

loop

sum(i)<= a(i) xor b(i) xor c(i);
c(i+1)<= (a(i) and b(i)) or (a(i) and c(i)) or (b(i) and c(i));
		 
 end loop;
Cout<= c(4);
end process;
a<= sw(3 downto 0);
b<= sw(7 downto 4);
Cin<= btn(0);
led(3 downto 0) <=sum (3 downto 0);

led(4) <= Cout;

end Behavioral;

