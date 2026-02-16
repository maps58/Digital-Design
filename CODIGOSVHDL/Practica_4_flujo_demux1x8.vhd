PRACTICA 4:DEMULTIPLEXER 1X8 (por flujo de datos usando when)


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;




entity DEMUX_porflujo is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end DEMUX_porflujo;

architecture Behavioral of DEMUX_porflujo is

signal a: std_logic_vector (7 downto 0);
signal f: std_logic; 
signal s: std_logic_vector (2 downto 0);


begin

a(0) <= f when s="000" else '0';
a(1) <= f when s="001" else '0';
a(2) <= f when s="010" else '0';
a(3) <= f when s="011" else '0';
a(4) <= f when s="100" else '0';
a(5) <= f when s="101" else '0';
a(6) <= f when s="110" else '0';
a(7) <= f when s="111" else '0';

led<=a;
s(0)<=sw(0); 
s(1)<=sw(1);
s(2)<=sw(2);
f <=sw(3) ;


end Behavioral;

