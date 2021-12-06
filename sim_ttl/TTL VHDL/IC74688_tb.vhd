LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74688_tb IS
END IC74688_tb;
 
ARCHITECTURE behavior OF IC74688_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74688
    PORT(
         P : IN  std_logic_vector(7 downto 0);
         Q : IN  std_logic_vector(7 downto 0);
         nG : IN  std_logic;
         nP_equ_Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal P : std_logic_vector(7 downto 0) := (others => '0');
   signal Q : std_logic_vector(7 downto 0) := (others => '0');
   signal nG : std_logic := '0';

 	--Outputs
   signal nP_equ_Q : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74688 PORT MAP (
          P => P,
          Q => Q,
          nG => nG,
          nP_equ_Q => nP_equ_Q
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;		

      report "Testing Comparator" severity note;
		for p_i in 0 to 255 loop
			P <= std_logic_vector(to_unsigned(p_i, 8));
			for q_i in 0 to 255 loop
				Q <= std_logic_vector(to_unsigned(q_i, 8));
				wait for 50 ns;
				if (std_logic_vector(to_unsigned(p_i, 8)) /= std_logic_vector(to_unsigned(q_i, 8))) and (nP_equ_Q = '0') then
					report "Comparator Failed!" severity error;
				end if;
				if (std_logic_vector(to_unsigned(p_i, 8)) = std_logic_vector(to_unsigned(q_i, 8))) and (nP_equ_Q = '0') then
					report "Comparator success!" severity error;
				end if;
			end loop;
		end loop;

   assert false report "end of simulation" severity failure;
	wait;

      wait;
   end process;

END;
