--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:31:43 01/31/2015
-- Design Name:   
-- Module Name:   D:/Comparith/mipsing/mipsing/IC74825_tb.vhd
-- Project Name:  mipsing
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IC74825
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY IC74825_tb IS
END IC74825_tb;
 
ARCHITECTURE behavior OF IC74825_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74825
    PORT(
         CP : IN  std_logic;
         nEN : IN  std_logic;
         nOE : IN  std_logic_vector(2 downto 0);
         nCLR : IN  std_logic;
         D : IN  std_logic_vector(7 downto 0);
         O : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CP : std_logic := '0';
   signal nEN1 : std_logic := '1';
	signal nEN2 : std_logic := '1';
   signal nOE1 : std_logic_vector(2 downto 0) := (others => '1');
	signal nOE2 : std_logic_vector(2 downto 0) := (others => '1');
   signal nCLR : std_logic := '0';
   signal D : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(7 downto 0);
 
   constant CP_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut1: IC74825 PORT MAP (
          CP => CP,
          nEN => nEN1,
          nOE => nOE1,
          nCLR => nCLR,
          D => D,
          O => O
        );
	uut2: IC74825 PORT MAP (
          CP => CP,
          nEN => nEN2,
          nOE => nOE2,
          nCLR => nCLR,
          D => D,
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
		nCLR <= '1';

      wait for CP_period*10;

      --inputing signals
		D <= "00001111";
		nEN1 <= '0';
		wait for CP_period*2;
		nEN1 <= '1';
		D <= "11110000";
		nEN2 <= '0';
		wait for CP_period*2;
		nEN2 <= '1';
		D <= "00000000";
		
		--outputing signals
		nOE1 <= "000"; --only uut1 out
		wait for 50 ns;
		nOE1 <= "111";
		nOE2 <= "000"; --only uut2 out
		wait for 50 ns;
		nOE1 <= "000"; --booth uut oout -> XXXX
		wait for 50 ns;
		nOE2 <= "111"; --only uut1 out
		
		--clearing signals
		nCLR <= '0';
		wait for 50 ns;
		nCLR <= '1';
		wait for 50 ns;

      assert false report "end of simulation" severity failure;
		wait;
   end process;

END;
