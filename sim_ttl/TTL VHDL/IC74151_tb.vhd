LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74151_tb IS
END IC74151_tb;
 
ARCHITECTURE behavior OF IC74151_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74151
    PORT(
         I : IN  std_logic_vector(7 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         nE : IN  std_logic;
         Y : OUT  std_logic;
         nY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(7 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');
   signal nE : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
   signal nY : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74151 PORT MAP (
          I => I,
          S => S,
          nE => nE,
          Y => Y,
          nY => nY
        );
 

   -- Stimulus process
   stim_proc: process
		variable I_int : std_logic_vector(7 downto 0);
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		I <= "01010101";
		nE <= '1';
		wait for 50 ns;	
		nE <= '0';
		wait for 50 ns;
		
		report "Testing Multiplexer" severity note;	
		for i_i in 0 to 255 loop
			I <= std_logic_vector(to_unsigned(i_i, 8));
			I_int := std_logic_vector(to_unsigned(i_i, 8));
			for s_i in 0 to 7 loop
				S <= std_logic_vector(to_unsigned(s_i, 3));
				wait for 50 ns;
				if Y /= I_int(s_i) then
					report "Multiplexer Failed!" severity error;
				end if;
				if nY /= not(I_int(s_i)) then
					report "Multiplexer Failed!" severity error;
				end if;
			end loop;
		end loop;

      assert false report "end of simulation" severity failure;
      wait;
   end process;

END;
