library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74181 is
	Port(
		--Modusbits
		S : in std_logic_vector (3 downto 0);
		--Modebit arith/logic
		M : in std_logic;
		--inputs
		A : in std_logic_vector (3 downto 0);
		B : in std_logic_vector (3 downto 0);
		C : in std_logic;
		--group CLA out
		G : out std_logic;
		P : out std_logic;
		--stats out
		C_4 : out std_logic;
		A_equ_B : out std_logic; --noch kein tristate!!!
		--outputs
		F : out std_logic_vector(3 downto 0)
	);
end IC74181;

architecture Behavioral of IC74181 is

	--Signal zwischen mode AND und mode NOR
	type mode_arr is array (0 to 3) of std_logic_vector(4 downto 0);
	signal mode : mode_arr;

	--Signal zwischen Mode Eingangsstufe und CLA
	type cla_arr is array (0 to 3) of std_logic_vector(1 downto 0);
	signal cla : cla_arr;
	
	--Signal zwischen CLA UND sowie CLA NOR/XOR
	type outt_arr is array (0 to 4) of std_logic_vector(5 downto 0);
	signal outt : outt_arr;
	
	--Signale für das CLA NOR
	signal outt1 : std_logic;
	signal outt2 : std_logic;
	signal outt3 : std_logic;
	
	--internes Ausgangssignal (readback)
	signal G_int : std_logic;
	signal F_int : std_logic_vector(3 downto 0);
	signal A_equ_B_int : std_logic;

begin

	--Eingänge (Moduswahl)
	gen_mode: for i in 0 to 3 generate
		--AND Stufe
      mode(i)(0) <= A(i);
		mode(i)(1) <= B(i) and S(0);
		mode(i)(2) <= (not B(i)) and S(1);
		mode(i)(3) <= (not B(i)) and S(2) and A(i);
		mode(i)(4) <= A(i) and S(3) and B(i);
		--NOR Stufe
		cla(i)(0) <= not(mode(i)(0) or mode(i)(1) or mode(i)(2));
		cla(i)(1) <= not(mode(i)(3) or mode(i)(4));
   end generate gen_mode;
	
	--CLA Stufe F0
	outt(0)(0) <= not((not M) and C);
	outt(0)(1) <= cla(0)(0) xor cla(0)(1);
	F_int(0) <= outt(0)(0) xor outt(0)(1);
	
	--CLA Stufe F1
	outt(1)(0) <= (not M) and cla(0)(0);
	outt(1)(1) <= (not M) and cla(0)(1) and C;
	outt(1)(2) <= cla(1)(0) xor cla(1)(1);
	outt1 <= not(outt(1)(0) or outt(1)(1));
	F_int(1) <= outt1 xor outt(1)(2);
	
	--CLA Stufe F2
	outt(2)(0) <= (not M) and cla(1)(0);
	outt(2)(1) <= (not M) and cla(0)(0) and cla(1)(1);
	outt(2)(2) <= (not M) and cla(1)(1) and cla(0)(1) and C;
	outt(2)(3) <= cla(2)(0) xor cla(2)(1);
	outt2 <= not(outt(2)(0) or outt(2)(1) or outt(2)(2));
	F_int(2) <= outt2 xor outt(2)(3);
	
	--CLA Stufe F3
	outt(3)(0) <= (not M) and cla(2)(0);
	outt(3)(1) <= (not M) and cla(1)(0) and cla(2)(1);
	outt(3)(2) <= (not M) and cla(0)(0) and cla(2)(1) and cla(1)(1);
	outt(3)(3) <= (not M) and cla(2)(1) and cla(1)(1) and cla(0)(1) and C;
	outt(3)(4) <= cla(3)(0) xor cla(3)(1);
	outt3 <= not(outt(3)(0) or outt(3)(1) or outt(3)(2) or outt(3)(3));
	F_int(3) <= outt3 xor outt(3)(4);
	
	--CLA Stufe PGC
	outt(4)(0) <= not(cla(0)(1) and cla(1)(1) and cla(2)(1) and cla(3)(1));
	outt(4)(1) <= not(C and cla(0)(1) and cla(1)(1) and cla(2)(1) and cla(3)(1));
	outt(4)(2) <= cla(0)(0) and cla(1)(1) and cla(2)(1) and cla(3)(1);
	outt(4)(3) <= cla(1)(0) and cla(2)(1) and cla(3)(1);
	outt(4)(4) <= cla(2)(0) and cla(3)(1);
	outt(4)(5) <= cla(3)(0);
	G_int <= not(outt(4)(2) or outt(4)(3) or outt(4)(4) or outt(4)(5));
	
	G <= G_int;
	P <= outt(4)(0);
	C_4 <= (not outt(4)(1)) or (not G_int);
	A_equ_B_int <= F_int(0) and F_int(1) and F_int(2) and F_int(3);
	F <= F_int;
	
	--tristate (open collector)
	A_equ_B <= 'Z' when (A_equ_B_int = '1') else '0';

end Behavioral;

