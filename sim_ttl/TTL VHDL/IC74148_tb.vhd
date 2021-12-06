LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74148_tb IS
END IC74148_tb;
 
ARCHITECTURE behavior OF IC74148_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74148
    PORT(
         I : IN  std_logic_vector(7 downto 0);
         EI : IN  std_logic;
         A : OUT  std_logic_vector(2 downto 0);
         EO : OUT  std_logic;
         GS : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(7 downto 0) := (others => '0');
   signal EI : std_logic := '0';

 	--Outputs
   signal A : std_logic_vector(2 downto 0);
   signal EO : std_logic;
   signal GS : std_logic;
	
	signal number : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74148 PORT MAP (
          I => I,
          EI => EI,
          A => A,
          EO => EO,
          GS => GS
        );
		  
	--test prioencoder
	enc: process(I)
	begin
		number <= "111";
		for j in 0 to 7 loop
			if (I(j) = '0') then
				number <= not std_logic_vector(to_unsigned(j, 3));
			end if;
		end loop;
	end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	
		report "Testing EI = H" severity note;
		EI <= '1';
		wait for 50 ns;
		if A /= "111" or GS /= '1' or EO /= '1' then
			report "Failed!" severity error;
		end if;
		
		report "Testing EI = L and I = 255" severity note;
		EI <= '0';
		I <= "11111111";
		wait for 50 ns;
		if A /= "111" or GS /= '1' or EO /= '0' then
			report "Failed!" severity error;
		end if;
		
		report "Testing Encoding" severity note;
		for i_i in 0 to 254 loop
			I <= std_logic_vector(to_unsigned(i_i, 8));
			wait for 50 ns;
			if A /= number then
				report "Encoding Failed!" severity error;
			end if;
			if GS /= '0' or EO /= '1' then
				report "Status Failed!" severity error;
			end if;
		end loop;
		
		assert false report "end of simulation" severity failure;
      wait;
   end process;

END;
