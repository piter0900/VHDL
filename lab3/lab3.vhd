library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
  port (
    clk       : in  std_logic;             -- the system clock
    reset     : in  std_logic;             -- reset
    i_valid   : in  std_logic;             -- input data is valid
    i_data    : in  unsigned(7 downto 0);  -- input data
    o_data    : out unsigned(7 downto 0)   -- output data


  );
end entity lab3;

architecture main of lab3 is

	signal mem_1	  : std_logic_vector(7 downto 0);
	signal mem_2	  : std_logic_vector(7 downto 0);
	signal mem_3      : std_logic_vector(7 downto 0);	
	signal WR 		  : std_logic_vector(2 downto 0);
	signal addrTmp : std_logic_vector(3 downto 0);
	signal in_data : std_logic_vector(7 downto 0);
	signal totalCount : unsigned(7 downto 0);
	signal counter : unsigned(7 downto 0) ;
	begin
 
	  uut1 : entity work.mem(main)
	  port map (
	    address => addrTmp,
		clock => clk,
		data => std_logic_vector(i_data),
		wren => WR(0),
		q => mem_1
		);
	  uut2 : entity work.mem(main)
	  port map (
	    address => addrTmp,
		clock => clk,
		data => std_logic_vector(i_data),
		wren => WR(1),
		q => mem_2
	  );
	  uut3 : entity work.mem(main)
	  port map (
	    address => addrTmp,
		clock => clk,
		data => std_logic_vector(i_data),
		wren => WR(2),
		q => mem_3
	  );
	  
	  
  -- A function to rotate left (rol) a vector by n bits
 -- function "rol" ( a : std_logic_vector; n : natural )
   -- return std_logic_vector
--  is
--  begin
--   return std_logic_vector( unsigned(a) rol n );
--  end function;
  

	
	process 
		begin 
--sudo code 
		--sync by clk
		wait until rising_edge(clk);
		
		if reset = '1' then
		addrTmp <= "0000";
		WR <= "100"; 
		totalCount<= "00000000";
		end if;
		
		if i_valid = '1' then
		
			 addrTmp <= std_logic_vector(unsigned(addrTmp) + "0001"); -- increase addr by 1, addr will point to next
			 totalCount <= totalCount + "00000001";
			 if addrTmp = "0000" then
			 wait until rising_edge(clk);
				WR<=std_logic_vector(unsigned(WR) srl 1);  
			
			if totalCount >= "000100000" then
				if WR(0)='1' then 
					wait until rising_edge(clk);
					if(unsigned(mem_2)-unsigned(mem_3)+unsigned(i_data) >"0000") then 
					counter<=counter+"0001";
					end if; 
				end if;
				if WR(1)='1' then 
					wait until rising_edge(clk);
					if(unsigned(mem_3)-unsigned(mem_1)+unsigned(i_data) >"0000") then 
					counter<=counter+"0001";
					end if;
				end if;
				if WR(2)='1' then 
					wait until rising_edge(clk);
					if(unsigned(mem_1)-unsigned(mem_2)+unsigned(i_data) >"0000") then 
					counter<=counter+"0001";
					end if;
				end if;
			
			end if	;
			end if;
			o_data<=counter; 
		end if;
		
		
		
-- end sudo code 		
	end process ;

  
end architecture main;

-- Q1: number of flip flops and lookup tables?
--

-- Q2: maximum clock frequency?
--

-- Q3: source and destination signals of critical path?
-- 

-- Q4: does your implementation function correctly?  If not,
-- explain bug and how you would fix it if you had more time.
-- 
