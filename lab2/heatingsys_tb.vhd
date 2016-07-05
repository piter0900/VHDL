------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is
	signal reset,clock :std_logic; 
	signal cur_temp,des_temp :signed(7 downto 0); 
	signal heatmode :std_logic_vector(1 downto 0);
	
begin 	
  uut : entity work.heatingsys(main)
  port map (
	i_cur_temp   => cur_temp,
	i_des_temp   =>des_temp,
	i_reset => reset,
	i_clock => clock,
	o_heatmode => heatmode
	
  );
	process 
	begin
	-- --------------------
    cur_temp <= "00011100"; des_temp <= "00100000"; reset <= '1';
    wait for 10 ns;
    -- --------------------
    cur_temp <= "00100000"; des_temp <= "00011110"; reset <= '0';
    wait for 10 ns;
    -- --------------------
	cur_temp <= "00010000"; des_temp <= "00100000"; reset <= '0';
    wait for 10 ns;
    -- --------------------
	cur_temp <= "00001011"; des_temp <= "00001100"; reset <= '0';
    wait for 10 ns;
    -- --------------------
	cur_temp <= "00001100"; des_temp <= "00001011"; reset <= '1';
    wait for 10 ns;
    -- --------------------
	cur_temp <= "00100000"; des_temp <= "00010001"; reset <= '1';
    wait for 10 ns;
    -- --------------------

	end process ;
end main;


