LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74540_tb IS
END IC74540_tb;
 
ARCHITECTURE behavior OF IC74540_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74540
    PORT(
         D : IN  std_logic_vector(7 downto 0);
         nY : OUT  std_logic_vector(7 downto 0);
         nOE_A : IN  std_logic;
         nOE_B : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic_vector(7 downto 0) := (others => '0');
   signal nOE_A0 : std_logic := '1';
   signal nOE_B0 : std_logic := '0';
	signal D1 : std_logic_vector(7 downto 0) := (others => '0');
   signal nOE_A1 : std_logic := '1';
   signal nOE_B1 : std_logic := '0';

 	--Outputs
   signal nY : std_logic_vector(7 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut0: IC74540 PORT MAP (
          D => D0,
          nY => nY,
          nOE_A => nOE_A0,
          nOE_B => nOE_B0
        );
	uut1: IC74540 PORT MAP (
          D => D1,
          nY => nY,
          nOE_A => nOE_A1,
          nOE_B => nOE_B1
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	

		D0 <= "00001111";
		nOE_A0 <= '0';
		wait for 10 ns;
		
		D0 <= "00001110";
		wait for 10 ns;
		
		D1 <= "11110000";
		nOE_A1 <= '0';
		nOE_A0 <= '1';
		wait for 10 ns;
		
		D1 <= "01110000";
		wait for 10 ns;
		
		nOE_A1 <= '1';
		wait for 10 ns;

      assert false report "end of simulation" severity failure;
		wait;
   end process;

END;
