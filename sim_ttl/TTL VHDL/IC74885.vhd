library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IC74885 is
    Port ( P : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : in  STD_LOGIC_VECTOR (7 downto 0);
           I_P_gr_Q : in  STD_LOGIC;
           I_P_ls_Q : in  STD_LOGIC;
           L_nA : in  STD_LOGIC;
           PLE : in  STD_LOGIC;
           O_P_gr_Q : out  STD_LOGIC;
           O_P_ls_Q : out  STD_LOGIC);
end IC74885;

architecture Behavioral of IC74885 is

	--latched signals
	signal  P_L : std_logic_vector (7 downto 0);
	signal nP_L : std_logic_vector (7 downto 0);
	
	signal nQ : std_logic_vector (7 downto 0);
	
	signal P_equ_Q : std_logic_vector (7 downto 0);
	
	signal MSB_v : std_logic_vector (7 downto 0);
	signal MSB4  : std_logic;
	
	signal P_gr_Q : std_logic_vector (9 downto 0);
	signal P_ls_Q : std_logic_vector (9 downto 0);

begin

	--latch
	latch: process(PLE, P)
	begin
		if PLE = '1' then
			P_L <= P;
			nP_L <= not P;
		end if;
	end process;

	nQ <= not Q;
	
	--xor for peasants
	P_equ_Q <= not((nP_L and Q) or (P_L and nQ));
	
	MSB_v(0) <= (nP_L(4) and  Q(4));
	MSB_v(1) <= ( P_L(4) and nQ(4));
	MSB_v(2) <= (nP_L(5) and  Q(5));
	MSB_v(3) <= ( P_L(5) and nQ(5));
	MSB_v(4) <= (nP_L(6) and  Q(6));
	MSB_v(5) <= ( P_L(6) and nQ(6));
	MSB_v(6) <= (nP_L(7) and  Q(7));
	MSB_v(7) <= ( P_L(7) and nQ(7)); --maybe wrong (or just in the datasheetcircuit)
	--NORing
	MSB4 <= '1' when (MSB_v = "00000000") else '0';
	
	P_gr_Q(0) <= (I_P_gr_Q and P_equ_Q(0) and P_equ_Q(1) and P_equ_Q(2) and P_equ_Q(3) and MSB4);
	P_gr_Q(1) <= (P_equ_Q(1) and P_equ_Q(2) and P_equ_Q(3) and MSB4 and P_L(0) and nQ(0));
	P_gr_Q(2) <= (P_equ_Q(2) and P_equ_Q(3) and MSB4 and nQ(1) and P_L(1));
	P_gr_Q(3) <= (MSB4 and P_equ_Q(3) and nQ(2) and P_L(2));
	P_gr_Q(4) <= (MSB4 and nQ(3) and P_L(3));
	P_gr_Q(5) <= (P_equ_Q(5) and P_equ_Q(6) and P_equ_Q(7) and nQ(4) and P_L(4));
	P_gr_Q(6) <= (P_equ_Q(6) and P_equ_Q(7) and nQ(5) and P_L(5));
	P_gr_Q(7) <= (P_equ_Q(7) and nQ(6) and P_L(6));
	P_gr_Q(8) <= (not(L_nA) and Q(7) and nP_L(7));
	P_gr_Q(9) <= (L_nA and nQ(7) and P_L(7));
	--ORing
	O_P_gr_Q <= '0' when (P_gr_Q = "0000000000") else '1';
	
	P_ls_Q(0) <= (I_P_ls_Q and P_equ_Q(0) and P_equ_Q(1) and P_equ_Q(2) and P_equ_Q(3) and MSB4);
	P_ls_Q(1) <= (P_equ_Q(1) and P_equ_Q(2) and P_equ_Q(3) and MSB4 and Q(0) and nP_L(0));
	P_ls_Q(2) <= (P_equ_Q(2) and P_equ_Q(3) and MSB4 and Q(1) and nP_L(1));
	P_ls_Q(3) <= (P_equ_Q(3) and MSB4 and Q(2) and nP_L(2));
	P_ls_Q(4) <= (MSB4 and Q(3) and nP_L(3));
	P_ls_Q(5) <= (P_equ_Q(5) and P_equ_Q(6) and P_equ_Q(7) and Q(4) and nP_L(4));
	P_ls_Q(6) <= (P_equ_Q(6) and P_equ_Q(7) and Q(5) and nP_L(5));
	P_ls_Q(7) <= (P_equ_Q(7) and Q(6) and nP_L(6));
	P_ls_Q(8) <= (L_nA and Q(7) and nP_L(7));
	P_ls_Q(9) <= (not(L_nA) and nQ(7) and P_L(7));
	--ORing
	O_P_ls_Q <= '0' when (P_ls_Q = "0000000000") else '1';

end Behavioral;

