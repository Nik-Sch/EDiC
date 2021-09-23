LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74154_tb IS
END IC74154_tb;
 
ARCHITECTURE behavior OF IC74154_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74154
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         nE : IN  std_logic_vector(1 downto 0);
         nQ : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal nE : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal nQ : std_logic_vector(15 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74154 PORT MAP (
          A => A,
          nE => nE,
          nQ => nQ
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	

		for a_i in 0 to 15 loop
			A <= std_logic_vector(to_unsigned(a_i, 4));
			wait for 50 ns;
		end loop;
		
		nE <= "11";
		wait for 50 ns;
		
		assert false report "end of simulation" severity failure;
      wait;
   end process;

END;
