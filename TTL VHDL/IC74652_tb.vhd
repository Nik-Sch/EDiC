LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY IC74652_tb IS
END IC74652_tb;
 
ARCHITECTURE behavior OF IC74652_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74652
    PORT(
         A : INOUT  std_logic_vector(7 downto 0);
         B : INOUT  std_logic_vector(7 downto 0);
         nOE_BA : IN  std_logic;
         S_BA : IN  std_logic;
         CP_BA : IN  std_logic;
         OE_AB : IN  std_logic;
         S_AB : IN  std_logic;
         CP_AB : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal nOE_BA : std_logic := '0';
   signal S_BA : std_logic := '0';
   signal OE_AB : std_logic := '0';
   signal S_AB : std_logic := '0';
	--BiDirs
   signal A : std_logic_vector(7 downto 0);
   signal B : std_logic_vector(7 downto 0);
  
   signal clk : std_logic;
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74652 PORT MAP (
          A => A,
          B => B,
          nOE_BA => nOE_BA,
          S_BA => S_BA,
          CP_BA => clk,
          OE_AB => OE_AB,
          S_AB => S_AB,
          CP_AB => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
 
      wait for 10 ns;	
		
		--testing booth outputs at tristate/input
		OE_AB  <= '0';
		nOE_BA <= '1';
		A <= "ZZZZZZZZ";
		B <= "ZZZZZZZZ";
		wait for 50 ns;
		
		--from a to b directly
		OE_AB  <= '1';
		nOE_BA <= '1';
		A <= "01110000";
		B <= "ZZZZZZZZ";
		wait for 50 ns;
		
		--from b to a directly
		OE_AB  <= '0';
		nOE_BA <= '0';
		B <= "00001110";
		A <= "ZZZZZZZZ";
		wait for 50 ns;
		
		--from b to a clocked
		OE_AB  <= '0';
		nOE_BA <= '0';
		S_BA <= '1';
		S_AB <= '1';
		B <= "10001111";
		A <= "ZZZZZZZZ";
		wait for 50 ns;
		
		--from a to b clocked
		OE_AB  <= '1';
		nOE_BA <= '1';
		S_BA <= '1';
		S_AB <= '1';
		A <= "11110001";
		B <= "ZZZZZZZZ";
		wait for 50 ns;
		
		--Stored A Data to B Bus and Stored B Data to A Bus
		OE_AB  <= '1';
		nOE_BA <= '0';
		S_BA <= '1';
		S_AB <= '1';
		A <= "ZZZZZZZZ";
		B <= "ZZZZZZZZ";
		wait for 50 ns;

      wait for clk_period*10;

      -- insert stimulus here 

		assert false report "end of simulation" severity failure;
      wait;
   end process;

END;
