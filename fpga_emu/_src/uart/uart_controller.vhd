library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_controller is
  generic (
    g_CLK_DIVIDE : integer := 868       -- baud 115200
    );
  port(
    i_clk    : in std_ulogic;
    i_resetn : in std_ulogic;

    o_instrData : out std_ulogic_vector(23 downto 0);
    o_instrAddr : out std_ulogic_vector(14 downto 0);
    o_instrWrEn : out std_ulogic;

    o_serialOut : out std_ulogic;
    i_serialIn  : in  std_ulogic
    );
end entity;

architecture rtl of uart_controller is

  function charToVec(c : character) return std_ulogic_vector is
  begin
    return std_ulogic_vector(to_unsigned(character'pos(c), 8));
  end function;

  constant c_sendInstructions   : std_ulogic_vector(7 downto 0) := charToVec('i');
  constant c_confirmInstruction : std_ulogic_vector(7 downto 0) := charToVec('c');
  constant c_confirmAll         : std_ulogic_vector(7 downto 0) := charToVec('C');

  signal r_txValid : std_ulogic;
  signal s_txReady : std_ulogic;
  signal r_txData  : std_ulogic_vector(8 - 1 downto 0);
  signal s_rxData  : std_ulogic_vector(8 - 1 downto 0);
  signal s_rxValid : std_ulogic;

  type t_state is (s_IDLE, s_GET_INSTR_COUNT, s_RECEIVE_INSTR);
  signal r_state   : t_state;
  signal r_counter : unsigned(2 downto 0);

  signal r_instructionCountMax : unsigned(15 downto 0);
  signal r_instructionCount    : unsigned(15 downto 0);
begin
  inst_ila: entity work.ila_0
  port map (
    clk => i_clk,
    probe0(0) => o_instrWrEn,
    probe1 => o_instrData,
    probe2 => o_instrAddr
  );

  p_reg : process(i_clk, i_resetn)
  begin
    if rising_edge(i_clk) then
      r_txValid   <= '0';
      o_instrWrEn <= '0';

      case r_state is
        when s_IDLE =>
          if s_rxValid = '1' and s_rxData = c_sendInstructions then
            r_state   <= s_GET_INSTR_COUNT;
            r_counter <= 3x"1";  -- receive 2 bytes for the instruction count
          end if;
        when s_GET_INSTR_COUNT =>
          if s_rxValid then
            r_instructionCountMax((to_integer(r_counter) + 1) * 8 - 1 downto to_integer(r_counter) * 8) <= unsigned(s_rxData);
            r_counter             <= r_counter - 1;
            if to_integer(r_counter) = 0 then
              r_txData           <= c_confirmInstruction;
              r_txValid          <= '1';
              r_counter          <= 3x"2";
              r_state            <= s_RECEIVE_INSTR;
              r_instructionCount <= (others => '0');
            end if;
          end if;
        when s_RECEIVE_INSTR =>
          if s_rxValid then
            o_instrData((to_integer(r_counter) + 1) * 8 - 1 downto to_integer(r_counter) * 8) <= s_rxData;
            r_counter   <= r_counter - 1;
            if to_integer(r_counter) = 0 then
              o_instrAddr <= std_ulogic_vector(r_instructionCount(o_instrAddr'range));
              o_instrWrEn <= '1';
              r_counter   <= 3x"2";

              r_txData  <= c_confirmInstruction;
              r_txValid <= '1';

              r_instructionCount <= r_instructionCount + 1;
              if r_instructionCount = r_instructionCountMax - 1 then
                r_txData  <= c_confirmAll;
                r_txValid <= '1';
                r_state   <= s_IDLE;
              end if;
            end if;
          end if;
      end case;
    end if;

    if not i_resetn then
      r_txValid   <= '0';
      o_instrWrEn <= '0';
      r_state     <= s_IDLE;
    end if;
  end process;


  inst_uart_tx : entity work.uart_tx
    generic map (
      g_CLK_DIVIDE => g_CLK_DIVIDE
      )
    port map (
      i_clk       => i_clk,
      i_resetn    => i_resetn,
      i_valid     => r_txValid,
      o_ready     => s_txReady,
      i_data      => r_txData,
      o_serialOut => o_serialOut
      );

  inst_uart_rx : entity work.uart_rx
    generic map (
      g_CLK_DIVIDE => g_CLK_DIVIDE
      )
    port map (
      i_clk      => i_clk,
      i_resetn   => i_resetn,
      i_serialIn => i_serialIn,
      o_valid    => s_rxValid,
      o_data     => s_rxData
      );

end architecture;
