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

-- DATE "05/31/2015 16:32:48"

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

ENTITY 	fir_top_chip IS
    PORT (
	clock_50 : IN std_logic;
	clock_27 : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(17 DOWNTO 0);
	ledg : OUT std_logic_vector(8 DOWNTO 0);
	ledr : OUT std_logic_vector(17 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0);
	hex5 : OUT std_logic_vector(6 DOWNTO 0);
	hex6 : OUT std_logic_vector(6 DOWNTO 0);
	hex7 : OUT std_logic_vector(6 DOWNTO 0);
	aud_xck : OUT std_logic;
	aud_bclk : INOUT std_logic;
	aud_dacdat : OUT std_logic;
	aud_daclrck : OUT std_logic;
	aud_adclrck : OUT std_logic;
	i2c_sdat : INOUT std_logic;
	i2c_sclk : OUT std_logic
	);
END fir_top_chip;

-- Design Ports Information
-- ledg[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aud_xck	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aud_dacdat	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aud_daclrck	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aud_adclrck	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i2c_sclk	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sw[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i2c_sdat	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- aud_bclk	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fir_top_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_clock_27 : std_logic;
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_aud_xck : std_logic;
SIGNAL ww_aud_dacdat : std_logic;
SIGNAL ww_aud_daclrck : std_logic;
SIGNAL ww_aud_adclrck : std_logic;
SIGNAL ww_i2c_sclk : std_logic;
SIGNAL \u_audio_dac_p1_altpll|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_audio_dac_p1_altpll|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \aud_bclk_dup0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aud_adclrck_dup0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_audio_dac_p1_altpll|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL nx38664z10 : std_logic;
SIGNAL nx38664z12 : std_logic;
SIGNAL nx4119z4 : std_logic;
SIGNAL nx4119z3 : std_logic;
SIGNAL nx4119z10 : std_logic;
SIGNAL nx4119z17 : std_logic;
SIGNAL nx4119z18 : std_logic;
SIGNAL nx4119z16 : std_logic;
SIGNAL \u_audio_dac_p1_altpll|pll~clk\ : std_logic;
SIGNAL \u_audio_dac_p1_altpll|pll~CLK2\ : std_logic;
SIGNAL nx24999z3 : std_logic;
SIGNAL nx24999z2 : std_logic;
SIGNAL nx24999z7 : std_logic;
SIGNAL \audio_out_8_\ : std_logic;
SIGNAL \audio_out_7_\ : std_logic;
SIGNAL \audio_out_6_\ : std_logic;
SIGNAL \audio_out_5_\ : std_logic;
SIGNAL \audio_out_4_\ : std_logic;
SIGNAL \audio_out_3_\ : std_logic;
SIGNAL \audio_out_9_\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ : std_logic;
SIGNAL nx50205z4 : std_logic;
SIGNAL nx50205z3 : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx7286z1\ : std_logic;
SIGNAL \u_sine_address_3_\ : std_logic;
SIGNAL \u_sine_address_5_\ : std_logic;
SIGNAL \u_sine_address_6_\ : std_logic;
SIGNAL \u_sine_address_8_\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_5_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_6_\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_5n5s2f1_1_\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx22137z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_5n5s2f1_0_\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z9\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z14\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z13\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z17\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z21\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z22\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z20\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx56256z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx57253z1\ : std_logic;
SIGNAL \aud_bclk_dup0~clkctrl_outclk\ : std_logic;
SIGNAL nx49625z2 : std_logic;
SIGNAL nx49625z1 : std_logic;
SIGNAL nx49625z3 : std_logic;
SIGNAL nx55607z1 : std_logic;
SIGNAL nx49625z4 : std_logic;
SIGNAL nx52616z1 : std_logic;
SIGNAL \hex4_dup0_0_\ : std_logic;
SIGNAL \hex4_dup0_1_\ : std_logic;
SIGNAL \hex4_dup0_2_\ : std_logic;
SIGNAL nx52616z2 : std_logic;
SIGNAL \hex4_dup0_3_\ : std_logic;
SIGNAL \hex4_dup0_4_\ : std_logic;
SIGNAL \hex4_dup0_5_\ : std_logic;
SIGNAL \hex4_dup0_6_\ : std_logic;
SIGNAL nx38664z7 : std_logic;
SIGNAL nx38664z6 : std_logic;
SIGNAL nx38664z5 : std_logic;
SIGNAL nx38664z4 : std_logic;
SIGNAL nx38664z13 : std_logic;
SIGNAL nx38664z11 : std_logic;
SIGNAL nx38664z3 : std_logic;
SIGNAL nx38664z2 : std_logic;
SIGNAL nx38664z1 : std_logic;
SIGNAL nx32682z1 : std_logic;
SIGNAL nx32682z2 : std_logic;
SIGNAL \hex5_dup0_0_\ : std_logic;
SIGNAL nx38664z9 : std_logic;
SIGNAL nx38664z8 : std_logic;
SIGNAL \hex5_dup0_1_\ : std_logic;
SIGNAL \hex5_dup0_2_\ : std_logic;
SIGNAL \hex5_dup0_3_\ : std_logic;
SIGNAL \hex5_dup0_4_\ : std_logic;
SIGNAL \hex5_dup0_5_\ : std_logic;
SIGNAL \hex5_dup0_6_\ : std_logic;
SIGNAL nx4119z15 : std_logic;
SIGNAL nx4119z14 : std_logic;
SIGNAL nx4119z6 : std_logic;
SIGNAL nx4119z8 : std_logic;
SIGNAL nx4119z7 : std_logic;
SIGNAL nx4119z5 : std_logic;
SIGNAL nx4119z2 : std_logic;
SIGNAL nx4119z1 : std_logic;
SIGNAL nx10101z2 : std_logic;
SIGNAL nx10101z1 : std_logic;
SIGNAL \hex6_dup0_0_\ : std_logic;
SIGNAL nx4119z13 : std_logic;
SIGNAL nx4119z12 : std_logic;
SIGNAL nx4119z11 : std_logic;
SIGNAL nx4119z9 : std_logic;
SIGNAL \hex6_dup0_1_\ : std_logic;
SIGNAL \hex6_dup0_2_\ : std_logic;
SIGNAL \hex6_dup0_3_\ : std_logic;
SIGNAL \hex6_dup0_4_\ : std_logic;
SIGNAL \hex6_dup0_5_\ : std_logic;
SIGNAL \hex6_dup0_6_\ : std_logic;
SIGNAL nx17637z2 : std_logic;
SIGNAL nx17637z1 : std_logic;
SIGNAL \hex7_dup0_0_\ : std_logic;
SIGNAL \clock_27~combout\ : std_logic;
SIGNAL \u_audio_dac_p1_altpll|_clk1\ : std_logic;
SIGNAL \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \NOT_bit_position_0_\ : std_logic;
SIGNAL \bit_position_0_\ : std_logic;
SIGNAL nx50814z1 : std_logic;
SIGNAL \bit_position_1_\ : std_logic;
SIGNAL nx49817z1 : std_logic;
SIGNAL \bit_position_2_\ : std_logic;
SIGNAL nx48820z1 : std_logic;
SIGNAL \bit_position_3_\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\ : std_logic;
SIGNAL nx48238z1 : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\ : std_logic;
SIGNAL nx50205z2 : std_logic;
SIGNAL nx50205z1 : std_logic;
SIGNAL aud_adclrck_dup0 : std_logic;
SIGNAL \aud_adclrck_dup0~clkctrl_outclk\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx37973z1\ : std_logic;
SIGNAL \u_sine_address_0_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z23\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx38970z1\ : std_logic;
SIGNAL \u_sine_address_1_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z20\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx39967z1\ : std_logic;
SIGNAL \u_sine_address_2_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z17\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx40964z1\ : std_logic;
SIGNAL \u_sine_address_4_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z14\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx41961z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z11\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx42958z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z8\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx43955z1\ : std_logic;
SIGNAL \u_sine_address_7_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z5\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx44952z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z3\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z1\ : std_logic;
SIGNAL \audio_out_12_\ : std_logic;
SIGNAL \audio_out_2_\ : std_logic;
SIGNAL \audio_out_1_\ : std_logic;
SIGNAL \audio_out_0_\ : std_logic;
SIGNAL nx24999z5 : std_logic;
SIGNAL nx24999z4 : std_logic;
SIGNAL nx24999z1 : std_logic;
SIGNAL \audio_out_10_\ : std_logic;
SIGNAL nx24999z6 : std_logic;
SIGNAL aud_dacdat_dup0 : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx51271z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx17096z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_10_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx59247z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_8_\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z3\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx54262z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_3_\ : std_logic;
SIGNAL \u_i2c_av_config|nx17807z2\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_0_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z16\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx52268z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_1_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z15\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx53265z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_2_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z14\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z13\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_4_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z12\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z11\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z10\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx58250z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_7_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z9\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z8\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx60244z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_9_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z7\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z6\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx18093z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_11_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z5\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z4\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx20087z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_13_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z3\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx21084z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_14_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z2\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_15_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx19090z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_12_\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z4\ : std_logic;
SIGNAL \u_i2c_av_config|nx17807z1\ : std_logic;
SIGNAL \u_i2c_av_config|reset_n\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\ : std_logic;
SIGNAL \u_i2c_av_config|nx23875z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z5\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z3\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z4\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z2\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z1\ : std_logic;
SIGNAL \u_i2c_av_config|m_i2c_ctrl_clk\ : std_logic;
SIGNAL \u_i2c_av_config|nx51161z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z7\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z6\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|p_i2c_sclk\ : std_logic;
SIGNAL \clock_27~clkctrl_outclk\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z16\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z15\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z12\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx22137z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z10\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx7286z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z6\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z7\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z18\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z19\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx51857z1\ : std_logic;
SIGNAL nx30102z1 : std_logic;
SIGNAL nx30102z2 : std_logic;
SIGNAL \u_audio_dac_bck_div_2_\ : std_logic;
SIGNAL nx31099z1 : std_logic;
SIGNAL nx31099z2 : std_logic;
SIGNAL \u_audio_dac_bck_div_1_\ : std_logic;
SIGNAL nx32096z1 : std_logic;
SIGNAL \u_audio_dac_bck_div_0_\ : std_logic;
SIGNAL nx15494z1 : std_logic;
SIGNAL aud_bclk_dup0 : std_logic;
SIGNAL \key~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_key~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_i2c_av_config|ALT_INV_reset_n\ : std_logic;
SIGNAL \u_i2c_av_config|u0|ALT_INV_nx51857z1\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_clock_27 <= clock_27;
ww_key <= key;
ww_sw <= sw;
ledg <= ww_ledg;
ledr <= ww_ledr;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
hex7 <= ww_hex7;
aud_xck <= ww_aud_xck;
aud_dacdat <= ww_aud_dacdat;
aud_daclrck <= ww_aud_daclrck;
aud_adclrck <= ww_aud_adclrck;
i2c_sclk <= ww_i2c_sclk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_audio_dac_p1_altpll|pll_INCLK_bus\ <= (gnd & \clock_27~combout\);

\u_audio_dac_p1_altpll|pll~clk\ <= \u_audio_dac_p1_altpll|pll_CLK_bus\(0);
\u_audio_dac_p1_altpll|_clk1\ <= \u_audio_dac_p1_altpll|pll_CLK_bus\(1);
\u_audio_dac_p1_altpll|pll~CLK2\ <= \u_audio_dac_p1_altpll|pll_CLK_bus\(2);

\u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_sine_address_add9_0i1|nx45949z1\ & \u_sine_address_add9_0i1|nx44952z1\ & \u_sine_address_add9_0i1|nx43955z1\ & \u_sine_address_add9_0i1|nx42958z1\ & 
\u_sine_address_add9_0i1|nx41961z1\ & \u_sine_address_add9_0i1|nx40964z1\);

\audio_out_0_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\audio_out_1_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\audio_out_2_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\audio_out_3_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\audio_out_4_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\audio_out_5_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\audio_out_6_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\audio_out_7_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\audio_out_8_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\audio_out_9_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\audio_out_10_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\audio_out_12_\ <= \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\aud_bclk_dup0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & aud_bclk_dup0);

\aud_adclrck_dup0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & aud_adclrck_dup0);

\clock_27~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_27~combout\);

\u_audio_dac_p1_altpll|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u_audio_dac_p1_altpll|_clk1\);
\ALT_INV_key~combout\(0) <= NOT \key~combout\(0);
\u_i2c_av_config|ALT_INV_reset_n\ <= NOT \u_i2c_av_config|reset_n\;
\u_i2c_av_config|u0|ALT_INV_nx51857z1\ <= NOT \u_i2c_av_config|u0|nx51857z1\;

-- Location: LCCOMB_X1_Y14_N6
ix38664z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z10 = (\sw~combout\(3) & ((\sw~combout\(1) & (\sw~combout\(0) & !\sw~combout\(2))) # (!\sw~combout\(1) & (!\sw~combout\(0) & \sw~combout\(2))))) # (!\sw~combout\(3) & (\sw~combout\(1) $ ((\sw~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx38664z10);

-- Location: LCCOMB_X1_Y15_N24
ix38664z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z12 = (\sw~combout\(2) & (((!\sw~combout\(4))))) # (!\sw~combout\(2) & (\sw~combout\(4) & ((\sw~combout\(5)) # (!\sw~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \sw~combout\(2),
	datac => \sw~combout\(4),
	datad => \sw~combout\(5),
	combout => nx38664z12);

-- Location: LCCOMB_X12_Y8_N24
ix4119z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z4 = (!\sw~combout\(1) & (\sw~combout\(5) & (!\sw~combout\(0) & !\sw~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(5),
	datac => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => nx4119z4);

-- Location: LCCOMB_X3_Y13_N16
ix4119z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z3 = (\sw~combout\(4) & ((!\sw~combout\(5)))) # (!\sw~combout\(4) & (nx4119z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z4,
	datab => \sw~combout\(4),
	datad => \sw~combout\(5),
	combout => nx4119z3);

-- Location: LCCOMB_X1_Y13_N12
ix4119z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z10 = \sw~combout\(6) $ (((\sw~combout\(4) & ((\sw~combout\(3)) # (\sw~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \sw~combout\(3),
	datac => \sw~combout\(2),
	datad => \sw~combout\(4),
	combout => nx4119z10);

-- Location: LCCOMB_X1_Y13_N24
ix4119z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z17 = \sw~combout\(5) $ (((\sw~combout\(2)) # (!\sw~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(4),
	datac => \sw~combout\(2),
	combout => nx4119z17);

-- Location: LCCOMB_X1_Y13_N26
ix4119z52941 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z18 = \sw~combout\(5) $ (((!\sw~combout\(4) & ((\sw~combout\(0)) # (\sw~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(4),
	datac => \sw~combout\(2),
	datad => \sw~combout\(5),
	combout => nx4119z18);

-- Location: LCCOMB_X1_Y13_N20
ix4119z52939 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z16 = (\sw~combout\(1) & ((nx4119z17))) # (!\sw~combout\(1) & (nx4119z18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx4119z18,
	datac => nx4119z17,
	datad => \sw~combout\(1),
	combout => nx4119z16);

-- Location: LCCOMB_X14_Y8_N30
ix24999z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z3 = (\bit_position_1_\ & ((\bit_position_0_\ & ((\audio_out_4_\))) # (!\bit_position_0_\ & (\audio_out_5_\)))) # (!\bit_position_1_\ & (((!\bit_position_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_5_\,
	datab => \bit_position_1_\,
	datac => \bit_position_0_\,
	datad => \audio_out_4_\,
	combout => nx24999z3);

-- Location: LCCOMB_X14_Y8_N24
ix24999z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z2 = (nx24999z3 & (((\audio_out_7_\) # (\bit_position_1_\)))) # (!nx24999z3 & (\audio_out_6_\ & ((!\bit_position_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx24999z3,
	datab => \audio_out_6_\,
	datac => \audio_out_7_\,
	datad => \bit_position_1_\,
	combout => nx24999z2);

-- Location: LCCOMB_X14_Y8_N10
ix24999z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z7 = (\bit_position_1_\ & ((\bit_position_0_\ & (\audio_out_8_\)) # (!\bit_position_0_\ & ((\audio_out_9_\))))) # (!\bit_position_1_\ & (((!\bit_position_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_8_\,
	datab => \bit_position_1_\,
	datac => \bit_position_0_\,
	datad => \audio_out_9_\,
	combout => nx24999z7);

-- Location: M4K_X13_Y8
\u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"F37E70DADCF0C3AB8EAECA579D09598F189B85882780980080982785889B8F19599D0A57AECB11C3ACF0DADE70F370000C818F25230F3C54715135A862F6A670E7647A77D87F67FF7F67D87A776470E6A662F5A85134713C530F25218F0C8000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:u_sine_modgen_rom_ix21__ix62120z58995|altsyncram_0bk2:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 12,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 12,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \aud_adclrck_dup0~clkctrl_outclk\,
	portaaddr => \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_sine_modgen_rom_ix21__ix62120z58995|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X30_Y25_N11
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\);

-- Location: LCFF_X30_Y25_N17
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\);

-- Location: LCFF_X30_Y25_N13
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\);

-- Location: LCCOMB_X31_Y25_N10
ix50205z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z4 = (((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\,
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\,
	datac => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\,
	datad => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\,
	combout => nx50205z4);

-- Location: LCCOMB_X31_Y25_N12
ix50205z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z3 = ((nx50205z4) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\,
	datac => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\,
	datad => nx50205z4,
	combout => nx50205z3);

-- Location: LCFF_X42_Y14_N27
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\);

-- Location: LCFF_X42_Y14_N17
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\);

-- Location: LCCOMB_X41_Y14_N24
\u_i2c_av_config|u0|ix7286z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx7286z1\ = (\u_i2c_av_config|u0|nx7286z2\) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|nx7286z2\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	combout => \u_i2c_av_config|u0|nx7286z1\);

-- Location: LCFF_X12_Y8_N7
\u_sine_reg_address_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_3_\);

-- Location: LCFF_X12_Y8_N11
\u_sine_reg_address_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_5_\);

-- Location: LCFF_X12_Y8_N13
\u_sine_reg_address_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_6_\);

-- Location: LCFF_X12_Y8_N17
\u_sine_reg_address_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_8_\);

-- Location: LCCOMB_X30_Y25_N10
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\ & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\ & 
-- ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\) # (GND)))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\);

-- Location: LCCOMB_X30_Y25_N12
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ & 
-- (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ & VCC))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\ = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\);

-- Location: LCCOMB_X30_Y25_N16
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ & 
-- (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ & VCC))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\ = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\);

-- Location: LCCOMB_X42_Y14_N16
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\);

-- Location: LCCOMB_X42_Y14_N24
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\);

-- Location: LCCOMB_X42_Y14_N26
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\ $ (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\);

-- Location: LCFF_X37_Y7_N11
\u_i2c_av_config|modgen_counter_cont|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx56256z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_5_\);

-- Location: LCFF_X37_Y7_N13
\u_i2c_av_config|modgen_counter_cont|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx57253z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_6_\);

-- Location: LCCOMB_X38_Y7_N6
\u_i2c_av_config|ix35560z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z2\ = (\u_i2c_av_config|modgen_counter_cont|q_7_\ & (\u_i2c_av_config|modgen_counter_cont|q_5_\ & (\u_i2c_av_config|modgen_counter_cont|q_6_\ & \u_i2c_av_config|modgen_counter_cont|q_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_7_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_5_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_6_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_4_\,
	combout => \u_i2c_av_config|nx35560z2\);

-- Location: LCCOMB_X40_Y14_N30
\u_i2c_av_config|u0|ix22137z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_5n5s2f1_1_\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & (((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\)) # 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|sdo_5n5s2f1_1_\);

-- Location: LCCOMB_X40_Y14_N24
\u_i2c_av_config|u0|ix22137z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx22137z2\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & 
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx22137z2\);

-- Location: LCCOMB_X40_Y14_N26
\u_i2c_av_config|u0|ix22137z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_5n5s2f1_0_\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & (!\u_i2c_av_config|u0|nx44942z5\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ 
-- & ((\u_i2c_av_config|u0|nx22137z2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datab => \u_i2c_av_config|u0|nx44942z5\,
	datac => \u_i2c_av_config|u0|nx22137z2\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|sdo_5n5s2f1_0_\);

-- Location: LCCOMB_X40_Y14_N8
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & 
-- (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ & VCC))
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\ = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\);

-- Location: LCCOMB_X37_Y14_N6
\u_i2c_av_config|u0|ix41315z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z5\ = (\u_i2c_av_config|u0|nx43379z4\) # ((\u_i2c_av_config|u0|nx44942z4\) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|nx43379z4\,
	datac => \u_i2c_av_config|u0|nx44942z4\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx41315z5\);

-- Location: LCCOMB_X40_Y14_N10
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ = \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\ $ (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\);

-- Location: LCCOMB_X40_Y14_N14
\u_i2c_av_config|u0|ix41315z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z9\ = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ & ((\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\,
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	datad => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	combout => \u_i2c_av_config|u0|nx41315z9\);

-- Location: LCCOMB_X40_Y14_N16
\u_i2c_av_config|u0|ix41315z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z8\ = (\u_i2c_av_config|u0|nx41315z3\ & (\u_i2c_av_config|u0|nx41315z9\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z3\,
	datab => \u_i2c_av_config|u0|nx41315z9\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\,
	combout => \u_i2c_av_config|u0|nx41315z8\);

-- Location: LCCOMB_X38_Y14_N28
\u_i2c_av_config|u0|ix41315z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z14\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|nx41315z14\);

-- Location: LCCOMB_X38_Y14_N6
\u_i2c_av_config|u0|ix41315z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z13\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (\u_i2c_av_config|u0|nx41315z14\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datab => \u_i2c_av_config|u0|nx41315z14\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx41315z13\);

-- Location: LCCOMB_X38_Y14_N10
\u_i2c_av_config|u0|ix41315z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z17\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (\u_i2c_av_config|u0|nx41315z14\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datab => \u_i2c_av_config|u0|nx41315z14\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx41315z17\);

-- Location: LCCOMB_X38_Y14_N8
\u_i2c_av_config|u0|ix41315z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z21\ = (!\u_i2c_av_config|u0|nx44942z5\ & (!\u_i2c_av_config|u0|nx44942z4\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx44942z5\,
	datab => \u_i2c_av_config|u0|nx44942z4\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx41315z21\);

-- Location: LCCOMB_X38_Y14_N2
\u_i2c_av_config|u0|ix41315z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z22\ = (\u_i2c_av_config|u0|nx41315z15\) # ((!\u_i2c_av_config|u0|nx44942z7\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|nx41315z14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z15\,
	datab => \u_i2c_av_config|u0|nx44942z7\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|nx41315z14\,
	combout => \u_i2c_av_config|u0|nx41315z22\);

-- Location: LCCOMB_X38_Y14_N12
\u_i2c_av_config|u0|ix41315z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z20\ = ((!\u_i2c_av_config|u0|nx41315z21\ & ((\u_i2c_av_config|u0|nx41315z22\) # (!\u_i2c_av_config|u0|nx41315z4\)))) # (!\u_i2c_av_config|reset_n\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|reset_n\,
	datab => \u_i2c_av_config|u0|nx41315z22\,
	datac => \u_i2c_av_config|u0|nx41315z21\,
	datad => \u_i2c_av_config|u0|nx41315z4\,
	combout => \u_i2c_av_config|u0|nx41315z20\);

-- Location: LCCOMB_X37_Y7_N10
\u_i2c_av_config|modgen_counter_cont|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx56256z1\ = (\u_i2c_av_config|modgen_counter_cont|q_5_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z12\)) # (!\u_i2c_av_config|modgen_counter_cont|q_5_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z12\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z11\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z12\) # (!\u_i2c_av_config|modgen_counter_cont|q_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_5_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z12\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx56256z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z11\);

-- Location: LCCOMB_X37_Y7_N12
\u_i2c_av_config|modgen_counter_cont|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx57253z1\ = (\u_i2c_av_config|modgen_counter_cont|q_6_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z11\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_6_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z11\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z10\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_6_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_6_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z11\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx57253z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z10\);

-- Location: CLKCTRL_G8
\aud_bclk_dup0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aud_bclk_dup0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aud_bclk_dup0~clkctrl_outclk\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_0_\ : cycloneii_io
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
	padio => ww_sw(0),
	combout => \sw~combout\(0));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_3_\ : cycloneii_io
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
	padio => ww_sw(3),
	combout => \sw~combout\(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_2_\ : cycloneii_io
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
	padio => ww_sw(2),
	combout => \sw~combout\(2));

-- Location: LCCOMB_X1_Y14_N0
ix49625z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z2 = (\sw~combout\(3) & (!\sw~combout\(1) & (!\sw~combout\(0) & !\sw~combout\(2)))) # (!\sw~combout\(3) & ((\sw~combout\(2)) # ((\sw~combout\(1) & \sw~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx49625z2);

-- Location: LCCOMB_X1_Y14_N4
ix49625z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z1 = (\sw~combout\(3) & (\sw~combout\(1) & (\sw~combout\(0) & \sw~combout\(2)))) # (!\sw~combout\(3) & (!\sw~combout\(2) & ((!\sw~combout\(0)) # (!\sw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx49625z1);

-- Location: LCCOMB_X1_Y14_N30
ix49625z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z3 = (\sw~combout\(1) & (!\sw~combout\(2) & ((\sw~combout\(0)) # (\sw~combout\(3))))) # (!\sw~combout\(1) & ((\sw~combout\(3) & (\sw~combout\(0) & !\sw~combout\(2))) # (!\sw~combout\(3) & ((\sw~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx49625z3);

-- Location: LCCOMB_X1_Y14_N18
ix55607z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx55607z1 = (nx49625z4 & ((nx49625z2 & (nx49625z1 & !nx49625z3)) # (!nx49625z2 & (nx49625z1 $ (!nx49625z3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49625z4,
	datab => nx49625z2,
	datac => nx49625z1,
	datad => nx49625z3,
	combout => nx55607z1);

-- Location: LCCOMB_X1_Y14_N2
ix49625z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z4 = \sw~combout\(3) $ (((\sw~combout\(1) & (\sw~combout\(0) $ (\sw~combout\(2)))) # (!\sw~combout\(1) & (!\sw~combout\(0) & !\sw~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx49625z4);

-- Location: LCCOMB_X1_Y14_N8
ix52616z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx52616z1 = (nx49625z2 & (!nx49625z1 & !nx49625z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx49625z2,
	datac => nx49625z1,
	datad => nx49625z3,
	combout => nx52616z1);

-- Location: LCCOMB_X1_Y14_N20
ix55607z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_0_\ = (nx55607z1) # ((!nx49625z4 & (nx52616z1 & nx49625z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx55607z1,
	datab => nx49625z4,
	datac => nx52616z1,
	datad => nx49625z2,
	combout => \hex4_dup0_0_\);

-- Location: LCCOMB_X1_Y14_N22
ix54610z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_1_\ = (nx49625z1 & ((nx49625z4 & ((nx49625z3))) # (!nx49625z4 & (nx49625z2)))) # (!nx49625z1 & (nx49625z2 & (nx49625z4 $ (nx49625z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49625z4,
	datab => nx49625z2,
	datac => nx49625z1,
	datad => nx49625z3,
	combout => \hex4_dup0_1_\);

-- Location: LCCOMB_X1_Y14_N16
ix53613z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_2_\ = (nx49625z2 & (nx49625z1 & ((nx49625z3) # (!nx49625z4)))) # (!nx49625z2 & (!nx49625z4 & (!nx49625z1 & nx49625z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49625z4,
	datab => nx49625z2,
	datac => nx49625z1,
	datad => nx49625z3,
	combout => \hex4_dup0_2_\);

-- Location: LCCOMB_X1_Y14_N26
ix52616z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx52616z2 = (nx49625z4 & (nx49625z2 $ (((!nx49625z3))))) # (!nx49625z4 & (!nx49625z2 & (nx49625z1 & nx49625z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49625z4,
	datab => nx49625z2,
	datac => nx49625z1,
	datad => nx49625z3,
	combout => nx52616z2);

-- Location: LCCOMB_X1_Y14_N28
ix52616z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_3_\ = (nx52616z2) # ((!nx49625z4 & (nx52616z1 & nx49625z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx52616z2,
	datab => nx49625z4,
	datac => nx52616z1,
	datad => nx49625z2,
	combout => \hex4_dup0_3_\);

-- Location: LCCOMB_X1_Y14_N14
ix51619z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_4_\ = (nx49625z3 & (nx49625z4 & ((!nx49625z1)))) # (!nx49625z3 & ((nx49625z2 & ((!nx49625z1))) # (!nx49625z2 & (nx49625z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49625z4,
	datab => nx49625z2,
	datac => nx49625z1,
	datad => nx49625z3,
	combout => \hex4_dup0_4_\);

-- Location: LCCOMB_X1_Y14_N24
ix50622z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_5_\ = (nx49625z4 & (nx49625z1 $ (((nx49625z3) # (!nx49625z2))))) # (!nx49625z4 & (!nx49625z2 & (!nx49625z1 & nx49625z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49625z4,
	datab => nx49625z2,
	datac => nx49625z1,
	datad => nx49625z3,
	combout => \hex4_dup0_5_\);

-- Location: LCCOMB_X1_Y14_N10
ix49625z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_6_\ = (nx49625z4 & (!nx49625z1 & (nx49625z2 $ (!nx49625z3)))) # (!nx49625z4 & (!nx49625z3 & (nx49625z2 $ (!nx49625z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49625z4,
	datab => nx49625z2,
	datac => nx49625z1,
	datad => nx49625z3,
	combout => \hex4_dup0_6_\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_1_\ : cycloneii_io
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
	padio => ww_sw(1),
	combout => \sw~combout\(1));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_5_\ : cycloneii_io
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
	padio => ww_sw(5),
	combout => \sw~combout\(5));

-- Location: LCCOMB_X12_Y8_N28
ix38664z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z7 = (!\sw~combout\(2) & (((\sw~combout\(5)) # (!\sw~combout\(0))) # (!\sw~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \sw~combout\(5),
	datac => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => nx38664z7);

-- Location: LCCOMB_X12_Y8_N22
ix38664z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z6 = (\sw~combout\(1) & (((\sw~combout\(3) & nx38664z7)))) # (!\sw~combout\(1) & (!\sw~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datab => \sw~combout\(3),
	datac => \sw~combout\(1),
	datad => nx38664z7,
	combout => nx38664z6);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_4_\ : cycloneii_io
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
	padio => ww_sw(4),
	combout => \sw~combout\(4));

-- Location: LCCOMB_X12_Y8_N26
ix38664z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z5 = (\sw~combout\(1) & (\sw~combout\(2) $ (((!\sw~combout\(3) & \sw~combout\(0)))))) # (!\sw~combout\(1) & (\sw~combout\(2) & ((\sw~combout\(0)) # (!\sw~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(3),
	datac => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => nx38664z5);

-- Location: LCCOMB_X1_Y15_N4
ix38664z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z4 = (\sw~combout\(4) & (nx38664z6)) # (!\sw~combout\(4) & ((nx38664z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx38664z6,
	datac => \sw~combout\(4),
	datad => nx38664z5,
	combout => nx38664z4);

-- Location: LCCOMB_X1_Y15_N18
ix38664z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z13 = (!\sw~combout\(1)) # (!\sw~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\(3),
	datad => \sw~combout\(1),
	combout => nx38664z13);

-- Location: LCCOMB_X1_Y15_N20
ix38664z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z11 = (\sw~combout\(0) & ((nx38664z13 & ((\sw~combout\(4)))) # (!nx38664z13 & (nx38664z12)))) # (!\sw~combout\(0) & (((!\sw~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z12,
	datab => nx38664z13,
	datac => \sw~combout\(4),
	datad => \sw~combout\(0),
	combout => nx38664z11);

-- Location: LCCOMB_X1_Y15_N8
ix38664z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z3 = (\sw~combout\(0) & (\sw~combout\(2) & (!\sw~combout\(3) & \sw~combout\(1)))) # (!\sw~combout\(0) & (!\sw~combout\(2) & (\sw~combout\(3) & !\sw~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(2),
	datac => \sw~combout\(3),
	datad => \sw~combout\(1),
	combout => nx38664z3);

-- Location: LCCOMB_X2_Y15_N24
ix38664z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z2 = (\sw~combout\(3) & (!\sw~combout\(1) & \sw~combout\(2))) # (!\sw~combout\(3) & (\sw~combout\(1) & !\sw~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(3),
	datac => \sw~combout\(1),
	datad => \sw~combout\(2),
	combout => nx38664z2);

-- Location: LCCOMB_X1_Y15_N2
ix38664z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z1 = (\sw~combout\(4) & ((nx38664z2))) # (!\sw~combout\(4) & (nx38664z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx38664z3,
	datac => \sw~combout\(4),
	datad => nx38664z2,
	combout => nx38664z1);

-- Location: LCCOMB_X1_Y15_N30
ix32682z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx32682z1 = (!nx38664z8 & (nx38664z11 & (nx38664z4 $ (!nx38664z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z8,
	datab => nx38664z4,
	datac => nx38664z11,
	datad => nx38664z1,
	combout => nx32682z1);

-- Location: LCCOMB_X1_Y15_N16
ix32682z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx32682z2 = (nx38664z8 & (!nx38664z4 & (nx38664z11 & nx38664z1))) # (!nx38664z8 & (nx38664z4 & (!nx38664z11 & !nx38664z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z8,
	datab => nx38664z4,
	datac => nx38664z11,
	datad => nx38664z1,
	combout => nx32682z2);

-- Location: LCCOMB_X1_Y15_N26
ix32682z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_0_\ = (nx32682z1) # (nx32682z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx32682z1,
	datac => nx32682z2,
	combout => \hex5_dup0_0_\);

-- Location: LCCOMB_X1_Y14_N12
ix38664z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z9 = (\sw~combout\(1) & (\sw~combout\(3) $ (\sw~combout\(2)))) # (!\sw~combout\(1) & (!\sw~combout\(3) & !\sw~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx38664z9);

-- Location: LCCOMB_X1_Y15_N6
ix38664z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z8 = (\sw~combout\(4) & ((nx38664z9))) # (!\sw~combout\(4) & (nx38664z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z10,
	datab => nx38664z9,
	datac => \sw~combout\(4),
	combout => nx38664z8);

-- Location: LCCOMB_X1_Y15_N28
ix33679z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_1_\ = (nx38664z8 & ((nx38664z11 & ((nx38664z1))) # (!nx38664z11 & (nx38664z4)))) # (!nx38664z8 & (nx38664z4 & (nx38664z11 $ (nx38664z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z8,
	datab => nx38664z4,
	datac => nx38664z11,
	datad => nx38664z1,
	combout => \hex5_dup0_1_\);

-- Location: LCCOMB_X1_Y15_N22
ix34676z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_2_\ = (nx38664z4 & (nx38664z1 & ((nx38664z8) # (!nx38664z11)))) # (!nx38664z4 & (nx38664z8 & (!nx38664z11 & !nx38664z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z8,
	datab => nx38664z4,
	datac => nx38664z11,
	datad => nx38664z1,
	combout => \hex5_dup0_2_\);

-- Location: LCCOMB_X1_Y15_N0
ix35673z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_3_\ = (nx38664z11 & (nx38664z8 $ ((!nx38664z4)))) # (!nx38664z11 & ((nx38664z8 & (!nx38664z4 & nx38664z1)) # (!nx38664z8 & (nx38664z4 & !nx38664z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z8,
	datab => nx38664z4,
	datac => nx38664z11,
	datad => nx38664z1,
	combout => \hex5_dup0_3_\);

-- Location: LCCOMB_X1_Y15_N10
ix36670z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_4_\ = (nx38664z8 & (((nx38664z11 & !nx38664z1)))) # (!nx38664z8 & ((nx38664z4 & ((!nx38664z1))) # (!nx38664z4 & (nx38664z11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z8,
	datab => nx38664z4,
	datac => nx38664z11,
	datad => nx38664z1,
	combout => \hex5_dup0_4_\);

-- Location: LCCOMB_X1_Y15_N12
ix37667z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_5_\ = (nx38664z8 & (!nx38664z1 & ((nx38664z11) # (!nx38664z4)))) # (!nx38664z8 & (nx38664z11 & (nx38664z4 $ (!nx38664z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z8,
	datab => nx38664z4,
	datac => nx38664z11,
	datad => nx38664z1,
	combout => \hex5_dup0_5_\);

-- Location: LCCOMB_X1_Y15_N14
ix38664z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_6_\ = (nx38664z11 & (!nx38664z1 & (nx38664z8 $ (!nx38664z4)))) # (!nx38664z11 & (!nx38664z8 & (nx38664z4 $ (!nx38664z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z8,
	datab => nx38664z4,
	datac => nx38664z11,
	datad => nx38664z1,
	combout => \hex5_dup0_6_\);

-- Location: LCCOMB_X1_Y13_N14
ix4119z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z15 = \sw~combout\(5) $ (((\sw~combout\(4) & !\sw~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(4),
	datac => \sw~combout\(2),
	combout => nx4119z15);

-- Location: LCCOMB_X1_Y13_N6
ix4119z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z14 = (\sw~combout\(3) & (nx4119z16)) # (!\sw~combout\(3) & ((nx4119z15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z16,
	datab => nx4119z15,
	datac => \sw~combout\(3),
	combout => nx4119z14);

-- Location: LCCOMB_X1_Y13_N28
ix4119z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z6 = (!\sw~combout\(5) & (((!\sw~combout\(3) & !\sw~combout\(2))) # (!\sw~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(3),
	datac => \sw~combout\(2),
	datad => \sw~combout\(4),
	combout => nx4119z6);

-- Location: LCCOMB_X1_Y13_N22
ix4119z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z8 = (\sw~combout\(3) & ((\sw~combout\(0)) # ((\sw~combout\(2)) # (\sw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(3),
	datac => \sw~combout\(2),
	datad => \sw~combout\(1),
	combout => nx4119z8);

-- Location: LCCOMB_X1_Y13_N16
ix4119z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z7 = (!\sw~combout\(6) & (\sw~combout\(5) & ((\sw~combout\(4)) # (nx4119z8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \sw~combout\(4),
	datac => \sw~combout\(5),
	datad => nx4119z8,
	combout => nx4119z7);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_6_\ : cycloneii_io
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
	padio => ww_sw(6),
	combout => \sw~combout\(6));

-- Location: LCCOMB_X1_Y13_N18
ix4119z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z5 = (nx4119z7) # ((nx4119z6 & \sw~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx4119z6,
	datac => nx4119z7,
	datad => \sw~combout\(6),
	combout => nx4119z5);

-- Location: LCCOMB_X1_Y13_N8
ix4119z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z2 = (\sw~combout\(5) & (!\sw~combout\(4))) # (!\sw~combout\(5) & (\sw~combout\(4) & \sw~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(4),
	datac => \sw~combout\(2),
	combout => nx4119z2);

-- Location: LCCOMB_X1_Y13_N10
ix4119z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z1 = (\sw~combout\(6) & ((\sw~combout\(3) & (nx4119z3)) # (!\sw~combout\(3) & ((nx4119z2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z3,
	datab => \sw~combout\(3),
	datac => nx4119z2,
	datad => \sw~combout\(6),
	combout => nx4119z1);

-- Location: LCCOMB_X1_Y17_N2
ix10101z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx10101z2 = (nx4119z9 & (nx4119z14 & (!nx4119z5 & nx4119z1))) # (!nx4119z9 & (!nx4119z14 & (nx4119z5 & !nx4119z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z9,
	datab => nx4119z14,
	datac => nx4119z5,
	datad => nx4119z1,
	combout => nx10101z2);

-- Location: LCCOMB_X1_Y17_N16
ix10101z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx10101z1 = (!nx4119z9 & (nx4119z14 & (nx4119z5 $ (!nx4119z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z9,
	datab => nx4119z14,
	datac => nx4119z5,
	datad => nx4119z1,
	combout => nx10101z1);

-- Location: LCCOMB_X1_Y17_N28
ix10101z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_0_\ = (nx10101z2) # (nx10101z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx10101z2,
	datac => nx10101z1,
	combout => \hex6_dup0_0_\);

-- Location: LCCOMB_X1_Y13_N0
ix4119z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z13 = (!\sw~combout\(4) & (((!\sw~combout\(0) & !\sw~combout\(2))) # (!\sw~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(3),
	datac => \sw~combout\(2),
	datad => \sw~combout\(4),
	combout => nx4119z13);

-- Location: LCCOMB_X1_Y13_N30
ix4119z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z12 = (\sw~combout\(3) & (((\sw~combout\(2) & \sw~combout\(4))))) # (!\sw~combout\(3) & (!\sw~combout\(6) & ((!\sw~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \sw~combout\(3),
	datac => \sw~combout\(2),
	datad => \sw~combout\(4),
	combout => nx4119z12);

-- Location: LCCOMB_X1_Y13_N2
ix4119z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z11 = (\sw~combout\(1) & (((nx4119z12)))) # (!\sw~combout\(1) & (!\sw~combout\(6) & (nx4119z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => nx4119z13,
	datac => nx4119z12,
	datad => \sw~combout\(1),
	combout => nx4119z11);

-- Location: LCCOMB_X1_Y13_N4
ix4119z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z9 = (\sw~combout\(5) & ((nx4119z11))) # (!\sw~combout\(5) & (nx4119z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z10,
	datab => nx4119z11,
	datac => \sw~combout\(5),
	combout => nx4119z9);

-- Location: LCCOMB_X1_Y17_N22
ix9104z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_1_\ = (nx4119z9 & ((nx4119z14 & ((nx4119z1))) # (!nx4119z14 & (nx4119z5)))) # (!nx4119z9 & (nx4119z5 & (nx4119z14 $ (nx4119z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z9,
	datab => nx4119z14,
	datac => nx4119z5,
	datad => nx4119z1,
	combout => \hex6_dup0_1_\);

-- Location: LCCOMB_X1_Y17_N8
ix8107z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_2_\ = (nx4119z5 & (nx4119z1 & ((nx4119z9) # (!nx4119z14)))) # (!nx4119z5 & (nx4119z9 & (!nx4119z14 & !nx4119z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z9,
	datab => nx4119z14,
	datac => nx4119z5,
	datad => nx4119z1,
	combout => \hex6_dup0_2_\);

-- Location: LCCOMB_X1_Y17_N10
ix7110z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_3_\ = (nx4119z14 & (nx4119z9 $ ((!nx4119z5)))) # (!nx4119z14 & ((nx4119z9 & (!nx4119z5 & nx4119z1)) # (!nx4119z9 & (nx4119z5 & !nx4119z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z9,
	datab => nx4119z14,
	datac => nx4119z5,
	datad => nx4119z1,
	combout => \hex6_dup0_3_\);

-- Location: LCCOMB_X1_Y17_N12
ix6113z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_4_\ = (nx4119z9 & (nx4119z14 & ((!nx4119z1)))) # (!nx4119z9 & ((nx4119z5 & ((!nx4119z1))) # (!nx4119z5 & (nx4119z14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z9,
	datab => nx4119z14,
	datac => nx4119z5,
	datad => nx4119z1,
	combout => \hex6_dup0_4_\);

-- Location: LCCOMB_X1_Y17_N6
ix5116z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_5_\ = (nx4119z9 & (!nx4119z1 & ((nx4119z14) # (!nx4119z5)))) # (!nx4119z9 & (nx4119z14 & (nx4119z5 $ (!nx4119z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z9,
	datab => nx4119z14,
	datac => nx4119z5,
	datad => nx4119z1,
	combout => \hex6_dup0_5_\);

-- Location: LCCOMB_X1_Y17_N0
ix4119z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_6_\ = (nx4119z14 & (!nx4119z1 & (nx4119z9 $ (!nx4119z5)))) # (!nx4119z14 & (!nx4119z9 & (nx4119z5 $ (!nx4119z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z9,
	datab => nx4119z14,
	datac => nx4119z5,
	datad => nx4119z1,
	combout => \hex6_dup0_6_\);

-- Location: LCCOMB_X12_Y8_N18
ix17637z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx17637z2 = (\sw~combout\(5) & ((\sw~combout\(1)) # ((\sw~combout\(0)) # (\sw~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(5),
	datac => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => nx17637z2);

-- Location: LCCOMB_X12_Y8_N20
ix17637z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx17637z1 = (\sw~combout\(6) & (\sw~combout\(3) & (!\sw~combout\(4) & nx17637z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \sw~combout\(3),
	datac => \sw~combout\(4),
	datad => nx17637z2,
	combout => nx17637z1);

-- Location: LCCOMB_X12_Y8_N30
ix17637z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex7_dup0_0_\ = (nx17637z1) # ((\sw~combout\(4) & (\sw~combout\(5) & \sw~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(4),
	datab => \sw~combout\(5),
	datac => nx17637z1,
	datad => \sw~combout\(6),
	combout => \hex7_dup0_0_\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
clock_27_ibuf : cycloneii_io
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
	padio => ww_clock_27,
	combout => \clock_27~combout\);

-- Location: PLL_3
\u_audio_dac_p1_altpll|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 15,
	c0_initial => 1,
	c0_low => 15,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_duty_cycle => 50,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 3,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 2,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk1",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 37037,
	inclk1_input_frequency => 37037,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 20,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5840,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \u_audio_dac_p1_altpll|pll_INCLK_bus\,
	clk => \u_audio_dac_p1_altpll|pll_CLK_bus\);

-- Location: CLKCTRL_G11
\u_audio_dac_p1_altpll|_clk1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_audio_dac_p1_altpll|_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y8_N28
ix51811z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \NOT_bit_position_0_\ = !\bit_position_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_position_0_\,
	combout => \NOT_bit_position_0_\);

-- Location: LCFF_X14_Y8_N29
\modgen_counter_bit_position_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => \NOT_bit_position_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_0_\);

-- Location: LCCOMB_X14_Y8_N2
ix50814z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx50814z1 = \bit_position_1_\ $ (\bit_position_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_position_1_\,
	datad => \bit_position_0_\,
	combout => nx50814z1);

-- Location: LCFF_X14_Y8_N3
\modgen_counter_bit_position_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => nx50814z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_1_\);

-- Location: LCCOMB_X14_Y8_N14
ix49817z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx49817z1 = \bit_position_2_\ $ (((\bit_position_0_\ & \bit_position_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_position_0_\,
	datac => \bit_position_2_\,
	datad => \bit_position_1_\,
	combout => nx49817z1);

-- Location: LCFF_X14_Y8_N15
\modgen_counter_bit_position_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => nx49817z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_2_\);

-- Location: LCCOMB_X14_Y8_N16
ix48820z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx48820z1 = \bit_position_3_\ $ (((\bit_position_0_\ & (\bit_position_2_\ & \bit_position_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_0_\,
	datab => \bit_position_2_\,
	datac => \bit_position_3_\,
	datad => \bit_position_1_\,
	combout => nx48820z1);

-- Location: LCFF_X14_Y8_N17
\modgen_counter_bit_position_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => nx48820z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_3_\);

-- Location: LCCOMB_X30_Y25_N8
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\ $ (VCC)
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\ = CARRY(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\,
	datad => VCC,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_ibuf_0_\ : cycloneii_io
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
	padio => ww_key(0),
	combout => \key~combout\(0));

-- Location: LCCOMB_X31_Y25_N30
ix48238z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx48238z1 = (!\key~combout\(0)) # (!nx50205z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx50205z2,
	datad => \key~combout\(0),
	combout => nx48238z1);

-- Location: LCFF_X30_Y25_N9
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\);

-- Location: LCCOMB_X30_Y25_N14
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ & 
-- ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\) # (GND)))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\);

-- Location: LCFF_X30_Y25_N15
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\);

-- Location: LCCOMB_X30_Y25_N18
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ & 
-- ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\) # (GND)))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\);

-- Location: LCFF_X30_Y25_N19
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\);

-- Location: LCCOMB_X30_Y25_N20
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ & 
-- (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ & VCC))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\ = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\);

-- Location: LCCOMB_X30_Y25_N22
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\ & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\ & 
-- ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\) # (GND)))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\ = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\);

-- Location: LCFF_X30_Y25_N23
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\);

-- Location: LCFF_X30_Y25_N21
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\);

-- Location: LCCOMB_X30_Y25_N24
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\ $ (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\);

-- Location: LCFF_X30_Y25_N25
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\);

-- Location: LCCOMB_X31_Y25_N0
ix50205z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z2 = (!\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\ & (((nx50205z3 & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx50205z3,
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\,
	datac => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\,
	datad => \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\,
	combout => nx50205z2);

-- Location: LCCOMB_X31_Y25_N2
ix50205z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z1 = aud_adclrck_dup0 $ (!nx50205z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => aud_adclrck_dup0,
	datad => nx50205z2,
	combout => nx50205z1);

-- Location: LCFF_X31_Y25_N3
u_audio_dac_reg_lrck_1x : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx50205z1,
	sclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aud_adclrck_dup0);

-- Location: CLKCTRL_G10
\aud_adclrck_dup0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aud_adclrck_dup0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aud_adclrck_dup0~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y8_N0
\u_sine_address_add9_0i1|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx37973z1\ = (\sw~combout\(0) & ((\u_sine_address_0_\) # (GND))) # (!\sw~combout\(0) & (\u_sine_address_0_\ $ (VCC)))
-- \u_sine_address_add9_0i1|nx45949z23\ = CARRY((\sw~combout\(0)) # (\u_sine_address_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \u_sine_address_0_\,
	datad => VCC,
	combout => \u_sine_address_add9_0i1|nx37973z1\,
	cout => \u_sine_address_add9_0i1|nx45949z23\);

-- Location: LCFF_X12_Y8_N1
\u_sine_reg_address_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_0_\);

-- Location: LCCOMB_X12_Y8_N2
\u_sine_address_add9_0i1|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx38970z1\ = (\sw~combout\(1) & ((\u_sine_address_1_\ & (\u_sine_address_add9_0i1|nx45949z23\ & VCC)) # (!\u_sine_address_1_\ & (!\u_sine_address_add9_0i1|nx45949z23\)))) # (!\sw~combout\(1) & ((\u_sine_address_1_\ & 
-- (!\u_sine_address_add9_0i1|nx45949z23\)) # (!\u_sine_address_1_\ & ((\u_sine_address_add9_0i1|nx45949z23\) # (GND)))))
-- \u_sine_address_add9_0i1|nx45949z20\ = CARRY((\sw~combout\(1) & (!\u_sine_address_1_\ & !\u_sine_address_add9_0i1|nx45949z23\)) # (!\sw~combout\(1) & ((!\u_sine_address_add9_0i1|nx45949z23\) # (!\u_sine_address_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \u_sine_address_1_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z23\,
	combout => \u_sine_address_add9_0i1|nx38970z1\,
	cout => \u_sine_address_add9_0i1|nx45949z20\);

-- Location: LCFF_X12_Y8_N3
\u_sine_reg_address_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_1_\);

-- Location: LCCOMB_X12_Y8_N4
\u_sine_address_add9_0i1|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx39967z1\ = ((\sw~combout\(2) $ (\u_sine_address_2_\ $ (!\u_sine_address_add9_0i1|nx45949z20\)))) # (GND)
-- \u_sine_address_add9_0i1|nx45949z17\ = CARRY((\sw~combout\(2) & ((\u_sine_address_2_\) # (!\u_sine_address_add9_0i1|nx45949z20\))) # (!\sw~combout\(2) & (\u_sine_address_2_\ & !\u_sine_address_add9_0i1|nx45949z20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datab => \u_sine_address_2_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z20\,
	combout => \u_sine_address_add9_0i1|nx39967z1\,
	cout => \u_sine_address_add9_0i1|nx45949z17\);

-- Location: LCFF_X12_Y8_N5
\u_sine_reg_address_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_2_\);

-- Location: LCCOMB_X12_Y8_N6
\u_sine_address_add9_0i1|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx40964z1\ = (\u_sine_address_3_\ & ((\sw~combout\(3) & (\u_sine_address_add9_0i1|nx45949z17\ & VCC)) # (!\sw~combout\(3) & (!\u_sine_address_add9_0i1|nx45949z17\)))) # (!\u_sine_address_3_\ & ((\sw~combout\(3) & 
-- (!\u_sine_address_add9_0i1|nx45949z17\)) # (!\sw~combout\(3) & ((\u_sine_address_add9_0i1|nx45949z17\) # (GND)))))
-- \u_sine_address_add9_0i1|nx45949z14\ = CARRY((\u_sine_address_3_\ & (!\sw~combout\(3) & !\u_sine_address_add9_0i1|nx45949z17\)) # (!\u_sine_address_3_\ & ((!\u_sine_address_add9_0i1|nx45949z17\) # (!\sw~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_3_\,
	datab => \sw~combout\(3),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z17\,
	combout => \u_sine_address_add9_0i1|nx40964z1\,
	cout => \u_sine_address_add9_0i1|nx45949z14\);

-- Location: LCFF_X12_Y8_N9
\u_sine_reg_address_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_4_\);

-- Location: LCCOMB_X12_Y8_N8
\u_sine_address_add9_0i1|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx41961z1\ = ((\sw~combout\(4) $ (\u_sine_address_4_\ $ (!\u_sine_address_add9_0i1|nx45949z14\)))) # (GND)
-- \u_sine_address_add9_0i1|nx45949z11\ = CARRY((\sw~combout\(4) & ((\u_sine_address_4_\) # (!\u_sine_address_add9_0i1|nx45949z14\))) # (!\sw~combout\(4) & (\u_sine_address_4_\ & !\u_sine_address_add9_0i1|nx45949z14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(4),
	datab => \u_sine_address_4_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z14\,
	combout => \u_sine_address_add9_0i1|nx41961z1\,
	cout => \u_sine_address_add9_0i1|nx45949z11\);

-- Location: LCCOMB_X12_Y8_N10
\u_sine_address_add9_0i1|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx42958z1\ = (\u_sine_address_5_\ & ((\sw~combout\(5) & (\u_sine_address_add9_0i1|nx45949z11\ & VCC)) # (!\sw~combout\(5) & (!\u_sine_address_add9_0i1|nx45949z11\)))) # (!\u_sine_address_5_\ & ((\sw~combout\(5) & 
-- (!\u_sine_address_add9_0i1|nx45949z11\)) # (!\sw~combout\(5) & ((\u_sine_address_add9_0i1|nx45949z11\) # (GND)))))
-- \u_sine_address_add9_0i1|nx45949z8\ = CARRY((\u_sine_address_5_\ & (!\sw~combout\(5) & !\u_sine_address_add9_0i1|nx45949z11\)) # (!\u_sine_address_5_\ & ((!\u_sine_address_add9_0i1|nx45949z11\) # (!\sw~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_5_\,
	datab => \sw~combout\(5),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z11\,
	combout => \u_sine_address_add9_0i1|nx42958z1\,
	cout => \u_sine_address_add9_0i1|nx45949z8\);

-- Location: LCCOMB_X12_Y8_N12
\u_sine_address_add9_0i1|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx43955z1\ = ((\u_sine_address_6_\ $ (\sw~combout\(6) $ (!\u_sine_address_add9_0i1|nx45949z8\)))) # (GND)
-- \u_sine_address_add9_0i1|nx45949z5\ = CARRY((\u_sine_address_6_\ & ((\sw~combout\(6)) # (!\u_sine_address_add9_0i1|nx45949z8\))) # (!\u_sine_address_6_\ & (\sw~combout\(6) & !\u_sine_address_add9_0i1|nx45949z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_6_\,
	datab => \sw~combout\(6),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z8\,
	combout => \u_sine_address_add9_0i1|nx43955z1\,
	cout => \u_sine_address_add9_0i1|nx45949z5\);

-- Location: LCFF_X12_Y8_N15
\u_sine_reg_address_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_7_\);

-- Location: LCCOMB_X12_Y8_N14
\u_sine_address_add9_0i1|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx44952z1\ = (\u_sine_address_7_\ & (!\u_sine_address_add9_0i1|nx45949z5\)) # (!\u_sine_address_7_\ & ((\u_sine_address_add9_0i1|nx45949z5\) # (GND)))
-- \u_sine_address_add9_0i1|nx45949z3\ = CARRY((!\u_sine_address_add9_0i1|nx45949z5\) # (!\u_sine_address_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_sine_address_7_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z5\,
	combout => \u_sine_address_add9_0i1|nx44952z1\,
	cout => \u_sine_address_add9_0i1|nx45949z3\);

-- Location: LCCOMB_X12_Y8_N16
\u_sine_address_add9_0i1|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx45949z1\ = \u_sine_address_8_\ $ (!\u_sine_address_add9_0i1|nx45949z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_8_\,
	cin => \u_sine_address_add9_0i1|nx45949z3\,
	combout => \u_sine_address_add9_0i1|nx45949z1\);

-- Location: LCCOMB_X14_Y8_N26
ix24999z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z5 = (\bit_position_0_\ & (\bit_position_1_\ & ((\audio_out_0_\)))) # (!\bit_position_0_\ & (((\audio_out_1_\)) # (!\bit_position_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_0_\,
	datab => \bit_position_1_\,
	datac => \audio_out_1_\,
	datad => \audio_out_0_\,
	combout => nx24999z5);

-- Location: LCCOMB_X14_Y8_N12
ix24999z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z4 = (\bit_position_1_\ & (((nx24999z5)))) # (!\bit_position_1_\ & ((nx24999z5 & (\audio_out_3_\)) # (!nx24999z5 & ((\audio_out_2_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_3_\,
	datab => \bit_position_1_\,
	datac => \audio_out_2_\,
	datad => nx24999z5,
	combout => nx24999z4);

-- Location: LCCOMB_X14_Y8_N8
ix24999z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z1 = (\bit_position_3_\ & ((\bit_position_2_\ & ((nx24999z4))) # (!\bit_position_2_\ & (nx24999z2)))) # (!\bit_position_3_\ & (((!\bit_position_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx24999z2,
	datab => nx24999z4,
	datac => \bit_position_3_\,
	datad => \bit_position_2_\,
	combout => nx24999z1);

-- Location: LCCOMB_X14_Y8_N4
ix24999z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z6 = (nx24999z7 & ((\audio_out_12_\) # ((\bit_position_1_\)))) # (!nx24999z7 & (((\audio_out_10_\ & !\bit_position_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx24999z7,
	datab => \audio_out_12_\,
	datac => \audio_out_10_\,
	datad => \bit_position_1_\,
	combout => nx24999z6);

-- Location: LCCOMB_X14_Y8_N22
ix24999z52923 : cycloneii_lcell_comb
-- Equation(s):
-- aud_dacdat_dup0 = (\bit_position_3_\ & (((nx24999z1)))) # (!\bit_position_3_\ & ((nx24999z1 & (\audio_out_12_\)) # (!nx24999z1 & ((nx24999z6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_3_\,
	datab => \audio_out_12_\,
	datac => nx24999z1,
	datad => nx24999z6,
	combout => aud_dacdat_dup0);

-- Location: LCCOMB_X41_Y14_N10
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ $ (VCC)
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\ = CARRY(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => VCC,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\);

-- Location: LCCOMB_X41_Y14_N12
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & 
-- ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\) # (GND)))
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ = CARRY((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\);

-- Location: LCCOMB_X41_Y14_N14
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ $ (GND))) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ & VCC))
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\ = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\);

-- Location: LCCOMB_X37_Y7_N0
\u_i2c_av_config|modgen_counter_cont|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx51271z1\ = \u_i2c_av_config|modgen_counter_cont|q_0_\ $ (VCC)
-- \u_i2c_av_config|modgen_counter_cont|nx22081z16\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_0_\,
	datad => VCC,
	combout => \u_i2c_av_config|modgen_counter_cont|nx51271z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z16\);

-- Location: LCCOMB_X37_Y7_N20
\u_i2c_av_config|modgen_counter_cont|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx17096z1\ = (\u_i2c_av_config|modgen_counter_cont|q_10_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z7\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_10_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z7\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z6\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_10_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_10_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z7\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx17096z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z6\);

-- Location: LCFF_X37_Y7_N21
\u_i2c_av_config|modgen_counter_cont|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx17096z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_10_\);

-- Location: LCCOMB_X37_Y7_N16
\u_i2c_av_config|modgen_counter_cont|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx59247z1\ = (\u_i2c_av_config|modgen_counter_cont|q_8_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z9\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_8_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z9\ & 
-- VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z8\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_8_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_8_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z9\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx59247z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z8\);

-- Location: LCFF_X37_Y7_N17
\u_i2c_av_config|modgen_counter_cont|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx59247z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_8_\);

-- Location: LCCOMB_X38_Y7_N24
\u_i2c_av_config|ix35560z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z3\ = (\u_i2c_av_config|modgen_counter_cont|q_11_\ & (\u_i2c_av_config|modgen_counter_cont|q_9_\ & (\u_i2c_av_config|modgen_counter_cont|q_10_\ & \u_i2c_av_config|modgen_counter_cont|q_8_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_11_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_9_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_10_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_8_\,
	combout => \u_i2c_av_config|nx35560z3\);

-- Location: LCCOMB_X37_Y7_N6
\u_i2c_av_config|modgen_counter_cont|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx54262z1\ = (\u_i2c_av_config|modgen_counter_cont|q_3_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z14\)) # (!\u_i2c_av_config|modgen_counter_cont|q_3_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z14\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z13\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z14\) # (!\u_i2c_av_config|modgen_counter_cont|q_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_3_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z14\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx54262z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z13\);

-- Location: LCFF_X37_Y7_N7
\u_i2c_av_config|modgen_counter_cont|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx54262z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_3_\);

-- Location: LCCOMB_X38_Y7_N12
\u_i2c_av_config|ix17807z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx17807z2\ = (\u_i2c_av_config|modgen_counter_cont|q_0_\ & (\u_i2c_av_config|modgen_counter_cont|q_3_\ & (\u_i2c_av_config|modgen_counter_cont|q_2_\ & \u_i2c_av_config|modgen_counter_cont|q_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_0_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_3_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_2_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_1_\,
	combout => \u_i2c_av_config|nx17807z2\);

-- Location: LCCOMB_X38_Y7_N4
\u_i2c_av_config|ix35560z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z1\ = (((!\u_i2c_av_config|nx17807z2\) # (!\u_i2c_av_config|nx35560z3\)) # (!\u_i2c_av_config|nx35560z4\)) # (!\u_i2c_av_config|nx35560z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|nx35560z2\,
	datab => \u_i2c_av_config|nx35560z4\,
	datac => \u_i2c_av_config|nx35560z3\,
	datad => \u_i2c_av_config|nx17807z2\,
	combout => \u_i2c_av_config|nx35560z1\);

-- Location: LCFF_X37_Y7_N1
\u_i2c_av_config|modgen_counter_cont|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx51271z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_0_\);

-- Location: LCCOMB_X37_Y7_N2
\u_i2c_av_config|modgen_counter_cont|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx52268z1\ = (\u_i2c_av_config|modgen_counter_cont|q_1_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z16\)) # (!\u_i2c_av_config|modgen_counter_cont|q_1_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z16\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z15\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z16\) # (!\u_i2c_av_config|modgen_counter_cont|q_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_1_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z16\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx52268z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z15\);

-- Location: LCFF_X37_Y7_N3
\u_i2c_av_config|modgen_counter_cont|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx52268z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_1_\);

-- Location: LCCOMB_X37_Y7_N4
\u_i2c_av_config|modgen_counter_cont|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx53265z1\ = (\u_i2c_av_config|modgen_counter_cont|q_2_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z15\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_2_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z15\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z14\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_2_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_2_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z15\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx53265z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z14\);

-- Location: LCFF_X37_Y7_N5
\u_i2c_av_config|modgen_counter_cont|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx53265z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_2_\);

-- Location: LCCOMB_X37_Y7_N8
\u_i2c_av_config|modgen_counter_cont|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx55259z1\ = (\u_i2c_av_config|modgen_counter_cont|q_4_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z13\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_4_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z13\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z12\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_4_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_4_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z13\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx55259z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z12\);

-- Location: LCFF_X37_Y7_N9
\u_i2c_av_config|modgen_counter_cont|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx55259z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_4_\);

-- Location: LCCOMB_X37_Y7_N14
\u_i2c_av_config|modgen_counter_cont|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx58250z1\ = (\u_i2c_av_config|modgen_counter_cont|q_7_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z10\)) # (!\u_i2c_av_config|modgen_counter_cont|q_7_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z10\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z9\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z10\) # (!\u_i2c_av_config|modgen_counter_cont|q_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_7_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z10\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx58250z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z9\);

-- Location: LCFF_X37_Y7_N15
\u_i2c_av_config|modgen_counter_cont|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx58250z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_7_\);

-- Location: LCCOMB_X37_Y7_N18
\u_i2c_av_config|modgen_counter_cont|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx60244z1\ = (\u_i2c_av_config|modgen_counter_cont|q_9_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z8\)) # (!\u_i2c_av_config|modgen_counter_cont|q_9_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z8\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z7\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z8\) # (!\u_i2c_av_config|modgen_counter_cont|q_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_9_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z8\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx60244z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z7\);

-- Location: LCFF_X37_Y7_N19
\u_i2c_av_config|modgen_counter_cont|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx60244z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_9_\);

-- Location: LCCOMB_X37_Y7_N22
\u_i2c_av_config|modgen_counter_cont|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx18093z1\ = (\u_i2c_av_config|modgen_counter_cont|q_11_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z6\)) # (!\u_i2c_av_config|modgen_counter_cont|q_11_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z6\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z5\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z6\) # (!\u_i2c_av_config|modgen_counter_cont|q_11_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_11_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z6\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx18093z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z5\);

-- Location: LCFF_X37_Y7_N23
\u_i2c_av_config|modgen_counter_cont|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx18093z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_11_\);

-- Location: LCCOMB_X37_Y7_N24
\u_i2c_av_config|modgen_counter_cont|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx19090z1\ = (\u_i2c_av_config|modgen_counter_cont|q_12_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z5\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_12_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z5\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z4\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_12_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_12_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z5\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx19090z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z4\);

-- Location: LCCOMB_X37_Y7_N26
\u_i2c_av_config|modgen_counter_cont|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx20087z1\ = (\u_i2c_av_config|modgen_counter_cont|q_13_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z4\)) # (!\u_i2c_av_config|modgen_counter_cont|q_13_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z4\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z3\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z4\) # (!\u_i2c_av_config|modgen_counter_cont|q_13_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_13_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z4\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx20087z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z3\);

-- Location: LCFF_X37_Y7_N27
\u_i2c_av_config|modgen_counter_cont|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx20087z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_13_\);

-- Location: LCCOMB_X37_Y7_N28
\u_i2c_av_config|modgen_counter_cont|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx21084z1\ = (\u_i2c_av_config|modgen_counter_cont|q_14_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z3\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_14_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z3\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z2\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_14_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_14_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z3\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx21084z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z2\);

-- Location: LCFF_X37_Y7_N29
\u_i2c_av_config|modgen_counter_cont|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx21084z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_14_\);

-- Location: LCCOMB_X37_Y7_N30
\u_i2c_av_config|modgen_counter_cont|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx22081z1\ = \u_i2c_av_config|modgen_counter_cont|nx22081z2\ $ (\u_i2c_av_config|modgen_counter_cont|q_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|modgen_counter_cont|q_15_\,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z2\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx22081z1\);

-- Location: LCFF_X37_Y7_N31
\u_i2c_av_config|modgen_counter_cont|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx22081z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_15_\);

-- Location: LCFF_X37_Y7_N25
\u_i2c_av_config|modgen_counter_cont|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx19090z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_12_\);

-- Location: LCCOMB_X38_Y7_N2
\u_i2c_av_config|ix35560z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z4\ = (\u_i2c_av_config|modgen_counter_cont|q_14_\ & (\u_i2c_av_config|modgen_counter_cont|q_13_\ & (\u_i2c_av_config|modgen_counter_cont|q_15_\ & \u_i2c_av_config|modgen_counter_cont|q_12_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_14_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_13_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_15_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_12_\,
	combout => \u_i2c_av_config|nx35560z4\);

-- Location: LCCOMB_X38_Y7_N18
\u_i2c_av_config|ix17807z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx17807z1\ = (\u_i2c_av_config|nx35560z2\ & (\u_i2c_av_config|nx35560z4\ & (\u_i2c_av_config|nx35560z3\ & \u_i2c_av_config|nx17807z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|nx35560z2\,
	datab => \u_i2c_av_config|nx35560z4\,
	datac => \u_i2c_av_config|nx35560z3\,
	datad => \u_i2c_av_config|nx17807z2\,
	combout => \u_i2c_av_config|nx17807z1\);

-- Location: LCFF_X38_Y7_N19
\u_i2c_av_config|reg_reset_n\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|nx17807z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|reset_n\);

-- Location: LCCOMB_X42_Y14_N2
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\ $ (VCC)
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\ = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\,
	datad => VCC,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\);

-- Location: LCCOMB_X41_Y14_N4
\u_i2c_av_config|ix23875z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx23875z1\ = (\u_i2c_av_config|nx2692z2\) # (!\u_i2c_av_config|reset_n\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|reset_n\,
	datad => \u_i2c_av_config|nx2692z2\,
	combout => \u_i2c_av_config|nx23875z1\);

-- Location: LCFF_X42_Y14_N3
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\);

-- Location: LCCOMB_X42_Y14_N4
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\);

-- Location: LCFF_X42_Y14_N5
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\);

-- Location: LCCOMB_X42_Y14_N6
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\);

-- Location: LCCOMB_X42_Y14_N8
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\);

-- Location: LCFF_X42_Y14_N9
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\);

-- Location: LCCOMB_X42_Y14_N10
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\);

-- Location: LCCOMB_X42_Y14_N12
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\);

-- Location: LCCOMB_X42_Y14_N14
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\);

-- Location: LCFF_X42_Y14_N15
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\);

-- Location: LCCOMB_X42_Y14_N18
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\);

-- Location: LCFF_X42_Y14_N19
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\);

-- Location: LCCOMB_X42_Y14_N20
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\);

-- Location: LCFF_X42_Y14_N21
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\);

-- Location: LCCOMB_X42_Y14_N22
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\);

-- Location: LCFF_X42_Y14_N23
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\);

-- Location: LCFF_X42_Y14_N25
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\);

-- Location: LCCOMB_X41_Y14_N28
\u_i2c_av_config|ix2692z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z5\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\) # (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\,
	datac => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\,
	combout => \u_i2c_av_config|nx2692z5\);

-- Location: LCFF_X42_Y14_N11
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\);

-- Location: LCFF_X42_Y14_N13
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\);

-- Location: LCFF_X42_Y14_N7
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\);

-- Location: LCCOMB_X41_Y14_N8
\u_i2c_av_config|ix2692z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z3\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\) # 
-- (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\,
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\,
	datac => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\,
	combout => \u_i2c_av_config|nx2692z3\);

-- Location: LCCOMB_X41_Y14_N2
\u_i2c_av_config|ix2692z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z4\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & 
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\,
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\,
	datac => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\,
	combout => \u_i2c_av_config|nx2692z4\);

-- Location: LCCOMB_X41_Y14_N6
\u_i2c_av_config|ix2692z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z2\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\) # ((\u_i2c_av_config|nx2692z5\) # ((\u_i2c_av_config|nx2692z3\ & \u_i2c_av_config|nx2692z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\,
	datab => \u_i2c_av_config|nx2692z5\,
	datac => \u_i2c_av_config|nx2692z3\,
	datad => \u_i2c_av_config|nx2692z4\,
	combout => \u_i2c_av_config|nx2692z2\);

-- Location: LCCOMB_X38_Y7_N0
\u_i2c_av_config|ix2692z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z1\ = \u_i2c_av_config|m_i2c_ctrl_clk\ $ (\u_i2c_av_config|nx2692z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|nx2692z2\,
	combout => \u_i2c_av_config|nx2692z1\);

-- Location: LCFF_X38_Y7_N1
\u_i2c_av_config|reg_m_i2c_ctrl_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|nx2692z1\,
	sclr => \u_i2c_av_config|ALT_INV_reset_n\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|m_i2c_ctrl_clk\);

-- Location: LCCOMB_X41_Y14_N0
\u_i2c_av_config|ix51161z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx51161z1\ = (\u_i2c_av_config|reset_n\ & (\u_i2c_av_config|m_i2c_ctrl_clk\ $ (\u_i2c_av_config|nx2692z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|reset_n\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|nx2692z2\,
	combout => \u_i2c_av_config|nx51161z1\);

-- Location: LCCOMB_X41_Y14_N26
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix55259z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\ = (!\u_i2c_av_config|m_i2c_ctrl_clk\ & (\u_i2c_av_config|nx51161z1\ & ((\u_i2c_av_config|u0|nx7286z1\) # (!\u_i2c_av_config|reset_n\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx7286z1\,
	datab => \u_i2c_av_config|reset_n\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|nx51161z1\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\);

-- Location: LCFF_X41_Y14_N15
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\);

-- Location: LCCOMB_X41_Y14_N16
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & 
-- ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\) # (GND)))
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ = CARRY((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\);

-- Location: LCFF_X41_Y14_N17
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\);

-- Location: LCFF_X41_Y14_N13
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\);

-- Location: LCFF_X41_Y14_N11
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\);

-- Location: LCCOMB_X37_Y14_N26
\u_i2c_av_config|u0|ix43379z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx43379z4\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	combout => \u_i2c_av_config|u0|nx43379z4\);

-- Location: LCCOMB_X41_Y14_N18
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ $ (GND))) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ & VCC))
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\ = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\);

-- Location: LCFF_X41_Y14_N19
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\);

-- Location: LCCOMB_X41_Y14_N20
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ $ (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\);

-- Location: LCFF_X41_Y14_N21
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\);

-- Location: LCCOMB_X37_Y14_N28
\u_i2c_av_config|u0|ix43379z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx43379z3\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\) # (!\u_i2c_av_config|u0|nx43379z4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|nx43379z4\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx43379z3\);

-- Location: LCCOMB_X37_Y14_N8
\u_i2c_av_config|u0|ix43379z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx43379z2\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\) # 
-- (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx43379z2\);

-- Location: LCCOMB_X38_Y14_N24
\u_i2c_av_config|u0|ix44942z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z1\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx44942z1\);

-- Location: LCCOMB_X37_Y14_N18
\u_i2c_av_config|u0|ix44942z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z8\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|nx44942z8\);

-- Location: LCCOMB_X38_Y14_N18
\u_i2c_av_config|u0|ix44942z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z7\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx44942z7\);

-- Location: LCCOMB_X38_Y14_N4
\u_i2c_av_config|u0|ix44942z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z6\ = ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & (!\u_i2c_av_config|u0|nx44942z8\ & !\u_i2c_av_config|u0|nx44942z7\))) # (!\u_i2c_av_config|reset_n\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datab => \u_i2c_av_config|u0|nx44942z8\,
	datac => \u_i2c_av_config|reset_n\,
	datad => \u_i2c_av_config|u0|nx44942z7\,
	combout => \u_i2c_av_config|u0|nx44942z6\);

-- Location: LCCOMB_X37_Y14_N16
\u_i2c_av_config|u0|ix44942z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z4\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\) # (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx44942z4\);

-- Location: LCCOMB_X38_Y14_N30
\u_i2c_av_config|u0|ix44942z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z3\ = (\u_i2c_av_config|u0|nx44942z6\) # ((!\u_i2c_av_config|u0|nx44942z5\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & !\u_i2c_av_config|u0|nx44942z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx44942z5\,
	datab => \u_i2c_av_config|u0|nx44942z6\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|nx44942z4\,
	combout => \u_i2c_av_config|u0|nx44942z3\);

-- Location: LCCOMB_X38_Y14_N16
\u_i2c_av_config|u0|ix44942z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z2\ = (\u_i2c_av_config|u0|nx44942z3\ & (!\u_i2c_av_config|m_i2c_ctrl_clk\ & \u_i2c_av_config|nx51161z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|nx44942z3\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|nx51161z1\,
	combout => \u_i2c_av_config|u0|nx44942z2\);

-- Location: LCFF_X38_Y14_N25
\u_i2c_av_config|u0|reg_sclk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|nx44942z1\,
	sclr => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|nx44942z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|nx43379z1\);

-- Location: LCCOMB_X37_Y14_N22
\u_i2c_av_config|u0|ix43379z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|p_i2c_sclk\ = ((!\u_i2c_av_config|m_i2c_ctrl_clk\ & ((\u_i2c_av_config|u0|nx43379z3\) # (\u_i2c_av_config|u0|nx43379z2\)))) # (!\u_i2c_av_config|u0|nx43379z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx43379z3\,
	datab => \u_i2c_av_config|u0|nx43379z2\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|u0|nx43379z1\,
	combout => \u_i2c_av_config|u0|p_i2c_sclk\);

-- Location: CLKCTRL_G9
\clock_27~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_27~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_27~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y14_N0
\u_i2c_av_config|u0|ix41315z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z16\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx41315z16\);

-- Location: LCCOMB_X38_Y14_N20
\u_i2c_av_config|u0|ix41315z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z15\ = (\u_i2c_av_config|u0|nx41315z17\) # ((\u_i2c_av_config|u0|nx41315z16\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z17\,
	datab => \u_i2c_av_config|u0|nx41315z16\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx41315z15\);

-- Location: LCCOMB_X38_Y14_N26
\u_i2c_av_config|u0|ix41315z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z12\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (!\u_i2c_av_config|u0|nx44942z7\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & !\u_i2c_av_config|u0|nx44942z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|nx44942z7\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|nx44942z4\,
	combout => \u_i2c_av_config|u0|nx41315z12\);

-- Location: LCCOMB_X38_Y14_N22
\u_i2c_av_config|u0|ix41315z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z11\ = (\u_i2c_av_config|u0|nx41315z13\) # ((\u_i2c_av_config|u0|nx41315z15\) # (\u_i2c_av_config|u0|nx41315z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z13\,
	datac => \u_i2c_av_config|u0|nx41315z15\,
	datad => \u_i2c_av_config|u0|nx41315z12\,
	combout => \u_i2c_av_config|u0|nx41315z11\);

-- Location: LCCOMB_X40_Y14_N2
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\ = (\u_i2c_av_config|u0|sdo_5n5s2f1_0_\ & ((GND) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\))) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_0_\ & 
-- (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ $ (GND)))
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ = CARRY((\u_i2c_av_config|u0|sdo_5n5s2f1_0_\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_5n5s2f1_0_\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => VCC,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\);

-- Location: LCCOMB_X41_Y14_N30
\u_i2c_av_config|u0|ix22137z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx22137z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\) # 
-- (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx22137z1\);

-- Location: LCCOMB_X40_Y14_N4
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ = (\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ 
-- & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ & VCC)))) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & ((\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\) # (GND))) # 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\))))
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\ = CARRY((\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\)) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & 
-- ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_5n5s2f1_1_\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\);

-- Location: LCCOMB_X40_Y14_N6
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ = ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ $ (\u_i2c_av_config|u0|nx22137z1\ $ (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\)))) # (GND)
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (\u_i2c_av_config|u0|nx22137z1\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & 
-- ((\u_i2c_av_config|u0|nx22137z1\) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|nx22137z1\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\);

-- Location: LCCOMB_X40_Y14_N18
\u_i2c_av_config|u0|ix41315z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z10\ = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ $ (\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\,
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	datad => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	combout => \u_i2c_av_config|u0|nx41315z10\);

-- Location: LCCOMB_X41_Y14_N22
\u_i2c_av_config|u0|ix7286z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx7286z2\ = (((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)) # 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx7286z2\);

-- Location: LCCOMB_X37_Y14_N12
\u_i2c_av_config|u0|ix41315z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z4\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\) # (!\u_i2c_av_config|u0|nx7286z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datac => \u_i2c_av_config|u0|nx7286z2\,
	combout => \u_i2c_av_config|u0|nx41315z4\);

-- Location: LCCOMB_X40_Y14_N0
\u_i2c_av_config|u0|ix44942z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z5\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\) # (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|nx44942z5\);

-- Location: LCCOMB_X37_Y14_N24
\u_i2c_av_config|u0|ix41315z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z6\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\) # (\u_i2c_av_config|u0|nx44942z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => \u_i2c_av_config|u0|nx44942z5\,
	combout => \u_i2c_av_config|u0|nx41315z6\);

-- Location: LCCOMB_X37_Y14_N2
\u_i2c_av_config|u0|ix41315z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z3\ = (\u_i2c_av_config|u0|nx41315z6\) # ((\u_i2c_av_config|u0|nx22137z1\ & ((!\u_i2c_av_config|u0|nx41315z4\))) # (!\u_i2c_av_config|u0|nx22137z1\ & (\u_i2c_av_config|u0|nx41315z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z5\,
	datab => \u_i2c_av_config|u0|nx41315z4\,
	datac => \u_i2c_av_config|u0|nx41315z6\,
	datad => \u_i2c_av_config|u0|nx22137z1\,
	combout => \u_i2c_av_config|u0|nx41315z3\);

-- Location: LCCOMB_X40_Y14_N12
\u_i2c_av_config|u0|ix41315z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z2\ = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ & \u_i2c_av_config|u0|nx41315z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\,
	datad => \u_i2c_av_config|u0|nx41315z3\,
	combout => \u_i2c_av_config|u0|nx41315z2\);

-- Location: LCCOMB_X40_Y14_N20
\u_i2c_av_config|u0|ix41315z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z7\ = (\u_i2c_av_config|u0|nx41315z8\) # ((\u_i2c_av_config|u0|nx41315z10\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ & \u_i2c_av_config|u0|nx41315z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z8\,
	datab => \u_i2c_av_config|u0|nx41315z10\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	datad => \u_i2c_av_config|u0|nx41315z2\,
	combout => \u_i2c_av_config|u0|nx41315z7\);

-- Location: LCCOMB_X40_Y14_N22
\u_i2c_av_config|u0|ix41315z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z18\ = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\,
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	datad => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	combout => \u_i2c_av_config|u0|nx41315z18\);

-- Location: LCCOMB_X40_Y14_N28
\u_i2c_av_config|u0|ix41315z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z1\ = (!\u_i2c_av_config|u0|nx41315z11\ & (!\u_i2c_av_config|u0|nx41315z7\ & ((!\u_i2c_av_config|u0|nx41315z18\) # (!\u_i2c_av_config|u0|nx41315z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z2\,
	datab => \u_i2c_av_config|u0|nx41315z11\,
	datac => \u_i2c_av_config|u0|nx41315z7\,
	datad => \u_i2c_av_config|u0|nx41315z18\,
	combout => \u_i2c_av_config|u0|nx41315z1\);

-- Location: LCCOMB_X38_Y14_N14
\u_i2c_av_config|u0|ix41315z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z19\ = (\u_i2c_av_config|u0|nx41315z20\ & (!\u_i2c_av_config|m_i2c_ctrl_clk\ & \u_i2c_av_config|nx51161z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z20\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|nx51161z1\,
	combout => \u_i2c_av_config|u0|nx41315z19\);

-- Location: LCFF_X40_Y14_N29
\u_i2c_av_config|u0|reg_sdo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|nx41315z1\,
	sclr => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|nx41315z19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|nx51857z1\);

-- Location: LCCOMB_X32_Y25_N24
ix30102z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30102z1 = (\key~combout\(0) & !\u_audio_dac_bck_div_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datac => \u_audio_dac_bck_div_2_\,
	combout => nx30102z1);

-- Location: LCCOMB_X31_Y25_N14
ix30102z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx30102z2 = ((\u_audio_dac_bck_div_0_\ & ((\u_audio_dac_bck_div_1_\) # (\u_audio_dac_bck_div_2_\))) # (!\u_audio_dac_bck_div_0_\ & (\u_audio_dac_bck_div_1_\ & \u_audio_dac_bck_div_2_\))) # (!\key~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \u_audio_dac_bck_div_0_\,
	datac => \u_audio_dac_bck_div_1_\,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx30102z2);

-- Location: LCFF_X32_Y25_N25
\u_audio_dac_modgen_counter_bck_div_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx30102z1,
	ena => nx30102z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_bck_div_2_\);

-- Location: LCCOMB_X31_Y25_N26
ix31099z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx31099z1 = (\key~combout\(0) & (!\u_audio_dac_bck_div_1_\ & ((!\u_audio_dac_bck_div_2_\) # (!\u_audio_dac_bck_div_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \u_audio_dac_bck_div_0_\,
	datac => \u_audio_dac_bck_div_1_\,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx31099z1);

-- Location: LCCOMB_X31_Y25_N6
ix31099z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx31099z2 = ((\u_audio_dac_bck_div_0_\) # ((\u_audio_dac_bck_div_1_\ & \u_audio_dac_bck_div_2_\))) # (!\key~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \u_audio_dac_bck_div_0_\,
	datac => \u_audio_dac_bck_div_1_\,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx31099z2);

-- Location: LCFF_X31_Y25_N27
\u_audio_dac_modgen_counter_bck_div_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx31099z1,
	ena => nx31099z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_bck_div_1_\);

-- Location: LCCOMB_X31_Y25_N22
ix32096z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx32096z1 = (\key~combout\(0) & (!\u_audio_dac_bck_div_0_\ & ((!\u_audio_dac_bck_div_2_\) # (!\u_audio_dac_bck_div_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \u_audio_dac_bck_div_1_\,
	datac => \u_audio_dac_bck_div_0_\,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx32096z1);

-- Location: LCFF_X31_Y25_N23
\u_audio_dac_modgen_counter_bck_div_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx32096z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_bck_div_0_\);

-- Location: LCCOMB_X31_Y25_N24
ix15494z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx15494z1 = aud_bclk_dup0 $ (((\u_audio_dac_bck_div_2_\ & ((\u_audio_dac_bck_div_1_\) # (\u_audio_dac_bck_div_0_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_bck_div_1_\,
	datab => \u_audio_dac_bck_div_0_\,
	datac => aud_bclk_dup0,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx15494z1);

-- Location: LCFF_X31_Y25_N25
u_audio_dac_reg_aud_bck : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx15494z1,
	sclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aud_bclk_dup0);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_7_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_8_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(8));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_7_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_8_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_9_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_10_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_11_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_12_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_13_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_14_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_15_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_16_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_17_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(17));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_0_\ : cycloneii_io
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
	datain => \hex4_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_1_\ : cycloneii_io
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
	datain => \hex4_dup0_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_2_\ : cycloneii_io
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
	datain => \hex4_dup0_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_3_\ : cycloneii_io
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
	datain => \hex4_dup0_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_4_\ : cycloneii_io
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
	datain => \hex4_dup0_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_5_\ : cycloneii_io
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
	datain => \hex4_dup0_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_6_\ : cycloneii_io
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
	datain => \hex4_dup0_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_0_\ : cycloneii_io
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
	datain => \hex5_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_1_\ : cycloneii_io
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
	datain => \hex5_dup0_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_2_\ : cycloneii_io
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
	datain => \hex5_dup0_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_3_\ : cycloneii_io
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
	datain => \hex5_dup0_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_4_\ : cycloneii_io
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
	datain => \hex5_dup0_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_5_\ : cycloneii_io
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
	datain => \hex5_dup0_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_6_\ : cycloneii_io
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
	datain => \hex5_dup0_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_0_\ : cycloneii_io
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
	datain => \hex6_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_1_\ : cycloneii_io
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
	datain => \hex6_dup0_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_2_\ : cycloneii_io
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
	datain => \hex6_dup0_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_3_\ : cycloneii_io
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
	datain => \hex6_dup0_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_4_\ : cycloneii_io
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
	datain => \hex6_dup0_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_5_\ : cycloneii_io
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
	datain => \hex6_dup0_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_6_\ : cycloneii_io
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
	datain => \hex6_dup0_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_0_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_1_\ : cycloneii_io
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
	padio => ww_hex7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_2_\ : cycloneii_io
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
	padio => ww_hex7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_3_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_4_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_5_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_6_\ : cycloneii_io
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
	padio => ww_hex7(6));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
aud_xck_obuf : cycloneii_io
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
	datain => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_xck);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
aud_dacdat_obuf : cycloneii_io
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
	datain => aud_dacdat_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_dacdat);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
aud_daclrck_obuf : cycloneii_io
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
	datain => aud_adclrck_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_daclrck);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
aud_adclrck_obuf : cycloneii_io
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
	datain => aud_adclrck_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_adclrck);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
i2c_sclk_obuf : cycloneii_io
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
	datain => \u_i2c_av_config|u0|p_i2c_sclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_i2c_sclk);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
u_i2c_av_config_u0_ix31977z43919 : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_i2c_av_config|u0|ALT_INV_nx51857z1\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => i2c_sdat);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aud_bclk~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => aud_bclk_dup0,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => aud_bclk);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : cycloneii_io
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
	padio => ww_clock_50);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
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
	padio => ww_key(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[2]~I\ : cycloneii_io
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
	padio => ww_key(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[3]~I\ : cycloneii_io
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
	padio => ww_key(3));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[7]~I\ : cycloneii_io
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
	padio => ww_sw(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[8]~I\ : cycloneii_io
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
	padio => ww_sw(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[9]~I\ : cycloneii_io
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
	padio => ww_sw(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[10]~I\ : cycloneii_io
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
	padio => ww_sw(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[11]~I\ : cycloneii_io
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
	padio => ww_sw(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[12]~I\ : cycloneii_io
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
	padio => ww_sw(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[13]~I\ : cycloneii_io
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
	padio => ww_sw(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[14]~I\ : cycloneii_io
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
	padio => ww_sw(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[15]~I\ : cycloneii_io
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
	padio => ww_sw(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[16]~I\ : cycloneii_io
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
	padio => ww_sw(16));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[17]~I\ : cycloneii_io
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
	padio => ww_sw(17));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.fir_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity fir_top is
  port (
      clock_50  : in STD_LOGIC
    ; clock_27  : in STD_LOGIC
    ; key  : in std_logic_vector (3 downto 0)
    ; sw  : in std_logic_vector (17 downto 0)
    ; ledg  : out std_logic_vector (8 downto 0)
    ; ledr  : out std_logic_vector (17 downto 0)
    ; hex0  : out std_logic_vector (6 downto 0)
    ; hex1  : out std_logic_vector (6 downto 0)
    ; hex2  : out std_logic_vector (6 downto 0)
    ; hex3  : out std_logic_vector (6 downto 0)
    ; hex4  : out std_logic_vector (6 downto 0)
    ; hex5  : out std_logic_vector (6 downto 0)
    ; hex6  : out std_logic_vector (6 downto 0)
    ; hex7  : out std_logic_vector (6 downto 0)
    ; aud_xck  : out STD_LOGIC
    ; aud_bclk  : inout STD_LOGIC
    ; aud_dacdat  : out STD_LOGIC
    ; aud_daclrck  : out STD_LOGIC
    ; aud_adclrck  : out STD_LOGIC
    ; i2c_sdat  : inout STD_LOGIC
    ; i2c_sclk  : out STD_LOGIC
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of fir_top is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.fir_top_chip
    port map (
        clock_50 => clock_50
      , clock_27 => clock_27
      , key(3) => key(3)
      , key(2) => key(2)
      , key(1) => key(1)
      , key(0) => key(0)
      , sw(17) => sw(17)
      , sw(16) => sw(16)
      , sw(15) => sw(15)
      , sw(14) => sw(14)
      , sw(13) => sw(13)
      , sw(12) => sw(12)
      , sw(11) => sw(11)
      , sw(10) => sw(10)
      , sw(9) => sw(9)
      , sw(8) => sw(8)
      , sw(7) => sw(7)
      , sw(6) => sw(6)
      , sw(5) => sw(5)
      , sw(4) => sw(4)
      , sw(3) => sw(3)
      , sw(2) => sw(2)
      , sw(1) => sw(1)
      , sw(0) => sw(0)
      , ledg(8) => ledg(8)
      , ledg(7) => ledg(7)
      , ledg(6) => ledg(6)
      , ledg(5) => ledg(5)
      , ledg(4) => ledg(4)
      , ledg(3) => ledg(3)
      , ledg(2) => ledg(2)
      , ledg(1) => ledg(1)
      , ledg(0) => ledg(0)
      , ledr(17) => ledr(17)
      , ledr(16) => ledr(16)
      , ledr(15) => ledr(15)
      , ledr(14) => ledr(14)
      , ledr(13) => ledr(13)
      , ledr(12) => ledr(12)
      , ledr(11) => ledr(11)
      , ledr(10) => ledr(10)
      , ledr(9) => ledr(9)
      , ledr(8) => ledr(8)
      , ledr(7) => ledr(7)
      , ledr(6) => ledr(6)
      , ledr(5) => ledr(5)
      , ledr(4) => ledr(4)
      , ledr(3) => ledr(3)
      , ledr(2) => ledr(2)
      , ledr(1) => ledr(1)
      , ledr(0) => ledr(0)
      , hex0(6) => hex0(6)
      , hex0(5) => hex0(5)
      , hex0(4) => hex0(4)
      , hex0(3) => hex0(3)
      , hex0(2) => hex0(2)
      , hex0(1) => hex0(1)
      , hex0(0) => hex0(0)
      , hex1(6) => hex1(6)
      , hex1(5) => hex1(5)
      , hex1(4) => hex1(4)
      , hex1(3) => hex1(3)
      , hex1(2) => hex1(2)
      , hex1(1) => hex1(1)
      , hex1(0) => hex1(0)
      , hex2(6) => hex2(6)
      , hex2(5) => hex2(5)
      , hex2(4) => hex2(4)
      , hex2(3) => hex2(3)
      , hex2(2) => hex2(2)
      , hex2(1) => hex2(1)
      , hex2(0) => hex2(0)
      , hex3(6) => hex3(6)
      , hex3(5) => hex3(5)
      , hex3(4) => hex3(4)
      , hex3(3) => hex3(3)
      , hex3(2) => hex3(2)
      , hex3(1) => hex3(1)
      , hex3(0) => hex3(0)
      , hex4(6) => hex4(6)
      , hex4(5) => hex4(5)
      , hex4(4) => hex4(4)
      , hex4(3) => hex4(3)
      , hex4(2) => hex4(2)
      , hex4(1) => hex4(1)
      , hex4(0) => hex4(0)
      , hex5(6) => hex5(6)
      , hex5(5) => hex5(5)
      , hex5(4) => hex5(4)
      , hex5(3) => hex5(3)
      , hex5(2) => hex5(2)
      , hex5(1) => hex5(1)
      , hex5(0) => hex5(0)
      , hex6(6) => hex6(6)
      , hex6(5) => hex6(5)
      , hex6(4) => hex6(4)
      , hex6(3) => hex6(3)
      , hex6(2) => hex6(2)
      , hex6(1) => hex6(1)
      , hex6(0) => hex6(0)
      , hex7(6) => hex7(6)
      , hex7(5) => hex7(5)
      , hex7(4) => hex7(4)
      , hex7(3) => hex7(3)
      , hex7(2) => hex7(2)
      , hex7(1) => hex7(1)
      , hex7(0) => hex7(0)
      , aud_xck => aud_xck
      , aud_bclk => aud_bclk
      , aud_dacdat => aud_dacdat
      , aud_daclrck => aud_daclrck
      , aud_adclrck => aud_adclrck
      , i2c_sdat => i2c_sdat
      , i2c_sclk => i2c_sclk
    );
end architecture;

