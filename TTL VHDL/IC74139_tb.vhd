LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74139_tb IS
END IC74139_tb;
 
ARCHITECTURE behavior OF IC74139_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74139
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         nY : OUT  std_logic_vector(3 downto 0);
         nE : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal nE : std_logic := '0';

 	--Outputs
   signal nY : std_logic_vector(3 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74139 PORT MAP (
          A => A,
          nY => nY,
          nE => nE
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
		
		nE <= '0';

		for a_i in 0 to 3 loop
			A <= std_logic_vector(to_unsigned(a_i, 2));
			wait for 50 ns;
		end loop;
		
		nE <= '1';
		wait for 50 ns;


		assert false report "end of simulation" severity failure;
		wait;
   end process;

END;
