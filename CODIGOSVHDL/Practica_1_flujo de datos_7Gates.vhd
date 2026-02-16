
PRACTICA 1: LAS 7 COMPUERTAS (Modelado por flujo de datos)


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity gates4in is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           OUTAND : out  STD_LOGIC;
           OUTOR : out  STD_LOGIC;
           OUTNOTA : out  STD_LOGIC;
           OUTNAND : out  STD_LOGIC;
           OUTNOR : out  STD_LOGIC;
           OUTXOR : out  STD_LOGIC;
           OUTXNOR : out  STD_LOGIC);
end gates4in;

architecture Behavioral of gates4in is

begin

OUTAND<= A(0) AND A(1) AND A(2) AND A(3);
OUTOR <= A(0) OR A(1) OR A(2) OR A(3);
OUTNOTA <= NOT A(3);
OUTNAND <= NOT (A(0) AND A(1) AND A(2) AND A(3));
OUTNOR <= NOT (A(0) OR A(1) OR A(2) OR A(3));
OUTXOR<= A(0) XOR A(1) XOR A(2) XOR A(3);
OUTXNOR<= not (A(0) XOR A(1) XOR A(2) XOR A(3));

end Behavioral;

