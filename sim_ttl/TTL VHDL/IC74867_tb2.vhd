LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74867_tb2 IS
END IC74867_tb2;
 
ARCHITECTURE behavior OF IC74867_tb2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74867
    PORT(
         Q_in : IN  std_logic_vector(7 downto 0);
         Q_out : OUT  std_logic_vector(7 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         nENT : IN  std_logic;
         nENP : IN  std_logic;
         nRCO : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Q_in : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal nENT : std_logic := '0';
   signal nENP : std_logic := '0';

 	--Outputs
   signal Q_out : std_logic_vector(15 downto 0);
   signal nRCO0 : std_logic;
	signal nRCO1 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut0: IC74867 PORT MAP (
          Q_in => Q_in(7 downto 0),
          Q_out => Q_out(7 downto 0),
          S => S,
          clk => clk,
          nENT => nENT,
          nENP => nENP,
          nRCO => nRCO0
        );
		  
	-- Instantiate the Unit Under Test (UUT)
   uut1: IC74867 PORT MAP (
          Q_in => Q_in(15 downto 8),
          Q_out => Q_out(15 downto 8),
          S => S,
          clk => clk,
          nENT => nRCO0,
          nENP => nENP,
          nRCO => nRCO1
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

		--countup
      S <= "11";
		wait for clk_period*70000;
		
		--reset
		S <= "00";
		wait for clk_period*2;
		
		--countdown
		S <= "01";
		wait for clk_period*70000;
		
		--load
		S <= "10";
		Q_in <= "1111000000001111";
		wait for clk_period*10;

      assert false report "end of simulation" severity failure;
		wait;
   end process;

END;
