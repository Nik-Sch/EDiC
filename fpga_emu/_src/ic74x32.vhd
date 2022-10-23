-- quad or https://www.ti.com/lit/ds/symlink/sn74ls32.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x32 is
  port(
    port1  : in  std_ulogic;
    port2  : in  std_ulogic;
    port3  : out std_ulogic;
    port4  : in  std_ulogic;
    port5  : in  std_ulogic;
    port6  : out std_ulogic;
    port7  : in  std_ulogic;
    port8  : out std_ulogic;
    port9  : in  std_ulogic;
    port10 : in  std_ulogic;
    port11 : out std_ulogic;
    port12 : in  std_ulogic;
    port13 : in  std_ulogic;
    port14 : in  std_ulogic
    );
end entity;

architecture rtl of ic74x32 is
begin
  port3  <= port1 or port2;
  port6  <= port4 or port5;
  port8  <= port9 or port10;
  port11 <= port12 or port13;
end architecture;
