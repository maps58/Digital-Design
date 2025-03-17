library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity gray_counter_tb is
end;

architecture bench of gray_counter_tb is

  component gray_counter
  port(clk: in std_logic;
     rst: in std_logic;
    gray_code: out std_logic_vector (3 downto 0));
  end component;

  signal clk: std_logic;
  signal rst: std_logic;
  signal gray_code: std_logic_vector (3 downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: gray_counter port map ( clk       => clk,
                               rst       => rst,
                               gray_code => gray_code );

  stimulus: process
  begin
   
 rst <= '1'; wait for 50 ns;
 rst <= '0'; wait for 1000 ns;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;
end;
