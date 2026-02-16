
PRACTICA 2: COMPARADOR DE 4 BITS (modelado comportamental)



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compa4bits is
    Port ( sw : in  STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (2 downto 0));
end compa4bits;

architecture Behavioral of compa4bits is

signal aigub, amayb, amenb: std_logic;
signal a,b: std_logic_vector (3 downto 0);

begin

process (a,b)

begin

amenb<='0';
aigub<='0';
amayb<='0';


	if a>b then amayb <= '1';
	       elsif a=b then aigub <= '1';
	       else amenb <='1';
   end if;			 
end process;	
	
a <=sw(3 downto 0);
b <=sw(7 downto 4);
led(0)<= amayb;
led(1)<= aigub;
led(2)<= amenb;	

end Behavioral;

