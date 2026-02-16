PRACTICA 3b: DECODIFICADOR BCD/7SEGMENTOS
Modelado comportamental) 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD7SEG is
    Port ( sw: in  STD_LOGIC_vector (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
		     an :out std_logic_vector (3 downto 0));
end BCD7SEG;

architecture Behavioral of BCD7SEG is
signal a_to_g: std_logic_vector (6 downto 0);
signal b: std_logic_vector ( 3 downto 0);

begin
    process(a_to_g)
begin
        case b is
            when "0000" => a_to_g<= "0000001";	 --0
            when "0001" => a_to_g<= "1001111";	 --1
            when "0010" => a_to_g <= "0010010";	 --2
            when "0011" => a_to_g<= "0000110";	 --3
            when "0100" => a_to_g<= "1001100";	 --4
            when "0101" => a_to_g<= "0100100";	 --5
            when "0110" => a_to_g<= "0100000";	 --6
            when "0111" => a_to_g<= "0001101";	 --7
            when "1000" => a_to_g<= "0000000";	 --8
            when others => a_to_g<= "0000100";	 --9
            
        end case;
   end process;
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
end Behavioral;
