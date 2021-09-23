library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74139 is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           nY : out  STD_LOGIC_VECTOR (3 downto 0);
           nE : in  STD_LOGIC);
end IC74139;

architecture Behavioral of IC74139 is

	signal EE : std_logic;
	signal nA : std_logic_vector(1 downto 0);

begin

	EE <= not(nE);
	nA <= not A;

	nY(0) <= not(EE and nA(1) and nA(0));
	nY(1) <= not(EE and nA(1) and  A(0));
	nY(2) <= not(EE and  A(1) and nA(0));
	nY(3) <= not(EE and  A(1) and  A(0));

end Behavioral;

