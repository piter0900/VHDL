
-- 
-- Definition of  fir_top
-- 
--      05/31/15 16:31:59
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_12_6_64_0_sine_wave_sample_64 is 
   port (
      address : IN std_logic_vector (5 DOWNTO 0) ;
      inclock : IN std_logic ;
      outclock : IN std_logic ;
      outclockena : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0)) ;
end rom_12_6_64_0_sine_wave_sample_64 ;

architecture INTERFACE of rom_12_6_64_0_sine_wave_sample_64 is 
   component mux_64u_64u
      port (
         a : IN std_logic_vector (63 DOWNTO 0) ;
         b : IN std_logic_vector (63 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal GND, PWR: std_logic ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   modgen_mux_1 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>PWR, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>PWR, a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, a(51)=>PWR, a(50)=>PWR, a(49)=>PWR, 
      a(48)=>PWR, a(47)=>PWR, a(46)=>PWR, a(45)=>PWR, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>PWR, a(39)=>PWR, a(38)=>PWR, a(37)=>PWR, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(11));
   modgen_mux_2 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>PWR, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>PWR, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>PWR, a(25)=>PWR, 
      a(24)=>PWR, a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>PWR, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(10));
   modgen_mux_3 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>PWR, a(57)=>PWR, a(56)=>PWR, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>PWR, a(39)=>PWR, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>PWR, a(28)=>PWR, a(27)=>PWR, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>PWR, a(3)=>PWR, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(9));
   modgen_mux_4 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>GND, a(61)=>PWR, 
      a(60)=>GND, a(59)=>GND, a(58)=>PWR, a(57)=>GND, a(56)=>GND, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>GND, a(39)=>GND, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>PWR, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>PWR, a(29)=>GND, a(28)=>PWR, a(27)=>PWR, a(26)=>GND, a(25)=>PWR, 
      a(24)=>PWR, a(23)=>GND, a(22)=>GND, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>GND, a(9)=>GND, a(8)=>PWR, a(7)=>PWR, 
      a(6)=>GND, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(8));
   modgen_mux_5 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>PWR, 
      a(60)=>PWR, a(59)=>GND, a(58)=>PWR, a(57)=>PWR, a(56)=>GND, a(55)=>PWR, 
      a(54)=>GND, a(53)=>PWR, a(52)=>PWR, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>GND, a(41)=>PWR, a(40)=>GND, a(39)=>PWR, a(38)=>GND, a(37)=>GND, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>PWR, 
      a(30)=>PWR, a(29)=>GND, a(28)=>GND, a(27)=>PWR, a(26)=>GND, a(25)=>GND, 
      a(24)=>PWR, a(23)=>GND, a(22)=>PWR, a(21)=>GND, a(20)=>GND, a(19)=>PWR, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>GND, a(11)=>GND, a(10)=>PWR, a(9)=>GND, a(8)=>PWR, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>GND, a(3)=>GND, a(2)=>PWR, a(1)=>PWR, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(7));
   modgen_mux_6 : mux_64u_64u port map ( a(63)=>GND, a(62)=>PWR, a(61)=>GND, 
      a(60)=>PWR, a(59)=>GND, a(58)=>GND, a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>PWR, a(52)=>GND, a(51)=>PWR, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>PWR, a(44)=>GND, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>PWR, a(39)=>PWR, a(38)=>GND, a(37)=>GND, 
      a(36)=>PWR, a(35)=>GND, a(34)=>PWR, a(33)=>GND, a(32)=>GND, a(31)=>PWR, 
      a(30)=>GND, a(29)=>PWR, a(28)=>GND, a(27)=>PWR, a(26)=>PWR, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>PWR, a(19)=>GND, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>GND, 
      a(12)=>PWR, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>PWR, a(5)=>PWR, a(4)=>GND, a(3)=>PWR, a(2)=>GND, a(1)=>PWR, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(6));
   modgen_mux_7 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>PWR, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>GND, a(57)=>PWR, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>PWR, a(52)=>GND, a(51)=>GND, a(50)=>PWR, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>PWR, a(45)=>GND, a(44)=>GND, a(43)=>PWR, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>PWR, a(38)=>GND, a(37)=>PWR, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>PWR, a(25)=>GND, 
      a(24)=>PWR, a(23)=>PWR, a(22)=>PWR, a(21)=>GND, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>GND, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>GND, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>GND, a(10)=>PWR, a(9)=>PWR, a(8)=>PWR, a(7)=>GND, 
      a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(5));
   modgen_mux_8 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>GND, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>GND, a(57)=>GND, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, a(51)=>PWR, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>PWR, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>PWR, a(39)=>GND, a(38)=>PWR, a(37)=>PWR, 
      a(36)=>PWR, a(35)=>GND, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>PWR, a(28)=>GND, a(27)=>GND, a(26)=>PWR, a(25)=>PWR, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)=>PWR, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(4));
   modgen_mux_9 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>PWR, 
      a(60)=>GND, a(59)=>PWR, a(58)=>PWR, a(57)=>PWR, a(56)=>GND, a(55)=>GND, 
      a(54)=>PWR, a(53)=>GND, a(52)=>PWR, a(51)=>PWR, a(50)=>GND, a(49)=>PWR, 
      a(48)=>GND, a(47)=>PWR, a(46)=>GND, a(45)=>PWR, a(44)=>PWR, a(43)=>GND, 
      a(42)=>PWR, a(41)=>GND, a(40)=>GND, a(39)=>PWR, a(38)=>GND, a(37)=>PWR, 
      a(36)=>GND, a(35)=>PWR, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>PWR, 
      a(30)=>PWR, a(29)=>GND, a(28)=>PWR, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>PWR, a(23)=>PWR, a(22)=>GND, a(21)=>PWR, a(20)=>GND, a(19)=>GND, 
      a(18)=>PWR, a(17)=>GND, a(16)=>PWR, a(15)=>GND, a(14)=>PWR, a(13)=>GND, 
      a(12)=>GND, a(11)=>PWR, a(10)=>GND, a(9)=>PWR, a(8)=>PWR, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>PWR, a(3)=>GND, a(2)=>PWR, a(1)=>PWR, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(3));
   modgen_mux_10 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>GND, a(61)=>PWR, 
      a(60)=>GND, a(59)=>GND, a(58)=>PWR, a(57)=>PWR, a(56)=>PWR, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>PWR, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>PWR, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>PWR, a(39)=>PWR, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>PWR, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>PWR, a(29)=>GND, a(28)=>PWR, a(27)=>PWR, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>GND, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>GND, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(2));
   modgen_mux_11 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>PWR, a(58)=>PWR, a(57)=>GND, a(56)=>PWR, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>PWR, a(51)=>GND, a(50)=>PWR, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>PWR, a(45)=>GND, a(44)=>PWR, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>PWR, a(39)=>GND, a(38)=>GND, a(37)=>PWR, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>PWR, a(29)=>PWR, a(28)=>PWR, a(27)=>GND, a(26)=>GND, a(25)=>PWR, 
      a(24)=>GND, a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>GND, a(19)=>PWR, 
      a(18)=>GND, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>GND, a(13)=>PWR, 
      a(12)=>GND, a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>PWR, 
      a(6)=>GND, a(5)=>GND, a(4)=>PWR, a(3)=>PWR, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(1));
   modgen_mux_12 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>GND, a(61)=>PWR, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>PWR, a(55)=>GND, 
      a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, a(51)=>GND, a(50)=>PWR, a(49)=>PWR, 
      a(48)=>GND, a(47)=>PWR, a(46)=>PWR, a(45)=>GND, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>GND, a(40)=>PWR, a(39)=>GND, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>PWR, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>PWR, a(29)=>GND, a(28)=>PWR, a(27)=>PWR, a(26)=>PWR, a(25)=>PWR, 
      a(24)=>GND, a(23)=>PWR, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>PWR, 
      a(18)=>GND, a(17)=>GND, a(16)=>PWR, a(15)=>GND, a(14)=>GND, a(13)=>PWR, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>PWR, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_new_0_sine_wave_sample_64 is 
   port (
      rd_data1 : OUT std_logic_vector (11 DOWNTO 0) ;
      addr1 : IN std_logic_vector (5 DOWNTO 0) ;
      rd_clk1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      regce1 : IN std_logic ;
      rst1 : IN std_logic) ;
end rom_new_0_sine_wave_sample_64 ;

architecture INTERFACE of rom_new_0_sine_wave_sample_64 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component rom_12_6_64_0_sine_wave_sample_64
      port (
         address : IN std_logic_vector (5 DOWNTO 0) ;
         inclock : IN std_logic ;
         outclock : IN std_logic ;
         outclockena : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0)) ;
   end component ;
   signal nx22, nx24, dup_0_address_8, dup_0_address_7, dup_0_address_6, 
      dup_0_address_5, dup_0_address_4, dup_0_address_3: std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   nx22 <= '0' ;
   nx24 <= '1' ;
   DFFPC (addr1(5),nx22,nx22,rd_clk1,dup_0_address_8) ;
   DFFPC (addr1(4),nx22,nx22,rd_clk1,dup_0_address_7) ;
   DFFPC (addr1(3),nx22,nx22,rd_clk1,dup_0_address_6) ;
   DFFPC (addr1(2),nx22,nx22,rd_clk1,dup_0_address_5) ;
   DFFPC (addr1(1),nx22,nx22,rd_clk1,dup_0_address_4) ;
   DFFPC (addr1(0),nx22,nx22,rd_clk1,dup_0_address_3) ;
   modgen_rom_ix21 : rom_12_6_64_0_sine_wave_sample_64 port map ( address(5)
      =>dup_0_address_8, address(4)=>dup_0_address_7, address(3)=>
      dup_0_address_6, address(2)=>dup_0_address_5, address(1)=>
      dup_0_address_4, address(0)=>dup_0_address_3, inclock=>DANGLING(0), 
      outclock=>DANGLING(1), outclockena=>DANGLING(2), q(11)=>rd_data1(11), 
      q(10)=>rd_data1(10), q(9)=>rd_data1(9), q(8)=>rd_data1(8), q(7)=>
      rd_data1(7), q(6)=>rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), 
      q(3)=>rd_data1(3), q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>
      rd_data1(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity sine_wave is 
   port (
      clk : IN std_logic ;
      freq_scale : IN std_logic_vector (6 DOWNTO 0) ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end sine_wave ;

architecture sample_64 of sine_wave is 
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component rom_new_0_sine_wave_sample_64
      port (
         rd_data1 : OUT std_logic_vector (11 DOWNTO 0) ;
         addr1 : IN std_logic_vector (5 DOWNTO 0) ;
         rd_clk1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         regce1 : IN std_logic ;
         rst1 : IN std_logic) ;
   end component ;
   signal o_data_11_EXMPLR59: std_logic ;
   
   signal address: std_logic_vector (8 DOWNTO 0) ;
   
   signal PWR, GND: std_logic ;
   
   signal address_0n0r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   o_data(11) <= o_data_11_EXMPLR59 ;
   PWR <= '1' ;
   GND <= '0' ;
   o_data(12) <= o_data_11_EXMPLR59 ;
   o_data(13) <= o_data_11_EXMPLR59 ;
   o_data(14) <= o_data_11_EXMPLR59 ;
   o_data(15) <= o_data_11_EXMPLR59 ;
   address_add9_0i1 : add_9u_9u_9u_0_0 port map ( cin=>PWR, a(8)=>address(8), 
      a(7)=>address(7), a(6)=>address(6), a(5)=>address(5), a(4)=>address(4), 
      a(3)=>address(3), a(2)=>address(2), a(1)=>address(1), a(0)=>address(0), 
      b(8)=>GND, b(7)=>GND, b(6)=>freq_scale(6), b(5)=>freq_scale(5), b(4)=>
      freq_scale(4), b(3)=>freq_scale(3), b(2)=>freq_scale(2), b(1)=>
      freq_scale(1), b(0)=>freq_scale(0), d(8)=>address_0n0r2(8), d(7)=>
      address_0n0r2(7), d(6)=>address_0n0r2(6), d(5)=>address_0n0r2(5), d(4)
      =>address_0n0r2(4), d(3)=>address_0n0r2(3), d(2)=>address_0n0r2(2), 
      d(1)=>address_0n0r2(1), d(0)=>address_0n0r2(0), cout=>DANGLING(0));
   DFFPC (address_0n0r2(2),GND,GND,clk,address(2)) ;
   DFFPC (address_0n0r2(1),GND,GND,clk,address(1)) ;
   DFFPC (address_0n0r2(0),GND,GND,clk,address(0)) ;
   modgen_rom_ix21 : rom_new_0_sine_wave_sample_64 port map ( rd_data1(11)=>
      o_data_11_EXMPLR59, rd_data1(10)=>o_data(10), rd_data1(9)=>o_data(9), 
      rd_data1(8)=>o_data(8), rd_data1(7)=>o_data(7), rd_data1(6)=>o_data(6), 
      rd_data1(5)=>o_data(5), rd_data1(4)=>o_data(4), rd_data1(3)=>o_data(3), 
      rd_data1(2)=>o_data(2), rd_data1(1)=>o_data(1), rd_data1(0)=>o_data(0), 
      addr1(5)=>address_0n0r2(8), addr1(4)=>address_0n0r2(7), addr1(3)=>
      address_0n0r2(6), addr1(2)=>address_0n0r2(5), addr1(1)=>
      address_0n0r2(4), addr1(0)=>address_0n0r2(3), rd_clk1=>clk, rd_ena1=>
      PWR, regce1=>PWR, rst1=>GND);
   DFFPC (address_0n0r2(8),GND,GND,clk,address(8)) ;
   DFFPC (address_0n0r2(7),GND,GND,clk,address(7)) ;
   DFFPC (address_0n0r2(6),GND,GND,clk,address(6)) ;
   DFFPC (address_0n0r2(5),GND,GND,clk,address(5)) ;
   DFFPC (address_0n0r2(4),GND,GND,clk,address(4)) ;
   DFFPC (address_0n0r2(3),GND,GND,clk,address(3)) ;
end sample_64 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity audio_pll is 
   port (
      inclk0 : IN std_logic ;
      c0 : OUT std_logic ;
      c1 : OUT std_logic) ;
end audio_pll ;

architecture main_unfold_1149 of audio_pll is 
   signal GND: std_logic ;
   
   signal DANGLING : std_logic_vector (8 downto 0 );

begin
   c0 <= GND ;
   GND <= '0' ;
   altpll_EXMPLR75 : altpll
      generic map (CLK0_DIVIDE_BY => 15,
         CLK0_DUTY_CYCLE => 50,
         CLK0_MULTIPLY_BY => 14,
         CLK0_PHASE_SHIFT => "0",
         CLK1_DIVIDE_BY => 3,
         CLK1_DUTY_CYCLE => 50,
         CLK1_MULTIPLY_BY => 2,
         CLK1_PHASE_SHIFT => "0",
         COMPENSATE_CLOCK => "CLK0",
         INCLK0_INPUT_FREQUENCY => 37037
         ,
         INTENDED_DEVICE_FAMILY => "Cyclone II",
         LPM_TYPE => "altpll",
         OPERATION_MODE => "NORMAL",
         PLL_TYPE => "FAST") 
       port map ( clk(9)=>DANGLING(0), clk(8)=>DANGLING(1), clk(7)=>DANGLING
      (2), clk(6)=>DANGLING(3), clk(5)=>DANGLING(4), clk(4)=>DANGLING(5), 
      clk(3)=>DANGLING(6), clk(2)=>DANGLING(7), clk(1)=>c1, clk(0)=>DANGLING
      (8), inclk(1)=>GND, inclk(0)=>inclk0);
end main_unfold_1149 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_0_4 ;

architecture INTERFACE of counter_up_sclear_clock_0_4 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx11, nx12, nx13, nx14, nx15, nx16, nx17, nx18, nx19, nx20, 
      nx21, nx22, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx12 ;
   q(2) <= nx14 ;
   q(1) <= nx16 ;
   q(0) <= nx18 ;
   GND <= '0' ;
   DFFPC (nx11,GND,GND,clock,nx12) ;
   DFFPC (nx13,GND,GND,clock,nx14) ;
   DFFPC (nx15,GND,GND,clock,nx16) ;
   DFFPC (nx17,GND,GND,clock,nx18) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx12, a(2)=>nx14, a(1)=>
      nx16, a(0)=>nx18, d(3)=>nx19, d(2)=>nx20, d(1)=>nx21, d(0)=>nx22, cout
      =>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx11 <= nx19 AND NOT_SCLEAR ;
   nx13 <= nx20 AND NOT_SCLEAR ;
   nx15 <= nx21 AND NOT_SCLEAR ;
   nx17 <= nx22 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_0_9 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (8 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (8 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_0_9 ;

architecture INTERFACE of counter_up_sclear_clock_0_9 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx21, nx22, nx23, nx24, nx25, nx26, nx27, nx28, nx29, nx30, 
      nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, 
      nx43, nx44, nx45, nx46, nx47, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(8) <= nx22 ;
   q(7) <= nx24 ;
   q(6) <= nx26 ;
   q(5) <= nx28 ;
   q(4) <= nx30 ;
   q(3) <= nx32 ;
   q(2) <= nx34 ;
   q(1) <= nx36 ;
   q(0) <= nx38 ;
   GND <= '0' ;
   DFFPC (nx21,GND,GND,clock,nx22) ;
   DFFPC (nx23,GND,GND,clock,nx24) ;
   DFFPC (nx25,GND,GND,clock,nx26) ;
   DFFPC (nx27,GND,GND,clock,nx28) ;
   DFFPC (nx29,GND,GND,clock,nx30) ;
   DFFPC (nx31,GND,GND,clock,nx32) ;
   DFFPC (nx33,GND,GND,clock,nx34) ;
   DFFPC (nx35,GND,GND,clock,nx36) ;
   DFFPC (nx37,GND,GND,clock,nx38) ;
   inc : inc_9u_9u_0_0 port map ( cin=>PWR, a(8)=>nx22, a(7)=>nx24, a(6)=>
      nx26, a(5)=>nx28, a(4)=>nx30, a(3)=>nx32, a(2)=>nx34, a(1)=>nx36, a(0)
      =>nx38, d(8)=>nx39, d(7)=>nx40, d(6)=>nx41, d(5)=>nx42, d(4)=>nx43, 
      d(3)=>nx44, d(2)=>nx45, d(1)=>nx46, d(0)=>nx47, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx21 <= nx39 AND NOT_SCLEAR ;
   nx23 <= nx40 AND NOT_SCLEAR ;
   nx25 <= nx41 AND NOT_SCLEAR ;
   nx27 <= nx42 AND NOT_SCLEAR ;
   nx29 <= nx43 AND NOT_SCLEAR ;
   nx31 <= nx44 AND NOT_SCLEAR ;
   nx33 <= nx45 AND NOT_SCLEAR ;
   nx35 <= nx46 AND NOT_SCLEAR ;
   nx37 <= nx47 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity audio_dac is 
   port (
      o_aud_bck : OUT std_logic ;
      o_aud_lrck : OUT std_logic ;
      clock_27 : IN std_logic ;
      reset_n : IN std_logic ;
      clock_18_4 : OUT std_logic) ;
end audio_dac ;

architecture main of audio_dac is 
   component audio_pll
      port (
         inclk0 : IN std_logic ;
         c0 : OUT std_logic ;
         c1 : OUT std_logic) ;
   end component ;
   component and_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_clock_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_clock_0_9
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (8 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (8 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   signal o_aud_bck_EXMPLR108, o_aud_lrck_EXMPLR109, clock_18_4_EXMPLR112: 
   std_logic ;
   
   signal bck_div: std_logic_vector (3 DOWNTO 0) ;
   
   signal lrck_1x_div: std_logic_vector (8 DOWNTO 0) ;
   
   signal PWR, GND, not_reset_n, not_o_aud_bck, rtlc0n86, not_rtlc0n184, 
      not_bck_div_3, not_bck_div_2, not_rtlcn0, rtlc0n183, rtlc0n184, 
      not_o_aud_lrck, rtlc1n86, not_rtlc1n185, not_lrck_1x_div_8, 
      not_lrck_1x_div_7, rtlc1n181, not_rtlcn1, rtlc1n184, rtlc1n185, rtlcn0, 
      rtlcn1: std_logic ;
   
   signal DANGLING : std_logic_vector (13 downto 0 );

begin
   o_aud_bck <= o_aud_bck_EXMPLR108 ;
   o_aud_lrck <= o_aud_lrck_EXMPLR109 ;
   clock_18_4 <= clock_18_4_EXMPLR112 ;
   PWR <= '1' ;
   GND <= '0' ;
   p1 : audio_pll port map ( inclk0=>clock_27, c0=>DANGLING(0), c1=>
      clock_18_4_EXMPLR112);
   not_o_aud_bck <= NOT o_aud_bck_EXMPLR108 ;
   rtlc0n86 <= not_reset_n OR not_rtlc0n184 ;
   not_reset_n <= NOT reset_n ;
   not_rtlc0n184 <= NOT rtlc0n184 ;
   not_bck_div_3 <= NOT bck_div(3) ;
   not_bck_div_2 <= NOT bck_div(2) ;
   rtlc0n183 <= not_bck_div_2 OR not_rtlcn0 ;
   rtlc0n184 <= not_bck_div_3 AND rtlc0n183 ;
   not_o_aud_lrck <= NOT o_aud_lrck_EXMPLR109 ;
   rtlc1n86 <= not_reset_n OR not_rtlc1n185 ;
   not_rtlc1n185 <= NOT rtlc1n185 ;
   not_lrck_1x_div_8 <= NOT lrck_1x_div(8) ;
   not_lrck_1x_div_7 <= NOT lrck_1x_div(7) ;
   rtlc1_45_and_21 : and_6u_6u port map ( a(5)=>lrck_1x_div(5), a(4)=>
      lrck_1x_div(4), a(3)=>lrck_1x_div(3), a(2)=>lrck_1x_div(2), a(1)=>
      lrck_1x_div(1), a(0)=>lrck_1x_div(0), d=>rtlc1n181);
   rtlc1n184 <= not_lrck_1x_div_7 OR not_rtlcn1 ;
   rtlc1n185 <= not_lrck_1x_div_8 AND rtlc1n184 ;
   not_rtlcn0 <= NOT rtlcn0 ;
   not_rtlcn1 <= NOT rtlcn1 ;
   rtlcn0 <= bck_div(1) OR bck_div(0) ;
   rtlcn1 <= lrck_1x_div(6) OR rtlc1n181 ;
   modgen_counter_bck_div : counter_up_sclear_clock_0_4 port map ( clock=>
      clock_18_4_EXMPLR112, q(3)=>bck_div(3), q(2)=>bck_div(2), q(1)=>
      bck_div(1), q(0)=>bck_div(0), clk_en=>PWR, aclear=>GND, sload=>GND, 
      data(3)=>DANGLING(1), data(2)=>DANGLING(2), data(1)=>DANGLING(3), 
      data(0)=>DANGLING(4), aset=>GND, sclear=>rtlc0n86, updn=>PWR, cnt_en=>
      PWR);
   modgen_counter_lrck_1x_div : counter_up_sclear_clock_0_9 port map ( clock
      =>clock_18_4_EXMPLR112, q(8)=>lrck_1x_div(8), q(7)=>lrck_1x_div(7), 
      q(6)=>lrck_1x_div(6), q(5)=>lrck_1x_div(5), q(4)=>lrck_1x_div(4), q(3)
      =>lrck_1x_div(3), q(2)=>lrck_1x_div(2), q(1)=>lrck_1x_div(1), q(0)=>
      lrck_1x_div(0), clk_en=>PWR, aclear=>GND, sload=>GND, data(8)=>
      DANGLING(5), data(7)=>DANGLING(6), data(6)=>DANGLING(7), data(5)=>
      DANGLING(8), data(4)=>DANGLING(9), data(3)=>DANGLING(10), data(2)=>
      DANGLING(11), data(1)=>DANGLING(12), data(0)=>DANGLING(13), aset=>GND, 
      sclear=>rtlc1n86, updn=>PWR, cnt_en=>PWR);
   DFFRSE (not_o_aud_bck,GND,not_reset_n,not_rtlc0n184,clock_18_4_EXMPLR112,
   o_aud_bck_EXMPLR108) ;
   DFFRSE (not_o_aud_lrck,GND,not_reset_n,not_rtlc1n185,clock_18_4_EXMPLR112,
   o_aud_lrck_EXMPLR109) ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_clock_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_clock_0_4 ;

architecture INTERFACE of counter_up_clock_0_4 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx11, nx12, nx13, nx14, nx15, nx16, nx17, nx18, PWR: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx12 ;
   q(2) <= nx14 ;
   q(1) <= nx16 ;
   q(0) <= nx18 ;
   GND <= '0' ;
   DFFPC (nx11,GND,GND,clock,nx12) ;
   DFFPC (nx13,GND,GND,clock,nx14) ;
   DFFPC (nx15,GND,GND,clock,nx16) ;
   DFFPC (nx17,GND,GND,clock,nx18) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx12, a(2)=>nx14, a(1)=>
      nx16, a(0)=>nx18, d(3)=>nx11, d(2)=>nx13, d(1)=>nx15, d(0)=>nx17, cout
      =>DANGLING(0));
   PWR <= '1' ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_13_7_128_3_fir_top_main is 
   port (
      address : IN std_logic_vector (6 DOWNTO 0) ;
      inclock : IN std_logic ;
      outclock : IN std_logic ;
      outclockena : IN std_logic ;
      q : OUT std_logic_vector (12 DOWNTO 0)) ;
end rom_13_7_128_3_fir_top_main ;

architecture INTERFACE of rom_13_7_128_3_fir_top_main is 
   component mux_128u_128u
      port (
         a : IN std_logic_vector (127 DOWNTO 0) ;
         b : IN std_logic_vector (127 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal GND, PWR: std_logic ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   modgen_mux_87 : mux_128u_128u port map ( a(127)=>PWR, a(126)=>PWR, a(125)
      =>PWR, a(124)=>PWR, a(123)=>PWR, a(122)=>PWR, a(121)=>PWR, a(120)=>PWR, 
      a(119)=>PWR, a(118)=>PWR, a(117)=>PWR, a(116)=>PWR, a(115)=>PWR, 
      a(114)=>PWR, a(113)=>PWR, a(112)=>PWR, a(111)=>PWR, a(110)=>PWR, 
      a(109)=>PWR, a(108)=>PWR, a(107)=>PWR, a(106)=>PWR, a(105)=>PWR, 
      a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>GND, a(100)=>GND, a(99)
      =>GND, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>GND, a(82)=>GND, 
      a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>GND, a(71)=>GND, a(70)=>GND, 
      a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>GND, 
      a(39)=>GND, a(38)=>GND, a(37)=>GND, a(36)=>GND, a(35)=>GND, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(12));
   modgen_mux_88 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>PWR, a(103)=>PWR, a(102)=>PWR, a(101)=>PWR, a(100)=>PWR, a(99)
      =>PWR, a(98)=>PWR, a(97)=>PWR, a(96)=>PWR, a(95)=>PWR, a(94)=>PWR, 
      a(93)=>PWR, a(92)=>PWR, a(91)=>PWR, a(90)=>PWR, a(89)=>PWR, a(88)=>PWR, 
      a(87)=>PWR, a(86)=>PWR, a(85)=>PWR, a(84)=>PWR, a(83)=>GND, a(82)=>GND, 
      a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>GND, a(71)=>GND, a(70)=>GND, 
      a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>GND, 
      a(39)=>GND, a(38)=>GND, a(37)=>GND, a(36)=>GND, a(35)=>GND, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(11));
   modgen_mux_89 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>GND, a(100)=>GND, a(99)
      =>GND, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>PWR, a(82)=>PWR, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>PWR, a(77)=>PWR, a(76)=>PWR, 
      a(75)=>PWR, a(74)=>PWR, a(73)=>PWR, a(72)=>PWR, a(71)=>PWR, a(70)=>PWR, 
      a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>PWR, a(65)=>PWR, a(64)=>PWR, 
      a(63)=>PWR, a(62)=>PWR, a(61)=>PWR, a(60)=>PWR, a(59)=>PWR, a(58)=>PWR, 
      a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, 
      a(51)=>PWR, a(50)=>PWR, a(49)=>PWR, a(48)=>PWR, a(47)=>PWR, a(46)=>PWR, 
      a(45)=>PWR, a(44)=>PWR, a(43)=>PWR, a(42)=>PWR, a(41)=>PWR, a(40)=>GND, 
      a(39)=>GND, a(38)=>GND, a(37)=>GND, a(36)=>GND, a(35)=>GND, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(10));
   modgen_mux_90 : mux_128u_128u port map ( a(127)=>PWR, a(126)=>PWR, a(125)
      =>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>GND, a(100)=>GND, a(99)
      =>GND, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>PWR, a(82)=>PWR, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>PWR, a(77)=>PWR, a(76)=>PWR, 
      a(75)=>PWR, a(74)=>PWR, a(73)=>PWR, a(72)=>PWR, a(71)=>PWR, a(70)=>PWR, 
      a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>PWR, a(65)=>PWR, a(64)=>PWR, 
      a(63)=>PWR, a(62)=>PWR, a(61)=>GND, a(60)=>GND, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>PWR, 
      a(39)=>PWR, a(38)=>PWR, a(37)=>PWR, a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, 
      a(33)=>PWR, a(32)=>PWR, a(31)=>PWR, a(30)=>PWR, a(29)=>PWR, a(28)=>PWR, 
      a(27)=>PWR, a(26)=>PWR, a(25)=>PWR, a(24)=>PWR, a(23)=>PWR, a(22)=>PWR, 
      a(21)=>PWR, a(20)=>PWR, a(19)=>GND, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(9));
   modgen_mux_91 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>PWR, a(124)=>PWR, a(123)=>PWR, a(122)=>PWR, a(121)=>PWR, a(120)=>PWR, 
      a(119)=>PWR, a(118)=>PWR, a(117)=>PWR, a(116)=>PWR, a(115)=>GND, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>PWR, a(103)=>PWR, a(102)=>PWR, a(101)=>PWR, a(100)=>PWR, a(99)
      =>PWR, a(98)=>PWR, a(97)=>PWR, a(96)=>PWR, a(95)=>PWR, a(94)=>PWR, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>PWR, a(82)=>PWR, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>PWR, a(77)=>PWR, a(76)=>PWR, 
      a(75)=>PWR, a(74)=>PWR, a(73)=>PWR, a(72)=>GND, a(71)=>GND, a(70)=>GND, 
      a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>PWR, a(60)=>PWR, a(59)=>PWR, a(58)=>PWR, 
      a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, 
      a(51)=>GND, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>PWR, 
      a(39)=>PWR, a(38)=>PWR, a(37)=>PWR, a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, 
      a(33)=>PWR, a(32)=>PWR, a(31)=>PWR, a(30)=>PWR, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>PWR, a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, 
      a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, a(12)=>PWR, a(11)=>PWR, a(10)=>PWR, 
      a(9)=>PWR, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(8));
   modgen_mux_92 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>PWR, a(124)=>PWR, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>PWR, 
      a(114)=>PWR, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>PWR, a(103)=>PWR, a(102)=>GND, a(101)=>GND, a(100)=>GND, a(99)
      =>GND, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>PWR, a(92)=>PWR, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>PWR, a(82)=>PWR, 
      a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>PWR, a(71)=>PWR, a(70)=>GND, 
      a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>PWR, a(60)=>PWR, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>PWR, a(50)=>PWR, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>PWR, 
      a(39)=>PWR, a(38)=>GND, a(37)=>GND, a(36)=>GND, a(35)=>GND, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>PWR, a(28)=>PWR, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>PWR, a(18)=>PWR, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>PWR, a(7)=>PWR, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(7));
   modgen_mux_93 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>PWR, a(122)=>PWR, a(121)=>PWR, a(120)=>PWR, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>PWR, a(112)=>PWR, a(111)=>PWR, a(110)=>PWR, 
      a(109)=>PWR, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>GND, a(103)=>GND, a(102)=>PWR, a(101)=>PWR, a(100)=>PWR, a(99)
      =>PWR, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>PWR, a(89)=>PWR, a(88)=>PWR, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>GND, a(82)=>GND, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>PWR, a(77)=>PWR, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>GND, a(71)=>GND, a(70)=>PWR, 
      a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>PWR, a(58)=>PWR, 
      a(57)=>PWR, a(56)=>PWR, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>PWR, a(48)=>PWR, a(47)=>PWR, a(46)=>PWR, 
      a(45)=>PWR, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>GND, 
      a(39)=>GND, a(38)=>PWR, a(37)=>PWR, a(36)=>PWR, a(35)=>PWR, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>PWR, a(26)=>PWR, a(25)=>PWR, a(24)=>PWR, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>PWR, a(16)=>PWR, 
      a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>PWR, a(5)=>PWR, a(4)=>PWR, a(3)
      =>PWR, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(6));
   modgen_mux_94 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>PWR, a(122)=>PWR, a(121)=>GND, a(120)=>GND, 
      a(119)=>PWR, a(118)=>PWR, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>PWR, a(112)=>PWR, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>PWR, a(107)=>PWR, a(106)=>GND, a(105)=>GND, 
      a(104)=>GND, a(103)=>GND, a(102)=>PWR, a(101)=>PWR, a(100)=>GND, a(99)
      =>GND, a(98)=>PWR, a(97)=>PWR, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>PWR, a(90)=>PWR, a(89)=>GND, a(88)=>GND, 
      a(87)=>PWR, a(86)=>PWR, a(85)=>GND, a(84)=>GND, a(83)=>GND, a(82)=>GND, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>PWR, 
      a(75)=>PWR, a(74)=>GND, a(73)=>GND, a(72)=>GND, a(71)=>GND, a(70)=>PWR, 
      a(69)=>PWR, a(68)=>GND, a(67)=>GND, a(66)=>PWR, a(65)=>PWR, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>PWR, a(58)=>PWR, 
      a(57)=>GND, a(56)=>GND, a(55)=>PWR, a(54)=>PWR, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>PWR, a(48)=>PWR, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>PWR, a(43)=>PWR, a(42)=>GND, a(41)=>GND, a(40)=>GND, 
      a(39)=>GND, a(38)=>PWR, a(37)=>PWR, a(36)=>GND, a(35)=>GND, a(34)=>PWR, 
      a(33)=>PWR, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>PWR, a(26)=>PWR, a(25)=>GND, a(24)=>GND, a(23)=>PWR, a(22)=>PWR, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>PWR, a(16)=>PWR, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>PWR, a(11)=>PWR, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>PWR, a(5)=>PWR, a(4)=>GND, a(3)
      =>GND, a(2)=>PWR, a(1)=>PWR, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(5));
   modgen_mux_95 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>PWR, a(124)=>GND, a(123)=>PWR, a(122)=>GND, a(121)=>PWR, a(120)=>GND, 
      a(119)=>PWR, a(118)=>GND, a(117)=>PWR, a(116)=>GND, a(115)=>PWR, 
      a(114)=>GND, a(113)=>PWR, a(112)=>GND, a(111)=>PWR, a(110)=>PWR, 
      a(109)=>GND, a(108)=>PWR, a(107)=>GND, a(106)=>PWR, a(105)=>GND, 
      a(104)=>PWR, a(103)=>GND, a(102)=>PWR, a(101)=>GND, a(100)=>PWR, a(99)
      =>GND, a(98)=>PWR, a(97)=>GND, a(96)=>PWR, a(95)=>GND, a(94)=>GND, 
      a(93)=>PWR, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>PWR, a(88)=>GND, 
      a(87)=>PWR, a(86)=>GND, a(85)=>PWR, a(84)=>GND, a(83)=>PWR, a(82)=>GND, 
      a(81)=>PWR, a(80)=>GND, a(79)=>PWR, a(78)=>PWR, a(77)=>GND, a(76)=>PWR, 
      a(75)=>GND, a(74)=>PWR, a(73)=>GND, a(72)=>PWR, a(71)=>GND, a(70)=>PWR, 
      a(69)=>GND, a(68)=>PWR, a(67)=>GND, a(66)=>PWR, a(65)=>GND, a(64)=>PWR, 
      a(63)=>GND, a(62)=>GND, a(61)=>PWR, a(60)=>GND, a(59)=>PWR, a(58)=>GND, 
      a(57)=>PWR, a(56)=>GND, a(55)=>PWR, a(54)=>GND, a(53)=>PWR, a(52)=>GND, 
      a(51)=>PWR, a(50)=>GND, a(49)=>PWR, a(48)=>GND, a(47)=>PWR, a(46)=>PWR, 
      a(45)=>GND, a(44)=>PWR, a(43)=>GND, a(42)=>PWR, a(41)=>GND, a(40)=>PWR, 
      a(39)=>GND, a(38)=>PWR, a(37)=>GND, a(36)=>PWR, a(35)=>GND, a(34)=>PWR, 
      a(33)=>GND, a(32)=>PWR, a(31)=>GND, a(30)=>GND, a(29)=>PWR, a(28)=>GND, 
      a(27)=>PWR, a(26)=>GND, a(25)=>PWR, a(24)=>GND, a(23)=>PWR, a(22)=>GND, 
      a(21)=>PWR, a(20)=>GND, a(19)=>PWR, a(18)=>GND, a(17)=>PWR, a(16)=>GND, 
      a(15)=>PWR, a(14)=>PWR, a(13)=>GND, a(12)=>PWR, a(11)=>GND, a(10)=>PWR, 
      a(9)=>GND, a(8)=>PWR, a(7)=>GND, a(6)=>PWR, a(5)=>GND, a(4)=>PWR, a(3)
      =>GND, a(2)=>PWR, a(1)=>GND, a(0)=>PWR, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(4));
   modgen_mux_96 : mux_128u_128u port map ( a(127)=>PWR, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>PWR, a(113)=>PWR, a(112)=>PWR, a(111)=>PWR, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>GND, a(100)=>GND, a(99)
      =>GND, a(98)=>PWR, a(97)=>PWR, a(96)=>PWR, a(95)=>PWR, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>GND, a(82)=>PWR, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>GND, a(77)=>GND, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>GND, a(71)=>GND, a(70)=>GND, 
      a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>PWR, a(65)=>PWR, a(64)=>PWR, 
      a(63)=>PWR, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>PWR, a(49)=>PWR, a(48)=>PWR, a(47)=>PWR, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>GND, 
      a(39)=>GND, a(38)=>GND, a(37)=>GND, a(36)=>GND, a(35)=>GND, a(34)=>PWR, 
      a(33)=>PWR, a(32)=>PWR, a(31)=>PWR, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, 
      a(15)=>PWR, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>PWR, a(1)=>PWR, a(0)=>PWR, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(3));
   modgen_mux_97 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>PWR, 
      a(119)=>PWR, a(118)=>PWR, a(117)=>PWR, a(116)=>PWR, a(115)=>PWR, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>PWR, a(103)=>PWR, a(102)=>PWR, a(101)=>PWR, a(100)=>PWR, a(99)
      =>PWR, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>PWR, 
      a(87)=>PWR, a(86)=>PWR, a(85)=>PWR, a(84)=>PWR, a(83)=>PWR, a(82)=>GND, 
      a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>PWR, a(71)=>PWR, a(70)=>PWR, 
      a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>PWR, a(55)=>PWR, a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, 
      a(51)=>PWR, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>PWR, 
      a(39)=>PWR, a(38)=>PWR, a(37)=>PWR, a(36)=>PWR, a(35)=>PWR, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>PWR, a(23)=>PWR, a(22)=>PWR, 
      a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>PWR, a(7)=>PWR, a(6)=>PWR, a(5)=>PWR, a(4)=>PWR, a(3)
      =>PWR, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(2));
   modgen_mux_98 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>PWR, a(122)=>PWR, a(121)=>PWR, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>PWR, a(116)=>PWR, a(115)=>PWR, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>PWR, a(106)=>PWR, a(105)=>PWR, 
      a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>PWR, a(100)=>PWR, a(99)
      =>PWR, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>PWR, a(90)=>PWR, a(89)=>PWR, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>PWR, a(84)=>PWR, a(83)=>PWR, a(82)=>GND, 
      a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>GND, 
      a(75)=>PWR, a(74)=>PWR, a(73)=>PWR, a(72)=>GND, a(71)=>GND, a(70)=>GND, 
      a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>PWR, a(58)=>PWR, 
      a(57)=>PWR, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>PWR, a(52)=>PWR, 
      a(51)=>PWR, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>PWR, a(42)=>PWR, a(41)=>PWR, a(40)=>GND, 
      a(39)=>GND, a(38)=>GND, a(37)=>PWR, a(36)=>PWR, a(35)=>PWR, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>PWR, a(26)=>PWR, a(25)=>PWR, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>PWR, a(10)=>PWR, 
      a(9)=>PWR, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>PWR, a(4)=>PWR, a(3)
      =>PWR, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(1));
   modgen_mux_99 : mux_128u_128u port map ( a(127)=>PWR, a(126)=>GND, a(125)
      =>PWR, a(124)=>PWR, a(123)=>GND, a(122)=>PWR, a(121)=>PWR, a(120)=>GND, 
      a(119)=>GND, a(118)=>PWR, a(117)=>GND, a(116)=>GND, a(115)=>PWR, 
      a(114)=>GND, a(113)=>GND, a(112)=>PWR, a(111)=>PWR, a(110)=>GND, 
      a(109)=>PWR, a(108)=>PWR, a(107)=>GND, a(106)=>PWR, a(105)=>PWR, 
      a(104)=>GND, a(103)=>GND, a(102)=>PWR, a(101)=>GND, a(100)=>GND, a(99)
      =>PWR, a(98)=>GND, a(97)=>GND, a(96)=>PWR, a(95)=>PWR, a(94)=>GND, 
      a(93)=>PWR, a(92)=>PWR, a(91)=>GND, a(90)=>PWR, a(89)=>PWR, a(88)=>GND, 
      a(87)=>GND, a(86)=>PWR, a(85)=>GND, a(84)=>GND, a(83)=>PWR, a(82)=>GND, 
      a(81)=>GND, a(80)=>PWR, a(79)=>PWR, a(78)=>GND, a(77)=>PWR, a(76)=>PWR, 
      a(75)=>GND, a(74)=>PWR, a(73)=>PWR, a(72)=>GND, a(71)=>GND, a(70)=>PWR, 
      a(69)=>GND, a(68)=>GND, a(67)=>PWR, a(66)=>GND, a(65)=>GND, a(64)=>PWR, 
      a(63)=>PWR, a(62)=>GND, a(61)=>PWR, a(60)=>PWR, a(59)=>GND, a(58)=>PWR, 
      a(57)=>PWR, a(56)=>GND, a(55)=>GND, a(54)=>PWR, a(53)=>GND, a(52)=>GND, 
      a(51)=>PWR, a(50)=>GND, a(49)=>GND, a(48)=>PWR, a(47)=>PWR, a(46)=>GND, 
      a(45)=>PWR, a(44)=>PWR, a(43)=>GND, a(42)=>PWR, a(41)=>PWR, a(40)=>GND, 
      a(39)=>GND, a(38)=>PWR, a(37)=>GND, a(36)=>GND, a(35)=>PWR, a(34)=>GND, 
      a(33)=>GND, a(32)=>PWR, a(31)=>PWR, a(30)=>GND, a(29)=>PWR, a(28)=>PWR, 
      a(27)=>GND, a(26)=>PWR, a(25)=>PWR, a(24)=>GND, a(23)=>GND, a(22)=>PWR, 
      a(21)=>GND, a(20)=>GND, a(19)=>PWR, a(18)=>GND, a(17)=>GND, a(16)=>PWR, 
      a(15)=>PWR, a(14)=>GND, a(13)=>PWR, a(12)=>PWR, a(11)=>GND, a(10)=>PWR, 
      a(9)=>PWR, a(8)=>GND, a(7)=>GND, a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)
      =>PWR, a(2)=>GND, a(1)=>GND, a(0)=>PWR, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_new_0_fir_top_main is 
   port (
      rd_data1 : OUT std_logic_vector (12 DOWNTO 0) ;
      addr1 : IN std_logic_vector (6 DOWNTO 0) ;
      rd_clk1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      regce1 : IN std_logic ;
      rst1 : IN std_logic) ;
end rom_new_0_fir_top_main ;

architecture INTERFACE of rom_new_0_fir_top_main is 
   component rom_13_7_128_3_fir_top_main
      port (
         address : IN std_logic_vector (6 DOWNTO 0) ;
         inclock : IN std_logic ;
         outclock : IN std_logic ;
         outclockena : IN std_logic ;
         q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal nx24, nx26: std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   nx24 <= '0' ;
   nx26 <= '1' ;
   modgen_rom_ix301 : rom_13_7_128_3_fir_top_main port map ( address(6)=>
      addr1(6), address(5)=>addr1(5), address(4)=>addr1(4), address(3)=>
      addr1(3), address(2)=>addr1(2), address(1)=>addr1(1), address(0)=>
      addr1(0), inclock=>DANGLING(0), outclock=>DANGLING(1), outclockena=>
      DANGLING(2), q(12)=>rd_data1(12), q(11)=>rd_data1(11), q(10)=>
      rd_data1(10), q(9)=>rd_data1(9), q(8)=>rd_data1(8), q(7)=>rd_data1(7), 
      q(6)=>rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), q(3)=>
      rd_data1(3), q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>rd_data1(0));

end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_clock_0_16 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_clock_0_16 ;

architecture INTERFACE of counter_up_cnt_en_clock_0_16 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, 
      nx58, nx59, nx60, nx61, nx62, nx63, nx64, nx65, nx66, nx67, PWR: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(15) <= nx37 ;
   q(14) <= nx39 ;
   q(13) <= nx41 ;
   q(12) <= nx43 ;
   q(11) <= nx45 ;
   q(10) <= nx47 ;
   q(9) <= nx49 ;
   q(8) <= nx51 ;
   q(7) <= nx53 ;
   q(6) <= nx55 ;
   q(5) <= nx57 ;
   q(4) <= nx59 ;
   q(3) <= nx61 ;
   q(2) <= nx63 ;
   q(1) <= nx65 ;
   q(0) <= nx67 ;
   GND <= '0' ;
   DFFPCE (nx36,GND,GND,cnt_en,clock,nx37) ;
   DFFPCE (nx38,GND,GND,cnt_en,clock,nx39) ;
   DFFPCE (nx40,GND,GND,cnt_en,clock,nx41) ;
   DFFPCE (nx42,GND,GND,cnt_en,clock,nx43) ;
   DFFPCE (nx44,GND,GND,cnt_en,clock,nx45) ;
   DFFPCE (nx46,GND,GND,cnt_en,clock,nx47) ;
   DFFPCE (nx48,GND,GND,cnt_en,clock,nx49) ;
   DFFPCE (nx50,GND,GND,cnt_en,clock,nx51) ;
   DFFPCE (nx52,GND,GND,cnt_en,clock,nx53) ;
   DFFPCE (nx54,GND,GND,cnt_en,clock,nx55) ;
   DFFPCE (nx56,GND,GND,cnt_en,clock,nx57) ;
   DFFPCE (nx58,GND,GND,cnt_en,clock,nx59) ;
   DFFPCE (nx60,GND,GND,cnt_en,clock,nx61) ;
   DFFPCE (nx62,GND,GND,cnt_en,clock,nx63) ;
   DFFPCE (nx64,GND,GND,cnt_en,clock,nx65) ;
   DFFPCE (nx66,GND,GND,cnt_en,clock,nx67) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx37, a(14)=>nx39, 
      a(13)=>nx41, a(12)=>nx43, a(11)=>nx45, a(10)=>nx47, a(9)=>nx49, a(8)=>
      nx51, a(7)=>nx53, a(6)=>nx55, a(5)=>nx57, a(4)=>nx59, a(3)=>nx61, a(2)
      =>nx63, a(1)=>nx65, a(0)=>nx67, d(15)=>nx36, d(14)=>nx38, d(13)=>nx40, 
      d(12)=>nx42, d(11)=>nx44, d(10)=>nx46, d(9)=>nx48, d(8)=>nx50, d(7)=>
      nx52, d(6)=>nx54, d(5)=>nx56, d(4)=>nx58, d(3)=>nx60, d(2)=>nx62, d(1)
      =>nx64, d(0)=>nx66, cout=>DANGLING(0));
   PWR <= '1' ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_0_16 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_0_16 ;

architecture INTERFACE of counter_up_sclear_clock_0_16 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, 
      nx45, nx46, nx47, nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, 
      nx57, nx58, nx59, nx60, nx61, nx62, nx63, nx64, nx65, nx66, nx67, nx68, 
      nx69, nx70, nx71, nx72, nx73, nx74, nx75, nx76, nx77, nx78, nx79, nx80, 
      nx81, nx82, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(15) <= nx36 ;
   q(14) <= nx38 ;
   q(13) <= nx40 ;
   q(12) <= nx42 ;
   q(11) <= nx44 ;
   q(10) <= nx46 ;
   q(9) <= nx48 ;
   q(8) <= nx50 ;
   q(7) <= nx52 ;
   q(6) <= nx54 ;
   q(5) <= nx56 ;
   q(4) <= nx58 ;
   q(3) <= nx60 ;
   q(2) <= nx62 ;
   q(1) <= nx64 ;
   q(0) <= nx66 ;
   GND <= '0' ;
   DFFPC (nx35,GND,GND,clock,nx36) ;
   DFFPC (nx37,GND,GND,clock,nx38) ;
   DFFPC (nx39,GND,GND,clock,nx40) ;
   DFFPC (nx41,GND,GND,clock,nx42) ;
   DFFPC (nx43,GND,GND,clock,nx44) ;
   DFFPC (nx45,GND,GND,clock,nx46) ;
   DFFPC (nx47,GND,GND,clock,nx48) ;
   DFFPC (nx49,GND,GND,clock,nx50) ;
   DFFPC (nx51,GND,GND,clock,nx52) ;
   DFFPC (nx53,GND,GND,clock,nx54) ;
   DFFPC (nx55,GND,GND,clock,nx56) ;
   DFFPC (nx57,GND,GND,clock,nx58) ;
   DFFPC (nx59,GND,GND,clock,nx60) ;
   DFFPC (nx61,GND,GND,clock,nx62) ;
   DFFPC (nx63,GND,GND,clock,nx64) ;
   DFFPC (nx65,GND,GND,clock,nx66) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx36, a(14)=>nx38, 
      a(13)=>nx40, a(12)=>nx42, a(11)=>nx44, a(10)=>nx46, a(9)=>nx48, a(8)=>
      nx50, a(7)=>nx52, a(6)=>nx54, a(5)=>nx56, a(4)=>nx58, a(3)=>nx60, a(2)
      =>nx62, a(1)=>nx64, a(0)=>nx66, d(15)=>nx67, d(14)=>nx68, d(13)=>nx69, 
      d(12)=>nx70, d(11)=>nx71, d(10)=>nx72, d(9)=>nx73, d(8)=>nx74, d(7)=>
      nx75, d(6)=>nx76, d(5)=>nx77, d(4)=>nx78, d(3)=>nx79, d(2)=>nx80, d(1)
      =>nx81, d(0)=>nx82, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx35 <= nx67 AND NOT_SCLEAR ;
   nx37 <= nx68 AND NOT_SCLEAR ;
   nx39 <= nx69 AND NOT_SCLEAR ;
   nx41 <= nx70 AND NOT_SCLEAR ;
   nx43 <= nx71 AND NOT_SCLEAR ;
   nx45 <= nx72 AND NOT_SCLEAR ;
   nx47 <= nx73 AND NOT_SCLEAR ;
   nx49 <= nx74 AND NOT_SCLEAR ;
   nx51 <= nx75 AND NOT_SCLEAR ;
   nx53 <= nx76 AND NOT_SCLEAR ;
   nx55 <= nx77 AND NOT_SCLEAR ;
   nx57 <= nx78 AND NOT_SCLEAR ;
   nx59 <= nx79 AND NOT_SCLEAR ;
   nx61 <= nx80 AND NOT_SCLEAR ;
   nx63 <= nx81 AND NOT_SCLEAR ;
   nx65 <= nx82 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_6 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (5 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (5 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_6 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_6 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_6u_6u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic_vector (5 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx16, nx19, nx20, nx21, nx22, nx23, nx24, nx25, nx26, nx27, 
      nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx36, PWR, NOT_nx15: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(5) <= nx20 ;
   q(4) <= nx22 ;
   q(3) <= nx24 ;
   q(2) <= nx26 ;
   q(1) <= nx28 ;
   q(0) <= nx30 ;
   GND <= '0' ;
   nx16 <= cnt_en OR sclear ;
   DFFPCE (nx19,GND,GND,nx16,clock,nx20) ;
   DFFPCE (nx21,GND,GND,nx16,clock,nx22) ;
   DFFPCE (nx23,GND,GND,nx16,clock,nx24) ;
   DFFPCE (nx25,GND,GND,nx16,clock,nx26) ;
   DFFPCE (nx27,GND,GND,nx16,clock,nx28) ;
   DFFPCE (nx29,GND,GND,nx16,clock,nx30) ;
   inc : inc_6u_6u_0_0 port map ( cin=>PWR, a(5)=>nx20, a(4)=>nx22, a(3)=>
      nx24, a(2)=>nx26, a(1)=>nx28, a(0)=>nx30, d(5)=>nx31, d(4)=>nx32, d(3)
      =>nx33, d(2)=>nx34, d(1)=>nx35, d(0)=>nx36, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx15 <= NOT sclear ;
   nx19 <= nx31 AND NOT_nx15 ;
   nx21 <= nx32 AND NOT_nx15 ;
   nx23 <= nx33 AND NOT_nx15 ;
   nx25 <= nx34 AND NOT_nx15 ;
   nx27 <= nx35 AND NOT_nx15 ;
   nx29 <= nx36 AND NOT_nx15 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_8_6_64_2_i2c_av_config_main is 
   port (
      address : IN std_logic_vector (5 DOWNTO 0) ;
      inclock : IN std_logic ;
      outclock : IN std_logic ;
      outclockena : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0)) ;
end rom_8_6_64_2_i2c_av_config_main ;

architecture INTERFACE of rom_8_6_64_2_i2c_av_config_main is 
   component mux_64u_64u
      port (
         a : IN std_logic_vector (63 DOWNTO 0) ;
         b : IN std_logic_vector (63 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal GND, PWR: std_logic ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   modgen_mux_52 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>PWR, a(8)=>GND, a(7)=>PWR, 
      a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)=>PWR, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(7));
   modgen_mux_53 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>PWR, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>GND, a(3)=>PWR, a(2)=>PWR, a(1)=>PWR, a(0)
      =>PWR, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(6));
   modgen_mux_54 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>PWR, a(3)=>PWR, a(2)=>PWR, a(1)=>PWR, a(0)
      =>PWR, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(5));
   modgen_mux_55 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>PWR, a(3)=>PWR, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(4));
   modgen_mux_56 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>PWR, a(8)=>GND, a(7)=>PWR, 
      a(6)=>GND, a(5)=>PWR, a(4)=>GND, a(3)=>PWR, a(2)=>GND, a(1)=>PWR, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(3));
   modgen_mux_57 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)=>PWR, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(2));
   modgen_mux_58 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(1));
   modgen_mux_59 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>PWR, a(8)=>PWR, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_new_0_i2c_av_config_main is 
   port (
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (5 DOWNTO 0) ;
      rd_clk1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      regce1 : IN std_logic ;
      rst1 : IN std_logic) ;
end rom_new_0_i2c_av_config_main ;

architecture INTERFACE of rom_new_0_i2c_av_config_main is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component rom_8_6_64_2_i2c_av_config_main
      port (
         address : IN std_logic_vector (5 DOWNTO 0) ;
         inclock : IN std_logic ;
         outclock : IN std_logic ;
         outclockena : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx18, nx20, dup_0_lut_data_9, dup_0_lut_data_5, dup_0_lut_data_3, 
      dup_0_lut_data_12, dup_0_lut_data_11, dup_0_lut_data_10, 
      dup_0_lut_data_1, dup_0_lut_data_0: std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   nx18 <= '0' ;
   nx20 <= '1' ;
   DFFPCE (dup_0_lut_data_9,nx18,nx18,rd_ena1,rd_clk1,rd_data1(3)) ;
   DFFPCE (dup_0_lut_data_5,nx18,nx18,rd_ena1,rd_clk1,rd_data1(4)) ;
   DFFPCE (dup_0_lut_data_3,nx18,nx18,rd_ena1,rd_clk1,rd_data1(5)) ;
   DFFPCE (dup_0_lut_data_12,nx18,nx18,rd_ena1,rd_clk1,rd_data1(0)) ;
   DFFPCE (dup_0_lut_data_11,nx18,nx18,rd_ena1,rd_clk1,rd_data1(1)) ;
   DFFPCE (dup_0_lut_data_10,nx18,nx18,rd_ena1,rd_clk1,rd_data1(2)) ;
   DFFPCE (dup_0_lut_data_1,nx18,nx18,rd_ena1,rd_clk1,rd_data1(6)) ;
   DFFPCE (dup_0_lut_data_0,nx18,nx18,rd_ena1,rd_clk1,rd_data1(7)) ;
   modgen_rom_ix89 : rom_8_6_64_2_i2c_av_config_main port map ( address(5)=>
      addr1(5), address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>
      addr1(2), address(1)=>addr1(1), address(0)=>addr1(0), inclock=>
      DANGLING(0), outclock=>DANGLING(1), outclockena=>DANGLING(2), q(7)=>
      dup_0_lut_data_0, q(6)=>dup_0_lut_data_1, q(5)=>dup_0_lut_data_3, q(4)
      =>dup_0_lut_data_5, q(3)=>dup_0_lut_data_9, q(2)=>dup_0_lut_data_10, 
      q(1)=>dup_0_lut_data_11, q(0)=>dup_0_lut_data_12);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sload_sclear_clock_0_6 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (5 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (5 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sload_sclear_clock_0_6 ;

architecture INTERFACE of counter_up_cnt_en_sload_sclear_clock_0_6 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_6u_6u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic_vector (5 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx16, nx19, nx22, nx23, nx24, nx25, nx26, nx27, nx28, nx29, 
      nx30, nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, PWR, nx43, 
      nx45, nx47, nx49, nx51, nx53, NOT_nx18: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(5) <= nx23 ;
   q(4) <= nx25 ;
   q(3) <= nx27 ;
   q(2) <= nx29 ;
   q(1) <= nx31 ;
   q(0) <= nx33 ;
   GND <= '0' ;
   nx16 <= cnt_en OR sload ;
   nx19 <= nx16 OR sclear ;
   DFFPCE (nx22,GND,GND,nx19,clock,nx23) ;
   DFFPCE (nx24,GND,GND,nx19,clock,nx25) ;
   DFFPCE (nx26,GND,GND,nx19,clock,nx27) ;
   DFFPCE (nx28,GND,GND,nx19,clock,nx29) ;
   DFFPCE (nx30,GND,GND,nx19,clock,nx31) ;
   DFFPCE (nx32,GND,GND,nx19,clock,nx33) ;
   inc : inc_6u_6u_0_0 port map ( cin=>PWR, a(5)=>nx23, a(4)=>nx25, a(3)=>
      nx27, a(2)=>nx29, a(1)=>nx31, a(0)=>nx33, d(5)=>nx34, d(4)=>nx35, d(3)
      =>nx36, d(2)=>nx37, d(1)=>nx38, d(0)=>nx39, cout=>DANGLING(0));
   PWR <= '1' ;
   nx43 <= data(5) when sload = '1' else nx34 ;
   nx45 <= data(4) when sload = '1' else nx35 ;
   nx47 <= data(3) when sload = '1' else nx36 ;
   nx49 <= data(2) when sload = '1' else nx37 ;
   nx51 <= data(1) when sload = '1' else nx38 ;
   nx53 <= data(0) when sload = '1' else nx39 ;
   NOT_nx18 <= NOT sclear ;
   nx22 <= nx43 AND NOT_nx18 ;
   nx24 <= nx45 AND NOT_nx18 ;
   nx26 <= nx47 AND NOT_nx18 ;
   nx28 <= nx49 AND NOT_nx18 ;
   nx30 <= nx51 AND NOT_nx18 ;
   nx32 <= nx53 AND NOT_nx18 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity i2c_ctrl_notri is 
   port (
      p_i2c_sdat : IN std_logic ;
      p_finish_xfr : OUT std_logic ;
      p_i2c_data_4 : IN std_logic_vector (2 DOWNTO 0) ;
      p_i2c_data_3 : IN std_logic_vector (4 DOWNTO 4) ;
      p_i2c_data_2 : IN std_logic_vector (7 DOWNTO 6) ;
      p_i2c_data_1 : IN std_logic_vector (12 DOWNTO 9) ;
      p_i2c_data_5 : IN std_logic_vector (22 DOWNTO 21) ;
      p_i2c_sclk : OUT std_logic ;
      p_start_xfr : IN std_logic ;
      p_reset_rtlc_164_and_32 : IN std_logic_vector (2 DOWNTO 2) ;
      p_ack : OUT std_logic ;
      p_not_sdo : OUT std_logic ;
      p_clock : IN std_logic) ;
end i2c_ctrl_notri ;

architecture main_unfold_1393 of i2c_ctrl_notri is 
   component mux_24u_24u
      port (
         a : IN std_logic_vector (23 DOWNTO 0) ;
         b : IN std_logic_vector (23 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component sub_5u_5u_5u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (4 DOWNTO 0) ;
         b : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic_vector (4 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sload_sclear_clock_0_6
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (5 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (5 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   component and_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal not_sd_counter_4, not_sd_counter_3, not_sd_counter_2, 
      not_sd_counter_5, rtlcs23, rtlcs34, rtlcs22, rtlcs18, rtlcs33, rtlcs14, 
      rtlcs32, rtlcs5, rtlcs8, not_sd_counter_0, rtlcs28, rtlc5n732, rtlcn84, 
      rtlcn73, rtlcs9, not_rtlcn71, rtlcn71, not_rtlcs26, rtlcn72, rtlcs24, 
      rtlcn82, not_rtlcs0, rtlcs0, not_rtlcs6, not_rtlcs10, rtlc5n761, 
      not_rtlcs29, rtlcn68, not_rtlcn68, rtlcn61, not_rtlcs21, rtlcs21, 
      not_rtlcs19, rtlcn57, not_rtlc5n900, not_rtlcs12, rtlcs12, not_rtlcs15, 
      rtlcs10, rtlcs26, rtlcs19, rtlcs15, rtlcs6, rtlcs2, rtlcn38, 
      not_sd_counter_1, rtlcn49, rtlcn48, rtlcn34, rtlcn33, rtlc5n898: 
   std_logic ;
   
   signal sdo_5n5s2f1: std_logic_vector (2 DOWNTO 0) ;
   
   signal rtlc5n900, rtlc5n899, rtlc5n883: std_logic ;
   
   signal sd_counter: std_logic_vector (4 DOWNTO 4) ;
   
   signal rtlc5n882, rtlc5n869, rtlc5n865, rtlc5n868, sd_counter_3, 
      rtlc5n867, sd_counter_2, rtlc5n866, sd_counter_1, sd_counter_0, 
      rtlcs29, not_reset, sdo_5n2s1: std_logic ;
   
   signal sdo_5n5s2: std_logic_vector (4 DOWNTO 0) ;
   
   signal sd_0, sd_1, sd_2, sd_3, sd_5, sd_7, sd_9, sd_10, sd_11, sd_12, 
      not_rtlcs3, rtlcs3, sdo, rtlc1n0_1n1s2, not_clock, sclk, sd_counter_5, 
      rtlc0n230, rtlc0n231, rtlc0n51, not_rtlc0n231, rtlcn0, GND, PWR: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   p_finish_xfr <= GND ;
   p_ack <= GND ;
   PWR <= '1' ;
   GND <= '0' ;
   rtlc0n51 <= rtlcn0 AND not_rtlc0n231 ;
   not_rtlc0n231 <= NOT rtlc0n231 ;
   rtlc0n231 <= rtlc0n230 OR sd_counter_5 ;
   rtlc1n0_1n1s2 <= sclk OR not_clock ;
   not_clock <= NOT p_clock ;
   p_not_sdo <= NOT sdo ;
   not_rtlcs3 <= NOT rtlcs3 ;
   sdo_mux_5i1 : mux_24u_24u port map ( a(23)=>GND, a(22)=>GND, a(21)=>PWR, 
      a(20)=>PWR, a(19)=>GND, a(18)=>PWR, a(17)=>GND, a(16)=>GND, a(15)=>GND, 
      a(14)=>GND, a(13)=>GND, a(12)=>sd_12, a(11)=>sd_11, a(10)=>sd_10, a(9)
      =>sd_9, a(8)=>GND, a(7)=>sd_7, a(6)=>sd_5, a(5)=>sd_5, a(4)=>sd_3, 
      a(3)=>sd_3, a(2)=>sd_2, a(1)=>sd_1, a(0)=>sd_0, b(23)=>GND, b(22)=>GND, 
      b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, 
      b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, 
      b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>
      sdo_5n5s2(4), b(3)=>sdo_5n5s2(3), b(2)=>sdo_5n5s2(2), b(1)=>
      sdo_5n5s2(1), b(0)=>sdo_5n5s2(0), d=>sdo_5n2s1);
   rtlc5n866 <= sd_counter_0 AND sd_counter_1 ;
   rtlc5n867 <= sd_counter_2 OR rtlc5n866 ;
   rtlc5n868 <= sd_counter_3 AND rtlc5n867 ;
   rtlc5n869 <= rtlc5n868 OR rtlc5n865 ;
   rtlc5n883 <= rtlc5n882 AND sd_counter(4) ;
   sdo_5n5s2f1(2) <= rtlc5n883 OR sd_counter_5 ;
   rtlc5n900 <= rtlc5n899 OR sd_counter_5 ;
   sdo_sub5_5i2 : sub_5u_5u_5u_0 port map ( cin=>PWR, a(4)=>PWR, a(3)=>PWR, 
      a(2)=>sdo_5n5s2f1(2), a(1)=>sdo_5n5s2f1(1), a(0)=>sdo_5n5s2f1(0), b(4)
      =>sd_counter(4), b(3)=>sd_counter_3, b(2)=>sd_counter_2, b(1)=>
      sd_counter_1, b(0)=>sd_counter_0, d(4)=>sdo_5n5s2(4), d(3)=>
      sdo_5n5s2(3), d(2)=>sdo_5n5s2(2), d(1)=>sdo_5n5s2(1), d(0)=>
      sdo_5n5s2(0), cout=>DANGLING(0));
   rtlc5n865 <= sd_counter_5 OR sd_counter(4) ;
   rtlc5n882 <= sd_counter_3 OR sd_counter_2 ;
   rtlc5n898 <= sd_counter_1 OR sd_counter_0 ;
   sdo_5n5s2f1(0) <= rtlc5n869 AND sdo_5n5s2f1(1) ;
   rtlc_103_select_27 : select_3_3 port map ( a(2)=>rtlcn33, a(1)=>rtlcn34, 
      a(0)=>rtlcn48, b(2)=>PWR, b(1)=>GND, b(0)=>sdo_5n2s1, d=>rtlcn49);
   rtlcn38 <= not_sd_counter_1 OR sd_counter_0 ;
   rtlc_107_or_28 : or_4u_4u port map ( a(3)=>rtlcs2, a(2)=>rtlcs6, a(1)=>
      rtlcs15, a(0)=>rtlcs19, d=>rtlcn33);
   rtlcn34 <= rtlcs26 OR rtlcs10 ;
   not_rtlcs15 <= NOT rtlcs15 ;
   not_rtlcs12 <= NOT rtlcs12 ;
   not_rtlc5n900 <= NOT rtlc5n900 ;
   rtlc_116_and_29 : and_4u_4u port map ( a(3)=>sdo_5n5s2f1(2), a(2)=>
      not_rtlcs15, a(1)=>not_rtlcs12, a(0)=>not_rtlc5n900, d=>rtlcn57);
   sdo_5n5s2f1(1) <= NOT sdo_5n5s2f1(2) ;
   not_rtlcs19 <= NOT rtlcs19 ;
   not_rtlcs21 <= NOT rtlcs21 ;
   rtlc_120_and_30 : and_4u_4u port map ( a(3)=>sdo_5n5s2f1(1), a(2)=>
      not_rtlcs19, a(1)=>not_rtlcs21, a(0)=>rtlc5n869, d=>rtlcn61);
   rtlc_121_or_31 : or_5u_5u port map ( a(4)=>not_rtlcn68, a(3)=>rtlcn57, 
      a(2)=>rtlcn61, a(1)=>rtlcs12, a(0)=>rtlcs21, d=>rtlcn48);
   not_rtlcn68 <= NOT rtlcn68 ;
   p_i2c_sclk <= rtlc1n0_1n1s2 when rtlc0n51 = '1' else sclk ;
   not_rtlcs29 <= NOT rtlcs29 ;
   rtlc_164_and_32 : and_3u_3u port map ( a(2)=>p_reset_rtlc_164_and_32(2), 
      a(1)=>not_rtlcs29, a(0)=>rtlcs26, d=>rtlc5n761);
   not_reset <= NOT p_reset_rtlc_164_and_32(2) ;
   not_rtlcs10 <= NOT rtlcs10 ;
   not_rtlcs6 <= NOT rtlcs6 ;
   not_rtlcs0 <= NOT rtlcs0 ;
   rtlc_173_and_33 : and_10u_10u port map ( a(9)=>not_rtlcs10, a(8)=>
      not_rtlcs12, a(7)=>not_rtlcs21, a(6)=>not_rtlcs6, a(5)=>not_rtlcs0, 
      a(4)=>rtlc5n900, a(3)=>not_rtlcs15, a(2)=>sdo_5n5s2f1(2), a(1)=>
      not_rtlcs19, a(0)=>rtlc5n869, d=>rtlcn82);
   rtlcn72 <= rtlcs24 OR rtlcn82 ;
   not_rtlcs26 <= NOT rtlcs26 ;
   rtlc_176_and_34 : and_3u_3u port map ( a(2)=>not_rtlcs29, a(1)=>
      not_rtlcs26, a(0)=>rtlcn72, d=>rtlcn71);
   not_rtlcn71 <= NOT rtlcn71 ;
   rtlcn73 <= rtlcs24 OR rtlcs9 ;
   rtlcn84 <= not_rtlcs26 AND rtlcn73 ;
   rtlc5n732 <= rtlcs29 OR rtlcn84 ;
   rtlc_183_or_35 : or_4u_4u port map ( a(3)=>sd_counter(4), a(2)=>
      sd_counter_5, a(1)=>rtlc5n868, a(0)=>rtlcs28, d=>rtlcn68);
   rtlcs0 <= sd_counter_5 AND rtlcs2 ;
   rtlcs10 <= not_sd_counter_0 AND rtlcs9 ;
   rtlcs9 <= rtlcs8 AND rtlcs5 ;
   rtlcs32 <= rtlcs8 AND sd_counter_0 ;
   rtlcs12 <= rtlcs32 AND rtlcs14 ;
   rtlcs33 <= rtlcs8 AND rtlcs14 ;
   rtlcs15 <= rtlcs33 AND not_sd_counter_0 ;
   rtlcs8 <= sd_counter(4) AND rtlcs18 ;
   rtlcs34 <= rtlcs18 AND rtlcs22 ;
   rtlcs21 <= rtlcs34 AND rtlcs23 ;
   rtlcs29 <= not_sd_counter_5 AND rtlcs2 ;
   rtlcs2 <= rtlcs28 AND rtlcs23 ;
   rtlcs28 <= not_sd_counter_2 AND rtlcs14 ;
   not_sd_counter_1 <= NOT sd_counter_1 ;
   not_sd_counter_5 <= NOT sd_counter_5 ;
   not_sd_counter_2 <= NOT sd_counter_2 ;
   not_sd_counter_3 <= NOT sd_counter_3 ;
   not_sd_counter_4 <= NOT sd_counter(4) ;
   not_sd_counter_0 <= NOT sd_counter_0 ;
   rtlcs5 <= sd_counter_3 AND sd_counter_1 ;
   rtlcs14 <= not_sd_counter_3 AND not_sd_counter_1 ;
   rtlcs23 <= not_sd_counter_4 AND not_sd_counter_0 ;
   rtlcs18 <= sd_counter_2 AND not_sd_counter_5 ;
   rtlcs22 <= sd_counter_3 AND not_sd_counter_1 ;
   modgen_counter_sd_counter : counter_up_cnt_en_sload_sclear_clock_0_6
       port map ( clock=>p_clock, q(5)=>sd_counter_5, q(4)=>sd_counter(4), 
      q(3)=>sd_counter_3, q(2)=>sd_counter_2, q(1)=>sd_counter_1, q(0)=>
      sd_counter_0, clk_en=>PWR, aclear=>GND, sload=>not_reset, data(5)=>PWR, 
      data(4)=>PWR, data(3)=>PWR, data(2)=>PWR, data(1)=>PWR, data(0)=>PWR, 
      aset=>GND, sclear=>GND, updn=>PWR, cnt_en=>not_rtlcs3);
   DFFPCE (p_i2c_data_1(12),GND,GND,rtlc5n761,p_clock,sd_12) ;
   DFFPCE (p_i2c_data_1(11),GND,GND,rtlc5n761,p_clock,sd_11) ;
   DFFPCE (p_i2c_data_1(10),GND,GND,rtlc5n761,p_clock,sd_10) ;
   DFFPCE (p_i2c_data_1(9),GND,GND,rtlc5n761,p_clock,sd_9) ;
   DFFPCE (p_i2c_data_2(7),GND,GND,rtlc5n761,p_clock,sd_7) ;
   DFFPCE (p_i2c_data_2(6),GND,GND,rtlc5n761,p_clock,sd_5) ;
   DFFPCE (p_i2c_data_3(4),GND,GND,rtlc5n761,p_clock,sd_3) ;
   DFFPCE (p_i2c_data_4(2),GND,GND,rtlc5n761,p_clock,sd_2) ;
   DFFPCE (p_i2c_data_4(1),GND,GND,rtlc5n761,p_clock,sd_1) ;
   DFFPCE (p_i2c_data_4(0),GND,GND,rtlc5n761,p_clock,sd_0) ;
   DFFRSE (rtlcn49,not_reset,GND,not_rtlcn71,p_clock,sdo) ;
   DFFRSE (rtlcn38,not_reset,GND,rtlc5n732,p_clock,sclk) ;
   modgen_or_0 : or_4u_4u port map ( a(3)=>sd_counter_3, a(2)=>sd_counter(4), 
      a(1)=>sd_counter_5, a(0)=>sd_counter_2, d=>rtlcn0);
   modgen_and_1 : and_5u_5u port map ( a(4)=>sd_counter(4), a(3)=>
      sd_counter_3, a(2)=>sd_counter_2, a(1)=>sd_counter_1, a(0)=>
      sd_counter_0, d=>rtlc0n230);
   modgen_and_2 : and_4u_4u port map ( a(3)=>sd_counter(4), a(2)=>
      sd_counter_3, a(1)=>sd_counter_2, a(0)=>rtlc5n898, d=>rtlc5n899);
   modgen_and_3 : and_5u_5u port map ( a(4)=>sd_counter_5, a(3)=>
      sd_counter(4), a(2)=>sd_counter_2, a(1)=>sd_counter_0, a(0)=>rtlcs5, d
      =>rtlcs3);
   modgen_and_4 : and_4u_4u port map ( a(3)=>sd_counter_0, a(2)=>
      not_sd_counter_4, a(1)=>not_sd_counter_5, a(0)=>rtlcs28, d=>rtlcs26);
   modgen_and_5 : and_5u_5u port map ( a(4)=>sd_counter_1, a(3)=>
      not_sd_counter_3, a(2)=>not_sd_counter_2, a(1)=>not_sd_counter_5, a(0)
      =>rtlcs23, d=>rtlcs24);
   modgen_and_6 : and_5u_5u port map ( a(4)=>sd_counter_0, a(3)=>
      not_sd_counter_4, a(2)=>not_sd_counter_2, a(1)=>not_sd_counter_5, a(0)
      =>rtlcs5, d=>rtlcs19);
   modgen_and_7 : and_4u_4u port map ( a(3)=>sd_counter_3, a(2)=>
      sd_counter_0, a(1)=>not_sd_counter_1, a(0)=>rtlcs8, d=>rtlcs6);
end main_unfold_1393 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity i2c_av_config_notri is 
   port (
      p_u0_not_sdo : OUT std_logic ;
      p_i2c_sclk : OUT std_logic ;
      p_i2c_sdat : IN std_logic ;
      p_clk : IN std_logic) ;
end i2c_av_config_notri ;

architecture main_unfold_1971 of i2c_av_config_notri is 
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_clock_0_16
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_clock_0_16
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_6
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (5 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (5 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component rom_new_0_i2c_av_config_main
      port (
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (5 DOWNTO 0) ;
         rd_clk1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         regce1 : IN std_logic ;
         rst1 : IN std_logic) ;
   end component ;
   component i2c_ctrl_notri
      port (
         p_i2c_sdat : IN std_logic ;
         p_finish_xfr : OUT std_logic ;
         p_i2c_data_4 : IN std_logic_vector (2 DOWNTO 0) ;
         p_i2c_data_3 : IN std_logic_vector (4 DOWNTO 4) ;
         p_i2c_data_2 : IN std_logic_vector (7 DOWNTO 6) ;
         p_i2c_data_1 : IN std_logic_vector (12 DOWNTO 9) ;
         p_i2c_data_5 : IN std_logic_vector (22 DOWNTO 21) ;
         p_i2c_sclk : OUT std_logic ;
         p_start_xfr : IN std_logic ;
         p_reset_rtlc_164_and_32 : IN std_logic_vector (2 DOWNTO 2) ;
         p_ack : OUT std_logic ;
         p_not_sdo : OUT std_logic ;
         p_clock : IN std_logic) ;
   end component ;
   signal m_i2c_data_12, m_i2c_data_11, m_i2c_data_10, m_i2c_data_9, 
      m_i2c_data_6, m_i2c_data_4, m_i2c_data_1, m_i2c_data_0, m_i2c_data_2, 
      m_i2c_data_7, rtlcs1, not_lut_index_0, rtlcs0: std_logic ;
   
   signal lut_index_1: std_logic_vector (2 DOWNTO 0) ;
   
   signal not_lut_index_1, not_lut_index_4, not_lut_index_5: std_logic ;
   
   signal cont: std_logic_vector (15 DOWNTO 0) ;
   
   signal m_i2c_clk_div_5, m_i2c_clk_div_4, m_i2c_clk_div_3, m_i2c_clk_div_2, 
      rtlc3n284, reset_n, m_i2c_clk_div_15, m_i2c_clk_div_14, 
      m_i2c_clk_div_13, m_i2c_clk_div_12, rtlcn18, m_i2c_clk_div_11, rtlcn16, 
      m_i2c_clk_div_10, m_i2c_clk_div_9, rtlcn17, rtlcn14, m_i2c_clk_div_6, 
      m_i2c_clk_div_7, m_i2c_clk_div_8, rtlcn1: std_logic ;
   
   signal lut_index_2: std_logic_vector (4 DOWNTO 4) ;
   
   signal lut_index_5, rtlc3n369, rtlc3n368, not_rtlcn1, not_lut_index_3, 
      lut_index_3, not_rtlc3n362, rtlc3n362, rtlc2n89, rtlc2n105, 
      not_reset_n, not_m_i2c_ctrl_clk, m_i2c_ctrl_clk, not_rtlcs2, rtlcs2, 
      PWR, GND: std_logic ;
   
   signal DANGLING : std_logic_vector (41 downto 0 );

begin
   GND <= '0' ;
   PWR <= '1' ;
   not_rtlcs2 <= NOT rtlcs2 ;
   not_m_i2c_ctrl_clk <= NOT m_i2c_ctrl_clk ;
   rtlc2n89 <= not_reset_n OR rtlc2n105 ;
   not_rtlc3n362 <= NOT rtlc3n362 ;
   not_lut_index_3 <= NOT lut_index_3 ;
   rtlc3n368 <= not_lut_index_3 OR not_rtlcn1 ;
   rtlc3n369 <= not_rtlc3n362 AND rtlc3n368 ;
   rtlc3n362 <= lut_index_5 OR lut_index_2(4) ;
   not_rtlcn1 <= NOT rtlcn1 ;
   rtlc_64_and_43 : and_4u_4u port map ( a(3)=>m_i2c_clk_div_8, a(2)=>
      m_i2c_clk_div_7, a(1)=>m_i2c_clk_div_6, a(0)=>rtlcn14, d=>rtlcn17);
   rtlc_65_or_44 : or_3u_3u port map ( a(2)=>m_i2c_clk_div_9, a(1)=>
      m_i2c_clk_div_10, a(0)=>rtlcn17, d=>rtlcn16);
   rtlcn18 <= m_i2c_clk_div_11 AND rtlcn16 ;
   rtlc_67_or_45 : or_5u_5u port map ( a(4)=>m_i2c_clk_div_12, a(3)=>
      m_i2c_clk_div_13, a(2)=>m_i2c_clk_div_14, a(1)=>m_i2c_clk_div_15, a(0)
      =>rtlcn18, d=>rtlc2n105);
   rtlc_74_and_47 : and_3u_3u port map ( a(2)=>rtlc3n369, a(1)=>PWR, a(0)=>
      reset_n, d=>rtlc3n284);
   not_reset_n <= NOT reset_n ;
   rtlc_78_or_48 : or_4u_4u port map ( a(3)=>m_i2c_clk_div_2, a(2)=>
      m_i2c_clk_div_3, a(1)=>m_i2c_clk_div_4, a(0)=>m_i2c_clk_div_5, d=>
      rtlcn14);
   rtlc_80_and_49 : and_16u_16u port map ( a(15)=>cont(15), a(14)=>cont(14), 
      a(13)=>cont(13), a(12)=>cont(12), a(11)=>cont(11), a(10)=>cont(10), 
      a(9)=>cont(9), a(8)=>cont(8), a(7)=>cont(7), a(6)=>cont(6), a(5)=>
      cont(5), a(4)=>cont(4), a(3)=>cont(3), a(2)=>cont(2), a(1)=>cont(1), 
      a(0)=>cont(0), d=>rtlcs2);
   rtlcn1 <= lut_index_1(2) OR lut_index_1(1) ;
   not_lut_index_5 <= NOT lut_index_5 ;
   not_lut_index_4 <= NOT lut_index_2(4) ;
   not_lut_index_1 <= NOT lut_index_1(1) ;
   rtlc_93_and_50 : and_6u_6u port map ( a(5)=>not_lut_index_5, a(4)=>
      not_lut_index_4, a(3)=>not_lut_index_3, a(2)=>lut_index_1(2), a(1)=>
      not_lut_index_1, a(0)=>lut_index_1(0), d=>rtlcs0);
   not_lut_index_0 <= NOT lut_index_1(0) ;
   rtlc_100_and_51 : and_6u_6u port map ( a(5)=>not_lut_index_5, a(4)=>
      not_lut_index_4, a(3)=>not_lut_index_3, a(2)=>lut_index_1(2), a(1)=>
      not_lut_index_1, a(0)=>not_lut_index_0, d=>rtlcs1);
   modgen_counter_cont : counter_up_cnt_en_clock_0_16 port map ( clock=>
      p_clk, q(15)=>cont(15), q(14)=>cont(14), q(13)=>cont(13), q(12)=>
      cont(12), q(11)=>cont(11), q(10)=>cont(10), q(9)=>cont(9), q(8)=>
      cont(8), q(7)=>cont(7), q(6)=>cont(6), q(5)=>cont(5), q(4)=>cont(4), 
      q(3)=>cont(3), q(2)=>cont(2), q(1)=>cont(1), q(0)=>cont(0), clk_en=>
      PWR, aclear=>GND, sload=>GND, data(15)=>DANGLING(0), data(14)=>
      DANGLING(1), data(13)=>DANGLING(2), data(12)=>DANGLING(3), data(11)=>
      DANGLING(4), data(10)=>DANGLING(5), data(9)=>DANGLING(6), data(8)=>
      DANGLING(7), data(7)=>DANGLING(8), data(6)=>DANGLING(9), data(5)=>
      DANGLING(10), data(4)=>DANGLING(11), data(3)=>DANGLING(12), data(2)=>
      DANGLING(13), data(1)=>DANGLING(14), data(0)=>DANGLING(15), aset=>GND, 
      sclear=>GND, updn=>PWR, cnt_en=>not_rtlcs2);
   modgen_counter_m_i2c_clk_div : counter_up_sclear_clock_0_16 port map ( 
      clock=>p_clk, q(15)=>m_i2c_clk_div_15, q(14)=>m_i2c_clk_div_14, q(13)
      =>m_i2c_clk_div_13, q(12)=>m_i2c_clk_div_12, q(11)=>m_i2c_clk_div_11, 
      q(10)=>m_i2c_clk_div_10, q(9)=>m_i2c_clk_div_9, q(8)=>m_i2c_clk_div_8, 
      q(7)=>m_i2c_clk_div_7, q(6)=>m_i2c_clk_div_6, q(5)=>m_i2c_clk_div_5, 
      q(4)=>m_i2c_clk_div_4, q(3)=>m_i2c_clk_div_3, q(2)=>m_i2c_clk_div_2, 
      q(1)=>DANGLING(16), q(0)=>DANGLING(17), clk_en=>PWR, aclear=>GND, 
      sload=>GND, data(15)=>DANGLING(18), data(14)=>DANGLING(19), data(13)=>
      DANGLING(20), data(12)=>DANGLING(21), data(11)=>DANGLING(22), data(10)
      =>DANGLING(23), data(9)=>DANGLING(24), data(8)=>DANGLING(25), data(7)
      =>DANGLING(26), data(6)=>DANGLING(27), data(5)=>DANGLING(28), data(4)
      =>DANGLING(29), data(3)=>DANGLING(30), data(2)=>DANGLING(31), data(1)
      =>DANGLING(32), data(0)=>DANGLING(33), aset=>GND, sclear=>rtlc2n89, 
      updn=>PWR, cnt_en=>PWR);
   modgen_counter_lut_index : counter_up_cnt_en_sclear_clock_0_6 port map ( 
      clock=>p_clk, q(5)=>lut_index_5, q(4)=>lut_index_2(4), q(3)=>
      lut_index_3, q(2)=>lut_index_1(2), q(1)=>lut_index_1(1), q(0)=>
      lut_index_1(0), clk_en=>PWR, aclear=>GND, sload=>GND, data(5)=>
      DANGLING(34), data(4)=>DANGLING(35), data(3)=>DANGLING(36), data(2)=>
      DANGLING(37), data(1)=>DANGLING(38), data(0)=>DANGLING(39), aset=>GND, 
      sclear=>not_reset_n, updn=>PWR, cnt_en=>GND);
   DFFPC (rtlcs2,GND,GND,p_clk,reset_n) ;
   DFFRSE (not_m_i2c_ctrl_clk,GND,not_reset_n,rtlc2n105,p_clk,m_i2c_ctrl_clk
   ) ;
   DFFPCE (rtlcs1,GND,GND,rtlc3n284,p_clk,m_i2c_data_7) ;
   DFFPCE (rtlcs0,GND,GND,rtlc3n284,p_clk,m_i2c_data_2) ;
   modgen_rom_ix89 : rom_new_0_i2c_av_config_main port map ( rd_data1(7)=>
      m_i2c_data_0, rd_data1(6)=>m_i2c_data_1, rd_data1(5)=>m_i2c_data_4, 
      rd_data1(4)=>m_i2c_data_6, rd_data1(3)=>m_i2c_data_9, rd_data1(2)=>
      m_i2c_data_10, rd_data1(1)=>m_i2c_data_11, rd_data1(0)=>m_i2c_data_12, 
      addr1(5)=>lut_index_5, addr1(4)=>lut_index_2(4), addr1(3)=>lut_index_3, 
      addr1(2)=>lut_index_1(2), addr1(1)=>lut_index_1(1), addr1(0)=>
      lut_index_1(0), rd_clk1=>p_clk, rd_ena1=>rtlc3n284, regce1=>PWR, rst1
      =>GND);
   u0 : i2c_ctrl_notri port map ( p_i2c_sdat=>GND, p_finish_xfr=>DANGLING(40
      ), p_i2c_data_4(2)=>m_i2c_data_2, p_i2c_data_4(1)=>m_i2c_data_1, 
      p_i2c_data_4(0)=>m_i2c_data_0, p_i2c_data_3(4)=>m_i2c_data_4, 
      p_i2c_data_2(7)=>m_i2c_data_7, p_i2c_data_2(6)=>m_i2c_data_6, 
      p_i2c_data_1(12)=>m_i2c_data_12, p_i2c_data_1(11)=>m_i2c_data_11, 
      p_i2c_data_1(10)=>m_i2c_data_10, p_i2c_data_1(9)=>m_i2c_data_9, 
      p_i2c_data_5(22)=>PWR, p_i2c_data_5(21)=>GND, p_i2c_sclk=>p_i2c_sclk, 
      p_start_xfr=>GND, p_reset_rtlc_164_and_32(2)=>reset_n, p_ack=>DANGLING
      (41), p_not_sdo=>p_u0_not_sdo, p_clock=>m_i2c_ctrl_clk);
end main_unfold_1971 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity fir_top is 
   port (
      clock_50 : IN std_logic ;
      clock_27 : IN std_logic ;
      key : IN std_logic_vector (3 DOWNTO 0) ;
      sw : IN std_logic_vector (17 DOWNTO 0) ;
      ledg : OUT std_logic_vector (8 DOWNTO 0) ;
      ledr : OUT std_logic_vector (17 DOWNTO 0) ;
      hex0 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex1 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex2 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex3 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex4 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex5 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex6 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex7 : OUT std_logic_vector (6 DOWNTO 0) ;
      aud_xck : OUT std_logic ;
      aud_bclk : INOUT std_logic ;
      aud_dacdat : OUT std_logic ;
      aud_daclrck : OUT std_logic ;
      aud_adclrck : OUT std_logic ;
      i2c_sdat : INOUT std_logic ;
      i2c_sclk : OUT std_logic) ;
end fir_top ;

architecture main of fir_top is 
   component sine_wave
      port (
         clk : IN std_logic ;
         freq_scale : IN std_logic_vector (6 DOWNTO 0) ;
         o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component audio_dac
      port (
         o_aud_bck : OUT std_logic ;
         o_aud_lrck : OUT std_logic ;
         clock_27 : IN std_logic ;
         reset_n : IN std_logic ;
         clock_18_4 : OUT std_logic) ;
   end component ;
   component mux_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_clock_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component rom_new_0_fir_top_main
      port (
         rd_data1 : OUT std_logic_vector (12 DOWNTO 0) ;
         addr1 : IN std_logic_vector (6 DOWNTO 0) ;
         rd_clk1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         regce1 : IN std_logic ;
         rst1 : IN std_logic) ;
   end component ;
   component i2c_av_config_notri
      port (
         p_u0_not_sdo : OUT std_logic ;
         p_i2c_sclk : OUT std_logic ;
         p_i2c_sdat : IN std_logic ;
         p_clk : IN std_logic) ;
   end component ;
   signal hex7_0_EXMPLR347, aud_adclrck_EXMPLR352: std_logic ;
   
   signal sine_data: std_logic_vector (15 DOWNTO 0) ;
   
   signal audio_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal bit_position: std_logic_vector (3 DOWNTO 0) ;
   
   signal hex7_6_EXMPLR355, hex7_1_EXMPLR356: std_logic ;
   
   signal rtlc_rdout_n1: std_logic_vector (11 DOWNTO 0) ;
   
   signal rtlc0_copy_n163, rtlc0_copy_n165, rtlc0_copy_n171, rtlc0_copy_n174, 
      rtlc0_copy_n196, rtlc0_copy_n198, rtlc0_copy_n204, rtlc0_copy_n207, 
      rtlc0_copy_n229, rtlc0_copy_n231, rtlc0_copy_n237, rtlc0_copy_n240, 
      rtlcs28, rtlcs29, rtlcs30, rtlcs31, rtlcs32, rtlcs33, rtlcs34, rtlcs35, 
      rtlcs36, rtlcs38, rtlcs39, rtlcs40, rtlcs41, rtlcs42, rtlcs44, rtlcs45, 
      rtlcs46, rtlcs47, rtlcs48, rtlcs49, rtlcs50, rtlcs51, rtlcs53, rtlcs55, 
      rtlcs56, rtlcs57, rtlcs58, rtlcs59, rtlcs60, rtlcs61, rtlcs62, rtlcs63, 
      rtlcs64, rtlcs66, rtlcs67, rtlcs68, rtlcs69, rtlcs70, rtlcs72, rtlcs73, 
      rtlcs74, rtlcs75, rtlcs76, rtlcs77, rtlcs78, rtlcs79, rtlcs81, rtlcs83, 
      rtlcs84, rtlcs85, rtlcs86, rtlcs87, rtlcs88, rtlcs89, rtlcs90, rtlcs91, 
      rtlcs92, rtlcs94, rtlcs95, rtlcs96, rtlcs97, rtlcs98, rtlcs100, 
      rtlcs101, rtlcs102, rtlcs103, rtlcs104, rtlcs105, rtlcs106, rtlcs107, 
      rtlcs109, rtlcs111, not_rtlc_rdout_n1_2, not_rtlc_rdout_n1_1, 
      not_rtlc_rdout_n1_3, not_rtlc_rdout_n1_0, not_rtlc_rdout_n1_6, 
      not_rtlc_rdout_n1_5, not_rtlc_rdout_n1_7, not_rtlc_rdout_n1_4, 
      not_rtlc_rdout_n1_10, not_rtlc_rdout_n1_9, not_rtlc_rdout_n1_11, 
      not_rtlc_rdout_n1_8, NOT_bit_position_3, NOT_bit_position_2, 
      NOT_bit_position_1, NOT_bit_position_0, u_i2c_av_config_u0_not_sdo: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (4 downto 0 );

begin
   hex7(6) <= hex7_6_EXMPLR355 ;
   hex7(2) <= hex7_1_EXMPLR356 ;
   hex7(1) <= hex7_1_EXMPLR356 ;
   hex7(0) <= hex7_0_EXMPLR347 ;
   aud_adclrck <= aud_adclrck_EXMPLR352 ;
   hex7_6_EXMPLR355 <= '1' ;
   hex7_1_EXMPLR356 <= '0' ;
   u_sine : sine_wave port map ( clk=>aud_adclrck_EXMPLR352, freq_scale(6)=>
      sw(6), freq_scale(5)=>sw(5), freq_scale(4)=>sw(4), freq_scale(3)=>
      sw(3), freq_scale(2)=>sw(2), freq_scale(1)=>sw(1), freq_scale(0)=>
      sw(0), o_data(15)=>sine_data(15), o_data(14)=>sine_data(14), 
      o_data(13)=>sine_data(13), o_data(12)=>sine_data(12), o_data(11)=>
      sine_data(11), o_data(10)=>sine_data(10), o_data(9)=>sine_data(9), 
      o_data(8)=>sine_data(8), o_data(7)=>sine_data(7), o_data(6)=>
      sine_data(6), o_data(5)=>sine_data(5), o_data(4)=>sine_data(4), 
      o_data(3)=>sine_data(3), o_data(2)=>sine_data(2), o_data(1)=>
      sine_data(1), o_data(0)=>sine_data(0));
   u_audio_dac : audio_dac port map ( o_aud_bck=>aud_bclk, o_aud_lrck=>
      aud_adclrck_EXMPLR352, clock_27=>clock_27, reset_n=>key(0), clock_18_4
      =>aud_xck);
   aud_daclrck <= aud_adclrck_EXMPLR352 ;
   aud_dacdat_mux_0 : mux_16u_16u port map ( a(15)=>audio_out(15), a(14)=>
      audio_out(14), a(13)=>audio_out(13), a(12)=>audio_out(12), a(11)=>
      audio_out(11), a(10)=>audio_out(10), a(9)=>audio_out(9), a(8)=>
      audio_out(8), a(7)=>audio_out(7), a(6)=>audio_out(6), a(5)=>
      audio_out(5), a(4)=>audio_out(4), a(3)=>audio_out(3), a(2)=>
      audio_out(2), a(1)=>audio_out(1), a(0)=>audio_out(0), b(15)=>
      hex7_1_EXMPLR356, b(14)=>hex7_1_EXMPLR356, b(13)=>hex7_1_EXMPLR356, 
      b(12)=>hex7_1_EXMPLR356, b(11)=>hex7_1_EXMPLR356, b(10)=>
      hex7_1_EXMPLR356, b(9)=>hex7_1_EXMPLR356, b(8)=>hex7_1_EXMPLR356, b(7)
      =>hex7_1_EXMPLR356, b(6)=>hex7_1_EXMPLR356, b(5)=>hex7_1_EXMPLR356, 
      b(4)=>hex7_1_EXMPLR356, b(3)=>NOT_bit_position_3, b(2)=>
      NOT_bit_position_2, b(1)=>NOT_bit_position_1, b(0)=>NOT_bit_position_0, 
      d=>aud_dacdat);
   hex0(6) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex0(5) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex0(4) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex0(3) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex0(2) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex0(1) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex0(0) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex1(6) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex1(5) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex1(4) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex1(3) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex1(2) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex1(1) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex1(0) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex2(6) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex2(5) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex2(4) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex2(3) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex2(2) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex2(1) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex2(0) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex3(6) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex3(5) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex3(4) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex3(3) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex3(2) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex3(1) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex3(0) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   hex6_or_0 : or_4u_4u port map ( a(3)=>rtlcs33, a(2)=>rtlcs36, a(1)=>
      rtlcs41, a(0)=>rtlcs47, d=>hex6(0));
   hex5_or_1 : or_4u_4u port map ( a(3)=>rtlcs61, a(2)=>rtlcs64, a(1)=>
      rtlcs69, a(0)=>rtlcs75, d=>hex5(0));
   hex4_or_2 : or_4u_4u port map ( a(3)=>rtlcs89, a(2)=>rtlcs92, a(1)=>
      rtlcs97, a(0)=>rtlcs103, d=>hex4(0));
   rtlc_107_or_66 : or_5u_5u port map ( a(4)=>rtlcs35, a(3)=>rtlcs45, a(2)=>
      rtlcs51, a(1)=>rtlcs53, a(0)=>rtlcs55, d=>rtlc0_copy_n163);
   rtlc_117_or_67 : or_5u_5u port map ( a(4)=>rtlcs28, a(3)=>rtlcs38, a(2)=>
      rtlcs39, a(1)=>rtlcs45, a(0)=>rtlcs49, d=>rtlc0_copy_n165);
   hex6_or_3 : or_4u_4u port map ( a(3)=>rtlcs29, a(2)=>rtlcs41, a(1)=>
      rtlcs44, a(0)=>rtlcs46, d=>hex6(3));
   hex6_or_4 : or_3u_3u port map ( a(2)=>rtlcs40, a(1)=>rtlcs46, a(0)=>
      rtlcs48, d=>hex6(4));
   rtlc_144_or_70 : or_5u_5u port map ( a(4)=>rtlcs28, a(3)=>rtlcs31, a(2)=>
      rtlcs40, a(1)=>rtlcs42, a(0)=>rtlcs50, d=>rtlc0_copy_n171);
   rtlc_156_or_71 : or_5u_5u port map ( a(4)=>rtlcs28, a(3)=>rtlcs30, a(2)=>
      rtlcs32, a(1)=>rtlcs34, a(0)=>rtlcs40, d=>rtlc0_copy_n174);
   rtlc_169_or_72 : or_5u_5u port map ( a(4)=>rtlcs63, a(3)=>rtlcs73, a(2)=>
      rtlcs79, a(1)=>rtlcs81, a(0)=>rtlcs83, d=>rtlc0_copy_n196);
   rtlc_179_or_73 : or_5u_5u port map ( a(4)=>rtlcs56, a(3)=>rtlcs66, a(2)=>
      rtlcs67, a(1)=>rtlcs73, a(0)=>rtlcs77, d=>rtlc0_copy_n198);
   hex5_or_5 : or_4u_4u port map ( a(3)=>rtlcs57, a(2)=>rtlcs69, a(1)=>
      rtlcs72, a(0)=>rtlcs74, d=>hex5(3));
   hex5_or_6 : or_3u_3u port map ( a(2)=>rtlcs68, a(1)=>rtlcs74, a(0)=>
      rtlcs76, d=>hex5(4));
   rtlc_206_or_76 : or_5u_5u port map ( a(4)=>rtlcs56, a(3)=>rtlcs59, a(2)=>
      rtlcs68, a(1)=>rtlcs70, a(0)=>rtlcs78, d=>rtlc0_copy_n204);
   rtlc_218_or_77 : or_5u_5u port map ( a(4)=>rtlcs56, a(3)=>rtlcs58, a(2)=>
      rtlcs60, a(1)=>rtlcs62, a(0)=>rtlcs68, d=>rtlc0_copy_n207);
   rtlc_231_or_78 : or_5u_5u port map ( a(4)=>rtlcs91, a(3)=>rtlcs101, a(2)
      =>rtlcs107, a(1)=>rtlcs109, a(0)=>rtlcs111, d=>rtlc0_copy_n229);
   rtlc_241_or_79 : or_5u_5u port map ( a(4)=>rtlcs84, a(3)=>rtlcs94, a(2)=>
      rtlcs95, a(1)=>rtlcs101, a(0)=>rtlcs105, d=>rtlc0_copy_n231);
   hex4_or_7 : or_4u_4u port map ( a(3)=>rtlcs85, a(2)=>rtlcs97, a(1)=>
      rtlcs100, a(0)=>rtlcs102, d=>hex4(3));
   hex4_or_8 : or_3u_3u port map ( a(2)=>rtlcs96, a(1)=>rtlcs102, a(0)=>
      rtlcs104, d=>hex4(4));
   rtlc_268_or_82 : or_5u_5u port map ( a(4)=>rtlcs84, a(3)=>rtlcs87, a(2)=>
      rtlcs96, a(1)=>rtlcs98, a(0)=>rtlcs106, d=>rtlc0_copy_n237);
   rtlc_280_or_83 : or_5u_5u port map ( a(4)=>rtlcs84, a(3)=>rtlcs86, a(2)=>
      rtlcs88, a(1)=>rtlcs90, a(0)=>rtlcs96, d=>rtlc0_copy_n240);
   hex6(1) <= NOT rtlc0_copy_n163 ;
   hex6(2) <= NOT rtlc0_copy_n165 ;
   hex6(5) <= NOT rtlc0_copy_n171 ;
   hex6(6) <= NOT rtlc0_copy_n174 ;
   hex5(1) <= NOT rtlc0_copy_n196 ;
   hex5(2) <= NOT rtlc0_copy_n198 ;
   hex5(5) <= NOT rtlc0_copy_n204 ;
   hex5(6) <= NOT rtlc0_copy_n207 ;
   hex4(1) <= NOT rtlc0_copy_n229 ;
   hex4(2) <= NOT rtlc0_copy_n231 ;
   hex4(5) <= NOT rtlc0_copy_n237 ;
   hex4(6) <= NOT rtlc0_copy_n240 ;
   rtlcs29 <= rtlcs28 AND rtlcs30 ;
   rtlcs33 <= rtlcs34 AND rtlcs32 ;
   rtlcs36 <= rtlc_rdout_n1(10) AND rtlcs35 ;
   rtlcs35 <= rtlcs38 AND rtlcs32 ;
   rtlcs41 <= rtlcs40 AND rtlcs42 ;
   rtlcs40 <= not_rtlc_rdout_n1_9 AND rtlcs39 ;
   rtlcs47 <= rtlcs46 AND rtlcs48 ;
   rtlcs46 <= rtlcs49 AND rtlcs38 ;
   rtlcs51 <= not_rtlc_rdout_n1_11 AND rtlcs50 ;
   rtlcs53 <= rtlc_rdout_n1(9) AND rtlcs48 ;
   rtlcs57 <= rtlcs56 AND rtlcs58 ;
   rtlcs61 <= rtlcs62 AND rtlcs60 ;
   rtlcs64 <= rtlc_rdout_n1(6) AND rtlcs63 ;
   rtlcs63 <= rtlcs66 AND rtlcs60 ;
   rtlcs69 <= rtlcs68 AND rtlcs70 ;
   rtlcs68 <= not_rtlc_rdout_n1_5 AND rtlcs67 ;
   rtlcs75 <= rtlcs74 AND rtlcs76 ;
   rtlcs74 <= rtlcs77 AND rtlcs66 ;
   rtlcs79 <= not_rtlc_rdout_n1_7 AND rtlcs78 ;
   rtlcs81 <= rtlc_rdout_n1(5) AND rtlcs76 ;
   rtlcs85 <= rtlcs84 AND rtlcs86 ;
   rtlcs89 <= rtlcs90 AND rtlcs88 ;
   rtlcs92 <= rtlc_rdout_n1(2) AND rtlcs91 ;
   rtlcs91 <= rtlcs94 AND rtlcs88 ;
   rtlcs97 <= rtlcs96 AND rtlcs98 ;
   rtlcs96 <= not_rtlc_rdout_n1_1 AND rtlcs95 ;
   rtlcs103 <= rtlcs102 AND rtlcs104 ;
   rtlcs102 <= rtlcs105 AND rtlcs94 ;
   rtlcs107 <= not_rtlc_rdout_n1_3 AND rtlcs106 ;
   rtlcs109 <= rtlc_rdout_n1(1) AND rtlcs104 ;
   not_rtlc_rdout_n1_2 <= NOT rtlc_rdout_n1(2) ;
   not_rtlc_rdout_n1_1 <= NOT rtlc_rdout_n1(1) ;
   not_rtlc_rdout_n1_3 <= NOT rtlc_rdout_n1(3) ;
   not_rtlc_rdout_n1_0 <= NOT rtlc_rdout_n1(0) ;
   rtlc_475_and_84 : and_3u_3u port map ( a(2)=>rtlc_rdout_n1(2), a(1)=>
      rtlc_rdout_n1(1), a(0)=>rtlc_rdout_n1(0), d=>rtlcs100);
   not_rtlc_rdout_n1_6 <= NOT rtlc_rdout_n1(6) ;
   not_rtlc_rdout_n1_5 <= NOT rtlc_rdout_n1(5) ;
   not_rtlc_rdout_n1_7 <= NOT rtlc_rdout_n1(7) ;
   not_rtlc_rdout_n1_4 <= NOT rtlc_rdout_n1(4) ;
   rtlc_512_and_85 : and_3u_3u port map ( a(2)=>rtlc_rdout_n1(6), a(1)=>
      rtlc_rdout_n1(5), a(0)=>rtlc_rdout_n1(4), d=>rtlcs72);
   not_rtlc_rdout_n1_10 <= NOT rtlc_rdout_n1(10) ;
   not_rtlc_rdout_n1_9 <= NOT rtlc_rdout_n1(9) ;
   not_rtlc_rdout_n1_11 <= NOT rtlc_rdout_n1(11) ;
   not_rtlc_rdout_n1_8 <= NOT rtlc_rdout_n1(8) ;
   rtlc_549_and_86 : and_3u_3u port map ( a(2)=>rtlc_rdout_n1(10), a(1)=>
      rtlc_rdout_n1(9), a(0)=>rtlc_rdout_n1(8), d=>rtlcs44);
   rtlcs90 <= not_rtlc_rdout_n1_2 AND rtlc_rdout_n1(1) ;
   rtlcs88 <= rtlc_rdout_n1(3) AND rtlc_rdout_n1(0) ;
   rtlcs94 <= not_rtlc_rdout_n1_1 AND rtlc_rdout_n1(0) ;
   rtlcs95 <= not_rtlc_rdout_n1_3 AND rtlc_rdout_n1(2) ;
   rtlcs98 <= rtlc_rdout_n1(2) AND not_rtlc_rdout_n1_0 ;
   rtlcs105 <= not_rtlc_rdout_n1_2 AND rtlc_rdout_n1(0) ;
   rtlcs104 <= not_rtlc_rdout_n1_3 AND rtlc_rdout_n1(0) ;
   rtlcs101 <= not_rtlc_rdout_n1_2 AND not_rtlc_rdout_n1_1 ;
   rtlcs106 <= not_rtlc_rdout_n1_1 AND not_rtlc_rdout_n1_0 ;
   rtlcs111 <= not_rtlc_rdout_n1_2 AND not_rtlc_rdout_n1_0 ;
   rtlcs84 <= rtlc_rdout_n1(3) AND not_rtlc_rdout_n1_2 ;
   rtlcs86 <= rtlc_rdout_n1(1) AND not_rtlc_rdout_n1_0 ;
   rtlcs87 <= rtlc_rdout_n1(3) AND rtlc_rdout_n1(1) ;
   rtlcs62 <= not_rtlc_rdout_n1_6 AND rtlc_rdout_n1(5) ;
   rtlcs60 <= rtlc_rdout_n1(7) AND rtlc_rdout_n1(4) ;
   rtlcs66 <= not_rtlc_rdout_n1_5 AND rtlc_rdout_n1(4) ;
   rtlcs67 <= not_rtlc_rdout_n1_7 AND rtlc_rdout_n1(6) ;
   rtlcs70 <= rtlc_rdout_n1(6) AND not_rtlc_rdout_n1_4 ;
   rtlcs77 <= not_rtlc_rdout_n1_6 AND rtlc_rdout_n1(4) ;
   rtlcs76 <= not_rtlc_rdout_n1_7 AND rtlc_rdout_n1(4) ;
   rtlcs73 <= not_rtlc_rdout_n1_6 AND not_rtlc_rdout_n1_5 ;
   rtlcs78 <= not_rtlc_rdout_n1_5 AND not_rtlc_rdout_n1_4 ;
   rtlcs83 <= not_rtlc_rdout_n1_6 AND not_rtlc_rdout_n1_4 ;
   rtlcs56 <= rtlc_rdout_n1(7) AND not_rtlc_rdout_n1_6 ;
   rtlcs58 <= rtlc_rdout_n1(5) AND not_rtlc_rdout_n1_4 ;
   rtlcs59 <= rtlc_rdout_n1(7) AND rtlc_rdout_n1(5) ;
   rtlcs34 <= not_rtlc_rdout_n1_10 AND rtlc_rdout_n1(9) ;
   rtlcs32 <= rtlc_rdout_n1(11) AND rtlc_rdout_n1(8) ;
   rtlcs38 <= not_rtlc_rdout_n1_9 AND rtlc_rdout_n1(8) ;
   rtlcs39 <= not_rtlc_rdout_n1_11 AND rtlc_rdout_n1(10) ;
   rtlcs42 <= rtlc_rdout_n1(10) AND not_rtlc_rdout_n1_8 ;
   rtlcs49 <= not_rtlc_rdout_n1_10 AND rtlc_rdout_n1(8) ;
   rtlcs48 <= not_rtlc_rdout_n1_11 AND rtlc_rdout_n1(8) ;
   rtlcs45 <= not_rtlc_rdout_n1_10 AND not_rtlc_rdout_n1_9 ;
   rtlcs50 <= not_rtlc_rdout_n1_9 AND not_rtlc_rdout_n1_8 ;
   rtlcs55 <= not_rtlc_rdout_n1_10 AND not_rtlc_rdout_n1_8 ;
   rtlcs28 <= rtlc_rdout_n1(11) AND not_rtlc_rdout_n1_10 ;
   rtlcs30 <= rtlc_rdout_n1(9) AND not_rtlc_rdout_n1_8 ;
   rtlcs31 <= rtlc_rdout_n1(11) AND rtlc_rdout_n1(9) ;
   modgen_counter_bit_position : counter_up_clock_0_4 port map ( clock=>
      aud_bclk, q(3)=>bit_position(3), q(2)=>bit_position(2), q(1)=>
      bit_position(1), q(0)=>bit_position(0), clk_en=>hex7_6_EXMPLR355, 
      aclear=>hex7_1_EXMPLR356, sload=>hex7_1_EXMPLR356, data(3)=>DANGLING(0
      ), data(2)=>DANGLING(1), data(1)=>DANGLING(2), data(0)=>DANGLING(3), 
      aset=>hex7_1_EXMPLR356, sclear=>hex7_1_EXMPLR356, updn=>
      hex7_6_EXMPLR355, cnt_en=>hex7_6_EXMPLR355);
   hex7(3) <= hex7_0_EXMPLR347 ;
   hex7(4) <= hex7_0_EXMPLR347 ;
   hex7(5) <= hex7_0_EXMPLR347 ;
   ledg(0) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledg(1) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledg(2) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledg(3) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledg(4) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledg(5) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledg(6) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledg(7) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledg(8) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(0) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(1) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(2) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(3) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(4) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(5) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(6) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(7) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(8) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(9) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(10) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(11) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(12) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(13) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(14) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(15) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(16) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   ledr(17) <= hex7_1_EXMPLR356 when hex7_1_EXMPLR356 = '1' else 'Z' ;
   DFFPC (sine_data(15),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(15)) ;
   DFFPC (sine_data(14),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(14)) ;
   DFFPC (sine_data(13),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(13)) ;
   DFFPC (sine_data(12),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(12)) ;
   DFFPC (sine_data(11),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(11)) ;
   DFFPC (sine_data(10),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(10)) ;
   DFFPC (sine_data(9),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(9)) ;
   DFFPC (sine_data(8),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(8)) ;
   DFFPC (sine_data(7),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(7)) ;
   DFFPC (sine_data(6),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(6)) ;
   DFFPC (sine_data(5),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(5)) ;
   DFFPC (sine_data(4),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(4)) ;
   DFFPC (sine_data(3),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(3)) ;
   DFFPC (sine_data(2),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(2)) ;
   DFFPC (sine_data(1),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(1)) ;
   DFFPC (sine_data(0),hex7_1_EXMPLR356,hex7_1_EXMPLR356,
   aud_adclrck_EXMPLR352,audio_out(0)) ;
   NOT_bit_position_3 <= NOT bit_position(3) ;
   NOT_bit_position_2 <= NOT bit_position(2) ;
   NOT_bit_position_1 <= NOT bit_position(1) ;
   NOT_bit_position_0 <= NOT bit_position(0) ;
   modgen_rom_ix301 : rom_new_0_fir_top_main port map ( rd_data1(12)=>
      hex7_0_EXMPLR347, rd_data1(11)=>rtlc_rdout_n1(11), rd_data1(10)=>
      rtlc_rdout_n1(10), rd_data1(9)=>rtlc_rdout_n1(9), rd_data1(8)=>
      rtlc_rdout_n1(8), rd_data1(7)=>rtlc_rdout_n1(7), rd_data1(6)=>
      rtlc_rdout_n1(6), rd_data1(5)=>rtlc_rdout_n1(5), rd_data1(4)=>
      rtlc_rdout_n1(4), rd_data1(3)=>rtlc_rdout_n1(3), rd_data1(2)=>
      rtlc_rdout_n1(2), rd_data1(1)=>rtlc_rdout_n1(1), rd_data1(0)=>
      rtlc_rdout_n1(0), addr1(6)=>sw(6), addr1(5)=>sw(5), addr1(4)=>sw(4), 
      addr1(3)=>sw(3), addr1(2)=>sw(2), addr1(1)=>sw(1), addr1(0)=>sw(0), 
      rd_clk1=>DANGLING(4), rd_ena1=>hex7_6_EXMPLR355, regce1=>
      hex7_6_EXMPLR355, rst1=>hex7_1_EXMPLR356);
   i2c_sdat <= hex7_1_EXMPLR356 when u_i2c_av_config_u0_not_sdo
    = '1' else 'Z' ;
   u_i2c_av_config : i2c_av_config_notri port map ( p_u0_not_sdo=>
      u_i2c_av_config_u0_not_sdo, p_i2c_sclk=>i2c_sclk, p_i2c_sdat=>
      hex7_1_EXMPLR356, p_clk=>clock_27);
end main ;

