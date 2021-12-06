library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74521 is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           nI_A_equ_B : in  STD_LOGIC;
           nO_A_equ_B : out  STD_LOGIC);
end IC74521;

architecture Behavioral of IC74521 is

	signal intern : std_logic_vector (8 downto 0);

begin

	GEN_equ: for i in 0 to 7 generate
		intern(i) <= not(not(A(i)) xor not(B(i)));
	end generate GEN_equ;
	
	intern(8) <= not(nI_A_equ_B);

	--NAND
	nO_A_equ_B <= '0' when (intern = "111111111") else '1';

end Behavioral;

