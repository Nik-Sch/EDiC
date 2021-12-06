library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74257_OUT is
	 generic ( width : integer := 4 );
    Port ( I0 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           Z : out  STD_LOGIC_VECTOR (width-1 downto 0);
           S : in  STD_LOGIC;
           nOE : in  STD_LOGIC);
end IC74257_OUT;

architecture Behavioral of IC74257_OUT is

	signal Z_int : STD_LOGIC_VECTOR (width-1 downto 0);

begin

	--multiplex
	Z_int <= I0 when (S = '0') else I1;

	--tristate
	--Z <= Z_int when (nOE = '0') else (others => 'Z');
	
	Z <= Z_int;
	
end Behavioral;

