LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IC74885_tb IS
END IC74885_tb;
 
ARCHITECTURE behavior OF IC74885_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IC74885
    PORT(
         P : IN  std_logic_vector(7 downto 0);
         Q : IN  std_logic_vector(7 downto 0);
         I_P_gr_Q : IN  std_logic;
         I_P_ls_Q : IN  std_logic;
         L_nA : IN  std_logic;
         PLE : IN  std_logic;
         O_P_gr_Q : OUT  std_logic;
         O_P_ls_Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal P : std_logic_vector(7 downto 0) := (others => '0');
   signal Q : std_logic_vector(7 downto 0) := (others => '0');
   signal I_P_gr_Q : std_logic := '0';
   signal I_P_ls_Q : std_logic := '0';
   signal L_nA : std_logic := '0';
   signal PLE : std_logic := '0';

 	--Outputs
   signal O_P_gr_Q : std_logic;
   signal O_P_ls_Q : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IC74885 PORT MAP (
          P => P,
          Q => Q,
          I_P_gr_Q => I_P_gr_Q,
          I_P_ls_Q => I_P_ls_Q,
          L_nA => L_nA,
          PLE => PLE,
          O_P_gr_Q => O_P_gr_Q,
          O_P_ls_Q => O_P_ls_Q
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		PLE  <= '1';
		L_nA <= '1'; --logical
		
		for p_i in 0 to 255 loop
			P <= std_logic_vector(to_unsigned(p_i, 8));
			for q_i in 0 to 255 loop
				Q <= std_logic_vector(to_unsigned(q_i, 8));
				wait for 50 ns;
				if (std_logic_vector(to_unsigned(p_i, 8)) < std_logic_vector(to_unsigned(q_i, 8))) and (O_P_ls_Q = '0') then
					report "Comparator Failed by lless!" severity error;
				end if;
				if (std_logic_vector(to_unsigned(p_i, 8)) > std_logic_vector(to_unsigned(q_i, 8))) and (O_P_gr_Q = '0') then
					report "Comparator Failed by lgreater!" severity error;
				end if;
				if (O_P_ls_Q = '1') and (O_P_gr_Q = '1') then
					report "Comparator Failed booth lhigh!" severity error;
				end if;
			end loop;
		end loop;
		
		L_nA <= '0'; --arithmetical
		
		for p_i in -128 to 127 loop
			P <= std_logic_vector(to_signed(p_i, 8));
			for q_i in -128 to 127 loop
				Q <= std_logic_vector(to_signed(q_i, 8));
				wait for 50 ns;
				if (p_i < q_i) and (O_P_ls_Q = '0') then
					report "Comparator Failed by aless!" severity error;
				end if;
				if (p_i > q_i) and (O_P_gr_Q = '0') then
					report "Comparator Failed by agreater!" severity error;
				end if;
				if (O_P_ls_Q = '1') and (O_P_gr_Q = '1') then
					report "Comparator Failed booth ahigh!" severity error;
				end if;
			end loop;
		end loop;

      assert false report "end of simulation" severity failure;
		wait;
   end process;

END;
