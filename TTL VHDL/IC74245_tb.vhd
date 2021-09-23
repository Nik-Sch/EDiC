LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74245_tb IS
END IC74245_tb;
 
ARCHITECTURE behavior OF IC74245_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74245
    PORT(
         A : INOUT  std_logic_vector(7 downto 0);
         B : INOUT  std_logic_vector(7 downto 0);
         DIR : IN  std_logic;
         nOE : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DIR : std_logic := '0';
   signal nOE : std_logic := '1';

	--BiDirs
   signal A : std_logic_vector(7 downto 0);
   signal B : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74245 PORT MAP (
          A => A,
          B => B,
          DIR => DIR,
          nOE => nOE
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.
		A <= "ZZZZZZZZ";
		B <= "ZZZZZZZZ";
      wait for 10 ns;	
		
		A <= "00000001";
		wait for 10 ns;
		
		DIR <= '1';
		nOE <= '0';
		wait for 10 ns;
		
		A <= "ZZZZZZZZ";
		DIR <= '0';
		nOE <= '1';
      wait for 10 ns;
		
		B <= "00000011";
		wait for 10 ns;
		
		nOE <= '0';
		wait for 10 ns;


      assert false report "end of simulation" severity failure;
		wait;
   end process;

END;
