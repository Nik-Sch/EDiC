library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74148 is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           EI : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (2 downto 0);
           EO : out  STD_LOGIC;
           GS : out  STD_LOGIC);
end IC74148;

architecture Behavioral of IC74148 is

	--Signal zwischen CLA UND sowie CLA NOR/XOR
	type outt_arr is array (0 to 4) of std_logic_vector(3 downto 0);
	signal outt : outt_arr;
	
	signal nei : std_logic;
	signal EO_z : std_logic_vector(1 downto 0);
	signal EO_int : std_logic;

begin

	nei <= not EI;

	--A2
	outt(0)(0) <= not(nei and not(I(7)));
	outt(0)(1) <= not(nei and not(I(6)));
	outt(0)(2) <= not(nei and not(I(5)));
	outt(0)(3) <= not(nei and not(I(4)));
	A(2) <= (outt(0)(0) and outt(0)(1) and outt(0)(2) and outt(0)(3));

	--A1
	outt(1)(0) <= not(nei and not(I(7)));
	outt(1)(1) <= not(nei and not(I(6)));
	outt(1)(2) <= not(nei and I(5) and I(4) and not(I(3)));
	outt(1)(3) <= not(nei and I(5) and I(4) and not(I(2)));
	A(1) <= (outt(1)(0) and outt(1)(1) and outt(1)(2) and outt(1)(3));
	
	--A0
	outt(2)(0) <= not(nei and not(I(7)));
	outt(2)(1) <= not(nei and I(6) and not(I(5)));
	outt(2)(2) <= not(nei and I(6) and I(4) and not(I(3)));
	outt(2)(3) <= not(nei and I(6) and I(4) and I(2) and not(I(1)));	
	A(0) <= (outt(2)(0) and outt(2)(1) and outt(2)(2) and outt(2)(3));
	
	--EO
	outt(3)(0) <= not(I(7) and I(6));
	outt(3)(1) <= not(I(5) and I(4));
	outt(3)(2) <= not(I(3) and I(2));
	outt(3)(3) <= not(I(1) and I(0));
	EO_z(0) <= not(outt(3)(0) or outt(3)(1));
	EO_z(1) <= not(outt(3)(2) or outt(3)(3));
	EO_int <= not(EO_z(0) and EO_z(1) and nei);
	EO <= EO_int;
	
	--GS
	GS <= not(EO_int and nei);

end Behavioral;

