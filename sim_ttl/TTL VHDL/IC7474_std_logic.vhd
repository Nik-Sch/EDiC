library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC7474_std_logic is
    Port ( D : in  STD_LOGIC;
			  CP : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC;
           nSet : in  STD_LOGIC;
           nRes : in  STD_LOGIC);
end IC7474_std_logic;

architecture Behavioral of IC7474_std_logic is

	signal Q_int : STD_LOGIC;
	signal spec : std_logic;

begin
	
	reg_d: process(CP, nSet, nRes)
	begin
		if CP'event and CP = '1' then
			Q_int <= D;
		end if;
		if nRes = '0' then
			Q_int <= '0';
		end if;
		if nSet = '0' then
			Q_int <= '1';
		end if;
	end process;
	
	--special behavior
	--if nSet = nRes = 0, then Q = nQ = 1
	spec <= nRes or nSet;
	Q <= Q_int when (spec = '1') else '1';
	nQ <= not Q_int when (spec = '1') else '1';

end Behavioral;

