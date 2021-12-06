library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74540 is
    generic ( width : integer := 8 );
	 Port ( D : in  STD_LOGIC_VECTOR (width-1 downto 0);
           nY : out  STD_LOGIC_VECTOR (width-1 downto 0);
           nOE_A : in  STD_LOGIC;
           nOE_B : in  STD_LOGIC);
end IC74540;

architecture Behavioral of IC74540 is

begin

	--tristate
	nY <= not(D) when (nOE_A = '0' and nOE_B = '0') else (others => 'Z');

end Behavioral;

