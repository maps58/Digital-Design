
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity REGSISO is
    Port ( CLK : in  STD_LOGIC;
           SI : in  STD_LOGIC;
	        rst : in std_logic;
           SO : out  STD_LOGIC);
end REGSISO;

architecture Behavioral of REGSISO is

 SIGNAL TEMP: std_logic_vector (7 downto 0);

begin
 
 process (clk, rst)
begin

    if rst = '0' then 
	     temp <= x"00";
	elsif clk'event and clk = '1' then
	     temp (7 downto 1) <= temp (6 downto 0);
		  temp (0) <= SI;
		  
		  end if;
		  end process;
		  
		  SO <= temp(7);

end Behavioral;

