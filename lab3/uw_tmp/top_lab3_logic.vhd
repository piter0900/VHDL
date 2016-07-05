
-- 
-- Definition of  top_lab3
-- 
--      06/10/15 12:18:59
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_11_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_11_0 ;

architecture IMPLEMENTATION of modgen_counter_11_0 is 
   signal nx3957z1, nx17096z3, nx17096z5, nx17096z7, nx17096z9, nx17096z11, 
      nx17096z13, nx17096z15, nx17096z17, nx17096z19, nx17096z21, nx51271z1, 
      nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, nx54262z1, 
      nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, nx57253z1, 
      nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, nx60244z1, 
      nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net: std_logic ;

begin
   q(10) <= nx3957z1 ;
   q(9) <= nx17096z3 ;
   q(8) <= nx17096z5 ;
   q(7) <= nx17096z7 ;
   q(6) <= nx17096z9 ;
   q(5) <= nx17096z11 ;
   q(4) <= nx17096z13 ;
   q(3) <= nx17096z15 ;
   q(2) <= nx17096z17 ;
   q(1) <= nx17096z19 ;
   q(0) <= nx17096z21 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx17096z3, datain=>
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx17096z5, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx17096z7, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx17096z9, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx17096z11, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx17096z13, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx17096z15, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx17096z17, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx3957z1, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx17096z19, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx17096z21, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   ix17096z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx17096z16, dataa=>nx17096z17, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z18);
   nx_modgen_counter_11_0_vcc_net <= '1';
   ix17096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, dataa=>nx3957z1, datad=>
      nx_modgen_counter_11_0_vcc_net, cin=>nx17096z2);
   ix17096z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx17096z2, dataa=>nx17096z3, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z4);
   ix17096z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx17096z4, dataa=>nx17096z5, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z6);
   ix17096z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx17096z6, dataa=>nx17096z7, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z8);
   ix17096z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx17096z18, dataa=>nx17096z19, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z20);
   ix17096z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx17096z8, dataa=>nx17096z9, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z10);
   ix17096z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx17096z10, dataa=>nx17096z11, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z12);
   ix17096z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx17096z12, dataa=>nx17096z13, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z14);
   ix17096z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx17096z14, dataa=>nx17096z15, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z16);
   ix17096z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx17096z20, dataa=>nx17096z21, 
      datad=>nx_modgen_counter_11_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_12_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_12_0 ;

architecture IMPLEMENTATION of modgen_counter_12_0 is 
   signal nx2960z1, nx18093z3, nx18093z5, nx18093z7, nx18093z9, nx18093z11, 
      nx18093z13, nx18093z15, nx18093z17, nx18093z19, nx18093z21, nx18093z23, 
      nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
      nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
      nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
      nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
      nx_modgen_counter_12_0_vcc_net: std_logic ;

begin
   q(11) <= nx2960z1 ;
   q(10) <= nx18093z3 ;
   q(9) <= nx18093z5 ;
   q(8) <= nx18093z7 ;
   q(7) <= nx18093z9 ;
   q(6) <= nx18093z11 ;
   q(5) <= nx18093z13 ;
   q(4) <= nx18093z15 ;
   q(3) <= nx18093z17 ;
   q(2) <= nx18093z19 ;
   q(1) <= nx18093z21 ;
   q(0) <= nx18093z23 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx18093z5, datain=>
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx18093z7, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx18093z9, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx18093z11, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx18093z13, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx18093z15, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx18093z17, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx18093z19, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx2960z1, datain=>
      nx18093z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx18093z3, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx18093z21, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx18093z23, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   ix18093z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx18093z18, dataa=>nx18093z19, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z20);
   nx_modgen_counter_12_0_vcc_net <= '1';
   ix18093z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, dataa=>nx2960z1, datad=>
      nx_modgen_counter_12_0_vcc_net, cin=>nx18093z2);
   ix18093z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx18093z2, dataa=>nx18093z3, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z4);
   ix18093z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx18093z4, dataa=>nx18093z5, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z6);
   ix18093z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx18093z6, dataa=>nx18093z7, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z8);
   ix18093z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx18093z8, dataa=>nx18093z9, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z10);
   ix18093z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx18093z20, dataa=>nx18093z21, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z22);
   ix18093z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx18093z10, dataa=>nx18093z11, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z12);
   ix18093z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx18093z12, dataa=>nx18093z13, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z14);
   ix18093z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx18093z14, dataa=>nx18093z15, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z16);
   ix18093z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx18093z16, dataa=>nx18093z17, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z18);
   ix18093z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx18093z22, dataa=>nx18093z23, 
      datad=>nx_modgen_counter_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity UARTS is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic ;
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_nreset_int : IN std_logic ;
      p_rxflex_int : IN std_logic) ;
end UARTS ;

architecture RTL_unfold_1370 of UARTS is 
   component modgen_counter_11_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_12_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal RxErr_EXMPLR161, RxRDY_EXMPLR162, TxDivisor_5: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, nx65151z1, 
      Tx_Reg_14n6ss1_3, Tx_Reg_14n6ss1_2, Tx_Reg_14n6ss1_1, nx50920z2, 
      nx31615z2, not_rtlc17_X_0_n360, nx15541z1, nx13547z1, nx14544z1, 
      nx11553z1, nx34394z1, nx34394z3, nx32400z1, nx13547z2, nx43465z1, PWR, 
      nx4608z1, nx51917z2, nx50920z3, nx51917z3, nx9370z2, nx51917z1, 
      nx50920z1, nx49923z1, nx48926z1, nx8373z1, nx9370z1, nx10367z1, 
      nx11364z1, nx5605z1, nx15376z1, nx34394z4, nx34394z5, nx34394z6, 
      nx34394z9, nx34394z7, nx34394z10, nx34394z8, nx32400z2, nx32400z3, 
      nx32400z4, nx32400z6, nx32400z5, nx32400z7, nx15541z2, nx4608z2, 
      nx4608z3, nx51917z4, nx8373z2, nx15541z3, nx32400z8, nx32400z9, 
      not_Rx_r, NOT_Rx, nx30618z2, nx31615z1, nx29621z2, nx30618z1, 
      nx28624z2, nx29621z1, nx61140z1, nx28624z1, nx34394z2, nx16538z1: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (32 downto 0 );

begin
   RxErr <= RxErr_EXMPLR161 ;
   RxRDY <= RxRDY_EXMPLR162 ;
   modgen_counter_RxDiv : modgen_counter_11_0 port map ( clock=>CLK, q(10)=>
      RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>RxDiv(7), q(6)=>
      RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>RxDiv(3), q(2)=>
      RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>DANGLING(0), aclear
      =>RST, sload=>DANGLING(1), data(10)=>DANGLING(2), data(9)=>DANGLING(3), 
      data(8)=>DANGLING(4), data(7)=>DANGLING(5), data(6)=>DANGLING(6), 
      data(5)=>DANGLING(7), data(4)=>DANGLING(8), data(3)=>DANGLING(9), 
      data(2)=>DANGLING(10), data(1)=>DANGLING(11), data(0)=>DANGLING(12), 
      aset=>DANGLING(13), sclear=>nx65151z1, updn=>DANGLING(14), cnt_en=>
      DANGLING(15));
   modgen_counter_TxDiv : modgen_counter_12_0 port map ( clock=>CLK, q(11)=>
      TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>TxDiv(8), q(7)=>
      TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>TxDiv(4), q(3)=>
      TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>TxDiv(0), clk_en=>
      DANGLING(16), aclear=>RST, sload=>DANGLING(17), data(11)=>DANGLING(18), 
      data(10)=>DANGLING(19), data(9)=>DANGLING(20), data(8)=>DANGLING(21), 
      data(7)=>DANGLING(22), data(6)=>DANGLING(23), data(5)=>DANGLING(24), 
      data(4)=>DANGLING(25), data(3)=>DANGLING(26), data(2)=>DANGLING(27), 
      data(1)=>DANGLING(28), data(0)=>DANGLING(29), aset=>DANGLING(30), 
      sclear=>nx32400z1, updn=>DANGLING(31), cnt_en=>DANGLING(32));
   PWR <= '1';
   RxFSM_0 <= NOT nx34394z2;
   reg_Tx_Reg_4 : cycloneii_lcell_ff port map ( regout=>nx30618z2, datain=>
      nx31615z1, clk=>CLK, aclr=>RST);
   reg_Tx_Reg_3 : cycloneii_lcell_ff port map ( regout=>nx29621z2, datain=>
      nx30618z1, clk=>CLK, aclr=>RST);
   reg_Tx_Reg_2 : cycloneii_lcell_ff port map ( regout=>nx28624z2, datain=>
      nx29621z1, clk=>CLK, aclr=>RST);
   reg_Tx_Reg_1 : cycloneii_lcell_ff port map ( regout=>nx61140z1, datain=>
      nx28624z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_1 : cycloneii_lcell_ff port map ( regout=>TxFSM(1), datain=>
      nx5605z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_0 : cycloneii_lcell_ff port map ( regout=>TxFSM(0), datain=>
      nx4608z1, clk=>CLK, aclr=>RST);
   reg_TxDivisor_5 : cycloneii_lcell_ff port map ( regout=>TxDivisor_5, 
      datain=>PWR, clk=>CLK, aclr=>RST);
   reg_TopTx : cycloneii_lcell_ff port map ( regout=>TopTx, datain=>
      nx32400z1, clk=>CLK, aclr=>RST);
   reg_TopRx : cycloneii_lcell_ff port map ( regout=>TopRx, datain=>
      nx34394z1, clk=>CLK, aclr=>RST);
   reg_Rx_r : cycloneii_lcell_ff port map ( regout=>not_Rx_r, datain=>NOT_Rx, 
      clk=>CLK, aclr=>RST);
   reg_RxRDYi : cycloneii_lcell_ff port map ( regout=>RxRDY_EXMPLR162, 
      datain=>nx43465z1, clk=>CLK, aclr=>RST);
   reg_RxFSM_6 : cycloneii_lcell_ff port map ( regout=>RxFSM_6, datain=>
      RxFSM_1, sdata=>RxFSM_5, clk=>CLK, ena=>nx15541z1, aclr=>RST, sload=>
      not_Rx_r);
   reg_RxFSM_5 : cycloneii_lcell_ff port map ( regout=>RxFSM_5, datain=>
      nx11553z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_3 : cycloneii_lcell_ff port map ( regout=>RxFSM_3, datain=>
      nx13547z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_2 : cycloneii_lcell_ff port map ( regout=>RxFSM_2, datain=>
      nx14544z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_1 : cycloneii_lcell_ff port map ( regout=>RxFSM_1, datain=>
      RxFSM_0, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_0 : cycloneii_lcell_ff port map ( regout=>nx34394z2, datain=>
      nx16538z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxErr : cycloneii_lcell_ff port map ( regout=>RxErr_EXMPLR161, datain
      =>nx15376z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(3), datain=>nx51917z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(2), datain=>nx50920z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(1), datain=>nx49923z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(0), datain=>nx48926z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(3), datain=>nx8373z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(2), datain=>nx9370z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(1), datain=>nx10367z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(0), datain=>nx11364z1, clk=>CLK, aclr=>RST);
   ix29621z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>Tx_Reg_14n6ss1_2, dataa=>Din(3), datab=>nx29621z2, 
      datac=>TxFSM(1));
   ix30618z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>Tx_Reg_14n6ss1_3, dataa=>Din(3), datab=>nx30618z2, 
      datac=>TxFSM(1));
   ix65151z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>nx65151z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix32400z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx32400z9, dataa=>TxDiv(10), datab=>TxDiv(9));
   ix32400z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx32400z8, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(0), datad=>nx32400z9);
   ix8373z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx8373z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix51917z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f1") 
       port map ( combout=>nx51917z4, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>nx50920z2, datad=>nx50920z3);
   ix4608z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"feff") 
       port map ( combout=>nx4608z3, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>TxBitCnt(1), datad=>TxBitCnt(0));
   ix4608z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3335") 
       port map ( combout=>nx4608z2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix15541z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ac00") 
       port map ( combout=>nx15541z2, dataa=>Rx, datab=>TopRx, datac=>
      RxFSM_6, datad=>nx34394z2);
   ix32400z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z7, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z5, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z6, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix32400z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx32400z4, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix32400z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z3, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(10), datad=>TxDiv(9));
   ix32400z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx32400z2, dataa=>TxDiv(0), datab=>nx32400z3, 
      datac=>nx32400z4, datad=>nx32400z5);
   ix34394z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z8, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z10, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z7, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix34394z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx34394z9, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix34394z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z6, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix34394z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx34394z5, dataa=>nx34394z6, datab=>nx34394z7, 
      datac=>nx34394z8);
   ix34394z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z4, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix15376z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f2") 
       port map ( combout=>nx15376z1, dataa=>RxErr_EXMPLR161, datab=>
      RxRDY_EXMPLR162, datac=>RxFSM_6);
   ix11364z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c40") 
       port map ( combout=>nx11364z1, dataa=>TopRx, datab=>RxBitCnt(0), 
      datac=>RxFSM_3, datad=>nx34394z2);
   ix10367z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"60aa") 
       port map ( combout=>nx10367z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>nx34394z2, datad=>not_rtlc17_X_0_n360);
   ix9370z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a8a") 
       port map ( combout=>nx9370z1, dataa=>RxBitCnt(2), datab=>nx34394z2, 
      datac=>not_rtlc17_X_0_n360, datad=>nx9370z2);
   ix8373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ca0a") 
       port map ( combout=>nx8373z1, dataa=>RxBitCnt(3), datab=>nx34394z2, 
      datac=>not_rtlc17_X_0_n360, datad=>nx8373z2);
   ix48926z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ce6c") 
       port map ( combout=>nx48926z1, dataa=>TopTx, datab=>TxBitCnt(0), 
      datac=>TxFSM(1), datad=>TxFSM(0));
   ix49923z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"09aa") 
       port map ( combout=>nx49923z1, dataa=>TxBitCnt(1), datab=>TxBitCnt(0), 
      datac=>nx50920z2, datad=>nx51917z2);
   ix50920z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2a1a") 
       port map ( combout=>nx50920z1, dataa=>TxBitCnt(2), datab=>nx50920z2, 
      datac=>nx51917z2, datad=>nx50920z3);
   ix51917z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eea2") 
       port map ( combout=>nx51917z1, dataa=>TxBitCnt(3), datab=>nx51917z2, 
      datac=>nx51917z3, datad=>nx51917z4);
   ix28624z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx28624z1, dataa=>nx61140z1, datab=>
      Tx_Reg_14n6ss1_1, datac=>nx31615z2);
   ix29621z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx29621z1, dataa=>nx28624z2, datab=>
      Tx_Reg_14n6ss1_2, datac=>nx31615z2);
   ix30618z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx30618z1, dataa=>nx29621z2, datab=>
      Tx_Reg_14n6ss1_3, datac=>nx31615z2);
   ix31615z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"05cc") 
       port map ( combout=>nx31615z1, dataa=>Din(3), datab=>nx30618z2, datac
      =>TxFSM(1), datad=>nx31615z2);
   ix61812z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0cca") 
       port map ( combout=>p_NOT_rtlcn2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix9370z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx9370z2, dataa=>RxBitCnt(1), datab=>RxBitCnt(0)
   );
   ix15541z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"d5d5") 
       port map ( combout=>nx15541z3, dataa=>RxFSM_6, datab=>p_rxflex_int, 
      datac=>p_nreset_int);
   ix51917z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx51917z3, dataa=>TxBitCnt(2), datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0));
   ix50920z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx50920z3, dataa=>TxBitCnt(1), datab=>TxBitCnt(0)
   );
   ix51917z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx51917z2, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0));
   ix4608z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c1c3") 
       port map ( combout=>nx4608z1, dataa=>TxFSM(1), datab=>TxFSM(0), datac
      =>nx4608z2, datad=>nx4608z3);
   ix43465z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx43465z1, dataa=>TopRx, datab=>not_Rx_r, datac=>
      RxFSM_5);
   ix13547z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx13547z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix32400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx32400z1, dataa=>nx32400z2, datab=>nx32400z6, 
      datac=>nx32400z7, datad=>nx32400z8);
   ix34394z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eccc") 
       port map ( combout=>nx34394z3, dataa=>nx34394z4, datab=>nx34394z5, 
      datac=>nx34394z9, datad=>nx34394z10);
   ix34394z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx34394z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix11553z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx11553z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix16538z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2323") 
       port map ( combout=>nx16538z1, dataa=>not_Rx_r, datab=>RxFSM_6, datac
      =>RxFSM_5);
   ix14544z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx14544z1, dataa=>not_Rx_r, datab=>RxFSM_3, datac
      =>RxFSM_1);
   ix13547z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx13547z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix15541z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f0") 
       port map ( combout=>nx15541z1, dataa=>not_Rx_r, datab=>nx34394z2, 
      datac=>nx15541z2, datad=>nx15541z3);
   ix8373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8b8b") 
       port map ( combout=>not_rtlc17_X_0_n360, dataa=>TopRx, datab=>RxFSM_3, 
      datac=>nx34394z2);
   ix31615z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ca") 
       port map ( combout=>nx31615z2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix50920z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx50920z2, dataa=>TopTx, datab=>TxFSM(1));
   ix61140z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>p_Tx_Reg_14n6ss1_0, dataa=>nx61140z1, datab=>
      TxFSM(1), datac=>TxFSM(0));
   ix28624z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>Tx_Reg_14n6ss1_1, dataa=>Din(3), datab=>nx28624z2, 
      datac=>TxFSM(1));
   ix5605z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c6c") 
       port map ( combout=>nx5605z1, dataa=>TxFSM(0), datab=>TxFSM(1), datac
      =>TopTx);
   ix57064z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>NOT_Rx, dataa=>p_nreset_int, datab=>p_rxflex_int
   );
end RTL_unfold_1370 ;

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
   signal nx64508z1, nx22081z3, nx22081z5, nx22081z7, nx22081z9, nx22081z11, 
      nx22081z13, nx22081z15, nx22081z17, nx22081z19, nx22081z21, nx22081z23, 
      nx22081z25, nx22081z27, nx22081z29, nx22081z31, nx51271z1, nx22081z30, 
      nx52268z1, nx22081z28, nx53265z1, nx22081z26, nx54262z1, nx22081z24, 
      nx55259z1, nx22081z22, nx56256z1, nx22081z20, nx57253z1, nx22081z18, 
      nx58250z1, nx22081z16, nx59247z1, nx22081z14, nx60244z1, nx22081z12, 
      nx17096z1, nx22081z10, nx18093z1, nx22081z8, nx19090z1, nx22081z6, 
      nx20087z1, nx22081z4, nx21084z1, nx22081z2, nx22081z1, 
      nx_modgen_counter_16_0_vcc_net: std_logic ;

begin
   q(15) <= nx64508z1 ;
   q(14) <= nx22081z3 ;
   q(13) <= nx22081z5 ;
   q(12) <= nx22081z7 ;
   q(11) <= nx22081z9 ;
   q(10) <= nx22081z11 ;
   q(9) <= nx22081z13 ;
   q(8) <= nx22081z15 ;
   q(7) <= nx22081z17 ;
   q(6) <= nx22081z19 ;
   q(5) <= nx22081z21 ;
   q(4) <= nx22081z23 ;
   q(3) <= nx22081z25 ;
   q(2) <= nx22081z27 ;
   q(1) <= nx22081z29 ;
   q(0) <= nx22081z31 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx22081z13, datain=>
      nx60244z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx22081z15, datain=>
      nx59247z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx22081z17, datain=>
      nx58250z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx22081z19, datain=>
      nx57253z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx22081z21, datain=>
      nx56256z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx22081z23, datain=>
      nx55259z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx22081z25, datain=>
      nx54262z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx22081z27, datain=>
      nx53265z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>nx64508z1, datain=>
      nx22081z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>nx22081z3, datain=>
      nx21084z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>nx22081z5, datain=>
      nx20087z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx22081z7, datain=>
      nx19090z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx22081z9, datain=>
      nx18093z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx22081z11, datain=>
      nx17096z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx22081z29, datain=>
      nx52268z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx22081z31, datain=>
      nx51271z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21084z1, cout=>nx22081z2, dataa=>nx22081z3, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z4);
   nx_modgen_counter_16_0_vcc_net <= '1';
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx20087z1, cout=>nx22081z4, dataa=>nx22081z5, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z6);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, cout=>nx22081z6, dataa=>nx22081z7, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z8);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx22081z8, dataa=>nx22081z9, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z10);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx22081z10, dataa=>nx22081z11, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z12);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx22081z26, dataa=>nx22081z27, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z28);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx22081z12, dataa=>nx22081z13, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z14);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx22081z28, dataa=>nx22081z29, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z30);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx22081z14, dataa=>nx22081z15, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z16);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx22081z16, dataa=>nx22081z17, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z18);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx22081z18, dataa=>nx22081z19, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z20);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx22081z20, dataa=>nx22081z21, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z22);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx22081z22, dataa=>nx22081z23, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z24);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx22081z24, dataa=>nx22081z25, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z26);
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx22081z1, dataa=>nx64508z1, datad=>
      nx_modgen_counter_16_0_vcc_net, cin=>nx22081z2);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx22081z30, dataa=>nx22081z31, 
      datad=>nx_modgen_counter_16_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity top_lab3 is 
   port (
      nreset : IN std_logic ;
      clk : IN std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      ctsflex : OUT std_logic ;
      o_sevenseg : OUT std_logic_vector (15 DOWNTO 0)) ;
end top_lab3 ;

architecture main of top_lab3 is 
   component UARTS
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_nreset_int : IN std_logic ;
         p_rxflex_int : IN std_logic) ;
   end component ;
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
   signal nreset_EXMPLR178, clk_EXMPLR179, rxflex_EXMPLR180, 
      u_uw_uart_o_pixavail, u_uw_uart_rxerr, u_uw_uart_rxrdy, 
      u_uw_uart_sdout_3, u_uw_uart_state, u_uw_uart_dsend, u_uw_uart_mdata_3, 
      u_uw_uart_ack: std_logic ;
   
   signal u_uw_uart_waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal u_uw_uart_ld_sdout, nreset_int, clk_int, rxflex_int, 
      txflex_EXMPLR181, ctsflex_EXMPLR182, o_sevenseg_15_EXMPLR183: 
   std_logic ;
   
   signal o_sevenseg_EXMPLR199: std_logic_vector (14 DOWNTO 0) ;
   
   signal reset, result_0, ctsflex_dup0, u_uw_uart_rawrx, nx58118z3, 
      nx24656z2, nx21486z2, nx58118z8, nx24656z1, nx30026z1, nx51426z1, 
      nx58118z1, nx21486z1, nx62599z1, nx58118z4, nx58118z5, nx58118z6, 
      nx58118z7, nx58118z2, Tx_Reg_14n6ss1_0_dup_4, NOT_rtlcn2_dup_5, 
      nx21351z1, nx21351z2: std_logic ;
   
   signal DANGLING : std_logic_vector (38 downto 0 );

begin
   nreset_EXMPLR178 <= nreset ;
   clk_EXMPLR179 <= clk ;
   rxflex_EXMPLR180 <= rxflex ;
   txflex <= txflex_EXMPLR181 ;
   ctsflex <= ctsflex_EXMPLR182 ;
   o_sevenseg(15) <= o_sevenseg_15_EXMPLR183 ;
   o_sevenseg(14) <= o_sevenseg_EXMPLR199(14) ;
   o_sevenseg(13) <= o_sevenseg_EXMPLR199(13) ;
   o_sevenseg(12) <= o_sevenseg_EXMPLR199(12) ;
   o_sevenseg(11) <= o_sevenseg_EXMPLR199(11) ;
   o_sevenseg(10) <= o_sevenseg_EXMPLR199(10) ;
   o_sevenseg(9) <= o_sevenseg_EXMPLR199(9) ;
   o_sevenseg(8) <= o_sevenseg_EXMPLR199(8) ;
   o_sevenseg(7) <= o_sevenseg_EXMPLR199(7) ;
   o_sevenseg(6) <= o_sevenseg_EXMPLR199(6) ;
   o_sevenseg(5) <= o_sevenseg_EXMPLR199(5) ;
   o_sevenseg(4) <= o_sevenseg_EXMPLR199(4) ;
   o_sevenseg(3) <= o_sevenseg_EXMPLR199(3) ;
   o_sevenseg(2) <= o_sevenseg_EXMPLR199(2) ;
   o_sevenseg(1) <= o_sevenseg_EXMPLR199(1) ;
   o_sevenseg(0) <= o_sevenseg_EXMPLR199(0) ;
   u_uw_uart_u_uarts : UARTS port map ( CLK=>clk_int, RST=>reset, Din(7)=>
      DANGLING(0), Din(6)=>DANGLING(1), Din(5)=>DANGLING(2), Din(4)=>
      DANGLING(3), Din(3)=>u_uw_uart_sdout_3, Din(2)=>DANGLING(4), Din(1)=>
      DANGLING(5), Din(0)=>DANGLING(6), LD=>u_uw_uart_ld_sdout, Rx=>
      u_uw_uart_rawrx, Baud=>DANGLING(7), Dout(7)=>DANGLING(8), Dout(6)=>
      DANGLING(9), Dout(5)=>DANGLING(10), Dout(4)=>DANGLING(11), Dout(3)=>
      DANGLING(12), Dout(2)=>DANGLING(13), Dout(1)=>DANGLING(14), Dout(0)=>
      DANGLING(15), Tx=>DANGLING(16), TxBusy=>DANGLING(17), RxErr=>
      u_uw_uart_rxerr, RxRDY=>u_uw_uart_rxrdy, p_Tx_Reg_14n6ss1_0=>
      Tx_Reg_14n6ss1_0_dup_4, p_NOT_rtlcn2=>NOT_rtlcn2_dup_5, p_nreset_int=>
      nreset_int, p_rxflex_int=>rxflex_int);
   u_uw_uart_modgen_counter_waitcount : modgen_counter_16_0 port map ( clock
      =>clk_int, q(15)=>u_uw_uart_waitcount(15), q(14)=>
      u_uw_uart_waitcount(14), q(13)=>u_uw_uart_waitcount(13), q(12)=>
      u_uw_uart_waitcount(12), q(11)=>u_uw_uart_waitcount(11), q(10)=>
      u_uw_uart_waitcount(10), q(9)=>u_uw_uart_waitcount(9), q(8)=>
      u_uw_uart_waitcount(8), q(7)=>u_uw_uart_waitcount(7), q(6)=>
      u_uw_uart_waitcount(6), q(5)=>u_uw_uart_waitcount(5), q(4)=>
      u_uw_uart_waitcount(4), q(3)=>u_uw_uart_waitcount(3), q(2)=>
      u_uw_uart_waitcount(2), q(1)=>u_uw_uart_waitcount(1), q(0)=>
      u_uw_uart_waitcount(0), clk_en=>nx24656z1, aclear=>DANGLING(18), sload
      =>DANGLING(19), data(15)=>DANGLING(20), data(14)=>DANGLING(21), 
      data(13)=>DANGLING(22), data(12)=>DANGLING(23), data(11)=>DANGLING(24), 
      data(10)=>DANGLING(25), data(9)=>DANGLING(26), data(8)=>DANGLING(27), 
      data(7)=>DANGLING(28), data(6)=>DANGLING(29), data(5)=>DANGLING(30), 
      data(4)=>DANGLING(31), data(3)=>DANGLING(32), data(2)=>DANGLING(33), 
      data(1)=>DANGLING(34), data(0)=>DANGLING(35), aset=>DANGLING(36), 
      sclear=>nx24656z2, updn=>DANGLING(37), cnt_en=>DANGLING(38));
   reset <= NOT nreset_int;
   result_0 <= '0';
   ctsflex_dup0 <= '1';
   nx21351z1 <= NOT nx21351z2;
   u_uw_uart_reg_state : cycloneii_lcell_ff port map ( regout=>
      u_uw_uart_state, datain=>nx21486z2, clk=>clk_int, aclr=>reset);
   u_uw_uart_reg_sdout_3 : cycloneii_lcell_ff port map ( regout=>
      u_uw_uart_sdout_3, datain=>nx21486z1, clk=>clk_int);
   u_uw_uart_reg_mdata_3 : cycloneii_lcell_ff port map ( regout=>
      u_uw_uart_mdata_3, datain=>nx58118z1, clk=>clk_int);
   u_uw_uart_reg_ld_sdout : cycloneii_lcell_ff port map ( regout=>
      u_uw_uart_ld_sdout, datain=>nx62599z1, clk=>clk_int, aclr=>reset);
   u_uw_uart_reg_dsend : cycloneii_lcell_ff port map ( regout=>
      u_uw_uart_dsend, datain=>nx58118z3, sdata=>u_uw_uart_rxerr, clk=>
      clk_int, ena=>ctsflex_dup0, sclr=>reset, sload=>nx58118z8);
   u_uw_uart_reg_charavail : cycloneii_lcell_ff port map ( regout=>
      u_uw_uart_o_pixavail, datain=>nx51426z1, clk=>clk_int, aclr=>reset);
   u_uw_uart_reg_ack : cycloneii_lcell_ff port map ( regout=>u_uw_uart_ack, 
      datain=>nx30026z1, clk=>clk_int, sclr=>reset);
   rxflex_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>rxflex_int, padio=>rxflex_EXMPLR180);
   reg_out_txflex_obuf : cycloneii_lcell_ff port map ( regout=>nx21351z2, 
      datain=>Tx_Reg_14n6ss1_0_dup_4, clk=>clk_int, ena=>NOT_rtlcn2_dup_5, 
      aclr=>reset);
   o_sevenseg_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(9), datain=>result_0);
   o_sevenseg_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(8), datain=>ctsflex_dup0);
   o_sevenseg_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "register"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(7), datain=>nreset_int, outclk
      =>clk_int);
   o_sevenseg_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(6), datain=>result_0);
   o_sevenseg_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(5), datain=>result_0);
   o_sevenseg_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(4), datain=>result_0);
   o_sevenseg_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(3), datain=>result_0);
   o_sevenseg_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(2), datain=>result_0);
   o_sevenseg_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_15_EXMPLR183, datain=>ctsflex_dup0);
   o_sevenseg_obuf_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(14), datain=>result_0);
   o_sevenseg_obuf_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(13), datain=>result_0);
   o_sevenseg_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(12), datain=>result_0);
   o_sevenseg_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(11), datain=>result_0);
   o_sevenseg_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(10), datain=>result_0);
   o_sevenseg_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(1), datain=>result_0);
   o_sevenseg_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR199(0), datain=>ctsflex_dup0);
   nreset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>nreset_int, padio=>nreset_EXMPLR178);
   ix21351z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>txflex_EXMPLR181, datain=>nx21351z1);
   ctsflex_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ctsflex_EXMPLR182, datain=>ctsflex_dup0);
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR179);
   ix58118z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0a") 
       port map ( combout=>nx58118z2, dataa=>u_uw_uart_mdata_3, datab=>
      nx58118z3, datac=>nx58118z8, datad=>nreset_int);
   ix58118z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx58118z7, dataa=>u_uw_uart_waitcount(3), datab=>
      u_uw_uart_waitcount(2), datac=>u_uw_uart_waitcount(1), datad=>
      u_uw_uart_waitcount(0));
   ix58118z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx58118z6, dataa=>u_uw_uart_waitcount(7), datab=>
      u_uw_uart_waitcount(6), datac=>u_uw_uart_waitcount(5), datad=>
      u_uw_uart_waitcount(4));
   ix58118z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx58118z5, dataa=>u_uw_uart_waitcount(11), datab
      =>u_uw_uart_waitcount(10), datac=>u_uw_uart_waitcount(9), datad=>
      u_uw_uart_waitcount(8));
   ix58118z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx58118z4, dataa=>u_uw_uart_waitcount(15), datab
      =>u_uw_uart_waitcount(14), datac=>u_uw_uart_waitcount(13), datad=>
      u_uw_uart_waitcount(12));
   ix62599z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5454") 
       port map ( combout=>nx62599z1, dataa=>u_uw_uart_state, datab=>
      u_uw_uart_dsend, datac=>u_uw_uart_ld_sdout);
   ix21486z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caaa") 
       port map ( combout=>nx21486z1, dataa=>u_uw_uart_sdout_3, datab=>
      u_uw_uart_mdata_3, datac=>nx21486z2, datad=>nreset_int);
   ix58118z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff4c") 
       port map ( combout=>nx58118z1, dataa=>u_uw_uart_rxerr, datab=>
      u_uw_uart_mdata_3, datac=>nreset_int, datad=>nx58118z2);
   ix51426z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx51426z1, dataa=>u_uw_uart_o_pixavail, datab=>
      u_uw_uart_rxrdy);
   ix30026z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0e") 
       port map ( combout=>nx30026z1, dataa=>u_uw_uart_o_pixavail, datab=>
      u_uw_uart_ack, datac=>nx58118z3);
   ix24656z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx24656z1, dataa=>u_uw_uart_o_pixavail, datab=>
      u_uw_uart_ack, datac=>nreset_int);
   ix58118z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx58118z8, dataa=>u_uw_uart_o_pixavail, datab=>
      u_uw_uart_ack);
   ix21486z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx21486z2, dataa=>u_uw_uart_state, datab=>
      u_uw_uart_dsend);
   ix24656z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx24656z2, dataa=>nx58118z3, datab=>nreset_int);
   ix58118z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx58118z3, dataa=>nx58118z4, datab=>nx58118z5, 
      datac=>nx58118z6, datad=>nx58118z7);
   ix34741z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>u_uw_uart_rawrx, dataa=>nreset_int, datab=>
      rxflex_int);
end main ;

