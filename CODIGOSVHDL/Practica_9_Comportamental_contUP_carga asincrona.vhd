PRACTICA 9:  CONTADORES SINCRONOS Y ASINCRONOS (modelado comportamental)


-------4-bit Unsigned Up Counter with Asynchronous Load from -------Primary Input 

library ieee; 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all; 
 
entity counter is  
  port(C, S : in  std_logic;  
        Q : out std_logic_vector(3 downto 0));  
end counter; 
architecture archi of counter is  
  signal tmp: std_logic_vector(3 downto 0);  
  begin  
    process (C)  
      begin  
        if (C'event and C='1') then  
          if (S='1') then 
            tmp <= "1111";  
          else  
            tmp <= tmp - 1;  
          end if;  
        end if;  
    end process;  
    Q <= tmp;  
end archi; 