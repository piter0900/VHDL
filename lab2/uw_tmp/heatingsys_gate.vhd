
-- 
-- Definition of  heatingsys
-- 
--      Sun May 31 15:40:27 2015
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity heatingsys is 
   port (
      i_cur_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_des_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_reset : IN std_logic ;
      i_clock : IN std_logic ;
      o_heatmode : OUT std_logic_vector (1 DOWNTO 0)) ;
end heatingsys ;

architecture main of heatingsys is 
   component and_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
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
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal state_1, o_heatmode_0_EXMPLR19, rtlc0_S0_n137, rtlc0_S2_n139, 
      rtlc0_SS3_n140, rtlc0_S4_n141, rtlc0_S6_n143, rtlc0_SS7_n144, 
      rtlc0_S10_n147, PWR, GND, rtlc0_P2_S0_n156, not_i_reset, not_rtlc0n507, 
      rtlc0n207, rtlc0_P7_S0_n211, not_rtlc0n207, rtlc0_P8_S0_n215, 
      not_rtlcs2, not_rtlc0n438, rtlc0_P13_S0_n247, rtlc0_P14_S0_n251, 
      not_rtlcs1, rtlc0_P19_S0_n284, not_rtlcs0, rtlc0_P21_S0_n293: 
   std_logic ;
   
   signal rtlc0n316: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc0n535, rtlc0_P30_SS3_n327: std_logic ;
   
   signal rtlc0n345: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc0_P35_SS7_n357, rtlc0_T0_i_n374, not_STATE_VAR_0, 
      rtlc0_T1_i_n376, not_STATE_VAR_1, rtlc0_T2_i_n378, not_STATE_VAR_2: 
   std_logic ;
   
   signal \_STATE_VAR_\: std_logic_vector (2 DOWNTO 0) ;
   
   signal rtlc0n433, not_rtlc0n433, rtlc0n435, not_rtlcn1, rtlc0n438, 
      rtlc0n461, not_rtlc0n345_7, rtlc0n476, rtlc0n477, rtlc0n479, rtlc0n504, 
      not_rtlcn0, rtlc0n507, not_rtlc0n316_2, not_rtlc0n316_1, 
      not_rtlc0n316_0, rtlc0n532, rtlc0n533, rtlc0n534, rtlc0n535, rtlcn0, 
      rtlcn1, rtlcn87, rtlcn91, rtlcn126, rtlcs0, rtlcs1, rtlcs2, 
      not_state_1, not_state_0, rtlcn158: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   o_heatmode(0) <= o_heatmode_0_EXMPLR19 ;
   PWR <= '1' ;
   GND <= '0' ;
   not_rtlc0n507 <= NOT rtlc0n507 ;
   not_rtlc0n438 <= NOT rtlc0n438 ;
   not_rtlc0n535 <= NOT rtlc0n535 ;
   rtlc0_S10_n147 <= \_STATE_VAR_\(1) AND \_STATE_VAR_\(2) ;
   not_rtlcs0 <= NOT rtlcs0 ;
   rtlc0_71_and_0 : and_5u_5u port map ( a(4)=>rtlc0_S0_n137, a(3)=>
      not_i_reset, a(2)=>not_rtlcs2, a(1)=>not_rtlcs1, a(0)=>not_rtlcs0, d=>
      rtlc0_P21_S0_n293);
   rtlc0_S4_n141 <= \_STATE_VAR_\(0) AND \_STATE_VAR_\(1) ;
   rtlc0_86_sub_1 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_des_temp(7), 
      a(6)=>i_des_temp(6), a(5)=>i_des_temp(5), a(4)=>i_des_temp(4), a(3)=>
      i_des_temp(3), a(2)=>i_des_temp(2), a(1)=>i_des_temp(1), a(0)=>
      i_des_temp(0), b(7)=>i_cur_temp(7), b(6)=>i_cur_temp(6), b(5)=>
      i_cur_temp(5), b(4)=>i_cur_temp(4), b(3)=>i_cur_temp(3), b(2)=>
      i_cur_temp(2), b(1)=>i_cur_temp(1), b(0)=>i_cur_temp(0), d(7)=>
      rtlc0n316(7), d(6)=>rtlc0n316(6), d(5)=>rtlc0n316(5), d(4)=>
      rtlc0n316(4), d(3)=>rtlc0n316(3), d(2)=>rtlc0n316(2), d(1)=>
      rtlc0n316(1), d(0)=>rtlc0n316(0), cout=>DANGLING(0));
   rtlc0_89_sub_2 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_cur_temp(7), 
      a(6)=>i_cur_temp(6), a(5)=>i_cur_temp(5), a(4)=>i_cur_temp(4), a(3)=>
      i_cur_temp(3), a(2)=>i_cur_temp(2), a(1)=>i_cur_temp(1), a(0)=>
      i_cur_temp(0), b(7)=>i_des_temp(7), b(6)=>i_des_temp(6), b(5)=>
      i_des_temp(5), b(4)=>i_des_temp(4), b(3)=>i_des_temp(3), b(2)=>
      i_des_temp(2), b(1)=>i_des_temp(1), b(0)=>i_des_temp(0), d(7)=>
      rtlc0n345(7), d(6)=>rtlc0n345(6), d(5)=>rtlc0n345(5), d(4)=>
      rtlc0n345(4), d(3)=>rtlc0n345(3), d(2)=>rtlc0n345(2), d(1)=>
      rtlc0n345(1), d(0)=>rtlc0n345(0), cout=>DANGLING(1));
   not_STATE_VAR_1 <= NOT \_STATE_VAR_\(1) ;
   rtlc0_93_and_3 : and_3u_3u port map ( a(2)=>not_STATE_VAR_0, a(1)=>
      not_STATE_VAR_1, a(0)=>\_STATE_VAR_\(2), d=>rtlc0_S6_n143);
   rtlc0_SS7_n144 <= rtlc0_P14_S0_n251 OR rtlc0_S6_n143 ;
   rtlc0_P35_SS7_n357 <= rtlc0_SS7_n144 AND rtlc0n479 ;
   rtlc0_102_and_4 : and_5u_5u port map ( a(4)=>rtlc0_S0_n137, a(3)=>
      not_i_reset, a(2)=>not_rtlcs2, a(1)=>rtlcs1, a(0)=>not_rtlc0n438, d=>
      rtlc0_P13_S0_n247);
   rtlc0_104_or_5 : or_3u_3u port map ( a(2)=>rtlc0_P13_S0_n247, a(1)=>
      rtlc0_P19_S0_n284, a(0)=>rtlc0_P35_SS7_n357, d=>rtlc0_T2_i_n378);
   DFFPC (rtlc0_T2_i_n378,GND,GND,i_clock,\_STATE_VAR_\(2)) ;
   not_STATE_VAR_2 <= NOT \_STATE_VAR_\(2) ;
   not_rtlcs1 <= NOT rtlcs1 ;
   not_rtlcs2 <= NOT rtlcs2 ;
   rtlc0_118_and_7 : and_4u_4u port map ( a(3)=>rtlc0_S0_n137, a(2)=>
      not_i_reset, a(1)=>rtlcs2, a(0)=>rtlc0n207, d=>rtlc0_P7_S0_n211);
   rtlc0_120_or_8 : or_3u_3u port map ( a(2)=>rtlc0_P7_S0_n211, a(1)=>
      rtlc0_P19_S0_n284, a(0)=>rtlc0_P30_SS3_n327, d=>rtlc0_T1_i_n376);
   DFFPC (rtlc0_T1_i_n376,GND,GND,i_clock,\_STATE_VAR_\(1)) ;
   rtlc0_122_and_9 : and_3u_3u port map ( a(2)=>not_STATE_VAR_0, a(1)=>
      \_STATE_VAR_\(1), a(0)=>not_STATE_VAR_2, d=>rtlc0_S2_n139);
   rtlc0n207 <= not_rtlc0n507 AND rtlc0n535 ;
   not_rtlc0n207 <= NOT rtlc0n207 ;
   not_i_reset <= NOT i_reset ;
   rtlc0_133_and_10 : and_4u_4u port map ( a(3)=>rtlc0_S0_n137, a(2)=>
      not_i_reset, a(1)=>rtlcs2, a(0)=>not_rtlc0n207, d=>rtlc0_P8_S0_n215);
   rtlc0_SS3_n140 <= rtlc0_P8_S0_n215 OR rtlc0_S2_n139 ;
   rtlc0_P30_SS3_n327 <= rtlc0_SS3_n140 AND not_rtlc0n535 ;
   rtlc0_P2_S0_n156 <= rtlc0_S0_n137 AND i_reset ;
   rtlc0_139_or_11 : or_3u_3u port map ( a(2)=>rtlc0_P2_S0_n156, a(1)=>
      rtlc0_P30_SS3_n327, a(0)=>rtlc0_P35_SS7_n357, d=>rtlc0_T0_i_n374);
   DFFPC (rtlc0_T0_i_n374,GND,GND,i_clock,\_STATE_VAR_\(0)) ;
   not_STATE_VAR_0 <= NOT \_STATE_VAR_\(0) ;
   rtlc0_142_and_12 : and_3u_3u port map ( a(2)=>not_STATE_VAR_0, a(1)=>
      not_STATE_VAR_1, a(0)=>not_STATE_VAR_2, d=>rtlc0_S0_n137);
   rtlc0_198_or_13 : or_5u_5u port map ( a(4)=>rtlc0n316(3), a(3)=>
      rtlc0n316(4), a(2)=>rtlc0n316(5), a(1)=>rtlc0n316(6), a(0)=>
      rtlc0n316(7), d=>rtlc0n433);
   not_rtlc0n433 <= NOT rtlc0n433 ;
   rtlc0_200_and_14 : and_3u_3u port map ( a(2)=>rtlc0n316(2), a(1)=>
      rtlc0n316(1), a(0)=>rtlc0n316(0), d=>rtlc0n435);
   rtlc0n438 <= not_rtlcn1 OR rtlc0n316(7) ;
   rtlc0_215_or_15 : or_6u_6u port map ( a(5)=>rtlc0n345(2), a(4)=>
      rtlc0n345(3), a(3)=>rtlc0n345(4), a(2)=>rtlc0n345(5), a(1)=>
      rtlc0n345(6), a(0)=>rtlc0n345(7), d=>rtlc0n461);
   not_rtlc0n345_7 <= NOT rtlc0n345(7) ;
   rtlc0n476 <= rtlc0n345(0) AND rtlc0n345(1) ;
   rtlc0n477 <= rtlc0n476 OR rtlc0n461 ;
   rtlc0n479 <= rtlc0n477 AND not_rtlc0n345_7 ;
   rtlc0n507 <= not_rtlcn0 OR rtlc0n316(7) ;
   not_rtlc0n316_2 <= NOT rtlc0n316(2) ;
   not_rtlc0n316_1 <= NOT rtlc0n316(1) ;
   not_rtlc0n316_0 <= NOT rtlc0n316(0) ;
   rtlc0n532 <= not_rtlc0n316_1 AND not_rtlc0n316_0 ;
   rtlc0n533 <= not_rtlc0n316_2 OR rtlc0n532 ;
   rtlc0n534 <= not_rtlc0n433 AND rtlc0n533 ;
   rtlc0n535 <= rtlc0n534 OR rtlc0n316(7) ;
   rtlc0n504 <= rtlc0n316(1) AND rtlc0n316(0) ;
   not_rtlcn0 <= NOT rtlcn0 ;
   not_rtlcn1 <= NOT rtlcn1 ;
   rtlc_17_and_17 : and_4u_4u port map ( a(3)=>rtlc0_S0_n137, a(2)=>
      not_i_reset, a(1)=>rtlcs1, a(0)=>rtlc0n438, d=>rtlc0_P14_S0_n251);
   rtlcn1 <= rtlc0n433 OR rtlc0n435 ;
   rtlcn91 <= rtlc0_S4_n141 OR rtlc0_S6_n143 ;
   rtlcn126 <= not_STATE_VAR_0 AND \_STATE_VAR_\(1) ;
   rtlc_206_or_18 : or_3u_3u port map ( a(2)=>rtlc0_S10_n147, a(1)=>rtlcn91, 
      a(0)=>rtlcn126, d=>rtlcn87);
   not_state_1 <= NOT state_1 ;
   not_state_0 <= NOT o_heatmode_0_EXMPLR19 ;
   rtlcs0 <= state_1 AND o_heatmode_0_EXMPLR19 ;
   rtlcs1 <= not_state_1 AND o_heatmode_0_EXMPLR19 ;
   rtlcs2 <= not_state_1 AND not_state_0 ;
   rtlcn158 <= rtlc0_P21_S0_n293 OR rtlcn91 ;
   DFFPC (rtlcn158,GND,GND,i_clock,o_heatmode(1)) ;
   DFFPC (rtlcn91,GND,GND,i_clock,state_1) ;
   DFFPC (rtlcn87,GND,GND,i_clock,o_heatmode_0_EXMPLR19) ;
   modgen_and_0 : and_7u_7u port map ( a(6)=>rtlc0_S0_n137, a(5)=>
      not_i_reset, a(4)=>not_rtlcs2, a(3)=>not_rtlcs1, a(2)=>rtlcs0, a(1)=>
      rtlc0n461, a(0)=>not_rtlc0n345_7, d=>rtlc0_P19_S0_n284);
   modgen_or_1 : or_7u_7u port map ( a(6)=>rtlc0n316(2), a(5)=>rtlc0n316(3), 
      a(4)=>rtlc0n316(4), a(3)=>rtlc0n316(5), a(2)=>rtlc0n316(6), a(1)=>
      rtlc0n316(7), a(0)=>rtlc0n504, d=>rtlcn0);
end main ;

