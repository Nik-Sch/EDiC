-- 4 * 2 to 1 mux https://www.ti.com/lit/ds/symlink/sn74ls153.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x157 is
  port(
    port1  : in  std_ulogic;
    port2  : in  std_ulogic;
    port3  : in  std_ulogic;
    port4  : out std_ulogic;
    port5  : in  std_ulogic;
    port6  : in  std_ulogic;
    port7  : out std_ulogic;
    port8  : in  std_ulogic;
    port9  : out std_ulogic;
    port10 : in  std_ulogic;
    port11 : in  std_ulogic;
    port12 : out std_ulogic;
    port13 : in  std_ulogic;
    port14 : in  std_ulogic;
    port15 : in  std_ulogic;
    port16 : in  std_ulogic
    );
end entity;

architecture rtl of ic74x157 is
begin
  p_comb : process(all)
  begin
    -- y <= b when sel else a
    port4  <= port3  when port1 else port2;
    port7  <= port6  when port1 else port5;
    port9  <= port10 when port1 else port11;
    port12 <= port13 when port1 else port14;

    -- not g
    if port15 then
      port4  <= '0';
      port7  <= '0';
      port9  <= '0';
      port12 <= '0';
    end if;
  end process;
end architecture;
