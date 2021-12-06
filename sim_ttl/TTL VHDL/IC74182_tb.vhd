library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
	Port ( a : in STD_LOGIC;
	b : in STD_LOGIC;
	c : in STD_LOGIC;
	s : out STD_LOGIC;
	co : out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is
begin
	s <= a xor b xor c;
	co <= (a and b) or ((a xor b) and c);
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74182_tb IS
END IC74182_tb;
 
ARCHITECTURE behavior OF IC74182_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74182
    PORT(
         P : IN  std_logic_vector(3 downto 0);
         G : IN  std_logic_vector(3 downto 0);
         Cn : IN  std_logic;
         Po : OUT  std_logic;
         Go : OUT  std_logic;
         Cnz : OUT  std_logic;
         Cny : OUT  std_logic;
         Cnx : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT IC74181
    PORT(
         S : IN  std_logic_vector(3 downto 0);
         M : IN  std_logic;
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         G : OUT  std_logic;
         P : OUT  std_logic;
         C_4 : OUT  std_logic;
         A_equ_B : OUT  std_logic;
         F : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	 component FullAdder is
		Port ( a : in STD_LOGIC;
		b : in STD_LOGIC;
		c : in STD_LOGIC;
		s : out STD_LOGIC;
		co : out STD_LOGIC);
	end component;
    

   --Inputs
   signal P : std_logic_vector(3 downto 0) := (others => '0');
   signal G : std_logic_vector(3 downto 0) := (others => '0');
   signal Cn : std_logic := '0';
	
	signal S : std_logic_vector(3 downto 0) := (others => '0');
   signal M : std_logic := '0';
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal C : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Po : std_logic;
   signal Go : std_logic;
   signal Cnz : std_logic;
   signal Cny : std_logic;
   signal Cnx : std_logic;
 
	signal A_equ_B : std_logic_vector(3 downto 0);
	signal Co : std_logic_vector(3 downto 0);
   signal F : std_logic_vector(15 downto 0);
	
	signal ci : std_logic := '0';
	signal coo : std_logic;
	--fulladder carrychain
	signal cii : std_logic_vector(16 downto 0) := (others => '0');
	signal B_int : std_logic_vector(15 downto 0) := (others => '0');
	signal F_int : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74182 PORT MAP (
          P => P,
          G => G,
          Cn => Cn,
          Po => Po,
          Go => Go,
          Cnz => Cnz,
          Cny => Cny,
          Cnx => Cnx
        );

   --generate 181er
	GEN_add: for i in 0 to 3 generate
		gadd : IC74181 port map (S=>S, M=>M, A=>A((i*4)+3 downto i*4), B=>B((i*4)+3 downto i*4), C=>C(i), G=>G(i), P=>P(i), C_4=>Co(i), A_equ_B=>A_equ_B(i), F=>F((i*4)+3 downto i*4));
	end generate GEN_add;
	
	--wiring 181er with 182 and outer world (nagting carrys)
	Cn <= not Ci;
	C(0) <= not Ci;
	C(1) <= Cnx;
	C(2) <= Cny;
	C(3) <= Cnz;
	coo <= not co(3);
	
	--intern testadder
	B_int <= B when (S(3) = '1') else not B;
	cii(0) <= Ci;
	GEN_CNT: for i in 0 to 15 generate
		CNT : FullAdder port map (a=>A(i), b=>B_int(i), c=>cii(i), s=>F_int(i),co=>cii(i+1));
	end generate GEN_CNT;

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		
		--simulating add/sub carry/no carry with 1 bit active at a time
		report "Testing add/sub carry/no carry with 1 bit active at a time" severity note;
		report "Testing Carry Propagate (Add)" severity note;
		M <= '0';
		S <= "1001";
		Ci <= '0';
		for i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(2**i, 16));
			B <= std_logic_vector(to_unsigned(2**i, 16));
			wait for 50 ns;
			if coo&F /= cii(16)&F_int then
				report "Adder Failed!" severity error;
			end if;
		end loop;
		
		report "Testing Carry Propagate (Add, Carry)" severity note;
		M <= '0';
		S <= "1001";
		Ci <= '1';
		for i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(2**i, 16));
			B <= std_logic_vector(to_unsigned(2**i, 16));
			wait for 50 ns;
			if coo&F /= cii(16)&F_int then
				report "Adder Failed!" severity error;
			end if;
		end loop;
		
		report "Testing Carry Propagate (Sub)" severity note;
		M <= '0';
		S <= "0110";
		Ci <= '1';
		for i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(2**i, 16));
			B <= std_logic_vector(to_unsigned(2**i, 16));
			wait for 50 ns;
			if coo&F /= cii(16)&F_int then
				report "Subber Failed!" severity error;
			end if;
		end loop;
		
		report "Testing Carry Propagate (Sub, Carry)" severity note;
		M <= '0';
		S <= "0110";
		Ci <= '0';
		for i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(2**i, 16));
			B <= std_logic_vector(to_unsigned(2**i, 16));
			wait for 50 ns;
			if coo&F /= cii(16)&F_int then
				report "Subber Failed!" severity error;
			end if;
		end loop;
		
		--simulating add/sub carry/no carry with a speciefied number of LSB active at a time
		report "Testing add/sub carry/no carry with a speciefied number of LSB active at a time" severity note;
		report "Testing Carry Propagate (Add)" severity note;
		M <= '0';
		S <= "1001";
		Ci <= '0';
		for i in 1 to 16 loop
			A <= std_logic_vector(to_unsigned((2**i)-1, 16));
			B <= std_logic_vector(to_unsigned((2**i)-1, 16));
			wait for 50 ns;
			if coo&F /= cii(16)&F_int then
				report "Adder Failed!" severity error;
			end if;
		end loop;
		
		report "Testing Carry Propagate (Add, Carry)" severity note;
		M <= '0';
		S <= "1001";
		Ci <= '1';
		for i in 1 to 16 loop
			A <= std_logic_vector(to_unsigned((2**i)-1, 16));
			B <= std_logic_vector(to_unsigned((2**i)-1, 16));
			wait for 50 ns;
			if coo&F /= cii(16)&F_int then
				report "Adder Failed!" severity error;
			end if;
		end loop;
		
		report "Testing Carry Propagate (Sub)" severity note;
		M <= '0';
		S <= "0110";
		Ci <= '1';
		for i in 1 to 16 loop
			A <= std_logic_vector(to_unsigned((2**i)-1, 16));
			B <= std_logic_vector(to_unsigned((2**i)-1, 16));
			wait for 50 ns;
			if coo&F /= cii(16)&F_int then
				report "Subber Failed!" severity error;
			end if;
		end loop;
		
		report "Testing Carry Propagate (Sub, Carry)" severity note;
		M <= '0';
		S <= "0110";
		Ci <= '0';
		for i in 1 to 16 loop
			A <= std_logic_vector(to_unsigned((2**i)-1, 16));
			B <= std_logic_vector(to_unsigned((2**i)-1, 16));
			wait for 50 ns;
			if coo&F /= cii(16)&F_int then
				report "Subber Failed!" severity error;
			end if;
		end loop;
		
		assert false report "end of simulation" severity failure;
		wait;

		--just because we can, simulate all 16x16 bits!
		--5 hours at i5-2500k with 3,5ghz
		report "Testing Adder" severity note;
		M <= '0';
		S <= "1001";
		Ci <= '0';
		for a_i in 0 to 65535 loop
			A <= std_logic_vector(to_unsigned(a_i, 16));
			for b_i in 0 to 65535 loop
				B <= std_logic_vector(to_unsigned(b_i, 16));
				wait for 50 ns;
				if coo&F /= std_logic_vector(to_unsigned(a_i+b_i, 17)) then
					report "Adder Failed!" severity error;
				end if;
			end loop;
		end loop;

   assert false report "end of simulation" severity failure;
	wait;
   end process;

END;
