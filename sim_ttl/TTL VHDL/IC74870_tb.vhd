LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.spy_reg_t.all;
 
ENTITY IC7480_tb IS
END IC7480_tb;
 
ARCHITECTURE behavior OF IC7480_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74870
    PORT(
         A1 : IN  std_logic_vector(3 downto 0);
         A2 : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(3 downto 0);
         nW1 : IN  std_logic;
         nW2 : IN  std_logic;
         DQA : INOUT  std_logic_vector(3 downto 0);
         DQB : INOUT  std_logic_vector(3 downto 0);
			regspy : out spy_ic
        );
    END COMPONENT;
    

   --Inputs
   signal A1 : std_logic_vector(3 downto 0) := (others => '0');
   signal A2 : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(3 downto 0) := (others => '0');
   signal nW1 : std_logic := '0';
   signal nW2 : std_logic := '0';

	--BiDirs
   signal DQA : std_logic_vector(3 downto 0);
   signal DQB : std_logic_vector(3 downto 0);
	
	signal regspy : spy_ic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74870 PORT MAP (
          A1 => A1,
          A2 => A2,
          S => S,
          nW1 => nW1,
          nW2 => nW2,
          DQA => DQA,
          DQB => DQB,
			 regspy => regspy
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	

		--writing both Registers
		--(simulating spaceage 2 Registerwrite)
		S <= "1110";
		nW1 <= '0';
		nW2 <= '0';
		for a_i in 0 to 15 loop
			A1 <= std_logic_vector(to_unsigned(a_i, 4));
			A2 <= std_logic_vector(to_unsigned(a_i, 4));
			DQA <= std_logic_vector(to_unsigned(a_i, 4));
			DQB <= std_logic_vector(to_unsigned(a_i, 4));
			wait for 50 ns;
		end loop;
		
		--reading both ports independent
		S <= "0010";
		nW1 <= '1';
		nW2 <= '1';
		wait for 10 ns;
		for a_i in 0 to 15 loop
			A1 <= std_logic_vector(to_unsigned(a_i, 4));
			A2 <= std_logic_vector(to_unsigned(15-a_i, 4));
			DQA <= "ZZZZ";
			DQB <= "ZZZZ";
			wait for 50 ns;
		end loop;
		
		assert false report "end of simulation" severity failure;
      wait;
   end process;

END;
