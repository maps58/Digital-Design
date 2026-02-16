
PRACTICA 2 COMPARADORES (modelado por flujo de datos)	

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Compa2bits is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (2 downto 0));
end Compa2bits;

architecture Behavioral of Compa2bits is
 signal a,b: std_logic_vector (1 downto 0);
 signal amayb, amenb, aigub: std_logic;


begin

amayb<= (a(1) and not b(1)) or (a(0) and not b(1) and not b(0)) or (a(1) and a(0) and not b(0));

aigub<= ( a(0) xnor b(0)) and (a(1) xnor b(1));


amenb<= (not a(1) and b(1)) or (not a(1) and not a(0) and b(0)) or (not a(0) and b(1) and b(0));

a <= sw(1 downto 0);
b <= sw(3 downto 2);
led(0) <=amayb ;
led(1) <=aigub;
led(2) <=amenb; 

end Behavioral;

