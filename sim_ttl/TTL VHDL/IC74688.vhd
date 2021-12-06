library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74688 is
    Port ( P : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : in  STD_LOGIC_VECTOR (7 downto 0);
           nG : in  STD_LOGIC;
           nP_equ_Q : out  STD_LOGIC);
end IC74688;

architecture Behavioral of IC74688 is

	signal intern : std_logic_vector (8 downto 0);

begin

	GEN_equ: for i in 0 to 7 generate
		intern(i) <= not(not(P(i)) xor not(Q(i)));
	end generate GEN_equ;
	
	intern(8) <= not(nG);
	
	--NAND
	nP_equ_Q <= '0' when (intern = "111111111") else '1';

end Behavioral;

