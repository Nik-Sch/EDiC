-- synchronous 8 bit cascaded counter with loading https:--www.ti.com/lit/ds/symlink/sn74als867a.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x867 is
  port(
    port1  : in  std_ulogic;
    port2  : in  std_ulogic;
    port3  : in  std_ulogic;
    port4  : in  std_ulogic;
    port5  : in  std_ulogic;
    port6  : in  std_ulogic;
    port7  : in  std_ulogic;
    port8  : in  std_ulogic;
    port9  : in  std_ulogic;
    port10 : in  std_ulogic;
    port11 : in  std_ulogic;
    port12 : in  std_ulogic;
    port13 : out std_ulogic;
    port14 : in  std_ulogic;
    port15 : out std_ulogic;
    port16 : out std_ulogic;
    port17 : out std_ulogic;
    port18 : out std_ulogic;
    port19 : out std_ulogic;
    port20 : out std_ulogic;
    port21 : out std_ulogic;
    port22 : out std_ulogic;
    port23 : in  std_ulogic;
    port24 : in  std_ulogic
    );
end entity;

architecture rtl of ic74x867 is
  signal S           : std_ulogic_vector(1 downto 0);
  signal enpN        : std_ulogic;
  signal entN        : std_ulogic;
  signal r_data      : unsigned(7 downto 0);
  signal s_data      : unsigned(7 downto 0);
  signal asyncResetN : std_ulogic;
begin

  S           <= (port2, port1);
  asyncResetN <= S(0) or S(1);
  enpN        <= port23;
  entN        <= port11;
  s_data      <= (port10, port9, port8, port7, port6, port5, port4, port3);
  port22      <= r_data(0);
  port21      <= r_data(1);
  port20      <= r_data(2);
  port19      <= r_data(3);
  port18      <= r_data(4);
  port17      <= r_data(5);
  port16      <= r_data(6);
  port15      <= r_data(7);

  p_reg : process(port14, asyncResetN)
  begin
    if rising_edge(port14) then
      if not (enpN or entN) then
        case S is
          when "00" =>
            r_data <= (others => '0');
          when "01" =>
            r_data <= r_data - 1;
          when "11" =>
            r_data <= r_data + 1;
          when others =>
            r_data <= r_data;
        end case;
      end if;  -- enable

      -- loading is independent of enable
      if (S = "00") then
        r_data <= s_data;
      end if;
    end if;  -- edge

    -- only for AS867
    if asyncResetN then
      r_data <= (others => '0');
    end if;
  end process;

  p_rcoN : process(all)
  begin
    port13 <= '1';
    if not entN then                    -- enable rco
      if (S = "00") then                -- counting down
        port13 <= '0' when r_data = x"00" else '1';      -- low level pulse when data is 0
      end if;
      if (S = "11") then               -- counting up
        port13 <= '0' when r_data = x"ff" else '1';      -- low level pulse when data is 255
      end if;
    end if;
  end process;

end architecture;
