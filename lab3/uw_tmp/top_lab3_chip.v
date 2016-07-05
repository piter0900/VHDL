// Copyright (C) 1991-2011 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Full Version"

// DATE "06/10/2015 12:19:52"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module top_lab3_chip (	nreset,
	clk,
	rxflex,
	txflex,
	ctsflex,
	o_sevenseg);
input 	nreset;
input 	clk;
input 	rxflex;
output 	txflex;
output 	ctsflex;
output 	[15:0] o_sevenseg;

// Design Ports Information
// txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ctsflex	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[7]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[15]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// nreset	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("top_lab3_v.sdo");
// synopsys translate_on

wire \u_uw_uart_u_uarts|nx61140z1 ;
wire u_uw_uart_sdout_3_;
wire \u_uw_uart_u_uarts|nx28624z2 ;
wire \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_ ;
wire \u_uw_uart_u_uarts|nx31615z2 ;
wire \u_uw_uart_u_uarts|nx28624z1 ;
wire \u_uw_uart_u_uarts|TxBitCnt_3_ ;
wire \u_uw_uart_u_uarts|TxBitCnt_2_ ;
wire \u_uw_uart_u_uarts|TxBitCnt_1_ ;
wire \u_uw_uart_u_uarts|TxBitCnt_0_ ;
wire \u_uw_uart_u_uarts|nx4608z3 ;
wire u_uw_uart_state;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19 ;
wire \u_uw_uart_u_uarts|nx32400z6 ;
wire u_uw_uart_mdata_3_;
wire nx21486z2;
wire nx21486z1;
wire \u_uw_uart_u_uarts|nx29621z2 ;
wire \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_ ;
wire \u_uw_uart_u_uarts|nx29621z1 ;
wire \u_uw_uart_u_uarts|nx51917z2 ;
wire \u_uw_uart_u_uarts|nx51917z3 ;
wire \u_uw_uart_u_uarts|nx50920z2 ;
wire \u_uw_uart_u_uarts|nx50920z3 ;
wire \u_uw_uart_u_uarts|nx51917z4 ;
wire \u_uw_uart_u_uarts|nx51917z1 ;
wire \u_uw_uart_u_uarts|nx50920z1 ;
wire \u_uw_uart_u_uarts|nx49923z1 ;
wire \u_uw_uart_u_uarts|nx48926z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx64508z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z11 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z15 ;
wire nx58118z5;
wire u_uw_uart_o_pixavail;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx51271z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx53265z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx56256z1 ;
wire nx58118z2;
wire nx58118z1;
wire \u_uw_uart_u_uarts|nx30618z2 ;
wire \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_ ;
wire \u_uw_uart_u_uarts|nx30618z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx59247z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx17096z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z2 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z1 ;
wire nx51426z1;
wire \u_uw_uart_u_uarts|nx31615z1 ;
wire u_uw_uart_rawrx;
wire \u_uw_uart_u_uarts|nx15541z2 ;
wire \u_uw_uart_u_uarts|nx34394z4 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17 ;
wire \u_uw_uart_u_uarts|RxBitCnt_2_ ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx53265z1 ;
wire \u_uw_uart_u_uarts|nx8373z2 ;
wire \u_uw_uart_u_uarts|nx9370z2 ;
wire \u_uw_uart_u_uarts|nx9370z1 ;
wire \clk~combout ;
wire \clk~clkctrl_outclk ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx52268z1 ;
wire \nreset~combout ;
wire \nreset~clkctrl_outclk ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx55259z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx54262z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17 ;
wire \u_uw_uart_u_uarts|nx32400z7 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx57253z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx59247z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx17096z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1 ;
wire \u_uw_uart_u_uarts|TxDivisor_5_~feeder_combout ;
wire \u_uw_uart_u_uarts|TxDivisor_5_ ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx60244z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5 ;
wire \u_uw_uart_u_uarts|nx32400z3 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx58250z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9 ;
wire \u_uw_uart_u_uarts|nx32400z4 ;
wire \u_uw_uart_u_uarts|nx32400z5 ;
wire \u_uw_uart_u_uarts|nx32400z2 ;
wire \u_uw_uart_u_uarts|nx32400z9 ;
wire \u_uw_uart_u_uarts|nx32400z8 ;
wire \u_uw_uart_u_uarts|nx32400z1 ;
wire \u_uw_uart_u_uarts|TopTx ;
wire \u_uw_uart_u_uarts|nx5605z1 ;
wire \u_uw_uart_u_uarts|TxFSM_1_ ;
wire \u_uw_uart_dsend~feeder_combout ;
wire \rxflex~combout ;
wire \u_uw_uart_u_uarts|NOT_Rx ;
wire \u_uw_uart_u_uarts|not_Rx_r ;
wire \u_uw_uart_u_uarts|nx34394z2~_wirecell_combout ;
wire \u_uw_uart_u_uarts|RxFSM_6_~feeder_combout ;
wire \u_uw_uart_u_uarts|RxFSM_6_ ;
wire \u_uw_uart_u_uarts|nx15541z3 ;
wire \u_uw_uart_u_uarts|nx15541z1 ;
wire \u_uw_uart_u_uarts|RxFSM_1_ ;
wire \u_uw_uart_u_uarts|nx14544z1 ;
wire \u_uw_uart_u_uarts|RxFSM_2_ ;
wire \u_uw_uart_u_uarts|nx13547z1 ;
wire \u_uw_uart_u_uarts|RxFSM_3_ ;
wire \u_uw_uart_u_uarts|not_rtlc17_X_0_n360 ;
wire \u_uw_uart_u_uarts|nx10367z1 ;
wire \u_uw_uart_u_uarts|RxBitCnt_1_ ;
wire \u_uw_uart_u_uarts|nx8373z1 ;
wire \u_uw_uart_u_uarts|RxBitCnt_3_ ;
wire \u_uw_uart_u_uarts|nx11364z1 ;
wire \u_uw_uart_u_uarts|RxBitCnt_0_ ;
wire \u_uw_uart_u_uarts|nx13547z2 ;
wire \u_uw_uart_u_uarts|nx11553z1 ;
wire \u_uw_uart_u_uarts|RxFSM_5_ ;
wire \u_uw_uart_u_uarts|nx16538z1 ;
wire \u_uw_uart_u_uarts|nx34394z2 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx51271z1 ;
wire \u_uw_uart_u_uarts|nx65151z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx52268z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx54262z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx57253z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx58250z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx55259z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13 ;
wire \u_uw_uart_u_uarts|nx34394z7 ;
wire \u_uw_uart_u_uarts|nx34394z8 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx59247z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx60244z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3 ;
wire \u_uw_uart_u_uarts|nx34394z6 ;
wire \u_uw_uart_u_uarts|nx34394z5 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx56256z1 ;
wire \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11 ;
wire \u_uw_uart_u_uarts|nx34394z9 ;
wire \u_uw_uart_u_uarts|nx34394z10 ;
wire \u_uw_uart_u_uarts|nx34394z3 ;
wire \u_uw_uart_u_uarts|nx34394z1 ;
wire \u_uw_uart_u_uarts|TopRx ;
wire \u_uw_uart_u_uarts|nx43465z1 ;
wire \u_uw_uart_u_uarts|RxRDY ;
wire \u_uw_uart_u_uarts|nx15376z1 ;
wire \u_uw_uart_u_uarts|RxErr ;
wire \u_uw_uart_modgen_counter_waitcount|nx51271z1 ;
wire nx24656z2;
wire nx24656z1;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z31 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z30 ;
wire \u_uw_uart_modgen_counter_waitcount|nx52268z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z29 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z28 ;
wire \u_uw_uart_modgen_counter_waitcount|nx53265z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z27 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z26 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z24 ;
wire \u_uw_uart_modgen_counter_waitcount|nx55259z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z23 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z22 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z20 ;
wire \u_uw_uart_modgen_counter_waitcount|nx57253z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z19 ;
wire \u_uw_uart_modgen_counter_waitcount|nx56256z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z21 ;
wire nx58118z6;
wire \u_uw_uart_modgen_counter_waitcount|nx54262z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z25 ;
wire nx58118z7;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z18 ;
wire \u_uw_uart_modgen_counter_waitcount|nx58250z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z17 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z16 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z14 ;
wire \u_uw_uart_modgen_counter_waitcount|nx60244z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z13 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z12 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z10 ;
wire \u_uw_uart_modgen_counter_waitcount|nx18093z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z9 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z8 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z6 ;
wire \u_uw_uart_modgen_counter_waitcount|nx20087z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z5 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z4 ;
wire \u_uw_uart_modgen_counter_waitcount|nx21084z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z3 ;
wire \u_uw_uart_modgen_counter_waitcount|nx19090z1 ;
wire \u_uw_uart_modgen_counter_waitcount|nx22081z7 ;
wire nx58118z4;
wire nx58118z3;
wire nx30026z1;
wire u_uw_uart_ack;
wire nx58118z8;
wire u_uw_uart_dsend;
wire nx62599z1;
wire u_uw_uart_ld_sdout;
wire \u_uw_uart_u_uarts|nx4608z2 ;
wire \u_uw_uart_u_uarts|nx4608z1 ;
wire \u_uw_uart_u_uarts|TxFSM_0_ ;
wire \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_0_ ;
wire \u_uw_uart_u_uarts|nx61812z1 ;
wire nx21351z2;


// Location: LCFF_X50_Y28_N11
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_Tx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx28624z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|nx61140z1 ));

// Location: LCFF_X42_Y28_N1
cycloneii_lcell_ff u_uw_uart_reg_sdout_3_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx21486z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_uw_uart_sdout_3_));

// Location: LCFF_X50_Y28_N3
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_Tx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx29621z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|nx28624z2 ));

// Location: LCCOMB_X50_Y28_N4
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix28624z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_  = (\u_uw_uart_u_uarts|TxFSM_1_  & (!\u_uw_uart_u_uarts|nx28624z2 )) # (!\u_uw_uart_u_uarts|TxFSM_1_  & ((u_uw_uart_sdout_3_)))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|nx28624z2 ),
	.datac(u_uw_uart_sdout_3_),
	.datad(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix28624z52924 .lut_mask = 16'h33F0;
defparam \u_uw_uart_u_uarts|ix28624z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N14
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix31615z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|nx31615z2  = (!\u_uw_uart_u_uarts|TxFSM_0_  & ((\u_uw_uart_u_uarts|TxFSM_1_  & (\u_uw_uart_u_uarts|TopTx )) # (!\u_uw_uart_u_uarts|TxFSM_1_  & ((u_uw_uart_ld_sdout)))))

	.dataa(\u_uw_uart_u_uarts|TxFSM_0_ ),
	.datab(\u_uw_uart_u_uarts|TopTx ),
	.datac(u_uw_uart_ld_sdout),
	.datad(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx31615z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix31615z52924 .lut_mask = 16'h4450;
defparam \u_uw_uart_u_uarts|ix31615z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N10
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix28624z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx28624z1  = (\u_uw_uart_u_uarts|nx31615z2  & ((!\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_ ))) # (!\u_uw_uart_u_uarts|nx31615z2  & (\u_uw_uart_u_uarts|nx61140z1 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|nx31615z2 ),
	.datac(\u_uw_uart_u_uarts|nx61140z1 ),
	.datad(\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx28624z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix28624z52923 .lut_mask = 16'h30FC;
defparam \u_uw_uart_u_uarts|ix28624z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y28_N27
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx51917z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|TxBitCnt_3_ ));

// Location: LCFF_X48_Y28_N11
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx50920z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|TxBitCnt_2_ ));

// Location: LCFF_X50_Y28_N13
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx49923z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|TxBitCnt_1_ ));

// Location: LCFF_X50_Y28_N31
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx48926z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|TxBitCnt_0_ ));

// Location: LCCOMB_X50_Y28_N16
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix4608z52925 (
// Equation(s):
// \u_uw_uart_u_uarts|nx4608z3  = (\u_uw_uart_u_uarts|TxBitCnt_1_ ) # (((\u_uw_uart_u_uarts|TxBitCnt_2_ ) # (\u_uw_uart_u_uarts|TxBitCnt_3_ )) # (!\u_uw_uart_u_uarts|TxBitCnt_0_ ))

	.dataa(\u_uw_uart_u_uarts|TxBitCnt_1_ ),
	.datab(\u_uw_uart_u_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart_u_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart_u_uarts|TxBitCnt_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx4608z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix4608z52925 .lut_mask = 16'hFFFB;
defparam \u_uw_uart_u_uarts|ix4608z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y28_N29
cycloneii_lcell_ff u_uw_uart_reg_state(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx21486z2),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_uw_uart_state));

// Location: LCFF_X49_Y28_N7
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23 ));

// Location: LCFF_X49_Y28_N17
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13 ));

// Location: LCFF_X49_Y28_N11
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19 ));

// Location: LCCOMB_X48_Y28_N6
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix32400z52928 (
// Equation(s):
// \u_uw_uart_u_uarts|nx32400z6  = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datac(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx32400z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix32400z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart_u_uarts|ix32400z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y28_N7
cycloneii_lcell_ff u_uw_uart_reg_mdata_3_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx58118z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_uw_uart_mdata_3_));

// Location: LCCOMB_X42_Y28_N28
cycloneii_lcell_comb ix21486z52924(
// Equation(s):
// nx21486z2 = (!u_uw_uart_state & u_uw_uart_dsend)

	.dataa(vcc),
	.datab(vcc),
	.datac(u_uw_uart_state),
	.datad(u_uw_uart_dsend),
	.cin(gnd),
	.combout(nx21486z2),
	.cout());
// synopsys translate_off
defparam ix21486z52924.lut_mask = 16'h0F00;
defparam ix21486z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y28_N0
cycloneii_lcell_comb ix21486z52923(
// Equation(s):
// nx21486z1 = (\nreset~combout  & ((nx21486z2 & ((u_uw_uart_mdata_3_))) # (!nx21486z2 & (u_uw_uart_sdout_3_)))) # (!\nreset~combout  & (((u_uw_uart_sdout_3_))))

	.dataa(\nreset~combout ),
	.datab(nx21486z2),
	.datac(u_uw_uart_sdout_3_),
	.datad(u_uw_uart_mdata_3_),
	.cin(gnd),
	.combout(nx21486z1),
	.cout());
// synopsys translate_off
defparam ix21486z52923.lut_mask = 16'hF870;
defparam ix21486z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y28_N25
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_Tx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx30618z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|nx29621z2 ));

// Location: LCCOMB_X50_Y28_N18
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix29621z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_  = (\u_uw_uart_u_uarts|TxFSM_1_  & ((!\u_uw_uart_u_uarts|nx29621z2 ))) # (!\u_uw_uart_u_uarts|TxFSM_1_  & (u_uw_uart_sdout_3_))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.datac(u_uw_uart_sdout_3_),
	.datad(\u_uw_uart_u_uarts|nx29621z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix29621z52924 .lut_mask = 16'h30FC;
defparam \u_uw_uart_u_uarts|ix29621z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N2
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix29621z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx29621z1  = (\u_uw_uart_u_uarts|nx31615z2  & ((!\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_ ))) # (!\u_uw_uart_u_uarts|nx31615z2  & (\u_uw_uart_u_uarts|nx28624z2 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|nx31615z2 ),
	.datac(\u_uw_uart_u_uarts|nx28624z2 ),
	.datad(\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx29621z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix29621z52923 .lut_mask = 16'h30FC;
defparam \u_uw_uart_u_uarts|ix29621z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N22
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix51917z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|nx51917z2  = (\u_uw_uart_u_uarts|TopTx  & (\u_uw_uart_u_uarts|TxFSM_0_  $ (\u_uw_uart_u_uarts|TxFSM_1_ )))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|TopTx ),
	.datac(\u_uw_uart_u_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx51917z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix51917z52924 .lut_mask = 16'h0CC0;
defparam \u_uw_uart_u_uarts|ix51917z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N20
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix51917z52925 (
// Equation(s):
// \u_uw_uart_u_uarts|nx51917z3  = (\u_uw_uart_u_uarts|TxBitCnt_0_ ) # ((\u_uw_uart_u_uarts|TxBitCnt_2_ ) # (\u_uw_uart_u_uarts|TxBitCnt_1_ ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart_u_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart_u_uarts|TxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx51917z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix51917z52925 .lut_mask = 16'hFFFC;
defparam \u_uw_uart_u_uarts|ix51917z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N16
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix50920z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|nx50920z2  = (\u_uw_uart_u_uarts|TopTx  & !\u_uw_uart_u_uarts|TxFSM_1_ )

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|TopTx ),
	.datac(vcc),
	.datad(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx50920z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix50920z52924 .lut_mask = 16'h00CC;
defparam \u_uw_uart_u_uarts|ix50920z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N6
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix50920z52925 (
// Equation(s):
// \u_uw_uart_u_uarts|nx50920z3  = (\u_uw_uart_u_uarts|TxBitCnt_0_ ) # (\u_uw_uart_u_uarts|TxBitCnt_1_ )

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|TxBitCnt_0_ ),
	.datac(vcc),
	.datad(\u_uw_uart_u_uarts|TxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx50920z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix50920z52925 .lut_mask = 16'hFFCC;
defparam \u_uw_uart_u_uarts|ix50920z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N18
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix51917z52926 (
// Equation(s):
// \u_uw_uart_u_uarts|nx51917z4  = (\u_uw_uart_u_uarts|nx50920z2 ) # ((!\u_uw_uart_u_uarts|TxBitCnt_2_  & (!\u_uw_uart_u_uarts|TxBitCnt_3_  & !\u_uw_uart_u_uarts|nx50920z3 )))

	.dataa(\u_uw_uart_u_uarts|TxBitCnt_2_ ),
	.datab(\u_uw_uart_u_uarts|TxBitCnt_3_ ),
	.datac(\u_uw_uart_u_uarts|nx50920z2 ),
	.datad(\u_uw_uart_u_uarts|nx50920z3 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx51917z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix51917z52926 .lut_mask = 16'hF0F1;
defparam \u_uw_uart_u_uarts|ix51917z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N26
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix51917z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx51917z1  = (\u_uw_uart_u_uarts|nx51917z2  & ((\u_uw_uart_u_uarts|nx51917z4 ) # ((\u_uw_uart_u_uarts|nx51917z3  & \u_uw_uart_u_uarts|TxBitCnt_3_ )))) # (!\u_uw_uart_u_uarts|nx51917z2  & (((\u_uw_uart_u_uarts|TxBitCnt_3_ ))))

	.dataa(\u_uw_uart_u_uarts|nx51917z3 ),
	.datab(\u_uw_uart_u_uarts|nx51917z2 ),
	.datac(\u_uw_uart_u_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart_u_uarts|nx51917z4 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx51917z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix51917z52923 .lut_mask = 16'hFCB0;
defparam \u_uw_uart_u_uarts|ix51917z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N10
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix50920z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx50920z1  = (\u_uw_uart_u_uarts|nx51917z2  & (!\u_uw_uart_u_uarts|nx50920z2  & (\u_uw_uart_u_uarts|TxBitCnt_2_  $ (!\u_uw_uart_u_uarts|nx50920z3 )))) # (!\u_uw_uart_u_uarts|nx51917z2  & (((\u_uw_uart_u_uarts|TxBitCnt_2_ ))))

	.dataa(\u_uw_uart_u_uarts|nx50920z2 ),
	.datab(\u_uw_uart_u_uarts|nx51917z2 ),
	.datac(\u_uw_uart_u_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart_u_uarts|nx50920z3 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx50920z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix50920z52923 .lut_mask = 16'h7034;
defparam \u_uw_uart_u_uarts|ix50920z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N12
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix49923z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx49923z1  = (\u_uw_uart_u_uarts|nx51917z2  & (!\u_uw_uart_u_uarts|nx50920z2  & (\u_uw_uart_u_uarts|TxBitCnt_0_  $ (!\u_uw_uart_u_uarts|TxBitCnt_1_ )))) # (!\u_uw_uart_u_uarts|nx51917z2  & (((\u_uw_uart_u_uarts|TxBitCnt_1_ ))))

	.dataa(\u_uw_uart_u_uarts|nx50920z2 ),
	.datab(\u_uw_uart_u_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart_u_uarts|TxBitCnt_1_ ),
	.datad(\u_uw_uart_u_uarts|nx51917z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx49923z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix49923z52923 .lut_mask = 16'h41F0;
defparam \u_uw_uart_u_uarts|ix49923z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N30
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix48926z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx48926z1  = (\u_uw_uart_u_uarts|TxFSM_0_  & ((\u_uw_uart_u_uarts|TxBitCnt_0_ ) # ((\u_uw_uart_u_uarts|TopTx  & !\u_uw_uart_u_uarts|TxFSM_1_ )))) # (!\u_uw_uart_u_uarts|TxFSM_0_  & (\u_uw_uart_u_uarts|TxBitCnt_0_  $ 
// (((\u_uw_uart_u_uarts|TopTx  & \u_uw_uart_u_uarts|TxFSM_1_ )))))

	.dataa(\u_uw_uart_u_uarts|TxFSM_0_ ),
	.datab(\u_uw_uart_u_uarts|TopTx ),
	.datac(\u_uw_uart_u_uarts|TxBitCnt_0_ ),
	.datad(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx48926z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix48926z52923 .lut_mask = 16'hB4F8;
defparam \u_uw_uart_u_uarts|ix48926z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y28_N31
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_15_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx22081z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx64508z1 ));

// Location: LCFF_X41_Y28_N21
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx17096z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z11 ));

// Location: LCFF_X41_Y28_N17
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z15 ));

// Location: LCCOMB_X42_Y28_N20
cycloneii_lcell_comb ix58118z52927(
// Equation(s):
// nx58118z5 = (!\u_uw_uart_modgen_counter_waitcount|nx22081z11  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z9  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z15  & !\u_uw_uart_modgen_counter_waitcount|nx22081z13 )))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx22081z11 ),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z9 ),
	.datac(\u_uw_uart_modgen_counter_waitcount|nx22081z15 ),
	.datad(\u_uw_uart_modgen_counter_waitcount|nx22081z13 ),
	.cin(gnd),
	.combout(nx58118z5),
	.cout());
// synopsys translate_off
defparam ix58118z52927.lut_mask = 16'h0001;
defparam ix58118z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y28_N13
cycloneii_lcell_ff u_uw_uart_reg_charavail(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx51426z1),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_uw_uart_o_pixavail));

// Location: LCCOMB_X49_Y28_N6
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52935 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx51271z1  = \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23  $ (VCC)
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22  = CARRY(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23 )

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx51271z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52935 .lut_mask = 16'h55AA;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N10
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52933 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx53265z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19  & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20  $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19  & 
// (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20  & VCC))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18  = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx53265z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52933 .lut_mask = 16'hA50A;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N16
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52930 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx56256z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14 )) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13  & 
// ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14 ) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx56256z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52930 .lut_mask = 16'h5A5F;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y28_N22
cycloneii_lcell_comb ix58118z52924(
// Equation(s):
// nx58118z2 = (!nx58118z8 & ((u_uw_uart_mdata_3_) # ((\nreset~combout  & nx58118z3))))

	.dataa(\nreset~combout ),
	.datab(nx58118z8),
	.datac(nx58118z3),
	.datad(u_uw_uart_mdata_3_),
	.cin(gnd),
	.combout(nx58118z2),
	.cout());
// synopsys translate_off
defparam ix58118z52924.lut_mask = 16'h3320;
defparam ix58118z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y28_N6
cycloneii_lcell_comb ix58118z52923(
// Equation(s):
// nx58118z1 = (nx58118z2) # ((u_uw_uart_mdata_3_ & ((!\u_uw_uart_u_uarts|RxErr ) # (!\nreset~combout ))))

	.dataa(\nreset~combout ),
	.datab(\u_uw_uart_u_uarts|RxErr ),
	.datac(u_uw_uart_mdata_3_),
	.datad(nx58118z2),
	.cin(gnd),
	.combout(nx58118z1),
	.cout());
// synopsys translate_off
defparam ix58118z52923.lut_mask = 16'hFF70;
defparam ix58118z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y28_N3
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_Tx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx31615z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|nx30618z2 ));

// Location: LCCOMB_X51_Y28_N28
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix30618z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_  = (\u_uw_uart_u_uarts|TxFSM_1_  & ((!\u_uw_uart_u_uarts|nx30618z2 ))) # (!\u_uw_uart_u_uarts|TxFSM_1_  & (u_uw_uart_sdout_3_))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.datac(u_uw_uart_sdout_3_),
	.datad(\u_uw_uart_u_uarts|nx30618z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix30618z52924 .lut_mask = 16'h30FC;
defparam \u_uw_uart_u_uarts|ix30618z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N24
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix30618z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx30618z1  = (\u_uw_uart_u_uarts|nx31615z2  & ((!\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_ ))) # (!\u_uw_uart_u_uarts|nx31615z2  & (\u_uw_uart_u_uarts|nx29621z2 ))

	.dataa(\u_uw_uart_u_uarts|nx31615z2 ),
	.datab(vcc),
	.datac(\u_uw_uart_u_uarts|nx29621z2 ),
	.datad(\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx30618z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix30618z52923 .lut_mask = 16'h50FA;
defparam \u_uw_uart_u_uarts|ix30618z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y28_N16
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52931 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx59247z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z15  & (\u_uw_uart_modgen_counter_waitcount|nx22081z16  $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z15  & 
// (!\u_uw_uart_modgen_counter_waitcount|nx22081z16  & VCC))
// \u_uw_uart_modgen_counter_waitcount|nx22081z14  = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z15  & !\u_uw_uart_modgen_counter_waitcount|nx22081z16 ))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx22081z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z16 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx59247z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z14 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y28_N20
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52929 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx17096z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z11  & (\u_uw_uart_modgen_counter_waitcount|nx22081z12  $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z11  & 
// (!\u_uw_uart_modgen_counter_waitcount|nx22081z12  & VCC))
// \u_uw_uart_modgen_counter_waitcount|nx22081z10  = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z11  & !\u_uw_uart_modgen_counter_waitcount|nx22081z12 ))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx22081z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z12 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx17096z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z10 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y28_N28
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52925 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx21084z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z3  & (\u_uw_uart_modgen_counter_waitcount|nx22081z4  $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z3  & 
// (!\u_uw_uart_modgen_counter_waitcount|nx22081z4  & VCC))
// \u_uw_uart_modgen_counter_waitcount|nx22081z2  = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z3  & !\u_uw_uart_modgen_counter_waitcount|nx22081z4 ))

	.dataa(vcc),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z4 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx21084z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z2 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y28_N30
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52923 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx22081z1  = \u_uw_uart_modgen_counter_waitcount|nx22081z2  $ (\u_uw_uart_modgen_counter_waitcount|nx64508z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart_modgen_counter_waitcount|nx64508z1 ),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z2 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx22081z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y28_N12
cycloneii_lcell_comb ix51426z52923(
// Equation(s):
// nx51426z1 = (!u_uw_uart_o_pixavail & \u_uw_uart_u_uarts|RxRDY )

	.dataa(vcc),
	.datab(vcc),
	.datac(u_uw_uart_o_pixavail),
	.datad(\u_uw_uart_u_uarts|RxRDY ),
	.cin(gnd),
	.combout(nx51426z1),
	.cout());
// synopsys translate_off
defparam ix51426z52923.lut_mask = 16'h0F00;
defparam ix51426z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N2
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix31615z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx31615z1  = (\u_uw_uart_u_uarts|nx31615z2  & (!u_uw_uart_sdout_3_ & ((!\u_uw_uart_u_uarts|TxFSM_1_ )))) # (!\u_uw_uart_u_uarts|nx31615z2  & (((\u_uw_uart_u_uarts|nx30618z2 ))))

	.dataa(\u_uw_uart_u_uarts|nx31615z2 ),
	.datab(u_uw_uart_sdout_3_),
	.datac(\u_uw_uart_u_uarts|nx30618z2 ),
	.datad(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx31615z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix31615z52923 .lut_mask = 16'h5072;
defparam \u_uw_uart_u_uarts|ix31615z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y28_N26
cycloneii_lcell_comb ix34741z52924(
// Equation(s):
// u_uw_uart_rawrx = (\nreset~combout  & \rxflex~combout )

	.dataa(vcc),
	.datab(\nreset~combout ),
	.datac(vcc),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(u_uw_uart_rawrx),
	.cout());
// synopsys translate_off
defparam ix34741z52924.lut_mask = 16'hCC00;
defparam ix34741z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y28_N6
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix15541z52925 (
// Equation(s):
// \u_uw_uart_u_uarts|nx15541z2  = (\u_uw_uart_u_uarts|nx34394z2  & ((\u_uw_uart_u_uarts|RxFSM_6_  & (u_uw_uart_rawrx)) # (!\u_uw_uart_u_uarts|RxFSM_6_  & ((\u_uw_uart_u_uarts|TopRx )))))

	.dataa(\u_uw_uart_u_uarts|RxFSM_6_ ),
	.datab(u_uw_uart_rawrx),
	.datac(\u_uw_uart_u_uarts|TopRx ),
	.datad(\u_uw_uart_u_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx15541z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix15541z52925 .lut_mask = 16'hD800;
defparam \u_uw_uart_u_uarts|ix15541z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N4
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix34394z52925 (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z4  = (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5  & (\u_uw_uart_u_uarts|TxDivisor_5_  & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.datac(\u_uw_uart_u_uarts|TxDivisor_5_ ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix34394z52925 .lut_mask = 16'h0010;
defparam \u_uw_uart_u_uarts|ix34394z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y28_N7
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17 ));

// Location: LCFF_X44_Y28_N3
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx9370z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxBitCnt_2_ ));

// Location: LCCOMB_X47_Y28_N6
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52932 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx53265z1  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17  & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18  $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17  & 
// (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18  & VCC))
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16  = CARRY((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx53265z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52932 .lut_mask = 16'hA50A;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y28_N6
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix8373z52925 (
// Equation(s):
// \u_uw_uart_u_uarts|nx8373z2  = \u_uw_uart_u_uarts|RxBitCnt_3_  $ (((\u_uw_uart_u_uarts|RxBitCnt_0_  & (\u_uw_uart_u_uarts|RxBitCnt_2_  & \u_uw_uart_u_uarts|RxBitCnt_1_ ))))

	.dataa(\u_uw_uart_u_uarts|RxBitCnt_0_ ),
	.datab(\u_uw_uart_u_uarts|RxBitCnt_2_ ),
	.datac(\u_uw_uart_u_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart_u_uarts|RxBitCnt_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx8373z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix8373z52925 .lut_mask = 16'h7F80;
defparam \u_uw_uart_u_uarts|ix8373z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y28_N8
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix9370z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|nx9370z2  = (\u_uw_uart_u_uarts|RxBitCnt_1_  & \u_uw_uart_u_uarts|RxBitCnt_0_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart_u_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart_u_uarts|RxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx9370z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix9370z52924 .lut_mask = 16'hF000;
defparam \u_uw_uart_u_uarts|ix9370z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y28_N2
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix9370z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx9370z1  = (\u_uw_uart_u_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart_u_uarts|nx34394z2  & (\u_uw_uart_u_uarts|nx9370z2  $ (\u_uw_uart_u_uarts|RxBitCnt_2_ )))) # (!\u_uw_uart_u_uarts|not_rtlc17_X_0_n360  & (((\u_uw_uart_u_uarts|RxBitCnt_2_ 
// ))))

	.dataa(\u_uw_uart_u_uarts|nx9370z2 ),
	.datab(\u_uw_uart_u_uarts|not_rtlc17_X_0_n360 ),
	.datac(\u_uw_uart_u_uarts|RxBitCnt_2_ ),
	.datad(\u_uw_uart_u_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx9370z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix9370z52923 .lut_mask = 16'h7830;
defparam \u_uw_uart_u_uarts|ix9370z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io clk_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\clk~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clk));
// synopsys translate_off
defparam clk_ibuf.input_async_reset = "none";
defparam clk_ibuf.input_power_up = "low";
defparam clk_ibuf.input_register_mode = "none";
defparam clk_ibuf.input_sync_reset = "none";
defparam clk_ibuf.oe_async_reset = "none";
defparam clk_ibuf.oe_power_up = "low";
defparam clk_ibuf.oe_register_mode = "none";
defparam clk_ibuf.oe_sync_reset = "none";
defparam clk_ibuf.operation_mode = "input";
defparam clk_ibuf.output_async_reset = "none";
defparam clk_ibuf.output_power_up = "low";
defparam clk_ibuf.output_register_mode = "none";
defparam clk_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G2
cycloneii_clkctrl \clk~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\clk~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~clkctrl_outclk ));
// synopsys translate_off
defparam \clk~clkctrl .clock_type = "global clock";
defparam \clk~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N8
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52934 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx52268z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22 )) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21  & 
// ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22 ) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z22 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx52268z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z20 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52934 .lut_mask = 16'h3C3F;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io nreset_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\nreset~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(nreset));
// synopsys translate_off
defparam nreset_ibuf.input_async_reset = "none";
defparam nreset_ibuf.input_power_up = "low";
defparam nreset_ibuf.input_register_mode = "none";
defparam nreset_ibuf.input_sync_reset = "none";
defparam nreset_ibuf.oe_async_reset = "none";
defparam nreset_ibuf.oe_power_up = "low";
defparam nreset_ibuf.oe_register_mode = "none";
defparam nreset_ibuf.oe_sync_reset = "none";
defparam nreset_ibuf.operation_mode = "input";
defparam nreset_ibuf.output_async_reset = "none";
defparam nreset_ibuf.output_power_up = "low";
defparam nreset_ibuf.output_register_mode = "none";
defparam nreset_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G3
cycloneii_clkctrl \nreset~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\nreset~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\nreset~clkctrl_outclk ));
// synopsys translate_off
defparam \nreset~clkctrl .clock_type = "global clock";
defparam \nreset~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCFF_X49_Y28_N9
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21 ));

// Location: LCCOMB_X49_Y28_N12
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52932 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx54262z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18 )) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17  & 
// ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18 ) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z18 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx54262z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52932 .lut_mask = 16'h5A5F;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N14
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52931 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx55259z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15  & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16  $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15  & 
// (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16  & VCC))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14  = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z16 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx55259z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z14 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52931 .lut_mask = 16'hC30C;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y28_N15
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15 ));

// Location: LCFF_X49_Y28_N13
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17 ));

// Location: LCCOMB_X48_Y28_N8
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix32400z52929 (
// Equation(s):
// \u_uw_uart_u_uarts|nx32400z7  = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datac(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx32400z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix32400z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart_u_uarts|ix32400z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N18
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52929 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx57253z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11  & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12  $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11  & 
// (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12  & VCC))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10  = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z12 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx57253z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52929 .lut_mask = 16'hC30C;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y28_N19
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11 ));

// Location: LCCOMB_X49_Y28_N20
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52928 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx58250z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10 )) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9  & 
// ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10 ) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z10 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx58250z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52928 .lut_mask = 16'h5A5F;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N22
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52927 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx59247z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7  & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8  $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7  & 
// (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8  & VCC))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6  = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z8 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx59247z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52927 .lut_mask = 16'hC30C;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y28_N23
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7 ));

// Location: LCCOMB_X49_Y28_N24
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52926 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx60244z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6 )) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5  & 
// ((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6 ) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z6 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx60244z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52926 .lut_mask = 16'h5A5F;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y28_N26
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52925 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx17096z1  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3  & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4  $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3  & 
// (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4  & VCC))
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2  = CARRY((\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z4 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx17096z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y28_N27
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3 ));

// Location: LCCOMB_X49_Y28_N28
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z1  = \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2  $ (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.cin(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z2 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart_u_uarts|modgen_counter_TxDiv|ix18093z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y28_N29
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1 ));

// Location: LCCOMB_X48_Y28_N12
cycloneii_lcell_comb \u_uw_uart_u_uarts|TxDivisor_5_~feeder (
// Equation(s):
// \u_uw_uart_u_uarts|TxDivisor_5_~feeder_combout  = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|TxDivisor_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|TxDivisor_5_~feeder .lut_mask = 16'hFFFF;
defparam \u_uw_uart_u_uarts|TxDivisor_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y28_N13
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_TxDivisor_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|TxDivisor_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|TxDivisor_5_ ));

// Location: LCFF_X49_Y28_N25
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5 ));

// Location: LCCOMB_X48_Y28_N14
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix32400z52925 (
// Equation(s):
// \u_uw_uart_u_uarts|nx32400z3  = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1  & (\u_uw_uart_u_uarts|TxDivisor_5_  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.datac(\u_uw_uart_u_uarts|TxDivisor_5_ ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx32400z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix32400z52925 .lut_mask = 16'h0010;
defparam \u_uw_uart_u_uarts|ix32400z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y28_N21
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_TxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9 ));

// Location: LCCOMB_X48_Y28_N24
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix32400z52926 (
// Equation(s):
// \u_uw_uart_u_uarts|nx32400z4  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11  & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9  & \u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z13 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z11 ),
	.datac(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z9 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z7 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx32400z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix32400z52926 .lut_mask = 16'h2000;
defparam \u_uw_uart_u_uarts|ix32400z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N26
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix32400z52927 (
// Equation(s):
// \u_uw_uart_u_uarts|nx32400z5  = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21  & (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z19 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z21 ),
	.datac(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z15 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z17 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx32400z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix32400z52927 .lut_mask = 16'h0010;
defparam \u_uw_uart_u_uarts|ix32400z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N20
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix32400z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|nx32400z2  = (\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23  & (\u_uw_uart_u_uarts|nx32400z3  & (\u_uw_uart_u_uarts|nx32400z4  & \u_uw_uart_u_uarts|nx32400z5 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datab(\u_uw_uart_u_uarts|nx32400z3 ),
	.datac(\u_uw_uart_u_uarts|nx32400z4 ),
	.datad(\u_uw_uart_u_uarts|nx32400z5 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx32400z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix32400z52924 .lut_mask = 16'h8000;
defparam \u_uw_uart_u_uarts|ix32400z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N2
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix32400z52931 (
// Equation(s):
// \u_uw_uart_u_uarts|nx32400z9  = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3  & !\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z3 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z5 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx32400z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix32400z52931 .lut_mask = 16'h000F;
defparam \u_uw_uart_u_uarts|ix32400z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N28
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix32400z52930 (
// Equation(s):
// \u_uw_uart_u_uarts|nx32400z8  = (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23  & (!\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1  & (!\u_uw_uart_u_uarts|TxDivisor_5_  & \u_uw_uart_u_uarts|nx32400z9 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx18093z23 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_TxDiv|nx2960z1 ),
	.datac(\u_uw_uart_u_uarts|TxDivisor_5_ ),
	.datad(\u_uw_uart_u_uarts|nx32400z9 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx32400z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix32400z52930 .lut_mask = 16'h0100;
defparam \u_uw_uart_u_uarts|ix32400z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y28_N0
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix32400z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx32400z1  = (\u_uw_uart_u_uarts|nx32400z2 ) # ((\u_uw_uart_u_uarts|nx32400z6  & (\u_uw_uart_u_uarts|nx32400z7  & \u_uw_uart_u_uarts|nx32400z8 )))

	.dataa(\u_uw_uart_u_uarts|nx32400z6 ),
	.datab(\u_uw_uart_u_uarts|nx32400z7 ),
	.datac(\u_uw_uart_u_uarts|nx32400z2 ),
	.datad(\u_uw_uart_u_uarts|nx32400z8 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx32400z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix32400z52923 .lut_mask = 16'hF8F0;
defparam \u_uw_uart_u_uarts|ix32400z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y28_N1
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_TopTx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx32400z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|TopTx ));

// Location: LCCOMB_X50_Y28_N28
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix5605z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx5605z1  = \u_uw_uart_u_uarts|TxFSM_1_  $ (((\u_uw_uart_u_uarts|TxFSM_0_  & \u_uw_uart_u_uarts|TopTx )))

	.dataa(\u_uw_uart_u_uarts|TxFSM_0_ ),
	.datab(\u_uw_uart_u_uarts|TopTx ),
	.datac(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx5605z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix5605z52923 .lut_mask = 16'h7878;
defparam \u_uw_uart_u_uarts|ix5605z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y28_N29
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_TxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx5605z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|TxFSM_1_ ));

// Location: LCCOMB_X42_Y28_N2
cycloneii_lcell_comb \u_uw_uart_dsend~feeder (
// Equation(s):
// \u_uw_uart_dsend~feeder_combout  = nx58118z3

	.dataa(nx58118z3),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart_dsend~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_dsend~feeder .lut_mask = 16'hAAAA;
defparam \u_uw_uart_dsend~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io rxflex_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\rxflex~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(rxflex));
// synopsys translate_off
defparam rxflex_ibuf.input_async_reset = "none";
defparam rxflex_ibuf.input_power_up = "low";
defparam rxflex_ibuf.input_register_mode = "none";
defparam rxflex_ibuf.input_sync_reset = "none";
defparam rxflex_ibuf.oe_async_reset = "none";
defparam rxflex_ibuf.oe_power_up = "low";
defparam rxflex_ibuf.oe_register_mode = "none";
defparam rxflex_ibuf.oe_sync_reset = "none";
defparam rxflex_ibuf.operation_mode = "input";
defparam rxflex_ibuf.output_async_reset = "none";
defparam rxflex_ibuf.output_power_up = "low";
defparam rxflex_ibuf.output_register_mode = "none";
defparam rxflex_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X45_Y28_N18
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix57064z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|NOT_Rx  = (!\rxflex~combout ) # (!\nreset~combout )

	.dataa(vcc),
	.datab(\nreset~combout ),
	.datac(vcc),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|NOT_Rx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix57064z52923 .lut_mask = 16'h33FF;
defparam \u_uw_uart_u_uarts|ix57064z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N19
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_Rx_r (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|NOT_Rx ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|not_Rx_r ));

// Location: LCCOMB_X45_Y28_N0
cycloneii_lcell_comb \u_uw_uart_u_uarts|nx34394z2~_wirecell (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z2~_wirecell_combout  = !\u_uw_uart_u_uarts|nx34394z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart_u_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z2~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|nx34394z2~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart_u_uarts|nx34394z2~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y28_N10
cycloneii_lcell_comb \u_uw_uart_u_uarts|RxFSM_6_~feeder (
// Equation(s):
// \u_uw_uart_u_uarts|RxFSM_6_~feeder_combout  = \u_uw_uart_u_uarts|RxFSM_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart_u_uarts|RxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|RxFSM_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|RxFSM_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart_u_uarts|RxFSM_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N11
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_RxFSM_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|RxFSM_6_~feeder_combout ),
	.sdata(\u_uw_uart_u_uarts|RxFSM_5_ ),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(\u_uw_uart_u_uarts|not_Rx_r ),
	.ena(\u_uw_uart_u_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxFSM_6_ ));

// Location: LCCOMB_X45_Y28_N14
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix15541z52926 (
// Equation(s):
// \u_uw_uart_u_uarts|nx15541z3  = ((\rxflex~combout  & \nreset~combout )) # (!\u_uw_uart_u_uarts|RxFSM_6_ )

	.dataa(\rxflex~combout ),
	.datab(\nreset~combout ),
	.datac(vcc),
	.datad(\u_uw_uart_u_uarts|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx15541z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix15541z52926 .lut_mask = 16'h88FF;
defparam \u_uw_uart_u_uarts|ix15541z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y28_N24
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix15541z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|nx15541z1  = (\u_uw_uart_u_uarts|nx15541z2 ) # ((\u_uw_uart_u_uarts|not_Rx_r  & (\u_uw_uart_u_uarts|nx15541z3  & !\u_uw_uart_u_uarts|nx34394z2 )))

	.dataa(\u_uw_uart_u_uarts|nx15541z2 ),
	.datab(\u_uw_uart_u_uarts|not_Rx_r ),
	.datac(\u_uw_uart_u_uarts|nx15541z3 ),
	.datad(\u_uw_uart_u_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx15541z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix15541z52924 .lut_mask = 16'hAAEA;
defparam \u_uw_uart_u_uarts|ix15541z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N1
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_RxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx34394z2~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart_u_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxFSM_1_ ));

// Location: LCCOMB_X45_Y28_N12
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix14544z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx14544z1  = (\u_uw_uart_u_uarts|RxFSM_3_ ) # ((\u_uw_uart_u_uarts|RxFSM_1_  & \u_uw_uart_u_uarts|not_Rx_r ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|RxFSM_1_ ),
	.datac(\u_uw_uart_u_uarts|RxFSM_3_ ),
	.datad(\u_uw_uart_u_uarts|not_Rx_r ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx14544z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix14544z52923 .lut_mask = 16'hFCF0;
defparam \u_uw_uart_u_uarts|ix14544z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N13
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_RxFSM_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx14544z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart_u_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxFSM_2_ ));

// Location: LCCOMB_X45_Y28_N20
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix13547z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx13547z1  = (!\u_uw_uart_u_uarts|nx13547z2  & \u_uw_uart_u_uarts|RxFSM_2_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart_u_uarts|nx13547z2 ),
	.datad(\u_uw_uart_u_uarts|RxFSM_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx13547z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix13547z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart_u_uarts|ix13547z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N21
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_RxFSM_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx13547z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart_u_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxFSM_3_ ));

// Location: LCCOMB_X45_Y28_N28
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix8373z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|not_rtlc17_X_0_n360  = (\u_uw_uart_u_uarts|RxFSM_3_  & (\u_uw_uart_u_uarts|TopRx )) # (!\u_uw_uart_u_uarts|RxFSM_3_  & ((!\u_uw_uart_u_uarts|nx34394z2 )))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|TopRx ),
	.datac(\u_uw_uart_u_uarts|RxFSM_3_ ),
	.datad(\u_uw_uart_u_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|not_rtlc17_X_0_n360 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix8373z52924 .lut_mask = 16'hC0CF;
defparam \u_uw_uart_u_uarts|ix8373z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y28_N28
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix10367z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx10367z1  = (\u_uw_uart_u_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart_u_uarts|nx34394z2  & (\u_uw_uart_u_uarts|RxBitCnt_0_  $ (\u_uw_uart_u_uarts|RxBitCnt_1_ )))) # (!\u_uw_uart_u_uarts|not_rtlc17_X_0_n360  & 
// (((\u_uw_uart_u_uarts|RxBitCnt_1_ ))))

	.dataa(\u_uw_uart_u_uarts|RxBitCnt_0_ ),
	.datab(\u_uw_uart_u_uarts|not_rtlc17_X_0_n360 ),
	.datac(\u_uw_uart_u_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart_u_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx10367z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix10367z52923 .lut_mask = 16'h7830;
defparam \u_uw_uart_u_uarts|ix10367z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y28_N29
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx10367z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxBitCnt_1_ ));

// Location: LCCOMB_X44_Y28_N0
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix8373z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx8373z1  = (\u_uw_uart_u_uarts|not_rtlc17_X_0_n360  & (\u_uw_uart_u_uarts|nx8373z2  & ((\u_uw_uart_u_uarts|nx34394z2 )))) # (!\u_uw_uart_u_uarts|not_rtlc17_X_0_n360  & (((\u_uw_uart_u_uarts|RxBitCnt_3_ ))))

	.dataa(\u_uw_uart_u_uarts|nx8373z2 ),
	.datab(\u_uw_uart_u_uarts|not_rtlc17_X_0_n360 ),
	.datac(\u_uw_uart_u_uarts|RxBitCnt_3_ ),
	.datad(\u_uw_uart_u_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx8373z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix8373z52923 .lut_mask = 16'hB830;
defparam \u_uw_uart_u_uarts|ix8373z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y28_N1
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx8373z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxBitCnt_3_ ));

// Location: LCCOMB_X45_Y28_N2
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix11364z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx11364z1  = (\u_uw_uart_u_uarts|RxFSM_3_  & ((\u_uw_uart_u_uarts|TopRx  & (!\u_uw_uart_u_uarts|RxBitCnt_0_  & \u_uw_uart_u_uarts|nx34394z2 )) # (!\u_uw_uart_u_uarts|TopRx  & (\u_uw_uart_u_uarts|RxBitCnt_0_ )))) # 
// (!\u_uw_uart_u_uarts|RxFSM_3_  & (((\u_uw_uart_u_uarts|RxBitCnt_0_  & \u_uw_uart_u_uarts|nx34394z2 ))))

	.dataa(\u_uw_uart_u_uarts|RxFSM_3_ ),
	.datab(\u_uw_uart_u_uarts|TopRx ),
	.datac(\u_uw_uart_u_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart_u_uarts|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx11364z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix11364z52923 .lut_mask = 16'h7820;
defparam \u_uw_uart_u_uarts|ix11364z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N3
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx11364z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxBitCnt_0_ ));

// Location: LCCOMB_X45_Y28_N16
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix13547z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|nx13547z2  = (!\u_uw_uart_u_uarts|RxBitCnt_2_  & (!\u_uw_uart_u_uarts|RxBitCnt_1_  & (\u_uw_uart_u_uarts|RxBitCnt_3_  & !\u_uw_uart_u_uarts|RxBitCnt_0_ )))

	.dataa(\u_uw_uart_u_uarts|RxBitCnt_2_ ),
	.datab(\u_uw_uart_u_uarts|RxBitCnt_1_ ),
	.datac(\u_uw_uart_u_uarts|RxBitCnt_3_ ),
	.datad(\u_uw_uart_u_uarts|RxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx13547z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix13547z52924 .lut_mask = 16'h0010;
defparam \u_uw_uart_u_uarts|ix13547z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y28_N8
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix11553z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx11553z1  = (\u_uw_uart_u_uarts|nx13547z2  & \u_uw_uart_u_uarts|RxFSM_2_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart_u_uarts|nx13547z2 ),
	.datad(\u_uw_uart_u_uarts|RxFSM_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx11553z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix11553z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart_u_uarts|ix11553z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N9
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_RxFSM_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx11553z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart_u_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxFSM_5_ ));

// Location: LCCOMB_X45_Y28_N22
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix16538z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx16538z1  = (!\u_uw_uart_u_uarts|RxFSM_6_  & ((\u_uw_uart_u_uarts|not_Rx_r ) # (!\u_uw_uart_u_uarts|RxFSM_5_ )))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|not_Rx_r ),
	.datac(\u_uw_uart_u_uarts|RxFSM_5_ ),
	.datad(\u_uw_uart_u_uarts|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx16538z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix16538z52923 .lut_mask = 16'h00CF;
defparam \u_uw_uart_u_uarts|ix16538z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N23
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_RxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx16538z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart_u_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|nx34394z2 ));

// Location: LCCOMB_X47_Y28_N2
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52934 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx51271z1  = \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21  $ (VCC)
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20  = CARRY(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21 )

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx51271z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52934 .lut_mask = 16'h33CC;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y28_N30
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix65151z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx65151z1  = (\u_uw_uart_u_uarts|nx34394z3 ) # (!\u_uw_uart_u_uarts|nx34394z2 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart_u_uarts|nx34394z2 ),
	.datad(\u_uw_uart_u_uarts|nx34394z3 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx65151z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix65151z52923 .lut_mask = 16'hFF0F;
defparam \u_uw_uart_u_uarts|ix65151z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y28_N3
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21 ));

// Location: LCCOMB_X47_Y28_N4
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52933 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx52268z1  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20 )) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19  & 
// ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20 ) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z20 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx52268z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z18 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52933 .lut_mask = 16'h3C3F;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y28_N5
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19 ));

// Location: LCCOMB_X47_Y28_N8
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52931 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx54262z1  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16 )) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15  & 
// ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16 ) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z16 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx54262z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52931 .lut_mask = 16'h3C3F;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y28_N9
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15 ));

// Location: LCCOMB_X47_Y28_N10
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52930 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx55259z1  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13  & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14  $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13  & 
// (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14  & VCC))
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12  = CARRY((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13  & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z14 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx55259z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52930 .lut_mask = 16'hA50A;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y28_N12
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52929 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx56256z1  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12 )) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11  & 
// ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12 ) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z12 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx56256z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52929 .lut_mask = 16'h5A5F;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y28_N14
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52928 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx57253z1  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9  & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10  $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9  & 
// (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10  & VCC))
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8  = CARRY((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9  & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z10 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx57253z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52928 .lut_mask = 16'hC30C;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y28_N15
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9 ));

// Location: LCCOMB_X47_Y28_N16
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52927 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx58250z1  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8 )) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7  & 
// ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8 ) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z8 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx58250z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52927 .lut_mask = 16'h5A5F;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y28_N17
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7 ));

// Location: LCFF_X47_Y28_N11
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13 ));

// Location: LCCOMB_X47_Y28_N0
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix34394z52928 (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z7  = (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7  & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datac(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix34394z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart_u_uarts|ix34394z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y28_N24
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix34394z52929 (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z8  = (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19  & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datac(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix34394z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart_u_uarts|ix34394z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y28_N18
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52926 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx59247z1  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5  & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6  $ (GND))) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5  & 
// (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6  & VCC))
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4  = CARRY((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5  & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z6 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx59247z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52926 .lut_mask = 16'hC30C;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y28_N19
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5 ));

// Location: LCCOMB_X47_Y28_N20
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52925 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx60244z1  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4 )) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3  & 
// ((\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4 ) # (GND)))
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2  = CARRY((!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4 ) # (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3 ))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z4 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx60244z1 ),
	.cout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2 ));
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52925 .lut_mask = 16'h5A5F;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y28_N22
cycloneii_lcell_comb \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z1  = \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2  $ (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.cin(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z2 ),
	.combout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52923 .lut_mask = 16'hF00F;
defparam \u_uw_uart_u_uarts|modgen_counter_RxDiv|ix17096z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y28_N23
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1 ));

// Location: LCFF_X47_Y28_N21
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3 ));

// Location: LCCOMB_X48_Y28_N30
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix34394z52927 (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z6  = (!\u_uw_uart_u_uarts|TxDivisor_5_  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3  & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5 )))

	.dataa(\u_uw_uart_u_uarts|TxDivisor_5_ ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx3957z1 ),
	.datac(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z3 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z5 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix34394z52927 .lut_mask = 16'h0001;
defparam \u_uw_uart_u_uarts|ix34394z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y28_N26
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix34394z52926 (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z5  = (\u_uw_uart_u_uarts|nx34394z7  & (\u_uw_uart_u_uarts|nx34394z8  & \u_uw_uart_u_uarts|nx34394z6 ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|nx34394z7 ),
	.datac(\u_uw_uart_u_uarts|nx34394z8 ),
	.datad(\u_uw_uart_u_uarts|nx34394z6 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix34394z52926 .lut_mask = 16'hC000;
defparam \u_uw_uart_u_uarts|ix34394z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y28_N13
cycloneii_lcell_ff \u_uw_uart_u_uarts|modgen_counter_RxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(\u_uw_uart_u_uarts|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11 ));

// Location: LCCOMB_X46_Y28_N0
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix34394z52930 (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z9  = (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11  & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9  & \u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z7 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z11 ),
	.datac(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z9 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z13 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix34394z52930 .lut_mask = 16'h2000;
defparam \u_uw_uart_u_uarts|ix34394z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y27_N0
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix34394z52931 (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z10  = (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17  & (\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15  & (!\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19  & !\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21 )))

	.dataa(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z17 ),
	.datab(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z15 ),
	.datac(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z19 ),
	.datad(\u_uw_uart_u_uarts|modgen_counter_RxDiv|nx17096z21 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z10 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix34394z52931 .lut_mask = 16'h0004;
defparam \u_uw_uart_u_uarts|ix34394z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y28_N28
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix34394z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z3  = (\u_uw_uart_u_uarts|nx34394z5 ) # ((\u_uw_uart_u_uarts|nx34394z4  & (\u_uw_uart_u_uarts|nx34394z9  & \u_uw_uart_u_uarts|nx34394z10 )))

	.dataa(\u_uw_uart_u_uarts|nx34394z4 ),
	.datab(\u_uw_uart_u_uarts|nx34394z5 ),
	.datac(\u_uw_uart_u_uarts|nx34394z9 ),
	.datad(\u_uw_uart_u_uarts|nx34394z10 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix34394z52924 .lut_mask = 16'hECCC;
defparam \u_uw_uart_u_uarts|ix34394z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y28_N4
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix34394z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx34394z1  = (\u_uw_uart_u_uarts|nx34394z2  & \u_uw_uart_u_uarts|nx34394z3 )

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|nx34394z2 ),
	.datac(vcc),
	.datad(\u_uw_uart_u_uarts|nx34394z3 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx34394z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix34394z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart_u_uarts|ix34394z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N5
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_TopRx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx34394z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|TopRx ));

// Location: LCCOMB_X45_Y28_N30
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix43465z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx43465z1  = (\u_uw_uart_u_uarts|TopRx  & (\u_uw_uart_u_uarts|RxFSM_5_  & !\u_uw_uart_u_uarts|not_Rx_r ))

	.dataa(vcc),
	.datab(\u_uw_uart_u_uarts|TopRx ),
	.datac(\u_uw_uart_u_uarts|RxFSM_5_ ),
	.datad(\u_uw_uart_u_uarts|not_Rx_r ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx43465z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix43465z52923 .lut_mask = 16'h00C0;
defparam \u_uw_uart_u_uarts|ix43465z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y28_N31
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_RxRDYi (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx43465z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxRDY ));

// Location: LCCOMB_X42_Y28_N8
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix15376z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx15376z1  = (\u_uw_uart_u_uarts|RxFSM_6_ ) # ((\u_uw_uart_u_uarts|RxErr  & !\u_uw_uart_u_uarts|RxRDY ))

	.dataa(\u_uw_uart_u_uarts|RxFSM_6_ ),
	.datab(vcc),
	.datac(\u_uw_uart_u_uarts|RxErr ),
	.datad(\u_uw_uart_u_uarts|RxRDY ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx15376z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix15376z52923 .lut_mask = 16'hAAFA;
defparam \u_uw_uart_u_uarts|ix15376z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y28_N9
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_RxErr (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx15376z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|RxErr ));

// Location: LCCOMB_X41_Y28_N0
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52939 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx51271z1  = \u_uw_uart_modgen_counter_waitcount|nx22081z31  $ (VCC)
// \u_uw_uart_modgen_counter_waitcount|nx22081z30  = CARRY(\u_uw_uart_modgen_counter_waitcount|nx22081z31 )

	.dataa(vcc),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z31 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx51271z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z30 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52939 .lut_mask = 16'h33CC;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y28_N30
cycloneii_lcell_comb ix24656z52924(
// Equation(s):
// nx24656z2 = (nx58118z3) # (!\nreset~combout )

	.dataa(\nreset~combout ),
	.datab(vcc),
	.datac(nx58118z3),
	.datad(vcc),
	.cin(gnd),
	.combout(nx24656z2),
	.cout());
// synopsys translate_off
defparam ix24656z52924.lut_mask = 16'hF5F5;
defparam ix24656z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y28_N14
cycloneii_lcell_comb ix24656z52923(
// Equation(s):
// nx24656z1 = (u_uw_uart_o_pixavail) # ((u_uw_uart_ack) # (!\nreset~combout ))

	.dataa(u_uw_uart_o_pixavail),
	.datab(vcc),
	.datac(\nreset~combout ),
	.datad(u_uw_uart_ack),
	.cin(gnd),
	.combout(nx24656z1),
	.cout());
// synopsys translate_off
defparam ix24656z52923.lut_mask = 16'hFFAF;
defparam ix24656z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y28_N1
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z31 ));

// Location: LCCOMB_X41_Y28_N2
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52938 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx52268z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z29  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z30 )) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z29  & ((\u_uw_uart_modgen_counter_waitcount|nx22081z30 
// ) # (GND)))
// \u_uw_uart_modgen_counter_waitcount|nx22081z28  = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z30 ) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z29 ))

	.dataa(vcc),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z29 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z30 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx52268z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z28 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52938 .lut_mask = 16'h3C3F;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y28_N3
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z29 ));

// Location: LCCOMB_X41_Y28_N4
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52937 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx53265z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z27  & (\u_uw_uart_modgen_counter_waitcount|nx22081z28  $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z27  & 
// (!\u_uw_uart_modgen_counter_waitcount|nx22081z28  & VCC))
// \u_uw_uart_modgen_counter_waitcount|nx22081z26  = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z27  & !\u_uw_uart_modgen_counter_waitcount|nx22081z28 ))

	.dataa(vcc),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z27 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z28 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx53265z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z26 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52937 .lut_mask = 16'hC30C;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y28_N5
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z27 ));

// Location: LCCOMB_X41_Y28_N6
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52936 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx54262z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z25  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z26 )) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z25  & ((\u_uw_uart_modgen_counter_waitcount|nx22081z26 
// ) # (GND)))
// \u_uw_uart_modgen_counter_waitcount|nx22081z24  = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z26 ) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z25 ))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx22081z25 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z26 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx54262z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z24 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52936 .lut_mask = 16'h5A5F;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y28_N8
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52935 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx55259z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z23  & (\u_uw_uart_modgen_counter_waitcount|nx22081z24  $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z23  & 
// (!\u_uw_uart_modgen_counter_waitcount|nx22081z24  & VCC))
// \u_uw_uart_modgen_counter_waitcount|nx22081z22  = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z23  & !\u_uw_uart_modgen_counter_waitcount|nx22081z24 ))

	.dataa(vcc),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z24 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx55259z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z22 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52935 .lut_mask = 16'hC30C;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y28_N9
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z23 ));

// Location: LCCOMB_X41_Y28_N10
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52934 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx56256z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z21  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z22 )) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z21  & ((\u_uw_uart_modgen_counter_waitcount|nx22081z22 
// ) # (GND)))
// \u_uw_uart_modgen_counter_waitcount|nx22081z20  = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z22 ) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z21 ))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx22081z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z22 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx56256z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z20 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y28_N12
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52933 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx57253z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z19  & (\u_uw_uart_modgen_counter_waitcount|nx22081z20  $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z19  & 
// (!\u_uw_uart_modgen_counter_waitcount|nx22081z20  & VCC))
// \u_uw_uart_modgen_counter_waitcount|nx22081z18  = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z19  & !\u_uw_uart_modgen_counter_waitcount|nx22081z20 ))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx22081z19 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z20 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx57253z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z18 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52933 .lut_mask = 16'hA50A;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y28_N13
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z19 ));

// Location: LCFF_X41_Y28_N11
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z21 ));

// Location: LCCOMB_X42_Y28_N4
cycloneii_lcell_comb ix58118z52928(
// Equation(s):
// nx58118z6 = (!\u_uw_uart_modgen_counter_waitcount|nx22081z17  & (\u_uw_uart_modgen_counter_waitcount|nx22081z19  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z23  & \u_uw_uart_modgen_counter_waitcount|nx22081z21 )))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx22081z17 ),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z19 ),
	.datac(\u_uw_uart_modgen_counter_waitcount|nx22081z23 ),
	.datad(\u_uw_uart_modgen_counter_waitcount|nx22081z21 ),
	.cin(gnd),
	.combout(nx58118z6),
	.cout());
// synopsys translate_off
defparam ix58118z52928.lut_mask = 16'h0400;
defparam ix58118z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y28_N7
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z25 ));

// Location: LCCOMB_X42_Y28_N16
cycloneii_lcell_comb ix58118z52929(
// Equation(s):
// nx58118z7 = (!\u_uw_uart_modgen_counter_waitcount|nx22081z31  & (\u_uw_uart_modgen_counter_waitcount|nx22081z27  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z25  & !\u_uw_uart_modgen_counter_waitcount|nx22081z29 )))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx22081z31 ),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z27 ),
	.datac(\u_uw_uart_modgen_counter_waitcount|nx22081z25 ),
	.datad(\u_uw_uart_modgen_counter_waitcount|nx22081z29 ),
	.cin(gnd),
	.combout(nx58118z7),
	.cout());
// synopsys translate_off
defparam ix58118z52929.lut_mask = 16'h0004;
defparam ix58118z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y28_N14
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52932 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx58250z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z17  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z18 )) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z17  & ((\u_uw_uart_modgen_counter_waitcount|nx22081z18 
// ) # (GND)))
// \u_uw_uart_modgen_counter_waitcount|nx22081z16  = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z18 ) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z17 ))

	.dataa(vcc),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z18 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx58250z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z16 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52932 .lut_mask = 16'h3C3F;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y28_N15
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z17 ));

// Location: LCCOMB_X41_Y28_N18
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52930 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx60244z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z13  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z14 )) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z13  & ((\u_uw_uart_modgen_counter_waitcount|nx22081z14 
// ) # (GND)))
// \u_uw_uart_modgen_counter_waitcount|nx22081z12  = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z14 ) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z13 ))

	.dataa(vcc),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z14 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx60244z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z12 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y28_N19
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z13 ));

// Location: LCCOMB_X41_Y28_N22
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52928 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx18093z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z9  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z10 )) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z9  & ((\u_uw_uart_modgen_counter_waitcount|nx22081z10 ) 
// # (GND)))
// \u_uw_uart_modgen_counter_waitcount|nx22081z8  = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z10 ) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z9 ))

	.dataa(vcc),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z10 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx18093z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z8 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y28_N23
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx18093z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z9 ));

// Location: LCCOMB_X41_Y28_N24
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52927 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx19090z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z7  & (\u_uw_uart_modgen_counter_waitcount|nx22081z8  $ (GND))) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z7  & 
// (!\u_uw_uart_modgen_counter_waitcount|nx22081z8  & VCC))
// \u_uw_uart_modgen_counter_waitcount|nx22081z6  = CARRY((\u_uw_uart_modgen_counter_waitcount|nx22081z7  & !\u_uw_uart_modgen_counter_waitcount|nx22081z8 ))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx22081z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z8 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx19090z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z6 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y28_N26
cycloneii_lcell_comb \u_uw_uart_modgen_counter_waitcount|ix22081z52926 (
// Equation(s):
// \u_uw_uart_modgen_counter_waitcount|nx20087z1  = (\u_uw_uart_modgen_counter_waitcount|nx22081z5  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z6 )) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z5  & ((\u_uw_uart_modgen_counter_waitcount|nx22081z6 ) # 
// (GND)))
// \u_uw_uart_modgen_counter_waitcount|nx22081z4  = CARRY((!\u_uw_uart_modgen_counter_waitcount|nx22081z6 ) # (!\u_uw_uart_modgen_counter_waitcount|nx22081z5 ))

	.dataa(vcc),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart_modgen_counter_waitcount|nx22081z6 ),
	.combout(\u_uw_uart_modgen_counter_waitcount|nx20087z1 ),
	.cout(\u_uw_uart_modgen_counter_waitcount|nx22081z4 ));
// synopsys translate_off
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart_modgen_counter_waitcount|ix22081z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y28_N27
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_13_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx20087z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z5 ));

// Location: LCFF_X41_Y28_N29
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_14_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx21084z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z3 ));

// Location: LCFF_X41_Y28_N25
cycloneii_lcell_ff \u_uw_uart_modgen_counter_waitcount|reg_q_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_modgen_counter_waitcount|nx19090z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx24656z2),
	.sload(gnd),
	.ena(nx24656z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_modgen_counter_waitcount|nx22081z7 ));

// Location: LCCOMB_X42_Y28_N10
cycloneii_lcell_comb ix58118z52926(
// Equation(s):
// nx58118z4 = (!\u_uw_uart_modgen_counter_waitcount|nx64508z1  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z5  & (!\u_uw_uart_modgen_counter_waitcount|nx22081z3  & !\u_uw_uart_modgen_counter_waitcount|nx22081z7 )))

	.dataa(\u_uw_uart_modgen_counter_waitcount|nx64508z1 ),
	.datab(\u_uw_uart_modgen_counter_waitcount|nx22081z5 ),
	.datac(\u_uw_uart_modgen_counter_waitcount|nx22081z3 ),
	.datad(\u_uw_uart_modgen_counter_waitcount|nx22081z7 ),
	.cin(gnd),
	.combout(nx58118z4),
	.cout());
// synopsys translate_off
defparam ix58118z52926.lut_mask = 16'h0001;
defparam ix58118z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y28_N24
cycloneii_lcell_comb ix58118z52925(
// Equation(s):
// nx58118z3 = (nx58118z5 & (nx58118z6 & (nx58118z7 & nx58118z4)))

	.dataa(nx58118z5),
	.datab(nx58118z6),
	.datac(nx58118z7),
	.datad(nx58118z4),
	.cin(gnd),
	.combout(nx58118z3),
	.cout());
// synopsys translate_off
defparam ix58118z52925.lut_mask = 16'h8000;
defparam ix58118z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y28_N24
cycloneii_lcell_comb ix30026z52923(
// Equation(s):
// nx30026z1 = (!nx58118z3 & ((u_uw_uart_o_pixavail) # (u_uw_uart_ack)))

	.dataa(u_uw_uart_o_pixavail),
	.datab(vcc),
	.datac(u_uw_uart_ack),
	.datad(nx58118z3),
	.cin(gnd),
	.combout(nx30026z1),
	.cout());
// synopsys translate_off
defparam ix30026z52923.lut_mask = 16'h00FA;
defparam ix30026z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y28_N25
cycloneii_lcell_ff u_uw_uart_reg_ack(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx30026z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nreset~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_uw_uart_ack));

// Location: LCCOMB_X42_Y28_N18
cycloneii_lcell_comb ix58118z52930(
// Equation(s):
// nx58118z8 = (!u_uw_uart_o_pixavail & !u_uw_uart_ack)

	.dataa(u_uw_uart_o_pixavail),
	.datab(vcc),
	.datac(vcc),
	.datad(u_uw_uart_ack),
	.cin(gnd),
	.combout(nx58118z8),
	.cout());
// synopsys translate_off
defparam ix58118z52930.lut_mask = 16'h0055;
defparam ix58118z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y28_N3
cycloneii_lcell_ff u_uw_uart_reg_dsend(
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_dsend~feeder_combout ),
	.sdata(\u_uw_uart_u_uarts|RxErr ),
	.aclr(gnd),
	.sclr(!\nreset~combout ),
	.sload(nx58118z8),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_uw_uart_dsend));

// Location: LCCOMB_X42_Y28_N26
cycloneii_lcell_comb ix62599z52923(
// Equation(s):
// nx62599z1 = (!u_uw_uart_state & ((u_uw_uart_ld_sdout) # (u_uw_uart_dsend)))

	.dataa(u_uw_uart_state),
	.datab(vcc),
	.datac(u_uw_uart_ld_sdout),
	.datad(u_uw_uart_dsend),
	.cin(gnd),
	.combout(nx62599z1),
	.cout());
// synopsys translate_off
defparam ix62599z52923.lut_mask = 16'h5550;
defparam ix62599z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y28_N27
cycloneii_lcell_ff u_uw_uart_reg_ld_sdout(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx62599z1),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_uw_uart_ld_sdout));

// Location: LCCOMB_X50_Y28_N0
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix4608z52924 (
// Equation(s):
// \u_uw_uart_u_uarts|nx4608z2  = (\u_uw_uart_u_uarts|TxFSM_0_  & (!\u_uw_uart_u_uarts|TopTx )) # (!\u_uw_uart_u_uarts|TxFSM_0_  & ((\u_uw_uart_u_uarts|TxFSM_1_  & (!\u_uw_uart_u_uarts|TopTx )) # (!\u_uw_uart_u_uarts|TxFSM_1_  & ((!u_uw_uart_ld_sdout)))))

	.dataa(\u_uw_uart_u_uarts|TxFSM_0_ ),
	.datab(\u_uw_uart_u_uarts|TopTx ),
	.datac(u_uw_uart_ld_sdout),
	.datad(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx4608z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix4608z52924 .lut_mask = 16'h3327;
defparam \u_uw_uart_u_uarts|ix4608z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N22
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix4608z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx4608z1  = (\u_uw_uart_u_uarts|TxFSM_0_  & (((\u_uw_uart_u_uarts|nx4608z2 )))) # (!\u_uw_uart_u_uarts|TxFSM_0_  & (!\u_uw_uart_u_uarts|nx4608z2  & ((!\u_uw_uart_u_uarts|TxFSM_1_ ) # (!\u_uw_uart_u_uarts|nx4608z3 ))))

	.dataa(\u_uw_uart_u_uarts|nx4608z3 ),
	.datab(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart_u_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart_u_uarts|nx4608z2 ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx4608z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix4608z52923 .lut_mask = 16'hF007;
defparam \u_uw_uart_u_uarts|ix4608z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y28_N23
cycloneii_lcell_ff \u_uw_uart_u_uarts|reg_TxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|nx4608z1 ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart_u_uarts|TxFSM_0_ ));

// Location: LCCOMB_X50_Y28_N8
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix61140z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|Tx_Reg_14n6ss1_0_  = (\u_uw_uart_u_uarts|TxFSM_0_ ) # ((\u_uw_uart_u_uarts|nx61140z1  & \u_uw_uart_u_uarts|TxFSM_1_ ))

	.dataa(\u_uw_uart_u_uarts|nx61140z1 ),
	.datab(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart_u_uarts|TxFSM_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix61140z52923 .lut_mask = 16'hF8F8;
defparam \u_uw_uart_u_uarts|ix61140z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N24
cycloneii_lcell_comb \u_uw_uart_u_uarts|ix61812z52923 (
// Equation(s):
// \u_uw_uart_u_uarts|nx61812z1  = (\u_uw_uart_u_uarts|TxFSM_0_  & (\u_uw_uart_u_uarts|TopTx  & ((!\u_uw_uart_u_uarts|TxFSM_1_ )))) # (!\u_uw_uart_u_uarts|TxFSM_0_  & ((\u_uw_uart_u_uarts|TxFSM_1_  & (\u_uw_uart_u_uarts|TopTx )) # 
// (!\u_uw_uart_u_uarts|TxFSM_1_  & ((u_uw_uart_ld_sdout)))))

	.dataa(\u_uw_uart_u_uarts|TxFSM_0_ ),
	.datab(\u_uw_uart_u_uarts|TopTx ),
	.datac(u_uw_uart_ld_sdout),
	.datad(\u_uw_uart_u_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart_u_uarts|nx61812z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart_u_uarts|ix61812z52923 .lut_mask = 16'h44D8;
defparam \u_uw_uart_u_uarts|ix61812z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y28_N9
cycloneii_lcell_ff reg_out_txflex_obuf(
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart_u_uarts|Tx_Reg_14n6ss1_0_ ),
	.sdata(gnd),
	.aclr(!\nreset~clkctrl_outclk ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart_u_uarts|nx61812z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21351z2));

// Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix21351z43919(
	.datain(!nx21351z2),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(txflex));
// synopsys translate_off
defparam ix21351z43919.input_async_reset = "none";
defparam ix21351z43919.input_power_up = "low";
defparam ix21351z43919.input_register_mode = "none";
defparam ix21351z43919.input_sync_reset = "none";
defparam ix21351z43919.oe_async_reset = "none";
defparam ix21351z43919.oe_power_up = "low";
defparam ix21351z43919.oe_register_mode = "none";
defparam ix21351z43919.oe_sync_reset = "none";
defparam ix21351z43919.operation_mode = "output";
defparam ix21351z43919.output_async_reset = "none";
defparam ix21351z43919.output_power_up = "low";
defparam ix21351z43919.output_register_mode = "none";
defparam ix21351z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ctsflex_obuf(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ctsflex));
// synopsys translate_off
defparam ctsflex_obuf.input_async_reset = "none";
defparam ctsflex_obuf.input_power_up = "low";
defparam ctsflex_obuf.input_register_mode = "none";
defparam ctsflex_obuf.input_sync_reset = "none";
defparam ctsflex_obuf.oe_async_reset = "none";
defparam ctsflex_obuf.oe_power_up = "low";
defparam ctsflex_obuf.oe_register_mode = "none";
defparam ctsflex_obuf.oe_sync_reset = "none";
defparam ctsflex_obuf.operation_mode = "output";
defparam ctsflex_obuf.output_async_reset = "none";
defparam ctsflex_obuf.output_power_up = "low";
defparam ctsflex_obuf.output_register_mode = "none";
defparam ctsflex_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[0]));
// synopsys translate_off
defparam o_sevenseg_obuf_0_.input_async_reset = "none";
defparam o_sevenseg_obuf_0_.input_power_up = "low";
defparam o_sevenseg_obuf_0_.input_register_mode = "none";
defparam o_sevenseg_obuf_0_.input_sync_reset = "none";
defparam o_sevenseg_obuf_0_.oe_async_reset = "none";
defparam o_sevenseg_obuf_0_.oe_power_up = "low";
defparam o_sevenseg_obuf_0_.oe_register_mode = "none";
defparam o_sevenseg_obuf_0_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_0_.operation_mode = "output";
defparam o_sevenseg_obuf_0_.output_async_reset = "none";
defparam o_sevenseg_obuf_0_.output_power_up = "low";
defparam o_sevenseg_obuf_0_.output_register_mode = "none";
defparam o_sevenseg_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[1]));
// synopsys translate_off
defparam o_sevenseg_obuf_1_.input_async_reset = "none";
defparam o_sevenseg_obuf_1_.input_power_up = "low";
defparam o_sevenseg_obuf_1_.input_register_mode = "none";
defparam o_sevenseg_obuf_1_.input_sync_reset = "none";
defparam o_sevenseg_obuf_1_.oe_async_reset = "none";
defparam o_sevenseg_obuf_1_.oe_power_up = "low";
defparam o_sevenseg_obuf_1_.oe_register_mode = "none";
defparam o_sevenseg_obuf_1_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_1_.operation_mode = "output";
defparam o_sevenseg_obuf_1_.output_async_reset = "none";
defparam o_sevenseg_obuf_1_.output_power_up = "low";
defparam o_sevenseg_obuf_1_.output_register_mode = "none";
defparam o_sevenseg_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[2]));
// synopsys translate_off
defparam o_sevenseg_obuf_2_.input_async_reset = "none";
defparam o_sevenseg_obuf_2_.input_power_up = "low";
defparam o_sevenseg_obuf_2_.input_register_mode = "none";
defparam o_sevenseg_obuf_2_.input_sync_reset = "none";
defparam o_sevenseg_obuf_2_.oe_async_reset = "none";
defparam o_sevenseg_obuf_2_.oe_power_up = "low";
defparam o_sevenseg_obuf_2_.oe_register_mode = "none";
defparam o_sevenseg_obuf_2_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_2_.operation_mode = "output";
defparam o_sevenseg_obuf_2_.output_async_reset = "none";
defparam o_sevenseg_obuf_2_.output_power_up = "low";
defparam o_sevenseg_obuf_2_.output_register_mode = "none";
defparam o_sevenseg_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[3]));
// synopsys translate_off
defparam o_sevenseg_obuf_3_.input_async_reset = "none";
defparam o_sevenseg_obuf_3_.input_power_up = "low";
defparam o_sevenseg_obuf_3_.input_register_mode = "none";
defparam o_sevenseg_obuf_3_.input_sync_reset = "none";
defparam o_sevenseg_obuf_3_.oe_async_reset = "none";
defparam o_sevenseg_obuf_3_.oe_power_up = "low";
defparam o_sevenseg_obuf_3_.oe_register_mode = "none";
defparam o_sevenseg_obuf_3_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_3_.operation_mode = "output";
defparam o_sevenseg_obuf_3_.output_async_reset = "none";
defparam o_sevenseg_obuf_3_.output_power_up = "low";
defparam o_sevenseg_obuf_3_.output_register_mode = "none";
defparam o_sevenseg_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_4_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[4]));
// synopsys translate_off
defparam o_sevenseg_obuf_4_.input_async_reset = "none";
defparam o_sevenseg_obuf_4_.input_power_up = "low";
defparam o_sevenseg_obuf_4_.input_register_mode = "none";
defparam o_sevenseg_obuf_4_.input_sync_reset = "none";
defparam o_sevenseg_obuf_4_.oe_async_reset = "none";
defparam o_sevenseg_obuf_4_.oe_power_up = "low";
defparam o_sevenseg_obuf_4_.oe_register_mode = "none";
defparam o_sevenseg_obuf_4_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_4_.operation_mode = "output";
defparam o_sevenseg_obuf_4_.output_async_reset = "none";
defparam o_sevenseg_obuf_4_.output_power_up = "low";
defparam o_sevenseg_obuf_4_.output_register_mode = "none";
defparam o_sevenseg_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_5_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[5]));
// synopsys translate_off
defparam o_sevenseg_obuf_5_.input_async_reset = "none";
defparam o_sevenseg_obuf_5_.input_power_up = "low";
defparam o_sevenseg_obuf_5_.input_register_mode = "none";
defparam o_sevenseg_obuf_5_.input_sync_reset = "none";
defparam o_sevenseg_obuf_5_.oe_async_reset = "none";
defparam o_sevenseg_obuf_5_.oe_power_up = "low";
defparam o_sevenseg_obuf_5_.oe_register_mode = "none";
defparam o_sevenseg_obuf_5_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_5_.operation_mode = "output";
defparam o_sevenseg_obuf_5_.output_async_reset = "none";
defparam o_sevenseg_obuf_5_.output_power_up = "low";
defparam o_sevenseg_obuf_5_.output_register_mode = "none";
defparam o_sevenseg_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_6_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[6]));
// synopsys translate_off
defparam o_sevenseg_obuf_6_.input_async_reset = "none";
defparam o_sevenseg_obuf_6_.input_power_up = "low";
defparam o_sevenseg_obuf_6_.input_register_mode = "none";
defparam o_sevenseg_obuf_6_.input_sync_reset = "none";
defparam o_sevenseg_obuf_6_.oe_async_reset = "none";
defparam o_sevenseg_obuf_6_.oe_power_up = "low";
defparam o_sevenseg_obuf_6_.oe_register_mode = "none";
defparam o_sevenseg_obuf_6_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_6_.operation_mode = "output";
defparam o_sevenseg_obuf_6_.output_async_reset = "none";
defparam o_sevenseg_obuf_6_.output_power_up = "low";
defparam o_sevenseg_obuf_6_.output_register_mode = "none";
defparam o_sevenseg_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_7_(
	.datain(\nreset~combout ),
	.oe(vcc),
	.outclk(\clk~clkctrl_outclk ),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[7]));
// synopsys translate_off
defparam o_sevenseg_obuf_7_.input_async_reset = "none";
defparam o_sevenseg_obuf_7_.input_power_up = "low";
defparam o_sevenseg_obuf_7_.input_register_mode = "none";
defparam o_sevenseg_obuf_7_.input_sync_reset = "none";
defparam o_sevenseg_obuf_7_.oe_async_reset = "none";
defparam o_sevenseg_obuf_7_.oe_power_up = "low";
defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
defparam o_sevenseg_obuf_7_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_7_.operation_mode = "output";
defparam o_sevenseg_obuf_7_.output_async_reset = "none";
defparam o_sevenseg_obuf_7_.output_power_up = "low";
defparam o_sevenseg_obuf_7_.output_register_mode = "register";
defparam o_sevenseg_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_8_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[8]));
// synopsys translate_off
defparam o_sevenseg_obuf_8_.input_async_reset = "none";
defparam o_sevenseg_obuf_8_.input_power_up = "low";
defparam o_sevenseg_obuf_8_.input_register_mode = "none";
defparam o_sevenseg_obuf_8_.input_sync_reset = "none";
defparam o_sevenseg_obuf_8_.oe_async_reset = "none";
defparam o_sevenseg_obuf_8_.oe_power_up = "low";
defparam o_sevenseg_obuf_8_.oe_register_mode = "none";
defparam o_sevenseg_obuf_8_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_8_.operation_mode = "output";
defparam o_sevenseg_obuf_8_.output_async_reset = "none";
defparam o_sevenseg_obuf_8_.output_power_up = "low";
defparam o_sevenseg_obuf_8_.output_register_mode = "none";
defparam o_sevenseg_obuf_8_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_9_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[9]));
// synopsys translate_off
defparam o_sevenseg_obuf_9_.input_async_reset = "none";
defparam o_sevenseg_obuf_9_.input_power_up = "low";
defparam o_sevenseg_obuf_9_.input_register_mode = "none";
defparam o_sevenseg_obuf_9_.input_sync_reset = "none";
defparam o_sevenseg_obuf_9_.oe_async_reset = "none";
defparam o_sevenseg_obuf_9_.oe_power_up = "low";
defparam o_sevenseg_obuf_9_.oe_register_mode = "none";
defparam o_sevenseg_obuf_9_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_9_.operation_mode = "output";
defparam o_sevenseg_obuf_9_.output_async_reset = "none";
defparam o_sevenseg_obuf_9_.output_power_up = "low";
defparam o_sevenseg_obuf_9_.output_register_mode = "none";
defparam o_sevenseg_obuf_9_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_10_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[10]));
// synopsys translate_off
defparam o_sevenseg_obuf_10_.input_async_reset = "none";
defparam o_sevenseg_obuf_10_.input_power_up = "low";
defparam o_sevenseg_obuf_10_.input_register_mode = "none";
defparam o_sevenseg_obuf_10_.input_sync_reset = "none";
defparam o_sevenseg_obuf_10_.oe_async_reset = "none";
defparam o_sevenseg_obuf_10_.oe_power_up = "low";
defparam o_sevenseg_obuf_10_.oe_register_mode = "none";
defparam o_sevenseg_obuf_10_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_10_.operation_mode = "output";
defparam o_sevenseg_obuf_10_.output_async_reset = "none";
defparam o_sevenseg_obuf_10_.output_power_up = "low";
defparam o_sevenseg_obuf_10_.output_register_mode = "none";
defparam o_sevenseg_obuf_10_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_11_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[11]));
// synopsys translate_off
defparam o_sevenseg_obuf_11_.input_async_reset = "none";
defparam o_sevenseg_obuf_11_.input_power_up = "low";
defparam o_sevenseg_obuf_11_.input_register_mode = "none";
defparam o_sevenseg_obuf_11_.input_sync_reset = "none";
defparam o_sevenseg_obuf_11_.oe_async_reset = "none";
defparam o_sevenseg_obuf_11_.oe_power_up = "low";
defparam o_sevenseg_obuf_11_.oe_register_mode = "none";
defparam o_sevenseg_obuf_11_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_11_.operation_mode = "output";
defparam o_sevenseg_obuf_11_.output_async_reset = "none";
defparam o_sevenseg_obuf_11_.output_power_up = "low";
defparam o_sevenseg_obuf_11_.output_register_mode = "none";
defparam o_sevenseg_obuf_11_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_12_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[12]));
// synopsys translate_off
defparam o_sevenseg_obuf_12_.input_async_reset = "none";
defparam o_sevenseg_obuf_12_.input_power_up = "low";
defparam o_sevenseg_obuf_12_.input_register_mode = "none";
defparam o_sevenseg_obuf_12_.input_sync_reset = "none";
defparam o_sevenseg_obuf_12_.oe_async_reset = "none";
defparam o_sevenseg_obuf_12_.oe_power_up = "low";
defparam o_sevenseg_obuf_12_.oe_register_mode = "none";
defparam o_sevenseg_obuf_12_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_12_.operation_mode = "output";
defparam o_sevenseg_obuf_12_.output_async_reset = "none";
defparam o_sevenseg_obuf_12_.output_power_up = "low";
defparam o_sevenseg_obuf_12_.output_register_mode = "none";
defparam o_sevenseg_obuf_12_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_13_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[13]));
// synopsys translate_off
defparam o_sevenseg_obuf_13_.input_async_reset = "none";
defparam o_sevenseg_obuf_13_.input_power_up = "low";
defparam o_sevenseg_obuf_13_.input_register_mode = "none";
defparam o_sevenseg_obuf_13_.input_sync_reset = "none";
defparam o_sevenseg_obuf_13_.oe_async_reset = "none";
defparam o_sevenseg_obuf_13_.oe_power_up = "low";
defparam o_sevenseg_obuf_13_.oe_register_mode = "none";
defparam o_sevenseg_obuf_13_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_13_.operation_mode = "output";
defparam o_sevenseg_obuf_13_.output_async_reset = "none";
defparam o_sevenseg_obuf_13_.output_power_up = "low";
defparam o_sevenseg_obuf_13_.output_register_mode = "none";
defparam o_sevenseg_obuf_13_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_14_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[14]));
// synopsys translate_off
defparam o_sevenseg_obuf_14_.input_async_reset = "none";
defparam o_sevenseg_obuf_14_.input_power_up = "low";
defparam o_sevenseg_obuf_14_.input_register_mode = "none";
defparam o_sevenseg_obuf_14_.input_sync_reset = "none";
defparam o_sevenseg_obuf_14_.oe_async_reset = "none";
defparam o_sevenseg_obuf_14_.oe_power_up = "low";
defparam o_sevenseg_obuf_14_.oe_register_mode = "none";
defparam o_sevenseg_obuf_14_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_14_.operation_mode = "output";
defparam o_sevenseg_obuf_14_.output_async_reset = "none";
defparam o_sevenseg_obuf_14_.output_power_up = "low";
defparam o_sevenseg_obuf_14_.output_register_mode = "none";
defparam o_sevenseg_obuf_14_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_15_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[15]));
// synopsys translate_off
defparam o_sevenseg_obuf_15_.input_async_reset = "none";
defparam o_sevenseg_obuf_15_.input_power_up = "low";
defparam o_sevenseg_obuf_15_.input_register_mode = "none";
defparam o_sevenseg_obuf_15_.input_sync_reset = "none";
defparam o_sevenseg_obuf_15_.oe_async_reset = "none";
defparam o_sevenseg_obuf_15_.oe_power_up = "low";
defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
defparam o_sevenseg_obuf_15_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_15_.operation_mode = "output";
defparam o_sevenseg_obuf_15_.output_async_reset = "none";
defparam o_sevenseg_obuf_15_.output_power_up = "low";
defparam o_sevenseg_obuf_15_.output_register_mode = "none";
defparam o_sevenseg_obuf_15_.output_sync_reset = "none";
// synopsys translate_on

endmodule
