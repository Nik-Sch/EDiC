LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY IC74374_tb IS
END IC74374_tb;
 
ARCHITECTURE behavior OF IC74374_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74374
    PORT(
         CP : IN  std_logic;
         nOE : IN  std_logic;
         D : IN  std_logic_vector(7 downto 0);
         O : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CP : std_logic := '0';
   signal nOE1 : std_logic := '1';
	signal nOE2 : std_logic := '1';
   signal D1 : std_logic_vector(7 downto 0) := (others => '0');
   signal D2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(7 downto 0);
 
   constant CP_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut1: IC74374 PORT MAP (
          CP => CP,
          nOE => nOE1,
          D => D1,
          O => O
        );
	uut2: IC74374 PORT MAP (
          CP => CP,
          nOE => nOE2,
          D => D2,
          O => O
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
      wait for 100 ns;	

      wait for CP_period*10;

      --inputing signals
		D1 <= "00001111";
		wait for CP_period*2;
		D2 <= "11110000";
		wait for CP_period*2;
		
		--outputing signals
		nOE1 <= '0'; --only uut1 out
		wait for 50 ns;
		nOE1 <= '1';
		nOE2 <= '0'; --only uut2 out
		wait for 50 ns;
		nOE1 <= '0'; --booth uut oout -> XXXX
		wait for 50 ns;
		nOE2 <= '1'; --only uut1 out
		
		D1 <= "00000000";
		wait for CP_period*2;
		D2 <= "00000000";
		wait for CP_period*2;
		

      assert false report "end of simulation" severity failure;
		wait;
   end process;

END;
