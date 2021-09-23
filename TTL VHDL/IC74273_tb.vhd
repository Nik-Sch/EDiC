LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74273_tb IS
END IC74273_tb;
 
ARCHITECTURE behavior OF IC74273_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74273
    PORT(
         D : IN  std_logic_vector(7 downto 0);
         Q : OUT  std_logic_vector(7 downto 0);
         CP : IN  std_logic;
         nMR : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(7 downto 0) := (others => '0');
   signal CP : std_logic := '0';
   signal nMR : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(7 downto 0);
 
   constant CP_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74273 PORT MAP (
          D => D,
          Q => Q,
          CP => CP,
          nMR => nMR
        );

   -- Clock process definitions
   CP_process :process
   begin
		CP <= '0';
		wait for CP_period/2;
		CP <= '1';
		wait for CP_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		nMR <= '1';
		D <= "11110001";
      wait for CP_period*2;
		
		nMR <= '0';
		wait for CP_period*5;

      -- insert stimulus here 

      assert false report "end of simulation" severity failure;
		wait;
   end process;

END;
