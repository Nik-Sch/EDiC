LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74521_tb IS
END IC74521_tb;
 
ARCHITECTURE behavior OF IC74521_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74521
         Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           nI_A_equ_B : in  STD_LOGIC;
           nO_A_equ_B : out  STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal nI_A_equ_B  : std_logic := '0';

 	--Outputs
   signal nO_A_equ_B : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74521 PORT MAP (
          A => A,
          B => B,
          nI_A_equ_B => nI_A_equ_B,
          nO_A_equ_B => nO_A_equ_B
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;		

      report "Testing Comparator" severity note;
		for p_i in 0 to 255 loop
			A <= std_logic_vector(to_unsigned(p_i, 8));
			for q_i in 0 to 255 loop
				B <= std_logic_vector(to_unsigned(q_i, 8));
				wait for 50 ns;
				if (std_logic_vector(to_unsigned(p_i, 8)) /= std_logic_vector(to_unsigned(q_i, 8))) and (nO_A_equ_B = '0') then
					report "Comparator Failed!" severity error;
				end if;
				if (std_logic_vector(to_unsigned(p_i, 8)) = std_logic_vector(to_unsigned(q_i, 8))) and (nO_A_equ_B = '0') then
					report "Comparator success!" severity error;
				end if;
			end loop;
		end loop;

   assert false report "end of simulation" severity failure;
	wait;

      wait;
   end process;

END;
