PRACTICA 4: MULTIPLEXORES (Modelado por flujo de datos)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux4x1_flujoDeDatos is
    Port ( sw : in  STD_LOGIC_VECTOR (7 downto 0);
           btn : in  STD_LOGIC_VECTOR (1 downto 0);
           led : out  STD_LOGIC_vector (1 downto 0));
end Mux4x1_flujoDeDatos;

architecture Behavioral of Mux4x1_flujoDeDatos is
signal b: std_logic_vector (7 downto 0);
signal s, muxout: std_logic_vector(1 downto 0);
begin

muxout(0)<= (b(0) and not S(1) and not S(0)) or (b(2) and not S(1) and S(0)) or (b(4) and S(1) and not S(0)) or (b(6) and S(1) and S(0));


muxout(1)<= (b(1) and not S(1) and not S(0)) or (b(3) and not S(1) and S(0)) or (b(5) and S(1) and not S(0)) or (b(7) and S(1) and S(0));



b <= sw(7 downto 0);
s <= btn(1 downto 0);
led <= muxout(1 downto 0);

end Behavioral;

