--Maquina de Estado del código Gray.
--3 procesos

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GrayCounter3p is
        Port ( rst : in  STD_LOGIC;
        clk : in  STD_LOGIC;
	    sel : in  STD_LOGIC;
        GrayCount : out  STD_LOGIC_VECTOR(2 downto 0));
end GrayCounter3p;

architecture Behavioral of GrayCounter3p is

type FSM_State is (S0,S1,S2,S3,S4,S5,S6,S7);

signal present_state, next_state:FSM_State;
signal counter: std_logic_vector (2 downto 0);	

begin

reg: process(clk, rst)
begin

	 if clk'event and clk ='1' then
              if rst = '0' then
                 present_state <= s0;
	    else			
	      present_state <= next_state; 
         end if;
	 end if;		
end process reg;	 
	 
CombLogic1: process(present_state, sel)

begin	  
   	 case present_state is  			
							  
when s0 => 
       if sel = '0' then 
	        next_state<=s0; 
	   else 
	        next_state<=s1;
	   end if;
when s1 => 
  	   if sel = '0' then 
	   next_state<=s1; 
	      else
	   next_state<=s2;
       end if;
					  
when s2 => 
       if sel = '0' then  
		next_state<=s2; 
	       else 
		next_state<=s3;
        end if;					
					
when s3 => 	
        if sel = '0' then 
	    next_state<=s3; 
	       else
		next_state<=s4; 
		end if;
					
when s4 => 
        if sel = '0' then 
		next_state<=s4; 
	        else 
		next_state<=s5;
	    end if;
					
when s5 =>
        if sel = '0' then 
		next_state<=s5; 
            else 
		next_state<=s6;
	    end if;
					
when s6 => 
       if sel = '0' then 
       next_state<=s6; 
	     else 
	   next_state<=s7;
	   end if;
					
when s7 => 
       if sel = '0' then 
		next_state<=s7; 
          else 
		next_state<=s0;
	    end if;
end case;			 
end process CombLogic1;		
      
CombLogic2:process (present_state)
begin
   
	case present_state is

    when s0=>counter<="000";
	when s1=>counter<="001";
	when s2=>counter<="011";
	when s3=>counter<="010";
	when s4=>counter<="110";
	when s5=>counter<="111";
	when s6=>counter<="101";
	when s7=>counter<="100";
end case;
end process CombLogic2;

     Graycount<=counter; 	
end Behavioral;
	   
	   
