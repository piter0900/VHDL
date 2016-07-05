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

// DATE "05/31/2015 16:32:52"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module fir_top_chip (	clock_50,
	clock_27,
	key,
	sw,
	ledg,
	ledr,
	hex0,
	hex1,
	hex2,
	hex3,
	hex4,
	hex5,
	hex6,
	hex7,
	aud_xck,
	aud_bclk,
	aud_dacdat,
	aud_daclrck,
	aud_adclrck,
	i2c_sdat,
	i2c_sclk);
input 	clock_50;
input 	clock_27;
input 	[3:0] key;
input 	[17:0] sw;
output 	[8:0] ledg;
output 	[17:0] ledr;
output 	[6:0] hex0;
output 	[6:0] hex1;
output 	[6:0] hex2;
output 	[6:0] hex3;
output 	[6:0] hex4;
output 	[6:0] hex5;
output 	[6:0] hex6;
output 	[6:0] hex7;
output 	aud_xck;
inout 	aud_bclk;
output 	aud_dacdat;
output 	aud_daclrck;
output 	aud_adclrck;
inout 	i2c_sdat;
output 	i2c_sclk;

// Design Ports Information
// ledg[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// aud_xck	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// aud_dacdat	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// aud_daclrck	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// aud_adclrck	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// i2c_sclk	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// sw[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i2c_sdat	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// clock_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// key[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// aud_bclk	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// clock_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
initial $sdf_annotate("fir_top_v.sdo");
// synopsys translate_on

wire nx38664z10;
wire nx38664z12;
wire nx4119z4;
wire nx4119z3;
wire nx4119z10;
wire nx4119z17;
wire nx4119z18;
wire nx4119z16;
wire \u_audio_dac_p1_altpll|pll~clk ;
wire \u_audio_dac_p1_altpll|pll~CLK2 ;
wire nx24999z3;
wire nx24999z2;
wire nx24999z7;
wire audio_out_8_;
wire audio_out_7_;
wire audio_out_6_;
wire audio_out_5_;
wire audio_out_4_;
wire audio_out_3_;
wire audio_out_9_;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 ;
wire nx50205z4;
wire nx50205z3;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ;
wire \u_i2c_av_config|u0|nx7286z1 ;
wire u_sine_address_3_;
wire u_sine_address_5_;
wire u_sine_address_6_;
wire u_sine_address_8_;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_5_ ;
wire \u_i2c_av_config|modgen_counter_cont|q_6_ ;
wire \u_i2c_av_config|nx35560z2 ;
wire \u_i2c_av_config|u0|sdo_5n5s2f1_1_ ;
wire \u_i2c_av_config|u0|nx22137z2 ;
wire \u_i2c_av_config|u0|sdo_5n5s2f1_0_ ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3 ;
wire \u_i2c_av_config|u0|nx41315z5 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ;
wire \u_i2c_av_config|u0|nx41315z9 ;
wire \u_i2c_av_config|u0|nx41315z8 ;
wire \u_i2c_av_config|u0|nx41315z14 ;
wire \u_i2c_av_config|u0|nx41315z13 ;
wire \u_i2c_av_config|u0|nx41315z17 ;
wire \u_i2c_av_config|u0|nx41315z21 ;
wire \u_i2c_av_config|u0|nx41315z22 ;
wire \u_i2c_av_config|u0|nx41315z20 ;
wire \u_i2c_av_config|modgen_counter_cont|nx56256z1 ;
wire \u_i2c_av_config|modgen_counter_cont|nx57253z1 ;
wire \aud_bclk_dup0~clkctrl_outclk ;
wire nx49625z2;
wire nx49625z1;
wire nx49625z3;
wire nx55607z1;
wire nx49625z4;
wire nx52616z1;
wire hex4_dup0_0_;
wire hex4_dup0_1_;
wire hex4_dup0_2_;
wire nx52616z2;
wire hex4_dup0_3_;
wire hex4_dup0_4_;
wire hex4_dup0_5_;
wire hex4_dup0_6_;
wire nx38664z7;
wire nx38664z6;
wire nx38664z5;
wire nx38664z4;
wire nx38664z13;
wire nx38664z11;
wire nx38664z3;
wire nx38664z2;
wire nx38664z1;
wire nx32682z1;
wire nx32682z2;
wire hex5_dup0_0_;
wire nx38664z9;
wire nx38664z8;
wire hex5_dup0_1_;
wire hex5_dup0_2_;
wire hex5_dup0_3_;
wire hex5_dup0_4_;
wire hex5_dup0_5_;
wire hex5_dup0_6_;
wire nx4119z15;
wire nx4119z14;
wire nx4119z6;
wire nx4119z8;
wire nx4119z7;
wire nx4119z5;
wire nx4119z2;
wire nx4119z1;
wire nx10101z2;
wire nx10101z1;
wire hex6_dup0_0_;
wire nx4119z13;
wire nx4119z12;
wire nx4119z11;
wire nx4119z9;
wire hex6_dup0_1_;
wire hex6_dup0_2_;
wire hex6_dup0_3_;
wire hex6_dup0_4_;
wire hex6_dup0_5_;
wire hex6_dup0_6_;
wire nx17637z2;
wire nx17637z1;
wire hex7_dup0_0_;
wire \clock_27~combout ;
wire \u_audio_dac_p1_altpll|_clk1 ;
wire \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ;
wire NOT_bit_position_0_;
wire bit_position_0_;
wire nx50814z1;
wire bit_position_1_;
wire nx49817z1;
wire bit_position_2_;
wire nx48820z1;
wire bit_position_3_;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1 ;
wire nx48238z1;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1 ;
wire nx50205z2;
wire nx50205z1;
wire aud_adclrck_dup0;
wire \aud_adclrck_dup0~clkctrl_outclk ;
wire \u_sine_address_add9_0i1|nx37973z1 ;
wire u_sine_address_0_;
wire \u_sine_address_add9_0i1|nx45949z23 ;
wire \u_sine_address_add9_0i1|nx38970z1 ;
wire u_sine_address_1_;
wire \u_sine_address_add9_0i1|nx45949z20 ;
wire \u_sine_address_add9_0i1|nx39967z1 ;
wire u_sine_address_2_;
wire \u_sine_address_add9_0i1|nx45949z17 ;
wire \u_sine_address_add9_0i1|nx40964z1 ;
wire u_sine_address_4_;
wire \u_sine_address_add9_0i1|nx45949z14 ;
wire \u_sine_address_add9_0i1|nx41961z1 ;
wire \u_sine_address_add9_0i1|nx45949z11 ;
wire \u_sine_address_add9_0i1|nx42958z1 ;
wire \u_sine_address_add9_0i1|nx45949z8 ;
wire \u_sine_address_add9_0i1|nx43955z1 ;
wire u_sine_address_7_;
wire \u_sine_address_add9_0i1|nx45949z5 ;
wire \u_sine_address_add9_0i1|nx44952z1 ;
wire \u_sine_address_add9_0i1|nx45949z3 ;
wire \u_sine_address_add9_0i1|nx45949z1 ;
wire audio_out_12_;
wire audio_out_2_;
wire audio_out_1_;
wire audio_out_0_;
wire nx24999z5;
wire nx24999z4;
wire nx24999z1;
wire audio_out_10_;
wire nx24999z6;
wire aud_dacdat_dup0;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1 ;
wire \u_i2c_av_config|modgen_counter_cont|nx51271z1 ;
wire \u_i2c_av_config|modgen_counter_cont|nx17096z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_10_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx59247z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_8_ ;
wire \u_i2c_av_config|nx35560z3 ;
wire \u_i2c_av_config|modgen_counter_cont|nx54262z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_3_ ;
wire \u_i2c_av_config|nx17807z2 ;
wire \u_i2c_av_config|nx35560z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_0_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z16 ;
wire \u_i2c_av_config|modgen_counter_cont|nx52268z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_1_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z15 ;
wire \u_i2c_av_config|modgen_counter_cont|nx53265z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_2_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z14 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z13 ;
wire \u_i2c_av_config|modgen_counter_cont|nx55259z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_4_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z12 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z11 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z10 ;
wire \u_i2c_av_config|modgen_counter_cont|nx58250z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_7_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z9 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z8 ;
wire \u_i2c_av_config|modgen_counter_cont|nx60244z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_9_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z7 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z6 ;
wire \u_i2c_av_config|modgen_counter_cont|nx18093z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_11_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z5 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z4 ;
wire \u_i2c_av_config|modgen_counter_cont|nx20087z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_13_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z3 ;
wire \u_i2c_av_config|modgen_counter_cont|nx21084z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_14_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z2 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_15_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx19090z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_12_ ;
wire \u_i2c_av_config|nx35560z4 ;
wire \u_i2c_av_config|nx17807z1 ;
wire \u_i2c_av_config|reset_n ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1 ;
wire \u_i2c_av_config|nx23875z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ;
wire \u_i2c_av_config|nx2692z5 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 ;
wire \u_i2c_av_config|nx2692z3 ;
wire \u_i2c_av_config|nx2692z4 ;
wire \u_i2c_av_config|nx2692z2 ;
wire \u_i2c_av_config|nx2692z1 ;
wire \u_i2c_av_config|m_i2c_ctrl_clk ;
wire \u_i2c_av_config|nx51161z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ;
wire \u_i2c_av_config|u0|nx43379z4 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ;
wire \u_i2c_av_config|u0|nx43379z3 ;
wire \u_i2c_av_config|u0|nx43379z2 ;
wire \u_i2c_av_config|u0|nx44942z1 ;
wire \u_i2c_av_config|u0|nx44942z8 ;
wire \u_i2c_av_config|u0|nx44942z7 ;
wire \u_i2c_av_config|u0|nx44942z6 ;
wire \u_i2c_av_config|u0|nx44942z4 ;
wire \u_i2c_av_config|u0|nx44942z3 ;
wire \u_i2c_av_config|u0|nx44942z2 ;
wire \u_i2c_av_config|u0|nx43379z1 ;
wire \u_i2c_av_config|u0|p_i2c_sclk ;
wire \clock_27~clkctrl_outclk ;
wire \u_i2c_av_config|u0|nx41315z16 ;
wire \u_i2c_av_config|u0|nx41315z15 ;
wire \u_i2c_av_config|u0|nx41315z12 ;
wire \u_i2c_av_config|u0|nx41315z11 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ;
wire \u_i2c_av_config|u0|nx22137z1 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ;
wire \u_i2c_av_config|u0|nx41315z10 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1 ;
wire \u_i2c_av_config|u0|nx7286z2 ;
wire \u_i2c_av_config|u0|nx41315z4 ;
wire \u_i2c_av_config|u0|nx44942z5 ;
wire \u_i2c_av_config|u0|nx41315z6 ;
wire \u_i2c_av_config|u0|nx41315z3 ;
wire \u_i2c_av_config|u0|nx41315z2 ;
wire \u_i2c_av_config|u0|nx41315z7 ;
wire \u_i2c_av_config|u0|nx41315z18 ;
wire \u_i2c_av_config|u0|nx41315z1 ;
wire \u_i2c_av_config|u0|nx41315z19 ;
wire \u_i2c_av_config|u0|nx51857z1 ;
wire nx30102z1;
wire nx30102z2;
wire u_audio_dac_bck_div_2_;
wire nx31099z1;
wire nx31099z2;
wire u_audio_dac_bck_div_1_;
wire nx32096z1;
wire u_audio_dac_bck_div_0_;
wire nx15494z1;
wire aud_bclk_dup0;
wire [3:0] \key~combout ;
wire [17:0] \sw~combout ;

wire [2:0] \u_audio_dac_p1_altpll|pll_CLK_bus ;
wire [11:0] \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus ;

assign \u_audio_dac_p1_altpll|pll~clk  = \u_audio_dac_p1_altpll|pll_CLK_bus [0];
assign \u_audio_dac_p1_altpll|_clk1  = \u_audio_dac_p1_altpll|pll_CLK_bus [1];
assign \u_audio_dac_p1_altpll|pll~CLK2  = \u_audio_dac_p1_altpll|pll_CLK_bus [2];

assign audio_out_0_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign audio_out_1_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign audio_out_2_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign audio_out_3_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign audio_out_4_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign audio_out_5_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign audio_out_6_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign audio_out_7_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];
assign audio_out_8_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [8];
assign audio_out_9_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [9];
assign audio_out_10_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [10];
assign audio_out_12_ = \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus [11];

// Location: LCCOMB_X1_Y14_N6
cycloneii_lcell_comb ix38664z52933(
// Equation(s):
// nx38664z10 = (\sw~combout [3] & ((\sw~combout [1] & (\sw~combout [0] & !\sw~combout [2])) # (!\sw~combout [1] & (!\sw~combout [0] & \sw~combout [2])))) # (!\sw~combout [3] & (\sw~combout [1] $ ((\sw~combout [0]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [0]),
	.datac(\sw~combout [3]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx38664z10),
	.cout());
// synopsys translate_off
defparam ix38664z52933.lut_mask = 16'h1686;
defparam ix38664z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N24
cycloneii_lcell_comb ix38664z52935(
// Equation(s):
// nx38664z12 = (\sw~combout [2] & (((!\sw~combout [4])))) # (!\sw~combout [2] & (\sw~combout [4] & ((\sw~combout [5]) # (!\sw~combout [6]))))

	.dataa(\sw~combout [6]),
	.datab(\sw~combout [2]),
	.datac(\sw~combout [4]),
	.datad(\sw~combout [5]),
	.cin(gnd),
	.combout(nx38664z12),
	.cout());
// synopsys translate_off
defparam ix38664z52935.lut_mask = 16'h3C1C;
defparam ix38664z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N24
cycloneii_lcell_comb ix4119z52927(
// Equation(s):
// nx4119z4 = (!\sw~combout [1] & (\sw~combout [5] & (!\sw~combout [0] & !\sw~combout [2])))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [5]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx4119z4),
	.cout());
// synopsys translate_off
defparam ix4119z52927.lut_mask = 16'h0004;
defparam ix4119z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X3_Y13_N16
cycloneii_lcell_comb ix4119z52926(
// Equation(s):
// nx4119z3 = (\sw~combout [4] & ((!\sw~combout [5]))) # (!\sw~combout [4] & (nx4119z4))

	.dataa(nx4119z4),
	.datab(\sw~combout [4]),
	.datac(vcc),
	.datad(\sw~combout [5]),
	.cin(gnd),
	.combout(nx4119z3),
	.cout());
// synopsys translate_off
defparam ix4119z52926.lut_mask = 16'h22EE;
defparam ix4119z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N12
cycloneii_lcell_comb ix4119z52933(
// Equation(s):
// nx4119z10 = \sw~combout [6] $ (((\sw~combout [4] & ((\sw~combout [3]) # (\sw~combout [2])))))

	.dataa(\sw~combout [6]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [4]),
	.cin(gnd),
	.combout(nx4119z10),
	.cout());
// synopsys translate_off
defparam ix4119z52933.lut_mask = 16'h56AA;
defparam ix4119z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N24
cycloneii_lcell_comb ix4119z52940(
// Equation(s):
// nx4119z17 = \sw~combout [5] $ (((\sw~combout [2]) # (!\sw~combout [4])))

	.dataa(\sw~combout [5]),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [2]),
	.datad(vcc),
	.cin(gnd),
	.combout(nx4119z17),
	.cout());
// synopsys translate_off
defparam ix4119z52940.lut_mask = 16'h5959;
defparam ix4119z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N26
cycloneii_lcell_comb ix4119z52941(
// Equation(s):
// nx4119z18 = \sw~combout [5] $ (((!\sw~combout [4] & ((\sw~combout [0]) # (\sw~combout [2])))))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [5]),
	.cin(gnd),
	.combout(nx4119z18),
	.cout());
// synopsys translate_off
defparam ix4119z52941.lut_mask = 16'hCD32;
defparam ix4119z52941.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N20
cycloneii_lcell_comb ix4119z52939(
// Equation(s):
// nx4119z16 = (\sw~combout [1] & ((nx4119z17))) # (!\sw~combout [1] & (nx4119z18))

	.dataa(vcc),
	.datab(nx4119z18),
	.datac(nx4119z17),
	.datad(\sw~combout [1]),
	.cin(gnd),
	.combout(nx4119z16),
	.cout());
// synopsys translate_off
defparam ix4119z52939.lut_mask = 16'hF0CC;
defparam ix4119z52939.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y8_N30
cycloneii_lcell_comb ix24999z52926(
// Equation(s):
// nx24999z3 = (bit_position_1_ & ((bit_position_0_ & ((audio_out_4_))) # (!bit_position_0_ & (audio_out_5_)))) # (!bit_position_1_ & (((!bit_position_0_))))

	.dataa(audio_out_5_),
	.datab(bit_position_1_),
	.datac(bit_position_0_),
	.datad(audio_out_4_),
	.cin(gnd),
	.combout(nx24999z3),
	.cout());
// synopsys translate_off
defparam ix24999z52926.lut_mask = 16'hCB0B;
defparam ix24999z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y8_N24
cycloneii_lcell_comb ix24999z52925(
// Equation(s):
// nx24999z2 = (nx24999z3 & (((audio_out_7_) # (bit_position_1_)))) # (!nx24999z3 & (audio_out_6_ & ((!bit_position_1_))))

	.dataa(nx24999z3),
	.datab(audio_out_6_),
	.datac(audio_out_7_),
	.datad(bit_position_1_),
	.cin(gnd),
	.combout(nx24999z2),
	.cout());
// synopsys translate_off
defparam ix24999z52925.lut_mask = 16'hAAE4;
defparam ix24999z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y8_N10
cycloneii_lcell_comb ix24999z52930(
// Equation(s):
// nx24999z7 = (bit_position_1_ & ((bit_position_0_ & (audio_out_8_)) # (!bit_position_0_ & ((audio_out_9_))))) # (!bit_position_1_ & (((!bit_position_0_))))

	.dataa(audio_out_8_),
	.datab(bit_position_1_),
	.datac(bit_position_0_),
	.datad(audio_out_9_),
	.cin(gnd),
	.combout(nx24999z7),
	.cout());
// synopsys translate_off
defparam ix24999z52930.lut_mask = 16'h8F83;
defparam ix24999z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X13_Y8
cycloneii_ram_block \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 (
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\aud_adclrck_dup0~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(12'b000000000000),
	.portaaddr({\u_sine_address_add9_0i1|nx45949z1 ,\u_sine_address_add9_0i1|nx44952z1 ,\u_sine_address_add9_0i1|nx43955z1 ,\u_sine_address_add9_0i1|nx42958z1 ,\u_sine_address_add9_0i1|nx41961z1 ,\u_sine_address_add9_0i1|nx40964z1 }),
	.portabyteenamasks(1'b1),
	.portbdatain(12'b000000000000),
	.portbaddr(6'b000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .init_file = "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .init_file_layout = "port_a";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .logical_ram_name = "altsyncram:u_sine_modgen_rom_ix21__ix62120z58995|altsyncram_0bk2:auto_generated|ALTSYNCRAM";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .operation_mode = "rom";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_address_width = 6;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_data_out_clock = "clock0";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_data_width = 12;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_last_address = 63;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 64;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_logical_ram_width = 12;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_a_write_enable_clock = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_b_address_width = 6;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .port_b_data_width = 12;
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
defparam \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0 .mem_init0 = 768'hF37E70DADCF0C3AB8EAECA579D09598F189B85882780980080982785889B8F19599D0A57AECB11C3ACF0DADE70F370000C818F25230F3C54715135A862F6A670E7647A77D87F67FF7F67D87A776470E6A662F5A85134713C530F25218F0C8000;
// synopsys translate_on

// Location: LCFF_X30_Y25_N11
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_1_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ));

// Location: LCFF_X30_Y25_N17
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_4_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 ));

// Location: LCFF_X30_Y25_N13
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_2_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 ));

// Location: LCCOMB_X31_Y25_N10
cycloneii_lcell_comb ix50205z52926(
// Equation(s):
// nx50205z4 = (((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 )

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ),
	.datac(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 ),
	.datad(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 ),
	.cin(gnd),
	.combout(nx50205z4),
	.cout());
// synopsys translate_off
defparam ix50205z52926.lut_mask = 16'h7FFF;
defparam ix50205z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y25_N12
cycloneii_lcell_comb ix50205z52925(
// Equation(s):
// nx50205z3 = ((nx50205z4) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 )

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ),
	.datab(vcc),
	.datac(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 ),
	.datad(nx50205z4),
	.cin(gnd),
	.combout(nx50205z3),
	.cout());
// synopsys translate_off
defparam ix50205z52925.lut_mask = 16'hFF5F;
defparam ix50205z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y14_N27
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_12_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ));

// Location: LCFF_X42_Y14_N17
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_7_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ));

// Location: LCCOMB_X41_Y14_N24
cycloneii_lcell_comb \u_i2c_av_config|u0|ix7286z52923 (
// Equation(s):
// \u_i2c_av_config|u0|nx7286z1  = (\u_i2c_av_config|u0|nx7286z2 ) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|nx7286z2 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx7286z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix7286z52923 .lut_mask = 16'hCFFF;
defparam \u_i2c_av_config|u0|ix7286z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X12_Y8_N7
cycloneii_lcell_ff u_sine_reg_address_3_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_3_));

// Location: LCFF_X12_Y8_N11
cycloneii_lcell_ff u_sine_reg_address_5_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_5_));

// Location: LCFF_X12_Y8_N13
cycloneii_lcell_ff u_sine_reg_address_6_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_6_));

// Location: LCFF_X12_Y8_N17
cycloneii_lcell_ff u_sine_reg_address_8_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_8_));

// Location: LCCOMB_X30_Y25_N10
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52931 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15  & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15  & 
// ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ) # (GND)))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14  = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ))

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52931 .lut_mask = 16'h5A5F;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y25_N12
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52930 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13  & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14  $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13  & 
// (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14  & VCC))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12  = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13  & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14 ))

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52930 .lut_mask = 16'hA50A;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y25_N16
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52928 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9  & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10  $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9  & 
// (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10  & VCC))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8  = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9  & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10 ))

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52928 .lut_mask = 16'hA50A;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y14_N16
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52929 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52929 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y14_N24
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52925 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52925 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y14_N26
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52923 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1  = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2  $ (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52923 .lut_mask = 16'hF00F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N11
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_5_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_5_ ));

// Location: LCFF_X37_Y7_N13
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_6_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_6_ ));

// Location: LCCOMB_X38_Y7_N6
cycloneii_lcell_comb \u_i2c_av_config|ix35560z52924 (
// Equation(s):
// \u_i2c_av_config|nx35560z2  = (\u_i2c_av_config|modgen_counter_cont|q_7_  & (\u_i2c_av_config|modgen_counter_cont|q_5_  & (\u_i2c_av_config|modgen_counter_cont|q_6_  & \u_i2c_av_config|modgen_counter_cont|q_4_ )))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_7_ ),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_5_ ),
	.datac(\u_i2c_av_config|modgen_counter_cont|q_6_ ),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_4_ ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx35560z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix35560z52924 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix35560z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N30
cycloneii_lcell_comb \u_i2c_av_config|u0|ix22137z52924 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_5n5s2f1_1_  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & (((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 )) # 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|sdo_5n5s2f1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix22137z52924 .lut_mask = 16'h0515;
defparam \u_i2c_av_config|u0|ix22137z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N24
cycloneii_lcell_comb \u_i2c_av_config|u0|ix22137z52926 (
// Equation(s):
// \u_i2c_av_config|u0|nx22137z2  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & 
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx22137z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix22137z52926 .lut_mask = 16'hEA00;
defparam \u_i2c_av_config|u0|ix22137z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N26
cycloneii_lcell_comb \u_i2c_av_config|u0|ix22137z52925 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_5n5s2f1_0_  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & (!\u_i2c_av_config|u0|nx44942z5 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  
// & ((\u_i2c_av_config|u0|nx22137z2 )))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datab(\u_i2c_av_config|u0|nx44942z5 ),
	.datac(\u_i2c_av_config|u0|nx22137z2 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|sdo_5n5s2f1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix22137z52925 .lut_mask = 16'h1150;
defparam \u_i2c_av_config|u0|ix22137z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N8
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52925 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & 
// (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5  & VCC))
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3  = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 ),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1 ),
	.cout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52925 .lut_mask = 16'h3C0C;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y14_N6
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52927 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z5  = (\u_i2c_av_config|u0|nx43379z4 ) # ((\u_i2c_av_config|u0|nx44942z4 ) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|nx43379z4 ),
	.datac(\u_i2c_av_config|u0|nx44942z4 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z5 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52927 .lut_mask = 16'hFEFC;
defparam \u_i2c_av_config|u0|ix41315z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N10
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52923 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1  = \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3  $ (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3 ),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52923 .lut_mask = 16'hF00F;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N14
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52931 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z9  = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1  & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1  & ((\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ))))

	.dataa(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ),
	.datab(\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ),
	.datad(\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z9 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52931 .lut_mask = 16'h0B00;
defparam \u_i2c_av_config|u0|ix41315z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N16
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52930 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z8  = (\u_i2c_av_config|u0|nx41315z3  & (\u_i2c_av_config|u0|nx41315z9  & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1 ))

	.dataa(\u_i2c_av_config|u0|nx41315z3 ),
	.datab(\u_i2c_av_config|u0|nx41315z9 ),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z8 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52930 .lut_mask = 16'h0808;
defparam \u_i2c_av_config|u0|ix41315z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N28
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52936 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z14  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z14 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52936 .lut_mask = 16'h0C00;
defparam \u_i2c_av_config|u0|ix41315z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N6
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52935 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z13  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & (\u_i2c_av_config|u0|nx41315z14  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datab(\u_i2c_av_config|u0|nx41315z14 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z13 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52935 .lut_mask = 16'h0004;
defparam \u_i2c_av_config|u0|ix41315z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N10
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52939 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z17  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & (\u_i2c_av_config|u0|nx41315z14  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datab(\u_i2c_av_config|u0|nx41315z14 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z17 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52939 .lut_mask = 16'h4000;
defparam \u_i2c_av_config|u0|ix41315z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N8
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52943 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z21  = (!\u_i2c_av_config|u0|nx44942z5  & (!\u_i2c_av_config|u0|nx44942z4  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 )))

	.dataa(\u_i2c_av_config|u0|nx44942z5 ),
	.datab(\u_i2c_av_config|u0|nx44942z4 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z21 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52943 .lut_mask = 16'h0100;
defparam \u_i2c_av_config|u0|ix41315z52943 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N2
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52944 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z22  = (\u_i2c_av_config|u0|nx41315z15 ) # ((!\u_i2c_av_config|u0|nx44942z7  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & \u_i2c_av_config|u0|nx41315z14 )))

	.dataa(\u_i2c_av_config|u0|nx41315z15 ),
	.datab(\u_i2c_av_config|u0|nx44942z7 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datad(\u_i2c_av_config|u0|nx41315z14 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z22 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52944 .lut_mask = 16'hABAA;
defparam \u_i2c_av_config|u0|ix41315z52944 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N12
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52942 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z20  = ((!\u_i2c_av_config|u0|nx41315z21  & ((\u_i2c_av_config|u0|nx41315z22 ) # (!\u_i2c_av_config|u0|nx41315z4 )))) # (!\u_i2c_av_config|reset_n )

	.dataa(\u_i2c_av_config|reset_n ),
	.datab(\u_i2c_av_config|u0|nx41315z22 ),
	.datac(\u_i2c_av_config|u0|nx41315z21 ),
	.datad(\u_i2c_av_config|u0|nx41315z4 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z20 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52942 .lut_mask = 16'h5D5F;
defparam \u_i2c_av_config|u0|ix41315z52942 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y7_N10
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52934 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx56256z1  = (\u_i2c_av_config|modgen_counter_cont|q_5_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z12 )) # (!\u_i2c_av_config|modgen_counter_cont|q_5_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z12 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z11  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z12 ) # (!\u_i2c_av_config|modgen_counter_cont|q_5_ ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z12 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx56256z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z11 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52934 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y7_N12
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52933 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx57253z1  = (\u_i2c_av_config|modgen_counter_cont|q_6_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z11  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_6_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z11  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z10  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_6_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z11 ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z11 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx57253z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z10 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52933 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: CLKCTRL_G8
cycloneii_clkctrl \aud_bclk_dup0~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,aud_bclk_dup0}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\aud_bclk_dup0~clkctrl_outclk ));
// synopsys translate_off
defparam \aud_bclk_dup0~clkctrl .clock_type = "global clock";
defparam \aud_bclk_dup0~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_0_(
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
	.combout(\sw~combout [0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[0]));
// synopsys translate_off
defparam sw_ibuf_0_.input_async_reset = "none";
defparam sw_ibuf_0_.input_power_up = "low";
defparam sw_ibuf_0_.input_register_mode = "none";
defparam sw_ibuf_0_.input_sync_reset = "none";
defparam sw_ibuf_0_.oe_async_reset = "none";
defparam sw_ibuf_0_.oe_power_up = "low";
defparam sw_ibuf_0_.oe_register_mode = "none";
defparam sw_ibuf_0_.oe_sync_reset = "none";
defparam sw_ibuf_0_.operation_mode = "input";
defparam sw_ibuf_0_.output_async_reset = "none";
defparam sw_ibuf_0_.output_power_up = "low";
defparam sw_ibuf_0_.output_register_mode = "none";
defparam sw_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_3_(
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
	.combout(\sw~combout [3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[3]));
// synopsys translate_off
defparam sw_ibuf_3_.input_async_reset = "none";
defparam sw_ibuf_3_.input_power_up = "low";
defparam sw_ibuf_3_.input_register_mode = "none";
defparam sw_ibuf_3_.input_sync_reset = "none";
defparam sw_ibuf_3_.oe_async_reset = "none";
defparam sw_ibuf_3_.oe_power_up = "low";
defparam sw_ibuf_3_.oe_register_mode = "none";
defparam sw_ibuf_3_.oe_sync_reset = "none";
defparam sw_ibuf_3_.operation_mode = "input";
defparam sw_ibuf_3_.output_async_reset = "none";
defparam sw_ibuf_3_.output_power_up = "low";
defparam sw_ibuf_3_.output_register_mode = "none";
defparam sw_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_2_(
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
	.combout(\sw~combout [2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[2]));
// synopsys translate_off
defparam sw_ibuf_2_.input_async_reset = "none";
defparam sw_ibuf_2_.input_power_up = "low";
defparam sw_ibuf_2_.input_register_mode = "none";
defparam sw_ibuf_2_.input_sync_reset = "none";
defparam sw_ibuf_2_.oe_async_reset = "none";
defparam sw_ibuf_2_.oe_power_up = "low";
defparam sw_ibuf_2_.oe_register_mode = "none";
defparam sw_ibuf_2_.oe_sync_reset = "none";
defparam sw_ibuf_2_.operation_mode = "input";
defparam sw_ibuf_2_.output_async_reset = "none";
defparam sw_ibuf_2_.output_power_up = "low";
defparam sw_ibuf_2_.output_register_mode = "none";
defparam sw_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N0
cycloneii_lcell_comb ix49625z52925(
// Equation(s):
// nx49625z2 = (\sw~combout [3] & (!\sw~combout [1] & (!\sw~combout [0] & !\sw~combout [2]))) # (!\sw~combout [3] & ((\sw~combout [2]) # ((\sw~combout [1] & \sw~combout [0]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [0]),
	.datac(\sw~combout [3]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx49625z2),
	.cout());
// synopsys translate_off
defparam ix49625z52925.lut_mask = 16'h0F18;
defparam ix49625z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N4
cycloneii_lcell_comb ix49625z52924(
// Equation(s):
// nx49625z1 = (\sw~combout [3] & (\sw~combout [1] & (\sw~combout [0] & \sw~combout [2]))) # (!\sw~combout [3] & (!\sw~combout [2] & ((!\sw~combout [0]) # (!\sw~combout [1]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [0]),
	.datac(\sw~combout [3]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx49625z1),
	.cout());
// synopsys translate_off
defparam ix49625z52924.lut_mask = 16'h8007;
defparam ix49625z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N30
cycloneii_lcell_comb ix49625z52926(
// Equation(s):
// nx49625z3 = (\sw~combout [1] & (!\sw~combout [2] & ((\sw~combout [0]) # (\sw~combout [3])))) # (!\sw~combout [1] & ((\sw~combout [3] & (\sw~combout [0] & !\sw~combout [2])) # (!\sw~combout [3] & ((\sw~combout [2])))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [0]),
	.datac(\sw~combout [3]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx49625z3),
	.cout());
// synopsys translate_off
defparam ix49625z52926.lut_mask = 16'h05E8;
defparam ix49625z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N18
cycloneii_lcell_comb ix55607z52924(
// Equation(s):
// nx55607z1 = (nx49625z4 & ((nx49625z2 & (nx49625z1 & !nx49625z3)) # (!nx49625z2 & (nx49625z1 $ (!nx49625z3)))))

	.dataa(nx49625z4),
	.datab(nx49625z2),
	.datac(nx49625z1),
	.datad(nx49625z3),
	.cin(gnd),
	.combout(nx55607z1),
	.cout());
// synopsys translate_off
defparam ix55607z52924.lut_mask = 16'h2082;
defparam ix55607z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N2
cycloneii_lcell_comb ix49625z52927(
// Equation(s):
// nx49625z4 = \sw~combout [3] $ (((\sw~combout [1] & (\sw~combout [0] $ (\sw~combout [2]))) # (!\sw~combout [1] & (!\sw~combout [0] & !\sw~combout [2]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [0]),
	.datac(\sw~combout [3]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx49625z4),
	.cout());
// synopsys translate_off
defparam ix49625z52927.lut_mask = 16'hD269;
defparam ix49625z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N8
cycloneii_lcell_comb ix52616z52924(
// Equation(s):
// nx52616z1 = (nx49625z2 & (!nx49625z1 & !nx49625z3))

	.dataa(vcc),
	.datab(nx49625z2),
	.datac(nx49625z1),
	.datad(nx49625z3),
	.cin(gnd),
	.combout(nx52616z1),
	.cout());
// synopsys translate_off
defparam ix52616z52924.lut_mask = 16'h000C;
defparam ix52616z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N20
cycloneii_lcell_comb ix55607z52923(
// Equation(s):
// hex4_dup0_0_ = (nx55607z1) # ((!nx49625z4 & (nx52616z1 & nx49625z2)))

	.dataa(nx55607z1),
	.datab(nx49625z4),
	.datac(nx52616z1),
	.datad(nx49625z2),
	.cin(gnd),
	.combout(hex4_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix55607z52923.lut_mask = 16'hBAAA;
defparam ix55607z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N22
cycloneii_lcell_comb ix54610z52923(
// Equation(s):
// hex4_dup0_1_ = (nx49625z1 & ((nx49625z4 & ((nx49625z3))) # (!nx49625z4 & (nx49625z2)))) # (!nx49625z1 & (nx49625z2 & (nx49625z4 $ (nx49625z3))))

	.dataa(nx49625z4),
	.datab(nx49625z2),
	.datac(nx49625z1),
	.datad(nx49625z3),
	.cin(gnd),
	.combout(hex4_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix54610z52923.lut_mask = 16'hE448;
defparam ix54610z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N16
cycloneii_lcell_comb ix53613z52923(
// Equation(s):
// hex4_dup0_2_ = (nx49625z2 & (nx49625z1 & ((nx49625z3) # (!nx49625z4)))) # (!nx49625z2 & (!nx49625z4 & (!nx49625z1 & nx49625z3)))

	.dataa(nx49625z4),
	.datab(nx49625z2),
	.datac(nx49625z1),
	.datad(nx49625z3),
	.cin(gnd),
	.combout(hex4_dup0_2_),
	.cout());
// synopsys translate_off
defparam ix53613z52923.lut_mask = 16'hC140;
defparam ix53613z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N26
cycloneii_lcell_comb ix52616z52925(
// Equation(s):
// nx52616z2 = (nx49625z4 & (nx49625z2 $ (((!nx49625z3))))) # (!nx49625z4 & (!nx49625z2 & (nx49625z1 & nx49625z3)))

	.dataa(nx49625z4),
	.datab(nx49625z2),
	.datac(nx49625z1),
	.datad(nx49625z3),
	.cin(gnd),
	.combout(nx52616z2),
	.cout());
// synopsys translate_off
defparam ix52616z52925.lut_mask = 16'h9822;
defparam ix52616z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N28
cycloneii_lcell_comb ix52616z52923(
// Equation(s):
// hex4_dup0_3_ = (nx52616z2) # ((!nx49625z4 & (nx52616z1 & nx49625z2)))

	.dataa(nx52616z2),
	.datab(nx49625z4),
	.datac(nx52616z1),
	.datad(nx49625z2),
	.cin(gnd),
	.combout(hex4_dup0_3_),
	.cout());
// synopsys translate_off
defparam ix52616z52923.lut_mask = 16'hBAAA;
defparam ix52616z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N14
cycloneii_lcell_comb ix51619z52923(
// Equation(s):
// hex4_dup0_4_ = (nx49625z3 & (nx49625z4 & ((!nx49625z1)))) # (!nx49625z3 & ((nx49625z2 & ((!nx49625z1))) # (!nx49625z2 & (nx49625z4))))

	.dataa(nx49625z4),
	.datab(nx49625z2),
	.datac(nx49625z1),
	.datad(nx49625z3),
	.cin(gnd),
	.combout(hex4_dup0_4_),
	.cout());
// synopsys translate_off
defparam ix51619z52923.lut_mask = 16'h0A2E;
defparam ix51619z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N24
cycloneii_lcell_comb ix50622z52923(
// Equation(s):
// hex4_dup0_5_ = (nx49625z4 & (nx49625z1 $ (((nx49625z3) # (!nx49625z2))))) # (!nx49625z4 & (!nx49625z2 & (!nx49625z1 & nx49625z3)))

	.dataa(nx49625z4),
	.datab(nx49625z2),
	.datac(nx49625z1),
	.datad(nx49625z3),
	.cin(gnd),
	.combout(hex4_dup0_5_),
	.cout());
// synopsys translate_off
defparam ix50622z52923.lut_mask = 16'h0B82;
defparam ix50622z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N10
cycloneii_lcell_comb ix49625z52923(
// Equation(s):
// hex4_dup0_6_ = (nx49625z4 & (!nx49625z1 & (nx49625z2 $ (!nx49625z3)))) # (!nx49625z4 & (!nx49625z3 & (nx49625z2 $ (!nx49625z1))))

	.dataa(nx49625z4),
	.datab(nx49625z2),
	.datac(nx49625z1),
	.datad(nx49625z3),
	.cin(gnd),
	.combout(hex4_dup0_6_),
	.cout());
// synopsys translate_off
defparam ix49625z52923.lut_mask = 16'h0843;
defparam ix49625z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_1_(
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
	.combout(\sw~combout [1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[1]));
// synopsys translate_off
defparam sw_ibuf_1_.input_async_reset = "none";
defparam sw_ibuf_1_.input_power_up = "low";
defparam sw_ibuf_1_.input_register_mode = "none";
defparam sw_ibuf_1_.input_sync_reset = "none";
defparam sw_ibuf_1_.oe_async_reset = "none";
defparam sw_ibuf_1_.oe_power_up = "low";
defparam sw_ibuf_1_.oe_register_mode = "none";
defparam sw_ibuf_1_.oe_sync_reset = "none";
defparam sw_ibuf_1_.operation_mode = "input";
defparam sw_ibuf_1_.output_async_reset = "none";
defparam sw_ibuf_1_.output_power_up = "low";
defparam sw_ibuf_1_.output_register_mode = "none";
defparam sw_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_5_(
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
	.combout(\sw~combout [5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[5]));
// synopsys translate_off
defparam sw_ibuf_5_.input_async_reset = "none";
defparam sw_ibuf_5_.input_power_up = "low";
defparam sw_ibuf_5_.input_register_mode = "none";
defparam sw_ibuf_5_.input_sync_reset = "none";
defparam sw_ibuf_5_.oe_async_reset = "none";
defparam sw_ibuf_5_.oe_power_up = "low";
defparam sw_ibuf_5_.oe_register_mode = "none";
defparam sw_ibuf_5_.oe_sync_reset = "none";
defparam sw_ibuf_5_.operation_mode = "input";
defparam sw_ibuf_5_.output_async_reset = "none";
defparam sw_ibuf_5_.output_power_up = "low";
defparam sw_ibuf_5_.output_register_mode = "none";
defparam sw_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N28
cycloneii_lcell_comb ix38664z52930(
// Equation(s):
// nx38664z7 = (!\sw~combout [2] & (((\sw~combout [5]) # (!\sw~combout [0])) # (!\sw~combout [6])))

	.dataa(\sw~combout [6]),
	.datab(\sw~combout [5]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx38664z7),
	.cout());
// synopsys translate_off
defparam ix38664z52930.lut_mask = 16'h00DF;
defparam ix38664z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N22
cycloneii_lcell_comb ix38664z52929(
// Equation(s):
// nx38664z6 = (\sw~combout [1] & (((\sw~combout [3] & nx38664z7)))) # (!\sw~combout [1] & (!\sw~combout [2]))

	.dataa(\sw~combout [2]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [1]),
	.datad(nx38664z7),
	.cin(gnd),
	.combout(nx38664z6),
	.cout());
// synopsys translate_off
defparam ix38664z52929.lut_mask = 16'hC505;
defparam ix38664z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_4_(
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
	.combout(\sw~combout [4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[4]));
// synopsys translate_off
defparam sw_ibuf_4_.input_async_reset = "none";
defparam sw_ibuf_4_.input_power_up = "low";
defparam sw_ibuf_4_.input_register_mode = "none";
defparam sw_ibuf_4_.input_sync_reset = "none";
defparam sw_ibuf_4_.oe_async_reset = "none";
defparam sw_ibuf_4_.oe_power_up = "low";
defparam sw_ibuf_4_.oe_register_mode = "none";
defparam sw_ibuf_4_.oe_sync_reset = "none";
defparam sw_ibuf_4_.operation_mode = "input";
defparam sw_ibuf_4_.output_async_reset = "none";
defparam sw_ibuf_4_.output_power_up = "low";
defparam sw_ibuf_4_.output_register_mode = "none";
defparam sw_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N26
cycloneii_lcell_comb ix38664z52928(
// Equation(s):
// nx38664z5 = (\sw~combout [1] & (\sw~combout [2] $ (((!\sw~combout [3] & \sw~combout [0]))))) # (!\sw~combout [1] & (\sw~combout [2] & ((\sw~combout [0]) # (!\sw~combout [3]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx38664z5),
	.cout());
// synopsys translate_off
defparam ix38664z52928.lut_mask = 16'hDB20;
defparam ix38664z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N4
cycloneii_lcell_comb ix38664z52927(
// Equation(s):
// nx38664z4 = (\sw~combout [4] & (nx38664z6)) # (!\sw~combout [4] & ((nx38664z5)))

	.dataa(vcc),
	.datab(nx38664z6),
	.datac(\sw~combout [4]),
	.datad(nx38664z5),
	.cin(gnd),
	.combout(nx38664z4),
	.cout());
// synopsys translate_off
defparam ix38664z52927.lut_mask = 16'hCFC0;
defparam ix38664z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N18
cycloneii_lcell_comb ix38664z52936(
// Equation(s):
// nx38664z13 = (!\sw~combout [1]) # (!\sw~combout [3])

	.dataa(vcc),
	.datab(vcc),
	.datac(\sw~combout [3]),
	.datad(\sw~combout [1]),
	.cin(gnd),
	.combout(nx38664z13),
	.cout());
// synopsys translate_off
defparam ix38664z52936.lut_mask = 16'h0FFF;
defparam ix38664z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N20
cycloneii_lcell_comb ix38664z52934(
// Equation(s):
// nx38664z11 = (\sw~combout [0] & ((nx38664z13 & ((\sw~combout [4]))) # (!nx38664z13 & (nx38664z12)))) # (!\sw~combout [0] & (((!\sw~combout [4]))))

	.dataa(nx38664z12),
	.datab(nx38664z13),
	.datac(\sw~combout [4]),
	.datad(\sw~combout [0]),
	.cin(gnd),
	.combout(nx38664z11),
	.cout());
// synopsys translate_off
defparam ix38664z52934.lut_mask = 16'hE20F;
defparam ix38664z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N8
cycloneii_lcell_comb ix38664z52926(
// Equation(s):
// nx38664z3 = (\sw~combout [0] & (\sw~combout [2] & (!\sw~combout [3] & \sw~combout [1]))) # (!\sw~combout [0] & (!\sw~combout [2] & (\sw~combout [3] & !\sw~combout [1])))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [2]),
	.datac(\sw~combout [3]),
	.datad(\sw~combout [1]),
	.cin(gnd),
	.combout(nx38664z3),
	.cout());
// synopsys translate_off
defparam ix38664z52926.lut_mask = 16'h0810;
defparam ix38664z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X2_Y15_N24
cycloneii_lcell_comb ix38664z52925(
// Equation(s):
// nx38664z2 = (\sw~combout [3] & (!\sw~combout [1] & \sw~combout [2])) # (!\sw~combout [3] & (\sw~combout [1] & !\sw~combout [2]))

	.dataa(vcc),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [1]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx38664z2),
	.cout());
// synopsys translate_off
defparam ix38664z52925.lut_mask = 16'h0C30;
defparam ix38664z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N2
cycloneii_lcell_comb ix38664z52924(
// Equation(s):
// nx38664z1 = (\sw~combout [4] & ((nx38664z2))) # (!\sw~combout [4] & (nx38664z3))

	.dataa(vcc),
	.datab(nx38664z3),
	.datac(\sw~combout [4]),
	.datad(nx38664z2),
	.cin(gnd),
	.combout(nx38664z1),
	.cout());
// synopsys translate_off
defparam ix38664z52924.lut_mask = 16'hFC0C;
defparam ix38664z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N30
cycloneii_lcell_comb ix32682z52924(
// Equation(s):
// nx32682z1 = (!nx38664z8 & (nx38664z11 & (nx38664z4 $ (!nx38664z1))))

	.dataa(nx38664z8),
	.datab(nx38664z4),
	.datac(nx38664z11),
	.datad(nx38664z1),
	.cin(gnd),
	.combout(nx32682z1),
	.cout());
// synopsys translate_off
defparam ix32682z52924.lut_mask = 16'h4010;
defparam ix32682z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N16
cycloneii_lcell_comb ix32682z52925(
// Equation(s):
// nx32682z2 = (nx38664z8 & (!nx38664z4 & (nx38664z11 & nx38664z1))) # (!nx38664z8 & (nx38664z4 & (!nx38664z11 & !nx38664z1)))

	.dataa(nx38664z8),
	.datab(nx38664z4),
	.datac(nx38664z11),
	.datad(nx38664z1),
	.cin(gnd),
	.combout(nx32682z2),
	.cout());
// synopsys translate_off
defparam ix32682z52925.lut_mask = 16'h2004;
defparam ix32682z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N26
cycloneii_lcell_comb ix32682z52923(
// Equation(s):
// hex5_dup0_0_ = (nx32682z1) # (nx32682z2)

	.dataa(vcc),
	.datab(nx32682z1),
	.datac(nx32682z2),
	.datad(vcc),
	.cin(gnd),
	.combout(hex5_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix32682z52923.lut_mask = 16'hFCFC;
defparam ix32682z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y14_N12
cycloneii_lcell_comb ix38664z52932(
// Equation(s):
// nx38664z9 = (\sw~combout [1] & (\sw~combout [3] $ (\sw~combout [2]))) # (!\sw~combout [1] & (!\sw~combout [3] & !\sw~combout [2]))

	.dataa(\sw~combout [1]),
	.datab(vcc),
	.datac(\sw~combout [3]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx38664z9),
	.cout());
// synopsys translate_off
defparam ix38664z52932.lut_mask = 16'h0AA5;
defparam ix38664z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N6
cycloneii_lcell_comb ix38664z52931(
// Equation(s):
// nx38664z8 = (\sw~combout [4] & ((nx38664z9))) # (!\sw~combout [4] & (nx38664z10))

	.dataa(nx38664z10),
	.datab(nx38664z9),
	.datac(\sw~combout [4]),
	.datad(vcc),
	.cin(gnd),
	.combout(nx38664z8),
	.cout());
// synopsys translate_off
defparam ix38664z52931.lut_mask = 16'hCACA;
defparam ix38664z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N28
cycloneii_lcell_comb ix33679z52923(
// Equation(s):
// hex5_dup0_1_ = (nx38664z8 & ((nx38664z11 & ((nx38664z1))) # (!nx38664z11 & (nx38664z4)))) # (!nx38664z8 & (nx38664z4 & (nx38664z11 $ (nx38664z1))))

	.dataa(nx38664z8),
	.datab(nx38664z4),
	.datac(nx38664z11),
	.datad(nx38664z1),
	.cin(gnd),
	.combout(hex5_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix33679z52923.lut_mask = 16'hAC48;
defparam ix33679z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N22
cycloneii_lcell_comb ix34676z52923(
// Equation(s):
// hex5_dup0_2_ = (nx38664z4 & (nx38664z1 & ((nx38664z8) # (!nx38664z11)))) # (!nx38664z4 & (nx38664z8 & (!nx38664z11 & !nx38664z1)))

	.dataa(nx38664z8),
	.datab(nx38664z4),
	.datac(nx38664z11),
	.datad(nx38664z1),
	.cin(gnd),
	.combout(hex5_dup0_2_),
	.cout());
// synopsys translate_off
defparam ix34676z52923.lut_mask = 16'h8C02;
defparam ix34676z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N0
cycloneii_lcell_comb ix35673z52923(
// Equation(s):
// hex5_dup0_3_ = (nx38664z11 & (nx38664z8 $ ((!nx38664z4)))) # (!nx38664z11 & ((nx38664z8 & (!nx38664z4 & nx38664z1)) # (!nx38664z8 & (nx38664z4 & !nx38664z1))))

	.dataa(nx38664z8),
	.datab(nx38664z4),
	.datac(nx38664z11),
	.datad(nx38664z1),
	.cin(gnd),
	.combout(hex5_dup0_3_),
	.cout());
// synopsys translate_off
defparam ix35673z52923.lut_mask = 16'h9294;
defparam ix35673z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N10
cycloneii_lcell_comb ix36670z52923(
// Equation(s):
// hex5_dup0_4_ = (nx38664z8 & (((nx38664z11 & !nx38664z1)))) # (!nx38664z8 & ((nx38664z4 & ((!nx38664z1))) # (!nx38664z4 & (nx38664z11))))

	.dataa(nx38664z8),
	.datab(nx38664z4),
	.datac(nx38664z11),
	.datad(nx38664z1),
	.cin(gnd),
	.combout(hex5_dup0_4_),
	.cout());
// synopsys translate_off
defparam ix36670z52923.lut_mask = 16'h10F4;
defparam ix36670z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N12
cycloneii_lcell_comb ix37667z52923(
// Equation(s):
// hex5_dup0_5_ = (nx38664z8 & (!nx38664z1 & ((nx38664z11) # (!nx38664z4)))) # (!nx38664z8 & (nx38664z11 & (nx38664z4 $ (!nx38664z1))))

	.dataa(nx38664z8),
	.datab(nx38664z4),
	.datac(nx38664z11),
	.datad(nx38664z1),
	.cin(gnd),
	.combout(hex5_dup0_5_),
	.cout());
// synopsys translate_off
defparam ix37667z52923.lut_mask = 16'h40B2;
defparam ix37667z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y15_N14
cycloneii_lcell_comb ix38664z52923(
// Equation(s):
// hex5_dup0_6_ = (nx38664z11 & (!nx38664z1 & (nx38664z8 $ (!nx38664z4)))) # (!nx38664z11 & (!nx38664z8 & (nx38664z4 $ (!nx38664z1))))

	.dataa(nx38664z8),
	.datab(nx38664z4),
	.datac(nx38664z11),
	.datad(nx38664z1),
	.cin(gnd),
	.combout(hex5_dup0_6_),
	.cout());
// synopsys translate_off
defparam ix38664z52923.lut_mask = 16'h0491;
defparam ix38664z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N14
cycloneii_lcell_comb ix4119z52938(
// Equation(s):
// nx4119z15 = \sw~combout [5] $ (((\sw~combout [4] & !\sw~combout [2])))

	.dataa(\sw~combout [5]),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [2]),
	.datad(vcc),
	.cin(gnd),
	.combout(nx4119z15),
	.cout());
// synopsys translate_off
defparam ix4119z52938.lut_mask = 16'hA6A6;
defparam ix4119z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N6
cycloneii_lcell_comb ix4119z52937(
// Equation(s):
// nx4119z14 = (\sw~combout [3] & (nx4119z16)) # (!\sw~combout [3] & ((nx4119z15)))

	.dataa(nx4119z16),
	.datab(nx4119z15),
	.datac(\sw~combout [3]),
	.datad(vcc),
	.cin(gnd),
	.combout(nx4119z14),
	.cout());
// synopsys translate_off
defparam ix4119z52937.lut_mask = 16'hACAC;
defparam ix4119z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N28
cycloneii_lcell_comb ix4119z52929(
// Equation(s):
// nx4119z6 = (!\sw~combout [5] & (((!\sw~combout [3] & !\sw~combout [2])) # (!\sw~combout [4])))

	.dataa(\sw~combout [5]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [4]),
	.cin(gnd),
	.combout(nx4119z6),
	.cout());
// synopsys translate_off
defparam ix4119z52929.lut_mask = 16'h0155;
defparam ix4119z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N22
cycloneii_lcell_comb ix4119z52931(
// Equation(s):
// nx4119z8 = (\sw~combout [3] & ((\sw~combout [0]) # ((\sw~combout [2]) # (\sw~combout [1]))))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [1]),
	.cin(gnd),
	.combout(nx4119z8),
	.cout());
// synopsys translate_off
defparam ix4119z52931.lut_mask = 16'hCCC8;
defparam ix4119z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N16
cycloneii_lcell_comb ix4119z52930(
// Equation(s):
// nx4119z7 = (!\sw~combout [6] & (\sw~combout [5] & ((\sw~combout [4]) # (nx4119z8))))

	.dataa(\sw~combout [6]),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [5]),
	.datad(nx4119z8),
	.cin(gnd),
	.combout(nx4119z7),
	.cout());
// synopsys translate_off
defparam ix4119z52930.lut_mask = 16'h5040;
defparam ix4119z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_6_(
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
	.combout(\sw~combout [6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[6]));
// synopsys translate_off
defparam sw_ibuf_6_.input_async_reset = "none";
defparam sw_ibuf_6_.input_power_up = "low";
defparam sw_ibuf_6_.input_register_mode = "none";
defparam sw_ibuf_6_.input_sync_reset = "none";
defparam sw_ibuf_6_.oe_async_reset = "none";
defparam sw_ibuf_6_.oe_power_up = "low";
defparam sw_ibuf_6_.oe_register_mode = "none";
defparam sw_ibuf_6_.oe_sync_reset = "none";
defparam sw_ibuf_6_.operation_mode = "input";
defparam sw_ibuf_6_.output_async_reset = "none";
defparam sw_ibuf_6_.output_power_up = "low";
defparam sw_ibuf_6_.output_register_mode = "none";
defparam sw_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N18
cycloneii_lcell_comb ix4119z52928(
// Equation(s):
// nx4119z5 = (nx4119z7) # ((nx4119z6 & \sw~combout [6]))

	.dataa(vcc),
	.datab(nx4119z6),
	.datac(nx4119z7),
	.datad(\sw~combout [6]),
	.cin(gnd),
	.combout(nx4119z5),
	.cout());
// synopsys translate_off
defparam ix4119z52928.lut_mask = 16'hFCF0;
defparam ix4119z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N8
cycloneii_lcell_comb ix4119z52925(
// Equation(s):
// nx4119z2 = (\sw~combout [5] & (!\sw~combout [4])) # (!\sw~combout [5] & (\sw~combout [4] & \sw~combout [2]))

	.dataa(\sw~combout [5]),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [2]),
	.datad(vcc),
	.cin(gnd),
	.combout(nx4119z2),
	.cout());
// synopsys translate_off
defparam ix4119z52925.lut_mask = 16'h6262;
defparam ix4119z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N10
cycloneii_lcell_comb ix4119z52924(
// Equation(s):
// nx4119z1 = (\sw~combout [6] & ((\sw~combout [3] & (nx4119z3)) # (!\sw~combout [3] & ((nx4119z2)))))

	.dataa(nx4119z3),
	.datab(\sw~combout [3]),
	.datac(nx4119z2),
	.datad(\sw~combout [6]),
	.cin(gnd),
	.combout(nx4119z1),
	.cout());
// synopsys translate_off
defparam ix4119z52924.lut_mask = 16'hB800;
defparam ix4119z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y17_N2
cycloneii_lcell_comb ix10101z52925(
// Equation(s):
// nx10101z2 = (nx4119z9 & (nx4119z14 & (!nx4119z5 & nx4119z1))) # (!nx4119z9 & (!nx4119z14 & (nx4119z5 & !nx4119z1)))

	.dataa(nx4119z9),
	.datab(nx4119z14),
	.datac(nx4119z5),
	.datad(nx4119z1),
	.cin(gnd),
	.combout(nx10101z2),
	.cout());
// synopsys translate_off
defparam ix10101z52925.lut_mask = 16'h0810;
defparam ix10101z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y17_N16
cycloneii_lcell_comb ix10101z52924(
// Equation(s):
// nx10101z1 = (!nx4119z9 & (nx4119z14 & (nx4119z5 $ (!nx4119z1))))

	.dataa(nx4119z9),
	.datab(nx4119z14),
	.datac(nx4119z5),
	.datad(nx4119z1),
	.cin(gnd),
	.combout(nx10101z1),
	.cout());
// synopsys translate_off
defparam ix10101z52924.lut_mask = 16'h4004;
defparam ix10101z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y17_N28
cycloneii_lcell_comb ix10101z52923(
// Equation(s):
// hex6_dup0_0_ = (nx10101z2) # (nx10101z1)

	.dataa(vcc),
	.datab(nx10101z2),
	.datac(nx10101z1),
	.datad(vcc),
	.cin(gnd),
	.combout(hex6_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix10101z52923.lut_mask = 16'hFCFC;
defparam ix10101z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N0
cycloneii_lcell_comb ix4119z52936(
// Equation(s):
// nx4119z13 = (!\sw~combout [4] & (((!\sw~combout [0] & !\sw~combout [2])) # (!\sw~combout [3])))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [4]),
	.cin(gnd),
	.combout(nx4119z13),
	.cout());
// synopsys translate_off
defparam ix4119z52936.lut_mask = 16'h0037;
defparam ix4119z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N30
cycloneii_lcell_comb ix4119z52935(
// Equation(s):
// nx4119z12 = (\sw~combout [3] & (((\sw~combout [2] & \sw~combout [4])))) # (!\sw~combout [3] & (!\sw~combout [6] & ((!\sw~combout [4]))))

	.dataa(\sw~combout [6]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [4]),
	.cin(gnd),
	.combout(nx4119z12),
	.cout());
// synopsys translate_off
defparam ix4119z52935.lut_mask = 16'hC011;
defparam ix4119z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N2
cycloneii_lcell_comb ix4119z52934(
// Equation(s):
// nx4119z11 = (\sw~combout [1] & (((nx4119z12)))) # (!\sw~combout [1] & (!\sw~combout [6] & (nx4119z13)))

	.dataa(\sw~combout [6]),
	.datab(nx4119z13),
	.datac(nx4119z12),
	.datad(\sw~combout [1]),
	.cin(gnd),
	.combout(nx4119z11),
	.cout());
// synopsys translate_off
defparam ix4119z52934.lut_mask = 16'hF044;
defparam ix4119z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y13_N4
cycloneii_lcell_comb ix4119z52932(
// Equation(s):
// nx4119z9 = (\sw~combout [5] & ((nx4119z11))) # (!\sw~combout [5] & (nx4119z10))

	.dataa(nx4119z10),
	.datab(nx4119z11),
	.datac(\sw~combout [5]),
	.datad(vcc),
	.cin(gnd),
	.combout(nx4119z9),
	.cout());
// synopsys translate_off
defparam ix4119z52932.lut_mask = 16'hCACA;
defparam ix4119z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y17_N22
cycloneii_lcell_comb ix9104z52923(
// Equation(s):
// hex6_dup0_1_ = (nx4119z9 & ((nx4119z14 & ((nx4119z1))) # (!nx4119z14 & (nx4119z5)))) # (!nx4119z9 & (nx4119z5 & (nx4119z14 $ (nx4119z1))))

	.dataa(nx4119z9),
	.datab(nx4119z14),
	.datac(nx4119z5),
	.datad(nx4119z1),
	.cin(gnd),
	.combout(hex6_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix9104z52923.lut_mask = 16'hB860;
defparam ix9104z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y17_N8
cycloneii_lcell_comb ix8107z52923(
// Equation(s):
// hex6_dup0_2_ = (nx4119z5 & (nx4119z1 & ((nx4119z9) # (!nx4119z14)))) # (!nx4119z5 & (nx4119z9 & (!nx4119z14 & !nx4119z1)))

	.dataa(nx4119z9),
	.datab(nx4119z14),
	.datac(nx4119z5),
	.datad(nx4119z1),
	.cin(gnd),
	.combout(hex6_dup0_2_),
	.cout());
// synopsys translate_off
defparam ix8107z52923.lut_mask = 16'hB002;
defparam ix8107z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y17_N10
cycloneii_lcell_comb ix7110z52923(
// Equation(s):
// hex6_dup0_3_ = (nx4119z14 & (nx4119z9 $ ((!nx4119z5)))) # (!nx4119z14 & ((nx4119z9 & (!nx4119z5 & nx4119z1)) # (!nx4119z9 & (nx4119z5 & !nx4119z1))))

	.dataa(nx4119z9),
	.datab(nx4119z14),
	.datac(nx4119z5),
	.datad(nx4119z1),
	.cin(gnd),
	.combout(hex6_dup0_3_),
	.cout());
// synopsys translate_off
defparam ix7110z52923.lut_mask = 16'h8694;
defparam ix7110z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y17_N12
cycloneii_lcell_comb ix6113z52923(
// Equation(s):
// hex6_dup0_4_ = (nx4119z9 & (nx4119z14 & ((!nx4119z1)))) # (!nx4119z9 & ((nx4119z5 & ((!nx4119z1))) # (!nx4119z5 & (nx4119z14))))

	.dataa(nx4119z9),
	.datab(nx4119z14),
	.datac(nx4119z5),
	.datad(nx4119z1),
	.cin(gnd),
	.combout(hex6_dup0_4_),
	.cout());
// synopsys translate_off
defparam ix6113z52923.lut_mask = 16'h04DC;
defparam ix6113z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y17_N6
cycloneii_lcell_comb ix5116z52923(
// Equation(s):
// hex6_dup0_5_ = (nx4119z9 & (!nx4119z1 & ((nx4119z14) # (!nx4119z5)))) # (!nx4119z9 & (nx4119z14 & (nx4119z5 $ (!nx4119z1))))

	.dataa(nx4119z9),
	.datab(nx4119z14),
	.datac(nx4119z5),
	.datad(nx4119z1),
	.cin(gnd),
	.combout(hex6_dup0_5_),
	.cout());
// synopsys translate_off
defparam ix5116z52923.lut_mask = 16'h408E;
defparam ix5116z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X1_Y17_N0
cycloneii_lcell_comb ix4119z52923(
// Equation(s):
// hex6_dup0_6_ = (nx4119z14 & (!nx4119z1 & (nx4119z9 $ (!nx4119z5)))) # (!nx4119z14 & (!nx4119z9 & (nx4119z5 $ (!nx4119z1))))

	.dataa(nx4119z9),
	.datab(nx4119z14),
	.datac(nx4119z5),
	.datad(nx4119z1),
	.cin(gnd),
	.combout(hex6_dup0_6_),
	.cout());
// synopsys translate_off
defparam ix4119z52923.lut_mask = 16'h1085;
defparam ix4119z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N18
cycloneii_lcell_comb ix17637z52925(
// Equation(s):
// nx17637z2 = (\sw~combout [5] & ((\sw~combout [1]) # ((\sw~combout [0]) # (\sw~combout [2]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [5]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx17637z2),
	.cout());
// synopsys translate_off
defparam ix17637z52925.lut_mask = 16'hCCC8;
defparam ix17637z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N20
cycloneii_lcell_comb ix17637z52924(
// Equation(s):
// nx17637z1 = (\sw~combout [6] & (\sw~combout [3] & (!\sw~combout [4] & nx17637z2)))

	.dataa(\sw~combout [6]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [4]),
	.datad(nx17637z2),
	.cin(gnd),
	.combout(nx17637z1),
	.cout());
// synopsys translate_off
defparam ix17637z52924.lut_mask = 16'h0800;
defparam ix17637z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N30
cycloneii_lcell_comb ix17637z52923(
// Equation(s):
// hex7_dup0_0_ = (nx17637z1) # ((\sw~combout [4] & (\sw~combout [5] & \sw~combout [6])))

	.dataa(\sw~combout [4]),
	.datab(\sw~combout [5]),
	.datac(nx17637z1),
	.datad(\sw~combout [6]),
	.cin(gnd),
	.combout(hex7_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix17637z52923.lut_mask = 16'hF8F0;
defparam ix17637z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io clock_27_ibuf(
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
	.combout(\clock_27~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clock_27));
// synopsys translate_off
defparam clock_27_ibuf.input_async_reset = "none";
defparam clock_27_ibuf.input_power_up = "low";
defparam clock_27_ibuf.input_register_mode = "none";
defparam clock_27_ibuf.input_sync_reset = "none";
defparam clock_27_ibuf.oe_async_reset = "none";
defparam clock_27_ibuf.oe_power_up = "low";
defparam clock_27_ibuf.oe_register_mode = "none";
defparam clock_27_ibuf.oe_sync_reset = "none";
defparam clock_27_ibuf.operation_mode = "input";
defparam clock_27_ibuf.output_async_reset = "none";
defparam clock_27_ibuf.output_power_up = "low";
defparam clock_27_ibuf.output_register_mode = "none";
defparam clock_27_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PLL_3
cycloneii_pll \u_audio_dac_p1_altpll|pll (
	.ena(vcc),
	.clkswitch(gnd),
	.areset(gnd),
	.pfdena(vcc),
	.testclearlock(gnd),
	.sbdin(gnd),
	.inclk({gnd,\clock_27~combout }),
	.locked(),
	.testupout(),
	.testdownout(),
	.sbdout(),
	.clk(\u_audio_dac_p1_altpll|pll_CLK_bus ));
// synopsys translate_off
defparam \u_audio_dac_p1_altpll|pll .bandwidth = 0;
defparam \u_audio_dac_p1_altpll|pll .bandwidth_type = "low";
defparam \u_audio_dac_p1_altpll|pll .c0_high = 15;
defparam \u_audio_dac_p1_altpll|pll .c0_initial = 1;
defparam \u_audio_dac_p1_altpll|pll .c0_low = 15;
defparam \u_audio_dac_p1_altpll|pll .c0_mode = "even";
defparam \u_audio_dac_p1_altpll|pll .c0_ph = 0;
defparam \u_audio_dac_p1_altpll|pll .c1_mode = "bypass";
defparam \u_audio_dac_p1_altpll|pll .c1_ph = 0;
defparam \u_audio_dac_p1_altpll|pll .c2_mode = "bypass";
defparam \u_audio_dac_p1_altpll|pll .c2_ph = 0;
defparam \u_audio_dac_p1_altpll|pll .charge_pump_current = 80;
defparam \u_audio_dac_p1_altpll|pll .clk0_duty_cycle = 50;
defparam \u_audio_dac_p1_altpll|pll .clk0_phase_shift = "0";
defparam \u_audio_dac_p1_altpll|pll .clk1_counter = "c0";
defparam \u_audio_dac_p1_altpll|pll .clk1_divide_by = 3;
defparam \u_audio_dac_p1_altpll|pll .clk1_duty_cycle = 50;
defparam \u_audio_dac_p1_altpll|pll .clk1_multiply_by = 2;
defparam \u_audio_dac_p1_altpll|pll .clk1_phase_shift = "0";
defparam \u_audio_dac_p1_altpll|pll .clk2_duty_cycle = 50;
defparam \u_audio_dac_p1_altpll|pll .clk2_phase_shift = "0";
defparam \u_audio_dac_p1_altpll|pll .compensate_clock = "clk1";
defparam \u_audio_dac_p1_altpll|pll .gate_lock_counter = 0;
defparam \u_audio_dac_p1_altpll|pll .gate_lock_signal = "no";
defparam \u_audio_dac_p1_altpll|pll .inclk0_input_frequency = 37037;
defparam \u_audio_dac_p1_altpll|pll .inclk1_input_frequency = 37037;
defparam \u_audio_dac_p1_altpll|pll .invalid_lock_multiplier = 5;
defparam \u_audio_dac_p1_altpll|pll .loop_filter_c = 3;
defparam \u_audio_dac_p1_altpll|pll .loop_filter_r = " 2.500000";
defparam \u_audio_dac_p1_altpll|pll .m = 20;
defparam \u_audio_dac_p1_altpll|pll .m_initial = 1;
defparam \u_audio_dac_p1_altpll|pll .m_ph = 0;
defparam \u_audio_dac_p1_altpll|pll .n = 1;
defparam \u_audio_dac_p1_altpll|pll .operation_mode = "normal";
defparam \u_audio_dac_p1_altpll|pll .pfd_max = 100000;
defparam \u_audio_dac_p1_altpll|pll .pfd_min = 2484;
defparam \u_audio_dac_p1_altpll|pll .pll_compensation_delay = 5840;
defparam \u_audio_dac_p1_altpll|pll .self_reset_on_gated_loss_lock = "off";
defparam \u_audio_dac_p1_altpll|pll .sim_gate_lock_device_behavior = "off";
defparam \u_audio_dac_p1_altpll|pll .simulation_type = "timing";
defparam \u_audio_dac_p1_altpll|pll .valid_lock_multiplier = 1;
defparam \u_audio_dac_p1_altpll|pll .vco_center = 1333;
defparam \u_audio_dac_p1_altpll|pll .vco_max = 2000;
defparam \u_audio_dac_p1_altpll|pll .vco_min = 1000;
// synopsys translate_on

// Location: CLKCTRL_G11
cycloneii_clkctrl \u_audio_dac_p1_altpll|_clk1~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\u_audio_dac_p1_altpll|_clk1 }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ));
// synopsys translate_off
defparam \u_audio_dac_p1_altpll|_clk1~clkctrl .clock_type = "global clock";
defparam \u_audio_dac_p1_altpll|_clk1~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X14_Y8_N28
cycloneii_lcell_comb ix51811z52923(
// Equation(s):
// NOT_bit_position_0_ = !bit_position_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(bit_position_0_),
	.datad(vcc),
	.cin(gnd),
	.combout(NOT_bit_position_0_),
	.cout());
// synopsys translate_off
defparam ix51811z52923.lut_mask = 16'h0F0F;
defparam ix51811z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X14_Y8_N29
cycloneii_lcell_ff modgen_counter_bit_position_reg_q_0_(
	.clk(\aud_bclk_dup0~clkctrl_outclk ),
	.datain(NOT_bit_position_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(bit_position_0_));

// Location: LCCOMB_X14_Y8_N2
cycloneii_lcell_comb ix50814z52923(
// Equation(s):
// nx50814z1 = bit_position_1_ $ (bit_position_0_)

	.dataa(vcc),
	.datab(vcc),
	.datac(bit_position_1_),
	.datad(bit_position_0_),
	.cin(gnd),
	.combout(nx50814z1),
	.cout());
// synopsys translate_off
defparam ix50814z52923.lut_mask = 16'h0FF0;
defparam ix50814z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X14_Y8_N3
cycloneii_lcell_ff modgen_counter_bit_position_reg_q_1_(
	.clk(\aud_bclk_dup0~clkctrl_outclk ),
	.datain(nx50814z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(bit_position_1_));

// Location: LCCOMB_X14_Y8_N14
cycloneii_lcell_comb ix49817z52923(
// Equation(s):
// nx49817z1 = bit_position_2_ $ (((bit_position_0_ & bit_position_1_)))

	.dataa(vcc),
	.datab(bit_position_0_),
	.datac(bit_position_2_),
	.datad(bit_position_1_),
	.cin(gnd),
	.combout(nx49817z1),
	.cout());
// synopsys translate_off
defparam ix49817z52923.lut_mask = 16'h3CF0;
defparam ix49817z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X14_Y8_N15
cycloneii_lcell_ff modgen_counter_bit_position_reg_q_2_(
	.clk(\aud_bclk_dup0~clkctrl_outclk ),
	.datain(nx49817z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(bit_position_2_));

// Location: LCCOMB_X14_Y8_N16
cycloneii_lcell_comb ix48820z52923(
// Equation(s):
// nx48820z1 = bit_position_3_ $ (((bit_position_0_ & (bit_position_2_ & bit_position_1_))))

	.dataa(bit_position_0_),
	.datab(bit_position_2_),
	.datac(bit_position_3_),
	.datad(bit_position_1_),
	.cin(gnd),
	.combout(nx48820z1),
	.cout());
// synopsys translate_off
defparam ix48820z52923.lut_mask = 16'h78F0;
defparam ix48820z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X14_Y8_N17
cycloneii_lcell_ff modgen_counter_bit_position_reg_q_3_(
	.clk(\aud_bclk_dup0~clkctrl_outclk ),
	.datain(nx48820z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(bit_position_3_));

// Location: LCCOMB_X30_Y25_N8
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52932 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1  = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17  $ (VCC)
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16  = CARRY(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 )

	.dataa(vcc),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52932 .lut_mask = 16'h33CC;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io key_ibuf_0_(
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
	.combout(\key~combout [0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(key[0]));
// synopsys translate_off
defparam key_ibuf_0_.input_async_reset = "none";
defparam key_ibuf_0_.input_power_up = "low";
defparam key_ibuf_0_.input_register_mode = "none";
defparam key_ibuf_0_.input_sync_reset = "none";
defparam key_ibuf_0_.oe_async_reset = "none";
defparam key_ibuf_0_.oe_power_up = "low";
defparam key_ibuf_0_.oe_register_mode = "none";
defparam key_ibuf_0_.oe_sync_reset = "none";
defparam key_ibuf_0_.operation_mode = "input";
defparam key_ibuf_0_.output_async_reset = "none";
defparam key_ibuf_0_.output_power_up = "low";
defparam key_ibuf_0_.output_register_mode = "none";
defparam key_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X31_Y25_N30
cycloneii_lcell_comb ix48238z52923(
// Equation(s):
// nx48238z1 = (!\key~combout [0]) # (!nx50205z2)

	.dataa(vcc),
	.datab(nx50205z2),
	.datac(vcc),
	.datad(\key~combout [0]),
	.cin(gnd),
	.combout(nx48238z1),
	.cout());
// synopsys translate_off
defparam ix48238z52923.lut_mask = 16'h33FF;
defparam ix48238z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y25_N9
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_0_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 ));

// Location: LCCOMB_X30_Y25_N14
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52929 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11  & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11  & 
// ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ) # (GND)))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10  = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ))

	.dataa(vcc),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52929 .lut_mask = 16'h3C3F;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y25_N15
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_3_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ));

// Location: LCCOMB_X30_Y25_N18
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52927 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7  & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7  & 
// ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ) # (GND)))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6  = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ))

	.dataa(vcc),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52927 .lut_mask = 16'h3C3F;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y25_N19
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_5_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ));

// Location: LCCOMB_X30_Y25_N20
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52926 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5  & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6  $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5  & 
// (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6  & VCC))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4  = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5  & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6 ))

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52926 .lut_mask = 16'hA50A;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y25_N22
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52925 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3  & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3  & 
// ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ) # (GND)))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2  = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ))

	.dataa(vcc),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52925 .lut_mask = 16'h3C3F;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y25_N23
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_7_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ));

// Location: LCFF_X30_Y25_N21
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_6_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 ));

// Location: LCCOMB_X30_Y25_N24
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52923 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1  = \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1  $ (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2 )

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1 ),
	.cout());
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52923 .lut_mask = 16'hA5A5;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y25_N25
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_8_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1 ));

// Location: LCCOMB_X31_Y25_N0
cycloneii_lcell_comb ix50205z52924(
// Equation(s):
// nx50205z2 = (!\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1  & (((nx50205z3 & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 )))

	.dataa(nx50205z3),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ),
	.datac(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 ),
	.datad(\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1 ),
	.cin(gnd),
	.combout(nx50205z2),
	.cout());
// synopsys translate_off
defparam ix50205z52924.lut_mask = 16'h003B;
defparam ix50205z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y25_N2
cycloneii_lcell_comb ix50205z52923(
// Equation(s):
// nx50205z1 = aud_adclrck_dup0 $ (!nx50205z2)

	.dataa(vcc),
	.datab(vcc),
	.datac(aud_adclrck_dup0),
	.datad(nx50205z2),
	.cin(gnd),
	.combout(nx50205z1),
	.cout());
// synopsys translate_off
defparam ix50205z52923.lut_mask = 16'hF00F;
defparam ix50205z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y25_N3
cycloneii_lcell_ff u_audio_dac_reg_lrck_1x(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx50205z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\key~combout [0]),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(aud_adclrck_dup0));

// Location: CLKCTRL_G10
cycloneii_clkctrl \aud_adclrck_dup0~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,aud_adclrck_dup0}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\aud_adclrck_dup0~clkctrl_outclk ));
// synopsys translate_off
defparam \aud_adclrck_dup0~clkctrl .clock_type = "global clock";
defparam \aud_adclrck_dup0~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N0
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52932 (
// Equation(s):
// \u_sine_address_add9_0i1|nx37973z1  = (\sw~combout [0] & ((u_sine_address_0_) # (GND))) # (!\sw~combout [0] & (u_sine_address_0_ $ (VCC)))
// \u_sine_address_add9_0i1|nx45949z23  = CARRY((\sw~combout [0]) # (u_sine_address_0_))

	.dataa(\sw~combout [0]),
	.datab(u_sine_address_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_sine_address_add9_0i1|nx37973z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z23 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52932 .lut_mask = 16'h99EE;
defparam \u_sine_address_add9_0i1|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X12_Y8_N1
cycloneii_lcell_ff u_sine_reg_address_0_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_0_));

// Location: LCCOMB_X12_Y8_N2
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52931 (
// Equation(s):
// \u_sine_address_add9_0i1|nx38970z1  = (\sw~combout [1] & ((u_sine_address_1_ & (\u_sine_address_add9_0i1|nx45949z23  & VCC)) # (!u_sine_address_1_ & (!\u_sine_address_add9_0i1|nx45949z23 )))) # (!\sw~combout [1] & ((u_sine_address_1_ & 
// (!\u_sine_address_add9_0i1|nx45949z23 )) # (!u_sine_address_1_ & ((\u_sine_address_add9_0i1|nx45949z23 ) # (GND)))))
// \u_sine_address_add9_0i1|nx45949z20  = CARRY((\sw~combout [1] & (!u_sine_address_1_ & !\u_sine_address_add9_0i1|nx45949z23 )) # (!\sw~combout [1] & ((!\u_sine_address_add9_0i1|nx45949z23 ) # (!u_sine_address_1_))))

	.dataa(\sw~combout [1]),
	.datab(u_sine_address_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z23 ),
	.combout(\u_sine_address_add9_0i1|nx38970z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z20 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_sine_address_add9_0i1|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X12_Y8_N3
cycloneii_lcell_ff u_sine_reg_address_1_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_1_));

// Location: LCCOMB_X12_Y8_N4
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52930 (
// Equation(s):
// \u_sine_address_add9_0i1|nx39967z1  = ((\sw~combout [2] $ (u_sine_address_2_ $ (!\u_sine_address_add9_0i1|nx45949z20 )))) # (GND)
// \u_sine_address_add9_0i1|nx45949z17  = CARRY((\sw~combout [2] & ((u_sine_address_2_) # (!\u_sine_address_add9_0i1|nx45949z20 ))) # (!\sw~combout [2] & (u_sine_address_2_ & !\u_sine_address_add9_0i1|nx45949z20 )))

	.dataa(\sw~combout [2]),
	.datab(u_sine_address_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z20 ),
	.combout(\u_sine_address_add9_0i1|nx39967z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z17 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_sine_address_add9_0i1|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X12_Y8_N5
cycloneii_lcell_ff u_sine_reg_address_2_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_2_));

// Location: LCCOMB_X12_Y8_N6
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52929 (
// Equation(s):
// \u_sine_address_add9_0i1|nx40964z1  = (u_sine_address_3_ & ((\sw~combout [3] & (\u_sine_address_add9_0i1|nx45949z17  & VCC)) # (!\sw~combout [3] & (!\u_sine_address_add9_0i1|nx45949z17 )))) # (!u_sine_address_3_ & ((\sw~combout [3] & 
// (!\u_sine_address_add9_0i1|nx45949z17 )) # (!\sw~combout [3] & ((\u_sine_address_add9_0i1|nx45949z17 ) # (GND)))))
// \u_sine_address_add9_0i1|nx45949z14  = CARRY((u_sine_address_3_ & (!\sw~combout [3] & !\u_sine_address_add9_0i1|nx45949z17 )) # (!u_sine_address_3_ & ((!\u_sine_address_add9_0i1|nx45949z17 ) # (!\sw~combout [3]))))

	.dataa(u_sine_address_3_),
	.datab(\sw~combout [3]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z17 ),
	.combout(\u_sine_address_add9_0i1|nx40964z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z14 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_sine_address_add9_0i1|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X12_Y8_N9
cycloneii_lcell_ff u_sine_reg_address_4_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_4_));

// Location: LCCOMB_X12_Y8_N8
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52928 (
// Equation(s):
// \u_sine_address_add9_0i1|nx41961z1  = ((\sw~combout [4] $ (u_sine_address_4_ $ (!\u_sine_address_add9_0i1|nx45949z14 )))) # (GND)
// \u_sine_address_add9_0i1|nx45949z11  = CARRY((\sw~combout [4] & ((u_sine_address_4_) # (!\u_sine_address_add9_0i1|nx45949z14 ))) # (!\sw~combout [4] & (u_sine_address_4_ & !\u_sine_address_add9_0i1|nx45949z14 )))

	.dataa(\sw~combout [4]),
	.datab(u_sine_address_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z14 ),
	.combout(\u_sine_address_add9_0i1|nx41961z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z11 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_sine_address_add9_0i1|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N10
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52927 (
// Equation(s):
// \u_sine_address_add9_0i1|nx42958z1  = (u_sine_address_5_ & ((\sw~combout [5] & (\u_sine_address_add9_0i1|nx45949z11  & VCC)) # (!\sw~combout [5] & (!\u_sine_address_add9_0i1|nx45949z11 )))) # (!u_sine_address_5_ & ((\sw~combout [5] & 
// (!\u_sine_address_add9_0i1|nx45949z11 )) # (!\sw~combout [5] & ((\u_sine_address_add9_0i1|nx45949z11 ) # (GND)))))
// \u_sine_address_add9_0i1|nx45949z8  = CARRY((u_sine_address_5_ & (!\sw~combout [5] & !\u_sine_address_add9_0i1|nx45949z11 )) # (!u_sine_address_5_ & ((!\u_sine_address_add9_0i1|nx45949z11 ) # (!\sw~combout [5]))))

	.dataa(u_sine_address_5_),
	.datab(\sw~combout [5]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z11 ),
	.combout(\u_sine_address_add9_0i1|nx42958z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z8 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_sine_address_add9_0i1|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N12
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52926 (
// Equation(s):
// \u_sine_address_add9_0i1|nx43955z1  = ((u_sine_address_6_ $ (\sw~combout [6] $ (!\u_sine_address_add9_0i1|nx45949z8 )))) # (GND)
// \u_sine_address_add9_0i1|nx45949z5  = CARRY((u_sine_address_6_ & ((\sw~combout [6]) # (!\u_sine_address_add9_0i1|nx45949z8 ))) # (!u_sine_address_6_ & (\sw~combout [6] & !\u_sine_address_add9_0i1|nx45949z8 )))

	.dataa(u_sine_address_6_),
	.datab(\sw~combout [6]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z8 ),
	.combout(\u_sine_address_add9_0i1|nx43955z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z5 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_sine_address_add9_0i1|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X12_Y8_N15
cycloneii_lcell_ff u_sine_reg_address_7_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_7_));

// Location: LCCOMB_X12_Y8_N14
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52925 (
// Equation(s):
// \u_sine_address_add9_0i1|nx44952z1  = (u_sine_address_7_ & (!\u_sine_address_add9_0i1|nx45949z5 )) # (!u_sine_address_7_ & ((\u_sine_address_add9_0i1|nx45949z5 ) # (GND)))
// \u_sine_address_add9_0i1|nx45949z3  = CARRY((!\u_sine_address_add9_0i1|nx45949z5 ) # (!u_sine_address_7_))

	.dataa(vcc),
	.datab(u_sine_address_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z5 ),
	.combout(\u_sine_address_add9_0i1|nx44952z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z3 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52925 .lut_mask = 16'h3C3F;
defparam \u_sine_address_add9_0i1|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X12_Y8_N16
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52923 (
// Equation(s):
// \u_sine_address_add9_0i1|nx45949z1  = u_sine_address_8_ $ (!\u_sine_address_add9_0i1|nx45949z3 )

	.dataa(u_sine_address_8_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z3 ),
	.combout(\u_sine_address_add9_0i1|nx45949z1 ),
	.cout());
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52923 .lut_mask = 16'hA5A5;
defparam \u_sine_address_add9_0i1|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X14_Y8_N26
cycloneii_lcell_comb ix24999z52928(
// Equation(s):
// nx24999z5 = (bit_position_0_ & (bit_position_1_ & ((audio_out_0_)))) # (!bit_position_0_ & (((audio_out_1_)) # (!bit_position_1_)))

	.dataa(bit_position_0_),
	.datab(bit_position_1_),
	.datac(audio_out_1_),
	.datad(audio_out_0_),
	.cin(gnd),
	.combout(nx24999z5),
	.cout());
// synopsys translate_off
defparam ix24999z52928.lut_mask = 16'hD951;
defparam ix24999z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y8_N12
cycloneii_lcell_comb ix24999z52927(
// Equation(s):
// nx24999z4 = (bit_position_1_ & (((nx24999z5)))) # (!bit_position_1_ & ((nx24999z5 & (audio_out_3_)) # (!nx24999z5 & ((audio_out_2_)))))

	.dataa(audio_out_3_),
	.datab(bit_position_1_),
	.datac(audio_out_2_),
	.datad(nx24999z5),
	.cin(gnd),
	.combout(nx24999z4),
	.cout());
// synopsys translate_off
defparam ix24999z52927.lut_mask = 16'hEE30;
defparam ix24999z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y8_N8
cycloneii_lcell_comb ix24999z52924(
// Equation(s):
// nx24999z1 = (bit_position_3_ & ((bit_position_2_ & ((nx24999z4))) # (!bit_position_2_ & (nx24999z2)))) # (!bit_position_3_ & (((!bit_position_2_))))

	.dataa(nx24999z2),
	.datab(nx24999z4),
	.datac(bit_position_3_),
	.datad(bit_position_2_),
	.cin(gnd),
	.combout(nx24999z1),
	.cout());
// synopsys translate_off
defparam ix24999z52924.lut_mask = 16'hC0AF;
defparam ix24999z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y8_N4
cycloneii_lcell_comb ix24999z52929(
// Equation(s):
// nx24999z6 = (nx24999z7 & ((audio_out_12_) # ((bit_position_1_)))) # (!nx24999z7 & (((audio_out_10_ & !bit_position_1_))))

	.dataa(nx24999z7),
	.datab(audio_out_12_),
	.datac(audio_out_10_),
	.datad(bit_position_1_),
	.cin(gnd),
	.combout(nx24999z6),
	.cout());
// synopsys translate_off
defparam ix24999z52929.lut_mask = 16'hAAD8;
defparam ix24999z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y8_N22
cycloneii_lcell_comb ix24999z52923(
// Equation(s):
// aud_dacdat_dup0 = (bit_position_3_ & (((nx24999z1)))) # (!bit_position_3_ & ((nx24999z1 & (audio_out_12_)) # (!nx24999z1 & ((nx24999z6)))))

	.dataa(bit_position_3_),
	.datab(audio_out_12_),
	.datac(nx24999z1),
	.datad(nx24999z6),
	.cin(gnd),
	.combout(aud_dacdat_dup0),
	.cout());
// synopsys translate_off
defparam ix24999z52923.lut_mask = 16'hE5E0;
defparam ix24999z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N10
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52929 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1  = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  $ (VCC)
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10  = CARRY(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52929 .lut_mask = 16'h55AA;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N12
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52928 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & 
// ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ) # (GND)))
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8  = CARRY((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52928 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N14
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52927 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8  $ (GND))) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8  & VCC))
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6  = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52927 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y7_N0
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52939 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx51271z1  = \u_i2c_av_config|modgen_counter_cont|q_0_  $ (VCC)
// \u_i2c_av_config|modgen_counter_cont|nx22081z16  = CARRY(\u_i2c_av_config|modgen_counter_cont|q_0_ )

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx51271z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z16 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52939 .lut_mask = 16'h33CC;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y7_N20
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52929 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx17096z1  = (\u_i2c_av_config|modgen_counter_cont|q_10_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z7  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_10_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z7  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z6  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_10_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z7 ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_10_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z7 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx17096z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z6 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52929 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N21
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_10_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx17096z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_10_ ));

// Location: LCCOMB_X37_Y7_N16
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52931 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx59247z1  = (\u_i2c_av_config|modgen_counter_cont|q_8_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z9  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_8_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z9  & 
// VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z8  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_8_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z9 ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z9 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx59247z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z8 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52931 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N17
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_8_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_8_ ));

// Location: LCCOMB_X38_Y7_N24
cycloneii_lcell_comb \u_i2c_av_config|ix35560z52925 (
// Equation(s):
// \u_i2c_av_config|nx35560z3  = (\u_i2c_av_config|modgen_counter_cont|q_11_  & (\u_i2c_av_config|modgen_counter_cont|q_9_  & (\u_i2c_av_config|modgen_counter_cont|q_10_  & \u_i2c_av_config|modgen_counter_cont|q_8_ )))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_11_ ),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_9_ ),
	.datac(\u_i2c_av_config|modgen_counter_cont|q_10_ ),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_8_ ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx35560z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix35560z52925 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix35560z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y7_N6
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52936 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx54262z1  = (\u_i2c_av_config|modgen_counter_cont|q_3_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z14 )) # (!\u_i2c_av_config|modgen_counter_cont|q_3_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z14 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z13  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z14 ) # (!\u_i2c_av_config|modgen_counter_cont|q_3_ ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z14 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx54262z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z13 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52936 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N7
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_3_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_3_ ));

// Location: LCCOMB_X38_Y7_N12
cycloneii_lcell_comb \u_i2c_av_config|ix17807z52924 (
// Equation(s):
// \u_i2c_av_config|nx17807z2  = (\u_i2c_av_config|modgen_counter_cont|q_0_  & (\u_i2c_av_config|modgen_counter_cont|q_3_  & (\u_i2c_av_config|modgen_counter_cont|q_2_  & \u_i2c_av_config|modgen_counter_cont|q_1_ )))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_0_ ),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_3_ ),
	.datac(\u_i2c_av_config|modgen_counter_cont|q_2_ ),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_1_ ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx17807z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix17807z52924 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix17807z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y7_N4
cycloneii_lcell_comb \u_i2c_av_config|ix35560z52923 (
// Equation(s):
// \u_i2c_av_config|nx35560z1  = (((!\u_i2c_av_config|nx17807z2 ) # (!\u_i2c_av_config|nx35560z3 )) # (!\u_i2c_av_config|nx35560z4 )) # (!\u_i2c_av_config|nx35560z2 )

	.dataa(\u_i2c_av_config|nx35560z2 ),
	.datab(\u_i2c_av_config|nx35560z4 ),
	.datac(\u_i2c_av_config|nx35560z3 ),
	.datad(\u_i2c_av_config|nx17807z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx35560z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix35560z52923 .lut_mask = 16'h7FFF;
defparam \u_i2c_av_config|ix35560z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y7_N1
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_0_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_0_ ));

// Location: LCCOMB_X37_Y7_N2
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52938 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx52268z1  = (\u_i2c_av_config|modgen_counter_cont|q_1_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z16 )) # (!\u_i2c_av_config|modgen_counter_cont|q_1_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z16 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z15  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z16 ) # (!\u_i2c_av_config|modgen_counter_cont|q_1_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z16 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx52268z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z15 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52938 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N3
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_1_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_1_ ));

// Location: LCCOMB_X37_Y7_N4
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52937 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx53265z1  = (\u_i2c_av_config|modgen_counter_cont|q_2_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z15  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_2_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z15  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z14  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_2_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z15 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z15 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx53265z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z14 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52937 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N5
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_2_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_2_ ));

// Location: LCCOMB_X37_Y7_N8
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52935 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx55259z1  = (\u_i2c_av_config|modgen_counter_cont|q_4_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z13  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_4_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z13  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z12  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_4_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z13 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z13 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx55259z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z12 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52935 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N9
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_4_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_4_ ));

// Location: LCCOMB_X37_Y7_N14
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52932 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx58250z1  = (\u_i2c_av_config|modgen_counter_cont|q_7_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z10 )) # (!\u_i2c_av_config|modgen_counter_cont|q_7_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z10 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z9  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z10 ) # (!\u_i2c_av_config|modgen_counter_cont|q_7_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z10 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx58250z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z9 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52932 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N15
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_7_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_7_ ));

// Location: LCCOMB_X37_Y7_N18
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52930 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx60244z1  = (\u_i2c_av_config|modgen_counter_cont|q_9_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z8 )) # (!\u_i2c_av_config|modgen_counter_cont|q_9_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z8 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z7  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z8 ) # (!\u_i2c_av_config|modgen_counter_cont|q_9_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z8 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx60244z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z7 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52930 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N19
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_9_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_9_ ));

// Location: LCCOMB_X37_Y7_N22
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52928 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx18093z1  = (\u_i2c_av_config|modgen_counter_cont|q_11_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z6 )) # (!\u_i2c_av_config|modgen_counter_cont|q_11_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z6 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z5  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z6 ) # (!\u_i2c_av_config|modgen_counter_cont|q_11_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z6 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx18093z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z5 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52928 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N23
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_11_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx18093z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_11_ ));

// Location: LCCOMB_X37_Y7_N24
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52927 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx19090z1  = (\u_i2c_av_config|modgen_counter_cont|q_12_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z5  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_12_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z5  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z4  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_12_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z5 ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_12_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z5 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx19090z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z4 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52927 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y7_N26
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52926 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx20087z1  = (\u_i2c_av_config|modgen_counter_cont|q_13_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z4 )) # (!\u_i2c_av_config|modgen_counter_cont|q_13_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z4 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z3  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z4 ) # (!\u_i2c_av_config|modgen_counter_cont|q_13_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_13_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z4 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx20087z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z3 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52926 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N27
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_13_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx20087z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_13_ ));

// Location: LCCOMB_X37_Y7_N28
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52925 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx21084z1  = (\u_i2c_av_config|modgen_counter_cont|q_14_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z3  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_14_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z3  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z2  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_14_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z3 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_14_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z3 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx21084z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z2 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52925 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N29
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_14_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx21084z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_14_ ));

// Location: LCCOMB_X37_Y7_N30
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52923 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx22081z1  = \u_i2c_av_config|modgen_counter_cont|nx22081z2  $ (\u_i2c_av_config|modgen_counter_cont|q_15_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_15_ ),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z2 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx22081z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52923 .lut_mask = 16'h0FF0;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y7_N31
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_15_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx22081z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_15_ ));

// Location: LCFF_X37_Y7_N25
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_12_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx19090z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_12_ ));

// Location: LCCOMB_X38_Y7_N2
cycloneii_lcell_comb \u_i2c_av_config|ix35560z52926 (
// Equation(s):
// \u_i2c_av_config|nx35560z4  = (\u_i2c_av_config|modgen_counter_cont|q_14_  & (\u_i2c_av_config|modgen_counter_cont|q_13_  & (\u_i2c_av_config|modgen_counter_cont|q_15_  & \u_i2c_av_config|modgen_counter_cont|q_12_ )))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_14_ ),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_13_ ),
	.datac(\u_i2c_av_config|modgen_counter_cont|q_15_ ),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_12_ ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx35560z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix35560z52926 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix35560z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y7_N18
cycloneii_lcell_comb \u_i2c_av_config|ix17807z52923 (
// Equation(s):
// \u_i2c_av_config|nx17807z1  = (\u_i2c_av_config|nx35560z2  & (\u_i2c_av_config|nx35560z4  & (\u_i2c_av_config|nx35560z3  & \u_i2c_av_config|nx17807z2 )))

	.dataa(\u_i2c_av_config|nx35560z2 ),
	.datab(\u_i2c_av_config|nx35560z4 ),
	.datac(\u_i2c_av_config|nx35560z3 ),
	.datad(\u_i2c_av_config|nx17807z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx17807z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix17807z52923 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix17807z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y7_N19
cycloneii_lcell_ff \u_i2c_av_config|reg_reset_n (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|nx17807z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|reset_n ));

// Location: LCCOMB_X42_Y14_N2
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52936 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1  = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25  $ (VCC)
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24  = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25 )

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52936 .lut_mask = 16'h33CC;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N4
cycloneii_lcell_comb \u_i2c_av_config|ix23875z52923 (
// Equation(s):
// \u_i2c_av_config|nx23875z1  = (\u_i2c_av_config|nx2692z2 ) # (!\u_i2c_av_config|reset_n )

	.dataa(vcc),
	.datab(\u_i2c_av_config|reset_n ),
	.datac(vcc),
	.datad(\u_i2c_av_config|nx2692z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx23875z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix23875z52923 .lut_mask = 16'hFF33;
defparam \u_i2c_av_config|ix23875z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y14_N3
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_0_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25 ));

// Location: LCCOMB_X42_Y14_N4
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52935 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52935 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y14_N5
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_1_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23 ));

// Location: LCCOMB_X42_Y14_N6
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52934 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52934 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y14_N8
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52933 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52933 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y14_N9
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_3_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ));

// Location: LCCOMB_X42_Y14_N10
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52932 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52932 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y14_N12
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52931 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52931 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y14_N14
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52930 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52930 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y14_N15
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_6_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13 ));

// Location: LCCOMB_X42_Y14_N18
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52928 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52928 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y14_N19
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_8_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9 ));

// Location: LCCOMB_X42_Y14_N20
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52927 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52927 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y14_N21
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_9_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ));

// Location: LCCOMB_X42_Y14_N22
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52926 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52926 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y14_N23
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_10_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 ));

// Location: LCFF_X42_Y14_N25
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_11_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ));

// Location: LCCOMB_X41_Y14_N28
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52927 (
// Equation(s):
// \u_i2c_av_config|nx2692z5  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3  & ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ) # (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 )))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ),
	.datac(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 ),
	.datad(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z5 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52927 .lut_mask = 16'hFC00;
defparam \u_i2c_av_config|ix2692z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y14_N11
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_4_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ));

// Location: LCFF_X42_Y14_N13
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_5_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ));

// Location: LCFF_X42_Y14_N7
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_2_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 ));

// Location: LCCOMB_X41_Y14_N8
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52925 (
// Equation(s):
// \u_i2c_av_config|nx2692z3  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ) # 
// (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 )))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ),
	.datac(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ),
	.datad(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52925 .lut_mask = 16'hFFFE;
defparam \u_i2c_av_config|ix2692z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N2
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52926 (
// Equation(s):
// \u_i2c_av_config|nx2692z4  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13  & 
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 )))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9 ),
	.datac(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13 ),
	.datad(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52926 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix2692z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N6
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52924 (
// Equation(s):
// \u_i2c_av_config|nx2692z2  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ) # ((\u_i2c_av_config|nx2692z5 ) # ((\u_i2c_av_config|nx2692z3  & \u_i2c_av_config|nx2692z4 )))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ),
	.datab(\u_i2c_av_config|nx2692z5 ),
	.datac(\u_i2c_av_config|nx2692z3 ),
	.datad(\u_i2c_av_config|nx2692z4 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52924 .lut_mask = 16'hFEEE;
defparam \u_i2c_av_config|ix2692z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y7_N0
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52923 (
// Equation(s):
// \u_i2c_av_config|nx2692z1  = \u_i2c_av_config|m_i2c_ctrl_clk  $ (\u_i2c_av_config|nx2692z2 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(\u_i2c_av_config|nx2692z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52923 .lut_mask = 16'h0FF0;
defparam \u_i2c_av_config|ix2692z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y7_N1
cycloneii_lcell_ff \u_i2c_av_config|reg_m_i2c_ctrl_clk (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|nx2692z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\u_i2c_av_config|reset_n ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|m_i2c_ctrl_clk ));

// Location: LCCOMB_X41_Y14_N0
cycloneii_lcell_comb \u_i2c_av_config|ix51161z52923 (
// Equation(s):
// \u_i2c_av_config|nx51161z1  = (\u_i2c_av_config|reset_n  & (\u_i2c_av_config|m_i2c_ctrl_clk  $ (\u_i2c_av_config|nx2692z2 )))

	.dataa(vcc),
	.datab(\u_i2c_av_config|reset_n ),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(\u_i2c_av_config|nx2692z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx51161z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix51161z52923 .lut_mask = 16'h0CC0;
defparam \u_i2c_av_config|ix51161z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N26
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix55259z52924 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3  = (!\u_i2c_av_config|m_i2c_ctrl_clk  & (\u_i2c_av_config|nx51161z1  & ((\u_i2c_av_config|u0|nx7286z1 ) # (!\u_i2c_av_config|reset_n ))))

	.dataa(\u_i2c_av_config|u0|nx7286z1 ),
	.datab(\u_i2c_av_config|reset_n ),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(\u_i2c_av_config|nx51161z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix55259z52924 .lut_mask = 16'h0B00;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix55259z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y14_N15
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_2_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ));

// Location: LCCOMB_X41_Y14_N16
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52926 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & 
// ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ) # (GND)))
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4  = CARRY((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52926 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y14_N17
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_3_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ));

// Location: LCFF_X41_Y14_N13
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_1_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ));

// Location: LCFF_X41_Y14_N11
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_0_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ));

// Location: LCCOMB_X37_Y14_N26
cycloneii_lcell_comb \u_i2c_av_config|u0|ix43379z52926 (
// Equation(s):
// \u_i2c_av_config|u0|nx43379z4  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx43379z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix43379z52926 .lut_mask = 16'hC000;
defparam \u_i2c_av_config|u0|ix43379z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N18
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52925 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4  $ (GND))) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4  & VCC))
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2  = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52925 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y14_N19
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_4_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ));

// Location: LCCOMB_X41_Y14_N20
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52923 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1  = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  $ (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2 )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52923 .lut_mask = 16'h5A5A;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X41_Y14_N21
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_5_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ));

// Location: LCCOMB_X37_Y14_N28
cycloneii_lcell_comb \u_i2c_av_config|u0|ix43379z52925 (
// Equation(s):
// \u_i2c_av_config|u0|nx43379z3  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ) # (!\u_i2c_av_config|u0|nx43379z4 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|nx43379z4 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx43379z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix43379z52925 .lut_mask = 16'h020A;
defparam \u_i2c_av_config|u0|ix43379z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y14_N8
cycloneii_lcell_comb \u_i2c_av_config|u0|ix43379z52924 (
// Equation(s):
// \u_i2c_av_config|u0|nx43379z2  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ) # 
// (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx43379z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix43379z52924 .lut_mask = 16'h0504;
defparam \u_i2c_av_config|u0|ix43379z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N24
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52923 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z1  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52923 .lut_mask = 16'h0F00;
defparam \u_i2c_av_config|u0|ix44942z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y14_N18
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52930 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z8  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z8 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52930 .lut_mask = 16'h33FF;
defparam \u_i2c_av_config|u0|ix44942z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N18
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52929 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z7  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 )

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z7 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52929 .lut_mask = 16'h33FF;
defparam \u_i2c_av_config|u0|ix44942z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N4
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52928 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z6  = ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & (!\u_i2c_av_config|u0|nx44942z8  & !\u_i2c_av_config|u0|nx44942z7 ))) # (!\u_i2c_av_config|reset_n )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datab(\u_i2c_av_config|u0|nx44942z8 ),
	.datac(\u_i2c_av_config|reset_n ),
	.datad(\u_i2c_av_config|u0|nx44942z7 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z6 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52928 .lut_mask = 16'h0F1F;
defparam \u_i2c_av_config|u0|ix44942z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y14_N16
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52926 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z4  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ) # (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52926 .lut_mask = 16'hFFF0;
defparam \u_i2c_av_config|u0|ix44942z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N30
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52925 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z3  = (\u_i2c_av_config|u0|nx44942z6 ) # ((!\u_i2c_av_config|u0|nx44942z5  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & !\u_i2c_av_config|u0|nx44942z4 )))

	.dataa(\u_i2c_av_config|u0|nx44942z5 ),
	.datab(\u_i2c_av_config|u0|nx44942z6 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datad(\u_i2c_av_config|u0|nx44942z4 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52925 .lut_mask = 16'hCCCD;
defparam \u_i2c_av_config|u0|ix44942z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N16
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52924 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z2  = (\u_i2c_av_config|u0|nx44942z3  & (!\u_i2c_av_config|m_i2c_ctrl_clk  & \u_i2c_av_config|nx51161z1 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|nx44942z3 ),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(\u_i2c_av_config|nx51161z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52924 .lut_mask = 16'h0C00;
defparam \u_i2c_av_config|u0|ix44942z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y14_N25
cycloneii_lcell_ff \u_i2c_av_config|u0|reg_sclk (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|nx44942z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\u_i2c_av_config|reset_n ),
	.sload(gnd),
	.ena(\u_i2c_av_config|u0|nx44942z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|nx43379z1 ));

// Location: LCCOMB_X37_Y14_N22
cycloneii_lcell_comb \u_i2c_av_config|u0|ix43379z52923 (
// Equation(s):
// \u_i2c_av_config|u0|p_i2c_sclk  = ((!\u_i2c_av_config|m_i2c_ctrl_clk  & ((\u_i2c_av_config|u0|nx43379z3 ) # (\u_i2c_av_config|u0|nx43379z2 )))) # (!\u_i2c_av_config|u0|nx43379z1 )

	.dataa(\u_i2c_av_config|u0|nx43379z3 ),
	.datab(\u_i2c_av_config|u0|nx43379z2 ),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(\u_i2c_av_config|u0|nx43379z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|p_i2c_sclk ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix43379z52923 .lut_mask = 16'h0EFF;
defparam \u_i2c_av_config|u0|ix43379z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: CLKCTRL_G9
cycloneii_clkctrl \clock_27~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\clock_27~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clock_27~clkctrl_outclk ));
// synopsys translate_off
defparam \clock_27~clkctrl .clock_type = "global clock";
defparam \clock_27~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N0
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52938 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z16  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z16 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52938 .lut_mask = 16'h0011;
defparam \u_i2c_av_config|u0|ix41315z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N20
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52937 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z15  = (\u_i2c_av_config|u0|nx41315z17 ) # ((\u_i2c_av_config|u0|nx41315z16  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )))

	.dataa(\u_i2c_av_config|u0|nx41315z17 ),
	.datab(\u_i2c_av_config|u0|nx41315z16 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z15 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52937 .lut_mask = 16'hAAAE;
defparam \u_i2c_av_config|u0|ix41315z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N26
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52934 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z12  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (!\u_i2c_av_config|u0|nx44942z7  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & !\u_i2c_av_config|u0|nx44942z4 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|nx44942z7 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datad(\u_i2c_av_config|u0|nx44942z4 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z12 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52934 .lut_mask = 16'h0010;
defparam \u_i2c_av_config|u0|ix41315z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N22
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52933 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z11  = (\u_i2c_av_config|u0|nx41315z13 ) # ((\u_i2c_av_config|u0|nx41315z15 ) # (\u_i2c_av_config|u0|nx41315z12 ))

	.dataa(\u_i2c_av_config|u0|nx41315z13 ),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|nx41315z15 ),
	.datad(\u_i2c_av_config|u0|nx41315z12 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z11 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52933 .lut_mask = 16'hFFFA;
defparam \u_i2c_av_config|u0|ix41315z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N2
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52928 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1  = (\u_i2c_av_config|u0|sdo_5n5s2f1_0_  & ((GND) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ))) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_0_  & 
// (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  $ (GND)))
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11  = CARRY((\u_i2c_av_config|u0|sdo_5n5s2f1_0_ ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ))

	.dataa(\u_i2c_av_config|u0|sdo_5n5s2f1_0_ ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ),
	.cout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52928 .lut_mask = 16'h66BB;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N30
cycloneii_lcell_comb \u_i2c_av_config|u0|ix22137z52923 (
// Equation(s):
// \u_i2c_av_config|u0|nx22137z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ) # 
// (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx22137z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix22137z52923 .lut_mask = 16'hFEAA;
defparam \u_i2c_av_config|u0|ix22137z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N4
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52927 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1  = (\u_i2c_av_config|u0|sdo_5n5s2f1_1_  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  
// & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11  & VCC)))) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_1_  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & ((\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ) # (GND))) # 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ))))
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8  = CARRY((\u_i2c_av_config|u0|sdo_5n5s2f1_1_  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 )) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_1_  & 
// ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ))))

	.dataa(\u_i2c_av_config|u0|sdo_5n5s2f1_1_ ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ),
	.cout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52927 .lut_mask = 16'h694D;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N6
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52926 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1  = ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  $ (\u_i2c_av_config|u0|nx22137z1  $ (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 )))) # (GND)
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5  = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (\u_i2c_av_config|u0|nx22137z1  & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & 
// ((\u_i2c_av_config|u0|nx22137z1 ) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|nx22137z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 ),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ),
	.cout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52926 .lut_mask = 16'h964D;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N18
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52932 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z10  = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1  & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1  $ (\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 )))

	.dataa(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ),
	.datab(\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z10 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52932 .lut_mask = 16'h0066;
defparam \u_i2c_av_config|u0|ix41315z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y14_N22
cycloneii_lcell_comb \u_i2c_av_config|u0|ix7286z52924 (
// Equation(s):
// \u_i2c_av_config|u0|nx7286z2  = (((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )) # 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx7286z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix7286z52924 .lut_mask = 16'h7FFF;
defparam \u_i2c_av_config|u0|ix7286z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y14_N12
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52926 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z4  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ) # (!\u_i2c_av_config|u0|nx7286z2 )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|nx7286z2 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52926 .lut_mask = 16'hAFAF;
defparam \u_i2c_av_config|u0|ix41315z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N0
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52927 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z5  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ) # (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 )

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z5 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52927 .lut_mask = 16'hFFCC;
defparam \u_i2c_av_config|u0|ix44942z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y14_N24
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52928 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z6  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ) # (\u_i2c_av_config|u0|nx44942z5 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datad(\u_i2c_av_config|u0|nx44942z5 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z6 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52928 .lut_mask = 16'h1110;
defparam \u_i2c_av_config|u0|ix41315z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y14_N2
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52925 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z3  = (\u_i2c_av_config|u0|nx41315z6 ) # ((\u_i2c_av_config|u0|nx22137z1  & ((!\u_i2c_av_config|u0|nx41315z4 ))) # (!\u_i2c_av_config|u0|nx22137z1  & (\u_i2c_av_config|u0|nx41315z5 )))

	.dataa(\u_i2c_av_config|u0|nx41315z5 ),
	.datab(\u_i2c_av_config|u0|nx41315z4 ),
	.datac(\u_i2c_av_config|u0|nx41315z6 ),
	.datad(\u_i2c_av_config|u0|nx22137z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52925 .lut_mask = 16'hF3FA;
defparam \u_i2c_av_config|u0|ix41315z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N12
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52924 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z2  = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1  & \u_i2c_av_config|u0|nx41315z3 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1 ),
	.datad(\u_i2c_av_config|u0|nx41315z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52924 .lut_mask = 16'h0F00;
defparam \u_i2c_av_config|u0|ix41315z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N20
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52929 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z7  = (\u_i2c_av_config|u0|nx41315z8 ) # ((\u_i2c_av_config|u0|nx41315z10  & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1  & \u_i2c_av_config|u0|nx41315z2 )))

	.dataa(\u_i2c_av_config|u0|nx41315z8 ),
	.datab(\u_i2c_av_config|u0|nx41315z10 ),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ),
	.datad(\u_i2c_av_config|u0|nx41315z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z7 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52929 .lut_mask = 16'hEAAA;
defparam \u_i2c_av_config|u0|ix41315z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N22
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52940 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z18  = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1  & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1  & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1  & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 )))

	.dataa(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ),
	.datab(\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ),
	.datad(\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z18 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52940 .lut_mask = 16'h0004;
defparam \u_i2c_av_config|u0|ix41315z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y14_N28
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52923 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z1  = (!\u_i2c_av_config|u0|nx41315z11  & (!\u_i2c_av_config|u0|nx41315z7  & ((!\u_i2c_av_config|u0|nx41315z18 ) # (!\u_i2c_av_config|u0|nx41315z2 ))))

	.dataa(\u_i2c_av_config|u0|nx41315z2 ),
	.datab(\u_i2c_av_config|u0|nx41315z11 ),
	.datac(\u_i2c_av_config|u0|nx41315z7 ),
	.datad(\u_i2c_av_config|u0|nx41315z18 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52923 .lut_mask = 16'h0103;
defparam \u_i2c_av_config|u0|ix41315z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y14_N14
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52941 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z19  = (\u_i2c_av_config|u0|nx41315z20  & (!\u_i2c_av_config|m_i2c_ctrl_clk  & \u_i2c_av_config|nx51161z1 ))

	.dataa(\u_i2c_av_config|u0|nx41315z20 ),
	.datab(vcc),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(\u_i2c_av_config|nx51161z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z19 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52941 .lut_mask = 16'h0A00;
defparam \u_i2c_av_config|u0|ix41315z52941 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y14_N29
cycloneii_lcell_ff \u_i2c_av_config|u0|reg_sdo (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|nx41315z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\u_i2c_av_config|reset_n ),
	.sload(gnd),
	.ena(\u_i2c_av_config|u0|nx41315z19 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|nx51857z1 ));

// Location: LCCOMB_X32_Y25_N24
cycloneii_lcell_comb ix30102z52923(
// Equation(s):
// nx30102z1 = (\key~combout [0] & !u_audio_dac_bck_div_2_)

	.dataa(\key~combout [0]),
	.datab(vcc),
	.datac(u_audio_dac_bck_div_2_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx30102z1),
	.cout());
// synopsys translate_off
defparam ix30102z52923.lut_mask = 16'h0A0A;
defparam ix30102z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y25_N14
cycloneii_lcell_comb ix30102z52924(
// Equation(s):
// nx30102z2 = ((u_audio_dac_bck_div_0_ & ((u_audio_dac_bck_div_1_) # (u_audio_dac_bck_div_2_))) # (!u_audio_dac_bck_div_0_ & (u_audio_dac_bck_div_1_ & u_audio_dac_bck_div_2_))) # (!\key~combout [0])

	.dataa(\key~combout [0]),
	.datab(u_audio_dac_bck_div_0_),
	.datac(u_audio_dac_bck_div_1_),
	.datad(u_audio_dac_bck_div_2_),
	.cin(gnd),
	.combout(nx30102z2),
	.cout());
// synopsys translate_off
defparam ix30102z52924.lut_mask = 16'hFDD5;
defparam ix30102z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y25_N25
cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_2_(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx30102z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx30102z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_audio_dac_bck_div_2_));

// Location: LCCOMB_X31_Y25_N26
cycloneii_lcell_comb ix31099z52923(
// Equation(s):
// nx31099z1 = (\key~combout [0] & (!u_audio_dac_bck_div_1_ & ((!u_audio_dac_bck_div_2_) # (!u_audio_dac_bck_div_0_))))

	.dataa(\key~combout [0]),
	.datab(u_audio_dac_bck_div_0_),
	.datac(u_audio_dac_bck_div_1_),
	.datad(u_audio_dac_bck_div_2_),
	.cin(gnd),
	.combout(nx31099z1),
	.cout());
// synopsys translate_off
defparam ix31099z52923.lut_mask = 16'h020A;
defparam ix31099z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y25_N6
cycloneii_lcell_comb ix31099z52924(
// Equation(s):
// nx31099z2 = ((u_audio_dac_bck_div_0_) # ((u_audio_dac_bck_div_1_ & u_audio_dac_bck_div_2_))) # (!\key~combout [0])

	.dataa(\key~combout [0]),
	.datab(u_audio_dac_bck_div_0_),
	.datac(u_audio_dac_bck_div_1_),
	.datad(u_audio_dac_bck_div_2_),
	.cin(gnd),
	.combout(nx31099z2),
	.cout());
// synopsys translate_off
defparam ix31099z52924.lut_mask = 16'hFDDD;
defparam ix31099z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y25_N27
cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_1_(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx31099z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31099z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_audio_dac_bck_div_1_));

// Location: LCCOMB_X31_Y25_N22
cycloneii_lcell_comb ix32096z52923(
// Equation(s):
// nx32096z1 = (\key~combout [0] & (!u_audio_dac_bck_div_0_ & ((!u_audio_dac_bck_div_2_) # (!u_audio_dac_bck_div_1_))))

	.dataa(\key~combout [0]),
	.datab(u_audio_dac_bck_div_1_),
	.datac(u_audio_dac_bck_div_0_),
	.datad(u_audio_dac_bck_div_2_),
	.cin(gnd),
	.combout(nx32096z1),
	.cout());
// synopsys translate_off
defparam ix32096z52923.lut_mask = 16'h020A;
defparam ix32096z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y25_N23
cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_0_(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx32096z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_audio_dac_bck_div_0_));

// Location: LCCOMB_X31_Y25_N24
cycloneii_lcell_comb ix15494z52923(
// Equation(s):
// nx15494z1 = aud_bclk_dup0 $ (((u_audio_dac_bck_div_2_ & ((u_audio_dac_bck_div_1_) # (u_audio_dac_bck_div_0_)))))

	.dataa(u_audio_dac_bck_div_1_),
	.datab(u_audio_dac_bck_div_0_),
	.datac(aud_bclk_dup0),
	.datad(u_audio_dac_bck_div_2_),
	.cin(gnd),
	.combout(nx15494z1),
	.cout());
// synopsys translate_off
defparam ix15494z52923.lut_mask = 16'h1EF0;
defparam ix15494z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y25_N25
cycloneii_lcell_ff u_audio_dac_reg_aud_bck(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx15494z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\key~combout [0]),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(aud_bclk_dup0));

// Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[0]));
// synopsys translate_off
defparam ledg_triBus1_0_.input_async_reset = "none";
defparam ledg_triBus1_0_.input_power_up = "low";
defparam ledg_triBus1_0_.input_register_mode = "none";
defparam ledg_triBus1_0_.input_sync_reset = "none";
defparam ledg_triBus1_0_.oe_async_reset = "none";
defparam ledg_triBus1_0_.oe_power_up = "low";
defparam ledg_triBus1_0_.oe_register_mode = "none";
defparam ledg_triBus1_0_.oe_sync_reset = "none";
defparam ledg_triBus1_0_.operation_mode = "output";
defparam ledg_triBus1_0_.output_async_reset = "none";
defparam ledg_triBus1_0_.output_power_up = "low";
defparam ledg_triBus1_0_.output_register_mode = "none";
defparam ledg_triBus1_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[1]));
// synopsys translate_off
defparam ledg_triBus1_1_.input_async_reset = "none";
defparam ledg_triBus1_1_.input_power_up = "low";
defparam ledg_triBus1_1_.input_register_mode = "none";
defparam ledg_triBus1_1_.input_sync_reset = "none";
defparam ledg_triBus1_1_.oe_async_reset = "none";
defparam ledg_triBus1_1_.oe_power_up = "low";
defparam ledg_triBus1_1_.oe_register_mode = "none";
defparam ledg_triBus1_1_.oe_sync_reset = "none";
defparam ledg_triBus1_1_.operation_mode = "output";
defparam ledg_triBus1_1_.output_async_reset = "none";
defparam ledg_triBus1_1_.output_power_up = "low";
defparam ledg_triBus1_1_.output_register_mode = "none";
defparam ledg_triBus1_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[2]));
// synopsys translate_off
defparam ledg_triBus1_2_.input_async_reset = "none";
defparam ledg_triBus1_2_.input_power_up = "low";
defparam ledg_triBus1_2_.input_register_mode = "none";
defparam ledg_triBus1_2_.input_sync_reset = "none";
defparam ledg_triBus1_2_.oe_async_reset = "none";
defparam ledg_triBus1_2_.oe_power_up = "low";
defparam ledg_triBus1_2_.oe_register_mode = "none";
defparam ledg_triBus1_2_.oe_sync_reset = "none";
defparam ledg_triBus1_2_.operation_mode = "output";
defparam ledg_triBus1_2_.output_async_reset = "none";
defparam ledg_triBus1_2_.output_power_up = "low";
defparam ledg_triBus1_2_.output_register_mode = "none";
defparam ledg_triBus1_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[3]));
// synopsys translate_off
defparam ledg_triBus1_3_.input_async_reset = "none";
defparam ledg_triBus1_3_.input_power_up = "low";
defparam ledg_triBus1_3_.input_register_mode = "none";
defparam ledg_triBus1_3_.input_sync_reset = "none";
defparam ledg_triBus1_3_.oe_async_reset = "none";
defparam ledg_triBus1_3_.oe_power_up = "low";
defparam ledg_triBus1_3_.oe_register_mode = "none";
defparam ledg_triBus1_3_.oe_sync_reset = "none";
defparam ledg_triBus1_3_.operation_mode = "output";
defparam ledg_triBus1_3_.output_async_reset = "none";
defparam ledg_triBus1_3_.output_power_up = "low";
defparam ledg_triBus1_3_.output_register_mode = "none";
defparam ledg_triBus1_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[4]));
// synopsys translate_off
defparam ledg_triBus1_4_.input_async_reset = "none";
defparam ledg_triBus1_4_.input_power_up = "low";
defparam ledg_triBus1_4_.input_register_mode = "none";
defparam ledg_triBus1_4_.input_sync_reset = "none";
defparam ledg_triBus1_4_.oe_async_reset = "none";
defparam ledg_triBus1_4_.oe_power_up = "low";
defparam ledg_triBus1_4_.oe_register_mode = "none";
defparam ledg_triBus1_4_.oe_sync_reset = "none";
defparam ledg_triBus1_4_.operation_mode = "output";
defparam ledg_triBus1_4_.output_async_reset = "none";
defparam ledg_triBus1_4_.output_power_up = "low";
defparam ledg_triBus1_4_.output_register_mode = "none";
defparam ledg_triBus1_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[5]));
// synopsys translate_off
defparam ledg_triBus1_5_.input_async_reset = "none";
defparam ledg_triBus1_5_.input_power_up = "low";
defparam ledg_triBus1_5_.input_register_mode = "none";
defparam ledg_triBus1_5_.input_sync_reset = "none";
defparam ledg_triBus1_5_.oe_async_reset = "none";
defparam ledg_triBus1_5_.oe_power_up = "low";
defparam ledg_triBus1_5_.oe_register_mode = "none";
defparam ledg_triBus1_5_.oe_sync_reset = "none";
defparam ledg_triBus1_5_.operation_mode = "output";
defparam ledg_triBus1_5_.output_async_reset = "none";
defparam ledg_triBus1_5_.output_power_up = "low";
defparam ledg_triBus1_5_.output_register_mode = "none";
defparam ledg_triBus1_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[6]));
// synopsys translate_off
defparam ledg_triBus1_6_.input_async_reset = "none";
defparam ledg_triBus1_6_.input_power_up = "low";
defparam ledg_triBus1_6_.input_register_mode = "none";
defparam ledg_triBus1_6_.input_sync_reset = "none";
defparam ledg_triBus1_6_.oe_async_reset = "none";
defparam ledg_triBus1_6_.oe_power_up = "low";
defparam ledg_triBus1_6_.oe_register_mode = "none";
defparam ledg_triBus1_6_.oe_sync_reset = "none";
defparam ledg_triBus1_6_.operation_mode = "output";
defparam ledg_triBus1_6_.output_async_reset = "none";
defparam ledg_triBus1_6_.output_power_up = "low";
defparam ledg_triBus1_6_.output_register_mode = "none";
defparam ledg_triBus1_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[7]));
// synopsys translate_off
defparam ledg_triBus1_7_.input_async_reset = "none";
defparam ledg_triBus1_7_.input_power_up = "low";
defparam ledg_triBus1_7_.input_register_mode = "none";
defparam ledg_triBus1_7_.input_sync_reset = "none";
defparam ledg_triBus1_7_.oe_async_reset = "none";
defparam ledg_triBus1_7_.oe_power_up = "low";
defparam ledg_triBus1_7_.oe_register_mode = "none";
defparam ledg_triBus1_7_.oe_sync_reset = "none";
defparam ledg_triBus1_7_.operation_mode = "output";
defparam ledg_triBus1_7_.output_async_reset = "none";
defparam ledg_triBus1_7_.output_power_up = "low";
defparam ledg_triBus1_7_.output_register_mode = "none";
defparam ledg_triBus1_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_8_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[8]));
// synopsys translate_off
defparam ledg_triBus1_8_.input_async_reset = "none";
defparam ledg_triBus1_8_.input_power_up = "low";
defparam ledg_triBus1_8_.input_register_mode = "none";
defparam ledg_triBus1_8_.input_sync_reset = "none";
defparam ledg_triBus1_8_.oe_async_reset = "none";
defparam ledg_triBus1_8_.oe_power_up = "low";
defparam ledg_triBus1_8_.oe_register_mode = "none";
defparam ledg_triBus1_8_.oe_sync_reset = "none";
defparam ledg_triBus1_8_.operation_mode = "output";
defparam ledg_triBus1_8_.output_async_reset = "none";
defparam ledg_triBus1_8_.output_power_up = "low";
defparam ledg_triBus1_8_.output_register_mode = "none";
defparam ledg_triBus1_8_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[0]));
// synopsys translate_off
defparam ledr_triBus2_0_.input_async_reset = "none";
defparam ledr_triBus2_0_.input_power_up = "low";
defparam ledr_triBus2_0_.input_register_mode = "none";
defparam ledr_triBus2_0_.input_sync_reset = "none";
defparam ledr_triBus2_0_.oe_async_reset = "none";
defparam ledr_triBus2_0_.oe_power_up = "low";
defparam ledr_triBus2_0_.oe_register_mode = "none";
defparam ledr_triBus2_0_.oe_sync_reset = "none";
defparam ledr_triBus2_0_.operation_mode = "output";
defparam ledr_triBus2_0_.output_async_reset = "none";
defparam ledr_triBus2_0_.output_power_up = "low";
defparam ledr_triBus2_0_.output_register_mode = "none";
defparam ledr_triBus2_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[1]));
// synopsys translate_off
defparam ledr_triBus2_1_.input_async_reset = "none";
defparam ledr_triBus2_1_.input_power_up = "low";
defparam ledr_triBus2_1_.input_register_mode = "none";
defparam ledr_triBus2_1_.input_sync_reset = "none";
defparam ledr_triBus2_1_.oe_async_reset = "none";
defparam ledr_triBus2_1_.oe_power_up = "low";
defparam ledr_triBus2_1_.oe_register_mode = "none";
defparam ledr_triBus2_1_.oe_sync_reset = "none";
defparam ledr_triBus2_1_.operation_mode = "output";
defparam ledr_triBus2_1_.output_async_reset = "none";
defparam ledr_triBus2_1_.output_power_up = "low";
defparam ledr_triBus2_1_.output_register_mode = "none";
defparam ledr_triBus2_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[2]));
// synopsys translate_off
defparam ledr_triBus2_2_.input_async_reset = "none";
defparam ledr_triBus2_2_.input_power_up = "low";
defparam ledr_triBus2_2_.input_register_mode = "none";
defparam ledr_triBus2_2_.input_sync_reset = "none";
defparam ledr_triBus2_2_.oe_async_reset = "none";
defparam ledr_triBus2_2_.oe_power_up = "low";
defparam ledr_triBus2_2_.oe_register_mode = "none";
defparam ledr_triBus2_2_.oe_sync_reset = "none";
defparam ledr_triBus2_2_.operation_mode = "output";
defparam ledr_triBus2_2_.output_async_reset = "none";
defparam ledr_triBus2_2_.output_power_up = "low";
defparam ledr_triBus2_2_.output_register_mode = "none";
defparam ledr_triBus2_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[3]));
// synopsys translate_off
defparam ledr_triBus2_3_.input_async_reset = "none";
defparam ledr_triBus2_3_.input_power_up = "low";
defparam ledr_triBus2_3_.input_register_mode = "none";
defparam ledr_triBus2_3_.input_sync_reset = "none";
defparam ledr_triBus2_3_.oe_async_reset = "none";
defparam ledr_triBus2_3_.oe_power_up = "low";
defparam ledr_triBus2_3_.oe_register_mode = "none";
defparam ledr_triBus2_3_.oe_sync_reset = "none";
defparam ledr_triBus2_3_.operation_mode = "output";
defparam ledr_triBus2_3_.output_async_reset = "none";
defparam ledr_triBus2_3_.output_power_up = "low";
defparam ledr_triBus2_3_.output_register_mode = "none";
defparam ledr_triBus2_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[4]));
// synopsys translate_off
defparam ledr_triBus2_4_.input_async_reset = "none";
defparam ledr_triBus2_4_.input_power_up = "low";
defparam ledr_triBus2_4_.input_register_mode = "none";
defparam ledr_triBus2_4_.input_sync_reset = "none";
defparam ledr_triBus2_4_.oe_async_reset = "none";
defparam ledr_triBus2_4_.oe_power_up = "low";
defparam ledr_triBus2_4_.oe_register_mode = "none";
defparam ledr_triBus2_4_.oe_sync_reset = "none";
defparam ledr_triBus2_4_.operation_mode = "output";
defparam ledr_triBus2_4_.output_async_reset = "none";
defparam ledr_triBus2_4_.output_power_up = "low";
defparam ledr_triBus2_4_.output_register_mode = "none";
defparam ledr_triBus2_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[5]));
// synopsys translate_off
defparam ledr_triBus2_5_.input_async_reset = "none";
defparam ledr_triBus2_5_.input_power_up = "low";
defparam ledr_triBus2_5_.input_register_mode = "none";
defparam ledr_triBus2_5_.input_sync_reset = "none";
defparam ledr_triBus2_5_.oe_async_reset = "none";
defparam ledr_triBus2_5_.oe_power_up = "low";
defparam ledr_triBus2_5_.oe_register_mode = "none";
defparam ledr_triBus2_5_.oe_sync_reset = "none";
defparam ledr_triBus2_5_.operation_mode = "output";
defparam ledr_triBus2_5_.output_async_reset = "none";
defparam ledr_triBus2_5_.output_power_up = "low";
defparam ledr_triBus2_5_.output_register_mode = "none";
defparam ledr_triBus2_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[6]));
// synopsys translate_off
defparam ledr_triBus2_6_.input_async_reset = "none";
defparam ledr_triBus2_6_.input_power_up = "low";
defparam ledr_triBus2_6_.input_register_mode = "none";
defparam ledr_triBus2_6_.input_sync_reset = "none";
defparam ledr_triBus2_6_.oe_async_reset = "none";
defparam ledr_triBus2_6_.oe_power_up = "low";
defparam ledr_triBus2_6_.oe_register_mode = "none";
defparam ledr_triBus2_6_.oe_sync_reset = "none";
defparam ledr_triBus2_6_.operation_mode = "output";
defparam ledr_triBus2_6_.output_async_reset = "none";
defparam ledr_triBus2_6_.output_power_up = "low";
defparam ledr_triBus2_6_.output_register_mode = "none";
defparam ledr_triBus2_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_7_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[7]));
// synopsys translate_off
defparam ledr_triBus2_7_.input_async_reset = "none";
defparam ledr_triBus2_7_.input_power_up = "low";
defparam ledr_triBus2_7_.input_register_mode = "none";
defparam ledr_triBus2_7_.input_sync_reset = "none";
defparam ledr_triBus2_7_.oe_async_reset = "none";
defparam ledr_triBus2_7_.oe_power_up = "low";
defparam ledr_triBus2_7_.oe_register_mode = "none";
defparam ledr_triBus2_7_.oe_sync_reset = "none";
defparam ledr_triBus2_7_.operation_mode = "output";
defparam ledr_triBus2_7_.output_async_reset = "none";
defparam ledr_triBus2_7_.output_power_up = "low";
defparam ledr_triBus2_7_.output_register_mode = "none";
defparam ledr_triBus2_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_8_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[8]));
// synopsys translate_off
defparam ledr_triBus2_8_.input_async_reset = "none";
defparam ledr_triBus2_8_.input_power_up = "low";
defparam ledr_triBus2_8_.input_register_mode = "none";
defparam ledr_triBus2_8_.input_sync_reset = "none";
defparam ledr_triBus2_8_.oe_async_reset = "none";
defparam ledr_triBus2_8_.oe_power_up = "low";
defparam ledr_triBus2_8_.oe_register_mode = "none";
defparam ledr_triBus2_8_.oe_sync_reset = "none";
defparam ledr_triBus2_8_.operation_mode = "output";
defparam ledr_triBus2_8_.output_async_reset = "none";
defparam ledr_triBus2_8_.output_power_up = "low";
defparam ledr_triBus2_8_.output_register_mode = "none";
defparam ledr_triBus2_8_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_9_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[9]));
// synopsys translate_off
defparam ledr_triBus2_9_.input_async_reset = "none";
defparam ledr_triBus2_9_.input_power_up = "low";
defparam ledr_triBus2_9_.input_register_mode = "none";
defparam ledr_triBus2_9_.input_sync_reset = "none";
defparam ledr_triBus2_9_.oe_async_reset = "none";
defparam ledr_triBus2_9_.oe_power_up = "low";
defparam ledr_triBus2_9_.oe_register_mode = "none";
defparam ledr_triBus2_9_.oe_sync_reset = "none";
defparam ledr_triBus2_9_.operation_mode = "output";
defparam ledr_triBus2_9_.output_async_reset = "none";
defparam ledr_triBus2_9_.output_power_up = "low";
defparam ledr_triBus2_9_.output_register_mode = "none";
defparam ledr_triBus2_9_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_10_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[10]));
// synopsys translate_off
defparam ledr_triBus2_10_.input_async_reset = "none";
defparam ledr_triBus2_10_.input_power_up = "low";
defparam ledr_triBus2_10_.input_register_mode = "none";
defparam ledr_triBus2_10_.input_sync_reset = "none";
defparam ledr_triBus2_10_.oe_async_reset = "none";
defparam ledr_triBus2_10_.oe_power_up = "low";
defparam ledr_triBus2_10_.oe_register_mode = "none";
defparam ledr_triBus2_10_.oe_sync_reset = "none";
defparam ledr_triBus2_10_.operation_mode = "output";
defparam ledr_triBus2_10_.output_async_reset = "none";
defparam ledr_triBus2_10_.output_power_up = "low";
defparam ledr_triBus2_10_.output_register_mode = "none";
defparam ledr_triBus2_10_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_11_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[11]));
// synopsys translate_off
defparam ledr_triBus2_11_.input_async_reset = "none";
defparam ledr_triBus2_11_.input_power_up = "low";
defparam ledr_triBus2_11_.input_register_mode = "none";
defparam ledr_triBus2_11_.input_sync_reset = "none";
defparam ledr_triBus2_11_.oe_async_reset = "none";
defparam ledr_triBus2_11_.oe_power_up = "low";
defparam ledr_triBus2_11_.oe_register_mode = "none";
defparam ledr_triBus2_11_.oe_sync_reset = "none";
defparam ledr_triBus2_11_.operation_mode = "output";
defparam ledr_triBus2_11_.output_async_reset = "none";
defparam ledr_triBus2_11_.output_power_up = "low";
defparam ledr_triBus2_11_.output_register_mode = "none";
defparam ledr_triBus2_11_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_12_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[12]));
// synopsys translate_off
defparam ledr_triBus2_12_.input_async_reset = "none";
defparam ledr_triBus2_12_.input_power_up = "low";
defparam ledr_triBus2_12_.input_register_mode = "none";
defparam ledr_triBus2_12_.input_sync_reset = "none";
defparam ledr_triBus2_12_.oe_async_reset = "none";
defparam ledr_triBus2_12_.oe_power_up = "low";
defparam ledr_triBus2_12_.oe_register_mode = "none";
defparam ledr_triBus2_12_.oe_sync_reset = "none";
defparam ledr_triBus2_12_.operation_mode = "output";
defparam ledr_triBus2_12_.output_async_reset = "none";
defparam ledr_triBus2_12_.output_power_up = "low";
defparam ledr_triBus2_12_.output_register_mode = "none";
defparam ledr_triBus2_12_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_13_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[13]));
// synopsys translate_off
defparam ledr_triBus2_13_.input_async_reset = "none";
defparam ledr_triBus2_13_.input_power_up = "low";
defparam ledr_triBus2_13_.input_register_mode = "none";
defparam ledr_triBus2_13_.input_sync_reset = "none";
defparam ledr_triBus2_13_.oe_async_reset = "none";
defparam ledr_triBus2_13_.oe_power_up = "low";
defparam ledr_triBus2_13_.oe_register_mode = "none";
defparam ledr_triBus2_13_.oe_sync_reset = "none";
defparam ledr_triBus2_13_.operation_mode = "output";
defparam ledr_triBus2_13_.output_async_reset = "none";
defparam ledr_triBus2_13_.output_power_up = "low";
defparam ledr_triBus2_13_.output_register_mode = "none";
defparam ledr_triBus2_13_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_14_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[14]));
// synopsys translate_off
defparam ledr_triBus2_14_.input_async_reset = "none";
defparam ledr_triBus2_14_.input_power_up = "low";
defparam ledr_triBus2_14_.input_register_mode = "none";
defparam ledr_triBus2_14_.input_sync_reset = "none";
defparam ledr_triBus2_14_.oe_async_reset = "none";
defparam ledr_triBus2_14_.oe_power_up = "low";
defparam ledr_triBus2_14_.oe_register_mode = "none";
defparam ledr_triBus2_14_.oe_sync_reset = "none";
defparam ledr_triBus2_14_.operation_mode = "output";
defparam ledr_triBus2_14_.output_async_reset = "none";
defparam ledr_triBus2_14_.output_power_up = "low";
defparam ledr_triBus2_14_.output_register_mode = "none";
defparam ledr_triBus2_14_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_15_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[15]));
// synopsys translate_off
defparam ledr_triBus2_15_.input_async_reset = "none";
defparam ledr_triBus2_15_.input_power_up = "low";
defparam ledr_triBus2_15_.input_register_mode = "none";
defparam ledr_triBus2_15_.input_sync_reset = "none";
defparam ledr_triBus2_15_.oe_async_reset = "none";
defparam ledr_triBus2_15_.oe_power_up = "low";
defparam ledr_triBus2_15_.oe_register_mode = "none";
defparam ledr_triBus2_15_.oe_sync_reset = "none";
defparam ledr_triBus2_15_.operation_mode = "output";
defparam ledr_triBus2_15_.output_async_reset = "none";
defparam ledr_triBus2_15_.output_power_up = "low";
defparam ledr_triBus2_15_.output_register_mode = "none";
defparam ledr_triBus2_15_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_16_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[16]));
// synopsys translate_off
defparam ledr_triBus2_16_.input_async_reset = "none";
defparam ledr_triBus2_16_.input_power_up = "low";
defparam ledr_triBus2_16_.input_register_mode = "none";
defparam ledr_triBus2_16_.input_sync_reset = "none";
defparam ledr_triBus2_16_.oe_async_reset = "none";
defparam ledr_triBus2_16_.oe_power_up = "low";
defparam ledr_triBus2_16_.oe_register_mode = "none";
defparam ledr_triBus2_16_.oe_sync_reset = "none";
defparam ledr_triBus2_16_.operation_mode = "output";
defparam ledr_triBus2_16_.output_async_reset = "none";
defparam ledr_triBus2_16_.output_power_up = "low";
defparam ledr_triBus2_16_.output_register_mode = "none";
defparam ledr_triBus2_16_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_17_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[17]));
// synopsys translate_off
defparam ledr_triBus2_17_.input_async_reset = "none";
defparam ledr_triBus2_17_.input_power_up = "low";
defparam ledr_triBus2_17_.input_register_mode = "none";
defparam ledr_triBus2_17_.input_sync_reset = "none";
defparam ledr_triBus2_17_.oe_async_reset = "none";
defparam ledr_triBus2_17_.oe_power_up = "low";
defparam ledr_triBus2_17_.oe_register_mode = "none";
defparam ledr_triBus2_17_.oe_sync_reset = "none";
defparam ledr_triBus2_17_.operation_mode = "output";
defparam ledr_triBus2_17_.output_async_reset = "none";
defparam ledr_triBus2_17_.output_power_up = "low";
defparam ledr_triBus2_17_.output_register_mode = "none";
defparam ledr_triBus2_17_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[0]));
// synopsys translate_off
defparam hex0_triBus3_0_.input_async_reset = "none";
defparam hex0_triBus3_0_.input_power_up = "low";
defparam hex0_triBus3_0_.input_register_mode = "none";
defparam hex0_triBus3_0_.input_sync_reset = "none";
defparam hex0_triBus3_0_.oe_async_reset = "none";
defparam hex0_triBus3_0_.oe_power_up = "low";
defparam hex0_triBus3_0_.oe_register_mode = "none";
defparam hex0_triBus3_0_.oe_sync_reset = "none";
defparam hex0_triBus3_0_.operation_mode = "output";
defparam hex0_triBus3_0_.output_async_reset = "none";
defparam hex0_triBus3_0_.output_power_up = "low";
defparam hex0_triBus3_0_.output_register_mode = "none";
defparam hex0_triBus3_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[1]));
// synopsys translate_off
defparam hex0_triBus3_1_.input_async_reset = "none";
defparam hex0_triBus3_1_.input_power_up = "low";
defparam hex0_triBus3_1_.input_register_mode = "none";
defparam hex0_triBus3_1_.input_sync_reset = "none";
defparam hex0_triBus3_1_.oe_async_reset = "none";
defparam hex0_triBus3_1_.oe_power_up = "low";
defparam hex0_triBus3_1_.oe_register_mode = "none";
defparam hex0_triBus3_1_.oe_sync_reset = "none";
defparam hex0_triBus3_1_.operation_mode = "output";
defparam hex0_triBus3_1_.output_async_reset = "none";
defparam hex0_triBus3_1_.output_power_up = "low";
defparam hex0_triBus3_1_.output_register_mode = "none";
defparam hex0_triBus3_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[2]));
// synopsys translate_off
defparam hex0_triBus3_2_.input_async_reset = "none";
defparam hex0_triBus3_2_.input_power_up = "low";
defparam hex0_triBus3_2_.input_register_mode = "none";
defparam hex0_triBus3_2_.input_sync_reset = "none";
defparam hex0_triBus3_2_.oe_async_reset = "none";
defparam hex0_triBus3_2_.oe_power_up = "low";
defparam hex0_triBus3_2_.oe_register_mode = "none";
defparam hex0_triBus3_2_.oe_sync_reset = "none";
defparam hex0_triBus3_2_.operation_mode = "output";
defparam hex0_triBus3_2_.output_async_reset = "none";
defparam hex0_triBus3_2_.output_power_up = "low";
defparam hex0_triBus3_2_.output_register_mode = "none";
defparam hex0_triBus3_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[3]));
// synopsys translate_off
defparam hex0_triBus3_3_.input_async_reset = "none";
defparam hex0_triBus3_3_.input_power_up = "low";
defparam hex0_triBus3_3_.input_register_mode = "none";
defparam hex0_triBus3_3_.input_sync_reset = "none";
defparam hex0_triBus3_3_.oe_async_reset = "none";
defparam hex0_triBus3_3_.oe_power_up = "low";
defparam hex0_triBus3_3_.oe_register_mode = "none";
defparam hex0_triBus3_3_.oe_sync_reset = "none";
defparam hex0_triBus3_3_.operation_mode = "output";
defparam hex0_triBus3_3_.output_async_reset = "none";
defparam hex0_triBus3_3_.output_power_up = "low";
defparam hex0_triBus3_3_.output_register_mode = "none";
defparam hex0_triBus3_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[4]));
// synopsys translate_off
defparam hex0_triBus3_4_.input_async_reset = "none";
defparam hex0_triBus3_4_.input_power_up = "low";
defparam hex0_triBus3_4_.input_register_mode = "none";
defparam hex0_triBus3_4_.input_sync_reset = "none";
defparam hex0_triBus3_4_.oe_async_reset = "none";
defparam hex0_triBus3_4_.oe_power_up = "low";
defparam hex0_triBus3_4_.oe_register_mode = "none";
defparam hex0_triBus3_4_.oe_sync_reset = "none";
defparam hex0_triBus3_4_.operation_mode = "output";
defparam hex0_triBus3_4_.output_async_reset = "none";
defparam hex0_triBus3_4_.output_power_up = "low";
defparam hex0_triBus3_4_.output_register_mode = "none";
defparam hex0_triBus3_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[5]));
// synopsys translate_off
defparam hex0_triBus3_5_.input_async_reset = "none";
defparam hex0_triBus3_5_.input_power_up = "low";
defparam hex0_triBus3_5_.input_register_mode = "none";
defparam hex0_triBus3_5_.input_sync_reset = "none";
defparam hex0_triBus3_5_.oe_async_reset = "none";
defparam hex0_triBus3_5_.oe_power_up = "low";
defparam hex0_triBus3_5_.oe_register_mode = "none";
defparam hex0_triBus3_5_.oe_sync_reset = "none";
defparam hex0_triBus3_5_.operation_mode = "output";
defparam hex0_triBus3_5_.output_async_reset = "none";
defparam hex0_triBus3_5_.output_power_up = "low";
defparam hex0_triBus3_5_.output_register_mode = "none";
defparam hex0_triBus3_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[6]));
// synopsys translate_off
defparam hex0_triBus3_6_.input_async_reset = "none";
defparam hex0_triBus3_6_.input_power_up = "low";
defparam hex0_triBus3_6_.input_register_mode = "none";
defparam hex0_triBus3_6_.input_sync_reset = "none";
defparam hex0_triBus3_6_.oe_async_reset = "none";
defparam hex0_triBus3_6_.oe_power_up = "low";
defparam hex0_triBus3_6_.oe_register_mode = "none";
defparam hex0_triBus3_6_.oe_sync_reset = "none";
defparam hex0_triBus3_6_.operation_mode = "output";
defparam hex0_triBus3_6_.output_async_reset = "none";
defparam hex0_triBus3_6_.output_power_up = "low";
defparam hex0_triBus3_6_.output_register_mode = "none";
defparam hex0_triBus3_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[0]));
// synopsys translate_off
defparam hex1_triBus4_0_.input_async_reset = "none";
defparam hex1_triBus4_0_.input_power_up = "low";
defparam hex1_triBus4_0_.input_register_mode = "none";
defparam hex1_triBus4_0_.input_sync_reset = "none";
defparam hex1_triBus4_0_.oe_async_reset = "none";
defparam hex1_triBus4_0_.oe_power_up = "low";
defparam hex1_triBus4_0_.oe_register_mode = "none";
defparam hex1_triBus4_0_.oe_sync_reset = "none";
defparam hex1_triBus4_0_.operation_mode = "output";
defparam hex1_triBus4_0_.output_async_reset = "none";
defparam hex1_triBus4_0_.output_power_up = "low";
defparam hex1_triBus4_0_.output_register_mode = "none";
defparam hex1_triBus4_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[1]));
// synopsys translate_off
defparam hex1_triBus4_1_.input_async_reset = "none";
defparam hex1_triBus4_1_.input_power_up = "low";
defparam hex1_triBus4_1_.input_register_mode = "none";
defparam hex1_triBus4_1_.input_sync_reset = "none";
defparam hex1_triBus4_1_.oe_async_reset = "none";
defparam hex1_triBus4_1_.oe_power_up = "low";
defparam hex1_triBus4_1_.oe_register_mode = "none";
defparam hex1_triBus4_1_.oe_sync_reset = "none";
defparam hex1_triBus4_1_.operation_mode = "output";
defparam hex1_triBus4_1_.output_async_reset = "none";
defparam hex1_triBus4_1_.output_power_up = "low";
defparam hex1_triBus4_1_.output_register_mode = "none";
defparam hex1_triBus4_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[2]));
// synopsys translate_off
defparam hex1_triBus4_2_.input_async_reset = "none";
defparam hex1_triBus4_2_.input_power_up = "low";
defparam hex1_triBus4_2_.input_register_mode = "none";
defparam hex1_triBus4_2_.input_sync_reset = "none";
defparam hex1_triBus4_2_.oe_async_reset = "none";
defparam hex1_triBus4_2_.oe_power_up = "low";
defparam hex1_triBus4_2_.oe_register_mode = "none";
defparam hex1_triBus4_2_.oe_sync_reset = "none";
defparam hex1_triBus4_2_.operation_mode = "output";
defparam hex1_triBus4_2_.output_async_reset = "none";
defparam hex1_triBus4_2_.output_power_up = "low";
defparam hex1_triBus4_2_.output_register_mode = "none";
defparam hex1_triBus4_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[3]));
// synopsys translate_off
defparam hex1_triBus4_3_.input_async_reset = "none";
defparam hex1_triBus4_3_.input_power_up = "low";
defparam hex1_triBus4_3_.input_register_mode = "none";
defparam hex1_triBus4_3_.input_sync_reset = "none";
defparam hex1_triBus4_3_.oe_async_reset = "none";
defparam hex1_triBus4_3_.oe_power_up = "low";
defparam hex1_triBus4_3_.oe_register_mode = "none";
defparam hex1_triBus4_3_.oe_sync_reset = "none";
defparam hex1_triBus4_3_.operation_mode = "output";
defparam hex1_triBus4_3_.output_async_reset = "none";
defparam hex1_triBus4_3_.output_power_up = "low";
defparam hex1_triBus4_3_.output_register_mode = "none";
defparam hex1_triBus4_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[4]));
// synopsys translate_off
defparam hex1_triBus4_4_.input_async_reset = "none";
defparam hex1_triBus4_4_.input_power_up = "low";
defparam hex1_triBus4_4_.input_register_mode = "none";
defparam hex1_triBus4_4_.input_sync_reset = "none";
defparam hex1_triBus4_4_.oe_async_reset = "none";
defparam hex1_triBus4_4_.oe_power_up = "low";
defparam hex1_triBus4_4_.oe_register_mode = "none";
defparam hex1_triBus4_4_.oe_sync_reset = "none";
defparam hex1_triBus4_4_.operation_mode = "output";
defparam hex1_triBus4_4_.output_async_reset = "none";
defparam hex1_triBus4_4_.output_power_up = "low";
defparam hex1_triBus4_4_.output_register_mode = "none";
defparam hex1_triBus4_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[5]));
// synopsys translate_off
defparam hex1_triBus4_5_.input_async_reset = "none";
defparam hex1_triBus4_5_.input_power_up = "low";
defparam hex1_triBus4_5_.input_register_mode = "none";
defparam hex1_triBus4_5_.input_sync_reset = "none";
defparam hex1_triBus4_5_.oe_async_reset = "none";
defparam hex1_triBus4_5_.oe_power_up = "low";
defparam hex1_triBus4_5_.oe_register_mode = "none";
defparam hex1_triBus4_5_.oe_sync_reset = "none";
defparam hex1_triBus4_5_.operation_mode = "output";
defparam hex1_triBus4_5_.output_async_reset = "none";
defparam hex1_triBus4_5_.output_power_up = "low";
defparam hex1_triBus4_5_.output_register_mode = "none";
defparam hex1_triBus4_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[6]));
// synopsys translate_off
defparam hex1_triBus4_6_.input_async_reset = "none";
defparam hex1_triBus4_6_.input_power_up = "low";
defparam hex1_triBus4_6_.input_register_mode = "none";
defparam hex1_triBus4_6_.input_sync_reset = "none";
defparam hex1_triBus4_6_.oe_async_reset = "none";
defparam hex1_triBus4_6_.oe_power_up = "low";
defparam hex1_triBus4_6_.oe_register_mode = "none";
defparam hex1_triBus4_6_.oe_sync_reset = "none";
defparam hex1_triBus4_6_.operation_mode = "output";
defparam hex1_triBus4_6_.output_async_reset = "none";
defparam hex1_triBus4_6_.output_power_up = "low";
defparam hex1_triBus4_6_.output_register_mode = "none";
defparam hex1_triBus4_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[0]));
// synopsys translate_off
defparam hex2_triBus5_0_.input_async_reset = "none";
defparam hex2_triBus5_0_.input_power_up = "low";
defparam hex2_triBus5_0_.input_register_mode = "none";
defparam hex2_triBus5_0_.input_sync_reset = "none";
defparam hex2_triBus5_0_.oe_async_reset = "none";
defparam hex2_triBus5_0_.oe_power_up = "low";
defparam hex2_triBus5_0_.oe_register_mode = "none";
defparam hex2_triBus5_0_.oe_sync_reset = "none";
defparam hex2_triBus5_0_.operation_mode = "output";
defparam hex2_triBus5_0_.output_async_reset = "none";
defparam hex2_triBus5_0_.output_power_up = "low";
defparam hex2_triBus5_0_.output_register_mode = "none";
defparam hex2_triBus5_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[1]));
// synopsys translate_off
defparam hex2_triBus5_1_.input_async_reset = "none";
defparam hex2_triBus5_1_.input_power_up = "low";
defparam hex2_triBus5_1_.input_register_mode = "none";
defparam hex2_triBus5_1_.input_sync_reset = "none";
defparam hex2_triBus5_1_.oe_async_reset = "none";
defparam hex2_triBus5_1_.oe_power_up = "low";
defparam hex2_triBus5_1_.oe_register_mode = "none";
defparam hex2_triBus5_1_.oe_sync_reset = "none";
defparam hex2_triBus5_1_.operation_mode = "output";
defparam hex2_triBus5_1_.output_async_reset = "none";
defparam hex2_triBus5_1_.output_power_up = "low";
defparam hex2_triBus5_1_.output_register_mode = "none";
defparam hex2_triBus5_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[2]));
// synopsys translate_off
defparam hex2_triBus5_2_.input_async_reset = "none";
defparam hex2_triBus5_2_.input_power_up = "low";
defparam hex2_triBus5_2_.input_register_mode = "none";
defparam hex2_triBus5_2_.input_sync_reset = "none";
defparam hex2_triBus5_2_.oe_async_reset = "none";
defparam hex2_triBus5_2_.oe_power_up = "low";
defparam hex2_triBus5_2_.oe_register_mode = "none";
defparam hex2_triBus5_2_.oe_sync_reset = "none";
defparam hex2_triBus5_2_.operation_mode = "output";
defparam hex2_triBus5_2_.output_async_reset = "none";
defparam hex2_triBus5_2_.output_power_up = "low";
defparam hex2_triBus5_2_.output_register_mode = "none";
defparam hex2_triBus5_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[3]));
// synopsys translate_off
defparam hex2_triBus5_3_.input_async_reset = "none";
defparam hex2_triBus5_3_.input_power_up = "low";
defparam hex2_triBus5_3_.input_register_mode = "none";
defparam hex2_triBus5_3_.input_sync_reset = "none";
defparam hex2_triBus5_3_.oe_async_reset = "none";
defparam hex2_triBus5_3_.oe_power_up = "low";
defparam hex2_triBus5_3_.oe_register_mode = "none";
defparam hex2_triBus5_3_.oe_sync_reset = "none";
defparam hex2_triBus5_3_.operation_mode = "output";
defparam hex2_triBus5_3_.output_async_reset = "none";
defparam hex2_triBus5_3_.output_power_up = "low";
defparam hex2_triBus5_3_.output_register_mode = "none";
defparam hex2_triBus5_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[4]));
// synopsys translate_off
defparam hex2_triBus5_4_.input_async_reset = "none";
defparam hex2_triBus5_4_.input_power_up = "low";
defparam hex2_triBus5_4_.input_register_mode = "none";
defparam hex2_triBus5_4_.input_sync_reset = "none";
defparam hex2_triBus5_4_.oe_async_reset = "none";
defparam hex2_triBus5_4_.oe_power_up = "low";
defparam hex2_triBus5_4_.oe_register_mode = "none";
defparam hex2_triBus5_4_.oe_sync_reset = "none";
defparam hex2_triBus5_4_.operation_mode = "output";
defparam hex2_triBus5_4_.output_async_reset = "none";
defparam hex2_triBus5_4_.output_power_up = "low";
defparam hex2_triBus5_4_.output_register_mode = "none";
defparam hex2_triBus5_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[5]));
// synopsys translate_off
defparam hex2_triBus5_5_.input_async_reset = "none";
defparam hex2_triBus5_5_.input_power_up = "low";
defparam hex2_triBus5_5_.input_register_mode = "none";
defparam hex2_triBus5_5_.input_sync_reset = "none";
defparam hex2_triBus5_5_.oe_async_reset = "none";
defparam hex2_triBus5_5_.oe_power_up = "low";
defparam hex2_triBus5_5_.oe_register_mode = "none";
defparam hex2_triBus5_5_.oe_sync_reset = "none";
defparam hex2_triBus5_5_.operation_mode = "output";
defparam hex2_triBus5_5_.output_async_reset = "none";
defparam hex2_triBus5_5_.output_power_up = "low";
defparam hex2_triBus5_5_.output_register_mode = "none";
defparam hex2_triBus5_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[6]));
// synopsys translate_off
defparam hex2_triBus5_6_.input_async_reset = "none";
defparam hex2_triBus5_6_.input_power_up = "low";
defparam hex2_triBus5_6_.input_register_mode = "none";
defparam hex2_triBus5_6_.input_sync_reset = "none";
defparam hex2_triBus5_6_.oe_async_reset = "none";
defparam hex2_triBus5_6_.oe_power_up = "low";
defparam hex2_triBus5_6_.oe_register_mode = "none";
defparam hex2_triBus5_6_.oe_sync_reset = "none";
defparam hex2_triBus5_6_.operation_mode = "output";
defparam hex2_triBus5_6_.output_async_reset = "none";
defparam hex2_triBus5_6_.output_power_up = "low";
defparam hex2_triBus5_6_.output_register_mode = "none";
defparam hex2_triBus5_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_0_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[0]));
// synopsys translate_off
defparam hex3_triBus6_0_.input_async_reset = "none";
defparam hex3_triBus6_0_.input_power_up = "low";
defparam hex3_triBus6_0_.input_register_mode = "none";
defparam hex3_triBus6_0_.input_sync_reset = "none";
defparam hex3_triBus6_0_.oe_async_reset = "none";
defparam hex3_triBus6_0_.oe_power_up = "low";
defparam hex3_triBus6_0_.oe_register_mode = "none";
defparam hex3_triBus6_0_.oe_sync_reset = "none";
defparam hex3_triBus6_0_.operation_mode = "output";
defparam hex3_triBus6_0_.output_async_reset = "none";
defparam hex3_triBus6_0_.output_power_up = "low";
defparam hex3_triBus6_0_.output_register_mode = "none";
defparam hex3_triBus6_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_1_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[1]));
// synopsys translate_off
defparam hex3_triBus6_1_.input_async_reset = "none";
defparam hex3_triBus6_1_.input_power_up = "low";
defparam hex3_triBus6_1_.input_register_mode = "none";
defparam hex3_triBus6_1_.input_sync_reset = "none";
defparam hex3_triBus6_1_.oe_async_reset = "none";
defparam hex3_triBus6_1_.oe_power_up = "low";
defparam hex3_triBus6_1_.oe_register_mode = "none";
defparam hex3_triBus6_1_.oe_sync_reset = "none";
defparam hex3_triBus6_1_.operation_mode = "output";
defparam hex3_triBus6_1_.output_async_reset = "none";
defparam hex3_triBus6_1_.output_power_up = "low";
defparam hex3_triBus6_1_.output_register_mode = "none";
defparam hex3_triBus6_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_2_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[2]));
// synopsys translate_off
defparam hex3_triBus6_2_.input_async_reset = "none";
defparam hex3_triBus6_2_.input_power_up = "low";
defparam hex3_triBus6_2_.input_register_mode = "none";
defparam hex3_triBus6_2_.input_sync_reset = "none";
defparam hex3_triBus6_2_.oe_async_reset = "none";
defparam hex3_triBus6_2_.oe_power_up = "low";
defparam hex3_triBus6_2_.oe_register_mode = "none";
defparam hex3_triBus6_2_.oe_sync_reset = "none";
defparam hex3_triBus6_2_.operation_mode = "output";
defparam hex3_triBus6_2_.output_async_reset = "none";
defparam hex3_triBus6_2_.output_power_up = "low";
defparam hex3_triBus6_2_.output_register_mode = "none";
defparam hex3_triBus6_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_3_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[3]));
// synopsys translate_off
defparam hex3_triBus6_3_.input_async_reset = "none";
defparam hex3_triBus6_3_.input_power_up = "low";
defparam hex3_triBus6_3_.input_register_mode = "none";
defparam hex3_triBus6_3_.input_sync_reset = "none";
defparam hex3_triBus6_3_.oe_async_reset = "none";
defparam hex3_triBus6_3_.oe_power_up = "low";
defparam hex3_triBus6_3_.oe_register_mode = "none";
defparam hex3_triBus6_3_.oe_sync_reset = "none";
defparam hex3_triBus6_3_.operation_mode = "output";
defparam hex3_triBus6_3_.output_async_reset = "none";
defparam hex3_triBus6_3_.output_power_up = "low";
defparam hex3_triBus6_3_.output_register_mode = "none";
defparam hex3_triBus6_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_4_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[4]));
// synopsys translate_off
defparam hex3_triBus6_4_.input_async_reset = "none";
defparam hex3_triBus6_4_.input_power_up = "low";
defparam hex3_triBus6_4_.input_register_mode = "none";
defparam hex3_triBus6_4_.input_sync_reset = "none";
defparam hex3_triBus6_4_.oe_async_reset = "none";
defparam hex3_triBus6_4_.oe_power_up = "low";
defparam hex3_triBus6_4_.oe_register_mode = "none";
defparam hex3_triBus6_4_.oe_sync_reset = "none";
defparam hex3_triBus6_4_.operation_mode = "output";
defparam hex3_triBus6_4_.output_async_reset = "none";
defparam hex3_triBus6_4_.output_power_up = "low";
defparam hex3_triBus6_4_.output_register_mode = "none";
defparam hex3_triBus6_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_5_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[5]));
// synopsys translate_off
defparam hex3_triBus6_5_.input_async_reset = "none";
defparam hex3_triBus6_5_.input_power_up = "low";
defparam hex3_triBus6_5_.input_register_mode = "none";
defparam hex3_triBus6_5_.input_sync_reset = "none";
defparam hex3_triBus6_5_.oe_async_reset = "none";
defparam hex3_triBus6_5_.oe_power_up = "low";
defparam hex3_triBus6_5_.oe_register_mode = "none";
defparam hex3_triBus6_5_.oe_sync_reset = "none";
defparam hex3_triBus6_5_.operation_mode = "output";
defparam hex3_triBus6_5_.output_async_reset = "none";
defparam hex3_triBus6_5_.output_power_up = "low";
defparam hex3_triBus6_5_.output_register_mode = "none";
defparam hex3_triBus6_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_6_(
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[6]));
// synopsys translate_off
defparam hex3_triBus6_6_.input_async_reset = "none";
defparam hex3_triBus6_6_.input_power_up = "low";
defparam hex3_triBus6_6_.input_register_mode = "none";
defparam hex3_triBus6_6_.input_sync_reset = "none";
defparam hex3_triBus6_6_.oe_async_reset = "none";
defparam hex3_triBus6_6_.oe_power_up = "low";
defparam hex3_triBus6_6_.oe_register_mode = "none";
defparam hex3_triBus6_6_.oe_sync_reset = "none";
defparam hex3_triBus6_6_.operation_mode = "output";
defparam hex3_triBus6_6_.output_async_reset = "none";
defparam hex3_triBus6_6_.output_power_up = "low";
defparam hex3_triBus6_6_.output_register_mode = "none";
defparam hex3_triBus6_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_0_(
	.datain(hex4_dup0_0_),
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
	.padio(hex4[0]));
// synopsys translate_off
defparam hex4_obuf_0_.input_async_reset = "none";
defparam hex4_obuf_0_.input_power_up = "low";
defparam hex4_obuf_0_.input_register_mode = "none";
defparam hex4_obuf_0_.input_sync_reset = "none";
defparam hex4_obuf_0_.oe_async_reset = "none";
defparam hex4_obuf_0_.oe_power_up = "low";
defparam hex4_obuf_0_.oe_register_mode = "none";
defparam hex4_obuf_0_.oe_sync_reset = "none";
defparam hex4_obuf_0_.operation_mode = "output";
defparam hex4_obuf_0_.output_async_reset = "none";
defparam hex4_obuf_0_.output_power_up = "low";
defparam hex4_obuf_0_.output_register_mode = "none";
defparam hex4_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_1_(
	.datain(hex4_dup0_1_),
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
	.padio(hex4[1]));
// synopsys translate_off
defparam hex4_obuf_1_.input_async_reset = "none";
defparam hex4_obuf_1_.input_power_up = "low";
defparam hex4_obuf_1_.input_register_mode = "none";
defparam hex4_obuf_1_.input_sync_reset = "none";
defparam hex4_obuf_1_.oe_async_reset = "none";
defparam hex4_obuf_1_.oe_power_up = "low";
defparam hex4_obuf_1_.oe_register_mode = "none";
defparam hex4_obuf_1_.oe_sync_reset = "none";
defparam hex4_obuf_1_.operation_mode = "output";
defparam hex4_obuf_1_.output_async_reset = "none";
defparam hex4_obuf_1_.output_power_up = "low";
defparam hex4_obuf_1_.output_register_mode = "none";
defparam hex4_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_2_(
	.datain(hex4_dup0_2_),
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
	.padio(hex4[2]));
// synopsys translate_off
defparam hex4_obuf_2_.input_async_reset = "none";
defparam hex4_obuf_2_.input_power_up = "low";
defparam hex4_obuf_2_.input_register_mode = "none";
defparam hex4_obuf_2_.input_sync_reset = "none";
defparam hex4_obuf_2_.oe_async_reset = "none";
defparam hex4_obuf_2_.oe_power_up = "low";
defparam hex4_obuf_2_.oe_register_mode = "none";
defparam hex4_obuf_2_.oe_sync_reset = "none";
defparam hex4_obuf_2_.operation_mode = "output";
defparam hex4_obuf_2_.output_async_reset = "none";
defparam hex4_obuf_2_.output_power_up = "low";
defparam hex4_obuf_2_.output_register_mode = "none";
defparam hex4_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_3_(
	.datain(hex4_dup0_3_),
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
	.padio(hex4[3]));
// synopsys translate_off
defparam hex4_obuf_3_.input_async_reset = "none";
defparam hex4_obuf_3_.input_power_up = "low";
defparam hex4_obuf_3_.input_register_mode = "none";
defparam hex4_obuf_3_.input_sync_reset = "none";
defparam hex4_obuf_3_.oe_async_reset = "none";
defparam hex4_obuf_3_.oe_power_up = "low";
defparam hex4_obuf_3_.oe_register_mode = "none";
defparam hex4_obuf_3_.oe_sync_reset = "none";
defparam hex4_obuf_3_.operation_mode = "output";
defparam hex4_obuf_3_.output_async_reset = "none";
defparam hex4_obuf_3_.output_power_up = "low";
defparam hex4_obuf_3_.output_register_mode = "none";
defparam hex4_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_4_(
	.datain(hex4_dup0_4_),
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
	.padio(hex4[4]));
// synopsys translate_off
defparam hex4_obuf_4_.input_async_reset = "none";
defparam hex4_obuf_4_.input_power_up = "low";
defparam hex4_obuf_4_.input_register_mode = "none";
defparam hex4_obuf_4_.input_sync_reset = "none";
defparam hex4_obuf_4_.oe_async_reset = "none";
defparam hex4_obuf_4_.oe_power_up = "low";
defparam hex4_obuf_4_.oe_register_mode = "none";
defparam hex4_obuf_4_.oe_sync_reset = "none";
defparam hex4_obuf_4_.operation_mode = "output";
defparam hex4_obuf_4_.output_async_reset = "none";
defparam hex4_obuf_4_.output_power_up = "low";
defparam hex4_obuf_4_.output_register_mode = "none";
defparam hex4_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_5_(
	.datain(hex4_dup0_5_),
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
	.padio(hex4[5]));
// synopsys translate_off
defparam hex4_obuf_5_.input_async_reset = "none";
defparam hex4_obuf_5_.input_power_up = "low";
defparam hex4_obuf_5_.input_register_mode = "none";
defparam hex4_obuf_5_.input_sync_reset = "none";
defparam hex4_obuf_5_.oe_async_reset = "none";
defparam hex4_obuf_5_.oe_power_up = "low";
defparam hex4_obuf_5_.oe_register_mode = "none";
defparam hex4_obuf_5_.oe_sync_reset = "none";
defparam hex4_obuf_5_.operation_mode = "output";
defparam hex4_obuf_5_.output_async_reset = "none";
defparam hex4_obuf_5_.output_power_up = "low";
defparam hex4_obuf_5_.output_register_mode = "none";
defparam hex4_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_6_(
	.datain(hex4_dup0_6_),
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
	.padio(hex4[6]));
// synopsys translate_off
defparam hex4_obuf_6_.input_async_reset = "none";
defparam hex4_obuf_6_.input_power_up = "low";
defparam hex4_obuf_6_.input_register_mode = "none";
defparam hex4_obuf_6_.input_sync_reset = "none";
defparam hex4_obuf_6_.oe_async_reset = "none";
defparam hex4_obuf_6_.oe_power_up = "low";
defparam hex4_obuf_6_.oe_register_mode = "none";
defparam hex4_obuf_6_.oe_sync_reset = "none";
defparam hex4_obuf_6_.operation_mode = "output";
defparam hex4_obuf_6_.output_async_reset = "none";
defparam hex4_obuf_6_.output_power_up = "low";
defparam hex4_obuf_6_.output_register_mode = "none";
defparam hex4_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_0_(
	.datain(hex5_dup0_0_),
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
	.padio(hex5[0]));
// synopsys translate_off
defparam hex5_obuf_0_.input_async_reset = "none";
defparam hex5_obuf_0_.input_power_up = "low";
defparam hex5_obuf_0_.input_register_mode = "none";
defparam hex5_obuf_0_.input_sync_reset = "none";
defparam hex5_obuf_0_.oe_async_reset = "none";
defparam hex5_obuf_0_.oe_power_up = "low";
defparam hex5_obuf_0_.oe_register_mode = "none";
defparam hex5_obuf_0_.oe_sync_reset = "none";
defparam hex5_obuf_0_.operation_mode = "output";
defparam hex5_obuf_0_.output_async_reset = "none";
defparam hex5_obuf_0_.output_power_up = "low";
defparam hex5_obuf_0_.output_register_mode = "none";
defparam hex5_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_1_(
	.datain(hex5_dup0_1_),
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
	.padio(hex5[1]));
// synopsys translate_off
defparam hex5_obuf_1_.input_async_reset = "none";
defparam hex5_obuf_1_.input_power_up = "low";
defparam hex5_obuf_1_.input_register_mode = "none";
defparam hex5_obuf_1_.input_sync_reset = "none";
defparam hex5_obuf_1_.oe_async_reset = "none";
defparam hex5_obuf_1_.oe_power_up = "low";
defparam hex5_obuf_1_.oe_register_mode = "none";
defparam hex5_obuf_1_.oe_sync_reset = "none";
defparam hex5_obuf_1_.operation_mode = "output";
defparam hex5_obuf_1_.output_async_reset = "none";
defparam hex5_obuf_1_.output_power_up = "low";
defparam hex5_obuf_1_.output_register_mode = "none";
defparam hex5_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_2_(
	.datain(hex5_dup0_2_),
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
	.padio(hex5[2]));
// synopsys translate_off
defparam hex5_obuf_2_.input_async_reset = "none";
defparam hex5_obuf_2_.input_power_up = "low";
defparam hex5_obuf_2_.input_register_mode = "none";
defparam hex5_obuf_2_.input_sync_reset = "none";
defparam hex5_obuf_2_.oe_async_reset = "none";
defparam hex5_obuf_2_.oe_power_up = "low";
defparam hex5_obuf_2_.oe_register_mode = "none";
defparam hex5_obuf_2_.oe_sync_reset = "none";
defparam hex5_obuf_2_.operation_mode = "output";
defparam hex5_obuf_2_.output_async_reset = "none";
defparam hex5_obuf_2_.output_power_up = "low";
defparam hex5_obuf_2_.output_register_mode = "none";
defparam hex5_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_3_(
	.datain(hex5_dup0_3_),
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
	.padio(hex5[3]));
// synopsys translate_off
defparam hex5_obuf_3_.input_async_reset = "none";
defparam hex5_obuf_3_.input_power_up = "low";
defparam hex5_obuf_3_.input_register_mode = "none";
defparam hex5_obuf_3_.input_sync_reset = "none";
defparam hex5_obuf_3_.oe_async_reset = "none";
defparam hex5_obuf_3_.oe_power_up = "low";
defparam hex5_obuf_3_.oe_register_mode = "none";
defparam hex5_obuf_3_.oe_sync_reset = "none";
defparam hex5_obuf_3_.operation_mode = "output";
defparam hex5_obuf_3_.output_async_reset = "none";
defparam hex5_obuf_3_.output_power_up = "low";
defparam hex5_obuf_3_.output_register_mode = "none";
defparam hex5_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_4_(
	.datain(hex5_dup0_4_),
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
	.padio(hex5[4]));
// synopsys translate_off
defparam hex5_obuf_4_.input_async_reset = "none";
defparam hex5_obuf_4_.input_power_up = "low";
defparam hex5_obuf_4_.input_register_mode = "none";
defparam hex5_obuf_4_.input_sync_reset = "none";
defparam hex5_obuf_4_.oe_async_reset = "none";
defparam hex5_obuf_4_.oe_power_up = "low";
defparam hex5_obuf_4_.oe_register_mode = "none";
defparam hex5_obuf_4_.oe_sync_reset = "none";
defparam hex5_obuf_4_.operation_mode = "output";
defparam hex5_obuf_4_.output_async_reset = "none";
defparam hex5_obuf_4_.output_power_up = "low";
defparam hex5_obuf_4_.output_register_mode = "none";
defparam hex5_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_5_(
	.datain(hex5_dup0_5_),
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
	.padio(hex5[5]));
// synopsys translate_off
defparam hex5_obuf_5_.input_async_reset = "none";
defparam hex5_obuf_5_.input_power_up = "low";
defparam hex5_obuf_5_.input_register_mode = "none";
defparam hex5_obuf_5_.input_sync_reset = "none";
defparam hex5_obuf_5_.oe_async_reset = "none";
defparam hex5_obuf_5_.oe_power_up = "low";
defparam hex5_obuf_5_.oe_register_mode = "none";
defparam hex5_obuf_5_.oe_sync_reset = "none";
defparam hex5_obuf_5_.operation_mode = "output";
defparam hex5_obuf_5_.output_async_reset = "none";
defparam hex5_obuf_5_.output_power_up = "low";
defparam hex5_obuf_5_.output_register_mode = "none";
defparam hex5_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_6_(
	.datain(hex5_dup0_6_),
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
	.padio(hex5[6]));
// synopsys translate_off
defparam hex5_obuf_6_.input_async_reset = "none";
defparam hex5_obuf_6_.input_power_up = "low";
defparam hex5_obuf_6_.input_register_mode = "none";
defparam hex5_obuf_6_.input_sync_reset = "none";
defparam hex5_obuf_6_.oe_async_reset = "none";
defparam hex5_obuf_6_.oe_power_up = "low";
defparam hex5_obuf_6_.oe_register_mode = "none";
defparam hex5_obuf_6_.oe_sync_reset = "none";
defparam hex5_obuf_6_.operation_mode = "output";
defparam hex5_obuf_6_.output_async_reset = "none";
defparam hex5_obuf_6_.output_power_up = "low";
defparam hex5_obuf_6_.output_register_mode = "none";
defparam hex5_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_0_(
	.datain(hex6_dup0_0_),
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
	.padio(hex6[0]));
// synopsys translate_off
defparam hex6_obuf_0_.input_async_reset = "none";
defparam hex6_obuf_0_.input_power_up = "low";
defparam hex6_obuf_0_.input_register_mode = "none";
defparam hex6_obuf_0_.input_sync_reset = "none";
defparam hex6_obuf_0_.oe_async_reset = "none";
defparam hex6_obuf_0_.oe_power_up = "low";
defparam hex6_obuf_0_.oe_register_mode = "none";
defparam hex6_obuf_0_.oe_sync_reset = "none";
defparam hex6_obuf_0_.operation_mode = "output";
defparam hex6_obuf_0_.output_async_reset = "none";
defparam hex6_obuf_0_.output_power_up = "low";
defparam hex6_obuf_0_.output_register_mode = "none";
defparam hex6_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_1_(
	.datain(hex6_dup0_1_),
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
	.padio(hex6[1]));
// synopsys translate_off
defparam hex6_obuf_1_.input_async_reset = "none";
defparam hex6_obuf_1_.input_power_up = "low";
defparam hex6_obuf_1_.input_register_mode = "none";
defparam hex6_obuf_1_.input_sync_reset = "none";
defparam hex6_obuf_1_.oe_async_reset = "none";
defparam hex6_obuf_1_.oe_power_up = "low";
defparam hex6_obuf_1_.oe_register_mode = "none";
defparam hex6_obuf_1_.oe_sync_reset = "none";
defparam hex6_obuf_1_.operation_mode = "output";
defparam hex6_obuf_1_.output_async_reset = "none";
defparam hex6_obuf_1_.output_power_up = "low";
defparam hex6_obuf_1_.output_register_mode = "none";
defparam hex6_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_2_(
	.datain(hex6_dup0_2_),
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
	.padio(hex6[2]));
// synopsys translate_off
defparam hex6_obuf_2_.input_async_reset = "none";
defparam hex6_obuf_2_.input_power_up = "low";
defparam hex6_obuf_2_.input_register_mode = "none";
defparam hex6_obuf_2_.input_sync_reset = "none";
defparam hex6_obuf_2_.oe_async_reset = "none";
defparam hex6_obuf_2_.oe_power_up = "low";
defparam hex6_obuf_2_.oe_register_mode = "none";
defparam hex6_obuf_2_.oe_sync_reset = "none";
defparam hex6_obuf_2_.operation_mode = "output";
defparam hex6_obuf_2_.output_async_reset = "none";
defparam hex6_obuf_2_.output_power_up = "low";
defparam hex6_obuf_2_.output_register_mode = "none";
defparam hex6_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_3_(
	.datain(hex6_dup0_3_),
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
	.padio(hex6[3]));
// synopsys translate_off
defparam hex6_obuf_3_.input_async_reset = "none";
defparam hex6_obuf_3_.input_power_up = "low";
defparam hex6_obuf_3_.input_register_mode = "none";
defparam hex6_obuf_3_.input_sync_reset = "none";
defparam hex6_obuf_3_.oe_async_reset = "none";
defparam hex6_obuf_3_.oe_power_up = "low";
defparam hex6_obuf_3_.oe_register_mode = "none";
defparam hex6_obuf_3_.oe_sync_reset = "none";
defparam hex6_obuf_3_.operation_mode = "output";
defparam hex6_obuf_3_.output_async_reset = "none";
defparam hex6_obuf_3_.output_power_up = "low";
defparam hex6_obuf_3_.output_register_mode = "none";
defparam hex6_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_4_(
	.datain(hex6_dup0_4_),
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
	.padio(hex6[4]));
// synopsys translate_off
defparam hex6_obuf_4_.input_async_reset = "none";
defparam hex6_obuf_4_.input_power_up = "low";
defparam hex6_obuf_4_.input_register_mode = "none";
defparam hex6_obuf_4_.input_sync_reset = "none";
defparam hex6_obuf_4_.oe_async_reset = "none";
defparam hex6_obuf_4_.oe_power_up = "low";
defparam hex6_obuf_4_.oe_register_mode = "none";
defparam hex6_obuf_4_.oe_sync_reset = "none";
defparam hex6_obuf_4_.operation_mode = "output";
defparam hex6_obuf_4_.output_async_reset = "none";
defparam hex6_obuf_4_.output_power_up = "low";
defparam hex6_obuf_4_.output_register_mode = "none";
defparam hex6_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_5_(
	.datain(hex6_dup0_5_),
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
	.padio(hex6[5]));
// synopsys translate_off
defparam hex6_obuf_5_.input_async_reset = "none";
defparam hex6_obuf_5_.input_power_up = "low";
defparam hex6_obuf_5_.input_register_mode = "none";
defparam hex6_obuf_5_.input_sync_reset = "none";
defparam hex6_obuf_5_.oe_async_reset = "none";
defparam hex6_obuf_5_.oe_power_up = "low";
defparam hex6_obuf_5_.oe_register_mode = "none";
defparam hex6_obuf_5_.oe_sync_reset = "none";
defparam hex6_obuf_5_.operation_mode = "output";
defparam hex6_obuf_5_.output_async_reset = "none";
defparam hex6_obuf_5_.output_power_up = "low";
defparam hex6_obuf_5_.output_register_mode = "none";
defparam hex6_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_6_(
	.datain(hex6_dup0_6_),
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
	.padio(hex6[6]));
// synopsys translate_off
defparam hex6_obuf_6_.input_async_reset = "none";
defparam hex6_obuf_6_.input_power_up = "low";
defparam hex6_obuf_6_.input_register_mode = "none";
defparam hex6_obuf_6_.input_sync_reset = "none";
defparam hex6_obuf_6_.oe_async_reset = "none";
defparam hex6_obuf_6_.oe_power_up = "low";
defparam hex6_obuf_6_.oe_register_mode = "none";
defparam hex6_obuf_6_.oe_sync_reset = "none";
defparam hex6_obuf_6_.operation_mode = "output";
defparam hex6_obuf_6_.output_async_reset = "none";
defparam hex6_obuf_6_.output_power_up = "low";
defparam hex6_obuf_6_.output_register_mode = "none";
defparam hex6_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_0_(
	.datain(hex7_dup0_0_),
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
	.padio(hex7[0]));
// synopsys translate_off
defparam hex7_obuf_0_.input_async_reset = "none";
defparam hex7_obuf_0_.input_power_up = "low";
defparam hex7_obuf_0_.input_register_mode = "none";
defparam hex7_obuf_0_.input_sync_reset = "none";
defparam hex7_obuf_0_.oe_async_reset = "none";
defparam hex7_obuf_0_.oe_power_up = "low";
defparam hex7_obuf_0_.oe_register_mode = "none";
defparam hex7_obuf_0_.oe_sync_reset = "none";
defparam hex7_obuf_0_.operation_mode = "output";
defparam hex7_obuf_0_.output_async_reset = "none";
defparam hex7_obuf_0_.output_power_up = "low";
defparam hex7_obuf_0_.output_register_mode = "none";
defparam hex7_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_1_(
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
	.padio(hex7[1]));
// synopsys translate_off
defparam hex7_obuf_1_.input_async_reset = "none";
defparam hex7_obuf_1_.input_power_up = "low";
defparam hex7_obuf_1_.input_register_mode = "none";
defparam hex7_obuf_1_.input_sync_reset = "none";
defparam hex7_obuf_1_.oe_async_reset = "none";
defparam hex7_obuf_1_.oe_power_up = "low";
defparam hex7_obuf_1_.oe_register_mode = "none";
defparam hex7_obuf_1_.oe_sync_reset = "none";
defparam hex7_obuf_1_.operation_mode = "output";
defparam hex7_obuf_1_.output_async_reset = "none";
defparam hex7_obuf_1_.output_power_up = "low";
defparam hex7_obuf_1_.output_register_mode = "none";
defparam hex7_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_2_(
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
	.padio(hex7[2]));
// synopsys translate_off
defparam hex7_obuf_2_.input_async_reset = "none";
defparam hex7_obuf_2_.input_power_up = "low";
defparam hex7_obuf_2_.input_register_mode = "none";
defparam hex7_obuf_2_.input_sync_reset = "none";
defparam hex7_obuf_2_.oe_async_reset = "none";
defparam hex7_obuf_2_.oe_power_up = "low";
defparam hex7_obuf_2_.oe_register_mode = "none";
defparam hex7_obuf_2_.oe_sync_reset = "none";
defparam hex7_obuf_2_.operation_mode = "output";
defparam hex7_obuf_2_.output_async_reset = "none";
defparam hex7_obuf_2_.output_power_up = "low";
defparam hex7_obuf_2_.output_register_mode = "none";
defparam hex7_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_3_(
	.datain(hex7_dup0_0_),
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
	.padio(hex7[3]));
// synopsys translate_off
defparam hex7_obuf_3_.input_async_reset = "none";
defparam hex7_obuf_3_.input_power_up = "low";
defparam hex7_obuf_3_.input_register_mode = "none";
defparam hex7_obuf_3_.input_sync_reset = "none";
defparam hex7_obuf_3_.oe_async_reset = "none";
defparam hex7_obuf_3_.oe_power_up = "low";
defparam hex7_obuf_3_.oe_register_mode = "none";
defparam hex7_obuf_3_.oe_sync_reset = "none";
defparam hex7_obuf_3_.operation_mode = "output";
defparam hex7_obuf_3_.output_async_reset = "none";
defparam hex7_obuf_3_.output_power_up = "low";
defparam hex7_obuf_3_.output_register_mode = "none";
defparam hex7_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_4_(
	.datain(hex7_dup0_0_),
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
	.padio(hex7[4]));
// synopsys translate_off
defparam hex7_obuf_4_.input_async_reset = "none";
defparam hex7_obuf_4_.input_power_up = "low";
defparam hex7_obuf_4_.input_register_mode = "none";
defparam hex7_obuf_4_.input_sync_reset = "none";
defparam hex7_obuf_4_.oe_async_reset = "none";
defparam hex7_obuf_4_.oe_power_up = "low";
defparam hex7_obuf_4_.oe_register_mode = "none";
defparam hex7_obuf_4_.oe_sync_reset = "none";
defparam hex7_obuf_4_.operation_mode = "output";
defparam hex7_obuf_4_.output_async_reset = "none";
defparam hex7_obuf_4_.output_power_up = "low";
defparam hex7_obuf_4_.output_register_mode = "none";
defparam hex7_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_5_(
	.datain(hex7_dup0_0_),
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
	.padio(hex7[5]));
// synopsys translate_off
defparam hex7_obuf_5_.input_async_reset = "none";
defparam hex7_obuf_5_.input_power_up = "low";
defparam hex7_obuf_5_.input_register_mode = "none";
defparam hex7_obuf_5_.input_sync_reset = "none";
defparam hex7_obuf_5_.oe_async_reset = "none";
defparam hex7_obuf_5_.oe_power_up = "low";
defparam hex7_obuf_5_.oe_register_mode = "none";
defparam hex7_obuf_5_.oe_sync_reset = "none";
defparam hex7_obuf_5_.operation_mode = "output";
defparam hex7_obuf_5_.output_async_reset = "none";
defparam hex7_obuf_5_.output_power_up = "low";
defparam hex7_obuf_5_.output_register_mode = "none";
defparam hex7_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_6_(
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
	.padio(hex7[6]));
// synopsys translate_off
defparam hex7_obuf_6_.input_async_reset = "none";
defparam hex7_obuf_6_.input_power_up = "low";
defparam hex7_obuf_6_.input_register_mode = "none";
defparam hex7_obuf_6_.input_sync_reset = "none";
defparam hex7_obuf_6_.oe_async_reset = "none";
defparam hex7_obuf_6_.oe_power_up = "low";
defparam hex7_obuf_6_.oe_register_mode = "none";
defparam hex7_obuf_6_.oe_sync_reset = "none";
defparam hex7_obuf_6_.operation_mode = "output";
defparam hex7_obuf_6_.output_async_reset = "none";
defparam hex7_obuf_6_.output_power_up = "low";
defparam hex7_obuf_6_.output_register_mode = "none";
defparam hex7_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io aud_xck_obuf(
	.datain(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
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
	.padio(aud_xck));
// synopsys translate_off
defparam aud_xck_obuf.input_async_reset = "none";
defparam aud_xck_obuf.input_power_up = "low";
defparam aud_xck_obuf.input_register_mode = "none";
defparam aud_xck_obuf.input_sync_reset = "none";
defparam aud_xck_obuf.oe_async_reset = "none";
defparam aud_xck_obuf.oe_power_up = "low";
defparam aud_xck_obuf.oe_register_mode = "none";
defparam aud_xck_obuf.oe_sync_reset = "none";
defparam aud_xck_obuf.operation_mode = "output";
defparam aud_xck_obuf.output_async_reset = "none";
defparam aud_xck_obuf.output_power_up = "low";
defparam aud_xck_obuf.output_register_mode = "none";
defparam aud_xck_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io aud_dacdat_obuf(
	.datain(aud_dacdat_dup0),
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
	.padio(aud_dacdat));
// synopsys translate_off
defparam aud_dacdat_obuf.input_async_reset = "none";
defparam aud_dacdat_obuf.input_power_up = "low";
defparam aud_dacdat_obuf.input_register_mode = "none";
defparam aud_dacdat_obuf.input_sync_reset = "none";
defparam aud_dacdat_obuf.oe_async_reset = "none";
defparam aud_dacdat_obuf.oe_power_up = "low";
defparam aud_dacdat_obuf.oe_register_mode = "none";
defparam aud_dacdat_obuf.oe_sync_reset = "none";
defparam aud_dacdat_obuf.operation_mode = "output";
defparam aud_dacdat_obuf.output_async_reset = "none";
defparam aud_dacdat_obuf.output_power_up = "low";
defparam aud_dacdat_obuf.output_register_mode = "none";
defparam aud_dacdat_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io aud_daclrck_obuf(
	.datain(aud_adclrck_dup0),
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
	.padio(aud_daclrck));
// synopsys translate_off
defparam aud_daclrck_obuf.input_async_reset = "none";
defparam aud_daclrck_obuf.input_power_up = "low";
defparam aud_daclrck_obuf.input_register_mode = "none";
defparam aud_daclrck_obuf.input_sync_reset = "none";
defparam aud_daclrck_obuf.oe_async_reset = "none";
defparam aud_daclrck_obuf.oe_power_up = "low";
defparam aud_daclrck_obuf.oe_register_mode = "none";
defparam aud_daclrck_obuf.oe_sync_reset = "none";
defparam aud_daclrck_obuf.operation_mode = "output";
defparam aud_daclrck_obuf.output_async_reset = "none";
defparam aud_daclrck_obuf.output_power_up = "low";
defparam aud_daclrck_obuf.output_register_mode = "none";
defparam aud_daclrck_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io aud_adclrck_obuf(
	.datain(aud_adclrck_dup0),
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
	.padio(aud_adclrck));
// synopsys translate_off
defparam aud_adclrck_obuf.input_async_reset = "none";
defparam aud_adclrck_obuf.input_power_up = "low";
defparam aud_adclrck_obuf.input_register_mode = "none";
defparam aud_adclrck_obuf.input_sync_reset = "none";
defparam aud_adclrck_obuf.oe_async_reset = "none";
defparam aud_adclrck_obuf.oe_power_up = "low";
defparam aud_adclrck_obuf.oe_register_mode = "none";
defparam aud_adclrck_obuf.oe_sync_reset = "none";
defparam aud_adclrck_obuf.operation_mode = "output";
defparam aud_adclrck_obuf.output_async_reset = "none";
defparam aud_adclrck_obuf.output_power_up = "low";
defparam aud_adclrck_obuf.output_register_mode = "none";
defparam aud_adclrck_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io i2c_sclk_obuf(
	.datain(\u_i2c_av_config|u0|p_i2c_sclk ),
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
	.padio(i2c_sclk));
// synopsys translate_off
defparam i2c_sclk_obuf.input_async_reset = "none";
defparam i2c_sclk_obuf.input_power_up = "low";
defparam i2c_sclk_obuf.input_register_mode = "none";
defparam i2c_sclk_obuf.input_sync_reset = "none";
defparam i2c_sclk_obuf.oe_async_reset = "none";
defparam i2c_sclk_obuf.oe_power_up = "low";
defparam i2c_sclk_obuf.oe_register_mode = "none";
defparam i2c_sclk_obuf.oe_sync_reset = "none";
defparam i2c_sclk_obuf.operation_mode = "output";
defparam i2c_sclk_obuf.output_async_reset = "none";
defparam i2c_sclk_obuf.output_power_up = "low";
defparam i2c_sclk_obuf.output_register_mode = "none";
defparam i2c_sclk_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_i2c_av_config_u0_ix31977z43919(
	.datain(!\u_i2c_av_config|u0|nx51857z1 ),
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
	.padio(i2c_sdat));
// synopsys translate_off
defparam u_i2c_av_config_u0_ix31977z43919.input_async_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.input_power_up = "low";
defparam u_i2c_av_config_u0_ix31977z43919.input_register_mode = "none";
defparam u_i2c_av_config_u0_ix31977z43919.input_sync_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.oe_async_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.oe_power_up = "low";
defparam u_i2c_av_config_u0_ix31977z43919.oe_register_mode = "none";
defparam u_i2c_av_config_u0_ix31977z43919.oe_sync_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.open_drain_output = "true";
defparam u_i2c_av_config_u0_ix31977z43919.operation_mode = "bidir";
defparam u_i2c_av_config_u0_ix31977z43919.output_async_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.output_power_up = "low";
defparam u_i2c_av_config_u0_ix31977z43919.output_register_mode = "none";
defparam u_i2c_av_config_u0_ix31977z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \aud_bclk~I (
	.datain(aud_bclk_dup0),
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
	.padio(aud_bclk));
// synopsys translate_off
defparam \aud_bclk~I .input_async_reset = "none";
defparam \aud_bclk~I .input_power_up = "low";
defparam \aud_bclk~I .input_register_mode = "none";
defparam \aud_bclk~I .input_sync_reset = "none";
defparam \aud_bclk~I .oe_async_reset = "none";
defparam \aud_bclk~I .oe_power_up = "low";
defparam \aud_bclk~I .oe_register_mode = "none";
defparam \aud_bclk~I .oe_sync_reset = "none";
defparam \aud_bclk~I .operation_mode = "bidir";
defparam \aud_bclk~I .output_async_reset = "none";
defparam \aud_bclk~I .output_power_up = "low";
defparam \aud_bclk~I .output_register_mode = "none";
defparam \aud_bclk~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \clock_50~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clock_50));
// synopsys translate_off
defparam \clock_50~I .input_async_reset = "none";
defparam \clock_50~I .input_power_up = "low";
defparam \clock_50~I .input_register_mode = "none";
defparam \clock_50~I .input_sync_reset = "none";
defparam \clock_50~I .oe_async_reset = "none";
defparam \clock_50~I .oe_power_up = "low";
defparam \clock_50~I .oe_register_mode = "none";
defparam \clock_50~I .oe_sync_reset = "none";
defparam \clock_50~I .operation_mode = "input";
defparam \clock_50~I .output_async_reset = "none";
defparam \clock_50~I .output_power_up = "low";
defparam \clock_50~I .output_register_mode = "none";
defparam \clock_50~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \key[1]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(key[1]));
// synopsys translate_off
defparam \key[1]~I .input_async_reset = "none";
defparam \key[1]~I .input_power_up = "low";
defparam \key[1]~I .input_register_mode = "none";
defparam \key[1]~I .input_sync_reset = "none";
defparam \key[1]~I .oe_async_reset = "none";
defparam \key[1]~I .oe_power_up = "low";
defparam \key[1]~I .oe_register_mode = "none";
defparam \key[1]~I .oe_sync_reset = "none";
defparam \key[1]~I .operation_mode = "input";
defparam \key[1]~I .output_async_reset = "none";
defparam \key[1]~I .output_power_up = "low";
defparam \key[1]~I .output_register_mode = "none";
defparam \key[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \key[2]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(key[2]));
// synopsys translate_off
defparam \key[2]~I .input_async_reset = "none";
defparam \key[2]~I .input_power_up = "low";
defparam \key[2]~I .input_register_mode = "none";
defparam \key[2]~I .input_sync_reset = "none";
defparam \key[2]~I .oe_async_reset = "none";
defparam \key[2]~I .oe_power_up = "low";
defparam \key[2]~I .oe_register_mode = "none";
defparam \key[2]~I .oe_sync_reset = "none";
defparam \key[2]~I .operation_mode = "input";
defparam \key[2]~I .output_async_reset = "none";
defparam \key[2]~I .output_power_up = "low";
defparam \key[2]~I .output_register_mode = "none";
defparam \key[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \key[3]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(key[3]));
// synopsys translate_off
defparam \key[3]~I .input_async_reset = "none";
defparam \key[3]~I .input_power_up = "low";
defparam \key[3]~I .input_register_mode = "none";
defparam \key[3]~I .input_sync_reset = "none";
defparam \key[3]~I .oe_async_reset = "none";
defparam \key[3]~I .oe_power_up = "low";
defparam \key[3]~I .oe_register_mode = "none";
defparam \key[3]~I .oe_sync_reset = "none";
defparam \key[3]~I .operation_mode = "input";
defparam \key[3]~I .output_async_reset = "none";
defparam \key[3]~I .output_power_up = "low";
defparam \key[3]~I .output_register_mode = "none";
defparam \key[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[7]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[7]));
// synopsys translate_off
defparam \sw[7]~I .input_async_reset = "none";
defparam \sw[7]~I .input_power_up = "low";
defparam \sw[7]~I .input_register_mode = "none";
defparam \sw[7]~I .input_sync_reset = "none";
defparam \sw[7]~I .oe_async_reset = "none";
defparam \sw[7]~I .oe_power_up = "low";
defparam \sw[7]~I .oe_register_mode = "none";
defparam \sw[7]~I .oe_sync_reset = "none";
defparam \sw[7]~I .operation_mode = "input";
defparam \sw[7]~I .output_async_reset = "none";
defparam \sw[7]~I .output_power_up = "low";
defparam \sw[7]~I .output_register_mode = "none";
defparam \sw[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[8]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[8]));
// synopsys translate_off
defparam \sw[8]~I .input_async_reset = "none";
defparam \sw[8]~I .input_power_up = "low";
defparam \sw[8]~I .input_register_mode = "none";
defparam \sw[8]~I .input_sync_reset = "none";
defparam \sw[8]~I .oe_async_reset = "none";
defparam \sw[8]~I .oe_power_up = "low";
defparam \sw[8]~I .oe_register_mode = "none";
defparam \sw[8]~I .oe_sync_reset = "none";
defparam \sw[8]~I .operation_mode = "input";
defparam \sw[8]~I .output_async_reset = "none";
defparam \sw[8]~I .output_power_up = "low";
defparam \sw[8]~I .output_register_mode = "none";
defparam \sw[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[9]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[9]));
// synopsys translate_off
defparam \sw[9]~I .input_async_reset = "none";
defparam \sw[9]~I .input_power_up = "low";
defparam \sw[9]~I .input_register_mode = "none";
defparam \sw[9]~I .input_sync_reset = "none";
defparam \sw[9]~I .oe_async_reset = "none";
defparam \sw[9]~I .oe_power_up = "low";
defparam \sw[9]~I .oe_register_mode = "none";
defparam \sw[9]~I .oe_sync_reset = "none";
defparam \sw[9]~I .operation_mode = "input";
defparam \sw[9]~I .output_async_reset = "none";
defparam \sw[9]~I .output_power_up = "low";
defparam \sw[9]~I .output_register_mode = "none";
defparam \sw[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[10]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[10]));
// synopsys translate_off
defparam \sw[10]~I .input_async_reset = "none";
defparam \sw[10]~I .input_power_up = "low";
defparam \sw[10]~I .input_register_mode = "none";
defparam \sw[10]~I .input_sync_reset = "none";
defparam \sw[10]~I .oe_async_reset = "none";
defparam \sw[10]~I .oe_power_up = "low";
defparam \sw[10]~I .oe_register_mode = "none";
defparam \sw[10]~I .oe_sync_reset = "none";
defparam \sw[10]~I .operation_mode = "input";
defparam \sw[10]~I .output_async_reset = "none";
defparam \sw[10]~I .output_power_up = "low";
defparam \sw[10]~I .output_register_mode = "none";
defparam \sw[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[11]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[11]));
// synopsys translate_off
defparam \sw[11]~I .input_async_reset = "none";
defparam \sw[11]~I .input_power_up = "low";
defparam \sw[11]~I .input_register_mode = "none";
defparam \sw[11]~I .input_sync_reset = "none";
defparam \sw[11]~I .oe_async_reset = "none";
defparam \sw[11]~I .oe_power_up = "low";
defparam \sw[11]~I .oe_register_mode = "none";
defparam \sw[11]~I .oe_sync_reset = "none";
defparam \sw[11]~I .operation_mode = "input";
defparam \sw[11]~I .output_async_reset = "none";
defparam \sw[11]~I .output_power_up = "low";
defparam \sw[11]~I .output_register_mode = "none";
defparam \sw[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[12]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[12]));
// synopsys translate_off
defparam \sw[12]~I .input_async_reset = "none";
defparam \sw[12]~I .input_power_up = "low";
defparam \sw[12]~I .input_register_mode = "none";
defparam \sw[12]~I .input_sync_reset = "none";
defparam \sw[12]~I .oe_async_reset = "none";
defparam \sw[12]~I .oe_power_up = "low";
defparam \sw[12]~I .oe_register_mode = "none";
defparam \sw[12]~I .oe_sync_reset = "none";
defparam \sw[12]~I .operation_mode = "input";
defparam \sw[12]~I .output_async_reset = "none";
defparam \sw[12]~I .output_power_up = "low";
defparam \sw[12]~I .output_register_mode = "none";
defparam \sw[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[13]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[13]));
// synopsys translate_off
defparam \sw[13]~I .input_async_reset = "none";
defparam \sw[13]~I .input_power_up = "low";
defparam \sw[13]~I .input_register_mode = "none";
defparam \sw[13]~I .input_sync_reset = "none";
defparam \sw[13]~I .oe_async_reset = "none";
defparam \sw[13]~I .oe_power_up = "low";
defparam \sw[13]~I .oe_register_mode = "none";
defparam \sw[13]~I .oe_sync_reset = "none";
defparam \sw[13]~I .operation_mode = "input";
defparam \sw[13]~I .output_async_reset = "none";
defparam \sw[13]~I .output_power_up = "low";
defparam \sw[13]~I .output_register_mode = "none";
defparam \sw[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[14]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[14]));
// synopsys translate_off
defparam \sw[14]~I .input_async_reset = "none";
defparam \sw[14]~I .input_power_up = "low";
defparam \sw[14]~I .input_register_mode = "none";
defparam \sw[14]~I .input_sync_reset = "none";
defparam \sw[14]~I .oe_async_reset = "none";
defparam \sw[14]~I .oe_power_up = "low";
defparam \sw[14]~I .oe_register_mode = "none";
defparam \sw[14]~I .oe_sync_reset = "none";
defparam \sw[14]~I .operation_mode = "input";
defparam \sw[14]~I .output_async_reset = "none";
defparam \sw[14]~I .output_power_up = "low";
defparam \sw[14]~I .output_register_mode = "none";
defparam \sw[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[15]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[15]));
// synopsys translate_off
defparam \sw[15]~I .input_async_reset = "none";
defparam \sw[15]~I .input_power_up = "low";
defparam \sw[15]~I .input_register_mode = "none";
defparam \sw[15]~I .input_sync_reset = "none";
defparam \sw[15]~I .oe_async_reset = "none";
defparam \sw[15]~I .oe_power_up = "low";
defparam \sw[15]~I .oe_register_mode = "none";
defparam \sw[15]~I .oe_sync_reset = "none";
defparam \sw[15]~I .operation_mode = "input";
defparam \sw[15]~I .output_async_reset = "none";
defparam \sw[15]~I .output_power_up = "low";
defparam \sw[15]~I .output_register_mode = "none";
defparam \sw[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[16]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[16]));
// synopsys translate_off
defparam \sw[16]~I .input_async_reset = "none";
defparam \sw[16]~I .input_power_up = "low";
defparam \sw[16]~I .input_register_mode = "none";
defparam \sw[16]~I .input_sync_reset = "none";
defparam \sw[16]~I .oe_async_reset = "none";
defparam \sw[16]~I .oe_power_up = "low";
defparam \sw[16]~I .oe_register_mode = "none";
defparam \sw[16]~I .oe_sync_reset = "none";
defparam \sw[16]~I .operation_mode = "input";
defparam \sw[16]~I .output_async_reset = "none";
defparam \sw[16]~I .output_power_up = "low";
defparam \sw[16]~I .output_register_mode = "none";
defparam \sw[16]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[17]~I (
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
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[17]));
// synopsys translate_off
defparam \sw[17]~I .input_async_reset = "none";
defparam \sw[17]~I .input_power_up = "low";
defparam \sw[17]~I .input_register_mode = "none";
defparam \sw[17]~I .input_sync_reset = "none";
defparam \sw[17]~I .oe_async_reset = "none";
defparam \sw[17]~I .oe_power_up = "low";
defparam \sw[17]~I .oe_register_mode = "none";
defparam \sw[17]~I .oe_sync_reset = "none";
defparam \sw[17]~I .operation_mode = "input";
defparam \sw[17]~I .output_async_reset = "none";
defparam \sw[17]~I .output_power_up = "low";
defparam \sw[17]~I .output_register_mode = "none";
defparam \sw[17]~I .output_sync_reset = "none";
// synopsys translate_on

endmodule
