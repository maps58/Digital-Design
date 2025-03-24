library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Top_GrayCounter is

	port(
      CLK50MHz: in std_logic;
		rst     : in std_logic;
	   leds    : out std_logic_vector(3 downto 0));
	end Top_GrayCounter;		
		
		architecture behavioral of Top_GrayCounter is
		
		signal aux: std_logic;
		
		begin
		
		
		U1: entity work.clk1Hz port map(clk=> CLK50MHz, reset => rst, clkout=>aux);
		
		U2: entity work.grayCounter port map(clk => aux, rst =>rst, gray_code => leds);
		
		end behavioral;