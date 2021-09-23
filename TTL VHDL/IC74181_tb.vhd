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
 
ENTITY IC74181_tb IS
END IC74181_tb;
 
ARCHITECTURE behavior OF IC74181_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
   signal S : std_logic_vector(3 downto 0) := (others => '0');
   signal M : std_logic := '0';
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';

 	--Outputs
   signal G : std_logic;
   signal P : std_logic;
   signal C_4 : std_logic;
   signal A_equ_B : std_logic;
   signal F : std_logic_vector(3 downto 0);

	signal co : std_logic; -- normalized C_4
	signal coo : std_logic; -- co from internadd
	signal ci : std_logic_vector(4 downto 0);
	signal B_int : std_logic_vector(3 downto 0);
	signal F_int : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74181 PORT MAP (
          S => S,
          M => M,
          A => A,
          B => B,
          C => C,
          G => G,
          P => P,
          C_4 => C_4,
          A_equ_B => A_equ_B,
          F => F
        );
		  
	--Carry in/out invertieren
	co <= not C_4;
	coo <= ci(4);
	C <= not ci(0);
	
	--intern testadder
	GEN_CNT: for i in 0 to 3 generate
		CNT : FullAdder port map (a=>A(i), b=>B_int(i), c=>ci(i), s=>F_int(i),co=>ci(i+1));
	end generate GEN_CNT;
	
	B_int <= B when (S(3) = '1') else not B;


   -- Stimulus process
   stim_proc: process
   begin		
	--positive logic!
		wait for 100 ns;

      --add
		report "Testing Adder" severity note;
		M <= '0';
		S <= "1001";
		ci(0) <= '0';
		for a_i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(a_i, 4));
			for b_i in 0 to 15 loop
				B <= std_logic_vector(to_unsigned(b_i, 4));
				wait for 50 ns;
				if co&F /= coo&F_int then
					report "Adder Failed!" severity error;
				end if;
			end loop;
		end loop;
		
		--sub
		report "Testing Subber" severity note;
		M <= '0';
		S <= "0110";
		ci(0) <= '1'; --(2K)
		for a_i in -8 to 7 loop
			A <= std_logic_vector(to_signed(a_i, 4));
			for b_i in -8 to 7 loop
				B <= std_logic_vector(to_signed(b_i, 4));
				wait for 50 ns;
				if co&F /= coo&F_int then
					report "Subber Failed!" severity error;
				end if;
			end loop;
		end loop;
		
		--and
		report "Testing AND" severity note;
		M <= '1';
		S <= "1011";
		for a_i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(a_i, 4));
			for b_i in 0 to 15 loop
				B <= std_logic_vector(to_unsigned(b_i, 4));
				wait for 50 ns;
				if F /= (A and B) then
					report "AND Failed!" severity error;
				end if;
			end loop;
		end loop;
		
		--or
		report "Testing OR" severity note;
		M <= '1';
		S <= "1110";
		for a_i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(a_i, 4));
			for b_i in 0 to 15 loop
				B <= std_logic_vector(to_unsigned(b_i, 4));
				wait for 50 ns;
				if F /= (A or B) then
					report "OR Failed!" severity error;
				end if;
			end loop;
		end loop;
		
		--xor
		report "Testing XOR" severity note;
		M <= '1';
		S <= "0110";
		for a_i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(a_i, 4));
			for b_i in 0 to 15 loop
				B <= std_logic_vector(to_unsigned(b_i, 4));
				wait for 50 ns;
				if F /= (A xor B) then
					report "XOR Failed!" severity error;
				end if;
			end loop;
		end loop;
		
		--nor
		report "Testing NOR" severity note;
		M <= '1';
		S <= "0001";
		for a_i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(a_i, 4));
			for b_i in 0 to 15 loop
				B <= std_logic_vector(to_unsigned(b_i, 4));
				wait for 50 ns;
				if F /= (not (A or B)) then
					report "NOR Failed!" severity error;
				end if;
			end loop;
		end loop;
		
		assert false report "end of simulation" severity failure;
      wait;
   end process;

END;
