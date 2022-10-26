library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity uart_tx is
  generic (
    g_CLK_DIVIDE : integer
    );
  port (
    i_clk       : in  std_ulogic;
    i_resetn    : in  std_ulogic;
    i_valid     : in  std_ulogic;
    i_data      : in  std_ulogic_vector(7 downto 0);
    o_ready     : out std_ulogic;
    o_serialOut : out std_ulogic
    );
end entity;

architecture rtl of uart_tx is
  type t_state is (s_UART_TX_IDLE, s_UART_TX_DATA, s_UART_TX_DATA_LAST, s_UART_TX_STOP);

  constant c_STOP_BIT_COUNT : integer := 2;

  signal r_state     : t_state;
  signal r_data      : std_ulogic_vector(7 downto 0);
  signal r_clkCount  : integer range 0 to g_CLK_DIVIDE;
  signal r_dataCount : integer range 0 to 7;
  signal r_stopCount : integer range 0 to c_STOP_BIT_COUNT - 1;
begin

  o_ready <= '1' when r_state = s_UART_TX_IDLE else '0';

  p_reg : process(i_clk, i_resetn) is
  begin
    if rising_edge(i_clk) then
      r_clkCount <= r_clkCount + 1;

      case r_state is
        when s_UART_TX_IDLE =>
          o_serialOut <= '1';                           -- idle in high (stop)
          if i_valid then
            r_clkCount  <= 0;
            r_data      <= i_data;
            o_serialOut <= '0';                         -- start bit is low
            r_dataCount <= 0;
            r_state     <= s_UART_TX_DATA;
          end if;
        when s_UART_TX_DATA =>
          if r_clkCount = g_CLK_DIVIDE then
            o_serialOut <= r_data(r_dataCount);
            r_clkCount  <= 0;
            if r_dataCount = 7 then
              r_state <= s_UART_TX_DATA_LAST;
            else
              r_dataCount <= r_dataCount + 1;
            end if;
          end if;
        when s_UART_TX_DATA_LAST =>
          if r_clkCount = g_CLK_DIVIDE then
            r_clkCount  <= 0;
            o_serialOut <= '1';
            r_stopCount <= 0;
            r_state     <= s_UART_TX_STOP;
          end if;
        when s_UART_TX_STOP =>
          if r_clkCount = g_CLK_DIVIDE then
            r_stopCount <= r_stopCount + 1;
            if r_stopCount = c_STOP_BIT_COUNT - 1 then  -- 2 stop bit
              r_state <= s_UART_TX_IDLE;
            end if;
          end if;
      end case;
    end if;

    if not i_resetn then
      r_state     <= s_UART_TX_IDLE;
      o_serialOut <= '1';
      r_stopCount <= 0;
      r_clkCount  <= 0;
    end if;
  end process;

end architecture;
