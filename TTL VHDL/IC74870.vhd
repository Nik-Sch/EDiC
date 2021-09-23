library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package spy_reg_t is
    type spy_ic is array(0 to 15) of std_logic_vector (3 downto 0);
	 type spy_regsatz is array(0 to 31) of std_logic_vector (31 downto 0);
end package spy_reg_t;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.spy_reg_t.all; 

entity IC74870 is
    Port ( A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           A2 : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           nW1 : in  STD_LOGIC;
           nW2 : in  STD_LOGIC;
           DQA : inout  STD_LOGIC_VECTOR (3 downto 0);
           DQB : inout  STD_LOGIC_VECTOR (3 downto 0)
           -- synthesis translate_off
			;  regspy : out spy_ic
		   -- synthesis translate_on
			);
end IC74870;

architecture Behavioral of IC74870 is

	type ram_type is array (0 to 15) of std_logic_vector(3 downto 0);
	signal REG1 : ram_type;
	signal REG2 : ram_type;
	signal REG1_inp : std_logic_vector(3 downto 0);
	signal REG2_inp : std_logic_vector(3 downto 0);
	signal REG1_out : std_logic_vector(3 downto 0);
	signal REG2_out : std_logic_vector(3 downto 0);
	
	--nagatet input signals
	signal noS : std_logic_vector(3 downto 0);
	signal W1 : std_logic;
	signal W2 : std_logic;
	
	--write enables generatte per AND
	signal WE_R1A : std_logic;
	signal WE_R1B : std_logic;
	signal WE_R2A : std_logic;
	signal WE_R2B : std_logic;
	--WE for REG
	signal WE1 : std_logic;
	signal WE2 : std_logic;
	
	--(0) is upper or and (1) is lower or
	signal WP : std_logic_vector(1 downto 0);
	
	--output before tristate
	signal DQA_O : std_logic_vector(3 downto 0);
	signal DQB_O : std_logic_vector(3 downto 0);

begin

	--input negates
	noS <= not S;
	W1 <= not nW1;
	W2 <= not nW2;
	
	--write priority for DQB
	WP(0) <= (not(S(1)) or not(S(3)));
	WP(1) <= (not(noS(1)) or not(S(3)));
	
	--generating write enables
	WE_R1A <= (noS(0) and WP(1) and S(2) and W1);
	WE_R1B <= (noS(1) and S(3) and W1);
	WE_R2A <= (S(0) and WP(0) and S(2) and W2);
	WE_R2B <= (S(1) and S(3) and W2);
	WE1 <= WE_R1A or WE_R1B;
	WE2 <= WE_R2A or WE_R2B;
	
	--data multiplexer before REG
	--870er datasheets is ANDing data and write enable to port
	--not possible in VHDL, therefore extra ANDing for WE Signals
	--this multiplexer is the OR before the REG to ensure the right datapath
	REG1_inp <= DQB when (WE_R1B = '1') else DQA;
	REG2_inp <= DQB when (WE_R2B = '1') else DQA;
	
	--RAM instances
	REGP1: process(WE1, A1, REG1_inp) is
	begin
		if WE1 = '1' then
			REG1(to_integer(unsigned(A1))) <= REG1_inp;
		end if;
	end process REGP1;
	
	REG1_out <= REG1(to_integer(unsigned(A1)));
	
	REGP2: process(WE2, A2, REG2_inp) is
	begin
		if WE2 = '1' then
			REG2(to_integer(unsigned(A2))) <= REG2_inp;
		end if;
	end process REGP2;
	
	REG2_out <= REG2(to_integer(unsigned(A2)));

	--tristate out
	DQA_O <= REG1_out when (noS(0) = '1') else REG2_out;
	DQA <= DQA_O when (noS(2) = '1') else (others => 'Z');
	DQB_O <= REG1_out when (noS(1) = '1') else REG2_out;
	DQB <= DQB_O when (noS(3) = '1') else (others => 'Z');
	
	-- synthesis translate_off
	--spybus
	spygen: for i in 0 to 15 generate
		regspy(i) <= REG2(i);
	end generate spygen;
	-- synthesis translate_on

end Behavioral;

