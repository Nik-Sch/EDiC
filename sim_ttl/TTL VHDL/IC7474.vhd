library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC7474 is
	generic ( width : integer := 1 );
    Port ( D : in  STD_LOGIC_VECTOR (width-1 downto 0);
			  CP : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (width-1 downto 0);
           nQ : out  STD_LOGIC_VECTOR (width-1 downto 0);
           nSet : in  STD_LOGIC;
           nRes : in  STD_LOGIC);
end IC7474;

architecture Behavioral of IC7474 is

	signal Q_int : STD_LOGIC_VECTOR (width-1 downto 0);
	signal spec : std_logic;

begin
	
	reg_d: process(CP, nSet, nRes)
	begin
		if CP'event and CP = '1' then
			Q_int <= D;
		end if;
		if nRes = '0' then
			Q_int <= (others => '0');
		end if;
		if nSet = '0' then
			Q_int <= (others => '1');
		end if;
	end process;
	
	--special behavior
	--if nSet = nRes = 0, then Q = nQ = 1
	spec <= nRes or nSet;
	Q <= Q_int when (spec = '1') else (others => '1');
	nQ <= not Q_int when (spec = '1') else (others => '1');

end Behavioral;

