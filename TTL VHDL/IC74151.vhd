library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74151 is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           nE : in  STD_LOGIC;
           Y : out  STD_LOGIC;
           nY : out  STD_LOGIC);
end IC74151;

architecture Behavioral of IC74151 is

	signal intern : std_logic;

begin

	with S select
	intern <= I(0) when "000",
				I(1) when "001",
				I(2) when "010",
				I(3) when "011",
				I(4) when "100",
				I(5) when "101",
				I(6) when "110",
				I(7) when "111",
				'X'  when others;
				
	--output
	Y <= intern when (nE = '0') else '0';
	nY <= not(intern) when (nE = '0') else '1';

end Behavioral;

