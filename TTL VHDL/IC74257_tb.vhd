LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY IC74257_tb IS
END IC74257_tb;
 
ARCHITECTURE behavior OF IC74257_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74257
    PORT(
         I0 : IN  std_logic_vector(3 downto 0);
         I1 : IN  std_logic_vector(3 downto 0);
         Z : OUT  std_logic_vector(3 downto 0);
         S : IN  std_logic;
         nOE : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic_vector(3 downto 0) := (others => '0');
   signal I1 : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic := '0';
   signal nOE : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74257 PORT MAP (
          I0 => I0,
          I1 => I1,
          Z => Z,
          S => S,
          nOE => nOE
        );

   -- Stimulus process
   stim_proc: process
   begin		
		 wait for 50 ns;
		
      --tristate output
		nOE <= '1';
      wait for 50 ns;	

		--outputting I0
		nOE <= '0';
		I0 <= "0011";
		wait for 50 ns;
		
		--outputting I1
		I1 <= "1100";
		S <= '1';
		nOE <= '0';
		wait for 50 ns;

		assert false report "end of simulation" severity failure;
      wait;
   end process;

END;
