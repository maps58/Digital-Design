PRACTICA 4: DEMULTIPLEXOR 1X8 (modelado comportamental)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity demux_comportamental is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end demux_comportamental;

architecture Behavioral of demux_comportamental is

signal bitin: std_logic;
signal s:std_logic_vector(2 downto 0);
signal sal:std_logic_vector (7 downto 0);

begin

process(bitin,s)
begin
sal <=x"00";
case s is


  when "000" => sal(0) <= bitin; 
  when "001" => sal(1) <= bitin;
  when "010" => sal(2) <= bitin; 
  when "011" => sal(3) <= bitin; 
  when "100" => sal(4) <= bitin; 
  when "101" => sal(5)<= bitin;  
  when "110" => sal(6) <= bitin; 
  when others =>sal(7)<= bitin;  
end case;
end process;

bitin <= sw(3);
s<= sw(2 downto 0);
led <= sal;


end Behavioral;

