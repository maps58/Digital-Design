PRACTICA 5: SUMADOR-RESTADOR DE 4 BITS (Modelado comportamental if then else)



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
ENTITY AddSub IS

PORT(A: IN std_logic_vector(3 downto 0);
		B: IN std_logic_vector(3 downto 0);
		subtract: IN std_logic;
		carry: OUT std_logic;
		sum: OUT std_logic_vector(3 downto 0));
		END AddSub;

ARCHITECTURE Behavioral OF AddSub IS	
-- temporary result with one extra bit for carry		

SIGNAL result: std_logic_vector(4 downto 0);

BEGIN
PROCESS(result,subtract, A, B)
BEGIN

	IF (subtract = '0') THEN -- addition
--add the two operands with one extra bit for carry
	result <= ('0' & A)+('0' & B);
	sum <= result(3 downto 0); -- extract the n-bit result
	carry <= result(4); -- extract the carry bit from result
	
	ELSE -- subtraction
	result <= ('0' & A)-('0' & B);
	sum <= result(3 downto 0); -- extract the n-bit result
	carry <= result (4); -- extract the borrow bit from result
	END IF;
	END PROCESS;
	END Behavioral;