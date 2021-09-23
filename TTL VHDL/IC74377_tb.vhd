LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74377_tb IS
END IC74377_tb;
 
ARCHITECTURE behavior OF IC74377_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74377
    PORT(
         D : IN  std_logic_vector(7 downto 0);
         Q : OUT  std_logic_vector(7 downto 0);
         nE : IN  std_logic;
         CP : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(7 downto 0) := (others => '0');
   signal nE : std_logic := '0';
   signal CP : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(7 downto 0);
 
   constant CP_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74377 PORT MAP (
          D => D,
          Q => Q,
          nE => nE,
          CP => CP
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
		
		D <= "10101010";
      wait for CP_period*2;
		
		D <= "00000000";
		nE <= '1';
      wait for CP_period*2;
		
		nE <= '0';
      wait for CP_period*2;


      assert false report "end of simulation" severity failure;
		wait;
   end process;

END;
