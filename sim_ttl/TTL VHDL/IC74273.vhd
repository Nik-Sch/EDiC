library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74273 is
    generic ( width : integer := 8 );
	 Port ( D : in  STD_LOGIC_VECTOR (width-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (width-1 downto 0);
           CP : in  STD_LOGIC;
           nMR : in  STD_LOGIC);
end IC74273;

architecture Behavioral of IC74273 is

begin

	--register (d-ff)
	reg_d: process(CP, nMR)
	begin
		if nMR = '0' then
			Q <= (others => '0');
		elsif CP'event and CP = '1' then
			Q <= D;
		end if;
	end process;

end Behavioral;

