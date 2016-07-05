
-- 
-- Definition of  fir_top
-- 
--      05/31/15 16:32:05
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_0 is 
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
end modgen_counter_16_0 ;

architecture IMPLEMENTATION of modgen_counter_16_0 is 
   signal q_15_EXMPLR374, q_14_EXMPLR375, q_13_EXMPLR376, q_12_EXMPLR377, 
      q_11_EXMPLR378, q_10_EXMPLR379, q_9_EXMPLR380, q_8_EXMPLR381, 
      q_7_EXMPLR382, q_6_EXMPLR383, q_5_EXMPLR384, q_4_EXMPLR385, 
      q_3_EXMPLR386, q_2_EXMPLR387, q_1_EXMPLR388, q_0_EXMPLR389, nx51271z1, 
      nx22081z16, nx52268z1, nx22081z15, nx53265z1, nx22081z14, nx54262z1, 
      nx22081z13, nx55259z1, nx22081z12, nx56256z1, nx22081z11, nx57253z1, 
      nx22081z10, nx58250z1, nx22081z9, nx59247z1, nx22081z8, nx60244z1, 
      nx22081z7, nx17096z1, nx22081z6, nx18093z1, nx22081z5, nx19090z1, 
      nx22081z4, nx20087z1, nx22081z3, nx21084z1, nx22081z2, nx22081z1, 
      nx_modgen_counter_16_0_vcc_net: std_logic ;

begin
   q(15) <= q_15_EXMPLR374 ;
   q(14) <= q_14_EXMPLR375 ;
   q(13) <= q_13_EXMPLR376 ;
   q(12) <= q_12_EXMPLR377 ;
   q(11) <= q_11_EXMPLR378 ;
   q(10) <= q_10_EXMPLR379 ;
   q(9) <= q_9_EXMPLR380 ;
   q(8) <= q_8_EXMPLR381 ;
   q(7) <= q_7_EXMPLR382 ;
   q(6) <= q_6_EXMPLR383 ;
   q(5) <= q_5_EXMPLR384 ;
   q(4) <= q_4_EXMPLR385 ;
   q(3) <= q_3_EXMPLR386 ;
   q(2) <= q_2_EXMPLR387 ;
   q(1) <= q_1_EXMPLR388 ;
   q(0) <= q_0_EXMPLR389 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>q_9_EXMPLR380, datain=>
      nx60244z1, clk=>clock, ena=>cnt_en);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>q_8_EXMPLR381, datain=>
      nx59247z1, clk=>clock, ena=>cnt_en);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>q_7_EXMPLR382, datain=>
      nx58250z1, clk=>clock, ena=>cnt_en);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>q_6_EXMPLR383, datain=>
      nx57253z1, clk=>clock, ena=>cnt_en);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>q_5_EXMPLR384, datain=>
      nx56256z1, clk=>clock, ena=>cnt_en);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>q_4_EXMPLR385, datain=>
      nx55259z1, clk=>clock, ena=>cnt_en);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>q_3_EXMPLR386, datain=>
      nx54262z1, clk=>clock, ena=>cnt_en);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>q_2_EXMPLR387, datain=>
      nx53265z1, clk=>clock, ena=>cnt_en);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>q_15_EXMPLR374, datain=>
      nx22081z1, clk=>clock, ena=>cnt_en);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>q_14_EXMPLR375, datain=>
      nx21084z1, clk=>clock, ena=>cnt_en);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>q_13_EXMPLR376, datain=>
      nx20087z1, clk=>clock, ena=>cnt_en);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>q_12_EXMPLR377, datain=>
      nx19090z1, clk=>clock, ena=>cnt_en);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>q_11_EXMPLR378, datain=>
      nx18093z1, clk=>clock, ena=>cnt_en);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>q_10_EXMPLR379, datain=>
      nx17096z1, clk=>clock, ena=>cnt_en);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>q_1_EXMPLR388, datain=>
      nx52268z1, clk=>clock, ena=>cnt_en);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>q_0_EXMPLR389, datain=>
      nx51271z1, clk=>clock, ena=>cnt_en);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx22081z14, dataa=>q_2_EXMPLR387, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z15);
   nx_modgen_counter_16_0_vcc_net <= '1';
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx22081z1, dataa=>q_15_EXMPLR374, datad=>
      nx_modgen_counter_16_0_vcc_net, cin=>nx22081z2);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21084z1, cout=>nx22081z2, dataa=>q_14_EXMPLR375, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z3);
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx20087z1, cout=>nx22081z3, dataa=>q_13_EXMPLR376, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z4);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, cout=>nx22081z4, dataa=>q_12_EXMPLR377, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z5);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx22081z5, dataa=>q_11_EXMPLR378, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z6);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx22081z6, dataa=>q_10_EXMPLR379, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z7);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx22081z7, dataa=>q_9_EXMPLR380, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z8);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx22081z15, dataa=>q_1_EXMPLR388, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z16);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx22081z8, dataa=>q_8_EXMPLR381, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z9);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx22081z9, dataa=>q_7_EXMPLR382, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z10);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx22081z10, dataa=>q_6_EXMPLR383, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z11);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx22081z11, dataa=>q_5_EXMPLR384, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z12);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx22081z12, dataa=>q_4_EXMPLR385, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z13);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx22081z13, dataa=>q_3_EXMPLR386, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z14);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx22081z16, dataa=>q_0_EXMPLR389, 
      datad=>nx_modgen_counter_16_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_1 is 
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
end modgen_counter_16_1 ;

architecture IMPLEMENTATION of modgen_counter_16_1 is 
   signal nx1963z1, nx19090z3, nx19090z5, nx19090z7, nx19090z9, nx19090z11, 
      nx19090z13, nx19090z15, nx19090z17, nx19090z19, nx19090z21, nx19090z23, 
      nx19090z25, nx51271z1, nx19090z24, nx52268z1, nx19090z22, nx53265z1, 
      nx19090z20, nx54262z1, nx19090z18, nx55259z1, nx19090z16, nx56256z1, 
      nx19090z14, nx57253z1, nx19090z12, nx58250z1, nx19090z10, nx59247z1, 
      nx19090z8, nx60244z1, nx19090z6, nx17096z1, nx19090z4, nx18093z1, 
      nx19090z2, nx19090z1, nx_modgen_counter_16_1_vcc_net: std_logic ;

begin
   q(12) <= nx1963z1 ;
   q(11) <= nx19090z3 ;
   q(10) <= nx19090z5 ;
   q(9) <= nx19090z7 ;
   q(8) <= nx19090z9 ;
   q(7) <= nx19090z11 ;
   q(6) <= nx19090z13 ;
   q(5) <= nx19090z15 ;
   q(4) <= nx19090z17 ;
   q(3) <= nx19090z19 ;
   q(2) <= nx19090z21 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx19090z7, datain=>
      nx60244z1, clk=>clock, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx19090z9, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx19090z11, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx19090z13, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx19090z15, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx19090z17, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx19090z19, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx19090z21, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx1963z1, datain=>
      nx19090z1, clk=>clock, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx19090z3, datain=>
      nx18093z1, clk=>clock, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx19090z5, datain=>
      nx17096z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx19090z23, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx19090z25, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix19090z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, dataa=>nx1963z1, datad=>
      nx_modgen_counter_16_1_vcc_net, cin=>nx19090z2);
   nx_modgen_counter_16_1_vcc_net <= '1';
   ix19090z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx19090z2, dataa=>nx19090z3, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z4);
   ix19090z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx19090z4, dataa=>nx19090z5, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z6);
   ix19090z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx19090z6, dataa=>nx19090z7, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z8);
   ix19090z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx19090z22, dataa=>nx19090z23, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z24);
   ix19090z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx19090z8, dataa=>nx19090z9, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z10);
   ix19090z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx19090z10, dataa=>nx19090z11, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z12);
   ix19090z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx19090z12, dataa=>nx19090z13, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z14);
   ix19090z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx19090z14, dataa=>nx19090z15, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z16);
   ix19090z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx19090z24, dataa=>nx19090z25, 
      datad=>nx_modgen_counter_16_1_vcc_net);
   ix19090z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx19090z16, dataa=>nx19090z17, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z18);
   ix19090z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx19090z18, dataa=>nx19090z19, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z20);
   ix19090z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx19090z20, dataa=>nx19090z21, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z22);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_5_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (4 DOWNTO 0) ;
      b : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic_vector (4 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_5_0 ;

architecture IMPLEMENTATION of sub_5_0 is 
   signal nx41961z11, nx41961z8, nx41961z5, nx41961z3, nx_sub_5_0_vcc_net: 
   std_logic ;

begin
   ix41961z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), dataa=>b(4), datad=>nx_sub_5_0_vcc_net, cin
      =>nx41961z3);
   nx_sub_5_0_vcc_net <= '1';
   ix41961z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5af5",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx41961z3, dataa=>b(3), datad=>
      nx_sub_5_0_vcc_net, cin=>nx41961z5);
   ix41961z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx41961z5, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_5_0_vcc_net, cin=>nx41961z8);
   ix41961z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx41961z8, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_5_0_vcc_net, cin=>nx41961z11);
   ix41961z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx41961z11, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_5_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_6_0 is 
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
      cnt_en : IN std_logic ;
      p_p_reset : IN std_logic ;
      p_p_clk : IN std_logic ;
      p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
      px765 : IN std_logic ;
      p_p_clock : IN std_logic) ;
end modgen_counter_6_0 ;

architecture IMPLEMENTATION of modgen_counter_6_0 is 
   signal nx55259z3, nx64583z1, nx56256z3, nx56256z5, nx56256z7, nx56256z9, 
      nx56256z11, nx51271z1, nx56256z10, nx52268z1, nx56256z8, nx53265z1, 
      nx56256z6, nx54262z1, nx56256z4, nx55259z1, nx56256z2, nx56256z1, 
      nx56256z12, nx55259z2, nx54262z2, nx53265z2, nx52268z2, nx51271z2, 
      nx_modgen_counter_6_0_vcc_net: std_logic ;

begin
   q(5) <= nx64583z1 ;
   q(4) <= nx56256z3 ;
   q(3) <= nx56256z5 ;
   q(2) <= nx56256z7 ;
   q(1) <= nx56256z9 ;
   q(0) <= nx56256z11 ;
   nx56256z12 <= '1';
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx64583z1, datain=>
      nx56256z1, sdata=>nx56256z12, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx55259z2 <= '1';
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx56256z3, datain=>
      nx55259z1, sdata=>nx55259z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx54262z2 <= '1';
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx56256z5, datain=>
      nx54262z1, sdata=>nx54262z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx53265z2 <= '1';
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx56256z7, datain=>
      nx53265z1, sdata=>nx53265z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx52268z2 <= '1';
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx56256z9, datain=>
      nx52268z1, sdata=>nx52268z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx51271z2 <= '1';
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx56256z11, datain=>
      nx51271z1, sdata=>nx51271z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   ix56256z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx56256z6, dataa=>nx56256z7, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z8);
   nx_modgen_counter_6_0_vcc_net <= '1';
   ix56256z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx56256z8, dataa=>nx56256z9, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z10);
   ix56256z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, dataa=>nx64583z1, datad=>
      nx_modgen_counter_6_0_vcc_net, cin=>nx56256z2);
   ix56256z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx56256z2, dataa=>nx56256z3, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z4);
   ix56256z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx56256z4, dataa=>nx56256z5, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z6);
   ix56256z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx56256z10, dataa=>nx56256z11, 
      datad=>nx_modgen_counter_6_0_vcc_net);
   ix55259z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0d00") 
       port map ( combout=>nx55259z3, dataa=>p_p_reset, datab=>cnt_en, datac
      =>p_p_clock, datad=>px765);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
      p_clock : IN std_logic ;
      p_sdo : OUT std_logic ;
      p_p_clk : IN std_logic ;
      p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
      p_not_reset_n : IN std_logic ;
      px362 : IN std_logic) ;
end i2c_ctrl_notri ;

architecture main_unfold_1393 of i2c_ctrl_notri is 
   component sub_5_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (4 DOWNTO 0) ;
         b : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic_vector (4 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_6_0
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
         cnt_en : IN std_logic ;
         p_p_reset : IN std_logic ;
         p_p_clk : IN std_logic ;
         p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
         px765 : IN std_logic ;
         p_p_clock : IN std_logic) ;
   end component ;
   signal sd_counter_4, sd_counter_3, sd_counter_2, sd_counter_1, 
      sd_counter_0: std_logic ;
   
   signal sdo_5n5s2: std_logic_vector (4 DOWNTO 0) ;
   
   signal sd_counter_5, nx41315z14, nx41315z16, nx41315z21, nx41315z12, 
      nx41315z13, nx41315z17, sdo_5n5s2f1_0, sdo_5n5s2f1_1, nx41315z4, 
      nx7286z1, nx41315z19, nx44942z2, nx22137z1, nx44942z7, nx41315z2, 
      nx44942z4, nx44942z5, nx22137z2, nx44942z8, nx41315z15, nx41315z8, 
      nx41315z7, nx44942z6, nx41315z5, nx41315z10, nx41315z3, nx41315z22, 
      nx43379z2, nx43379z3, nx41315z9, nx41315z11, nx41315z18, nx41315z6, 
      nx7286z2, nx43379z4, nx51857z1, nx41315z1, nx43379z1, nx44942z1, 
      nx44942z3, nx41315z20: std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   sdo_sub5_5i2 : sub_5_0 port map ( cin=>DANGLING(0), a(4)=>DANGLING(1), 
      a(3)=>DANGLING(2), a(2)=>nx22137z1, a(1)=>sdo_5n5s2f1_1, a(0)=>
      sdo_5n5s2f1_0, b(4)=>sd_counter_4, b(3)=>sd_counter_3, b(2)=>
      sd_counter_2, b(1)=>sd_counter_1, b(0)=>sd_counter_0, d(4)=>
      sdo_5n5s2(4), d(3)=>sdo_5n5s2(3), d(2)=>sdo_5n5s2(2), d(1)=>
      sdo_5n5s2(1), d(0)=>sdo_5n5s2(0), cout=>DANGLING(3));
   modgen_counter_sd_counter : modgen_counter_6_0 port map ( clock=>p_clock, 
      q(5)=>sd_counter_5, q(4)=>sd_counter_4, q(3)=>sd_counter_3, q(2)=>
      sd_counter_2, q(1)=>sd_counter_1, q(0)=>sd_counter_0, clk_en=>DANGLING
      (4), aclear=>DANGLING(5), sload=>p_not_reset_n, data(5)=>DANGLING(6), 
      data(4)=>DANGLING(7), data(3)=>DANGLING(8), data(2)=>DANGLING(9), 
      data(1)=>DANGLING(10), data(0)=>DANGLING(11), aset=>DANGLING(12), 
      sclear=>DANGLING(13), updn=>DANGLING(14), cnt_en=>nx7286z1, p_p_reset
      =>p_reset_rtlc_164_and_32(2), p_p_clk=>p_p_clk, 
      p_m_i2c_ctrl_clk_dup_364=>DANGLING(15), px765=>px362, p_p_clock=>
      p_clock);
   p_sdo <= NOT nx51857z1;
   reg_sdo : cycloneii_lcell_ff port map ( regout=>nx51857z1, datain=>
      nx41315z1, clk=>p_p_clk, ena=>nx41315z19, sclr=>p_not_reset_n);
   reg_sclk : cycloneii_lcell_ff port map ( regout=>nx43379z1, datain=>
      nx44942z1, clk=>p_p_clk, ena=>nx44942z2, sclr=>p_not_reset_n);
   ix43379z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx43379z4, dataa=>sd_counter_3, datab=>
      sd_counter_1, datac=>sd_counter_0);
   ix7286z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx7286z2, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_1);
   ix41315z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0504") 
       port map ( combout=>nx41315z6, dataa=>sd_counter_4, datab=>
      sd_counter_1, datac=>sd_counter_5, datad=>nx44942z5);
   ix41315z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx41315z18, dataa=>sdo_5n5s2(1), datab=>
      sdo_5n5s2(2), datac=>sdo_5n5s2(4), datad=>sdo_5n5s2(0));
   ix41315z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx41315z11, dataa=>nx41315z12, datab=>nx41315z13, 
      datac=>nx41315z15);
   ix43379z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"040c") 
       port map ( combout=>nx43379z3, dataa=>sd_counter_4, datab=>
      sd_counter_2, datac=>sd_counter_5, datad=>nx43379z4);
   ix43379z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"000e") 
       port map ( combout=>nx43379z2, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix41315z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx41315z22, dataa=>nx41315z14, datab=>
      sd_counter_0, datac=>nx44942z7, datad=>nx41315z15);
   ix41315z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff74") 
       port map ( combout=>nx41315z3, dataa=>nx41315z4, datab=>nx22137z1, 
      datac=>nx41315z5, datad=>nx41315z6);
   ix41315z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx41315z5, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>nx44942z4, datad=>nx43379z4);
   ix44942z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5557") 
       port map ( combout=>nx44942z6, dataa=>p_reset_rtlc_164_and_32(2), 
      datab=>sd_counter_5, datac=>nx44942z7, datad=>nx44942z8);
   ix41315z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f0") 
       port map ( combout=>nx41315z7, dataa=>sdo_5n5s2(1), datab=>nx41315z2, 
      datac=>nx41315z8, datad=>nx41315z10);
   ix41315z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>nx41315z8, dataa=>sdo_5n5s2(3), datab=>nx41315z3, 
      datac=>nx41315z9);
   ix41315z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccce") 
       port map ( combout=>nx41315z15, dataa=>nx41315z16, datab=>nx41315z17, 
      datac=>sd_counter_4, datad=>sd_counter_0);
   ix44942z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx44942z8, dataa=>sd_counter_4, datab=>
      sd_counter_2);
   ix22137z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"a888") 
       port map ( combout=>nx22137z2, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>sd_counter_1, datad=>sd_counter_0);
   ix44942z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx44942z5, dataa=>sd_counter_3, datab=>
      sd_counter_2);
   ix44942z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx44942z4, dataa=>sd_counter_4, datab=>
      sd_counter_5);
   ix41315z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx41315z2, dataa=>sdo_5n5s2(3), datab=>nx41315z3
   );
   ix44942z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx44942z7, dataa=>sd_counter_3, datab=>
      sd_counter_1);
   ix22137z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffa8") 
       port map ( combout=>nx22137z1, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix44942z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff01") 
       port map ( combout=>nx44942z3, dataa=>sd_counter_0, datab=>nx44942z4, 
      datac=>nx44942z5, datad=>nx44942z6);
   ix41315z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"5f1f") 
       port map ( combout=>nx41315z20, dataa=>nx41315z21, datab=>nx41315z4, 
      datac=>p_reset_rtlc_164_and_32(2), datad=>nx41315z22);
   ix7286z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f7") 
       port map ( combout=>nx7286z1, dataa=>sd_counter_0, datab=>
      sd_counter_5, datac=>nx7286z2);
   ix41315z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx41315z4, dataa=>sd_counter_5, datab=>nx7286z2);
   ix22137z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1302") 
       port map ( combout=>sdo_5n5s2f1_0, dataa=>sd_counter_4, datab=>
      sd_counter_5, datac=>nx44942z5, datad=>nx22137z2);
   ix41315z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx41315z1, dataa=>nx41315z2, datab=>nx41315z7, 
      datac=>nx41315z11, datad=>nx41315z18);
   ix44942z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx44942z1, dataa=>sd_counter_1, datab=>
      sd_counter_0);
   ix41315z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx41315z17, dataa=>nx41315z14, datab=>
      sd_counter_3, datac=>sd_counter_1, datad=>sd_counter_0);
   ix41315z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx41315z13, dataa=>nx41315z14, datab=>
      sd_counter_3, datac=>sd_counter_1, datad=>sd_counter_0);
   ix41315z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx41315z12, dataa=>sd_counter_2, datab=>
      sd_counter_0, datac=>nx44942z7, datad=>nx44942z4);
   ix43379z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7773") 
       port map ( combout=>p_i2c_sclk, dataa=>p_clock, datab=>nx43379z1, 
      datac=>nx43379z2, datad=>nx43379z3);
   ix41315z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx41315z21, dataa=>sd_counter_1, datab=>
      sd_counter_0, datac=>nx44942z4, datad=>nx44942z5);
   ix41315z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx41315z16, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>sd_counter_1);
   ix41315z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx41315z14, dataa=>sd_counter_4, datab=>
      sd_counter_2, datac=>sd_counter_5);
   ix22137z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0057") 
       port map ( combout=>sdo_5n5s2f1_1, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix41315z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"1212") 
       port map ( combout=>nx41315z10, dataa=>sdo_5n5s2(4), datab=>
      sdo_5n5s2(2), datac=>sdo_5n5s2(0));
   ix41315z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"2022") 
       port map ( combout=>nx41315z9, dataa=>sdo_5n5s2(2), datab=>
      sdo_5n5s2(1), datac=>sdo_5n5s2(4), datad=>sdo_5n5s2(0));
   ix41315z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx41315z19, dataa=>nx41315z20, datab=>p_clock, 
      datac=>px362);
   ix44942z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx44942z2, dataa=>nx44942z3, datab=>p_clock, 
      datac=>px362);
end main_unfold_1393 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity i2c_av_config_notri is 
   port (
      p_u0_not_sdo : OUT std_logic ;
      p_i2c_sclk : OUT std_logic ;
      p_i2c_sdat : IN std_logic ;
      p_clk : IN std_logic ;
      p_sdo : OUT std_logic) ;
end i2c_av_config_notri ;

architecture main_unfold_1971 of i2c_av_config_notri is 
   component modgen_counter_16_0
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
   component modgen_counter_16_1
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
         p_clock : IN std_logic ;
         p_sdo : OUT std_logic ;
         p_p_clk : IN std_logic ;
         p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
         p_not_reset_n : IN std_logic ;
         px362 : IN std_logic) ;
   end component ;
   signal cont: std_logic_vector (15 DOWNTO 0) ;
   
   signal m_i2c_clk_div_5, m_i2c_clk_div_4, m_i2c_clk_div_3, m_i2c_clk_div_2, 
      reset_n, m_i2c_clk_div_12, m_i2c_clk_div_11, m_i2c_clk_div_10, 
      m_i2c_clk_div_9, m_i2c_clk_div_6, m_i2c_clk_div_7, m_i2c_clk_div_8, 
      m_i2c_ctrl_clk, nx23875z1, nx2692z2, not_reset_n, nx35560z1, nx2692z1, 
      nx17807z2, nx35560z2, nx35560z3, nx35560z4, nx2692z3, nx2692z4, 
      nx17807z1, nx2692z5, nx51161z1: std_logic ;
   
   signal DANGLING : std_logic_vector (66 downto 0 );

begin
   modgen_counter_cont : modgen_counter_16_0 port map ( clock=>p_clk, q(15)
      =>cont(15), q(14)=>cont(14), q(13)=>cont(13), q(12)=>cont(12), q(11)=>
      cont(11), q(10)=>cont(10), q(9)=>cont(9), q(8)=>cont(8), q(7)=>cont(7), 
      q(6)=>cont(6), q(5)=>cont(5), q(4)=>cont(4), q(3)=>cont(3), q(2)=>
      cont(2), q(1)=>cont(1), q(0)=>cont(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(15)=>DANGLING(3), data(14)=>
      DANGLING(4), data(13)=>DANGLING(5), data(12)=>DANGLING(6), data(11)=>
      DANGLING(7), data(10)=>DANGLING(8), data(9)=>DANGLING(9), data(8)=>
      DANGLING(10), data(7)=>DANGLING(11), data(6)=>DANGLING(12), data(5)=>
      DANGLING(13), data(4)=>DANGLING(14), data(3)=>DANGLING(15), data(2)=>
      DANGLING(16), data(1)=>DANGLING(17), data(0)=>DANGLING(18), aset=>
      DANGLING(19), sclear=>DANGLING(20), updn=>DANGLING(21), cnt_en=>
      nx35560z1);
   modgen_counter_m_i2c_clk_div : modgen_counter_16_1 port map ( clock=>
      p_clk, q(15)=>DANGLING(22), q(14)=>DANGLING(23), q(13)=>DANGLING(24), 
      q(12)=>m_i2c_clk_div_12, q(11)=>m_i2c_clk_div_11, q(10)=>
      m_i2c_clk_div_10, q(9)=>m_i2c_clk_div_9, q(8)=>m_i2c_clk_div_8, q(7)=>
      m_i2c_clk_div_7, q(6)=>m_i2c_clk_div_6, q(5)=>m_i2c_clk_div_5, q(4)=>
      m_i2c_clk_div_4, q(3)=>m_i2c_clk_div_3, q(2)=>m_i2c_clk_div_2, q(1)=>
      DANGLING(25), q(0)=>DANGLING(26), clk_en=>DANGLING(27), aclear=>
      DANGLING(28), sload=>DANGLING(29), data(15)=>DANGLING(30), data(14)=>
      DANGLING(31), data(13)=>DANGLING(32), data(12)=>DANGLING(33), data(11)
      =>DANGLING(34), data(10)=>DANGLING(35), data(9)=>DANGLING(36), data(8)
      =>DANGLING(37), data(7)=>DANGLING(38), data(6)=>DANGLING(39), data(5)
      =>DANGLING(40), data(4)=>DANGLING(41), data(3)=>DANGLING(42), data(2)
      =>DANGLING(43), data(1)=>DANGLING(44), data(0)=>DANGLING(45), aset=>
      DANGLING(46), sclear=>nx23875z1, updn=>DANGLING(47), cnt_en=>DANGLING(
      48));
   u0 : i2c_ctrl_notri port map ( p_i2c_sdat=>DANGLING(49), p_finish_xfr=>
      DANGLING(50), p_i2c_data_4(2)=>DANGLING(51), p_i2c_data_4(1)=>DANGLING
      (52), p_i2c_data_4(0)=>DANGLING(53), p_i2c_data_3(4)=>DANGLING(54), 
      p_i2c_data_2(7)=>DANGLING(55), p_i2c_data_2(6)=>DANGLING(56), 
      p_i2c_data_1(12)=>DANGLING(57), p_i2c_data_1(11)=>DANGLING(58), 
      p_i2c_data_1(10)=>DANGLING(59), p_i2c_data_1(9)=>DANGLING(60), 
      p_i2c_data_5(22)=>DANGLING(61), p_i2c_data_5(21)=>DANGLING(62), 
      p_i2c_sclk=>p_i2c_sclk, p_start_xfr=>DANGLING(63), 
      p_reset_rtlc_164_and_32(2)=>reset_n, p_ack=>DANGLING(64), p_not_sdo=>
      DANGLING(65), p_clock=>m_i2c_ctrl_clk, p_sdo=>p_sdo, p_p_clk=>p_clk, 
      p_m_i2c_ctrl_clk_dup_364=>DANGLING(66), p_not_reset_n=>not_reset_n, 
      px362=>nx51161z1);
   not_reset_n <= NOT reset_n;
   reg_reset_n : cycloneii_lcell_ff port map ( regout=>reset_n, datain=>
      nx17807z1, clk=>p_clk);
   reg_m_i2c_ctrl_clk : cycloneii_lcell_ff port map ( regout=>m_i2c_ctrl_clk, 
      datain=>nx2692z1, clk=>p_clk, sclr=>not_reset_n);
   ix2692z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx2692z5, dataa=>m_i2c_clk_div_11, datab=>
      m_i2c_clk_div_10, datac=>m_i2c_clk_div_9);
   ix17807z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17807z1, dataa=>nx17807z2, datab=>nx35560z2, 
      datac=>nx35560z3, datad=>nx35560z4);
   ix2692z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx2692z4, dataa=>m_i2c_clk_div_11, datab=>
      m_i2c_clk_div_6, datac=>m_i2c_clk_div_7, datad=>m_i2c_clk_div_8);
   ix2692z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx2692z3, dataa=>m_i2c_clk_div_5, datab=>
      m_i2c_clk_div_4, datac=>m_i2c_clk_div_3, datad=>m_i2c_clk_div_2);
   ix35560z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z4, dataa=>cont(12), datab=>cont(13), 
      datac=>cont(14), datad=>cont(15));
   ix35560z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z3, dataa=>cont(8), datab=>cont(9), datac
      =>cont(10), datad=>cont(11));
   ix35560z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z2, dataa=>cont(4), datab=>cont(5), datac
      =>cont(6), datad=>cont(7));
   ix17807z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17807z2, dataa=>cont(0), datab=>cont(1), datac
      =>cont(2), datad=>cont(3));
   ix2692z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx2692z1, dataa=>nx2692z2, datab=>m_i2c_ctrl_clk
   );
   ix2692z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffec") 
       port map ( combout=>nx2692z2, dataa=>nx2692z3, datab=>
      m_i2c_clk_div_12, datac=>nx2692z4, datad=>nx2692z5);
   ix23875z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>nx23875z1, dataa=>reset_n, datab=>nx2692z2);
   ix35560z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx35560z1, dataa=>nx17807z2, datab=>nx35560z2, 
      datac=>nx35560z3, datad=>nx35560z4);
   ix51161z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx51161z1, dataa=>reset_n, datab=>m_i2c_ctrl_clk, 
      datac=>nx2692z2);
end main_unfold_1971 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z23, nx45949z20, nx45949z17, nx45949z14, nx45949z11, 
      nx45949z8, nx45949z5, nx45949z3, nx_add_9_0_vcc_net: std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), dataa=>a(8), datad=>nx_add_9_0_vcc_net, cin
      =>nx45949z3);
   nx_add_9_0_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>a(7), datad=>
      nx_add_9_0_vcc_net, cin=>nx45949z5);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z5, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z8);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z8, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z11);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z11, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z14);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z14, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z17);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z17, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z20);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z20, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z23);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"99ee") 
       port map ( combout=>d(0), cout=>nx45949z23, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_9_0 is 
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
end modgen_counter_9_0 ;

architecture IMPLEMENTATION of modgen_counter_9_0 is 
   signal nx2038z1, nx59247z3, nx59247z5, nx59247z7, nx59247z9, nx59247z11, 
      nx59247z13, nx59247z15, nx59247z17, nx51271z1, nx59247z16, nx52268z1, 
      nx59247z14, nx53265z1, nx59247z12, nx54262z1, nx59247z10, nx55259z1, 
      nx59247z8, nx56256z1, nx59247z6, nx57253z1, nx59247z4, nx58250z1, 
      nx59247z2, nx59247z1, nx_modgen_counter_9_0_vcc_net: std_logic ;

begin
   q(8) <= nx2038z1 ;
   q(7) <= nx59247z3 ;
   q(6) <= nx59247z5 ;
   q(5) <= nx59247z7 ;
   q(4) <= nx59247z9 ;
   q(3) <= nx59247z11 ;
   q(2) <= nx59247z13 ;
   q(1) <= nx59247z15 ;
   q(0) <= nx59247z17 ;
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx2038z1, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx59247z3, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx59247z5, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx59247z7, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx59247z9, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx59247z11, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx59247z13, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx59247z15, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx59247z17, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix59247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx59247z12, dataa=>nx59247z13, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z14);
   nx_modgen_counter_9_0_vcc_net <= '1';
   ix59247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, dataa=>nx2038z1, datad=>
      nx_modgen_counter_9_0_vcc_net, cin=>nx59247z2);
   ix59247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx59247z2, dataa=>nx59247z3, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z4);
   ix59247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx59247z4, dataa=>nx59247z5, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z6);
   ix59247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx59247z14, dataa=>nx59247z15, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z16);
   ix59247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx59247z6, dataa=>nx59247z7, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z8);
   ix59247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx59247z8, dataa=>nx59247z9, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z10);
   ix59247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx59247z10, dataa=>nx59247z11, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z12);
   ix59247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx59247z16, dataa=>nx59247z17, 
      datad=>nx_modgen_counter_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
   component i2c_av_config_notri
      port (
         p_u0_not_sdo : OUT std_logic ;
         p_i2c_sclk : OUT std_logic ;
         p_i2c_sdat : IN std_logic ;
         p_clk : IN std_logic ;
         p_sdo : OUT std_logic) ;
   end component ;
   component add_9_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_9_0
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
   signal clock_27_EXMPLR402, key_0_EXMPLR403: std_logic ;
   
   signal sw_EXMPLR501: std_logic_vector (6 DOWNTO 0) ;
   
   signal ledg_EXMPLR502: std_logic_vector (8 DOWNTO 0) ;
   
   signal ledr_EXMPLR503: std_logic_vector (17 DOWNTO 0) ;
   
   signal hex0_EXMPLR504: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex1_EXMPLR505: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex2_EXMPLR506: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex3_EXMPLR507: std_logic_vector (6 DOWNTO 0) ;
   
   signal aud_xck_dup0, aud_bclk_dup0, aud_dacdat_dup0, aud_adclrck_dup0, 
      i2c_sclk_dup0, sine_data_11, sine_data_10, sine_data_9, sine_data_8, 
      sine_data_7, sine_data_6, sine_data_5, sine_data_4, sine_data_3, 
      sine_data_2, sine_data_1, sine_data_0, audio_out_12, audio_out_10, 
      audio_out_9, audio_out_8, audio_out_7, audio_out_6, audio_out_5, 
      audio_out_4, audio_out_3, audio_out_2, audio_out_1, audio_out_0: 
   std_logic ;
   
   signal bit_position: std_logic_vector (3 DOWNTO 0) ;
   
   signal rtlc_rdout_n1: std_logic_vector (11 DOWNTO 0) ;
   
   signal u_sine_address: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_sine_address_0n0r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_audio_dac_bck_div_2, u_audio_dac_bck_div_1, 
      u_audio_dac_bck_div_0: std_logic ;
   
   signal u_audio_dac_lrck_1x_div: std_logic_vector (8 DOWNTO 0) ;
   
   signal nx24999z5, nx24999z4, nx24999z3, nx24999z2, nx24999z7, nx24999z6, 
      nx24999z1, nx38664z12, nx38664z9, nx38664z10, nx38664z7, nx38664z5, 
      nx38664z2, nx38664z3, nx4119z17, nx4119z18, nx4119z15, nx4119z12, 
      nx4119z13, nx4119z10, nx4119z6, nx4119z8, nx4119z4, nx4119z2, 
      nx17637z2, clock_27_int, key_int_0, sw_int_6, sw_int_5, sw_int_4, 
      sw_int_3, sw_int_2, sw_int_1, sw_int_0: std_logic ;
   
   signal hex4_EXMPLR508: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex5_EXMPLR509: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex6_EXMPLR510: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex7_EXMPLR511: std_logic_vector (6 DOWNTO 0) ;
   
   signal aud_xck_EXMPLR496, aud_dacdat_EXMPLR497, aud_daclrck_EXMPLR498, 
      aud_adclrck_EXMPLR499, i2c_sclk_EXMPLR500: std_logic ;
   
   signal hex4_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex5_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex6_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex7_dup0: std_logic_vector (6 DOWNTO 4) ;
   
   signal nx52616z1, NOT_bit_position_0, u_audio_dac_not_reset_n, nx48238z1, 
      nx50205z2, nx15494z1, nx48820z1, nx49817z1, nx50814z1, nx32096z1, 
      nx30102z1, nx30102z2, nx31099z1, nx31099z2, nx50205z3, nx50205z4, 
      nx38664z6, nx32682z1, nx4119z3, nx4119z7, nx4119z11, nx10101z1, 
      nx17637z1, nx38664z13, nx4119z16, nx10101z2, nx32682z2, nx55607z1, 
      nx52616z2, sdo_dup_239, nx50205z1: std_logic ;
   
   signal DANGLING : std_logic_vector (29 downto 0 );

begin
   clock_27_EXMPLR402 <= clock_27 ;
   key_0_EXMPLR403 <= key(0) ;
   sw_EXMPLR501(6) <= sw(6) ;
   sw_EXMPLR501(5) <= sw(5) ;
   sw_EXMPLR501(4) <= sw(4) ;
   sw_EXMPLR501(3) <= sw(3) ;
   sw_EXMPLR501(2) <= sw(2) ;
   sw_EXMPLR501(1) <= sw(1) ;
   sw_EXMPLR501(0) <= sw(0) ;
   ledg(8) <= ledg_EXMPLR502(8) ;
   ledg(7) <= ledg_EXMPLR502(7) ;
   ledg(6) <= ledg_EXMPLR502(6) ;
   ledg(5) <= ledg_EXMPLR502(5) ;
   ledg(4) <= ledg_EXMPLR502(4) ;
   ledg(3) <= ledg_EXMPLR502(3) ;
   ledg(2) <= ledg_EXMPLR502(2) ;
   ledg(1) <= ledg_EXMPLR502(1) ;
   ledg(0) <= ledg_EXMPLR502(0) ;
   ledr(17) <= ledr_EXMPLR503(17) ;
   ledr(16) <= ledr_EXMPLR503(16) ;
   ledr(15) <= ledr_EXMPLR503(15) ;
   ledr(14) <= ledr_EXMPLR503(14) ;
   ledr(13) <= ledr_EXMPLR503(13) ;
   ledr(12) <= ledr_EXMPLR503(12) ;
   ledr(11) <= ledr_EXMPLR503(11) ;
   ledr(10) <= ledr_EXMPLR503(10) ;
   ledr(9) <= ledr_EXMPLR503(9) ;
   ledr(8) <= ledr_EXMPLR503(8) ;
   ledr(7) <= ledr_EXMPLR503(7) ;
   ledr(6) <= ledr_EXMPLR503(6) ;
   ledr(5) <= ledr_EXMPLR503(5) ;
   ledr(4) <= ledr_EXMPLR503(4) ;
   ledr(3) <= ledr_EXMPLR503(3) ;
   ledr(2) <= ledr_EXMPLR503(2) ;
   ledr(1) <= ledr_EXMPLR503(1) ;
   ledr(0) <= ledr_EXMPLR503(0) ;
   hex0(6) <= hex0_EXMPLR504(6) ;
   hex0(5) <= hex0_EXMPLR504(5) ;
   hex0(4) <= hex0_EXMPLR504(4) ;
   hex0(3) <= hex0_EXMPLR504(3) ;
   hex0(2) <= hex0_EXMPLR504(2) ;
   hex0(1) <= hex0_EXMPLR504(1) ;
   hex0(0) <= hex0_EXMPLR504(0) ;
   hex1(6) <= hex1_EXMPLR505(6) ;
   hex1(5) <= hex1_EXMPLR505(5) ;
   hex1(4) <= hex1_EXMPLR505(4) ;
   hex1(3) <= hex1_EXMPLR505(3) ;
   hex1(2) <= hex1_EXMPLR505(2) ;
   hex1(1) <= hex1_EXMPLR505(1) ;
   hex1(0) <= hex1_EXMPLR505(0) ;
   hex2(6) <= hex2_EXMPLR506(6) ;
   hex2(5) <= hex2_EXMPLR506(5) ;
   hex2(4) <= hex2_EXMPLR506(4) ;
   hex2(3) <= hex2_EXMPLR506(3) ;
   hex2(2) <= hex2_EXMPLR506(2) ;
   hex2(1) <= hex2_EXMPLR506(1) ;
   hex2(0) <= hex2_EXMPLR506(0) ;
   hex3(6) <= hex3_EXMPLR507(6) ;
   hex3(5) <= hex3_EXMPLR507(5) ;
   hex3(4) <= hex3_EXMPLR507(4) ;
   hex3(3) <= hex3_EXMPLR507(3) ;
   hex3(2) <= hex3_EXMPLR507(2) ;
   hex3(1) <= hex3_EXMPLR507(1) ;
   hex3(0) <= hex3_EXMPLR507(0) ;
   hex4(6) <= hex4_EXMPLR508(6) ;
   hex4(5) <= hex4_EXMPLR508(5) ;
   hex4(4) <= hex4_EXMPLR508(4) ;
   hex4(3) <= hex4_EXMPLR508(3) ;
   hex4(2) <= hex4_EXMPLR508(2) ;
   hex4(1) <= hex4_EXMPLR508(1) ;
   hex4(0) <= hex4_EXMPLR508(0) ;
   hex5(6) <= hex5_EXMPLR509(6) ;
   hex5(5) <= hex5_EXMPLR509(5) ;
   hex5(4) <= hex5_EXMPLR509(4) ;
   hex5(3) <= hex5_EXMPLR509(3) ;
   hex5(2) <= hex5_EXMPLR509(2) ;
   hex5(1) <= hex5_EXMPLR509(1) ;
   hex5(0) <= hex5_EXMPLR509(0) ;
   hex6(6) <= hex6_EXMPLR510(6) ;
   hex6(5) <= hex6_EXMPLR510(5) ;
   hex6(4) <= hex6_EXMPLR510(4) ;
   hex6(3) <= hex6_EXMPLR510(3) ;
   hex6(2) <= hex6_EXMPLR510(2) ;
   hex6(1) <= hex6_EXMPLR510(1) ;
   hex6(0) <= hex6_EXMPLR510(0) ;
   hex7(6) <= hex7_EXMPLR511(6) ;
   hex7(5) <= hex7_EXMPLR511(5) ;
   hex7(4) <= hex7_EXMPLR511(4) ;
   hex7(3) <= hex7_EXMPLR511(3) ;
   hex7(2) <= hex7_EXMPLR511(2) ;
   hex7(1) <= hex7_EXMPLR511(1) ;
   hex7(0) <= hex7_EXMPLR511(0) ;
   aud_xck <= aud_xck_EXMPLR496 ;
   aud_dacdat <= aud_dacdat_EXMPLR497 ;
   aud_daclrck <= aud_daclrck_EXMPLR498 ;
   aud_adclrck <= aud_adclrck_EXMPLR499 ;
   i2c_sclk <= i2c_sclk_EXMPLR500 ;
   u_i2c_av_config : i2c_av_config_notri port map ( p_u0_not_sdo=>DANGLING(0
      ), p_i2c_sclk=>i2c_sclk_dup0, p_i2c_sdat=>DANGLING(1), p_clk=>
      clock_27_int, p_sdo=>sdo_dup_239);
   u_sine_address_add9_0i1 : add_9_0 port map ( cin=>DANGLING(2), a(8)=>
      u_sine_address(8), a(7)=>u_sine_address(7), a(6)=>u_sine_address(6), 
      a(5)=>u_sine_address(5), a(4)=>u_sine_address(4), a(3)=>
      u_sine_address(3), a(2)=>u_sine_address(2), a(1)=>u_sine_address(1), 
      a(0)=>u_sine_address(0), b(8)=>DANGLING(3), b(7)=>DANGLING(4), b(6)=>
      sw_int_6, b(5)=>sw_int_5, b(4)=>sw_int_4, b(3)=>sw_int_3, b(2)=>
      sw_int_2, b(1)=>sw_int_1, b(0)=>sw_int_0, d(8)=>
      u_sine_address_0n0r2(8), d(7)=>u_sine_address_0n0r2(7), d(6)=>
      u_sine_address_0n0r2(6), d(5)=>u_sine_address_0n0r2(5), d(4)=>
      u_sine_address_0n0r2(4), d(3)=>u_sine_address_0n0r2(3), d(2)=>
      u_sine_address_0n0r2(2), d(1)=>u_sine_address_0n0r2(1), d(0)=>
      u_sine_address_0n0r2(0), cout=>DANGLING(5));
   u_audio_dac_modgen_counter_lrck_1x_div : modgen_counter_9_0 port map ( 
      clock=>aud_xck_dup0, q(8)=>u_audio_dac_lrck_1x_div(8), q(7)=>
      u_audio_dac_lrck_1x_div(7), q(6)=>u_audio_dac_lrck_1x_div(6), q(5)=>
      u_audio_dac_lrck_1x_div(5), q(4)=>u_audio_dac_lrck_1x_div(4), q(3)=>
      u_audio_dac_lrck_1x_div(3), q(2)=>u_audio_dac_lrck_1x_div(2), q(1)=>
      u_audio_dac_lrck_1x_div(1), q(0)=>u_audio_dac_lrck_1x_div(0), clk_en=>
      DANGLING(6), aclear=>DANGLING(7), sload=>DANGLING(8), data(8)=>
      DANGLING(9), data(7)=>DANGLING(10), data(6)=>DANGLING(11), data(5)=>
      DANGLING(12), data(4)=>DANGLING(13), data(3)=>DANGLING(14), data(2)=>
      DANGLING(15), data(1)=>DANGLING(16), data(0)=>DANGLING(17), aset=>
      DANGLING(18), sclear=>nx48238z1, updn=>DANGLING(19), cnt_en=>DANGLING(
      20));
   u_audio_dac_p1_altpll : altpll
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
       port map ( clk(9)=>DANGLING(21), clk(8)=>DANGLING(22), clk(7)=>
      DANGLING(23), clk(6)=>DANGLING(24), clk(5)=>DANGLING(25), clk(4)=>
      DANGLING(26), clk(3)=>DANGLING(27), clk(2)=>DANGLING(28), clk(1)=>
      aud_xck_dup0, clk(0)=>DANGLING(29), inclk(1)=>hex7_dup0(4), inclk(0)=>
      clock_27_int);
   u_sine_modgen_rom_ix21_ix62120z58995 : altsyncram
      generic map (lpm_type => "altsyncram",
         lpm_hint => "UNUSED",
         intended_device_family => "Stratix",
         maximum_depth => 0,
         init_file_layout => "UNUSED"
         ,
         init_file => "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex"
         ,
         ram_block_type => "AUTO"
         ,
         read_during_write_mode_mixed_ports => "DONT_CARE",
         byte_size => 8,
         operation_mode => "ROM",
         address_aclr_b => "NONE",
         width_byteena_b => 1,
         byteena_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         indata_aclr_b => "NONE",
         byteena_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         indata_reg_b => "CLOCK1",
         rdcontrol_aclr_b => "NONE",
         outdata_aclr_b => "NONE",
         outdata_reg_b => "UNREGISTERED",
         address_reg_b => "CLOCK1",
         rdcontrol_reg_b => "CLOCK1",
         numwords_b => 64,
         widthad_b => 6,
         width_b => 12,
         width_byteena_a => 1,
         byteena_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         address_aclr_a => "NONE",
         outdata_reg_a => "UNREGISTERED",
         numwords_a => 64,
         widthad_a => 6,
         width_a => 12) 
       port map ( address_a(5)=>u_sine_address_0n0r2(8), address_a(4)=>
      u_sine_address_0n0r2(7), address_a(3)=>u_sine_address_0n0r2(6), 
      address_a(2)=>u_sine_address_0n0r2(5), address_a(1)=>
      u_sine_address_0n0r2(4), address_a(0)=>u_sine_address_0n0r2(3), wren_a
      =>hex7_dup0(4), clock0=>aud_adclrck_dup0, clocken0=>hex7_dup0(6), 
      q_a(11)=>sine_data_11, q_a(10)=>sine_data_10, q_a(9)=>sine_data_9, 
      q_a(8)=>sine_data_8, q_a(7)=>sine_data_7, q_a(6)=>sine_data_6, q_a(5)
      =>sine_data_5, q_a(4)=>sine_data_4, q_a(3)=>sine_data_3, q_a(2)=>
      sine_data_2, q_a(1)=>sine_data_1, q_a(0)=>sine_data_0);
   ix12601z20184 : TRI port map ( a_OUT=>aud_bclk, a_IN=>aud_bclk_dup0, OE=>
      hex7_dup0(6));
   hex7_dup0(6) <= '1';
   hex7_dup0(4) <= '0';
   u_audio_dac_not_reset_n <= NOT key_int_0;
   u_sine_reg_address_8 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(8), datain=>u_sine_address_0n0r2(8), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_7 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(7), datain=>u_sine_address_0n0r2(7), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_6 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(6), datain=>u_sine_address_0n0r2(6), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_5 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(5), datain=>u_sine_address_0n0r2(5), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_4 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(4), datain=>u_sine_address_0n0r2(4), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_3 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(3), datain=>u_sine_address_0n0r2(3), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_2 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(2), datain=>u_sine_address_0n0r2(2), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_1 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(1), datain=>u_sine_address_0n0r2(1), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_0 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(0), datain=>u_sine_address_0n0r2(0), clk=>
      aud_adclrck_dup0);
   u_i2c_av_config_u0_ix31977z43919 : cycloneii_io
      generic map (operation_mode => "bidir",
         open_drain_output => "true",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>i2c_sdat, datain=>sdo_dup_239, oe=>hex7_dup0(6));
   u_audio_dac_reg_lrck_1x : cycloneii_lcell_ff port map ( regout=>
      aud_adclrck_dup0, datain=>nx50205z1, clk=>aud_xck_dup0, sclr=>
      u_audio_dac_not_reset_n);
   u_audio_dac_reg_aud_bck : cycloneii_lcell_ff port map ( regout=>
      aud_bclk_dup0, datain=>nx15494z1, clk=>aud_xck_dup0, sclr=>
      u_audio_dac_not_reset_n);
   u_audio_dac_modgen_counter_bck_div_reg_q_2 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_2, datain=>nx30102z1, clk=>
      aud_xck_dup0, ena=>nx30102z2);
   u_audio_dac_modgen_counter_bck_div_reg_q_1 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_1, datain=>nx31099z1, clk=>
      aud_xck_dup0, ena=>nx31099z2);
   u_audio_dac_modgen_counter_bck_div_reg_q_0 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_0, datain=>nx32096z1, clk=>
      aud_xck_dup0);
   sw_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_6, padio=>sw_EXMPLR501(6));
   sw_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_5, padio=>sw_EXMPLR501(5));
   sw_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_4, padio=>sw_EXMPLR501(4));
   sw_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_3, padio=>sw_EXMPLR501(3));
   sw_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_2, padio=>sw_EXMPLR501(2));
   sw_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_1, padio=>sw_EXMPLR501(1));
   sw_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_0, padio=>sw_EXMPLR501(0));
   reg_audio_out_9 : cycloneii_lcell_ff port map ( regout=>audio_out_9, 
      datain=>sine_data_9, clk=>aud_adclrck_dup0);
   reg_audio_out_8 : cycloneii_lcell_ff port map ( regout=>audio_out_8, 
      datain=>sine_data_8, clk=>aud_adclrck_dup0);
   reg_audio_out_7 : cycloneii_lcell_ff port map ( regout=>audio_out_7, 
      datain=>sine_data_7, clk=>aud_adclrck_dup0);
   reg_audio_out_6 : cycloneii_lcell_ff port map ( regout=>audio_out_6, 
      datain=>sine_data_6, clk=>aud_adclrck_dup0);
   reg_audio_out_5 : cycloneii_lcell_ff port map ( regout=>audio_out_5, 
      datain=>sine_data_5, clk=>aud_adclrck_dup0);
   reg_audio_out_4 : cycloneii_lcell_ff port map ( regout=>audio_out_4, 
      datain=>sine_data_4, clk=>aud_adclrck_dup0);
   reg_audio_out_3 : cycloneii_lcell_ff port map ( regout=>audio_out_3, 
      datain=>sine_data_3, clk=>aud_adclrck_dup0);
   reg_audio_out_2 : cycloneii_lcell_ff port map ( regout=>audio_out_2, 
      datain=>sine_data_2, clk=>aud_adclrck_dup0);
   reg_audio_out_12 : cycloneii_lcell_ff port map ( regout=>audio_out_12, 
      datain=>sine_data_11, clk=>aud_adclrck_dup0);
   reg_audio_out_10 : cycloneii_lcell_ff port map ( regout=>audio_out_10, 
      datain=>sine_data_10, clk=>aud_adclrck_dup0);
   reg_audio_out_1 : cycloneii_lcell_ff port map ( regout=>audio_out_1, 
      datain=>sine_data_1, clk=>aud_adclrck_dup0);
   reg_audio_out_0 : cycloneii_lcell_ff port map ( regout=>audio_out_0, 
      datain=>sine_data_0, clk=>aud_adclrck_dup0);
   ix17637z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa8") 
       port map ( combout=>nx17637z2, dataa=>sw_int_5, datab=>sw_int_2, 
      datac=>sw_int_0, datad=>sw_int_1);
   ix49625z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"9c69") 
       port map ( combout=>rtlc_rdout_n1(0), dataa=>sw_int_2, datab=>
      sw_int_3, datac=>sw_int_1, datad=>sw_int_0);
   ix4119z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"33c0") 
       port map ( combout=>nx4119z2, datab=>sw_int_4, datac=>sw_int_2, datad
      =>sw_int_5);
   ix4119z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx4119z4, dataa=>sw_int_1, datab=>sw_int_2, datac
      =>sw_int_0, datad=>sw_int_5);
   ix4119z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx4119z8, dataa=>sw_int_1, datab=>sw_int_0, datac
      =>sw_int_2, datad=>sw_int_3);
   ix4119z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"1115") 
       port map ( combout=>nx4119z6, dataa=>sw_int_5, datab=>sw_int_4, datac
      =>sw_int_2, datad=>sw_int_3);
   ix4119z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"666a") 
       port map ( combout=>nx4119z10, dataa=>sw_int_6, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_2);
   ix4119z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0313") 
       port map ( combout=>nx4119z13, dataa=>sw_int_0, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_2);
   ix4119z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"c101") 
       port map ( combout=>nx4119z12, dataa=>sw_int_6, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_2);
   ix4119z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"f30c") 
       port map ( combout=>nx4119z15, datab=>sw_int_4, datac=>sw_int_2, 
      datad=>sw_int_5);
   ix4119z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"cd32") 
       port map ( combout=>nx4119z18, dataa=>sw_int_0, datab=>sw_int_4, 
      datac=>sw_int_2, datad=>sw_int_5);
   ix4119z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0cf3") 
       port map ( combout=>nx4119z17, datab=>sw_int_4, datac=>sw_int_2, 
      datad=>sw_int_5);
   ix38664z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"2004") 
       port map ( combout=>nx38664z3, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix38664z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"03c0") 
       port map ( combout=>nx38664z2, datab=>sw_int_2, datac=>sw_int_3, 
      datad=>sw_int_1);
   ix38664z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"d2b0") 
       port map ( combout=>nx38664z5, dataa=>sw_int_1, datab=>sw_int_3, 
      datac=>sw_int_2, datad=>sw_int_0);
   ix38664z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5515") 
       port map ( combout=>nx38664z7, dataa=>sw_int_2, datab=>sw_int_6, 
      datac=>sw_int_0, datad=>sw_int_5);
   ix38664z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"4338") 
       port map ( combout=>nx38664z10, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix38664z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"3c03") 
       port map ( combout=>nx38664z9, datab=>sw_int_2, datac=>sw_int_3, 
      datad=>sw_int_1);
   ix38664z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"3c34") 
       port map ( combout=>nx38664z12, dataa=>sw_int_6, datab=>sw_int_4, 
      datac=>sw_int_2, datad=>sw_int_5);
   ix49625z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8111") 
       port map ( combout=>rtlc_rdout_n1(3), dataa=>sw_int_2, datab=>
      sw_int_3, datac=>sw_int_1, datad=>sw_int_0);
   ix49625z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"3226") 
       port map ( combout=>rtlc_rdout_n1(2), dataa=>sw_int_2, datab=>
      sw_int_3, datac=>sw_int_1, datad=>sw_int_0);
   ix49625z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5642") 
       port map ( combout=>rtlc_rdout_n1(1), dataa=>sw_int_2, datab=>
      sw_int_3, datac=>sw_int_1, datad=>sw_int_0);
   modgen_counter_bit_position_reg_q_3 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(3), datain=>nx48820z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_2 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(2), datain=>nx49817z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_1 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(1), datain=>nx50814z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_0 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(0), datain=>NOT_bit_position_0, clk=>aud_bclk);
   ledr_triBus2_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(9), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(8), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(7), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_17 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(17), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(16), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(15), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(14), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(13), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(12), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(11), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(10), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR503(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR502(8), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR502(7), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR502(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR502(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR502(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR502(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR502(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR502(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR502(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   key_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>key_int_0, padio=>key_0_EXMPLR403);
   i2c_sclk_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>i2c_sclk_EXMPLR500, datain=>i2c_sclk_dup0);
   hex7_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR511(6), datain=>hex7_dup0(6));
   hex7_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR511(5), datain=>hex7_dup0(5));
   hex7_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR511(4), datain=>hex7_dup0(5));
   hex7_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR511(3), datain=>hex7_dup0(5));
   hex7_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR511(2), datain=>hex7_dup0(4));
   hex7_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR511(1), datain=>hex7_dup0(4));
   hex7_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR511(0), datain=>hex7_dup0(5));
   hex6_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR510(6), datain=>hex6_dup0(6));
   hex6_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR510(5), datain=>hex6_dup0(5));
   hex6_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR510(4), datain=>hex6_dup0(4));
   hex6_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR510(3), datain=>hex6_dup0(3));
   hex6_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR510(2), datain=>hex6_dup0(2));
   hex6_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR510(1), datain=>hex6_dup0(1));
   hex6_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR510(0), datain=>hex6_dup0(0));
   hex5_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR509(6), datain=>hex5_dup0(6));
   hex5_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR509(5), datain=>hex5_dup0(5));
   hex5_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR509(4), datain=>hex5_dup0(4));
   hex5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR509(3), datain=>hex5_dup0(3));
   hex5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR509(2), datain=>hex5_dup0(2));
   hex5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR509(1), datain=>hex5_dup0(1));
   hex5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR509(0), datain=>hex5_dup0(0));
   hex4_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR508(6), datain=>hex4_dup0(6));
   hex4_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR508(5), datain=>hex4_dup0(5));
   hex4_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR508(4), datain=>hex4_dup0(4));
   hex4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR508(3), datain=>hex4_dup0(3));
   hex4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR508(2), datain=>hex4_dup0(2));
   hex4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR508(1), datain=>hex4_dup0(1));
   hex4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR508(0), datain=>hex4_dup0(0));
   hex3_triBus6_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR507(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR507(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR507(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR507(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR507(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR507(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR507(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR506(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR506(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR506(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR506(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR506(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR506(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR506(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR505(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR505(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR505(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR505(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR505(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR505(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR505(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR504(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR504(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR504(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR504(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR504(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR504(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR504(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   clock_27_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clock_27_int, padio=>clock_27_EXMPLR402);
   aud_xck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_xck_EXMPLR496, datain=>aud_xck_dup0);
   aud_daclrck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_daclrck_EXMPLR498, datain=>aud_adclrck_dup0);
   aud_dacdat_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_dacdat_EXMPLR497, datain=>aud_dacdat_dup0);
   aud_adclrck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_adclrck_EXMPLR499, datain=>aud_adclrck_dup0);
   ix51811z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5555") 
       port map ( combout=>NOT_bit_position_0, dataa=>bit_position(0));
   ix24999z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z7, dataa=>bit_position(1), datab=>
      audio_out_9, datac=>audio_out_8, datad=>bit_position(0));
   ix24999z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z3, dataa=>bit_position(1), datab=>
      audio_out_5, datac=>audio_out_4, datad=>bit_position(0));
   ix24999z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z5, dataa=>bit_position(1), datab=>
      audio_out_1, datac=>audio_out_0, datad=>bit_position(0));
   ix24999z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z1, dataa=>bit_position(3), datab=>
      nx24999z2, datac=>nx24999z4, datad=>bit_position(2));
   ix24999z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z6, dataa=>nx24999z7, datab=>audio_out_10, 
      datac=>audio_out_12, datad=>bit_position(1));
   ix24999z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z2, dataa=>nx24999z3, datab=>audio_out_6, 
      datac=>audio_out_7, datad=>bit_position(1));
   ix24999z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z4, dataa=>nx24999z5, datab=>audio_out_2, 
      datac=>audio_out_3, datad=>bit_position(1));
   ix24999z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>aud_dacdat_dup0, dataa=>nx24999z1, datab=>
      nx24999z6, datac=>audio_out_12, datad=>bit_position(3));
   ix50205z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx50205z1, dataa=>nx50205z2, datab=>
      aud_adclrck_dup0);
   ix52616z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"c320") 
       port map ( combout=>nx52616z2, dataa=>rtlc_rdout_n1(3), datab=>
      rtlc_rdout_n1(2), datac=>rtlc_rdout_n1(1), datad=>rtlc_rdout_n1(0));
   ix55607z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2900") 
       port map ( combout=>nx55607z1, dataa=>rtlc_rdout_n1(3), datab=>
      rtlc_rdout_n1(2), datac=>rtlc_rdout_n1(1), datad=>rtlc_rdout_n1(0));
   ix32682z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2004") 
       port map ( combout=>nx32682z2, dataa=>rtlc_rdout_n1(7), datab=>
      rtlc_rdout_n1(6), datac=>rtlc_rdout_n1(5), datad=>rtlc_rdout_n1(4));
   ix10101z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2004") 
       port map ( combout=>nx10101z2, dataa=>rtlc_rdout_n1(11), datab=>
      rtlc_rdout_n1(10), datac=>rtlc_rdout_n1(9), datad=>rtlc_rdout_n1(8));
   ix4119z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>nx4119z16, dataa=>nx4119z17, datab=>nx4119z18, 
      datac=>sw_int_1);
   ix38664z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx38664z13, dataa=>sw_int_3, datab=>sw_int_1);
   ix17637z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx17637z1, dataa=>nx17637z2, datab=>sw_int_6, 
      datac=>sw_int_4, datad=>sw_int_3);
   ix10101z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0900") 
       port map ( combout=>nx10101z1, dataa=>rtlc_rdout_n1(11), datab=>
      rtlc_rdout_n1(10), datac=>rtlc_rdout_n1(9), datad=>rtlc_rdout_n1(8));
   ix4119z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"aa0c") 
       port map ( combout=>nx4119z11, dataa=>nx4119z12, datab=>nx4119z13, 
      datac=>sw_int_6, datad=>sw_int_1);
   ix4119z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"3020") 
       port map ( combout=>nx4119z7, dataa=>nx4119z8, datab=>sw_int_6, datac
      =>sw_int_5, datad=>sw_int_4);
   ix4119z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx4119z3, dataa=>nx4119z4, datab=>sw_int_5, datac
      =>sw_int_4);
   ix32682z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0900") 
       port map ( combout=>nx32682z1, dataa=>rtlc_rdout_n1(7), datab=>
      rtlc_rdout_n1(6), datac=>rtlc_rdout_n1(5), datad=>rtlc_rdout_n1(4));
   ix38664z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"880f") 
       port map ( combout=>nx38664z6, dataa=>nx38664z7, datab=>sw_int_3, 
      datac=>sw_int_2, datad=>sw_int_1);
   ix50205z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx50205z4, dataa=>u_audio_dac_lrck_1x_div(5), 
      datab=>u_audio_dac_lrck_1x_div(4), datac=>u_audio_dac_lrck_1x_div(3), 
      datad=>u_audio_dac_lrck_1x_div(2));
   ix50205z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f7") 
       port map ( combout=>nx50205z3, dataa=>u_audio_dac_lrck_1x_div(1), 
      datab=>u_audio_dac_lrck_1x_div(0), datac=>nx50205z4);
   ix31099z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8ff") 
       port map ( combout=>nx31099z2, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix31099z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1300") 
       port map ( combout=>nx31099z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix30102z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e8ff") 
       port map ( combout=>nx30102z2, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix30102z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx30102z1, dataa=>u_audio_dac_bck_div_2, datab=>
      key_int_0);
   ix50814z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx50814z1, dataa=>bit_position(1), datab=>
      bit_position(0));
   ix49817z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6a6a") 
       port map ( combout=>nx49817z1, dataa=>bit_position(2), datab=>
      bit_position(1), datac=>bit_position(0));
   ix48820z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx48820z1, dataa=>bit_position(3), datab=>
      bit_position(2), datac=>bit_position(1), datad=>bit_position(0));
   ix15494z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"57a8") 
       port map ( combout=>nx15494z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>aud_bclk);
   ix50205z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"1511") 
       port map ( combout=>nx50205z2, dataa=>u_audio_dac_lrck_1x_div(8), 
      datab=>u_audio_dac_lrck_1x_div(7), datac=>u_audio_dac_lrck_1x_div(6), 
      datad=>nx50205z3);
   ix48238z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx48238z1, dataa=>nx50205z2, datab=>key_int_0);
   ix52616z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0404") 
       port map ( combout=>nx52616z1, dataa=>rtlc_rdout_n1(3), datab=>
      rtlc_rdout_n1(2), datac=>rtlc_rdout_n1(1));
   ix38664z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"c3a3") 
       port map ( combout=>rtlc_rdout_n1(4), dataa=>nx38664z12, datab=>
      sw_int_4, datac=>sw_int_0, datad=>nx38664z13);
   ix38664z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>rtlc_rdout_n1(5), dataa=>nx38664z9, datab=>
      nx38664z10, datac=>sw_int_4);
   ix38664z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>rtlc_rdout_n1(6), dataa=>nx38664z5, datab=>
      sw_int_4, datac=>nx38664z6);
   ix38664z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"acac") 
       port map ( combout=>rtlc_rdout_n1(7), dataa=>nx38664z2, datab=>
      nx38664z3, datac=>sw_int_4);
   ix4119z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>rtlc_rdout_n1(8), dataa=>nx4119z15, datab=>
      sw_int_3, datac=>nx4119z16);
   ix4119z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"e2e2") 
       port map ( combout=>rtlc_rdout_n1(9), dataa=>nx4119z10, datab=>
      sw_int_5, datac=>nx4119z11);
   ix4119z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>rtlc_rdout_n1(10), dataa=>nx4119z6, datab=>
      sw_int_6, datac=>nx4119z7);
   ix4119z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"c808") 
       port map ( combout=>rtlc_rdout_n1(11), dataa=>nx4119z2, datab=>
      sw_int_6, datac=>sw_int_3, datad=>nx4119z3);
   ix17637z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff80") 
       port map ( combout=>hex7_dup0(5), dataa=>sw_int_6, datab=>sw_int_5, 
      datac=>sw_int_4, datad=>nx17637z1);
   ix10101z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>hex6_dup0(0), dataa=>nx10101z1, datab=>nx10101z2
   );
   ix9104z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex6_dup0(1), dataa=>rtlc_rdout_n1(11), datab=>
      rtlc_rdout_n1(10), datac=>rtlc_rdout_n1(9), datad=>rtlc_rdout_n1(8));
   ix8107z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex6_dup0(2), dataa=>rtlc_rdout_n1(11), datab=>
      rtlc_rdout_n1(10), datac=>rtlc_rdout_n1(9), datad=>rtlc_rdout_n1(8));
   ix7110z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex6_dup0(3), dataa=>rtlc_rdout_n1(11), datab=>
      rtlc_rdout_n1(10), datac=>rtlc_rdout_n1(9), datad=>rtlc_rdout_n1(8));
   ix6113z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex6_dup0(4), dataa=>rtlc_rdout_n1(11), datab=>
      rtlc_rdout_n1(10), datac=>rtlc_rdout_n1(9), datad=>rtlc_rdout_n1(8));
   ix5116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex6_dup0(5), dataa=>rtlc_rdout_n1(11), datab=>
      rtlc_rdout_n1(10), datac=>rtlc_rdout_n1(9), datad=>rtlc_rdout_n1(8));
   ix4119z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex6_dup0(6), dataa=>rtlc_rdout_n1(11), datab=>
      rtlc_rdout_n1(10), datac=>rtlc_rdout_n1(9), datad=>rtlc_rdout_n1(8));
   ix32682z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>hex5_dup0(0), dataa=>nx32682z1, datab=>nx32682z2
   );
   ix33679z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex5_dup0(1), dataa=>rtlc_rdout_n1(7), datab=>
      rtlc_rdout_n1(6), datac=>rtlc_rdout_n1(5), datad=>rtlc_rdout_n1(4));
   ix34676z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex5_dup0(2), dataa=>rtlc_rdout_n1(7), datab=>
      rtlc_rdout_n1(6), datac=>rtlc_rdout_n1(5), datad=>rtlc_rdout_n1(4));
   ix35673z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex5_dup0(3), dataa=>rtlc_rdout_n1(7), datab=>
      rtlc_rdout_n1(6), datac=>rtlc_rdout_n1(5), datad=>rtlc_rdout_n1(4));
   ix36670z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex5_dup0(4), dataa=>rtlc_rdout_n1(7), datab=>
      rtlc_rdout_n1(6), datac=>rtlc_rdout_n1(5), datad=>rtlc_rdout_n1(4));
   ix37667z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex5_dup0(5), dataa=>rtlc_rdout_n1(7), datab=>
      rtlc_rdout_n1(6), datac=>rtlc_rdout_n1(5), datad=>rtlc_rdout_n1(4));
   ix38664z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex5_dup0(6), dataa=>rtlc_rdout_n1(7), datab=>
      rtlc_rdout_n1(6), datac=>rtlc_rdout_n1(5), datad=>rtlc_rdout_n1(4));
   ix55607z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff20") 
       port map ( combout=>hex4_dup0(0), dataa=>rtlc_rdout_n1(2), datab=>
      rtlc_rdout_n1(0), datac=>nx52616z1, datad=>nx55607z1);
   ix54610z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex4_dup0(1), dataa=>rtlc_rdout_n1(3), datab=>
      rtlc_rdout_n1(2), datac=>rtlc_rdout_n1(1), datad=>rtlc_rdout_n1(0));
   ix53613z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex4_dup0(2), dataa=>rtlc_rdout_n1(3), datab=>
      rtlc_rdout_n1(2), datac=>rtlc_rdout_n1(1), datad=>rtlc_rdout_n1(0));
   ix52616z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff20") 
       port map ( combout=>hex4_dup0(3), dataa=>rtlc_rdout_n1(2), datab=>
      rtlc_rdout_n1(0), datac=>nx52616z1, datad=>nx52616z2);
   ix51619z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex4_dup0(4), dataa=>rtlc_rdout_n1(3), datab=>
      rtlc_rdout_n1(2), datac=>rtlc_rdout_n1(1), datad=>rtlc_rdout_n1(0));
   ix50622z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex4_dup0(5), dataa=>rtlc_rdout_n1(3), datab=>
      rtlc_rdout_n1(2), datac=>rtlc_rdout_n1(1), datad=>rtlc_rdout_n1(0));
   ix49625z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex4_dup0(6), dataa=>rtlc_rdout_n1(3), datab=>
      rtlc_rdout_n1(2), datac=>rtlc_rdout_n1(1), datad=>rtlc_rdout_n1(0));
   ix32096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0700") 
       port map ( combout=>nx32096z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
end main ;

