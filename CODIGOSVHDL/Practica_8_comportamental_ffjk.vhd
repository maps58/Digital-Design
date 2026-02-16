

PRACTICA 8: LATCHES Y FLIP FLOPS (J-K)

library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity JK_FF is
PORT	
	( J,K,clk: in std_logic;
	Q, NOQ: out std_logic);
end JK_FF;
 
Architecture behavioral of JK_FF is
SIGNAL TMP: STD_LOGIC;
begin
	process (clk,TMP)          
begin

	if (clk'event and clk='1' )  then
		if (J='0' and K='0')then
                      TMP<=TMP;
              elsif (J='1' and K='1')then
                       TMP<= not TMP;
              elsif(J='0' and K='1')then
                       TMP<='0';
               else
                       TMP<='1';
                       end if;
             end if;
       Q<=TMP;
       NOQ<=not TMP;
end PROCESS;
end behavioral;