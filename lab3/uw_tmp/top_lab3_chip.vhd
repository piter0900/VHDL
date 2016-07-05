-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Full Version"

-- DATE "06/10/2015 12:19:48"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_lab3_chip IS
    PORT (
	nreset : IN std_logic;
	clk : IN std_logic;
	rxflex : IN std_logic;
	txflex : OUT std_logic;
	ctsflex : OUT std_logic;
	o_sevenseg : OUT std_logic_vector(15 DOWNTO 0)
	);
END top_lab3_chip;

-- Design Ports Information
-- txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctsflex	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[7]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[15]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nreset	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_lab3_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nreset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rxflex : std_logic;
SIGNAL ww_txflex : std_logic;
SIGNAL ww_ctsflex : std_logic;
SIGNAL ww_o_sevenseg : std_logic_vector(15 DOWNTO 0);
SIGNAL \nreset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uw_uart_u_uarts|nx61140z1\ : std_logic;
SIGNAL \u_uw_uart_sdout_3_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx28624z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx31615z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx28624z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx4608z3\ : std_logic;
SIGNAL u_uw_uart_state : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx32400z6\ : std_logic;
SIGNAL \u_uw_uart_mdata_3_\ : std_logic;
SIGNAL nx21486z2 : std_logic;
SIGNAL nx21486z1 : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx29621z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx29621z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx51917z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx51917z3\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx50920z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx50920z3\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx51917z4\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx51917z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx50920z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx49923z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx48926z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx64508z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z11\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z15\ : std_logic;
SIGNAL nx58118z5 : std_logic;
SIGNAL u_uw_uart_o_pixavail : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx56256z1\ : std_logic;
SIGNAL nx58118z2 : std_logic;
SIGNAL nx58118z1 : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx30618z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx30618z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z2\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z1\ : std_logic;
SIGNAL nx51426z1 : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx31615z1\ : std_logic;
SIGNAL u_uw_uart_rawrx : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx15541z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z4\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx8373z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx9370z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx9370z1\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx52268z1\ : std_logic;
SIGNAL \nreset~combout\ : std_logic;
SIGNAL \nreset~clkctrl_outclk\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx32400z7\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TxDivisor_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TxDivisor_5_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx32400z3\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx32400z4\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx32400z5\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx32400z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx32400z9\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx32400z8\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx32400z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TopTx\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx5605z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart_dsend~feeder_combout\ : std_logic;
SIGNAL \rxflex~combout\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|NOT_Rx\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|not_Rx_r\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z2~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxFSM_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxFSM_6_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx15541z3\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx15541z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx14544z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxFSM_2_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx13547z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxFSM_3_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|not_rtlc17_X_0_n360\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx10367z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx8373z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx11364z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx13547z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx11553z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxFSM_5_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx16538z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx65151z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z7\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z8\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z6\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z5\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z9\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z10\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z3\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx34394z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TopRx\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx43465z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxRDY\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx15376z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|RxErr\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx51271z1\ : std_logic;
SIGNAL nx24656z2 : std_logic;
SIGNAL nx24656z1 : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z31\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z30\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z29\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z28\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z27\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z26\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z24\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z23\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z22\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z20\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z19\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z21\ : std_logic;
SIGNAL nx58118z6 : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z25\ : std_logic;
SIGNAL nx58118z7 : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z18\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z17\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z16\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z14\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z13\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z12\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z10\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z9\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z8\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z6\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx20087z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z5\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z4\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx21084z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z3\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx19090z1\ : std_logic;
SIGNAL \u_uw_uart_modgen_counter_waitcount|nx22081z7\ : std_logic;
SIGNAL nx58118z4 : std_logic;
SIGNAL nx58118z3 : std_logic;
SIGNAL nx30026z1 : std_logic;
SIGNAL u_uw_uart_ack : std_logic;
SIGNAL nx58118z8 : std_logic;
SIGNAL u_uw_uart_dsend : std_logic;
SIGNAL nx62599z1 : std_logic;
SIGNAL u_uw_uart_ld_sdout : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx4608z2\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx4608z1\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|TxFSM_0_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_0_\ : std_logic;
SIGNAL \u_uw_uart_u_uarts|nx61812z1\ : std_logic;
SIGNAL nx21351z2 : std_logic;
SIGNAL ALT_INV_nx21351z2 : std_logic;
SIGNAL \ALT_INV_nreset~combout\ : std_logic;
SIGNAL \ALT_INV_nreset~clkctrl_outclk\ : std_logic;

BEGIN

ww_nreset <= nreset;
ww_clk <= clk;
ww_rxflex <= rxflex;
txflex <= ww_txflex;
ctsflex <= ww_ctsflex;
o_sevenseg <= ww_o_sevenseg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nreset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \nreset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
ALT_INV_nx21351z2 <= NOT nx21351z2;
\ALT_INV_nreset~combout\ <= NOT \nreset~combout\;
\ALT_INV_nreset~clkctrl_outclk\ <= NOT \nreset~clkctrl_outclk\;

-- Location: LCFF_X50_Y28_N11
\u_uw_uart_u_uarts|reg_Tx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx28624z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|nx61140z1\);

-- Location: LCFF_X42_Y28_N1
\u_uw_uart_reg_sdout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx21486z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_sdout_3_\);

-- Location: LCFF_X50_Y28_N3
\u_uw_uart_u_uarts|reg_Tx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx29621z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|nx28624z2\);

-- Location: LCCOMB_X50_Y28_N4
\u_uw_uart_u_uarts|ix28624z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_\ = (\u_uw_uart_u_uarts|TxFSM_1_\ & (!\u_uw_uart_u_uarts|nx28624z2\)) # (!\u_uw_uart_u_uarts|TxFSM_1_\ & ((\u_uw_uart_sdout_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|nx28624z2\,
	datac => \u_uw_uart_sdout_3_\,
	datad => \u_uw_uart_u_uarts|TxFSM_1_\,
	combout => \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_\);

-- Location: LCCOMB_X50_Y28_N14
\u_uw_uart_u_uarts|ix31615z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx31615z2\ = (!\u_uw_uart_u_uarts|TxFSM_0_\ & ((\u_uw_uart_u_uarts|TxFSM_1_\ & (\u_uw_uart_u_uarts|TopTx\)) # (!\u_uw_uart_u_uarts|TxFSM_1_\ & ((u_uw_uart_ld_sdout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|TxFSM_0_\,
	datab => \u_uw_uart_u_uarts|TopTx\,
	datac => u_uw_uart_ld_sdout,
	datad => \u_uw_uart_u_uarts|TxFSM_1_\,
	combout => \u_uw_uart_u_uarts|nx31615z2\);

-- Location: LCCOMB_X50_Y28_N10
\u_uw_uart_u_uarts|ix28624z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx28624z1\ = (\u_uw_uart_u_uarts|nx31615z2\ & ((!\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_\))) # (!\u_uw_uart_u_uarts|nx31615z2\ & (\u_uw_uart_u_uarts|nx61140z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|nx31615z2\,
	datac => \u_uw_uart_u_uarts|nx61140z1\,
	datad => \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_\,
	combout => \u_uw_uart_u_uarts|nx28624z1\);

-- Location: LCFF_X50_Y28_N27
\u_uw_uart_u_uarts|modgen_counter_TxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx51917z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|TxBitCnt_3_\);

-- Location: LCFF_X48_Y28_N11
\u_uw_uart_u_uarts|modgen_counter_TxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx50920z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|TxBitCnt_2_\);

-- Location: LCFF_X50_Y28_N13
\u_uw_uart_u_uarts|modgen_counter_TxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx49923z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|TxBitCnt_1_\);

-- Location: LCFF_X50_Y28_N31
\u_uw_uart_u_uarts|modgen_counter_TxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx48926z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|TxBitCnt_0_\);

-- Location: LCCOMB_X50_Y28_N16
\u_uw_uart_u_uarts|ix4608z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx4608z3\ = (\u_uw_uart_u_uarts|TxBitCnt_1_\) # (((\u_uw_uart_u_uarts|TxBitCnt_2_\) # (\u_uw_uart_u_uarts|TxBitCnt_3_\)) # (!\u_uw_uart_u_uarts|TxBitCnt_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|TxBitCnt_1_\,
	datab => \u_uw_uart_u_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart_u_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart_u_uarts|TxBitCnt_3_\,
	combout => \u_uw_uart_u_uarts|nx4608z3\);

-- Location: LCFF_X42_Y28_N29
u_uw_uart_reg_state : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx21486z2,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_uw_uart_state);

-- Location: LCFF_X49_Y28_N7
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx51271z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23\);

-- Location: LCFF_X49_Y28_N17
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx56256z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\);

-- Location: LCFF_X49_Y28_N11
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx53265z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\);

-- Location: LCCOMB_X48_Y28_N6
\u_uw_uart_u_uarts|ix32400z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx32400z6\ = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\,
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\,
	datac => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\,
	datad => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\,
	combout => \u_uw_uart_u_uarts|nx32400z6\);

-- Location: LCFF_X42_Y28_N7
\u_uw_uart_reg_mdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx58118z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_mdata_3_\);

-- Location: LCCOMB_X42_Y28_N28
ix21486z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx21486z2 = (!u_uw_uart_state & u_uw_uart_dsend)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_uw_uart_state,
	datad => u_uw_uart_dsend,
	combout => nx21486z2);

-- Location: LCCOMB_X42_Y28_N0
ix21486z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx21486z1 = (\nreset~combout\ & ((nx21486z2 & ((\u_uw_uart_mdata_3_\))) # (!nx21486z2 & (\u_uw_uart_sdout_3_\)))) # (!\nreset~combout\ & (((\u_uw_uart_sdout_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nreset~combout\,
	datab => nx21486z2,
	datac => \u_uw_uart_sdout_3_\,
	datad => \u_uw_uart_mdata_3_\,
	combout => nx21486z1);

-- Location: LCFF_X51_Y28_N25
\u_uw_uart_u_uarts|reg_Tx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx30618z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|nx29621z2\);

-- Location: LCCOMB_X50_Y28_N18
\u_uw_uart_u_uarts|ix29621z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_\ = (\u_uw_uart_u_uarts|TxFSM_1_\ & ((!\u_uw_uart_u_uarts|nx29621z2\))) # (!\u_uw_uart_u_uarts|TxFSM_1_\ & (\u_uw_uart_sdout_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|TxFSM_1_\,
	datac => \u_uw_uart_sdout_3_\,
	datad => \u_uw_uart_u_uarts|nx29621z2\,
	combout => \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_\);

-- Location: LCCOMB_X50_Y28_N2
\u_uw_uart_u_uarts|ix29621z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx29621z1\ = (\u_uw_uart_u_uarts|nx31615z2\ & ((!\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_\))) # (!\u_uw_uart_u_uarts|nx31615z2\ & (\u_uw_uart_u_uarts|nx28624z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|nx31615z2\,
	datac => \u_uw_uart_u_uarts|nx28624z2\,
	datad => \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_\,
	combout => \u_uw_uart_u_uarts|nx29621z1\);

-- Location: LCCOMB_X48_Y28_N22
\u_uw_uart_u_uarts|ix51917z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx51917z2\ = (\u_uw_uart_u_uarts|TopTx\ & (\u_uw_uart_u_uarts|TxFSM_0_\ $ (\u_uw_uart_u_uarts|TxFSM_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|TopTx\,
	datac => \u_uw_uart_u_uarts|TxFSM_0_\,
	datad => \u_uw_uart_u_uarts|TxFSM_1_\,
	combout => \u_uw_uart_u_uarts|nx51917z2\);

-- Location: LCCOMB_X50_Y28_N20
\u_uw_uart_u_uarts|ix51917z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx51917z3\ = (\u_uw_uart_u_uarts|TxBitCnt_0_\) # ((\u_uw_uart_u_uarts|TxBitCnt_2_\) # (\u_uw_uart_u_uarts|TxBitCnt_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart_u_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart_u_uarts|TxBitCnt_1_\,
	combout => \u_uw_uart_u_uarts|nx51917z3\);

-- Location: LCCOMB_X48_Y28_N16
\u_uw_uart_u_uarts|ix50920z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx50920z2\ = (\u_uw_uart_u_uarts|TopTx\ & !\u_uw_uart_u_uarts|TxFSM_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|TopTx\,
	datad => \u_uw_uart_u_uarts|TxFSM_1_\,
	combout => \u_uw_uart_u_uarts|nx50920z2\);

-- Location: LCCOMB_X50_Y28_N6
\u_uw_uart_u_uarts|ix50920z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx50920z3\ = (\u_uw_uart_u_uarts|TxBitCnt_0_\) # (\u_uw_uart_u_uarts|TxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|TxBitCnt_0_\,
	datad => \u_uw_uart_u_uarts|TxBitCnt_1_\,
	combout => \u_uw_uart_u_uarts|nx50920z3\);

-- Location: LCCOMB_X48_Y28_N18
\u_uw_uart_u_uarts|ix51917z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx51917z4\ = (\u_uw_uart_u_uarts|nx50920z2\) # ((!\u_uw_uart_u_uarts|TxBitCnt_2_\ & (!\u_uw_uart_u_uarts|TxBitCnt_3_\ & !\u_uw_uart_u_uarts|nx50920z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|TxBitCnt_2_\,
	datab => \u_uw_uart_u_uarts|TxBitCnt_3_\,
	datac => \u_uw_uart_u_uarts|nx50920z2\,
	datad => \u_uw_uart_u_uarts|nx50920z3\,
	combout => \u_uw_uart_u_uarts|nx51917z4\);

-- Location: LCCOMB_X50_Y28_N26
\u_uw_uart_u_uarts|ix51917z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx51917z1\ = (\u_uw_uart_u_uarts|nx51917z2\ & ((\u_uw_uart_u_uarts|nx51917z4\) # ((\u_uw_uart_u_uarts|nx51917z3\ & \u_uw_uart_u_uarts|TxBitCnt_3_\)))) # (!\u_uw_uart_u_uarts|nx51917z2\ & (((\u_uw_uart_u_uarts|TxBitCnt_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx51917z3\,
	datab => \u_uw_uart_u_uarts|nx51917z2\,
	datac => \u_uw_uart_u_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart_u_uarts|nx51917z4\,
	combout => \u_uw_uart_u_uarts|nx51917z1\);

-- Location: LCCOMB_X48_Y28_N10
\u_uw_uart_u_uarts|ix50920z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx50920z1\ = (\u_uw_uart_u_uarts|nx51917z2\ & (!\u_uw_uart_u_uarts|nx50920z2\ & (\u_uw_uart_u_uarts|TxBitCnt_2_\ $ (!\u_uw_uart_u_uarts|nx50920z3\)))) # (!\u_uw_uart_u_uarts|nx51917z2\ & (((\u_uw_uart_u_uarts|TxBitCnt_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx50920z2\,
	datab => \u_uw_uart_u_uarts|nx51917z2\,
	datac => \u_uw_uart_u_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart_u_uarts|nx50920z3\,
	combout => \u_uw_uart_u_uarts|nx50920z1\);

-- Location: LCCOMB_X50_Y28_N12
\u_uw_uart_u_uarts|ix49923z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx49923z1\ = (\u_uw_uart_u_uarts|nx51917z2\ & (!\u_uw_uart_u_uarts|nx50920z2\ & (\u_uw_uart_u_uarts|TxBitCnt_0_\ $ (!\u_uw_uart_u_uarts|TxBitCnt_1_\)))) # (!\u_uw_uart_u_uarts|nx51917z2\ & (((\u_uw_uart_u_uarts|TxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx50920z2\,
	datab => \u_uw_uart_u_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart_u_uarts|TxBitCnt_1_\,
	datad => \u_uw_uart_u_uarts|nx51917z2\,
	combout => \u_uw_uart_u_uarts|nx49923z1\);

-- Location: LCCOMB_X50_Y28_N30
\u_uw_uart_u_uarts|ix48926z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx48926z1\ = (\u_uw_uart_u_uarts|TxFSM_0_\ & ((\u_uw_uart_u_uarts|TxBitCnt_0_\) # ((\u_uw_uart_u_uarts|TopTx\ & !\u_uw_uart_u_uarts|TxFSM_1_\)))) # (!\u_uw_uart_u_uarts|TxFSM_0_\ & (\u_uw_uart_u_uarts|TxBitCnt_0_\ $ 
-- (((\u_uw_uart_u_uarts|TopTx\ & \u_uw_uart_u_uarts|TxFSM_1_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|TxFSM_0_\,
	datab => \u_uw_uart_u_uarts|TopTx\,
	datac => \u_uw_uart_u_uarts|TxBitCnt_0_\,
	datad => \u_uw_uart_u_uarts|TxFSM_1_\,
	combout => \u_uw_uart_u_uarts|nx48926z1\);

-- Location: LCFF_X41_Y28_N31
\u_uw_uart_modgen_counter_waitcount|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx22081z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx64508z1\);

-- Location: LCFF_X41_Y28_N21
\u_uw_uart_modgen_counter_waitcount|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx17096z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z11\);

-- Location: LCFF_X41_Y28_N17
\u_uw_uart_modgen_counter_waitcount|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx59247z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z15\);

-- Location: LCCOMB_X42_Y28_N20
ix58118z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx58118z5 = (!\u_uw_uart_modgen_counter_waitcount|nx22081z11\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z9\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z15\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx22081z11\,
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z9\,
	datac => \u_uw_uart_modgen_counter_waitcount|nx22081z15\,
	datad => \u_uw_uart_modgen_counter_waitcount|nx22081z13\,
	combout => nx58118z5);

-- Location: LCFF_X42_Y28_N13
u_uw_uart_reg_charavail : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx51426z1,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_uw_uart_o_pixavail);

-- Location: LCCOMB_X49_Y28_N6
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx51271z1\ = \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23\ $ (VCC)
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22\ = CARRY(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23\,
	datad => VCC,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx51271z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22\);

-- Location: LCCOMB_X49_Y28_N10
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx53265z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\ & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20\ $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\ & 
-- (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20\ & VCC))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18\ = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx53265z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18\);

-- Location: LCCOMB_X49_Y28_N16
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx56256z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14\)) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14\) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx56256z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12\);

-- Location: LCCOMB_X42_Y28_N22
ix58118z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx58118z2 = (!nx58118z8 & ((\u_uw_uart_mdata_3_\) # ((\nreset~combout\ & nx58118z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nreset~combout\,
	datab => nx58118z8,
	datac => nx58118z3,
	datad => \u_uw_uart_mdata_3_\,
	combout => nx58118z2);

-- Location: LCCOMB_X42_Y28_N6
ix58118z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58118z1 = (nx58118z2) # ((\u_uw_uart_mdata_3_\ & ((!\u_uw_uart_u_uarts|RxErr\) # (!\nreset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nreset~combout\,
	datab => \u_uw_uart_u_uarts|RxErr\,
	datac => \u_uw_uart_mdata_3_\,
	datad => nx58118z2,
	combout => nx58118z1);

-- Location: LCFF_X51_Y28_N3
\u_uw_uart_u_uarts|reg_Tx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx31615z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|nx30618z2\);

-- Location: LCCOMB_X51_Y28_N28
\u_uw_uart_u_uarts|ix30618z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_\ = (\u_uw_uart_u_uarts|TxFSM_1_\ & ((!\u_uw_uart_u_uarts|nx30618z2\))) # (!\u_uw_uart_u_uarts|TxFSM_1_\ & (\u_uw_uart_sdout_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|TxFSM_1_\,
	datac => \u_uw_uart_sdout_3_\,
	datad => \u_uw_uart_u_uarts|nx30618z2\,
	combout => \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_\);

-- Location: LCCOMB_X51_Y28_N24
\u_uw_uart_u_uarts|ix30618z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx30618z1\ = (\u_uw_uart_u_uarts|nx31615z2\ & ((!\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_\))) # (!\u_uw_uart_u_uarts|nx31615z2\ & (\u_uw_uart_u_uarts|nx29621z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx31615z2\,
	datac => \u_uw_uart_u_uarts|nx29621z2\,
	datad => \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_\,
	combout => \u_uw_uart_u_uarts|nx30618z1\);

-- Location: LCCOMB_X41_Y28_N16
\u_uw_uart_modgen_counter_waitcount|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx59247z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z15\ & (\u_uw_uart_modgen_counter_waitcount|nx22081z16\ $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z15\ & 
-- (!\u_uw_uart_modgen_counter_waitcount|nx22081z16\ & VCC))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z14\ = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z15\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx22081z15\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z16\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx59247z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z14\);

-- Location: LCCOMB_X41_Y28_N20
\u_uw_uart_modgen_counter_waitcount|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx17096z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z11\ & (\u_uw_uart_modgen_counter_waitcount|nx22081z12\ $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z11\ & 
-- (!\u_uw_uart_modgen_counter_waitcount|nx22081z12\ & VCC))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z10\ = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z11\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx22081z11\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z12\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx17096z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z10\);

-- Location: LCCOMB_X41_Y28_N28
\u_uw_uart_modgen_counter_waitcount|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx21084z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z3\ & (\u_uw_uart_modgen_counter_waitcount|nx22081z4\ $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z3\ & 
-- (!\u_uw_uart_modgen_counter_waitcount|nx22081z4\ & VCC))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z2\ = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z3\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z4\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx21084z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z2\);

-- Location: LCCOMB_X41_Y28_N30
\u_uw_uart_modgen_counter_waitcount|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx22081z1\ = \u_uw_uart_modgen_counter_waitcount|nx22081z2\ $ (\u_uw_uart_modgen_counter_waitcount|nx64508z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart_modgen_counter_waitcount|nx64508z1\,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z2\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx22081z1\);

-- Location: LCCOMB_X42_Y28_N12
ix51426z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx51426z1 = (!u_uw_uart_o_pixavail & \u_uw_uart_u_uarts|RxRDY\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_uw_uart_o_pixavail,
	datad => \u_uw_uart_u_uarts|RxRDY\,
	combout => nx51426z1);

-- Location: LCCOMB_X51_Y28_N2
\u_uw_uart_u_uarts|ix31615z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx31615z1\ = (\u_uw_uart_u_uarts|nx31615z2\ & (!\u_uw_uart_sdout_3_\ & ((!\u_uw_uart_u_uarts|TxFSM_1_\)))) # (!\u_uw_uart_u_uarts|nx31615z2\ & (((\u_uw_uart_u_uarts|nx30618z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx31615z2\,
	datab => \u_uw_uart_sdout_3_\,
	datac => \u_uw_uart_u_uarts|nx30618z2\,
	datad => \u_uw_uart_u_uarts|TxFSM_1_\,
	combout => \u_uw_uart_u_uarts|nx31615z1\);

-- Location: LCCOMB_X45_Y28_N26
ix34741z52924 : cycloneii_lcell_comb
-- Equation(s):
-- u_uw_uart_rawrx = (\nreset~combout\ & \rxflex~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nreset~combout\,
	datad => \rxflex~combout\,
	combout => u_uw_uart_rawrx);

-- Location: LCCOMB_X45_Y28_N6
\u_uw_uart_u_uarts|ix15541z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx15541z2\ = (\u_uw_uart_u_uarts|nx34394z2\ & ((\u_uw_uart_u_uarts|RxFSM_6_\ & (u_uw_uart_rawrx)) # (!\u_uw_uart_u_uarts|RxFSM_6_\ & ((\u_uw_uart_u_uarts|TopRx\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|RxFSM_6_\,
	datab => u_uw_uart_rawrx,
	datac => \u_uw_uart_u_uarts|TopRx\,
	datad => \u_uw_uart_u_uarts|nx34394z2\,
	combout => \u_uw_uart_u_uarts|nx15541z2\);

-- Location: LCCOMB_X48_Y28_N4
\u_uw_uart_u_uarts|ix34394z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z4\ = (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\ & (\u_uw_uart_u_uarts|TxDivisor_5_\ & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\,
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\,
	datac => \u_uw_uart_u_uarts|TxDivisor_5_\,
	datad => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1\,
	combout => \u_uw_uart_u_uarts|nx34394z4\);

-- Location: LCFF_X47_Y28_N7
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx53265z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\);

-- Location: LCFF_X44_Y28_N3
\u_uw_uart_u_uarts|modgen_counter_RxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx9370z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxBitCnt_2_\);

-- Location: LCCOMB_X47_Y28_N6
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx53265z1\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\ & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18\ $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\ & 
-- (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18\ & VCC))
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16\ = CARRY((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\ & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx53265z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16\);

-- Location: LCCOMB_X44_Y28_N6
\u_uw_uart_u_uarts|ix8373z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx8373z2\ = \u_uw_uart_u_uarts|RxBitCnt_3_\ $ (((\u_uw_uart_u_uarts|RxBitCnt_0_\ & (\u_uw_uart_u_uarts|RxBitCnt_2_\ & \u_uw_uart_u_uarts|RxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|RxBitCnt_0_\,
	datab => \u_uw_uart_u_uarts|RxBitCnt_2_\,
	datac => \u_uw_uart_u_uarts|RxBitCnt_1_\,
	datad => \u_uw_uart_u_uarts|RxBitCnt_3_\,
	combout => \u_uw_uart_u_uarts|nx8373z2\);

-- Location: LCCOMB_X44_Y28_N8
\u_uw_uart_u_uarts|ix9370z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx9370z2\ = (\u_uw_uart_u_uarts|RxBitCnt_1_\ & \u_uw_uart_u_uarts|RxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart_u_uarts|RxBitCnt_1_\,
	datad => \u_uw_uart_u_uarts|RxBitCnt_0_\,
	combout => \u_uw_uart_u_uarts|nx9370z2\);

-- Location: LCCOMB_X44_Y28_N2
\u_uw_uart_u_uarts|ix9370z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx9370z1\ = (\u_uw_uart_u_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart_u_uarts|nx34394z2\ & (\u_uw_uart_u_uarts|nx9370z2\ $ (\u_uw_uart_u_uarts|RxBitCnt_2_\)))) # (!\u_uw_uart_u_uarts|not_rtlc17_X_0_n360\ & 
-- (((\u_uw_uart_u_uarts|RxBitCnt_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx9370z2\,
	datab => \u_uw_uart_u_uarts|not_rtlc17_X_0_n360\,
	datac => \u_uw_uart_u_uarts|RxBitCnt_2_\,
	datad => \u_uw_uart_u_uarts|nx34394z2\,
	combout => \u_uw_uart_u_uarts|nx9370z1\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
clk_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y28_N8
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx52268z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22\)) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22\) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx52268z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
nreset_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_nreset,
	combout => \nreset~combout\);

-- Location: CLKCTRL_G3
\nreset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nreset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nreset~clkctrl_outclk\);

-- Location: LCFF_X49_Y28_N9
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx52268z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\);

-- Location: LCCOMB_X49_Y28_N12
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx54262z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18\)) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18\) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx54262z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16\);

-- Location: LCCOMB_X49_Y28_N14
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx55259z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\ & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16\ $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\ & 
-- (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16\ & VCC))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14\ = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx55259z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14\);

-- Location: LCFF_X49_Y28_N15
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx55259z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\);

-- Location: LCFF_X49_Y28_N13
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx54262z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\);

-- Location: LCCOMB_X48_Y28_N8
\u_uw_uart_u_uarts|ix32400z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx32400z7\ = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\,
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\,
	datac => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\,
	datad => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\,
	combout => \u_uw_uart_u_uarts|nx32400z7\);

-- Location: LCCOMB_X49_Y28_N18
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx57253z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\ & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12\ $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\ & 
-- (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12\ & VCC))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10\ = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx57253z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10\);

-- Location: LCFF_X49_Y28_N19
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx57253z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\);

-- Location: LCCOMB_X49_Y28_N20
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx58250z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10\)) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10\) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx58250z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8\);

-- Location: LCCOMB_X49_Y28_N22
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx59247z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\ & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8\ $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\ & 
-- (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8\ & VCC))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6\ = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx59247z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6\);

-- Location: LCFF_X49_Y28_N23
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx59247z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\);

-- Location: LCCOMB_X49_Y28_N24
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx60244z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6\)) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6\) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx60244z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4\);

-- Location: LCCOMB_X49_Y28_N26
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx17096z1\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\ & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4\ $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\ & 
-- (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4\ & VCC))
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2\ = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx17096z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2\);

-- Location: LCFF_X49_Y28_N27
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx17096z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\);

-- Location: LCCOMB_X49_Y28_N28
\u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z1\ = \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2\ $ (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1\,
	cin => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2\,
	combout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z1\);

-- Location: LCFF_X49_Y28_N29
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1\);

-- Location: LCCOMB_X48_Y28_N12
\u_uw_uart_u_uarts|TxDivisor_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|TxDivisor_5_~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_uw_uart_u_uarts|TxDivisor_5_~feeder_combout\);

-- Location: LCFF_X48_Y28_N13
\u_uw_uart_u_uarts|reg_TxDivisor_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|TxDivisor_5_~feeder_combout\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|TxDivisor_5_\);

-- Location: LCFF_X49_Y28_N25
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx60244z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\);

-- Location: LCCOMB_X48_Y28_N14
\u_uw_uart_u_uarts|ix32400z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx32400z3\ = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1\ & (\u_uw_uart_u_uarts|TxDivisor_5_\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\,
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1\,
	datac => \u_uw_uart_u_uarts|TxDivisor_5_\,
	datad => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\,
	combout => \u_uw_uart_u_uarts|nx32400z3\);

-- Location: LCFF_X49_Y28_N21
\u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx58250z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\);

-- Location: LCCOMB_X48_Y28_N24
\u_uw_uart_u_uarts|ix32400z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx32400z4\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\ & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\ & \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13\,
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11\,
	datac => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9\,
	datad => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7\,
	combout => \u_uw_uart_u_uarts|nx32400z4\);

-- Location: LCCOMB_X48_Y28_N26
\u_uw_uart_u_uarts|ix32400z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx32400z5\ = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\ & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19\,
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21\,
	datac => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15\,
	datad => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17\,
	combout => \u_uw_uart_u_uarts|nx32400z5\);

-- Location: LCCOMB_X48_Y28_N20
\u_uw_uart_u_uarts|ix32400z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx32400z2\ = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23\ & (\u_uw_uart_u_uarts|nx32400z3\ & (\u_uw_uart_u_uarts|nx32400z4\ & \u_uw_uart_u_uarts|nx32400z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23\,
	datab => \u_uw_uart_u_uarts|nx32400z3\,
	datac => \u_uw_uart_u_uarts|nx32400z4\,
	datad => \u_uw_uart_u_uarts|nx32400z5\,
	combout => \u_uw_uart_u_uarts|nx32400z2\);

-- Location: LCCOMB_X48_Y28_N2
\u_uw_uart_u_uarts|ix32400z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx32400z9\ = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\ & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3\,
	datad => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5\,
	combout => \u_uw_uart_u_uarts|nx32400z9\);

-- Location: LCCOMB_X48_Y28_N28
\u_uw_uart_u_uarts|ix32400z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx32400z8\ = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23\ & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1\ & (!\u_uw_uart_u_uarts|TxDivisor_5_\ & \u_uw_uart_u_uarts|nx32400z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23\,
	datab => \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1\,
	datac => \u_uw_uart_u_uarts|TxDivisor_5_\,
	datad => \u_uw_uart_u_uarts|nx32400z9\,
	combout => \u_uw_uart_u_uarts|nx32400z8\);

-- Location: LCCOMB_X48_Y28_N0
\u_uw_uart_u_uarts|ix32400z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx32400z1\ = (\u_uw_uart_u_uarts|nx32400z2\) # ((\u_uw_uart_u_uarts|nx32400z6\ & (\u_uw_uart_u_uarts|nx32400z7\ & \u_uw_uart_u_uarts|nx32400z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx32400z6\,
	datab => \u_uw_uart_u_uarts|nx32400z7\,
	datac => \u_uw_uart_u_uarts|nx32400z2\,
	datad => \u_uw_uart_u_uarts|nx32400z8\,
	combout => \u_uw_uart_u_uarts|nx32400z1\);

-- Location: LCFF_X48_Y28_N1
\u_uw_uart_u_uarts|reg_TopTx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx32400z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|TopTx\);

-- Location: LCCOMB_X50_Y28_N28
\u_uw_uart_u_uarts|ix5605z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx5605z1\ = \u_uw_uart_u_uarts|TxFSM_1_\ $ (((\u_uw_uart_u_uarts|TxFSM_0_\ & \u_uw_uart_u_uarts|TopTx\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|TxFSM_0_\,
	datab => \u_uw_uart_u_uarts|TopTx\,
	datac => \u_uw_uart_u_uarts|TxFSM_1_\,
	combout => \u_uw_uart_u_uarts|nx5605z1\);

-- Location: LCFF_X50_Y28_N29
\u_uw_uart_u_uarts|reg_TxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx5605z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|TxFSM_1_\);

-- Location: LCCOMB_X42_Y28_N2
\u_uw_uart_dsend~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_dsend~feeder_combout\ = nx58118z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx58118z3,
	combout => \u_uw_uart_dsend~feeder_combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
rxflex_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rxflex,
	combout => \rxflex~combout\);

-- Location: LCCOMB_X45_Y28_N18
\u_uw_uart_u_uarts|ix57064z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|NOT_Rx\ = (!\rxflex~combout\) # (!\nreset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nreset~combout\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart_u_uarts|NOT_Rx\);

-- Location: LCFF_X45_Y28_N19
\u_uw_uart_u_uarts|reg_Rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|NOT_Rx\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|not_Rx_r\);

-- Location: LCCOMB_X45_Y28_N0
\u_uw_uart_u_uarts|nx34394z2~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z2~_wirecell_combout\ = !\u_uw_uart_u_uarts|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart_u_uarts|nx34394z2\,
	combout => \u_uw_uart_u_uarts|nx34394z2~_wirecell_combout\);

-- Location: LCCOMB_X45_Y28_N10
\u_uw_uart_u_uarts|RxFSM_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|RxFSM_6_~feeder_combout\ = \u_uw_uart_u_uarts|RxFSM_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart_u_uarts|RxFSM_1_\,
	combout => \u_uw_uart_u_uarts|RxFSM_6_~feeder_combout\);

-- Location: LCFF_X45_Y28_N11
\u_uw_uart_u_uarts|reg_RxFSM_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|RxFSM_6_~feeder_combout\,
	sdata => \u_uw_uart_u_uarts|RxFSM_5_\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sload => \u_uw_uart_u_uarts|not_Rx_r\,
	ena => \u_uw_uart_u_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxFSM_6_\);

-- Location: LCCOMB_X45_Y28_N14
\u_uw_uart_u_uarts|ix15541z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx15541z3\ = ((\rxflex~combout\ & \nreset~combout\)) # (!\u_uw_uart_u_uarts|RxFSM_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxflex~combout\,
	datab => \nreset~combout\,
	datad => \u_uw_uart_u_uarts|RxFSM_6_\,
	combout => \u_uw_uart_u_uarts|nx15541z3\);

-- Location: LCCOMB_X45_Y28_N24
\u_uw_uart_u_uarts|ix15541z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx15541z1\ = (\u_uw_uart_u_uarts|nx15541z2\) # ((\u_uw_uart_u_uarts|not_Rx_r\ & (\u_uw_uart_u_uarts|nx15541z3\ & !\u_uw_uart_u_uarts|nx34394z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx15541z2\,
	datab => \u_uw_uart_u_uarts|not_Rx_r\,
	datac => \u_uw_uart_u_uarts|nx15541z3\,
	datad => \u_uw_uart_u_uarts|nx34394z2\,
	combout => \u_uw_uart_u_uarts|nx15541z1\);

-- Location: LCFF_X45_Y28_N1
\u_uw_uart_u_uarts|reg_RxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx34394z2~_wirecell_combout\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	ena => \u_uw_uart_u_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxFSM_1_\);

-- Location: LCCOMB_X45_Y28_N12
\u_uw_uart_u_uarts|ix14544z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx14544z1\ = (\u_uw_uart_u_uarts|RxFSM_3_\) # ((\u_uw_uart_u_uarts|RxFSM_1_\ & \u_uw_uart_u_uarts|not_Rx_r\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|RxFSM_1_\,
	datac => \u_uw_uart_u_uarts|RxFSM_3_\,
	datad => \u_uw_uart_u_uarts|not_Rx_r\,
	combout => \u_uw_uart_u_uarts|nx14544z1\);

-- Location: LCFF_X45_Y28_N13
\u_uw_uart_u_uarts|reg_RxFSM_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx14544z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	ena => \u_uw_uart_u_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxFSM_2_\);

-- Location: LCCOMB_X45_Y28_N20
\u_uw_uart_u_uarts|ix13547z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx13547z1\ = (!\u_uw_uart_u_uarts|nx13547z2\ & \u_uw_uart_u_uarts|RxFSM_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart_u_uarts|nx13547z2\,
	datad => \u_uw_uart_u_uarts|RxFSM_2_\,
	combout => \u_uw_uart_u_uarts|nx13547z1\);

-- Location: LCFF_X45_Y28_N21
\u_uw_uart_u_uarts|reg_RxFSM_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx13547z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	ena => \u_uw_uart_u_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxFSM_3_\);

-- Location: LCCOMB_X45_Y28_N28
\u_uw_uart_u_uarts|ix8373z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|not_rtlc17_X_0_n360\ = (\u_uw_uart_u_uarts|RxFSM_3_\ & (\u_uw_uart_u_uarts|TopRx\)) # (!\u_uw_uart_u_uarts|RxFSM_3_\ & ((!\u_uw_uart_u_uarts|nx34394z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|TopRx\,
	datac => \u_uw_uart_u_uarts|RxFSM_3_\,
	datad => \u_uw_uart_u_uarts|nx34394z2\,
	combout => \u_uw_uart_u_uarts|not_rtlc17_X_0_n360\);

-- Location: LCCOMB_X44_Y28_N28
\u_uw_uart_u_uarts|ix10367z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx10367z1\ = (\u_uw_uart_u_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart_u_uarts|nx34394z2\ & (\u_uw_uart_u_uarts|RxBitCnt_0_\ $ (\u_uw_uart_u_uarts|RxBitCnt_1_\)))) # (!\u_uw_uart_u_uarts|not_rtlc17_X_0_n360\ & 
-- (((\u_uw_uart_u_uarts|RxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|RxBitCnt_0_\,
	datab => \u_uw_uart_u_uarts|not_rtlc17_X_0_n360\,
	datac => \u_uw_uart_u_uarts|RxBitCnt_1_\,
	datad => \u_uw_uart_u_uarts|nx34394z2\,
	combout => \u_uw_uart_u_uarts|nx10367z1\);

-- Location: LCFF_X44_Y28_N29
\u_uw_uart_u_uarts|modgen_counter_RxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx10367z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxBitCnt_1_\);

-- Location: LCCOMB_X44_Y28_N0
\u_uw_uart_u_uarts|ix8373z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx8373z1\ = (\u_uw_uart_u_uarts|not_rtlc17_X_0_n360\ & (\u_uw_uart_u_uarts|nx8373z2\ & ((\u_uw_uart_u_uarts|nx34394z2\)))) # (!\u_uw_uart_u_uarts|not_rtlc17_X_0_n360\ & (((\u_uw_uart_u_uarts|RxBitCnt_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx8373z2\,
	datab => \u_uw_uart_u_uarts|not_rtlc17_X_0_n360\,
	datac => \u_uw_uart_u_uarts|RxBitCnt_3_\,
	datad => \u_uw_uart_u_uarts|nx34394z2\,
	combout => \u_uw_uart_u_uarts|nx8373z1\);

-- Location: LCFF_X44_Y28_N1
\u_uw_uart_u_uarts|modgen_counter_RxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx8373z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxBitCnt_3_\);

-- Location: LCCOMB_X45_Y28_N2
\u_uw_uart_u_uarts|ix11364z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx11364z1\ = (\u_uw_uart_u_uarts|RxFSM_3_\ & ((\u_uw_uart_u_uarts|TopRx\ & (!\u_uw_uart_u_uarts|RxBitCnt_0_\ & \u_uw_uart_u_uarts|nx34394z2\)) # (!\u_uw_uart_u_uarts|TopRx\ & (\u_uw_uart_u_uarts|RxBitCnt_0_\)))) # 
-- (!\u_uw_uart_u_uarts|RxFSM_3_\ & (((\u_uw_uart_u_uarts|RxBitCnt_0_\ & \u_uw_uart_u_uarts|nx34394z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|RxFSM_3_\,
	datab => \u_uw_uart_u_uarts|TopRx\,
	datac => \u_uw_uart_u_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart_u_uarts|nx34394z2\,
	combout => \u_uw_uart_u_uarts|nx11364z1\);

-- Location: LCFF_X45_Y28_N3
\u_uw_uart_u_uarts|modgen_counter_RxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx11364z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxBitCnt_0_\);

-- Location: LCCOMB_X45_Y28_N16
\u_uw_uart_u_uarts|ix13547z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx13547z2\ = (!\u_uw_uart_u_uarts|RxBitCnt_2_\ & (!\u_uw_uart_u_uarts|RxBitCnt_1_\ & (\u_uw_uart_u_uarts|RxBitCnt_3_\ & !\u_uw_uart_u_uarts|RxBitCnt_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|RxBitCnt_2_\,
	datab => \u_uw_uart_u_uarts|RxBitCnt_1_\,
	datac => \u_uw_uart_u_uarts|RxBitCnt_3_\,
	datad => \u_uw_uart_u_uarts|RxBitCnt_0_\,
	combout => \u_uw_uart_u_uarts|nx13547z2\);

-- Location: LCCOMB_X45_Y28_N8
\u_uw_uart_u_uarts|ix11553z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx11553z1\ = (\u_uw_uart_u_uarts|nx13547z2\ & \u_uw_uart_u_uarts|RxFSM_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart_u_uarts|nx13547z2\,
	datad => \u_uw_uart_u_uarts|RxFSM_2_\,
	combout => \u_uw_uart_u_uarts|nx11553z1\);

-- Location: LCFF_X45_Y28_N9
\u_uw_uart_u_uarts|reg_RxFSM_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx11553z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	ena => \u_uw_uart_u_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxFSM_5_\);

-- Location: LCCOMB_X45_Y28_N22
\u_uw_uart_u_uarts|ix16538z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx16538z1\ = (!\u_uw_uart_u_uarts|RxFSM_6_\ & ((\u_uw_uart_u_uarts|not_Rx_r\) # (!\u_uw_uart_u_uarts|RxFSM_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|not_Rx_r\,
	datac => \u_uw_uart_u_uarts|RxFSM_5_\,
	datad => \u_uw_uart_u_uarts|RxFSM_6_\,
	combout => \u_uw_uart_u_uarts|nx16538z1\);

-- Location: LCFF_X45_Y28_N23
\u_uw_uart_u_uarts|reg_RxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx16538z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	ena => \u_uw_uart_u_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|nx34394z2\);

-- Location: LCCOMB_X47_Y28_N2
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx51271z1\ = \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21\ $ (VCC)
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20\ = CARRY(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21\,
	datad => VCC,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx51271z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20\);

-- Location: LCCOMB_X47_Y28_N30
\u_uw_uart_u_uarts|ix65151z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx65151z1\ = (\u_uw_uart_u_uarts|nx34394z3\) # (!\u_uw_uart_u_uarts|nx34394z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart_u_uarts|nx34394z2\,
	datad => \u_uw_uart_u_uarts|nx34394z3\,
	combout => \u_uw_uart_u_uarts|nx65151z1\);

-- Location: LCFF_X47_Y28_N3
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx51271z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21\);

-- Location: LCCOMB_X47_Y28_N4
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx52268z1\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20\)) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20\) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx52268z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18\);

-- Location: LCFF_X47_Y28_N5
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx52268z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\);

-- Location: LCCOMB_X47_Y28_N8
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx54262z1\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16\)) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16\) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx54262z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14\);

-- Location: LCFF_X47_Y28_N9
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx54262z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\);

-- Location: LCCOMB_X47_Y28_N10
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx55259z1\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\ & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14\ $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\ & 
-- (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14\ & VCC))
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12\ = CARRY((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\ & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx55259z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12\);

-- Location: LCCOMB_X47_Y28_N12
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx56256z1\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12\)) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12\) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx56256z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10\);

-- Location: LCCOMB_X47_Y28_N14
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx57253z1\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\ & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10\ $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\ & 
-- (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10\ & VCC))
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8\ = CARRY((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\ & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx57253z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8\);

-- Location: LCFF_X47_Y28_N15
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx57253z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\);

-- Location: LCCOMB_X47_Y28_N16
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx58250z1\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8\)) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8\) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx58250z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6\);

-- Location: LCFF_X47_Y28_N17
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx58250z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\);

-- Location: LCFF_X47_Y28_N11
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx55259z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\);

-- Location: LCCOMB_X47_Y28_N0
\u_uw_uart_u_uarts|ix34394z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z7\ = (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\ & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\,
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\,
	datac => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\,
	datad => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\,
	combout => \u_uw_uart_u_uarts|nx34394z7\);

-- Location: LCCOMB_X47_Y28_N24
\u_uw_uart_u_uarts|ix34394z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z8\ = (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\ & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\,
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\,
	datac => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\,
	datad => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21\,
	combout => \u_uw_uart_u_uarts|nx34394z8\);

-- Location: LCCOMB_X47_Y28_N18
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx59247z1\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\ & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6\ $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\ & 
-- (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6\ & VCC))
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4\ = CARRY((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\ & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx59247z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4\);

-- Location: LCFF_X47_Y28_N19
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx59247z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\);

-- Location: LCCOMB_X47_Y28_N20
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx60244z1\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4\)) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\ & 
-- ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4\) # (GND)))
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2\ = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4\) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\,
	datad => VCC,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx60244z1\,
	cout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2\);

-- Location: LCCOMB_X47_Y28_N22
\u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z1\ = \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2\ $ (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1\,
	cin => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2\,
	combout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z1\);

-- Location: LCFF_X47_Y28_N23
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1\);

-- Location: LCFF_X47_Y28_N21
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx60244z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\);

-- Location: LCCOMB_X48_Y28_N30
\u_uw_uart_u_uarts|ix34394z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z6\ = (!\u_uw_uart_u_uarts|TxDivisor_5_\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\ & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|TxDivisor_5_\,
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1\,
	datac => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3\,
	datad => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5\,
	combout => \u_uw_uart_u_uarts|nx34394z6\);

-- Location: LCCOMB_X47_Y28_N26
\u_uw_uart_u_uarts|ix34394z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z5\ = (\u_uw_uart_u_uarts|nx34394z7\ & (\u_uw_uart_u_uarts|nx34394z8\ & \u_uw_uart_u_uarts|nx34394z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|nx34394z7\,
	datac => \u_uw_uart_u_uarts|nx34394z8\,
	datad => \u_uw_uart_u_uarts|nx34394z6\,
	combout => \u_uw_uart_u_uarts|nx34394z5\);

-- Location: LCFF_X47_Y28_N13
\u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx56256z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	sclr => \u_uw_uart_u_uarts|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\);

-- Location: LCCOMB_X46_Y28_N0
\u_uw_uart_u_uarts|ix34394z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z9\ = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\ & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\ & \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7\,
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11\,
	datac => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9\,
	datad => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13\,
	combout => \u_uw_uart_u_uarts|nx34394z9\);

-- Location: LCCOMB_X47_Y27_N0
\u_uw_uart_u_uarts|ix34394z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z10\ = (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\ & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\ & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\ & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17\,
	datab => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15\,
	datac => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19\,
	datad => \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21\,
	combout => \u_uw_uart_u_uarts|nx34394z10\);

-- Location: LCCOMB_X47_Y28_N28
\u_uw_uart_u_uarts|ix34394z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z3\ = (\u_uw_uart_u_uarts|nx34394z5\) # ((\u_uw_uart_u_uarts|nx34394z4\ & (\u_uw_uart_u_uarts|nx34394z9\ & \u_uw_uart_u_uarts|nx34394z10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx34394z4\,
	datab => \u_uw_uart_u_uarts|nx34394z5\,
	datac => \u_uw_uart_u_uarts|nx34394z9\,
	datad => \u_uw_uart_u_uarts|nx34394z10\,
	combout => \u_uw_uart_u_uarts|nx34394z3\);

-- Location: LCCOMB_X45_Y28_N4
\u_uw_uart_u_uarts|ix34394z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx34394z1\ = (\u_uw_uart_u_uarts|nx34394z2\ & \u_uw_uart_u_uarts|nx34394z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|nx34394z2\,
	datad => \u_uw_uart_u_uarts|nx34394z3\,
	combout => \u_uw_uart_u_uarts|nx34394z1\);

-- Location: LCFF_X45_Y28_N5
\u_uw_uart_u_uarts|reg_TopRx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx34394z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|TopRx\);

-- Location: LCCOMB_X45_Y28_N30
\u_uw_uart_u_uarts|ix43465z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx43465z1\ = (\u_uw_uart_u_uarts|TopRx\ & (\u_uw_uart_u_uarts|RxFSM_5_\ & !\u_uw_uart_u_uarts|not_Rx_r\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_u_uarts|TopRx\,
	datac => \u_uw_uart_u_uarts|RxFSM_5_\,
	datad => \u_uw_uart_u_uarts|not_Rx_r\,
	combout => \u_uw_uart_u_uarts|nx43465z1\);

-- Location: LCFF_X45_Y28_N31
\u_uw_uart_u_uarts|reg_RxRDYi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx43465z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxRDY\);

-- Location: LCCOMB_X42_Y28_N8
\u_uw_uart_u_uarts|ix15376z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx15376z1\ = (\u_uw_uart_u_uarts|RxFSM_6_\) # ((\u_uw_uart_u_uarts|RxErr\ & !\u_uw_uart_u_uarts|RxRDY\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|RxFSM_6_\,
	datac => \u_uw_uart_u_uarts|RxErr\,
	datad => \u_uw_uart_u_uarts|RxRDY\,
	combout => \u_uw_uart_u_uarts|nx15376z1\);

-- Location: LCFF_X42_Y28_N9
\u_uw_uart_u_uarts|reg_RxErr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx15376z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|RxErr\);

-- Location: LCCOMB_X41_Y28_N0
\u_uw_uart_modgen_counter_waitcount|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx51271z1\ = \u_uw_uart_modgen_counter_waitcount|nx22081z31\ $ (VCC)
-- \u_uw_uart_modgen_counter_waitcount|nx22081z30\ = CARRY(\u_uw_uart_modgen_counter_waitcount|nx22081z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z31\,
	datad => VCC,
	combout => \u_uw_uart_modgen_counter_waitcount|nx51271z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z30\);

-- Location: LCCOMB_X42_Y28_N30
ix24656z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx24656z2 = (nx58118z3) # (!\nreset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nreset~combout\,
	datac => nx58118z3,
	combout => nx24656z2);

-- Location: LCCOMB_X42_Y28_N14
ix24656z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx24656z1 = (u_uw_uart_o_pixavail) # ((u_uw_uart_ack) # (!\nreset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uw_uart_o_pixavail,
	datac => \nreset~combout\,
	datad => u_uw_uart_ack,
	combout => nx24656z1);

-- Location: LCFF_X41_Y28_N1
\u_uw_uart_modgen_counter_waitcount|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx51271z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z31\);

-- Location: LCCOMB_X41_Y28_N2
\u_uw_uart_modgen_counter_waitcount|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx52268z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z29\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z30\)) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z29\ & 
-- ((\u_uw_uart_modgen_counter_waitcount|nx22081z30\) # (GND)))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z28\ = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z30\) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z29\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z30\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx52268z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z28\);

-- Location: LCFF_X41_Y28_N3
\u_uw_uart_modgen_counter_waitcount|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx52268z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z29\);

-- Location: LCCOMB_X41_Y28_N4
\u_uw_uart_modgen_counter_waitcount|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx53265z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z27\ & (\u_uw_uart_modgen_counter_waitcount|nx22081z28\ $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z27\ & 
-- (!\u_uw_uart_modgen_counter_waitcount|nx22081z28\ & VCC))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z26\ = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z27\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z27\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z28\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx53265z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z26\);

-- Location: LCFF_X41_Y28_N5
\u_uw_uart_modgen_counter_waitcount|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx53265z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z27\);

-- Location: LCCOMB_X41_Y28_N6
\u_uw_uart_modgen_counter_waitcount|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx54262z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z25\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z26\)) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z25\ & 
-- ((\u_uw_uart_modgen_counter_waitcount|nx22081z26\) # (GND)))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z24\ = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z26\) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx22081z25\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z26\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx54262z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z24\);

-- Location: LCCOMB_X41_Y28_N8
\u_uw_uart_modgen_counter_waitcount|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx55259z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z23\ & (\u_uw_uart_modgen_counter_waitcount|nx22081z24\ $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z23\ & 
-- (!\u_uw_uart_modgen_counter_waitcount|nx22081z24\ & VCC))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z22\ = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z23\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z23\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z24\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx55259z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z22\);

-- Location: LCFF_X41_Y28_N9
\u_uw_uart_modgen_counter_waitcount|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx55259z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z23\);

-- Location: LCCOMB_X41_Y28_N10
\u_uw_uart_modgen_counter_waitcount|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx56256z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z21\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z22\)) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z21\ & 
-- ((\u_uw_uart_modgen_counter_waitcount|nx22081z22\) # (GND)))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z20\ = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z22\) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx22081z21\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z22\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx56256z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z20\);

-- Location: LCCOMB_X41_Y28_N12
\u_uw_uart_modgen_counter_waitcount|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx57253z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z19\ & (\u_uw_uart_modgen_counter_waitcount|nx22081z20\ $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z19\ & 
-- (!\u_uw_uart_modgen_counter_waitcount|nx22081z20\ & VCC))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z18\ = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z19\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx22081z19\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z20\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx57253z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z18\);

-- Location: LCFF_X41_Y28_N13
\u_uw_uart_modgen_counter_waitcount|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx57253z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z19\);

-- Location: LCFF_X41_Y28_N11
\u_uw_uart_modgen_counter_waitcount|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx56256z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z21\);

-- Location: LCCOMB_X42_Y28_N4
ix58118z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx58118z6 = (!\u_uw_uart_modgen_counter_waitcount|nx22081z17\ & (\u_uw_uart_modgen_counter_waitcount|nx22081z19\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z23\ & \u_uw_uart_modgen_counter_waitcount|nx22081z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx22081z17\,
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z19\,
	datac => \u_uw_uart_modgen_counter_waitcount|nx22081z23\,
	datad => \u_uw_uart_modgen_counter_waitcount|nx22081z21\,
	combout => nx58118z6);

-- Location: LCFF_X41_Y28_N7
\u_uw_uart_modgen_counter_waitcount|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx54262z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z25\);

-- Location: LCCOMB_X42_Y28_N16
ix58118z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx58118z7 = (!\u_uw_uart_modgen_counter_waitcount|nx22081z31\ & (\u_uw_uart_modgen_counter_waitcount|nx22081z27\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z25\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx22081z31\,
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z27\,
	datac => \u_uw_uart_modgen_counter_waitcount|nx22081z25\,
	datad => \u_uw_uart_modgen_counter_waitcount|nx22081z29\,
	combout => nx58118z7);

-- Location: LCCOMB_X41_Y28_N14
\u_uw_uart_modgen_counter_waitcount|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx58250z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z17\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z18\)) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z17\ & 
-- ((\u_uw_uart_modgen_counter_waitcount|nx22081z18\) # (GND)))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z16\ = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z18\) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z17\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z18\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx58250z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z16\);

-- Location: LCFF_X41_Y28_N15
\u_uw_uart_modgen_counter_waitcount|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx58250z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z17\);

-- Location: LCCOMB_X41_Y28_N18
\u_uw_uart_modgen_counter_waitcount|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx60244z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z13\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z14\)) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z13\ & 
-- ((\u_uw_uart_modgen_counter_waitcount|nx22081z14\) # (GND)))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z12\ = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z14\) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z13\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z14\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx60244z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z12\);

-- Location: LCFF_X41_Y28_N19
\u_uw_uart_modgen_counter_waitcount|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx60244z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z13\);

-- Location: LCCOMB_X41_Y28_N22
\u_uw_uart_modgen_counter_waitcount|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx18093z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z9\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z10\)) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z9\ & ((\u_uw_uart_modgen_counter_waitcount|nx22081z10\) 
-- # (GND)))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z8\ = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z10\) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z9\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z10\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx18093z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z8\);

-- Location: LCFF_X41_Y28_N23
\u_uw_uart_modgen_counter_waitcount|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx18093z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z9\);

-- Location: LCCOMB_X41_Y28_N24
\u_uw_uart_modgen_counter_waitcount|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx19090z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z7\ & (\u_uw_uart_modgen_counter_waitcount|nx22081z8\ $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z7\ & 
-- (!\u_uw_uart_modgen_counter_waitcount|nx22081z8\ & VCC))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z6\ = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z7\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx22081z7\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z8\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx19090z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z6\);

-- Location: LCCOMB_X41_Y28_N26
\u_uw_uart_modgen_counter_waitcount|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_modgen_counter_waitcount|nx20087z1\ = (\u_uw_uart_modgen_counter_waitcount|nx22081z5\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z6\)) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z5\ & ((\u_uw_uart_modgen_counter_waitcount|nx22081z6\) # 
-- (GND)))
-- \u_uw_uart_modgen_counter_waitcount|nx22081z4\ = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z6\) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z5\,
	datad => VCC,
	cin => \u_uw_uart_modgen_counter_waitcount|nx22081z6\,
	combout => \u_uw_uart_modgen_counter_waitcount|nx20087z1\,
	cout => \u_uw_uart_modgen_counter_waitcount|nx22081z4\);

-- Location: LCFF_X41_Y28_N27
\u_uw_uart_modgen_counter_waitcount|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx20087z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z5\);

-- Location: LCFF_X41_Y28_N29
\u_uw_uart_modgen_counter_waitcount|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx21084z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z3\);

-- Location: LCFF_X41_Y28_N25
\u_uw_uart_modgen_counter_waitcount|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_modgen_counter_waitcount|nx19090z1\,
	sclr => nx24656z2,
	ena => nx24656z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_modgen_counter_waitcount|nx22081z7\);

-- Location: LCCOMB_X42_Y28_N10
ix58118z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx58118z4 = (!\u_uw_uart_modgen_counter_waitcount|nx64508z1\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z5\ & (!\u_uw_uart_modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart_modgen_counter_waitcount|nx22081z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_modgen_counter_waitcount|nx64508z1\,
	datab => \u_uw_uart_modgen_counter_waitcount|nx22081z5\,
	datac => \u_uw_uart_modgen_counter_waitcount|nx22081z3\,
	datad => \u_uw_uart_modgen_counter_waitcount|nx22081z7\,
	combout => nx58118z4);

-- Location: LCCOMB_X42_Y28_N24
ix58118z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx58118z3 = (nx58118z5 & (nx58118z6 & (nx58118z7 & nx58118z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx58118z5,
	datab => nx58118z6,
	datac => nx58118z7,
	datad => nx58118z4,
	combout => nx58118z3);

-- Location: LCCOMB_X43_Y28_N24
ix30026z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30026z1 = (!nx58118z3 & ((u_uw_uart_o_pixavail) # (u_uw_uart_ack)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uw_uart_o_pixavail,
	datac => u_uw_uart_ack,
	datad => nx58118z3,
	combout => nx30026z1);

-- Location: LCFF_X43_Y28_N25
u_uw_uart_reg_ack : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx30026z1,
	sclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_uw_uart_ack);

-- Location: LCCOMB_X42_Y28_N18
ix58118z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx58118z8 = (!u_uw_uart_o_pixavail & !u_uw_uart_ack)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uw_uart_o_pixavail,
	datad => u_uw_uart_ack,
	combout => nx58118z8);

-- Location: LCFF_X42_Y28_N3
u_uw_uart_reg_dsend : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_dsend~feeder_combout\,
	sdata => \u_uw_uart_u_uarts|RxErr\,
	sclr => \ALT_INV_nreset~combout\,
	sload => nx58118z8,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_uw_uart_dsend);

-- Location: LCCOMB_X42_Y28_N26
ix62599z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx62599z1 = (!u_uw_uart_state & ((u_uw_uart_ld_sdout) # (u_uw_uart_dsend)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_uw_uart_state,
	datac => u_uw_uart_ld_sdout,
	datad => u_uw_uart_dsend,
	combout => nx62599z1);

-- Location: LCFF_X42_Y28_N27
u_uw_uart_reg_ld_sdout : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx62599z1,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => u_uw_uart_ld_sdout);

-- Location: LCCOMB_X50_Y28_N0
\u_uw_uart_u_uarts|ix4608z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx4608z2\ = (\u_uw_uart_u_uarts|TxFSM_0_\ & (!\u_uw_uart_u_uarts|TopTx\)) # (!\u_uw_uart_u_uarts|TxFSM_0_\ & ((\u_uw_uart_u_uarts|TxFSM_1_\ & (!\u_uw_uart_u_uarts|TopTx\)) # (!\u_uw_uart_u_uarts|TxFSM_1_\ & ((!u_uw_uart_ld_sdout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|TxFSM_0_\,
	datab => \u_uw_uart_u_uarts|TopTx\,
	datac => u_uw_uart_ld_sdout,
	datad => \u_uw_uart_u_uarts|TxFSM_1_\,
	combout => \u_uw_uart_u_uarts|nx4608z2\);

-- Location: LCCOMB_X50_Y28_N22
\u_uw_uart_u_uarts|ix4608z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx4608z1\ = (\u_uw_uart_u_uarts|TxFSM_0_\ & (((\u_uw_uart_u_uarts|nx4608z2\)))) # (!\u_uw_uart_u_uarts|TxFSM_0_\ & (!\u_uw_uart_u_uarts|nx4608z2\ & ((!\u_uw_uart_u_uarts|TxFSM_1_\) # (!\u_uw_uart_u_uarts|nx4608z3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx4608z3\,
	datab => \u_uw_uart_u_uarts|TxFSM_1_\,
	datac => \u_uw_uart_u_uarts|TxFSM_0_\,
	datad => \u_uw_uart_u_uarts|nx4608z2\,
	combout => \u_uw_uart_u_uarts|nx4608z1\);

-- Location: LCFF_X50_Y28_N23
\u_uw_uart_u_uarts|reg_TxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|nx4608z1\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart_u_uarts|TxFSM_0_\);

-- Location: LCCOMB_X50_Y28_N8
\u_uw_uart_u_uarts|ix61140z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_0_\ = (\u_uw_uart_u_uarts|TxFSM_0_\) # ((\u_uw_uart_u_uarts|nx61140z1\ & \u_uw_uart_u_uarts|TxFSM_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|nx61140z1\,
	datab => \u_uw_uart_u_uarts|TxFSM_1_\,
	datac => \u_uw_uart_u_uarts|TxFSM_0_\,
	combout => \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_0_\);

-- Location: LCCOMB_X50_Y28_N24
\u_uw_uart_u_uarts|ix61812z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart_u_uarts|nx61812z1\ = (\u_uw_uart_u_uarts|TxFSM_0_\ & (\u_uw_uart_u_uarts|TopTx\ & ((!\u_uw_uart_u_uarts|TxFSM_1_\)))) # (!\u_uw_uart_u_uarts|TxFSM_0_\ & ((\u_uw_uart_u_uarts|TxFSM_1_\ & (\u_uw_uart_u_uarts|TopTx\)) # 
-- (!\u_uw_uart_u_uarts|TxFSM_1_\ & ((u_uw_uart_ld_sdout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart_u_uarts|TxFSM_0_\,
	datab => \u_uw_uart_u_uarts|TopTx\,
	datac => u_uw_uart_ld_sdout,
	datad => \u_uw_uart_u_uarts|TxFSM_1_\,
	combout => \u_uw_uart_u_uarts|nx61812z1\);

-- Location: LCFF_X50_Y28_N9
reg_out_txflex_obuf : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_0_\,
	aclr => \ALT_INV_nreset~clkctrl_outclk\,
	ena => \u_uw_uart_u_uarts|nx61812z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21351z2);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix21351z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_nx21351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_txflex);

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ctsflex_obuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctsflex);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_0_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(0));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_1_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(1));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_2_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_3_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_4_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(4));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_5_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(5));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_6_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(6));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \nreset~combout\,
	outclk => \clk~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_8_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(8));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_9_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(9));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_10_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(10));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_11_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(11));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_12_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(12));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_13_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(13));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_14_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(14));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_15_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(15));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.lab3_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_lab3 is
  port (
      nreset  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; rxflex  : in STD_LOGIC
    ; txflex  : out STD_LOGIC
    ; ctsflex  : out STD_LOGIC
    ; o_sevenseg  : out std_logic_vector (15 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of top_lab3 is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.top_lab3_chip
    port map (
        nreset => nreset
      , clk => clk
      , rxflex => rxflex
      , txflex => txflex
      , ctsflex => ctsflex
      , o_sevenseg(15) => o_sevenseg(15)
      , o_sevenseg(14) => o_sevenseg(14)
      , o_sevenseg(13) => o_sevenseg(13)
      , o_sevenseg(12) => o_sevenseg(12)
      , o_sevenseg(11) => o_sevenseg(11)
      , o_sevenseg(10) => o_sevenseg(10)
      , o_sevenseg(9) => o_sevenseg(9)
      , o_sevenseg(8) => o_sevenseg(8)
      , o_sevenseg(7) => o_sevenseg(7)
      , o_sevenseg(6) => o_sevenseg(6)
      , o_sevenseg(5) => o_sevenseg(5)
      , o_sevenseg(4) => o_sevenseg(4)
      , o_sevenseg(3) => o_sevenseg(3)
      , o_sevenseg(2) => o_sevenseg(2)
      , o_sevenseg(1) => o_sevenseg(1)
      , o_sevenseg(0) => o_sevenseg(0)
    );
end architecture;

