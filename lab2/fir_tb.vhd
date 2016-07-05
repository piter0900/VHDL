------------------------------------------------------------------------
-- fir test bench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir_tb is
end entity;

------------------------------------------------------------------------

architecture main of fir_tb is
	signal clock : std_logic; 
	signal i, o: word;
  
begin

  uut : entity work.fir(avg)
  port map (
	clk => clock,
    i_data => i,
    o_data => o
  );
  
  process
  begin
    i <= x"0000"; 
    wait until rising_edge(clock);
	wait until rising_edge(clock);
	wait until rising_edge(clock);
	wait until rising_edge(clock);
	i <= x"1000";
	wait until rising_edge(clock);
	i <= x"0000";
  end process;
  
end architecture;
------------------------------------------------------------------------

