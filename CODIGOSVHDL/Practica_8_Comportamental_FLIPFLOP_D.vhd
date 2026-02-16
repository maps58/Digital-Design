PRACTICA 8:  LATCHES Y FLIP FLOPS(modelado comportamental)


-------Flip-flop with Positive-Edge Clock 

library ieee;  
use ieee.std_logic_1164.all;  
 
entity flop is  
  port(C, D : in std_logic;  
      Q : out std_logic);  
end flop;  
architecture archi of flop is  
  begin  
    process (C)  
      begin  
        if (C'event and C='1') then  
          Q <= D;  
        end if;  
    end process;  
end archi; 

Note When using VHDL, for a positive-edge clock instead of using

  if (C'event and C='1') then  

you can also use

  if (rising_edge(C)) then 

and for a negative-edge clock you can use

  if (falling_edge(C)) then  