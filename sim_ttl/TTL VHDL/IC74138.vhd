library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74138 is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           nY : out  STD_LOGIC_VECTOR (7 downto 0);
           nE : in  STD_LOGIC_VECTOR (1 downto 0);
           E : in  STD_LOGIC);
end IC74138;

architecture Behavioral of IC74138 is

	signal EE : std_logic;
	signal nA : std_logic_vector(2 downto 0);

begin
	
	EE <= (not(nE(0)) and not(nE(1)) and E);
	nA <= not A;
	
	nY(0) <= not(EE and nA(2) and nA(1) and nA(0));
	nY(1) <= not(EE and nA(2) and nA(1) and  A(0));
	nY(2) <= not(EE and nA(2) and  A(1) and nA(0));
	nY(3) <= not(EE and nA(2) and  A(1) and  A(0));
	nY(4) <= not(EE and  A(2) and nA(1) and nA(0));
	nY(5) <= not(EE and  A(2) and nA(1) and  A(0));
	nY(6) <= not(EE and  A(2) and  A(1) and nA(0));
	nY(7) <= not(EE and  A(2) and  A(1) and  A(0));
	
end Behavioral;

