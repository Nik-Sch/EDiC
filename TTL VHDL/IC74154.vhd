library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74154 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           nE : in  STD_LOGIC_VECTOR (1 downto 0);
           nQ : out  STD_LOGIC_VECTOR (15 downto 0));
end IC74154;

architecture Behavioral of IC74154 is

	signal EE : std_logic;
	signal nA : std_logic_vector(3 downto 0);

begin

	EE <= (not(nE(0)) and not(nE(1)));
	nA <= not A;
	
	nQ(0) <= not(EE and nA(3) and nA(2) and nA(1) and nA(0));
	nQ(1) <= not(EE and nA(3) and nA(2) and nA(1) and  A(0));
	nQ(2) <= not(EE and nA(3) and nA(2) and  A(1) and nA(0));
	nQ(3) <= not(EE and nA(3) and nA(2) and  A(1) and  A(0));
	nQ(4) <= not(EE and nA(3) and  A(2) and nA(1) and nA(0));
	nQ(5) <= not(EE and nA(3) and  A(2) and nA(1) and  A(0));
	nQ(6) <= not(EE and nA(3) and  A(2) and  A(1) and nA(0));
	nQ(7) <= not(EE and nA(3) and  A(2) and  A(1) and  A(0));
	nQ(8) <= not(EE and  A(3) and nA(2) and nA(1) and nA(0));
	nQ(9) <= not(EE and  A(3) and nA(2) and nA(1) and  A(0));
	nQ(10) <= not(EE and A(3) and nA(2) and  A(1) and nA(0));
	nQ(11) <= not(EE and A(3) and nA(2) and  A(1) and  A(0));
	nQ(12) <= not(EE and A(3) and  A(2) and nA(1) and nA(0));
	nQ(13) <= not(EE and A(3) and  A(2) and nA(1) and  A(0));
	nQ(14) <= not(EE and A(3) and  A(2) and  A(1) and nA(0));
	nQ(15) <= not(EE and A(3) and  A(2) and  A(1) and  A(0));

end Behavioral;

