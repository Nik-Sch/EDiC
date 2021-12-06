library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74652 is
	 generic ( width : integer := 8 );
    Port ( A : inout  STD_LOGIC_VECTOR (width-1 downto 0);
           B : inout  STD_LOGIC_VECTOR (width-1 downto 0);
           nOE_BA : in  STD_LOGIC;
           S_BA : in  STD_LOGIC;
           CP_BA : in  STD_LOGIC;
           OE_AB : in  STD_LOGIC;
           S_AB : in  STD_LOGIC;
           CP_AB : in  STD_LOGIC);
end IC74652;

architecture Behavioral of IC74652 is

	signal A_int : std_logic_vector(width-1 downto 0);
	signal B_int : std_logic_vector(width-1 downto 0);
	signal A_mux : std_logic_vector(width-1 downto 0);
	signal B_mux : std_logic_vector(width-1 downto 0);

begin

	--Path AB-------------------------------------------------------------
	
	reg_ab: process(CP_AB)
	begin
	if CP_AB'event and CP_AB = '1' then
			A_int <= A;
		end if;
	end process;
	
	--MUX
	A_mux <= A_int when (S_AB = '1') else A;
	
	--tristate
	B <= A_mux when (OE_AB = '1') else (others => 'Z');
	
	--Path BA-------------------------------------------------------------
	
	reg_ba: process(CP_BA)
	begin
	if CP_BA'event and CP_BA = '1' then
			B_int <= B;
		end if;
	end process;
	
	--MUX
	B_mux <= B_int when (S_BA = '1') else B;
	
	--tristate
	A <= B_mux when (nOE_BA = '0') else (others => 'Z');

end Behavioral;

