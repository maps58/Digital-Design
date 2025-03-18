library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Gray_2process is
    Port ( rst : in STD_LOGIC;
           clk1Hz : in STD_LOGIC;
           GrayCount : out STD_LOGIC_VECTOR (2 downto 0));
end Gray_2process;

architecture Behavioral of Gray_2process is

type FSM_State is (S0, S1, S2, S3, S4, S5, S6, S7);
signal present_state, next_state:FSM_State;
signal counter: std_logic_vector(2 downto 0);

begin
reg: process (clk1Hz,rst)
begin
   if clk1Hz'event and clk1Hz = '1' then
    if rst = '1' then
        present_state<= S0;   
        else  
        present_state <= next_state; 
      end if;  
  end if;
end process reg;

CombLogic: process(present_state)
begin
  
        case present_state is
         when S0 => present_state <= S1;
         GrayCount <= o"0";
                          
         when S1 => present_state <= S2; 
         GrayCount <= o"1";
           
         when S2 => present_state <= S3; 
         GrayCount <= o"3";
                
         when S3 =>  present_state <= S4;      
         GrayCount <= o"2";
   
         when S4 => present_state <= S5; 
         GrayCount <= o"6";
           
         when S5 =>  present_state <= s6;
         GrayCount <= o"7";
                 
         when S6 => present_state <= s7;
         GrayCount <= o"5";
                
         when S7 => present_state <= s0;
         GrayCount <= o"4";
         end case; 
end process CombLogic;        
end Behavioral;
