PRACTICA 4: MULTIPLEXORES (modelado comportamental if-then-else)


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4x1 is
    Port ( sw : in  STD_LOGIC_VECTOR (5 downto 0);
           led : out  STD_LOGIC_vector (0 downto 0));
end Mux4x1;

architecture Behavioral of Mux4x1 is
signal a,b,c,d,o: std_logic;
signal s:std_logic_vector (1 downto 0);
begin
process (a, b, c, d, s) 
    begin 
      if    (s = "00") then o <= a; 
      elsif (s = "01") then o <= b; 
      elsif (s = "10") then o <= c; 
      else o <= d; 
      end if; 
end process;
a<= sw(0);
b<= sw(1);
c<= sw(2);
d<= sw(3);
s(0)<= sw(4);
s(1)<= sw(5);
led(0)<= o;

end Behavioral;

