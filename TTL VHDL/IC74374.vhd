library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74374 is
	 generic ( width : integer := 8 );
    Port ( CP : in  STD_LOGIC;
           nOE : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (width-1 downto 0);
           O : out  STD_LOGIC_VECTOR (width-1 downto 0));
end IC74374;

architecture Behavioral of IC74374 is

	signal O_int : std_logic_vector(width-1 downto 0);

begin

	--register (d-ff)
	reg_d: process(CP)
	begin
	if CP'event and CP = '1' then
			O_int <= D;
		end if;
	end process;

	--tristate
	O <= O_int when (nOE = '0') else (others => 'Z');

end Behavioral;

