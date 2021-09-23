library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74825 is
	 generic ( width : integer := 8 );
    Port ( CP : in  STD_LOGIC;
           nEN : in  STD_LOGIC;
           nOE : in  STD_LOGIC_VECTOR (2 downto 0);
           nCLR : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (width-1 downto 0);
           O : out  STD_LOGIC_VECTOR (width-1 downto 0));
end IC74825;

architecture Behavioral of IC74825 is

	signal O_int : std_logic_vector(width-1 downto 0);

begin

	--register (d-ff with enable)
	reg_d: process(CP, nCLR)
	begin
		if nCLR = '0' then
			O_int <= (others => '0');
		elsif CP'event and CP = '1' then
			if nEN = '0' then
				O_int <= D;
			end if;
		end if;
	end process;

	--tristate
	O <= O_int when (nOE(0) = '0' and nOE(1) = '0' and nOE(2) = '0') else (others => 'Z');

end Behavioral;

