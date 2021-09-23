library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74245_MUX2 is
    generic ( width : integer := 8 );
	 Port ( A : in  STD_LOGIC_VECTOR (width-1 downto 0);
           B : out  STD_LOGIC_VECTOR (width-1 downto 0);
           DIR : in  STD_LOGIC;
           nOE : in  STD_LOGIC);
end IC74245_MUX2;

architecture Behavioral of IC74245_MUX2 is

begin

	--tristate A to B
	B <= A when (DIR = '1' and nOE = '0') else (others => 'Z');

end Behavioral;

