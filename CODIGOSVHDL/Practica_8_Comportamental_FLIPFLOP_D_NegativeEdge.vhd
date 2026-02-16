PRACTICA 8:  LATCHES Y FLIP FLOPS(modelado comportamental)


-------Flip-flop with Negative-Edge Clock and Asynchronous Clear 

library ieee;  
use ieee.std_logic_1164.all;  
 
entity flop is  
  port(C, D, 
CLR                :
 in std_logic; 
        Q        : out std_logic);  
end flop;  
architecture archi of flop is  
  begin  
    process (C, CLR)  
      begin  
        if (CLR = '1')then  
          Q <= '0';  
        elsif (C'event and C='0')then  
          Q <= D;  
        end if;  
    end process;  
end archi; 