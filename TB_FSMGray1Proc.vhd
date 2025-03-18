library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Gray_1processNUEVO_tb is
end;

architecture bench of Gray_1processNUEVO_tb is

  component Gray_1processNUEVO
      Port ( rst : in STD_LOGIC;
             clk1Hz : in STD_LOGIC;
             GrayCount : out STD_LOGIC_VECTOR (2 downto 0));
  end component;

  signal rst: STD_LOGIC;
  signal clk1Hz: STD_LOGIC;
  signal GrayCount: STD_LOGIC_VECTOR (2 downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Gray_1processNUEVO port map (rst=> rst,clk1Hz=> clk1Hz,GrayCount => GrayCount);

  stimulus: process
  begin
rst <= '1'; wait for 50 ns;
rst <= '0'; wait for 800 ns;
rst <= '1'; wait for 200 ns;
 end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk1Hz <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;
end;
