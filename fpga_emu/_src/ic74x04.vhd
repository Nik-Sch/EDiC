-- hex inverter https : //www.ti.com/lit/ds/symlink/sn74ls04.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x04 is
  port(
    port1  : in  std_ulogic;
    port2  : out std_ulogic;
    port3  : in  std_ulogic;
    port4  : out std_ulogic;
    port5  : in  std_ulogic;
    port6  : out std_ulogic;
    port7  : in  std_ulogic;
    port8  : out std_ulogic;
    port9  : in  std_ulogic;
    port10 : out std_ulogic;
    port11 : in  std_ulogic;
    port12 : out std_ulogic;
    port13 : in  std_ulogic;
    port14 : in  std_ulogic
    );
end entity;

architecture rtl of ic74x04 is
begin
  port2  <= not port1;
  port4  <= not port3;
  port6  <= not port5;
  port8  <= not port9;
  port10 <= not port11;
  port12 <= not port13;
end architecture;
