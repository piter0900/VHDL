library ieee;
use ieee.std_logic_1164.all;

package heat_pkg is
  subtype heat_ty is std_logic_vector(1 downto 0);
  constant off  : heat_ty := "00";
  constant low  : heat_ty := "01";
  constant high : heat_ty := "11";
end heat_pkg;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys is                           -- finite state machine
  port(
		i_cur_temp       : in signed(7 downto 0); -- current temp
		i_des_temp       : in signed(7 downto 0); -- desired temp
		i_reset          : in std_logic;          -- reset
		i_clock          : in std_logic;          -- clock
		o_heatmode       : out heat_ty           -- mode
	);
	  
end heatingsys;

architecture main of heatingsys is
  signal state : heat_ty; 
  	
begin
  -- insert your vhdl code here
  process  
	begin
	wait until rising_edge(i_clock);
	state <= off; 
	o_heatmode<=off; 
		if (i_reset = '1') then
			wait until rising_edge(i_clock);
			o_heatmode <= off;
			state<= off ;
		else 
			if(state = off) then  
				if ("0011"<= (i_des_temp- i_cur_temp) and (i_des_temp- i_cur_temp)< "0101") then 
					wait until rising_edge(i_clock);
					o_heatmode <= low; 
					state<= low;
				end if;
				if("0101"<= (i_des_temp- i_cur_temp)) then
					wait until rising_edge(i_clock);
					o_heatmode <= high; 
					state<= high;
				end if;
			else
				if(state = low)  then  
					if ("0111" <= (i_des_temp- i_cur_temp)) then 
						wait until rising_edge(i_clock);
						o_heatmode <= high; 
						state<= high; 
					end if ;
					if("0010" < (i_cur_temp- i_des_temp))then 
						wait until rising_edge(i_clock);
						o_heatmode <= off; 
						state<= off; 
					end if ;
				else
					if(state = high)  then 
						if ("0011" < (i_cur_temp- i_des_temp)) then
							wait until rising_edge(i_clock);
							o_heatmode <= low; 
							state<= low; 
						end if ;
					else				
						o_heatmode <= state; 
					end if ;
				end if;
			end if;
		end if;
  end process ;

end main;

-- question 1
  --The schematic has 10 and-gates, 6 or-gates, 5 not-gates, and one flip-flip.

