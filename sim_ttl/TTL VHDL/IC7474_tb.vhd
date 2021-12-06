LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC7474_tb IS
END IC7474_tb;
 
ARCHITECTURE behavior OF IC7474_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC7474
    PORT(
         D : IN  std_logic_vector(0 downto 0);
         CP : IN  std_logic;
         Q : OUT  std_logic_vector(0 downto 0);
         nQ : OUT  std_logic_vector(0 downto 0);
         nSet : IN  std_logic;
         nRes : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(0 downto 0) := (others => '0');
   signal CP : std_logic := '0';
   signal nSet : std_logic := '0';
   signal nRes : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(0 downto 0);
   signal nQ : std_logic_vector(0 downto 0);
 
   constant CP_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC7474 PORT MAP (
          D => D,
          CP => CP,
          Q => Q,
          nQ => nQ,
          nSet => nSet,
          nRes => nRes
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
      
		--testing special behavior
      wait for 50 ns;	
		
		--clocking
		wait for CP_period*1;
		nSet <= '1';
		nRes <= '1';
		wait for 50 ns;
		nSet <= '1';
		nRes <= '1';
		D <= "1";
		wait for 50 ns;
		
		--reset
		nRes <= '0';
		wait for 50 ns;
		nRes <= '1';
		D <= "0";
		wait for 10 ns;
		nSet <= '0';

		wait for 50 ns;
		assert false report "end of simulation" severity failure;
      wait;
   end process;

END;
