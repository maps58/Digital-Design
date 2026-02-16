PRACTICA 8:  LATCHES Y FLIP FLOPS(modelado comportamental)


-------Flip-flop with Positive-Edge Clock and Synchronous Set

library ieee;  
use ieee.std_logic_1164.all;  
 
entity flop is  
  port(C, D, S              : in  std_logic;  
        Q       : out std_logic);  
end flop;  
architecture archi of flop is  
  begin  
    process (C)  
      begin  
        if (C'event and C='1') then 
          if (S='1') then  
            Q <= '1';  
          else  
            Q <= D;  
          end if;  
        end if;  
    end process;  
end archi; 