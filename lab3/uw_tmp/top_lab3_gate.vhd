
-- 
-- Definition of  top_lab3
-- 
--      06/10/15 12:18:55
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11 is 
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
end counter_up_sclear_aclear_clock_0_11 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11 is 
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
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx26, nx27, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, 
      nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, 
      nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, PWR, 
      NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(10) <= nx27 ;
   q(9) <= nx29 ;
   q(8) <= nx31 ;
   q(7) <= nx33 ;
   q(6) <= nx35 ;
   q(5) <= nx37 ;
   q(4) <= nx39 ;
   q(3) <= nx41 ;
   q(2) <= nx43 ;
   q(1) <= nx45 ;
   q(0) <= nx47 ;
   GND <= '0' ;
   DFFPC (nx26,GND,aclear,clock,nx27) ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx27, a(9)=>nx29, a(8)
      =>nx31, a(7)=>nx33, a(6)=>nx35, a(5)=>nx37, a(4)=>nx39, a(3)=>nx41, 
      a(2)=>nx43, a(1)=>nx45, a(0)=>nx47, d(10)=>nx48, d(9)=>nx49, d(8)=>
      nx50, d(7)=>nx51, d(6)=>nx52, d(5)=>nx53, d(4)=>nx54, d(3)=>nx55, d(2)
      =>nx56, d(1)=>nx57, d(0)=>nx58, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx26 <= nx48 AND NOT_SCLEAR ;
   nx28 <= nx49 AND NOT_SCLEAR ;
   nx30 <= nx50 AND NOT_SCLEAR ;
   nx32 <= nx51 AND NOT_SCLEAR ;
   nx34 <= nx52 AND NOT_SCLEAR ;
   nx36 <= nx53 AND NOT_SCLEAR ;
   nx38 <= nx54 AND NOT_SCLEAR ;
   nx40 <= nx55 AND NOT_SCLEAR ;
   nx42 <= nx56 AND NOT_SCLEAR ;
   nx44 <= nx57 AND NOT_SCLEAR ;
   nx46 <= nx58 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12 is 
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
end counter_up_sclear_aclear_clock_0_12 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12 is 
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
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx36, nx37, 
      nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, nx49, 
      nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, nx59, nx60, nx61, 
      nx62, nx63, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(11) <= nx29 ;
   q(10) <= nx31 ;
   q(9) <= nx33 ;
   q(8) <= nx35 ;
   q(7) <= nx37 ;
   q(6) <= nx39 ;
   q(5) <= nx41 ;
   q(4) <= nx43 ;
   q(3) <= nx45 ;
   q(2) <= nx47 ;
   q(1) <= nx49 ;
   q(0) <= nx51 ;
   GND <= '0' ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   DFFPC (nx48,GND,aclear,clock,nx49) ;
   DFFPC (nx50,GND,aclear,clock,nx51) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx29, a(10)=>nx31, a(9)
      =>nx33, a(8)=>nx35, a(7)=>nx37, a(6)=>nx39, a(5)=>nx41, a(4)=>nx43, 
      a(3)=>nx45, a(2)=>nx47, a(1)=>nx49, a(0)=>nx51, d(11)=>nx52, d(10)=>
      nx53, d(9)=>nx54, d(8)=>nx55, d(7)=>nx56, d(6)=>nx57, d(5)=>nx58, d(4)
      =>nx59, d(3)=>nx60, d(2)=>nx61, d(1)=>nx62, d(0)=>nx63, cout=>DANGLING
      (0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx28 <= nx52 AND NOT_SCLEAR ;
   nx30 <= nx53 AND NOT_SCLEAR ;
   nx32 <= nx54 AND NOT_SCLEAR ;
   nx34 <= nx55 AND NOT_SCLEAR ;
   nx36 <= nx56 AND NOT_SCLEAR ;
   nx38 <= nx57 AND NOT_SCLEAR ;
   nx40 <= nx58 AND NOT_SCLEAR ;
   nx42 <= nx59 AND NOT_SCLEAR ;
   nx44 <= nx60 AND NOT_SCLEAR ;
   nx46 <= nx61 AND NOT_SCLEAR ;
   nx48 <= nx62 AND NOT_SCLEAR ;
   nx50 <= nx63 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 is 
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
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
    is 
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
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx16, nx19, nx20, nx21, nx22, nx23, nx24, nx25, nx26, 
      nx27, nx28, nx29, nx30: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx20 ;
   q(2) <= nx22 ;
   q(1) <= nx24 ;
   q(0) <= nx26 ;
   GND <= '0' ;
   nx13 <= cnt_en OR sload ;
   nx16 <= nx13 AND clk_en ;
   DFFPCE (nx19,GND,aclear,nx16,clock,nx20) ;
   DFFPCE (nx21,GND,aclear,nx16,clock,nx22) ;
   DFFPCE (nx23,GND,aclear,nx16,clock,nx24) ;
   DFFPCE (nx25,GND,aclear,nx16,clock,nx26) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx20, a(2)=>nx22, a(1)=>
      nx24, a(0)=>nx26, d(3)=>nx27, d(2)=>nx28, d(1)=>nx29, d(0)=>nx30, cout
      =>DANGLING(0));
   nx19 <= data(3) when sload = '1' else nx27 ;
   nx21 <= data(2) when sload = '1' else nx28 ;
   nx23 <= data(1) when sload = '1' else nx29 ;
   nx25 <= data(0) when sload = '1' else nx30 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_clk_en_0_4 is 
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
end counter_up_sclear_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_clk_en_0_4 is 
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
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx14, nx15, nx16, nx17, nx18, nx19, nx20, nx21, nx22, 
      nx23, nx24, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx14 ;
   q(2) <= nx16 ;
   q(1) <= nx18 ;
   q(0) <= nx20 ;
   GND <= '0' ;
   DFFPCE (nx13,GND,aclear,clk_en,clock,nx14) ;
   DFFPCE (nx15,GND,aclear,clk_en,clock,nx16) ;
   DFFPCE (nx17,GND,aclear,clk_en,clock,nx18) ;
   DFFPCE (nx19,GND,aclear,clk_en,clock,nx20) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx14, a(2)=>nx16, a(1)=>
      nx18, a(0)=>nx20, d(3)=>nx21, d(2)=>nx22, d(1)=>nx23, d(0)=>nx24, cout
      =>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx13 <= nx21 AND NOT_SCLEAR ;
   nx15 <= nx22 AND NOT_SCLEAR ;
   nx17 <= nx23 AND NOT_SCLEAR ;
   nx19 <= nx24 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
      RxRDY : OUT std_logic) ;
end UARTS ;

architecture RTL_unfold_1370 of UARTS is 
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11
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
   component counter_up_sclear_aclear_clock_0_12
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
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
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
   component counter_up_sclear_aclear_clock_clk_en_0_4
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
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
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
   signal RxRDY_EXMPLR85: std_logic ;
   
   signal Tx_Reg: std_logic_vector (4 DOWNTO 1) ;
   
   signal GND, TxDivisor_5: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, PWR, 
      rtlc8n73: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (4 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n164, rtlc14n168, rtlc14n219, 
      not_TxFSM_1, not_rtlcn0, not_TopTx, rtlc14n224, rtlc14_X_0_n225, 
      rtlc14n235, not_rtlc14_X_0_n225, rtlc14n290, not_rtlcn2, 
      not_rtlc14n168, not_rtlcn4, not_Rx, not_TopRx, rtlc17n359, 
      rtlc17_X_0_n360, not_rtlc17_X_0_n360, rtlc17n405, not_rtlc17n405, 
      rtlc17n459, rtlc17n460, not_rtlcn6, rtlc17n474, not_rtlc17n474, rtlcn0, 
      rtlcn2, rtlcn4, rtlcn6, not_TxFSM_0, rtlcn31, rtlcn37, rtlcn42, 
      rtlcn47, rtlcn51, rtlcn57, rtlcn75, rtlcn76, not_rtlcn118, not_RxFSM_0, 
      rtlcn96, not_rtlcs5, not_Rx_r, rtlcn99, rtlcn100, rtlcn101, rtlcn102, 
      not_rtlc14n290, rtlcn118, rtlcn119, not_rtlcn75, not_rtlcn76, rtlcn122, 
      rtlcs0, rtlcs1, rtlcs3, rtlcs4, rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, 
      not_RxBitCnt_0, not_RxDiv_9, not_RxDiv_5, not_RxDiv_1, not_TxDiv_10, 
      not_TxDiv_6, not_TxDiv_2, not_TxBitCnt_3, not_TxBitCnt_2, 
      not_TxBitCnt_1, rtlcs6, rtlcs7, rtlcn142: std_logic ;
   
   signal DANGLING : std_logic_vector (26 downto 0 );

begin
   Dout(7) <= GND ;
   Dout(6) <= GND ;
   Dout(5) <= GND ;
   Dout(4) <= GND ;
   Dout(3) <= GND ;
   Dout(2) <= GND ;
   Dout(1) <= GND ;
   Dout(0) <= GND ;
   TxBusy <= GND ;
   RxRDY <= RxRDY_EXMPLR85 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n73 <= RxFSM_0 OR rtlcs0 ;
   rtlc14n290 <= rtlcs4 OR rtlc14n219 ;
   rtlc14n164 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n224 <= not_TopTx AND TxFSM(1) ;
   rtlc14n219 <= TxFSM(1) AND TxFSM(0) ;
   rtlc14_109_or_0 : or_3u_3u port map ( a(2)=>rtlc14n219, a(1)=>not_rtlcn0, 
      a(0)=>rtlc14n224, d=>rtlc14_X_0_n225);
   not_rtlc14_X_0_n225 <= NOT rtlc14_X_0_n225 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n235 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc17n405 <= RxFSM_5 OR RxFSM_6 ;
   not_rtlc17n405 <= NOT rtlc17n405 ;
   rtlc17n474 <= RxFSM_0 OR RxFSM_3 ;
   not_rtlc17n474 <= NOT rtlc17n474 ;
   rtlc17n359 <= not_TopRx AND RxFSM_3 ;
   not_rtlc17_X_0_n360 <= NOT rtlc17_X_0_n360 ;
   not_Rx <= NOT Rx ;
   rtlc17_X_0_n360 <= not_rtlc17n474 OR rtlc17n359 ;
   not_rtlcn0 <= NOT rtlcn0 ;
   rtlc_48_select_1 : select_3_3 port map ( a(2)=>RxFSM_0, a(1)=>
      not_rtlcn118, a(0)=>RxFSM_6, b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>not_Rx, 
      d=>rtlcn6);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_92_mux_3 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n168);
   rtlc_93_mux_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlcn2);
   rtlc_94_mux_5 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n164, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn4);
   not_LD <= NOT LD ;
   not_TopRx <= NOT TopRx ;
   not_RxFSM_0 <= NOT RxFSM_0 ;
   rtlcn96 <= RxFSM_5 AND not_TopRx ;
   rtlcn76 <= not_rtlc17n405 OR rtlcn96 ;
   rtlcn75 <= RxFSM_5 AND TopRx ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn31 <= not_rtlcs5 AND RxFSM_2 ;
   not_Rx_r <= NOT Rx_r ;
   rtlcn99 <= not_Rx_r AND RxFSM_1 ;
   rtlcn37 <= RxFSM_3 OR rtlcn99 ;
   rtlcn100 <= RxFSM_5 AND Rx_r ;
   rtlcn42 <= RxFSM_6 OR rtlcn100 ;
   rtlcn47 <= rtlcs5 AND RxFSM_2 ;
   rtlcn51 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn101 <= RxFSM_5 AND not_Rx_r ;
   rtlcn102 <= Rx_r AND RxFSM_1 ;
   rtlcn57 <= rtlcn101 OR rtlcn102 ;
   not_rtlc14n290 <= NOT rtlc14n290 ;
   not_rtlcn118 <= NOT rtlcn118 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(3) ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlc14n168 <= NOT rtlc14n168 ;
   not_rtlcn2 <= NOT rtlcn2 ;
   not_rtlcn6 <= NOT rtlcn6 ;
   rtlc17n460 <= RxRDY_EXMPLR85 OR RxFSM_6 ;
   not_rtlcn75 <= NOT rtlcn75 ;
   rtlcn119 <= Rx_r OR not_rtlcn75 ;
   not_rtlcn76 <= NOT rtlcn76 ;
   rtlcn122 <= not_rtlcn76 AND rtlcn119 ;
   rtlc17n459 <= RxRDY_EXMPLR85 OR rtlcn122 ;
   rtlcn118 <= RxFSM_0 OR RxFSM_6 ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_331_and_7 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_341_and_8 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_352_and_9 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   rtlcn0 <= TxFSM(1) OR TxFSM(0) ;
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_358_and_10 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11 port map ( 
      clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>
      RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>
      RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>PWR, 
      aclear=>RST, sload=>GND, data(10)=>DANGLING(0), data(9)=>DANGLING(1), 
      data(8)=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>DANGLING(4), 
      data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>DANGLING(7), 
      data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>DANGLING(10), 
      aset=>GND, sclear=>rtlc8n73, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12 port map ( 
      clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>
      TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>
      TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>
      TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(11)=>DANGLING(11), 
      data(10)=>DANGLING(12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), 
      data(7)=>DANGLING(15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), 
      data(4)=>DANGLING(18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), 
      data(1)=>DANGLING(21), data(0)=>DANGLING(22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>
      TxBitCnt(1), q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n225, aclear=>
      RST, sload=>rtlc14n235, data(3)=>PWR, data(2)=>GND, data(1)=>GND, 
      data(0)=>PWR, aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   modgen_counter_RxBitCnt : counter_up_sclear_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>
      RxBitCnt(1), q(0)=>RxBitCnt(0), clk_en=>not_rtlc17_X_0_n360, aclear=>
      RST, sload=>GND, data(3)=>DANGLING(23), data(2)=>DANGLING(24), data(1)
      =>DANGLING(25), data(0)=>DANGLING(26), aset=>GND, sclear=>RxFSM_0, 
      updn=>PWR, cnt_en=>PWR);
   rtlceq_s14_eq_11 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>TxDivisor_5, 
      b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, b(2)=>TxDivisor_5, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_12 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      TxDivisor_5, b(5)=>TxDivisor_5, b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, 
      b(2)=>GND, b(1)=>GND, b(0)=>TxDivisor_5, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,TxDivisor_5) ;
   DFFPC (rtlcn51,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n290,GND,RST,not_rtlcn4,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn4,CLK,TxFSM(0)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n168,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n168,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n168,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n168,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn2,CLK,Tx) ;
   DFFPCE (rtlcn57,GND,RST,not_rtlcn6,CLK,RxFSM_6) ;
   DFFPCE (rtlcn47,GND,RST,not_rtlcn6,CLK,RxFSM_5) ;
   DFFPCE (rtlcn31,GND,RST,not_rtlcn6,CLK,RxFSM_3) ;
   DFFPCE (rtlcn37,GND,RST,not_rtlcn6,CLK,RxFSM_2) ;
   DFFPCE (RxFSM_0,GND,RST,not_rtlcn6,CLK,RxFSM_1) ;
   DFFPCE (rtlcn42,RST,GND,not_rtlcn6,CLK,RxFSM_0) ;
   DFFPCE (RxFSM_6,GND,RST,rtlc17n460,CLK,RxErr) ;
   DFFPC (rtlcn142,GND,RST,CLK,RxRDY_EXMPLR85) ;
   Tx_Reg_14n6ss1(4) <= Din(3) OR TxFSM(1) ;
   modgen_and_0 : and_4u_4u port map ( a(3)=>Rx_r, a(2)=>RxFSM_5, a(1)=>
      TopRx, a(0)=>rtlc17n459, d=>rtlcn142);
end RTL_unfold_1370 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_16 is 
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
end counter_up_sclear_clock_clk_en_0_16 ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_16 is 
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
      nx58, nx59, nx60, nx61, nx62, nx63, nx64, nx65, nx66, nx67, nx68, nx69, 
      nx70, nx71, nx72, nx73, nx74, nx75, nx76, nx77, nx78, nx79, nx80, nx81, 
      nx82, nx83, PWR, NOT_SCLEAR: std_logic ;
   
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
   DFFPCE (nx36,GND,GND,clk_en,clock,nx37) ;
   DFFPCE (nx38,GND,GND,clk_en,clock,nx39) ;
   DFFPCE (nx40,GND,GND,clk_en,clock,nx41) ;
   DFFPCE (nx42,GND,GND,clk_en,clock,nx43) ;
   DFFPCE (nx44,GND,GND,clk_en,clock,nx45) ;
   DFFPCE (nx46,GND,GND,clk_en,clock,nx47) ;
   DFFPCE (nx48,GND,GND,clk_en,clock,nx49) ;
   DFFPCE (nx50,GND,GND,clk_en,clock,nx51) ;
   DFFPCE (nx52,GND,GND,clk_en,clock,nx53) ;
   DFFPCE (nx54,GND,GND,clk_en,clock,nx55) ;
   DFFPCE (nx56,GND,GND,clk_en,clock,nx57) ;
   DFFPCE (nx58,GND,GND,clk_en,clock,nx59) ;
   DFFPCE (nx60,GND,GND,clk_en,clock,nx61) ;
   DFFPCE (nx62,GND,GND,clk_en,clock,nx63) ;
   DFFPCE (nx64,GND,GND,clk_en,clock,nx65) ;
   DFFPCE (nx66,GND,GND,clk_en,clock,nx67) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx37, a(14)=>nx39, 
      a(13)=>nx41, a(12)=>nx43, a(11)=>nx45, a(10)=>nx47, a(9)=>nx49, a(8)=>
      nx51, a(7)=>nx53, a(6)=>nx55, a(5)=>nx57, a(4)=>nx59, a(3)=>nx61, a(2)
      =>nx63, a(1)=>nx65, a(0)=>nx67, d(15)=>nx68, d(14)=>nx69, d(13)=>nx70, 
      d(12)=>nx71, d(11)=>nx72, d(10)=>nx73, d(9)=>nx74, d(8)=>nx75, d(7)=>
      nx76, d(6)=>nx77, d(5)=>nx78, d(4)=>nx79, d(3)=>nx80, d(2)=>nx81, d(1)
      =>nx82, d(0)=>nx83, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx36 <= nx68 AND NOT_SCLEAR ;
   nx38 <= nx69 AND NOT_SCLEAR ;
   nx40 <= nx70 AND NOT_SCLEAR ;
   nx42 <= nx71 AND NOT_SCLEAR ;
   nx44 <= nx72 AND NOT_SCLEAR ;
   nx46 <= nx73 AND NOT_SCLEAR ;
   nx48 <= nx74 AND NOT_SCLEAR ;
   nx50 <= nx75 AND NOT_SCLEAR ;
   nx52 <= nx76 AND NOT_SCLEAR ;
   nx54 <= nx77 AND NOT_SCLEAR ;
   nx56 <= nx78 AND NOT_SCLEAR ;
   nx58 <= nx79 AND NOT_SCLEAR ;
   nx60 <= nx80 AND NOT_SCLEAR ;
   nx62 <= nx81 AND NOT_SCLEAR ;
   nx64 <= nx82 AND NOT_SCLEAR ;
   nx66 <= nx83 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity uw_uart is 
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      rxflex : IN std_logic ;
      datain : OUT std_logic_vector (7 DOWNTO 0) ;
      txflex : OUT std_logic ;
      o_pixavail : OUT std_logic) ;
end uw_uart ;

architecture main_unfold_1650 of uw_uart is 
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
         RxRDY : OUT std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_16
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
   component and_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
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
   signal o_pixavail_EXMPLR126, rxerr, rxrdy, rawrx, GND, sdout_3, state, 
      dsend, mdata_3, ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal ld_sdout, PWR, not_o_pixavail, rtlc7n81, rtlc7n106, not_rtlc7n106, 
      not_rxerr, rtlc7n134, rtlc7n162, not_rtlcn29, not_dsend, rtlc10n49, 
      rtlc10n62, not_rtlcn30, rtlcn0, rtlcn1, rtlcn11, not_state, rtlcn20, 
      not_rtlc7n81, rtlcn22, rtlcn28, rtlcn29, rtlcn30, not_rst, 
      not_waitcount_15, not_waitcount_14, not_waitcount_13, not_waitcount_12, 
      not_waitcount_11, not_waitcount_10, not_waitcount_9, not_waitcount_8, 
      not_waitcount_7, not_waitcount_4, not_waitcount_3, not_waitcount_1, 
      not_waitcount_0, rtlcn45, rtlcn46: std_logic ;
   
   signal DANGLING : std_logic_vector (24 downto 0 );

begin
   datain(7) <= GND ;
   datain(6) <= GND ;
   datain(5) <= GND ;
   datain(4) <= GND ;
   datain(3) <= GND ;
   datain(2) <= GND ;
   datain(1) <= GND ;
   datain(0) <= GND ;
   o_pixavail <= GND ;
   GND <= '0' ;
   PWR <= '1' ;
   u_uarts : UARTS port map ( CLK=>clk, RST=>rst, Din(7)=>PWR, Din(6)=>PWR, 
      Din(5)=>PWR, Din(4)=>PWR, Din(3)=>sdout_3, Din(2)=>GND, Din(1)=>GND, 
      Din(0)=>GND, LD=>ld_sdout, Rx=>rawrx, Baud=>PWR, Dout(7)=>DANGLING(0), 
      Dout(6)=>DANGLING(1), Dout(5)=>DANGLING(2), Dout(4)=>DANGLING(3), 
      Dout(3)=>DANGLING(4), Dout(2)=>DANGLING(5), Dout(1)=>DANGLING(6), 
      Dout(0)=>DANGLING(7), Tx=>txflex, TxBusy=>DANGLING(8), RxErr=>rxerr, 
      RxRDY=>rxrdy);
   rtlc7n162 <= rst OR rtlc7n106 ;
   rtlc7n81 <= o_pixavail_EXMPLR126 OR ack ;
   not_rxerr <= NOT rxerr ;
   not_o_pixavail <= NOT o_pixavail_EXMPLR126 ;
   not_rtlc7n106 <= NOT rtlc7n106 ;
   not_state <= NOT state ;
   rtlcn1 <= not_state AND dsend ;
   rtlcn20 <= rtlc7n106 AND rtlc7n81 ;
   not_rtlc7n81 <= NOT rtlc7n81 ;
   rtlcn22 <= not_rtlc7n81 AND rxerr ;
   rtlcn11 <= rtlcn20 OR rtlcn22 ;
   rtlc7n134 <= not_rtlc7n106 when rtlc7n81 = '1' else not_rxerr ;
   rtlcn0 <= rxrdy OR o_pixavail_EXMPLR126 ;
   rtlc10n62 <= dsend OR state ;
   not_dsend <= NOT dsend ;
   not_rtlcn29 <= NOT rtlcn29 ;
   not_rtlcn30 <= NOT rtlcn30 ;
   rtlc10n49 <= not_dsend OR state ;
   not_rst <= NOT rst ;
   rawrx <= rxflex AND not_rst ;
   rtlcn28 <= rst OR rtlc7n81 ;
   rtlcn29 <= rst OR rtlc7n134 ;
   rtlcn30 <= rst OR rtlc10n49 ;
   modgen_counter_waitcount : counter_up_sclear_clock_clk_en_0_16
       port map ( clock=>clk, q(15)=>waitcount(15), q(14)=>waitcount(14), 
      q(13)=>waitcount(13), q(12)=>waitcount(12), q(11)=>waitcount(11), 
      q(10)=>waitcount(10), q(9)=>waitcount(9), q(8)=>waitcount(8), q(7)=>
      waitcount(7), q(6)=>waitcount(6), q(5)=>waitcount(5), q(4)=>
      waitcount(4), q(3)=>waitcount(3), q(2)=>waitcount(2), q(1)=>
      waitcount(1), q(0)=>waitcount(0), clk_en=>rtlcn28, aclear=>GND, sload
      =>GND, data(15)=>DANGLING(9), data(14)=>DANGLING(10), data(13)=>
      DANGLING(11), data(12)=>DANGLING(12), data(11)=>DANGLING(13), data(10)
      =>DANGLING(14), data(9)=>DANGLING(15), data(8)=>DANGLING(16), data(7)
      =>DANGLING(17), data(6)=>DANGLING(18), data(5)=>DANGLING(19), data(4)
      =>DANGLING(20), data(3)=>DANGLING(21), data(2)=>DANGLING(22), data(1)
      =>DANGLING(23), data(0)=>DANGLING(24), aset=>GND, sclear=>rtlc7n162, 
      updn=>PWR, cnt_en=>PWR);
   not_waitcount_15 <= NOT waitcount(15) ;
   not_waitcount_14 <= NOT waitcount(14) ;
   not_waitcount_13 <= NOT waitcount(13) ;
   not_waitcount_12 <= NOT waitcount(12) ;
   not_waitcount_11 <= NOT waitcount(11) ;
   not_waitcount_10 <= NOT waitcount(10) ;
   not_waitcount_9 <= NOT waitcount(9) ;
   not_waitcount_8 <= NOT waitcount(8) ;
   not_waitcount_7 <= NOT waitcount(7) ;
   not_waitcount_4 <= NOT waitcount(4) ;
   not_waitcount_3 <= NOT waitcount(3) ;
   not_waitcount_1 <= NOT waitcount(1) ;
   not_waitcount_0 <= NOT waitcount(0) ;
   rtlc_176_and_13 : and_16u_16u port map ( a(15)=>not_waitcount_15, a(14)=>
      not_waitcount_14, a(13)=>not_waitcount_13, a(12)=>not_waitcount_12, 
      a(11)=>not_waitcount_11, a(10)=>not_waitcount_10, a(9)=>
      not_waitcount_9, a(8)=>not_waitcount_8, a(7)=>not_waitcount_7, a(6)=>
      waitcount(6), a(5)=>waitcount(5), a(4)=>not_waitcount_4, a(3)=>
      not_waitcount_3, a(2)=>waitcount(2), a(1)=>not_waitcount_1, a(0)=>
      not_waitcount_0, d=>rtlc7n106);
   rtlcn45 <= not_rtlc7n106 AND rtlc7n81 ;
   rtlcn46 <= not_o_pixavail AND rtlcn0 ;
   DFFPCE (rtlc7n81,GND,GND,not_rtlcn29,clk,mdata_3) ;
   DFFRSE (rtlcn11,GND,rst,PWR,clk,dsend) ;
   DFFPCE (mdata_3,GND,GND,not_rtlcn30,clk,sdout_3) ;
   DFFPCE (not_state,GND,rst,rtlc10n62,clk,ld_sdout) ;
   DFFPC (rtlcn1,GND,rst,clk,state) ;
   DFFRSE (rtlcn45,GND,rst,PWR,clk,ack) ;
   DFFPC (rtlcn46,GND,rst,clk,o_pixavail_EXMPLR126) ;
end main_unfold_1650 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component uw_uart
      port (
         clk : IN std_logic ;
         rst : IN std_logic ;
         rxflex : IN std_logic ;
         datain : OUT std_logic_vector (7 DOWNTO 0) ;
         txflex : OUT std_logic ;
         o_pixavail : OUT std_logic) ;
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
   signal reset: std_logic ;
   
   signal result: std_logic_vector (7 DOWNTO 0) ;
   
   signal ctsflex_EXMPLR146, rtlc2n224, rtlc2n225, rtlc2n228, rtlc2n230, 
      rtlc2n232, rtlc2n233, rtlc2n236, rtlc2n143, rtlc2n144, rtlc2n147, 
      rtlc2n149, rtlc2n151, rtlc2n152, rtlc2n155, not_rtlc2n224, 
      not_rtlc2n225, not_rtlc2n233, not_rtlc2n143, not_rtlc2n144, 
      not_rtlc2n152, rtlcs0, rtlcs1, rtlcs2, rtlcs3, rtlcs4, rtlcs5, rtlcs8, 
      rtlcs9, rtlcs10, rtlcs11, rtlcs13, rtlcs15, rtlcs16, rtlcs17, rtlcs18, 
      rtlcs19, rtlcs20, rtlcs22, rtlcs23, rtlcs24, rtlcs25, rtlcs27, rtlcs29, 
      rtlcs31, rtlcs32, rtlcs33, rtlcs34, rtlcs35, rtlcs36, rtlcs37, rtlcs40, 
      rtlcs41, rtlcs42, rtlcs43, rtlcs45, rtlcs47, rtlcs48, rtlcs49, rtlcs50, 
      rtlcs51, rtlcs52, rtlcs54, rtlcs55, rtlcs56, rtlcs57, rtlcs59, rtlcs61, 
      rtlcs63, rtlcs64, rtlcs65, not_result_2, not_result_0, not_result_3, 
      not_result_1, not_result_6, not_result_4, not_result_7, not_result_5, 
      GND: std_logic ;
   
   signal DANGLING : std_logic_vector (8 downto 0 );

begin
   ctsflex <= ctsflex_EXMPLR146 ;
   o_sevenseg(15) <= ctsflex_EXMPLR146 ;
   ctsflex_EXMPLR146 <= '1' ;
   u_uw_uart : uw_uart port map ( clk=>clk, rst=>reset, rxflex=>rxflex, 
      datain(7)=>DANGLING(0), datain(6)=>DANGLING(1), datain(5)=>DANGLING(2), 
      datain(4)=>DANGLING(3), datain(3)=>DANGLING(4), datain(2)=>DANGLING(5), 
      datain(1)=>DANGLING(6), datain(0)=>DANGLING(7), txflex=>txflex, 
      o_pixavail=>DANGLING(8));
   reset <= NOT nreset ;
   rtlc2_100_or_38 : or_4u_4u port map ( a(3)=>rtlcs2, a(2)=>rtlcs5, a(1)=>
      rtlcs17, a(0)=>rtlcs24, d=>rtlc2n236);
   rtlc2_20_or_39 : or_4u_4u port map ( a(3)=>rtlcs34, a(2)=>rtlcs37, a(1)=>
      rtlcs49, a(0)=>rtlcs56, d=>rtlc2n155);
   rtlc_23_or_40 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs1, a(2)=>
      rtlcs3, a(1)=>rtlcs16, a(0)=>rtlcs31, d=>rtlc2n224);
   rtlc_29_or_41 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs8, a(2)=>
      rtlcs15, a(1)=>rtlcs16, a(0)=>rtlcs20, d=>rtlc2n225);
   rtlc_42_or_42 : or_3u_3u port map ( a(2)=>rtlcs16, a(1)=>rtlcs23, a(0)=>
      rtlcs25, d=>rtlc2n228);
   rtlc_51_or_43 : or_4u_4u port map ( a(3)=>rtlcs9, a(2)=>rtlcs17, a(1)=>
      rtlcs19, a(0)=>rtlcs23, d=>rtlc2n230);
   rtlc_60_or_44 : or_3u_3u port map ( a(2)=>rtlcs11, a(1)=>rtlcs13, a(0)=>
      rtlcs29, d=>rtlc2n232);
   rtlc_66_or_45 : or_5u_5u port map ( a(4)=>rtlcs4, a(3)=>rtlcs10, a(2)=>
      rtlcs18, a(1)=>rtlcs22, a(0)=>rtlcs27, d=>rtlc2n233);
   rtlc_85_or_46 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs33, a(2)=>
      rtlcs35, a(1)=>rtlcs48, a(0)=>rtlcs63, d=>rtlc2n143);
   rtlc_91_or_47 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs40, a(2)=>
      rtlcs47, a(1)=>rtlcs48, a(0)=>rtlcs52, d=>rtlc2n144);
   rtlc_104_or_48 : or_3u_3u port map ( a(2)=>rtlcs48, a(1)=>rtlcs55, a(0)=>
      rtlcs57, d=>rtlc2n147);
   rtlc_113_or_49 : or_4u_4u port map ( a(3)=>rtlcs41, a(2)=>rtlcs49, a(1)=>
      rtlcs51, a(0)=>rtlcs55, d=>rtlc2n149);
   rtlc_122_or_50 : or_3u_3u port map ( a(2)=>rtlcs43, a(1)=>rtlcs45, a(0)=>
      rtlcs61, d=>rtlc2n151);
   rtlc_128_or_51 : or_5u_5u port map ( a(4)=>rtlcs36, a(3)=>rtlcs42, a(2)=>
      rtlcs50, a(1)=>rtlcs54, a(0)=>rtlcs59, d=>rtlc2n152);
   not_rtlc2n224 <= NOT rtlc2n224 ;
   not_rtlc2n225 <= NOT rtlc2n225 ;
   not_rtlc2n233 <= NOT rtlc2n233 ;
   not_rtlc2n143 <= NOT rtlc2n143 ;
   not_rtlc2n144 <= NOT rtlc2n144 ;
   not_rtlc2n152 <= NOT rtlc2n152 ;
   rtlcs2 <= rtlcs3 AND rtlcs1 ;
   rtlcs5 <= result(2) AND rtlcs4 ;
   rtlcs4 <= not_result_1 AND rtlcs1 ;
   rtlcs9 <= rtlcs8 AND rtlcs10 ;
   rtlcs11 <= result(2) AND rtlcs8 ;
   rtlcs13 <= result(3) AND rtlcs15 ;
   rtlcs17 <= rtlcs15 AND rtlcs18 ;
   rtlcs18 <= not_result_3 AND rtlcs20 ;
   rtlcs24 <= rtlcs25 AND rtlcs23 ;
   rtlcs23 <= result(0) AND rtlcs22 ;
   rtlcs27 <= result(1) AND rtlcs25 ;
   rtlcs64 <= rtlcs10 AND not_result_3 ;
   rtlcs29 <= rtlcs64 AND rtlcs31 ;
   rtlcs34 <= rtlcs35 AND rtlcs33 ;
   rtlcs37 <= result(6) AND rtlcs36 ;
   rtlcs36 <= not_result_5 AND rtlcs33 ;
   rtlcs41 <= rtlcs40 AND rtlcs42 ;
   rtlcs43 <= result(6) AND rtlcs40 ;
   rtlcs45 <= result(7) AND rtlcs47 ;
   rtlcs49 <= rtlcs47 AND rtlcs50 ;
   rtlcs50 <= not_result_7 AND rtlcs52 ;
   rtlcs56 <= rtlcs57 AND rtlcs55 ;
   rtlcs55 <= result(4) AND rtlcs54 ;
   rtlcs59 <= result(5) AND rtlcs57 ;
   rtlcs65 <= rtlcs42 AND not_result_7 ;
   rtlcs61 <= rtlcs65 AND rtlcs63 ;
   not_result_2 <= NOT result(2) ;
   not_result_0 <= NOT result(0) ;
   not_result_3 <= NOT result(3) ;
   not_result_1 <= NOT result(1) ;
   rtlc_232_and_52 : and_3u_3u port map ( a(2)=>not_result_3, a(1)=>
      result(2), a(0)=>not_result_1, d=>rtlcs16);
   rtlc_248_and_53 : and_3u_3u port map ( a(2)=>result(2), a(1)=>result(1), 
      a(0)=>result(0), d=>rtlcs19);
   not_result_6 <= NOT result(6) ;
   not_result_4 <= NOT result(4) ;
   not_result_7 <= NOT result(7) ;
   not_result_5 <= NOT result(5) ;
   rtlc_271_and_54 : and_3u_3u port map ( a(2)=>not_result_7, a(1)=>
      result(6), a(0)=>not_result_5, d=>rtlcs48);
   rtlc_287_and_55 : and_3u_3u port map ( a(2)=>result(6), a(1)=>result(5), 
      a(0)=>result(4), d=>rtlcs51);
   rtlcs0 <= result(3) AND not_result_2 ;
   rtlcs1 <= result(3) AND result(0) ;
   rtlcs3 <= not_result_2 AND result(1) ;
   rtlcs31 <= result(1) AND not_result_0 ;
   rtlcs8 <= result(3) AND result(1) ;
   rtlcs15 <= result(2) AND not_result_0 ;
   rtlcs20 <= not_result_1 AND not_result_0 ;
   rtlcs22 <= not_result_2 AND not_result_1 ;
   rtlcs25 <= not_result_3 AND result(0) ;
   rtlcs10 <= not_result_2 AND not_result_0 ;
   rtlcs32 <= result(7) AND not_result_6 ;
   rtlcs33 <= result(7) AND result(4) ;
   rtlcs35 <= not_result_6 AND result(5) ;
   rtlcs63 <= result(5) AND not_result_4 ;
   rtlcs40 <= result(7) AND result(5) ;
   rtlcs47 <= result(6) AND not_result_4 ;
   rtlcs52 <= not_result_5 AND not_result_4 ;
   rtlcs54 <= not_result_6 AND not_result_5 ;
   rtlcs57 <= not_result_7 AND result(4) ;
   rtlcs42 <= not_result_6 AND not_result_4 ;
   DFFPC (rtlc2n155,GND,GND,clk,o_sevenseg(14)) ;
   GND <= '0' ;
   DFFPC (not_rtlc2n152,GND,GND,clk,o_sevenseg(13)) ;
   DFFPC (rtlc2n151,GND,GND,clk,o_sevenseg(12)) ;
   DFFPC (rtlc2n149,GND,GND,clk,o_sevenseg(11)) ;
   DFFPC (rtlc2n147,GND,GND,clk,o_sevenseg(10)) ;
   DFFPC (not_rtlc2n144,GND,GND,clk,o_sevenseg(9)) ;
   DFFPC (not_rtlc2n143,GND,GND,clk,o_sevenseg(8)) ;
   DFFPC (nreset,GND,GND,clk,o_sevenseg(7)) ;
   DFFPC (rtlc2n236,GND,GND,clk,o_sevenseg(6)) ;
   DFFPC (not_rtlc2n233,GND,GND,clk,o_sevenseg(5)) ;
   DFFPC (rtlc2n232,GND,GND,clk,o_sevenseg(4)) ;
   DFFPC (rtlc2n230,GND,GND,clk,o_sevenseg(3)) ;
   DFFPC (rtlc2n228,GND,GND,clk,o_sevenseg(2)) ;
   DFFPC (not_rtlc2n225,GND,GND,clk,o_sevenseg(1)) ;
   DFFPC (not_rtlc2n224,GND,GND,clk,o_sevenseg(0)) ;
   result(0) <= GND when GND = '1' else 'Z' ;
   result(1) <= GND when GND = '1' else 'Z' ;
   result(2) <= GND when GND = '1' else 'Z' ;
   result(3) <= GND when GND = '1' else 'Z' ;
   result(4) <= GND when GND = '1' else 'Z' ;
   result(5) <= GND when GND = '1' else 'Z' ;
   result(6) <= GND when GND = '1' else 'Z' ;
   result(7) <= GND when GND = '1' else 'Z' ;
end main ;

