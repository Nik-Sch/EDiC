library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74182 is
    Port ( P : in  STD_LOGIC_VECTOR (3 downto 0);
           G : in  STD_LOGIC_VECTOR (3 downto 0);
           Cn : in  STD_LOGIC;
           Po : out  STD_LOGIC;
           Go : out  STD_LOGIC;
			  Cnz : out  STD_LOGIC;
			  Cny : out  STD_LOGIC;
			  Cnx : out  STD_LOGIC);
end IC74182;

architecture Behavioral of IC74182 is

	--Signal zwischen AND sowie out NOR/OR
	type outt_arr is array (0 to 3) of std_logic_vector(3 downto 0);
	signal outt : outt_arr;

begin

	--Cnx
	outt(0)(0) <= (P(0) and G(0));
	outt(0)(1) <= (G(0) and not(Cn));
	Cnx <= not(outt(0)(0) or outt(0)(1));
	
	--Cny
	outt(1)(0) <= (P(1) and G(1));
	outt(1)(1) <= (G(0) and G(1) and P(0));
	outt(1)(2) <= (G(0) and G(1) and not(Cn));
	Cny <= not(outt(1)(0) or outt(1)(1) or outt(1)(2));
	
	--Cnz
	outt(2)(0) <= (P(2) and G(2));
	outt(2)(1) <= (G(1) and G(2) and P(1));
	outt(2)(2) <= (G(0) and G(1) and G(2) and P(0));
	outt(2)(3) <= (G(0) and G(1) and G(2) and not(Cn));
	Cnz <= not(outt(2)(0) or outt(2)(1) or outt(2)(2) or outt(2)(3));
	
	--G
	outt(3)(0) <= (P(3) and G(3));
	outt(3)(1) <= (G(2) and G(3) and P(2));
	outt(3)(2) <= (G(1) and G(2) and G(3) and P(1));
	outt(3)(3) <= (G(0) and G(1) and G(2) and G(3));
	Go <= (outt(3)(0) or outt(3)(1) or outt(3)(2) or outt(3)(3));
	
	--P
	Po <= (P(0) or P(1) or P(2) or P(3));

end Behavioral;

