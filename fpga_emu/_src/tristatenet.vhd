library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tristatenet is
  generic (
    INPUT_COUNT : integer := 2
    );
  port(
    i_data : in  std_ulogic_vector(INPUT_COUNT - 1 downto 0);
    i_noe  : in  std_ulogic_vector(INPUT_COUNT - 1 downto 0);
    o_data : out std_ulogic;
    o_noe  : out std_ulogic
    );
end entity;

architecture rtl of tristatenet is
begin

  p_mux : process(all)
  begin
    o_data <= '1';
    for i in 0 to INPUT_COUNT - 1 loop
      if not i_noe(i) then
        o_data <= i_data(i);
      end if;
    end loop;
  -- if (ones > 1) begin
  --   o_data <= 1'bx;
  --   $display("More than one output enable is high (%m) at %0t.", $time);
  --   -- $stop;
  -- end
  -- o_noe <= !(ones == 1);
  end process;
end architecture;
