library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74377 is
	 generic ( width : integer := 8 );
    Port ( D : in  STD_LOGIC_VECTOR (width-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (width-1 downto 0);
           nE : in  STD_LOGIC;
           CP : in  STD_LOGIC);
end IC74377;

architecture Behavioral of IC74377 is

begin

	--register (d-ff with enable)
	reg_d: process(CP)
	begin
		if CP'event and CP = '1' then
			if nE = '0' then
				Q <= D;
			end if;
		end if;
	end process;

end Behavioral;

