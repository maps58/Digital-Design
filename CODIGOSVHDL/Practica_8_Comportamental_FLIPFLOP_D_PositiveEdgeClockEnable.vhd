PRACTICA 8:  LATCHES Y FLIP FLOPS(modelado comportamental)


-------Flip-flop with Positive-Edge Clock and Clock Enable

library ieee;  
use ieee.std_logic_1164.all;  
 
entity flop is  
  port(C, D, CE  : in  std_logic; 
      Q          : out std_logic);  
end flop;  
architecture archi of flop is  
  begin  
    process (C)  
      begin  
        if (C'event and C='1') then  
          if (CE='1') then  
            Q <= D;  
          end if;  
        end if;  
    end process;  
end archi; 