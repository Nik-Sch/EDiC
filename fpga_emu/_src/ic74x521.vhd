-- 8bit comperator, inverting https://www.ti.com/lit/ds/symlink/sn54als520.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x521 is
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
    port13 : in  std_ulogic;
    port14 : in  std_ulogic;
    port15 : in  std_ulogic;
    port16 : in  std_ulogic;
    port17 : in  std_ulogic;
    port18 : in  std_ulogic;
    port19 : out std_ulogic;
    port20 : in  std_ulogic
    );
end entity;

architecture rtl of ic74x521 is
  signal a : std_ulogic_vector(7 downto 0);
  signal b : std_ulogic_vector(7 downto 0);
begin

  a <= (port2, port4, port6, port8, port11, port13, port15, port17);
  b <= (port3, port5, port7, port9, port12, port14, port16, port18);

  port19 <= '1' when (a /= b) or port1 = '1' else '0';

end architecture;
