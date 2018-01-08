-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/19/2016 21:43:30"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	firzol IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	Load_x : IN std_logic;
	Load_c : IN std_logic;
	L_in : IN STD.STANDARD.integer range 1 TO 7;
	x_in : IN std_logic_vector(8 DOWNTO 0);
	c_in : IN std_logic_vector(8 DOWNTO 0);
	y_out : OUT std_logic_vector(18 DOWNTO 0)
	);
END firzol;

-- Design Ports Information
-- y_out[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[10]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[12]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[13]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[14]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[15]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[16]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[17]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[18]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L_in[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L_in[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L_in[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load_x	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load_c	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[8]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[8]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF firzol IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Load_x : std_logic;
SIGNAL ww_Load_c : std_logic;
SIGNAL ww_L_in : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_x_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_c_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \St~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \St:d[2]~q\ : std_logic;
SIGNAL \St:d[3]~q\ : std_logic;
SIGNAL \St:d[5]~q\ : std_logic;
SIGNAL \St:d[6]~q\ : std_logic;
SIGNAL \St:d[10]~q\ : std_logic;
SIGNAL \St:d[12]~q\ : std_logic;
SIGNAL \St:d[13]~q\ : std_logic;
SIGNAL \St:d[15]~q\ : std_logic;
SIGNAL \St:d[16]~q\ : std_logic;
SIGNAL \St:d[18]~q\ : std_logic;
SIGNAL \St:x_count_ini[2]~6_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \St:L_current[2]~5_combout\ : std_logic;
SIGNAL \c_ar[2][0]~_emulated_q\ : std_logic;
SIGNAL \c_ar[2][0]~6_combout\ : std_logic;
SIGNAL \c_ar[0][0]~_emulated_q\ : std_logic;
SIGNAL \c_ar[0][0]~10_combout\ : std_logic;
SIGNAL \c_ar[6][1]~_emulated_q\ : std_logic;
SIGNAL \c_ar[6][1]~54_combout\ : std_logic;
SIGNAL \c_ar[2][2]~_emulated_q\ : std_logic;
SIGNAL \c_ar[2][2]~62_combout\ : std_logic;
SIGNAL \c_ar[0][2]~_emulated_q\ : std_logic;
SIGNAL \c_ar[0][2]~66_combout\ : std_logic;
SIGNAL \c_ar[3][4]~_emulated_q\ : std_logic;
SIGNAL \c_ar[3][4]~126_combout\ : std_logic;
SIGNAL \c_ar[6][5]~_emulated_q\ : std_logic;
SIGNAL \c_ar[6][5]~166_combout\ : std_logic;
SIGNAL \c_ar[4][6]~_emulated_q\ : std_logic;
SIGNAL \c_ar[4][6]~190_combout\ : std_logic;
SIGNAL \c_ar[6][6]~_emulated_q\ : std_logic;
SIGNAL \c_ar[6][6]~194_combout\ : std_logic;
SIGNAL \c_ar[3][8]~_emulated_q\ : std_logic;
SIGNAL \c_ar[3][8]~238_combout\ : std_logic;
SIGNAL \c_ar[5][8]~_emulated_q\ : std_logic;
SIGNAL \c_ar[5][8]~242_combout\ : std_logic;
SIGNAL \c_ar[6][8]~_emulated_q\ : std_logic;
SIGNAL \c_ar[6][8]~250_combout\ : std_logic;
SIGNAL \St:x_ar[2][0]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][2]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][3]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][3]~2_combout\ : std_logic;
SIGNAL \St:x_ar[2][3]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[6][3]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[3][4]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[6][4]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[3][5]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][6]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][6]~2_combout\ : std_logic;
SIGNAL \St:x_ar[1][6]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][7]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][7]~2_combout\ : std_logic;
SIGNAL \St:x_ar[4][7]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[4][7]~2_combout\ : std_logic;
SIGNAL \St:x_ar[6][7]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][8]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][8]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[3][8]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[4][8]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[6][8]~_emulated_q\ : std_logic;
SIGNAL \c_ar[2][0]~7_combout\ : std_logic;
SIGNAL \St~3_combout\ : std_logic;
SIGNAL \c_ar[0][0]~11_combout\ : std_logic;
SIGNAL \St~4_combout\ : std_logic;
SIGNAL \St~6_combout\ : std_logic;
SIGNAL \St~7_combout\ : std_logic;
SIGNAL \St~9_combout\ : std_logic;
SIGNAL \St~11_combout\ : std_logic;
SIGNAL \St~14_combout\ : std_logic;
SIGNAL \c_ar[6][1]~55_combout\ : std_logic;
SIGNAL \St~15_combout\ : std_logic;
SIGNAL \c_ar[2][2]~63_combout\ : std_logic;
SIGNAL \St~17_combout\ : std_logic;
SIGNAL \c_ar[0][2]~67_combout\ : std_logic;
SIGNAL \St~18_combout\ : std_logic;
SIGNAL \St~27_combout\ : std_logic;
SIGNAL \c_ar[3][4]~127_combout\ : std_logic;
SIGNAL \St~33_combout\ : std_logic;
SIGNAL \St~34_combout\ : std_logic;
SIGNAL \St~35_combout\ : std_logic;
SIGNAL \c_ar[6][5]~167_combout\ : std_logic;
SIGNAL \St~43_combout\ : std_logic;
SIGNAL \c_ar[4][6]~191_combout\ : std_logic;
SIGNAL \St~49_combout\ : std_logic;
SIGNAL \c_ar[6][6]~195_combout\ : std_logic;
SIGNAL \St~50_combout\ : std_logic;
SIGNAL \St~51_combout\ : std_logic;
SIGNAL \St~54_combout\ : std_logic;
SIGNAL \St~55_combout\ : std_logic;
SIGNAL \St~58_combout\ : std_logic;
SIGNAL \c_ar[3][8]~239_combout\ : std_logic;
SIGNAL \St~61_combout\ : std_logic;
SIGNAL \c_ar[5][8]~243_combout\ : std_logic;
SIGNAL \St~62_combout\ : std_logic;
SIGNAL \c_ar[6][8]~251_combout\ : std_logic;
SIGNAL \St~64_combout\ : std_logic;
SIGNAL \Mux53~9_combout\ : std_logic;
SIGNAL \St~67_combout\ : std_logic;
SIGNAL \St:x_ar[1][0]~7_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \Selector30~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][0]~3_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector66~1_combout\ : std_logic;
SIGNAL \Selector66~2_combout\ : std_logic;
SIGNAL \x_ar~42_combout\ : std_logic;
SIGNAL \St~76_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \Selector38~2_combout\ : std_logic;
SIGNAL \Selector56~1_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \x_ar~77_combout\ : std_logic;
SIGNAL \x_ar~97_combout\ : std_logic;
SIGNAL \Mux51~8_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \Selector55~2_combout\ : std_logic;
SIGNAL \Selector55~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][2]~3_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \St~86_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][3]~3_combout\ : std_logic;
SIGNAL \St~89_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][3]~3_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Selector63~1_combout\ : std_logic;
SIGNAL \Selector63~2_combout\ : std_logic;
SIGNAL \Selector63~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][3]~3_combout\ : std_logic;
SIGNAL \Mux49~12_combout\ : std_logic;
SIGNAL \Selector53~1_combout\ : std_logic;
SIGNAL \Selector53~2_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \Selector35~2_combout\ : std_logic;
SIGNAL \Selector35~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][4]~3_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector62~1_combout\ : std_logic;
SIGNAL \Selector62~2_combout\ : std_logic;
SIGNAL \Selector62~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][4]~3_combout\ : std_logic;
SIGNAL \x_ar~177_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector34~2_combout\ : std_logic;
SIGNAL \Selector34~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][5]~3_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \Selector61~1_combout\ : std_logic;
SIGNAL \Selector61~2_combout\ : std_logic;
SIGNAL \x_ar~207_combout\ : std_logic;
SIGNAL \Mux47~10_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \Selector51~2_combout\ : std_logic;
SIGNAL \Selector51~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][6]~3_combout\ : std_logic;
SIGNAL \St~110_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][6]~3_combout\ : std_logic;
SIGNAL \Selector60~1_combout\ : std_logic;
SIGNAL \Selector60~2_combout\ : std_logic;
SIGNAL \x_ar~270_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][7]~3_combout\ : std_logic;
SIGNAL \St~118_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \Selector41~2_combout\ : std_logic;
SIGNAL \Selector41~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][7]~3_combout\ : std_logic;
SIGNAL \St~122_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector59~1_combout\ : std_logic;
SIGNAL \Selector59~2_combout\ : std_logic;
SIGNAL \Selector59~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][7]~3_combout\ : std_logic;
SIGNAL \x_ar~289_combout\ : std_logic;
SIGNAL \x_ar~302_combout\ : std_logic;
SIGNAL \x_ar~309_combout\ : std_logic;
SIGNAL \Mux45~11_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector49~1_combout\ : std_logic;
SIGNAL \Selector49~2_combout\ : std_logic;
SIGNAL \Selector49~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][8]~3_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][8]~3_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \Selector31~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][8]~3_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][8]~3_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Selector58~1_combout\ : std_logic;
SIGNAL \Selector58~2_combout\ : std_logic;
SIGNAL \Selector58~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][8]~3_combout\ : std_logic;
SIGNAL \St:c_count[3]~q\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \St:x_count_ini[3]~_emulated_q\ : std_logic;
SIGNAL \c_count~4_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \St:x_count_ini[3]~3_combout\ : std_logic;
SIGNAL \Mux45~13_combout\ : std_logic;
SIGNAL \Mux53~15_combout\ : std_logic;
SIGNAL \St:L_current[0]~1_combout\ : std_logic;
SIGNAL \c_ar[2][0]~5_combout\ : std_logic;
SIGNAL \c_ar[0][0]~9_combout\ : std_logic;
SIGNAL \c_ar[6][1]~53_combout\ : std_logic;
SIGNAL \c_ar[2][2]~61_combout\ : std_logic;
SIGNAL \c_ar[0][2]~65_combout\ : std_logic;
SIGNAL \c_ar[3][4]~125_combout\ : std_logic;
SIGNAL \c_ar[6][5]~165_combout\ : std_logic;
SIGNAL \c_ar[4][6]~189_combout\ : std_logic;
SIGNAL \c_ar[6][6]~193_combout\ : std_logic;
SIGNAL \c_ar[3][8]~237_combout\ : std_logic;
SIGNAL \c_ar[5][8]~241_combout\ : std_logic;
SIGNAL \c_ar[6][8]~249_combout\ : std_logic;
SIGNAL \St:x_ar[1][3]~1_combout\ : std_logic;
SIGNAL \St:x_ar[5][6]~1_combout\ : std_logic;
SIGNAL \St:x_ar[1][7]~1_combout\ : std_logic;
SIGNAL \St:x_ar[4][7]~1_combout\ : std_logic;
SIGNAL \y_out[0]~output_o\ : std_logic;
SIGNAL \y_out[1]~output_o\ : std_logic;
SIGNAL \y_out[2]~output_o\ : std_logic;
SIGNAL \y_out[3]~output_o\ : std_logic;
SIGNAL \y_out[4]~output_o\ : std_logic;
SIGNAL \y_out[5]~output_o\ : std_logic;
SIGNAL \y_out[6]~output_o\ : std_logic;
SIGNAL \y_out[7]~output_o\ : std_logic;
SIGNAL \y_out[8]~output_o\ : std_logic;
SIGNAL \y_out[9]~output_o\ : std_logic;
SIGNAL \y_out[10]~output_o\ : std_logic;
SIGNAL \y_out[11]~output_o\ : std_logic;
SIGNAL \y_out[12]~output_o\ : std_logic;
SIGNAL \y_out[13]~output_o\ : std_logic;
SIGNAL \y_out[14]~output_o\ : std_logic;
SIGNAL \y_out[15]~output_o\ : std_logic;
SIGNAL \y_out[16]~output_o\ : std_logic;
SIGNAL \y_out[17]~output_o\ : std_logic;
SIGNAL \y_out[18]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \rst~feeder_combout\ : std_logic;
SIGNAL \L_in[2]~input_o\ : std_logic;
SIGNAL \L_in[1]~input_o\ : std_logic;
SIGNAL \St:L_current[1]~1_combout\ : std_logic;
SIGNAL \St:L_current[1]~3_combout\ : std_logic;
SIGNAL \St:L_current[1]~_emulated_q\ : std_logic;
SIGNAL \St:L_current[1]~2_combout\ : std_logic;
SIGNAL \L_in[0]~input_o\ : std_logic;
SIGNAL \St:L_current[0]~3_combout\ : std_logic;
SIGNAL \St:L_current[0]~_emulated_q\ : std_logic;
SIGNAL \St:L_current[0]~2_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \St:L_current[2]~1_combout\ : std_logic;
SIGNAL \St:L_current[2]~3_combout\ : std_logic;
SIGNAL \St:L_current[2]~_emulated_q\ : std_logic;
SIGNAL \St:L_current[2]~2_combout\ : std_logic;
SIGNAL \St~1_combout\ : std_logic;
SIGNAL \St:x_count_ini[2]~5_combout\ : std_logic;
SIGNAL \St:d[19]~1_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \state.start~q\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \state.mac~q\ : std_logic;
SIGNAL \Load_x~input_o\ : std_logic;
SIGNAL \St:x_count_ini[2]~4_combout\ : std_logic;
SIGNAL \Selector103~2_combout\ : std_logic;
SIGNAL \Selector103~3_combout\ : std_logic;
SIGNAL \state.done~q\ : std_logic;
SIGNAL \Selector101~1_combout\ : std_logic;
SIGNAL \Selector101~2_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \Selector101~3_combout\ : std_logic;
SIGNAL \state.trans~q\ : std_logic;
SIGNAL \St:L_current[2]~6_combout\ : std_logic;
SIGNAL \St:L_current[2]~7_combout\ : std_logic;
SIGNAL \rst~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \St~0_combout\ : std_logic;
SIGNAL \St~0clkctrl_outclk\ : std_logic;
SIGNAL \St:count[0]~q\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \St:count[3]~q\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \St:count[1]~q\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \St:count[2]~q\ : std_logic;
SIGNAL \Add16~1_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \St:d[19]~0_combout\ : std_logic;
SIGNAL \St:d[31]~0_combout\ : std_logic;
SIGNAL \St:d[0]~q\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \a_temp[0]~feeder_combout\ : std_logic;
SIGNAL \a_temp[0]~0_combout\ : std_logic;
SIGNAL \St:d[1]~q\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \a_temp[1]~feeder_combout\ : std_logic;
SIGNAL \St~8_combout\ : std_logic;
SIGNAL \c_ar[6][0]~25_combout\ : std_logic;
SIGNAL \c_ar[6][0]~27_combout\ : std_logic;
SIGNAL \c_count~2_combout\ : std_logic;
SIGNAL \Load_c~input_o\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \St:c_count[0]~q\ : std_logic;
SIGNAL \c_count~3_combout\ : std_logic;
SIGNAL \St:c_count[1]~q\ : std_logic;
SIGNAL \c_count~5_combout\ : std_logic;
SIGNAL \St:c_count[2]~q\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \c_ar[6][0]~_emulated_q\ : std_logic;
SIGNAL \c_ar[6][0]~26_combout\ : std_logic;
SIGNAL \St~2_combout\ : std_logic;
SIGNAL \c_in[0]~input_o\ : std_logic;
SIGNAL \c_ar[1][0]~1_combout\ : std_logic;
SIGNAL \c_ar[1][0]~3_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \c_ar[1][0]~_emulated_q\ : std_logic;
SIGNAL \c_ar[1][0]~2_combout\ : std_logic;
SIGNAL \St~5_combout\ : std_logic;
SIGNAL \c_ar[3][0]~13_combout\ : std_logic;
SIGNAL \c_ar[3][0]~15_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \c_ar[3][0]~_emulated_q\ : std_logic;
SIGNAL \c_ar[3][0]~14_combout\ : std_logic;
SIGNAL \Mux71~1_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \c_ar[4][0]~21_combout\ : std_logic;
SIGNAL \c_ar[4][0]~23_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \c_ar[4][0]~_emulated_q\ : std_logic;
SIGNAL \c_ar[4][0]~22_combout\ : std_logic;
SIGNAL \c_ar[5][0]~17_combout\ : std_logic;
SIGNAL \c_ar[5][0]~19_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \c_ar[5][0]~_emulated_q\ : std_logic;
SIGNAL \c_ar[5][0]~18_combout\ : std_logic;
SIGNAL \Mux71~2_combout\ : std_logic;
SIGNAL \Mux71~3_combout\ : std_logic;
SIGNAL \c_ar[5][1]~29_combout\ : std_logic;
SIGNAL \c_in[1]~input_o\ : std_logic;
SIGNAL \c_ar[5][1]~31_combout\ : std_logic;
SIGNAL \c_ar[5][1]~_emulated_q\ : std_logic;
SIGNAL \c_ar[5][1]~30_combout\ : std_logic;
SIGNAL \St~10_combout\ : std_logic;
SIGNAL \c_ar[2][1]~35_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \c_ar[2][1]~_emulated_q\ : std_logic;
SIGNAL \c_ar[2][1]~33_combout\ : std_logic;
SIGNAL \c_ar[2][1]~34_combout\ : std_logic;
SIGNAL \c_ar[1][1]~37_combout\ : std_logic;
SIGNAL \c_ar[1][1]~39_combout\ : std_logic;
SIGNAL \c_ar[1][1]~_emulated_q\ : std_logic;
SIGNAL \c_ar[1][1]~38_combout\ : std_logic;
SIGNAL \St~12_combout\ : std_logic;
SIGNAL \c_ar[0][1]~41_combout\ : std_logic;
SIGNAL \c_ar[0][1]~43_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \c_ar[0][1]~_emulated_q\ : std_logic;
SIGNAL \c_ar[0][1]~42_combout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \St~13_combout\ : std_logic;
SIGNAL \c_ar[3][1]~45_combout\ : std_logic;
SIGNAL \c_ar[3][1]~47_combout\ : std_logic;
SIGNAL \c_ar[3][1]~_emulated_q\ : std_logic;
SIGNAL \c_ar[3][1]~46_combout\ : std_logic;
SIGNAL \Mux70~1_combout\ : std_logic;
SIGNAL \c_ar[4][1]~51_combout\ : std_logic;
SIGNAL \c_ar[4][1]~_emulated_q\ : std_logic;
SIGNAL \c_ar[4][1]~49_combout\ : std_logic;
SIGNAL \c_ar[4][1]~50_combout\ : std_logic;
SIGNAL \Mux70~2_combout\ : std_logic;
SIGNAL \Mux70~3_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \St~20_combout\ : std_logic;
SIGNAL \c_ar[5][2]~73_combout\ : std_logic;
SIGNAL \c_in[2]~input_o\ : std_logic;
SIGNAL \c_ar[5][2]~75_combout\ : std_logic;
SIGNAL \c_ar[5][2]~_emulated_q\ : std_logic;
SIGNAL \c_ar[5][2]~74_combout\ : std_logic;
SIGNAL \St~21_combout\ : std_logic;
SIGNAL \c_ar[4][2]~77_combout\ : std_logic;
SIGNAL \c_ar[4][2]~79_combout\ : std_logic;
SIGNAL \c_ar[4][2]~_emulated_q\ : std_logic;
SIGNAL \c_ar[4][2]~78_combout\ : std_logic;
SIGNAL \Mux69~2_combout\ : std_logic;
SIGNAL \St~16_combout\ : std_logic;
SIGNAL \c_ar[1][2]~59_combout\ : std_logic;
SIGNAL \c_ar[1][2]~_emulated_q\ : std_logic;
SIGNAL \c_ar[1][2]~57_combout\ : std_logic;
SIGNAL \c_ar[1][2]~58_combout\ : std_logic;
SIGNAL \St~19_combout\ : std_logic;
SIGNAL \c_ar[3][2]~69_combout\ : std_logic;
SIGNAL \c_ar[3][2]~71_combout\ : std_logic;
SIGNAL \c_ar[3][2]~_emulated_q\ : std_logic;
SIGNAL \c_ar[3][2]~70_combout\ : std_logic;
SIGNAL \Mux69~1_combout\ : std_logic;
SIGNAL \St~22_combout\ : std_logic;
SIGNAL \c_ar[6][2]~81_combout\ : std_logic;
SIGNAL \c_ar[6][2]~83_combout\ : std_logic;
SIGNAL \c_ar[6][2]~_emulated_q\ : std_logic;
SIGNAL \c_ar[6][2]~82_combout\ : std_logic;
SIGNAL \Mux69~3_combout\ : std_logic;
SIGNAL \St~29_combout\ : std_logic;
SIGNAL \c_ar[6][3]~109_combout\ : std_logic;
SIGNAL \c_in[3]~input_o\ : std_logic;
SIGNAL \c_ar[6][3]~111_combout\ : std_logic;
SIGNAL \c_ar[6][3]~_emulated_q\ : std_logic;
SIGNAL \c_ar[6][3]~110_combout\ : std_logic;
SIGNAL \St~23_combout\ : std_logic;
SIGNAL \c_ar[5][3]~85_combout\ : std_logic;
SIGNAL \c_ar[5][3]~87_combout\ : std_logic;
SIGNAL \c_ar[5][3]~_emulated_q\ : std_logic;
SIGNAL \c_ar[5][3]~86_combout\ : std_logic;
SIGNAL \c_ar[3][3]~103_combout\ : std_logic;
SIGNAL \c_ar[3][3]~_emulated_q\ : std_logic;
SIGNAL \c_ar[3][3]~101_combout\ : std_logic;
SIGNAL \c_ar[3][3]~102_combout\ : std_logic;
SIGNAL \c_ar[2][3]~91_combout\ : std_logic;
SIGNAL \c_ar[2][3]~_emulated_q\ : std_logic;
SIGNAL \St~24_combout\ : std_logic;
SIGNAL \c_ar[2][3]~89_combout\ : std_logic;
SIGNAL \c_ar[2][3]~90_combout\ : std_logic;
SIGNAL \St~25_combout\ : std_logic;
SIGNAL \c_ar[1][3]~95_combout\ : std_logic;
SIGNAL \c_ar[1][3]~_emulated_q\ : std_logic;
SIGNAL \c_ar[1][3]~93_combout\ : std_logic;
SIGNAL \c_ar[1][3]~94_combout\ : std_logic;
SIGNAL \St~26_combout\ : std_logic;
SIGNAL \c_ar[0][3]~99_combout\ : std_logic;
SIGNAL \c_ar[0][3]~_emulated_q\ : std_logic;
SIGNAL \c_ar[0][3]~97_combout\ : std_logic;
SIGNAL \c_ar[0][3]~98_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \St~28_combout\ : std_logic;
SIGNAL \c_ar[4][3]~105_combout\ : std_logic;
SIGNAL \c_ar[4][3]~107_combout\ : std_logic;
SIGNAL \c_ar[4][3]~_emulated_q\ : std_logic;
SIGNAL \c_ar[4][3]~106_combout\ : std_logic;
SIGNAL \Mux68~2_combout\ : std_logic;
SIGNAL \Mux68~3_combout\ : std_logic;
SIGNAL \c_in[4]~input_o\ : std_logic;
SIGNAL \c_ar[5][4]~131_combout\ : std_logic;
SIGNAL \c_ar[5][4]~_emulated_q\ : std_logic;
SIGNAL \c_ar[5][4]~129_combout\ : std_logic;
SIGNAL \c_ar[5][4]~130_combout\ : std_logic;
SIGNAL \c_ar[4][4]~135_combout\ : std_logic;
SIGNAL \c_ar[4][4]~_emulated_q\ : std_logic;
SIGNAL \c_ar[4][4]~133_combout\ : std_logic;
SIGNAL \c_ar[4][4]~134_combout\ : std_logic;
SIGNAL \Mux67~2_combout\ : std_logic;
SIGNAL \St~36_combout\ : std_logic;
SIGNAL \c_ar[6][4]~137_combout\ : std_logic;
SIGNAL \c_ar[6][4]~139_combout\ : std_logic;
SIGNAL \c_ar[6][4]~_emulated_q\ : std_logic;
SIGNAL \c_ar[6][4]~138_combout\ : std_logic;
SIGNAL \St~32_combout\ : std_logic;
SIGNAL \c_ar[0][4]~121_combout\ : std_logic;
SIGNAL \c_ar[0][4]~123_combout\ : std_logic;
SIGNAL \c_ar[0][4]~_emulated_q\ : std_logic;
SIGNAL \c_ar[0][4]~122_combout\ : std_logic;
SIGNAL \St~31_combout\ : std_logic;
SIGNAL \c_ar[2][4]~117_combout\ : std_logic;
SIGNAL \c_ar[2][4]~119_combout\ : std_logic;
SIGNAL \c_ar[2][4]~_emulated_q\ : std_logic;
SIGNAL \c_ar[2][4]~118_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \St~30_combout\ : std_logic;
SIGNAL \c_ar[1][4]~113_combout\ : std_logic;
SIGNAL \c_ar[1][4]~115_combout\ : std_logic;
SIGNAL \c_ar[1][4]~_emulated_q\ : std_logic;
SIGNAL \c_ar[1][4]~114_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \Mux67~3_combout\ : std_logic;
SIGNAL \St~37_combout\ : std_logic;
SIGNAL \c_ar[5][5]~141_combout\ : std_logic;
SIGNAL \c_ar[5][5]~143_combout\ : std_logic;
SIGNAL \c_ar[5][5]~_emulated_q\ : std_logic;
SIGNAL \c_ar[5][5]~142_combout\ : std_logic;
SIGNAL \St~41_combout\ : std_logic;
SIGNAL \c_in[5]~input_o\ : std_logic;
SIGNAL \c_ar[3][5]~159_combout\ : std_logic;
SIGNAL \c_ar[3][5]~_emulated_q\ : std_logic;
SIGNAL \c_ar[3][5]~157_combout\ : std_logic;
SIGNAL \c_ar[3][5]~158_combout\ : std_logic;
SIGNAL \St~38_combout\ : std_logic;
SIGNAL \c_ar[2][5]~145_combout\ : std_logic;
SIGNAL \c_ar[2][5]~147_combout\ : std_logic;
SIGNAL \c_ar[2][5]~_emulated_q\ : std_logic;
SIGNAL \c_ar[2][5]~146_combout\ : std_logic;
SIGNAL \St~40_combout\ : std_logic;
SIGNAL \c_ar[0][5]~153_combout\ : std_logic;
SIGNAL \c_ar[0][5]~155_combout\ : std_logic;
SIGNAL \c_ar[0][5]~_emulated_q\ : std_logic;
SIGNAL \c_ar[0][5]~154_combout\ : std_logic;
SIGNAL \St~39_combout\ : std_logic;
SIGNAL \c_ar[1][5]~149_combout\ : std_logic;
SIGNAL \c_ar[1][5]~151_combout\ : std_logic;
SIGNAL \c_ar[1][5]~_emulated_q\ : std_logic;
SIGNAL \c_ar[1][5]~150_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux66~1_combout\ : std_logic;
SIGNAL \St~42_combout\ : std_logic;
SIGNAL \c_ar[4][5]~161_combout\ : std_logic;
SIGNAL \c_ar[4][5]~163_combout\ : std_logic;
SIGNAL \c_ar[4][5]~_emulated_q\ : std_logic;
SIGNAL \c_ar[4][5]~162_combout\ : std_logic;
SIGNAL \Mux66~2_combout\ : std_logic;
SIGNAL \Mux66~3_combout\ : std_logic;
SIGNAL \St~46_combout\ : std_logic;
SIGNAL \c_ar[0][6]~177_combout\ : std_logic;
SIGNAL \c_ar[0][6]~179_combout\ : std_logic;
SIGNAL \c_ar[0][6]~_emulated_q\ : std_logic;
SIGNAL \c_ar[0][6]~178_combout\ : std_logic;
SIGNAL \St~45_combout\ : std_logic;
SIGNAL \c_ar[2][6]~173_combout\ : std_logic;
SIGNAL \c_in[6]~input_o\ : std_logic;
SIGNAL \c_ar[2][6]~175_combout\ : std_logic;
SIGNAL \c_ar[2][6]~_emulated_q\ : std_logic;
SIGNAL \c_ar[2][6]~174_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \St~47_combout\ : std_logic;
SIGNAL \c_ar[3][6]~181_combout\ : std_logic;
SIGNAL \c_ar[3][6]~183_combout\ : std_logic;
SIGNAL \c_ar[3][6]~_emulated_q\ : std_logic;
SIGNAL \c_ar[3][6]~182_combout\ : std_logic;
SIGNAL \St~44_combout\ : std_logic;
SIGNAL \c_ar[1][6]~169_combout\ : std_logic;
SIGNAL \c_ar[1][6]~171_combout\ : std_logic;
SIGNAL \c_ar[1][6]~_emulated_q\ : std_logic;
SIGNAL \c_ar[1][6]~170_combout\ : std_logic;
SIGNAL \Mux65~1_combout\ : std_logic;
SIGNAL \c_ar[5][6]~187_combout\ : std_logic;
SIGNAL \c_ar[5][6]~_emulated_q\ : std_logic;
SIGNAL \St~48_combout\ : std_logic;
SIGNAL \c_ar[5][6]~185_combout\ : std_logic;
SIGNAL \c_ar[5][6]~186_combout\ : std_logic;
SIGNAL \Mux65~2_combout\ : std_logic;
SIGNAL \Mux65~3_combout\ : std_logic;
SIGNAL \c_in[7]~input_o\ : std_logic;
SIGNAL \c_ar[5][7]~199_combout\ : std_logic;
SIGNAL \c_ar[5][7]~_emulated_q\ : std_logic;
SIGNAL \c_ar[5][7]~197_combout\ : std_logic;
SIGNAL \c_ar[5][7]~198_combout\ : std_logic;
SIGNAL \St~57_combout\ : std_logic;
SIGNAL \c_ar[6][7]~221_combout\ : std_logic;
SIGNAL \c_ar[6][7]~223_combout\ : std_logic;
SIGNAL \c_ar[6][7]~_emulated_q\ : std_logic;
SIGNAL \c_ar[6][7]~222_combout\ : std_logic;
SIGNAL \c_ar[3][7]~213_combout\ : std_logic;
SIGNAL \c_ar[3][7]~215_combout\ : std_logic;
SIGNAL \c_ar[3][7]~_emulated_q\ : std_logic;
SIGNAL \c_ar[3][7]~214_combout\ : std_logic;
SIGNAL \St~52_combout\ : std_logic;
SIGNAL \c_ar[2][7]~201_combout\ : std_logic;
SIGNAL \c_ar[2][7]~203_combout\ : std_logic;
SIGNAL \c_ar[2][7]~_emulated_q\ : std_logic;
SIGNAL \c_ar[2][7]~202_combout\ : std_logic;
SIGNAL \c_ar[0][7]~209_combout\ : std_logic;
SIGNAL \c_ar[0][7]~211_combout\ : std_logic;
SIGNAL \c_ar[0][7]~_emulated_q\ : std_logic;
SIGNAL \c_ar[0][7]~210_combout\ : std_logic;
SIGNAL \St~53_combout\ : std_logic;
SIGNAL \c_ar[1][7]~205_combout\ : std_logic;
SIGNAL \c_ar[1][7]~207_combout\ : std_logic;
SIGNAL \c_ar[1][7]~_emulated_q\ : std_logic;
SIGNAL \c_ar[1][7]~206_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \St~56_combout\ : std_logic;
SIGNAL \c_ar[4][7]~217_combout\ : std_logic;
SIGNAL \c_ar[4][7]~219_combout\ : std_logic;
SIGNAL \c_ar[4][7]~_emulated_q\ : std_logic;
SIGNAL \c_ar[4][7]~218_combout\ : std_logic;
SIGNAL \Mux64~2_combout\ : std_logic;
SIGNAL \Mux64~3_combout\ : std_logic;
SIGNAL \c_in[8]~input_o\ : std_logic;
SIGNAL \c_ar[1][8]~227_combout\ : std_logic;
SIGNAL \c_ar[1][8]~_emulated_q\ : std_logic;
SIGNAL \c_ar[1][8]~225_combout\ : std_logic;
SIGNAL \c_ar[1][8]~226_combout\ : std_logic;
SIGNAL \St~60_combout\ : std_logic;
SIGNAL \c_ar[0][8]~233_combout\ : std_logic;
SIGNAL \c_ar[0][8]~235_combout\ : std_logic;
SIGNAL \c_ar[0][8]~_emulated_q\ : std_logic;
SIGNAL \c_ar[0][8]~234_combout\ : std_logic;
SIGNAL \St~59_combout\ : std_logic;
SIGNAL \c_ar[2][8]~229_combout\ : std_logic;
SIGNAL \c_ar[2][8]~231_combout\ : std_logic;
SIGNAL \c_ar[2][8]~_emulated_q\ : std_logic;
SIGNAL \c_ar[2][8]~230_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \St~63_combout\ : std_logic;
SIGNAL \c_ar[4][8]~245_combout\ : std_logic;
SIGNAL \c_ar[4][8]~247_combout\ : std_logic;
SIGNAL \c_ar[4][8]~_emulated_q\ : std_logic;
SIGNAL \c_ar[4][8]~246_combout\ : std_logic;
SIGNAL \Mux63~2_combout\ : std_logic;
SIGNAL \Mux63~3_combout\ : std_logic;
SIGNAL \St~68_combout\ : std_logic;
SIGNAL \St:x_ar[5][0]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \St:x_count_ini[3]~1_combout\ : std_logic;
SIGNAL \St:x_count_ini[3]~2_combout\ : std_logic;
SIGNAL \x_count_ini~1_combout\ : std_logic;
SIGNAL \St:x_count_ini[0]~3_combout\ : std_logic;
SIGNAL \St:x_count_ini[2]~9_combout\ : std_logic;
SIGNAL \St:x_count_ini[0]~_emulated_q\ : std_logic;
SIGNAL \St:x_count_ini[0]~1_combout\ : std_logic;
SIGNAL \St:x_count_ini[0]~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \St:x_count_ini[1]~3_combout\ : std_logic;
SIGNAL \St:x_count_ini[1]~_emulated_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \St:x_count_ini[1]~1_combout\ : std_logic;
SIGNAL \St:x_count_ini[1]~2_combout\ : std_logic;
SIGNAL \x_count_ini~0_combout\ : std_logic;
SIGNAL \x_count_ini~2_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \St:x_count_ini[2]~3_combout\ : std_logic;
SIGNAL \St:x_count_ini[2]~_emulated_q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \St:x_count_ini[2]~1_combout\ : std_logic;
SIGNAL \St:x_count_ini[2]~2_combout\ : std_logic;
SIGNAL \Decoder3~4_combout\ : std_logic;
SIGNAL \St~65_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \St:x_ar[5][4]~6_combout\ : std_logic;
SIGNAL \St~66_combout\ : std_logic;
SIGNAL \Decoder3~6_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \St~74_combout\ : std_logic;
SIGNAL \St:x_ar[6][0]~1_combout\ : std_logic;
SIGNAL \Decoder3~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][1]~6_combout\ : std_logic;
SIGNAL \Decoder3~5_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Decoder3~0_combout\ : std_logic;
SIGNAL \x_ar~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Decoder3~1_combout\ : std_logic;
SIGNAL \x_ar~1_combout\ : std_logic;
SIGNAL \St~70_combout\ : std_logic;
SIGNAL \St:x_ar[1][0]~1_combout\ : std_logic;
SIGNAL \St:x_ar[1][0]~9_combout\ : std_logic;
SIGNAL \x_ar~9_combout\ : std_logic;
SIGNAL \x_ar~7_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \x_ar~12_combout\ : std_logic;
SIGNAL \x_ar~3_combout\ : std_logic;
SIGNAL \x_ar~8_combout\ : std_logic;
SIGNAL \St~69_combout\ : std_logic;
SIGNAL \St:x_ar[2][0]~1_combout\ : std_logic;
SIGNAL \St:x_ar[2][0]~2_combout\ : std_logic;
SIGNAL \x_ar~4_combout\ : std_logic;
SIGNAL \x_ar~11_combout\ : std_logic;
SIGNAL \St~71_combout\ : std_logic;
SIGNAL \St:x_ar[0][0]~1_combout\ : std_logic;
SIGNAL \St:x_ar[0][0]~3_combout\ : std_logic;
SIGNAL \St:x_ar[0][3]~6_combout\ : std_logic;
SIGNAL \St:x_ar[0][3]~7_combout\ : std_logic;
SIGNAL \St:x_ar[0][0]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[0][0]~2_combout\ : std_logic;
SIGNAL \Decoder3~2_combout\ : std_logic;
SIGNAL \x_ar~2_combout\ : std_logic;
SIGNAL \x_ar~10_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \x_ar~18_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \x_ar~16_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \x_ar~17_combout\ : std_logic;
SIGNAL \x_ar~20_combout\ : std_logic;
SIGNAL \x_ar~19_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \x_ar~23_combout\ : std_logic;
SIGNAL \x_ar~27_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \x_ar~14_combout\ : std_logic;
SIGNAL \x_ar~22_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \x_ar~26_combout\ : std_logic;
SIGNAL \x_ar~25_combout\ : std_logic;
SIGNAL \x_ar~24_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \x_ar~33_combout\ : std_logic;
SIGNAL \St:x_ar[1][0]~10_combout\ : std_logic;
SIGNAL \Mux49~9_combout\ : std_logic;
SIGNAL \Mux49~8_combout\ : std_logic;
SIGNAL \x_ar~28_combout\ : std_logic;
SIGNAL \Mux53~8_combout\ : std_logic;
SIGNAL \x_ar~32_combout\ : std_logic;
SIGNAL \Mux53~11_combout\ : std_logic;
SIGNAL \Mux53~14_combout\ : std_logic;
SIGNAL \x_ar~31_combout\ : std_logic;
SIGNAL \Mux53~10_combout\ : std_logic;
SIGNAL \Mux53~12_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][0]~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][0]~8_combout\ : std_logic;
SIGNAL \St:x_ar[1][0]~11_combout\ : std_logic;
SIGNAL \St:x_ar[1][0]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][0]~2_combout\ : std_logic;
SIGNAL \x_ar~5_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \x_ar~13_combout\ : std_logic;
SIGNAL \x_ar~15_combout\ : std_logic;
SIGNAL \x_ar~21_combout\ : std_logic;
SIGNAL \x_ar~30_combout\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Selector66~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][0]~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][6]~6_combout\ : std_logic;
SIGNAL \St:x_ar[6][1]~8_combout\ : std_logic;
SIGNAL \St:x_ar[6][0]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[6][0]~2_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \St~72_combout\ : std_logic;
SIGNAL \St:x_ar[3][0]~1_combout\ : std_logic;
SIGNAL \x_ar~29_combout\ : std_logic;
SIGNAL \St:x_ar[1][0]~6_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \Selector39~2_combout\ : std_logic;
SIGNAL \St:x_ar[3][6]~7_combout\ : std_logic;
SIGNAL \St:x_ar[3][6]~6_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector39~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][0]~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][6]~8_combout\ : std_logic;
SIGNAL \St:x_ar[3][0]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[3][0]~2_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \x_ar~6_combout\ : std_logic;
SIGNAL \Selector57~1_combout\ : std_logic;
SIGNAL \Selector57~2_combout\ : std_logic;
SIGNAL \St:x_ar[5][4]~7_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector57~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][0]~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][4]~8_combout\ : std_logic;
SIGNAL \St:x_ar[5][0]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][0]~2_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \St~73_combout\ : std_logic;
SIGNAL \St:x_ar[4][0]~1_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \Selector48~2_combout\ : std_logic;
SIGNAL \St:x_ar[4][6]~8_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][0]~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][6]~9_combout\ : std_logic;
SIGNAL \St:x_ar[4][0]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[4][0]~2_combout\ : std_logic;
SIGNAL \Mux62~2_combout\ : std_logic;
SIGNAL \Mux62~3_combout\ : std_logic;
SIGNAL \St~80_combout\ : std_logic;
SIGNAL \St:x_ar[4][1]~1_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \St~81_combout\ : std_logic;
SIGNAL \St:x_ar[6][1]~1_combout\ : std_logic;
SIGNAL \x_ar~35_combout\ : std_logic;
SIGNAL \x_ar~47_combout\ : std_logic;
SIGNAL \St~79_combout\ : std_logic;
SIGNAL \St:x_ar[5][1]~1_combout\ : std_logic;
SIGNAL \Selector56~2_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \St~78_combout\ : std_logic;
SIGNAL \St:x_ar[3][1]~1_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][1]~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][1]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[3][1]~2_combout\ : std_logic;
SIGNAL \x_ar~37_combout\ : std_logic;
SIGNAL \x_ar~41_combout\ : std_logic;
SIGNAL \x_ar~55_combout\ : std_logic;
SIGNAL \x_ar~49_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \St:x_ar[2][1]~1_combout\ : std_logic;
SIGNAL \x_ar~51_combout\ : std_logic;
SIGNAL \x_ar~60_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \St:x_ar[2][2]~6_combout\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \x_ar~53_combout\ : std_logic;
SIGNAL \x_ar~58_combout\ : std_logic;
SIGNAL \x_ar~61_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \x_ar~56_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \x_ar~65_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][1]~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][2]~8_combout\ : std_logic;
SIGNAL \St:x_ar[2][1]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[2][1]~2_combout\ : std_logic;
SIGNAL \x_ar~38_combout\ : std_logic;
SIGNAL \x_ar~44_combout\ : std_logic;
SIGNAL \x_ar~36_combout\ : std_logic;
SIGNAL \x_ar~43_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \x_ar~52_combout\ : std_logic;
SIGNAL \x_ar~54_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \x_ar~59_combout\ : std_logic;
SIGNAL \x_ar~68_combout\ : std_logic;
SIGNAL \x_ar~67_combout\ : std_logic;
SIGNAL \x_ar~66_combout\ : std_logic;
SIGNAL \x_ar~64_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector56~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][1]~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][1]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][1]~2_combout\ : std_logic;
SIGNAL \x_ar~40_combout\ : std_logic;
SIGNAL \x_ar~46_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \x_ar~48_combout\ : std_logic;
SIGNAL \x_ar~57_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \Selector65~2_combout\ : std_logic;
SIGNAL \St:x_ar[6][1]~7_combout\ : std_logic;
SIGNAL \Selector65~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][1]~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][1]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[6][1]~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \St~77_combout\ : std_logic;
SIGNAL \St:x_ar[0][1]~1_combout\ : std_logic;
SIGNAL \St:x_ar[0][1]~3_combout\ : std_logic;
SIGNAL \St:x_ar[0][1]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[0][1]~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \x_ar~34_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \x_ar~45_combout\ : std_logic;
SIGNAL \x_ar~50_combout\ : std_logic;
SIGNAL \x_ar~62_combout\ : std_logic;
SIGNAL \x_ar~63_combout\ : std_logic;
SIGNAL \St:x_ar[4][6]~7_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector47~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][1]~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][1]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[4][1]~2_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \St~75_combout\ : std_logic;
SIGNAL \St:x_ar[1][1]~1_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \x_ar~39_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][1]~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][1]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][1]~2_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \St~88_combout\ : std_logic;
SIGNAL \St:x_ar[6][2]~1_combout\ : std_logic;
SIGNAL \x_ar~70_combout\ : std_logic;
SIGNAL \St~82_combout\ : std_logic;
SIGNAL \St:x_ar[5][2]~1_combout\ : std_logic;
SIGNAL \St:x_ar[5][2]~2_combout\ : std_logic;
SIGNAL \x_ar~75_combout\ : std_logic;
SIGNAL \x_ar~71_combout\ : std_logic;
SIGNAL \St~84_combout\ : std_logic;
SIGNAL \St:x_ar[1][2]~1_combout\ : std_logic;
SIGNAL \x_ar~78_combout\ : std_logic;
SIGNAL \x_ar~81_combout\ : std_logic;
SIGNAL \St~83_combout\ : std_logic;
SIGNAL \St:x_ar[2][2]~1_combout\ : std_logic;
SIGNAL \x_ar~86_combout\ : std_logic;
SIGNAL \x_ar~94_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \x_ar~91_combout\ : std_logic;
SIGNAL \x_ar~79_combout\ : std_logic;
SIGNAL \x_ar~88_combout\ : std_logic;
SIGNAL \x_ar~95_combout\ : std_logic;
SIGNAL \x_ar~89_combout\ : std_logic;
SIGNAL \x_ar~93_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \x_ar~101_combout\ : std_logic;
SIGNAL \St:x_ar[2][2]~7_combout\ : std_logic;
SIGNAL \Mux53~13_combout\ : std_logic;
SIGNAL \Mux51~10_combout\ : std_logic;
SIGNAL \x_ar~102_combout\ : std_logic;
SIGNAL \Mux51~11_combout\ : std_logic;
SIGNAL \Mux51~13_combout\ : std_logic;
SIGNAL \x_ar~98_combout\ : std_logic;
SIGNAL \Mux51~14_combout\ : std_logic;
SIGNAL \Mux51~9_combout\ : std_logic;
SIGNAL \Mux51~12_combout\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][2]~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][2]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[2][2]~2_combout\ : std_logic;
SIGNAL \x_ar~73_combout\ : std_logic;
SIGNAL \x_ar~80_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \x_ar~83_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \x_ar~87_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \x_ar~92_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][2]~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][2]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][2]~2_combout\ : std_logic;
SIGNAL \x_ar~74_combout\ : std_logic;
SIGNAL \St:x_ar[3][2]~1_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][2]~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][2]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[3][2]~2_combout\ : std_logic;
SIGNAL \x_ar~72_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \x_ar~76_combout\ : std_logic;
SIGNAL \x_ar~85_combout\ : std_logic;
SIGNAL \x_ar~96_combout\ : std_logic;
SIGNAL \x_ar~100_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector46~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][2]~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][2]~_emulated_q\ : std_logic;
SIGNAL \St~87_combout\ : std_logic;
SIGNAL \St:x_ar[4][2]~1_combout\ : std_logic;
SIGNAL \St:x_ar[4][2]~2_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \St~85_combout\ : std_logic;
SIGNAL \St:x_ar[0][2]~1_combout\ : std_logic;
SIGNAL \St:x_ar[0][2]~3_combout\ : std_logic;
SIGNAL \St:x_ar[0][2]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[0][2]~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \x_ar~69_combout\ : std_logic;
SIGNAL \x_ar~82_combout\ : std_logic;
SIGNAL \x_ar~84_combout\ : std_logic;
SIGNAL \x_ar~90_combout\ : std_logic;
SIGNAL \x_ar~99_combout\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \Selector64~2_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector64~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][2]~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][2]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[6][2]~2_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \St~90_combout\ : std_logic;
SIGNAL \St:x_ar[2][3]~1_combout\ : std_logic;
SIGNAL \St:x_ar[2][3]~2_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \St~92_combout\ : std_logic;
SIGNAL \St:x_ar[3][3]~1_combout\ : std_logic;
SIGNAL \St~94_combout\ : std_logic;
SIGNAL \St:x_ar[4][3]~1_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \St~95_combout\ : std_logic;
SIGNAL \St:x_ar[6][3]~1_combout\ : std_logic;
SIGNAL \St:x_ar[6][3]~2_combout\ : std_logic;
SIGNAL \St~91_combout\ : std_logic;
SIGNAL \St:x_ar[0][3]~1_combout\ : std_logic;
SIGNAL \St:x_ar[0][3]~3_combout\ : std_logic;
SIGNAL \St:x_ar[0][3]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[0][3]~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \x_ar~107_combout\ : std_logic;
SIGNAL \x_ar~113_combout\ : std_logic;
SIGNAL \x_ar~105_combout\ : std_logic;
SIGNAL \x_ar~112_combout\ : std_logic;
SIGNAL \x_ar~108_combout\ : std_logic;
SIGNAL \x_ar~111_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \x_ar~114_combout\ : std_logic;
SIGNAL \St~93_combout\ : std_logic;
SIGNAL \St:x_ar[5][3]~1_combout\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x_ar~118_combout\ : std_logic;
SIGNAL \x_ar~125_combout\ : std_logic;
SIGNAL \x_ar~126_combout\ : std_logic;
SIGNAL \x_ar~104_combout\ : std_logic;
SIGNAL \x_ar~116_combout\ : std_logic;
SIGNAL \x_ar~121_combout\ : std_logic;
SIGNAL \x_ar~123_combout\ : std_logic;
SIGNAL \x_ar~130_combout\ : std_logic;
SIGNAL \x_ar~120_combout\ : std_logic;
SIGNAL \x_ar~129_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \x_ar~136_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \x_ar~135_combout\ : std_logic;
SIGNAL \x_ar~122_combout\ : std_logic;
SIGNAL \x_ar~127_combout\ : std_logic;
SIGNAL \x_ar~133_combout\ : std_logic;
SIGNAL \x_ar~134_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Mux50~4_combout\ : std_logic;
SIGNAL \Selector54~1_combout\ : std_logic;
SIGNAL \Selector54~2_combout\ : std_logic;
SIGNAL \Selector54~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][3]~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][3]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][3]~2_combout\ : std_logic;
SIGNAL \x_ar~109_combout\ : std_logic;
SIGNAL \x_ar~115_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \x_ar~117_combout\ : std_logic;
SIGNAL \x_ar~119_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \x_ar~131_combout\ : std_logic;
SIGNAL \x_ar~132_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][3]~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][3]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[4][3]~2_combout\ : std_logic;
SIGNAL \x_ar~103_combout\ : std_logic;
SIGNAL \x_ar~106_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \x_ar~110_combout\ : std_logic;
SIGNAL \x_ar~124_combout\ : std_logic;
SIGNAL \x_ar~128_combout\ : std_logic;
SIGNAL \x_ar~137_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][3]~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][3]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[3][3]~2_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \St~102_combout\ : std_logic;
SIGNAL \St:x_ar[6][4]~1_combout\ : std_logic;
SIGNAL \St:x_ar[6][4]~2_combout\ : std_logic;
SIGNAL \St~96_combout\ : std_logic;
SIGNAL \St:x_ar[5][4]~1_combout\ : std_logic;
SIGNAL \St~98_combout\ : std_logic;
SIGNAL \St:x_ar[1][4]~1_combout\ : std_logic;
SIGNAL \x_ar~143_combout\ : std_logic;
SIGNAL \x_ar~147_combout\ : std_logic;
SIGNAL \x_ar~156_combout\ : std_logic;
SIGNAL \x_ar~154_combout\ : std_logic;
SIGNAL \x_ar~151_combout\ : std_logic;
SIGNAL \x_ar~153_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \x_ar~149_combout\ : std_logic;
SIGNAL \x_ar~155_combout\ : std_logic;
SIGNAL \x_ar~140_combout\ : std_logic;
SIGNAL \x_ar~148_combout\ : std_logic;
SIGNAL \x_ar~157_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \x_ar~141_combout\ : std_logic;
SIGNAL \x_ar~146_combout\ : std_logic;
SIGNAL \x_ar~158_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \x_ar~161_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \x_ar~165_combout\ : std_logic;
SIGNAL \x_ar~164_combout\ : std_logic;
SIGNAL \x_ar~163_combout\ : std_logic;
SIGNAL \x_ar~162_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \x_ar~171_combout\ : std_logic;
SIGNAL \Mux49~10_combout\ : std_logic;
SIGNAL \Mux49~13_combout\ : std_logic;
SIGNAL \x_ar~170_combout\ : std_logic;
SIGNAL \Mux49~15_combout\ : std_logic;
SIGNAL \x_ar~167_combout\ : std_logic;
SIGNAL \x_ar~159_combout\ : std_logic;
SIGNAL \x_ar~168_combout\ : std_logic;
SIGNAL \Mux49~16_combout\ : std_logic;
SIGNAL \Mux49~11_combout\ : std_logic;
SIGNAL \Mux49~14_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][4]~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][4]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][4]~2_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][4]~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][4]~_emulated_q\ : std_logic;
SIGNAL \St~97_combout\ : std_logic;
SIGNAL \St:x_ar[2][4]~1_combout\ : std_logic;
SIGNAL \St:x_ar[2][4]~2_combout\ : std_logic;
SIGNAL \St~100_combout\ : std_logic;
SIGNAL \St:x_ar[3][4]~1_combout\ : std_logic;
SIGNAL \St:x_ar[3][4]~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \x_ar~138_combout\ : std_logic;
SIGNAL \x_ar~144_combout\ : std_logic;
SIGNAL \St~101_combout\ : std_logic;
SIGNAL \St:x_ar[4][4]~1_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \x_ar~169_combout\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][4]~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][4]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[4][4]~2_combout\ : std_logic;
SIGNAL \x_ar~139_combout\ : std_logic;
SIGNAL \x_ar~142_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \x_ar~145_combout\ : std_logic;
SIGNAL \x_ar~150_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \x_ar~152_combout\ : std_logic;
SIGNAL \x_ar~160_combout\ : std_logic;
SIGNAL \x_ar~166_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector53~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][4]~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][4]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][4]~2_combout\ : std_logic;
SIGNAL \St~99_combout\ : std_logic;
SIGNAL \St:x_ar[0][4]~1_combout\ : std_logic;
SIGNAL \St:x_ar[0][4]~3_combout\ : std_logic;
SIGNAL \St:x_ar[0][4]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[0][4]~2_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \St~109_combout\ : std_logic;
SIGNAL \St:x_ar[6][5]~1_combout\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \St~107_combout\ : std_logic;
SIGNAL \St:x_ar[5][5]~1_combout\ : std_logic;
SIGNAL \x_ar~178_combout\ : std_logic;
SIGNAL \x_ar~172_combout\ : std_logic;
SIGNAL \St~105_combout\ : std_logic;
SIGNAL \St:x_ar[0][5]~1_combout\ : std_logic;
SIGNAL \St:x_ar[0][5]~3_combout\ : std_logic;
SIGNAL \St:x_ar[0][5]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[0][5]~2_combout\ : std_logic;
SIGNAL \x_ar~174_combout\ : std_logic;
SIGNAL \St~106_combout\ : std_logic;
SIGNAL \St:x_ar[3][5]~1_combout\ : std_logic;
SIGNAL \St:x_ar[3][5]~2_combout\ : std_logic;
SIGNAL \x_ar~175_combout\ : std_logic;
SIGNAL \x_ar~176_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \x_ar~184_combout\ : std_logic;
SIGNAL \x_ar~183_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \x_ar~182_combout\ : std_logic;
SIGNAL \x_ar~179_combout\ : std_logic;
SIGNAL \x_ar~181_combout\ : std_logic;
SIGNAL \x_ar~180_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \x_ar~187_combout\ : std_logic;
SIGNAL \x_ar~194_combout\ : std_logic;
SIGNAL \x_ar~188_combout\ : std_logic;
SIGNAL \x_ar~200_combout\ : std_logic;
SIGNAL \x_ar~190_combout\ : std_logic;
SIGNAL \x_ar~192_combout\ : std_logic;
SIGNAL \x_ar~199_combout\ : std_logic;
SIGNAL \x_ar~189_combout\ : std_logic;
SIGNAL \x_ar~198_combout\ : std_logic;
SIGNAL \x_ar~193_combout\ : std_logic;
SIGNAL \x_ar~197_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \x_ar~191_combout\ : std_logic;
SIGNAL \x_ar~196_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \x_ar~205_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \x_ar~206_combout\ : std_logic;
SIGNAL \x_ar~203_combout\ : std_logic;
SIGNAL \x_ar~202_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Mux48~4_combout\ : std_logic;
SIGNAL \Selector52~1_combout\ : std_logic;
SIGNAL \Selector52~2_combout\ : std_logic;
SIGNAL \Selector52~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][5]~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][5]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][5]~2_combout\ : std_logic;
SIGNAL \St~103_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][5]~3_combout\ : std_logic;
SIGNAL \St:x_ar[1][5]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[1][5]~1_combout\ : std_logic;
SIGNAL \St:x_ar[1][5]~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \x_ar~173_combout\ : std_logic;
SIGNAL \x_ar~185_combout\ : std_logic;
SIGNAL \x_ar~186_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \x_ar~195_combout\ : std_logic;
SIGNAL \x_ar~204_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector61~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][5]~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][5]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[6][5]~2_combout\ : std_logic;
SIGNAL \St~108_combout\ : std_logic;
SIGNAL \St:x_ar[4][5]~1_combout\ : std_logic;
SIGNAL \x_ar~201_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][5]~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][5]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[4][5]~2_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \St~104_combout\ : std_logic;
SIGNAL \St:x_ar[2][5]~1_combout\ : std_logic;
SIGNAL \St:x_ar[2][5]~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][5]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[2][5]~2_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \St~116_combout\ : std_logic;
SIGNAL \St:x_ar[6][6]~1_combout\ : std_logic;
SIGNAL \St~112_combout\ : std_logic;
SIGNAL \St:x_ar[1][6]~1_combout\ : std_logic;
SIGNAL \St:x_ar[1][6]~2_combout\ : std_logic;
SIGNAL \St~113_combout\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \St:x_ar[0][6]~1_combout\ : std_logic;
SIGNAL \St:x_ar[0][6]~3_combout\ : std_logic;
SIGNAL \St:x_ar[0][6]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[0][6]~2_combout\ : std_logic;
SIGNAL \St~111_combout\ : std_logic;
SIGNAL \St:x_ar[2][6]~1_combout\ : std_logic;
SIGNAL \x_ar~211_combout\ : std_logic;
SIGNAL \x_ar~218_combout\ : std_logic;
SIGNAL \x_ar~214_combout\ : std_logic;
SIGNAL \x_ar~219_combout\ : std_logic;
SIGNAL \x_ar~212_combout\ : std_logic;
SIGNAL \x_ar~216_combout\ : std_logic;
SIGNAL \x_ar~209_combout\ : std_logic;
SIGNAL \x_ar~217_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \x_ar~224_combout\ : std_logic;
SIGNAL \x_ar~223_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \x_ar~221_combout\ : std_logic;
SIGNAL \x_ar~210_combout\ : std_logic;
SIGNAL \x_ar~215_combout\ : std_logic;
SIGNAL \x_ar~227_combout\ : std_logic;
SIGNAL \x_ar~225_combout\ : std_logic;
SIGNAL \x_ar~226_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \x_ar~232_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \x_ar~229_combout\ : std_logic;
SIGNAL \x_ar~230_combout\ : std_logic;
SIGNAL \x_ar~231_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \x_ar~234_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \x_ar~239_combout\ : std_logic;
SIGNAL \x_ar~233_combout\ : std_logic;
SIGNAL \x_ar~240_combout\ : std_logic;
SIGNAL \Mux47~11_combout\ : std_logic;
SIGNAL \Mux47~13_combout\ : std_logic;
SIGNAL \Mux47~14_combout\ : std_logic;
SIGNAL \x_ar~236_combout\ : std_logic;
SIGNAL \Mux47~9_combout\ : std_logic;
SIGNAL \x_ar~235_combout\ : std_logic;
SIGNAL \Mux47~8_combout\ : std_logic;
SIGNAL \Mux47~12_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][6]~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][6]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[2][6]~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \x_ar~213_combout\ : std_logic;
SIGNAL \x_ar~208_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \x_ar~220_combout\ : std_logic;
SIGNAL \x_ar~222_combout\ : std_logic;
SIGNAL \x_ar~228_combout\ : std_logic;
SIGNAL \x_ar~237_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Selector60~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][6]~3_combout\ : std_logic;
SIGNAL \St:x_ar[6][6]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[6][6]~2_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][6]~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][6]~_emulated_q\ : std_logic;
SIGNAL \St~114_combout\ : std_logic;
SIGNAL \St:x_ar[3][6]~1_combout\ : std_logic;
SIGNAL \St:x_ar[3][6]~2_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \St~115_combout\ : std_logic;
SIGNAL \St:x_ar[4][6]~1_combout\ : std_logic;
SIGNAL \x_ar~238_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \Selector42~2_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector42~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][6]~3_combout\ : std_logic;
SIGNAL \St:x_ar[4][6]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[4][6]~2_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \St~123_combout\ : std_logic;
SIGNAL \St:x_ar[6][7]~1_combout\ : std_logic;
SIGNAL \St:x_ar[6][7]~2_combout\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \St~121_combout\ : std_logic;
SIGNAL \St:x_ar[5][7]~1_combout\ : std_logic;
SIGNAL \x_ar~247_combout\ : std_logic;
SIGNAL \x_ar~241_combout\ : std_logic;
SIGNAL \x_ar~242_combout\ : std_logic;
SIGNAL \St~119_combout\ : std_logic;
SIGNAL \St:x_ar[0][7]~1_combout\ : std_logic;
SIGNAL \St:x_ar[0][7]~3_combout\ : std_logic;
SIGNAL \St:x_ar[0][7]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[0][7]~2_combout\ : std_logic;
SIGNAL \x_ar~243_combout\ : std_logic;
SIGNAL \St~120_combout\ : std_logic;
SIGNAL \St:x_ar[3][7]~1_combout\ : std_logic;
SIGNAL \x_ar~248_combout\ : std_logic;
SIGNAL \x_ar~254_combout\ : std_logic;
SIGNAL \x_ar~250_combout\ : std_logic;
SIGNAL \x_ar~246_combout\ : std_logic;
SIGNAL \x_ar~249_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \x_ar~252_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \x_ar~262_combout\ : std_logic;
SIGNAL \x_ar~255_combout\ : std_logic;
SIGNAL \x_ar~257_combout\ : std_logic;
SIGNAL \x_ar~256_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \x_ar~259_combout\ : std_logic;
SIGNAL \x_ar~260_combout\ : std_logic;
SIGNAL \x_ar~261_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \x_ar~266_combout\ : std_logic;
SIGNAL \x_ar~263_combout\ : std_logic;
SIGNAL \x_ar~269_combout\ : std_logic;
SIGNAL \x_ar~264_combout\ : std_logic;
SIGNAL \x_ar~268_combout\ : std_logic;
SIGNAL \x_ar~265_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \x_ar~275_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \x_ar~274_combout\ : std_logic;
SIGNAL \x_ar~271_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \x_ar~273_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][7]~3_combout\ : std_logic;
SIGNAL \St:x_ar[3][7]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[3][7]~2_combout\ : std_logic;
SIGNAL \x_ar~244_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \x_ar~253_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \Selector50~2_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][7]~3_combout\ : std_logic;
SIGNAL \St:x_ar[5][7]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[5][7]~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \x_ar~245_combout\ : std_logic;
SIGNAL \x_ar~251_combout\ : std_logic;
SIGNAL \x_ar~258_combout\ : std_logic;
SIGNAL \x_ar~267_combout\ : std_logic;
SIGNAL \x_ar~272_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][7]~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][7]~_emulated_q\ : std_logic;
SIGNAL \St~117_combout\ : std_logic;
SIGNAL \St:x_ar[2][7]~1_combout\ : std_logic;
SIGNAL \St:x_ar[2][7]~2_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux55~5_combout\ : std_logic;
SIGNAL \St~124_combout\ : std_logic;
SIGNAL \St:x_ar[5][8]~1_combout\ : std_logic;
SIGNAL \St:x_ar[5][8]~2_combout\ : std_logic;
SIGNAL \St~129_combout\ : std_logic;
SIGNAL \St:x_ar[4][8]~1_combout\ : std_logic;
SIGNAL \St:x_ar[4][8]~2_combout\ : std_logic;
SIGNAL \St~130_combout\ : std_logic;
SIGNAL \St:x_ar[6][8]~1_combout\ : std_logic;
SIGNAL \St:x_ar[6][8]~2_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \x_in[8]~input_o\ : std_logic;
SIGNAL \St~127_combout\ : std_logic;
SIGNAL \St:x_ar[0][8]~1_combout\ : std_logic;
SIGNAL \St:x_ar[0][8]~3_combout\ : std_logic;
SIGNAL \St:x_ar[0][8]~_emulated_q\ : std_logic;
SIGNAL \St:x_ar[0][8]~2_combout\ : std_logic;
SIGNAL \St~128_combout\ : std_logic;
SIGNAL \St:x_ar[3][8]~1_combout\ : std_logic;
SIGNAL \St:x_ar[3][8]~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \x_ar~279_combout\ : std_logic;
SIGNAL \x_ar~276_combout\ : std_logic;
SIGNAL \x_ar~277_combout\ : std_logic;
SIGNAL \x_ar~281_combout\ : std_logic;
SIGNAL \x_ar~280_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \x_ar~284_combout\ : std_logic;
SIGNAL \x_ar~283_combout\ : std_logic;
SIGNAL \x_ar~282_combout\ : std_logic;
SIGNAL \x_ar~288_combout\ : std_logic;
SIGNAL \x_ar~287_combout\ : std_logic;
SIGNAL \x_ar~285_combout\ : std_logic;
SIGNAL \x_ar~278_combout\ : std_logic;
SIGNAL \x_ar~286_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \x_ar~296_combout\ : std_logic;
SIGNAL \x_ar~293_combout\ : std_logic;
SIGNAL \x_ar~294_combout\ : std_logic;
SIGNAL \x_ar~295_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \x_ar~292_combout\ : std_logic;
SIGNAL \x_ar~291_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \x_ar~303_combout\ : std_logic;
SIGNAL \x_ar~297_combout\ : std_logic;
SIGNAL \x_ar~290_combout\ : std_logic;
SIGNAL \x_ar~298_combout\ : std_logic;
SIGNAL \x_ar~299_combout\ : std_logic;
SIGNAL \x_ar~300_combout\ : std_logic;
SIGNAL \x_ar~301_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \x_ar~308_combout\ : std_logic;
SIGNAL \x_ar~304_combout\ : std_logic;
SIGNAL \Mux45~8_combout\ : std_logic;
SIGNAL \x_ar~307_combout\ : std_logic;
SIGNAL \Mux45~10_combout\ : std_logic;
SIGNAL \x_ar~306_combout\ : std_logic;
SIGNAL \Mux45~14_combout\ : std_logic;
SIGNAL \x_ar~305_combout\ : std_logic;
SIGNAL \Mux45~9_combout\ : std_logic;
SIGNAL \Mux45~12_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][8]~3_combout\ : std_logic;
SIGNAL \St:x_ar[2][8]~_emulated_q\ : std_logic;
SIGNAL \St~125_combout\ : std_logic;
SIGNAL \St:x_ar[2][8]~1_combout\ : std_logic;
SIGNAL \St:x_ar[2][8]~2_combout\ : std_logic;
SIGNAL \St~126_combout\ : std_logic;
SIGNAL \St:x_ar[1][8]~1_combout\ : std_logic;
SIGNAL \St:x_ar[1][8]~2_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \a_temp[2]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \a_temp[3]~feeder_combout\ : std_logic;
SIGNAL \St:d[4]~q\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \a_temp[4]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \a_temp[5]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \a_temp[6]~feeder_combout\ : std_logic;
SIGNAL \St:d[7]~q\ : std_logic;
SIGNAL \Add15~13\ : std_logic;
SIGNAL \Add15~14_combout\ : std_logic;
SIGNAL \a_temp[7]~feeder_combout\ : std_logic;
SIGNAL \St:d[8]~q\ : std_logic;
SIGNAL \Add15~15\ : std_logic;
SIGNAL \Add15~16_combout\ : std_logic;
SIGNAL \a_temp[8]~feeder_combout\ : std_logic;
SIGNAL \St:d[9]~q\ : std_logic;
SIGNAL \Add15~17\ : std_logic;
SIGNAL \Add15~18_combout\ : std_logic;
SIGNAL \a_temp[9]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Add15~19\ : std_logic;
SIGNAL \Add15~20_combout\ : std_logic;
SIGNAL \a_temp[10]~feeder_combout\ : std_logic;
SIGNAL \St:d[11]~q\ : std_logic;
SIGNAL \Add15~21\ : std_logic;
SIGNAL \Add15~22_combout\ : std_logic;
SIGNAL \a_temp[11]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Add15~23\ : std_logic;
SIGNAL \Add15~24_combout\ : std_logic;
SIGNAL \a_temp[12]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Add15~25\ : std_logic;
SIGNAL \Add15~26_combout\ : std_logic;
SIGNAL \a_temp[13]~feeder_combout\ : std_logic;
SIGNAL \St:d[14]~q\ : std_logic;
SIGNAL \Add15~27\ : std_logic;
SIGNAL \Add15~28_combout\ : std_logic;
SIGNAL \a_temp[14]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Add15~29\ : std_logic;
SIGNAL \Add15~30_combout\ : std_logic;
SIGNAL \a_temp[15]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Add15~31\ : std_logic;
SIGNAL \Add15~32_combout\ : std_logic;
SIGNAL \a_temp[16]~feeder_combout\ : std_logic;
SIGNAL \St:d[17]~q\ : std_logic;
SIGNAL \Add15~33\ : std_logic;
SIGNAL \Add15~34_combout\ : std_logic;
SIGNAL \a_temp[17]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Add15~35\ : std_logic;
SIGNAL \Add15~36_combout\ : std_logic;
SIGNAL \a_temp[18]~feeder_combout\ : std_logic;
SIGNAL a_temp : std_logic_vector(18 DOWNTO 0);
SIGNAL \ALT_INV_St~0clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_Load_x <= Load_x;
ww_Load_c <= Load_c;
ww_L_in <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(L_in, 3);
ww_x_in <= x_in;
ww_c_in <= c_in;
y_out <= ww_y_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\);

\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT16\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT17\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\Mux63~3_combout\ & \Mux64~3_combout\ & \Mux65~3_combout\ & \Mux66~3_combout\ & \Mux67~3_combout\ & \Mux68~3_combout\ & \Mux69~3_combout\ & \Mux70~3_combout\ & \Mux71~3_combout\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\Mux54~3_combout\ & \Mux55~5_combout\ & \Mux56~3_combout\ & \Mux57~3_combout\ & \Mux58~3_combout\ & \Mux59~3_combout\ & \Mux60~3_combout\ & \Mux61~3_combout\ & \Mux62~3_combout\);

\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\St~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \St~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_St~0clkctrl_outclk\ <= NOT \St~0clkctrl_outclk\;

-- Location: DSPOUT_X71_Y71_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X70_Y71_N19
\St:d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~4_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[2]~q\);

-- Location: FF_X70_Y71_N21
\St:d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~6_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[3]~q\);

-- Location: FF_X70_Y71_N25
\St:d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~10_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[5]~q\);

-- Location: FF_X70_Y71_N27
\St:d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~12_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[6]~q\);

-- Location: FF_X70_Y70_N3
\St:d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~20_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[10]~q\);

-- Location: FF_X70_Y70_N7
\St:d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~24_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[12]~q\);

-- Location: FF_X70_Y70_N9
\St:d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~26_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[13]~q\);

-- Location: FF_X70_Y70_N13
\St:d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~30_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[15]~q\);

-- Location: FF_X70_Y70_N15
\St:d[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~32_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[16]~q\);

-- Location: FF_X70_Y70_N19
\St:d[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~36_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[18]~q\);

-- Location: LCCOMB_X66_Y72_N4
\St:x_count_ini[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[2]~6_combout\ = (!\state.done~q\ & ((\Equal16~1_combout\) # (!\state.mac~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.mac~q\,
	datac => \state.done~q\,
	datad => \Equal16~1_combout\,
	combout => \St:x_count_ini[2]~6_combout\);

-- Location: LCCOMB_X53_Y68_N0
\Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (\St:count[1]~q\ & (((\St:count[0]~q\) # (\c_ar[2][0]~6_combout\)))) # (!\St:count[1]~q\ & (\c_ar[0][0]~10_combout\ & (!\St:count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[0][0]~10_combout\,
	datac => \St:count[0]~q\,
	datad => \c_ar[2][0]~6_combout\,
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X53_Y68_N18
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\St:count[1]~q\ & ((\St:count[0]~q\) # ((\c_ar[2][2]~62_combout\)))) # (!\St:count[1]~q\ & (!\St:count[0]~q\ & (\c_ar[0][2]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:count[0]~q\,
	datac => \c_ar[0][2]~66_combout\,
	datad => \c_ar[2][2]~62_combout\,
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X58_Y66_N12
\Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\St:count[1]~q\ & (\St:count[0]~q\)) # (!\St:count[1]~q\ & ((\St:count[0]~q\ & ((\St:x_ar[1][7]~2_combout\))) # (!\St:count[0]~q\ & (\St:x_ar[0][7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:count[0]~q\,
	datac => \St:x_ar[0][7]~2_combout\,
	datad => \St:x_ar[1][7]~2_combout\,
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X56_Y68_N16
\Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = (\Mux55~0_combout\ & (((\Mux55~1_combout\)))) # (!\Mux55~0_combout\ & ((\Mux55~1_combout\ & (\St:x_ar[5][7]~2_combout\)) # (!\Mux55~1_combout\ & ((\St:x_ar[4][7]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \St:x_ar[5][7]~2_combout\,
	datac => \Mux55~1_combout\,
	datad => \St:x_ar[4][7]~2_combout\,
	combout => \Mux55~4_combout\);

-- Location: LCCOMB_X66_Y72_N10
\St:L_current[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[2]~5_combout\ = (\state.mac~q\) # (\state.done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.mac~q\,
	datac => \state.done~q\,
	combout => \St:L_current[2]~5_combout\);

-- Location: FF_X53_Y68_N13
\c_ar[2][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[2][0]~7_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[2][0]~_emulated_q\);

-- Location: LCCOMB_X53_Y68_N12
\c_ar[2][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][0]~6_combout\ = (\St~0_combout\ & (\St~3_combout\)) # (!\St~0_combout\ & ((\c_ar[2][0]~_emulated_q\ $ (\c_ar[2][0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~3_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[2][0]~_emulated_q\,
	datad => \c_ar[2][0]~5_combout\,
	combout => \c_ar[2][0]~6_combout\);

-- Location: FF_X53_Y68_N3
\c_ar[0][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[0][0]~11_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[0][0]~_emulated_q\);

-- Location: LCCOMB_X53_Y68_N2
\c_ar[0][0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][0]~10_combout\ = (\St~0_combout\ & (\St~4_combout\)) # (!\St~0_combout\ & ((\c_ar[0][0]~_emulated_q\ $ (\c_ar[0][0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~4_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[0][0]~_emulated_q\,
	datad => \c_ar[0][0]~9_combout\,
	combout => \c_ar[0][0]~10_combout\);

-- Location: FF_X55_Y68_N31
\c_ar[6][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[6][1]~55_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[6][1]~_emulated_q\);

-- Location: LCCOMB_X55_Y68_N30
\c_ar[6][1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][1]~54_combout\ = (\St~0_combout\ & (\St~15_combout\)) # (!\St~0_combout\ & ((\c_ar[6][1]~_emulated_q\ $ (\c_ar[6][1]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~15_combout\,
	datac => \c_ar[6][1]~_emulated_q\,
	datad => \c_ar[6][1]~53_combout\,
	combout => \c_ar[6][1]~54_combout\);

-- Location: FF_X53_Y68_N21
\c_ar[2][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[2][2]~63_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[2][2]~_emulated_q\);

-- Location: LCCOMB_X53_Y68_N20
\c_ar[2][2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][2]~62_combout\ = (\St~0_combout\ & (\St~17_combout\)) # (!\St~0_combout\ & ((\c_ar[2][2]~_emulated_q\ $ (\c_ar[2][2]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~17_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[2][2]~_emulated_q\,
	datad => \c_ar[2][2]~61_combout\,
	combout => \c_ar[2][2]~62_combout\);

-- Location: FF_X53_Y68_N27
\c_ar[0][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[0][2]~67_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[0][2]~_emulated_q\);

-- Location: LCCOMB_X53_Y68_N26
\c_ar[0][2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][2]~66_combout\ = (\St~0_combout\ & (\St~18_combout\)) # (!\St~0_combout\ & ((\c_ar[0][2]~_emulated_q\ $ (\c_ar[0][2]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~18_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[0][2]~_emulated_q\,
	datad => \c_ar[0][2]~65_combout\,
	combout => \c_ar[0][2]~66_combout\);

-- Location: FF_X56_Y72_N7
\c_ar[3][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[3][4]~127_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[3][4]~_emulated_q\);

-- Location: LCCOMB_X56_Y72_N6
\c_ar[3][4]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][4]~126_combout\ = (\St~0_combout\ & (\St~33_combout\)) # (!\St~0_combout\ & ((\c_ar[3][4]~_emulated_q\ $ (\c_ar[3][4]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~33_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[3][4]~_emulated_q\,
	datad => \c_ar[3][4]~125_combout\,
	combout => \c_ar[3][4]~126_combout\);

-- Location: FF_X55_Y68_N19
\c_ar[6][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[6][5]~167_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[6][5]~_emulated_q\);

-- Location: LCCOMB_X55_Y68_N18
\c_ar[6][5]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][5]~166_combout\ = (\St~0_combout\ & (\St~43_combout\)) # (!\St~0_combout\ & ((\c_ar[6][5]~_emulated_q\ $ (\c_ar[6][5]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~43_combout\,
	datac => \c_ar[6][5]~_emulated_q\,
	datad => \c_ar[6][5]~165_combout\,
	combout => \c_ar[6][5]~166_combout\);

-- Location: FF_X54_Y71_N7
\c_ar[4][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[4][6]~191_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[4][6]~_emulated_q\);

-- Location: LCCOMB_X54_Y71_N6
\c_ar[4][6]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][6]~190_combout\ = (\St~0_combout\ & (\St~49_combout\)) # (!\St~0_combout\ & ((\c_ar[4][6]~_emulated_q\ $ (\c_ar[4][6]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~49_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[4][6]~_emulated_q\,
	datad => \c_ar[4][6]~189_combout\,
	combout => \c_ar[4][6]~190_combout\);

-- Location: FF_X53_Y71_N15
\c_ar[6][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[6][6]~195_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[6][6]~_emulated_q\);

-- Location: LCCOMB_X53_Y71_N14
\c_ar[6][6]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][6]~194_combout\ = (\St~0_combout\ & (\St~50_combout\)) # (!\St~0_combout\ & ((\c_ar[6][6]~_emulated_q\ $ (\c_ar[6][6]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~50_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[6][6]~_emulated_q\,
	datad => \c_ar[6][6]~193_combout\,
	combout => \c_ar[6][6]~194_combout\);

-- Location: FF_X53_Y71_N25
\c_ar[3][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[3][8]~239_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[3][8]~_emulated_q\);

-- Location: LCCOMB_X53_Y71_N24
\c_ar[3][8]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][8]~238_combout\ = (\St~0_combout\ & (\St~61_combout\)) # (!\St~0_combout\ & ((\c_ar[3][8]~_emulated_q\ $ (\c_ar[3][8]~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~61_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[3][8]~_emulated_q\,
	datad => \c_ar[3][8]~237_combout\,
	combout => \c_ar[3][8]~238_combout\);

-- Location: FF_X56_Y69_N21
\c_ar[5][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[5][8]~243_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[5][8]~_emulated_q\);

-- Location: LCCOMB_X56_Y69_N20
\c_ar[5][8]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][8]~242_combout\ = (\St~0_combout\ & (\St~62_combout\)) # (!\St~0_combout\ & ((\c_ar[5][8]~_emulated_q\ $ (\c_ar[5][8]~241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~62_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[5][8]~_emulated_q\,
	datad => \c_ar[5][8]~241_combout\,
	combout => \c_ar[5][8]~242_combout\);

-- Location: FF_X59_Y68_N25
\c_ar[6][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[6][8]~251_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[6][8]~_emulated_q\);

-- Location: LCCOMB_X59_Y68_N24
\c_ar[6][8]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][8]~250_combout\ = (\St~0_combout\ & (\St~64_combout\)) # (!\St~0_combout\ & ((\c_ar[6][8]~_emulated_q\ $ (\c_ar[6][8]~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~64_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[6][8]~_emulated_q\,
	datad => \c_ar[6][8]~249_combout\,
	combout => \c_ar[6][8]~250_combout\);

-- Location: FF_X61_Y71_N13
\St:x_ar[2][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[2][0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[2][0]~_emulated_q\);

-- Location: FF_X62_Y69_N25
\St:x_ar[5][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[5][2]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[5][4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[5][2]~_emulated_q\);

-- Location: FF_X56_Y67_N13
\St:x_ar[1][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[1][3]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[1][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[1][3]~_emulated_q\);

-- Location: LCCOMB_X56_Y67_N26
\St:x_ar[1][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][3]~2_combout\ = (\St~0_combout\ & (((\St~89_combout\)))) # (!\St~0_combout\ & (\St:x_ar[1][3]~_emulated_q\ $ (((\St:x_ar[1][3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][3]~_emulated_q\,
	datab => \St~0_combout\,
	datac => \St~89_combout\,
	datad => \St:x_ar[1][3]~1_combout\,
	combout => \St:x_ar[1][3]~2_combout\);

-- Location: FF_X56_Y65_N5
\St:x_ar[2][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[2][3]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[2][3]~_emulated_q\);

-- Location: FF_X57_Y66_N27
\St:x_ar[6][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[6][3]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[6][3]~_emulated_q\);

-- Location: FF_X65_Y66_N9
\St:x_ar[3][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[3][4]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[3][4]~_emulated_q\);

-- Location: FF_X60_Y66_N13
\St:x_ar[6][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[6][4]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[6][4]~_emulated_q\);

-- Location: FF_X57_Y71_N13
\St:x_ar[3][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[3][5]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[3][5]~_emulated_q\);

-- Location: FF_X56_Y68_N29
\St:x_ar[5][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[5][6]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[5][4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[5][6]~_emulated_q\);

-- Location: LCCOMB_X56_Y68_N10
\St:x_ar[5][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][6]~2_combout\ = (\St~0_combout\ & (\St~110_combout\)) # (!\St~0_combout\ & ((\St:x_ar[5][6]~_emulated_q\ $ (\St:x_ar[5][6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~110_combout\,
	datab => \St:x_ar[5][6]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[5][6]~1_combout\,
	combout => \St:x_ar[5][6]~2_combout\);

-- Location: FF_X62_Y68_N13
\St:x_ar[1][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[1][6]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[1][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[1][6]~_emulated_q\);

-- Location: FF_X56_Y66_N9
\St:x_ar[1][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[1][7]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[1][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[1][7]~_emulated_q\);

-- Location: LCCOMB_X56_Y66_N26
\St:x_ar[1][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][7]~2_combout\ = (\St~0_combout\ & (\St~118_combout\)) # (!\St~0_combout\ & ((\St:x_ar[1][7]~_emulated_q\ $ (\St:x_ar[1][7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~118_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[1][7]~_emulated_q\,
	datad => \St:x_ar[1][7]~1_combout\,
	combout => \St:x_ar[1][7]~2_combout\);

-- Location: FF_X58_Y68_N25
\St:x_ar[4][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[4][7]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[4][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[4][7]~_emulated_q\);

-- Location: LCCOMB_X58_Y68_N2
\St:x_ar[4][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][7]~2_combout\ = (\St~0_combout\ & (\St~122_combout\)) # (!\St~0_combout\ & ((\St:x_ar[4][7]~_emulated_q\ $ (\St:x_ar[4][7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~122_combout\,
	datab => \St:x_ar[4][7]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[4][7]~1_combout\,
	combout => \St:x_ar[4][7]~2_combout\);

-- Location: FF_X57_Y66_N23
\St:x_ar[6][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[6][7]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[6][7]~_emulated_q\);

-- Location: FF_X67_Y69_N25
\St:x_ar[5][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[5][8]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[5][4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[5][8]~_emulated_q\);

-- Location: FF_X67_Y67_N25
\St:x_ar[1][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[1][8]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[1][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[1][8]~_emulated_q\);

-- Location: FF_X63_Y66_N21
\St:x_ar[3][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[3][8]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[3][8]~_emulated_q\);

-- Location: FF_X67_Y67_N1
\St:x_ar[4][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[4][8]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[4][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[4][8]~_emulated_q\);

-- Location: FF_X67_Y69_N15
\St:x_ar[6][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[6][8]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[6][8]~_emulated_q\);

-- Location: LCCOMB_X53_Y68_N28
\c_ar[2][0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][0]~7_combout\ = \c_in[0]~input_o\ $ (\c_ar[2][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in[0]~input_o\,
	datad => \c_ar[2][0]~5_combout\,
	combout => \c_ar[2][0]~7_combout\);

-- Location: LCCOMB_X53_Y68_N30
\St~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~3_combout\ = (\c_ar[2][0]~6_combout\ & (!\L_in[2]~input_o\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[2][0]~6_combout\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~3_combout\);

-- Location: LCCOMB_X53_Y68_N8
\c_ar[0][0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][0]~11_combout\ = \c_in[0]~input_o\ $ (\c_ar[0][0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in[0]~input_o\,
	datad => \c_ar[0][0]~9_combout\,
	combout => \c_ar[0][0]~11_combout\);

-- Location: LCCOMB_X53_Y68_N22
\St~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~4_combout\ = (!\L_in[2]~input_o\ & (!\L_in[1]~input_o\ & (!\L_in[0]~input_o\ & \c_ar[0][0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \c_ar[0][0]~10_combout\,
	combout => \St~4_combout\);

-- Location: LCCOMB_X55_Y69_N26
\St~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~6_combout\ = (\c_ar[5][0]~18_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[5][0]~18_combout\,
	combout => \St~6_combout\);

-- Location: LCCOMB_X55_Y69_N10
\St~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~7_combout\ = (\c_ar[4][0]~22_combout\ & (((!\L_in[1]~input_o\ & !\L_in[0]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \c_ar[4][0]~22_combout\,
	datad => \L_in[0]~input_o\,
	combout => \St~7_combout\);

-- Location: LCCOMB_X56_Y69_N10
\St~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~9_combout\ = (\c_ar[5][1]~30_combout\ & ((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[2]~input_o\,
	datad => \c_ar[5][1]~30_combout\,
	combout => \St~9_combout\);

-- Location: LCCOMB_X56_Y69_N26
\St~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~11_combout\ = (\c_ar[1][1]~38_combout\ & (!\L_in[2]~input_o\ & !\L_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[1][1]~38_combout\,
	datab => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~11_combout\);

-- Location: LCCOMB_X55_Y69_N12
\St~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~14_combout\ = (\c_ar[4][1]~50_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[4][1]~50_combout\,
	combout => \St~14_combout\);

-- Location: LCCOMB_X55_Y68_N8
\c_ar[6][1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][1]~55_combout\ = \c_ar[6][1]~53_combout\ $ (\c_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[6][1]~53_combout\,
	datad => \c_in[1]~input_o\,
	combout => \c_ar[6][1]~55_combout\);

-- Location: LCCOMB_X55_Y68_N14
\St~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~15_combout\ = (\c_ar[6][1]~54_combout\ & (((!\L_in[2]~input_o\) # (!\L_in[0]~input_o\)) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \c_ar[6][1]~54_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~15_combout\);

-- Location: LCCOMB_X54_Y68_N12
\c_ar[2][2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][2]~63_combout\ = \c_ar[2][2]~61_combout\ $ (\c_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[2][2]~61_combout\,
	datad => \c_in[2]~input_o\,
	combout => \c_ar[2][2]~63_combout\);

-- Location: LCCOMB_X53_Y68_N4
\St~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~17_combout\ = (!\L_in[2]~input_o\ & (\c_ar[2][2]~62_combout\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \c_ar[2][2]~62_combout\,
	combout => \St~17_combout\);

-- Location: LCCOMB_X54_Y68_N30
\c_ar[0][2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][2]~67_combout\ = \c_ar[0][2]~65_combout\ $ (\c_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[0][2]~65_combout\,
	datad => \c_in[2]~input_o\,
	combout => \c_ar[0][2]~67_combout\);

-- Location: LCCOMB_X53_Y68_N14
\St~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~18_combout\ = (\c_ar[0][2]~66_combout\ & (!\L_in[1]~input_o\ & (!\L_in[0]~input_o\ & !\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[0][2]~66_combout\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~18_combout\);

-- Location: LCCOMB_X53_Y69_N26
\St~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~27_combout\ = (\c_ar[3][3]~102_combout\ & !\L_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[3][3]~102_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~27_combout\);

-- Location: LCCOMB_X56_Y72_N14
\c_ar[3][4]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][4]~127_combout\ = \c_in[4]~input_o\ $ (\c_ar[3][4]~125_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in[4]~input_o\,
	datad => \c_ar[3][4]~125_combout\,
	combout => \c_ar[3][4]~127_combout\);

-- Location: LCCOMB_X56_Y72_N28
\St~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~33_combout\ = (\c_ar[3][4]~126_combout\ & !\L_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[3][4]~126_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~33_combout\);

-- Location: LCCOMB_X56_Y71_N30
\St~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~34_combout\ = (\c_ar[5][4]~130_combout\ & ((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datac => \c_ar[5][4]~130_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~34_combout\);

-- Location: LCCOMB_X56_Y68_N26
\St~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~35_combout\ = (\c_ar[4][4]~134_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[4][4]~134_combout\,
	combout => \St~35_combout\);

-- Location: LCCOMB_X55_Y68_N24
\c_ar[6][5]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][5]~167_combout\ = \c_ar[6][5]~165_combout\ $ (\c_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[6][5]~165_combout\,
	datad => \c_in[5]~input_o\,
	combout => \c_ar[6][5]~167_combout\);

-- Location: LCCOMB_X55_Y68_N26
\St~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~43_combout\ = (\c_ar[6][5]~166_combout\ & (((!\L_in[2]~input_o\) # (!\L_in[0]~input_o\)) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \c_ar[6][5]~166_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~43_combout\);

-- Location: LCCOMB_X54_Y71_N20
\c_ar[4][6]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][6]~191_combout\ = \c_ar[4][6]~189_combout\ $ (\c_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[4][6]~189_combout\,
	datad => \c_in[6]~input_o\,
	combout => \c_ar[4][6]~191_combout\);

-- Location: LCCOMB_X54_Y71_N26
\St~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~49_combout\ = (\c_ar[4][6]~190_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[4][6]~190_combout\,
	combout => \St~49_combout\);

-- Location: LCCOMB_X53_Y71_N18
\c_ar[6][6]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][6]~195_combout\ = \c_ar[6][6]~193_combout\ $ (\c_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[6][6]~193_combout\,
	datad => \c_in[6]~input_o\,
	combout => \c_ar[6][6]~195_combout\);

-- Location: LCCOMB_X53_Y71_N8
\St~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~50_combout\ = (\c_ar[6][6]~194_combout\ & (((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \c_ar[6][6]~194_combout\,
	datac => \L_in[1]~input_o\,
	datad => \L_in[0]~input_o\,
	combout => \St~50_combout\);

-- Location: LCCOMB_X56_Y71_N12
\St~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~51_combout\ = (\c_ar[5][7]~198_combout\ & ((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \c_ar[5][7]~198_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~51_combout\);

-- Location: LCCOMB_X53_Y69_N22
\St~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~54_combout\ = (!\L_in[2]~input_o\ & (!\L_in[1]~input_o\ & (!\L_in[0]~input_o\ & \c_ar[0][7]~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \c_ar[0][7]~210_combout\,
	combout => \St~54_combout\);

-- Location: LCCOMB_X53_Y69_N10
\St~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~55_combout\ = (!\L_in[2]~input_o\ & \c_ar[3][7]~214_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datad => \c_ar[3][7]~214_combout\,
	combout => \St~55_combout\);

-- Location: LCCOMB_X56_Y72_N12
\St~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~58_combout\ = (!\L_in[1]~input_o\ & (\c_ar[1][8]~226_combout\ & !\L_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datac => \c_ar[1][8]~226_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~58_combout\);

-- Location: LCCOMB_X53_Y71_N26
\c_ar[3][8]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][8]~239_combout\ = \c_ar[3][8]~237_combout\ $ (\c_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[3][8]~237_combout\,
	datac => \c_in[8]~input_o\,
	combout => \c_ar[3][8]~239_combout\);

-- Location: LCCOMB_X53_Y71_N28
\St~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~61_combout\ = (!\L_in[2]~input_o\ & \c_ar[3][8]~238_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L_in[2]~input_o\,
	datad => \c_ar[3][8]~238_combout\,
	combout => \St~61_combout\);

-- Location: LCCOMB_X56_Y69_N22
\c_ar[5][8]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][8]~243_combout\ = \c_ar[5][8]~241_combout\ $ (\c_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[5][8]~241_combout\,
	datac => \c_in[8]~input_o\,
	combout => \c_ar[5][8]~243_combout\);

-- Location: LCCOMB_X56_Y69_N12
\St~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~62_combout\ = (\c_ar[5][8]~242_combout\ & ((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[2]~input_o\,
	datad => \c_ar[5][8]~242_combout\,
	combout => \St~62_combout\);

-- Location: LCCOMB_X59_Y68_N14
\c_ar[6][8]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][8]~251_combout\ = \c_in[8]~input_o\ $ (\c_ar[6][8]~249_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in[8]~input_o\,
	datac => \c_ar[6][8]~249_combout\,
	combout => \c_ar[6][8]~251_combout\);

-- Location: LCCOMB_X59_Y68_N16
\St~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~64_combout\ = (\c_ar[6][8]~250_combout\ & (((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)) # (!\L_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[6][8]~250_combout\,
	datab => \L_in[0]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~64_combout\);

-- Location: LCCOMB_X60_Y68_N22
\Mux53~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~9_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\Mux31~1_combout\ & ((\Mux53~15_combout\))) # (!\Mux31~1_combout\ & (\x_ar~29_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (((\Mux53~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~29_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \Mux31~1_combout\,
	datad => \Mux53~15_combout\,
	combout => \Mux53~9_combout\);

-- Location: LCCOMB_X65_Y70_N8
\St~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~67_combout\ = (!\St:L_current[1]~2_combout\ & !\St:L_current[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:L_current[1]~2_combout\,
	datad => \St:L_current[2]~2_combout\,
	combout => \St~67_combout\);

-- Location: LCCOMB_X65_Y70_N26
\St:x_ar[1][0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][0]~7_combout\ = (((\St:L_current[0]~2_combout\ & \St~67_combout\)) # (!\Load_x~input_o\)) # (!\state.trans~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.trans~q\,
	datab => \St:L_current[0]~2_combout\,
	datac => \St~67_combout\,
	datad => \Load_x~input_o\,
	combout => \St:x_ar[1][0]~7_combout\);

-- Location: LCCOMB_X61_Y71_N10
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\St:x_ar[2][2]~7_combout\ & (((\St:x_ar[2][2]~6_combout\) # (\Mux53~12_combout\)))) # (!\St:x_ar[2][2]~7_combout\ & (\x_in[0]~input_o\ & (!\St:x_ar[2][2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~7_combout\,
	datab => \x_in[0]~input_o\,
	datac => \St:x_ar[2][2]~6_combout\,
	datad => \Mux53~12_combout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X59_Y67_N20
\Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\) # ((\x_ar~17_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (!\St~66_combout\ & (\x_ar~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~25_combout\,
	datad => \x_ar~17_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X59_Y67_N18
\Selector30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = (\St~66_combout\ & ((\Selector30~1_combout\ & (\x_ar~4_combout\)) # (!\Selector30~1_combout\ & ((\x_ar~11_combout\))))) # (!\St~66_combout\ & (((\Selector30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~4_combout\,
	datac => \x_ar~11_combout\,
	datad => \Selector30~1_combout\,
	combout => \Selector30~2_combout\);

-- Location: LCCOMB_X61_Y71_N20
\Selector30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~3_combout\ = (\St:x_ar[2][2]~6_combout\ & ((\Selector30~0_combout\ & (\Selector30~2_combout\)) # (!\Selector30~0_combout\ & ((\x_ar~32_combout\))))) # (!\St:x_ar[2][2]~6_combout\ & (((\Selector30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~6_combout\,
	datab => \Selector30~2_combout\,
	datac => \x_ar~32_combout\,
	datad => \Selector30~0_combout\,
	combout => \Selector30~3_combout\);

-- Location: LCCOMB_X61_Y71_N12
\St:x_ar[2][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][0]~3_combout\ = \St:x_ar[2][0]~1_combout\ $ (\Selector30~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][0]~1_combout\,
	datad => \Selector30~3_combout\,
	combout => \St:x_ar[2][0]~3_combout\);

-- Location: LCCOMB_X61_Y67_N12
\Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\St~66_combout\ & ((\x_ar~9_combout\) # ((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & (((!\St:x_ar[1][0]~6_combout\ & \x_ar~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~9_combout\,
	datab => \St~66_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~23_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X61_Y67_N26
\Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector21~1_combout\ & ((\x_ar~5_combout\))) # (!\Selector21~1_combout\ & (\x_ar~18_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~18_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~5_combout\,
	datad => \Selector21~1_combout\,
	combout => \Selector21~2_combout\);

-- Location: LCCOMB_X59_Y67_N16
\Selector66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\x_ar~15_combout\) # ((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((!\St~66_combout\ & \x_ar~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~15_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~21_combout\,
	combout => \Selector66~1_combout\);

-- Location: LCCOMB_X59_Y67_N2
\Selector66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~2_combout\ = (\St~66_combout\ & ((\Selector66~1_combout\ & (\x_ar~0_combout\)) # (!\Selector66~1_combout\ & ((\x_ar~13_combout\))))) # (!\St~66_combout\ & (((\Selector66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~0_combout\,
	datab => \x_ar~13_combout\,
	datac => \St~66_combout\,
	datad => \Selector66~1_combout\,
	combout => \Selector66~2_combout\);

-- Location: LCCOMB_X58_Y69_N2
\x_ar~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~42_combout\ = (\Decoder3~4_combout\ & ((\Mux16~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~4_combout\,
	datac => \x_ar~39_combout\,
	datad => \Mux16~3_combout\,
	combout => \x_ar~42_combout\);

-- Location: LCCOMB_X60_Y70_N12
\St~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~76_combout\ = (\St:x_ar[2][1]~2_combout\ & (!\L_in[2]~input_o\ & ((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][1]~2_combout\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~76_combout\);

-- Location: LCCOMB_X57_Y70_N10
\Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\St~66_combout\ & ((\x_ar~41_combout\) # ((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & (((!\St:x_ar[1][0]~6_combout\ & \x_ar~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~41_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~59_combout\,
	combout => \Selector38~1_combout\);

-- Location: LCCOMB_X57_Y70_N28
\Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector38~1_combout\ & (\x_ar~37_combout\)) # (!\Selector38~1_combout\ & ((\x_ar~55_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~37_combout\,
	datab => \x_ar~55_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \Selector38~1_combout\,
	combout => \Selector38~2_combout\);

-- Location: LCCOMB_X59_Y69_N26
\Selector56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\) # ((\x_ar~49_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (!\St~66_combout\ & ((\x_ar~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~49_combout\,
	datad => \x_ar~56_combout\,
	combout => \Selector56~1_combout\);

-- Location: LCCOMB_X60_Y70_N4
\Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\St~66_combout\ & ((\x_ar~45_combout\) # ((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & (((\x_ar~62_combout\ & !\St:x_ar[1][0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~45_combout\,
	datab => \x_ar~62_combout\,
	datac => \St~66_combout\,
	datad => \St:x_ar[1][0]~6_combout\,
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X60_Y70_N10
\Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector47~1_combout\ & (\x_ar~34_combout\)) # (!\Selector47~1_combout\ & ((\x_ar~50_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~34_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \Selector47~1_combout\,
	datad => \x_ar~50_combout\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X62_Y66_N12
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\St:x_ar[6][1]~6_combout\ & (((\St:x_ar[6][1]~7_combout\) # (\x_ar~66_combout\)))) # (!\St:x_ar[6][1]~6_combout\ & (\x_in[1]~input_o\ & (!\St:x_ar[6][1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~6_combout\,
	datab => \x_in[1]~input_o\,
	datac => \St:x_ar[6][1]~7_combout\,
	datad => \x_ar~66_combout\,
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X62_Y70_N10
\x_ar~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~77_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux15~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~72_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \x_ar~72_combout\,
	datad => \Mux15~3_combout\,
	combout => \x_ar~77_combout\);

-- Location: LCCOMB_X65_Y67_N30
\x_ar~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~97_combout\ = (\Decoder3~5_combout\ & ((\Mux42~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~91_combout\,
	datad => \Mux42~3_combout\,
	combout => \x_ar~97_combout\);

-- Location: LCCOMB_X62_Y66_N6
\Mux51~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~8_combout\ = (\Mux53~13_combout\) # (((\Mux49~9_combout\ & \x_ar~97_combout\)) # (!\Mux49~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~9_combout\,
	datab => \Mux53~13_combout\,
	datac => \Mux49~8_combout\,
	datad => \x_ar~97_combout\,
	combout => \Mux51~8_combout\);

-- Location: LCCOMB_X62_Y69_N28
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\St:x_ar[5][4]~6_combout\ & (\St:x_ar[5][4]~7_combout\)) # (!\St:x_ar[5][4]~6_combout\ & ((\St:x_ar[5][4]~7_combout\ & ((\Mux51~12_combout\))) # (!\St:x_ar[5][4]~7_combout\ & (\x_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~6_combout\,
	datab => \St:x_ar[5][4]~7_combout\,
	datac => \x_in[2]~input_o\,
	datad => \Mux51~12_combout\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X63_Y67_N26
\Selector55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\x_ar~83_combout\) # (\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (\x_ar~91_combout\ & ((!\St~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~91_combout\,
	datac => \x_ar~83_combout\,
	datad => \St~66_combout\,
	combout => \Selector55~1_combout\);

-- Location: LCCOMB_X63_Y67_N24
\Selector55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~2_combout\ = (\St~66_combout\ & ((\Selector55~1_combout\ & (\x_ar~75_combout\)) # (!\Selector55~1_combout\ & ((\x_ar~81_combout\))))) # (!\St~66_combout\ & (((\Selector55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~75_combout\,
	datab => \St~66_combout\,
	datac => \Selector55~1_combout\,
	datad => \x_ar~81_combout\,
	combout => \Selector55~2_combout\);

-- Location: LCCOMB_X62_Y69_N18
\Selector55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~3_combout\ = (\St:x_ar[5][4]~6_combout\ & ((\Selector55~0_combout\ & (\Selector55~2_combout\)) # (!\Selector55~0_combout\ & ((\x_ar~97_combout\))))) # (!\St:x_ar[5][4]~6_combout\ & (((\Selector55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~6_combout\,
	datab => \Selector55~2_combout\,
	datac => \x_ar~97_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector55~3_combout\);

-- Location: LCCOMB_X62_Y69_N24
\St:x_ar[5][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][2]~3_combout\ = \St:x_ar[5][2]~1_combout\ $ (\Selector55~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][2]~1_combout\,
	datad => \Selector55~3_combout\,
	combout => \St:x_ar[5][2]~3_combout\);

-- Location: LCCOMB_X61_Y66_N20
\Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\) # ((\x_ar~77_combout\)))) # (!\St~66_combout\ & (!\St:x_ar[1][0]~6_combout\ & (\x_ar~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~93_combout\,
	datad => \x_ar~77_combout\,
	combout => \Selector37~1_combout\);

-- Location: LCCOMB_X61_Y66_N22
\Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector37~1_combout\ & (\x_ar~72_combout\)) # (!\Selector37~1_combout\ & ((\x_ar~89_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~72_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~89_combout\,
	datad => \Selector37~1_combout\,
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X61_Y66_N30
\St~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~86_combout\ = (\St:x_ar[3][2]~2_combout\ & !\L_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][2]~2_combout\,
	datac => \L_in[2]~input_o\,
	combout => \St~86_combout\);

-- Location: LCCOMB_X62_Y67_N10
\Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & ((\x_ar~76_combout\))) # (!\St~66_combout\ & (\x_ar~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~96_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~76_combout\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X62_Y67_N12
\Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector46~1_combout\ & (\x_ar~70_combout\)) # (!\Selector46~1_combout\ & ((\x_ar~85_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~70_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~85_combout\,
	datad => \Selector46~1_combout\,
	combout => \Selector46~2_combout\);

-- Location: LCCOMB_X56_Y67_N20
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\St:x_ar[1][0]~10_combout\ & (((\St:x_ar[1][0]~9_combout\)))) # (!\St:x_ar[1][0]~10_combout\ & ((\St:x_ar[1][0]~9_combout\ & ((\x_ar~133_combout\))) # (!\St:x_ar[1][0]~9_combout\ & (\x_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[3]~input_o\,
	datab => \St:x_ar[1][0]~10_combout\,
	datac => \St:x_ar[1][0]~9_combout\,
	datad => \x_ar~133_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X59_Y65_N14
\Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\St~66_combout\ & ((\x_ar~111_combout\) # ((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & (((!\St:x_ar[1][0]~6_combout\ & \x_ar~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~111_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~127_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X59_Y65_N4
\Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector18~1_combout\ & ((\x_ar~108_combout\))) # (!\Selector18~1_combout\ & (\x_ar~122_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~122_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \Selector18~1_combout\,
	datad => \x_ar~108_combout\,
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X56_Y67_N18
\Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (\St:x_ar[1][0]~10_combout\ & ((\Selector18~0_combout\ & (\Selector18~2_combout\)) # (!\Selector18~0_combout\ & ((\Mux50~4_combout\))))) # (!\St:x_ar[1][0]~10_combout\ & (((\Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~2_combout\,
	datab => \St:x_ar[1][0]~10_combout\,
	datac => \Mux50~4_combout\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~3_combout\);

-- Location: LCCOMB_X56_Y67_N12
\St:x_ar[1][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][3]~3_combout\ = \St:x_ar[1][3]~1_combout\ $ (\Selector18~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][3]~1_combout\,
	datad => \Selector18~3_combout\,
	combout => \St:x_ar[1][3]~3_combout\);

-- Location: LCCOMB_X56_Y67_N28
\St~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~89_combout\ = (!\L_in[2]~input_o\ & (\St:x_ar[1][3]~2_combout\ & !\L_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datac => \St:x_ar[1][3]~2_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~89_combout\);

-- Location: LCCOMB_X56_Y65_N30
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\St:x_ar[2][2]~6_combout\ & (((\St:x_ar[2][2]~7_combout\) # (\x_ar~134_combout\)))) # (!\St:x_ar[2][2]~6_combout\ & (\x_in[3]~input_o\ & (!\St:x_ar[2][2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~6_combout\,
	datab => \x_in[3]~input_o\,
	datac => \St:x_ar[2][2]~7_combout\,
	datad => \x_ar~134_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X59_Y65_N26
\Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\St~66_combout\ & (\St:x_ar[1][0]~6_combout\)) # (!\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\ & (\x_ar~120_combout\)) # (!\St:x_ar[1][0]~6_combout\ & ((\x_ar~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~120_combout\,
	datad => \x_ar~129_combout\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X56_Y65_N0
\Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\St~66_combout\ & ((\Selector27~1_combout\ & (\x_ar~107_combout\)) # (!\Selector27~1_combout\ & ((\x_ar~113_combout\))))) # (!\St~66_combout\ & (((\Selector27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~107_combout\,
	datac => \Selector27~1_combout\,
	datad => \x_ar~113_combout\,
	combout => \Selector27~2_combout\);

-- Location: LCCOMB_X56_Y65_N26
\Selector27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = (\Selector27~0_combout\ & ((\Selector27~2_combout\) # ((!\St:x_ar[2][2]~7_combout\)))) # (!\Selector27~0_combout\ & (((\Mux50~4_combout\ & \St:x_ar[2][2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => \Selector27~2_combout\,
	datac => \Mux50~4_combout\,
	datad => \St:x_ar[2][2]~7_combout\,
	combout => \Selector27~3_combout\);

-- Location: LCCOMB_X56_Y65_N4
\St:x_ar[2][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][3]~3_combout\ = \St:x_ar[2][3]~1_combout\ $ (\Selector27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][3]~1_combout\,
	datac => \Selector27~3_combout\,
	combout => \St:x_ar[2][3]~3_combout\);

-- Location: LCCOMB_X59_Y67_N8
\Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (\St~66_combout\)) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & ((\x_ar~110_combout\))) # (!\St~66_combout\ & (\x_ar~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~128_combout\,
	datad => \x_ar~110_combout\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X59_Y67_N30
\Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector36~1_combout\ & (\x_ar~106_combout\)) # (!\Selector36~1_combout\ & ((\x_ar~124_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~106_combout\,
	datac => \Selector36~1_combout\,
	datad => \x_ar~124_combout\,
	combout => \Selector36~2_combout\);

-- Location: LCCOMB_X58_Y68_N22
\Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & (\x_ar~114_combout\)) # (!\St~66_combout\ & ((\x_ar~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~114_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~131_combout\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X58_Y68_N12
\Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector45~1_combout\ & (\x_ar~103_combout\)) # (!\Selector45~1_combout\ & ((\x_ar~119_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~103_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \Selector45~1_combout\,
	datad => \x_ar~119_combout\,
	combout => \Selector45~2_combout\);

-- Location: LCCOMB_X57_Y65_N30
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\St:x_ar[6][1]~6_combout\ & (((\St:x_ar[6][1]~7_combout\) # (\x_ar~135_combout\)))) # (!\St:x_ar[6][1]~6_combout\ & (\x_in[3]~input_o\ & (!\St:x_ar[6][1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[3]~input_o\,
	datab => \St:x_ar[6][1]~6_combout\,
	datac => \St:x_ar[6][1]~7_combout\,
	datad => \x_ar~135_combout\,
	combout => \Selector63~0_combout\);

-- Location: LCCOMB_X57_Y66_N14
\Selector63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\x_ar~117_combout\) # ((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((!\St~66_combout\ & \x_ar~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~117_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~126_combout\,
	combout => \Selector63~1_combout\);

-- Location: LCCOMB_X57_Y66_N16
\Selector63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~2_combout\ = (\St~66_combout\ & ((\Selector63~1_combout\ & ((\x_ar~104_combout\))) # (!\Selector63~1_combout\ & (\x_ar~116_combout\)))) # (!\St~66_combout\ & (((\Selector63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~116_combout\,
	datab => \St~66_combout\,
	datac => \Selector63~1_combout\,
	datad => \x_ar~104_combout\,
	combout => \Selector63~2_combout\);

-- Location: LCCOMB_X57_Y66_N18
\Selector63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~3_combout\ = (\St:x_ar[6][1]~7_combout\ & ((\Selector63~0_combout\ & (\Selector63~2_combout\)) # (!\Selector63~0_combout\ & ((\Mux50~4_combout\))))) # (!\St:x_ar[6][1]~7_combout\ & (((\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~7_combout\,
	datab => \Selector63~2_combout\,
	datac => \Selector63~0_combout\,
	datad => \Mux50~4_combout\,
	combout => \Selector63~3_combout\);

-- Location: LCCOMB_X57_Y66_N26
\St:x_ar[6][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][3]~3_combout\ = \St:x_ar[6][3]~1_combout\ $ (\Selector63~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][3]~1_combout\,
	datad => \Selector63~3_combout\,
	combout => \St:x_ar[6][3]~3_combout\);

-- Location: LCCOMB_X65_Y69_N4
\Mux49~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~12_combout\ = (\Mux53~13_combout\) # ((\Mux49~8_combout\) # ((\x_ar~169_combout\) # (!\Mux49~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~13_combout\,
	datab => \Mux49~8_combout\,
	datac => \Mux49~9_combout\,
	datad => \x_ar~169_combout\,
	combout => \Mux49~12_combout\);

-- Location: LCCOMB_X67_Y68_N4
\Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\) # (\x_ar~152_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (\x_ar~160_combout\ & (!\St~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~160_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~152_combout\,
	combout => \Selector53~1_combout\);

-- Location: LCCOMB_X67_Y68_N26
\Selector53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~2_combout\ = (\St~66_combout\ & ((\Selector53~1_combout\ & (\x_ar~144_combout\)) # (!\Selector53~1_combout\ & ((\x_ar~150_combout\))))) # (!\St~66_combout\ & (((\Selector53~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~144_combout\,
	datab => \St~66_combout\,
	datac => \Selector53~1_combout\,
	datad => \x_ar~150_combout\,
	combout => \Selector53~2_combout\);

-- Location: LCCOMB_X67_Y68_N24
\Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\) # ((\x_ar~155_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (!\St~66_combout\ & ((\x_ar~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~155_combout\,
	datad => \x_ar~163_combout\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X67_Y68_N2
\Selector26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (\St~66_combout\ & ((\Selector26~1_combout\ & (\x_ar~142_combout\)) # (!\Selector26~1_combout\ & ((\x_ar~149_combout\))))) # (!\St~66_combout\ & (((\Selector26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~142_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~149_combout\,
	datad => \Selector26~1_combout\,
	combout => \Selector26~2_combout\);

-- Location: LCCOMB_X65_Y66_N28
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\St:x_ar[3][6]~6_combout\ & (((\St:x_ar[3][6]~7_combout\)))) # (!\St:x_ar[3][6]~6_combout\ & ((\St:x_ar[3][6]~7_combout\ & ((\Mux49~14_combout\))) # (!\St:x_ar[3][6]~7_combout\ & (\x_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[4]~input_o\,
	datab => \St:x_ar[3][6]~6_combout\,
	datac => \St:x_ar[3][6]~7_combout\,
	datad => \Mux49~14_combout\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X65_Y68_N0
\Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & ((\x_ar~146_combout\))) # (!\St~66_combout\ & (\x_ar~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~162_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~146_combout\,
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X65_Y68_N30
\Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector35~1_combout\ & (\x_ar~141_combout\)) # (!\Selector35~1_combout\ & ((\x_ar~158_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~141_combout\,
	datac => \x_ar~158_combout\,
	datad => \Selector35~1_combout\,
	combout => \Selector35~2_combout\);

-- Location: LCCOMB_X65_Y66_N6
\Selector35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~3_combout\ = (\St:x_ar[3][6]~6_combout\ & ((\Selector35~0_combout\ & (\Selector35~2_combout\)) # (!\Selector35~0_combout\ & ((\x_ar~167_combout\))))) # (!\St:x_ar[3][6]~6_combout\ & (((\Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~2_combout\,
	datab => \St:x_ar[3][6]~6_combout\,
	datac => \x_ar~167_combout\,
	datad => \Selector35~0_combout\,
	combout => \Selector35~3_combout\);

-- Location: LCCOMB_X65_Y66_N8
\St:x_ar[3][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][4]~3_combout\ = \St:x_ar[3][4]~1_combout\ $ (\Selector35~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][4]~1_combout\,
	datad => \Selector35~3_combout\,
	combout => \St:x_ar[3][4]~3_combout\);

-- Location: LCCOMB_X60_Y66_N10
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\St:x_ar[6][1]~7_combout\ & (((\St:x_ar[6][1]~6_combout\) # (\Mux49~14_combout\)))) # (!\St:x_ar[6][1]~7_combout\ & (\x_in[4]~input_o\ & (!\St:x_ar[6][1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[4]~input_o\,
	datab => \St:x_ar[6][1]~7_combout\,
	datac => \St:x_ar[6][1]~6_combout\,
	datad => \Mux49~14_combout\,
	combout => \Selector62~0_combout\);

-- Location: LCCOMB_X60_Y66_N24
\Selector62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~1_combout\ = (\St~66_combout\ & (\St:x_ar[1][0]~6_combout\)) # (!\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\ & ((\x_ar~153_combout\))) # (!\St:x_ar[1][0]~6_combout\ & (\x_ar~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~159_combout\,
	datad => \x_ar~153_combout\,
	combout => \Selector62~1_combout\);

-- Location: LCCOMB_X60_Y66_N30
\Selector62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~2_combout\ = (\St~66_combout\ & ((\Selector62~1_combout\ & (\x_ar~138_combout\)) # (!\Selector62~1_combout\ & ((\x_ar~151_combout\))))) # (!\St~66_combout\ & (((\Selector62~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~138_combout\,
	datab => \x_ar~151_combout\,
	datac => \St~66_combout\,
	datad => \Selector62~1_combout\,
	combout => \Selector62~2_combout\);

-- Location: LCCOMB_X60_Y66_N20
\Selector62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~3_combout\ = (\St:x_ar[6][1]~6_combout\ & ((\Selector62~0_combout\ & (\Selector62~2_combout\)) # (!\Selector62~0_combout\ & ((\x_ar~168_combout\))))) # (!\St:x_ar[6][1]~6_combout\ & (((\Selector62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector62~2_combout\,
	datab => \St:x_ar[6][1]~6_combout\,
	datac => \x_ar~168_combout\,
	datad => \Selector62~0_combout\,
	combout => \Selector62~3_combout\);

-- Location: LCCOMB_X60_Y66_N12
\St:x_ar[6][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][4]~3_combout\ = \St:x_ar[6][4]~1_combout\ $ (\Selector62~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[6][4]~1_combout\,
	datad => \Selector62~3_combout\,
	combout => \St:x_ar[6][4]~3_combout\);

-- Location: LCCOMB_X58_Y71_N12
\x_ar~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~177_combout\ = (\Decoder3~5_combout\ & ((\Mux3~3_combout\))) # (!\Decoder3~5_combout\ & (\St:x_ar[1][5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][5]~2_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux3~3_combout\,
	combout => \x_ar~177_combout\);

-- Location: LCCOMB_X63_Y71_N20
\Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & (\x_ar~180_combout\)) # (!\St~66_combout\ & ((\x_ar~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~180_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~196_combout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X63_Y71_N26
\Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector16~1_combout\ & (\x_ar~177_combout\)) # (!\Selector16~1_combout\ & ((\x_ar~191_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~177_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~191_combout\,
	datad => \Selector16~1_combout\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X57_Y71_N30
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\St:x_ar[3][6]~7_combout\ & (((\St:x_ar[3][6]~6_combout\)))) # (!\St:x_ar[3][6]~7_combout\ & ((\St:x_ar[3][6]~6_combout\ & ((\x_ar~206_combout\))) # (!\St:x_ar[3][6]~6_combout\ & (\x_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[5]~input_o\,
	datab => \St:x_ar[3][6]~7_combout\,
	datac => \St:x_ar[3][6]~6_combout\,
	datad => \x_ar~206_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X58_Y72_N18
\Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (\St~66_combout\)) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & ((\x_ar~179_combout\))) # (!\St~66_combout\ & (\x_ar~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~197_combout\,
	datad => \x_ar~179_combout\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X57_Y71_N20
\Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector34~1_combout\ & (\x_ar~175_combout\)) # (!\Selector34~1_combout\ & ((\x_ar~193_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~175_combout\,
	datac => \Selector34~1_combout\,
	datad => \x_ar~193_combout\,
	combout => \Selector34~2_combout\);

-- Location: LCCOMB_X57_Y71_N10
\Selector34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~3_combout\ = (\Selector34~0_combout\ & (((\Selector34~2_combout\)) # (!\St:x_ar[3][6]~7_combout\))) # (!\Selector34~0_combout\ & (\St:x_ar[3][6]~7_combout\ & (\Mux48~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \St:x_ar[3][6]~7_combout\,
	datac => \Mux48~4_combout\,
	datad => \Selector34~2_combout\,
	combout => \Selector34~3_combout\);

-- Location: LCCOMB_X57_Y71_N12
\St:x_ar[3][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][5]~3_combout\ = \St:x_ar[3][5]~1_combout\ $ (\Selector34~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[3][5]~1_combout\,
	datad => \Selector34~3_combout\,
	combout => \St:x_ar[3][5]~3_combout\);

-- Location: LCCOMB_X61_Y72_N0
\Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & (\x_ar~183_combout\)) # (!\St~66_combout\ & ((\x_ar~200_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~183_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~200_combout\,
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X61_Y70_N30
\Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (\Selector43~1_combout\ & ((\x_ar~172_combout\) # ((!\St:x_ar[1][0]~6_combout\)))) # (!\Selector43~1_combout\ & (((\St:x_ar[1][0]~6_combout\ & \x_ar~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~1_combout\,
	datab => \x_ar~172_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~188_combout\,
	combout => \Selector43~2_combout\);

-- Location: LCCOMB_X59_Y71_N12
\Selector61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\) # ((\x_ar~186_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (!\St~66_combout\ & ((\x_ar~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~186_combout\,
	datad => \x_ar~195_combout\,
	combout => \Selector61~1_combout\);

-- Location: LCCOMB_X59_Y71_N10
\Selector61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~2_combout\ = (\St~66_combout\ & ((\Selector61~1_combout\ & ((\x_ar~173_combout\))) # (!\Selector61~1_combout\ & (\x_ar~185_combout\)))) # (!\St~66_combout\ & (((\Selector61~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~185_combout\,
	datac => \x_ar~173_combout\,
	datad => \Selector61~1_combout\,
	combout => \Selector61~2_combout\);

-- Location: LCCOMB_X65_Y65_N12
\x_ar~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~207_combout\ = (\Decoder3~0_combout\ & ((\Mux2~3_combout\))) # (!\Decoder3~0_combout\ & (\St:x_ar[6][6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][6]~2_combout\,
	datac => \Mux2~3_combout\,
	datad => \Decoder3~0_combout\,
	combout => \x_ar~207_combout\);

-- Location: LCCOMB_X65_Y69_N30
\Mux47~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~10_combout\ = (\Mux53~13_combout\) # ((\Mux49~8_combout\) # ((\x_ar~238_combout\) # (!\Mux49~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~13_combout\,
	datab => \Mux49~8_combout\,
	datac => \Mux49~9_combout\,
	datad => \x_ar~238_combout\,
	combout => \Mux47~10_combout\);

-- Location: LCCOMB_X61_Y68_N12
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\St:x_ar[5][4]~6_combout\ & (((\St:x_ar[5][4]~7_combout\)))) # (!\St:x_ar[5][4]~6_combout\ & ((\St:x_ar[5][4]~7_combout\ & ((\Mux47~12_combout\))) # (!\St:x_ar[5][4]~7_combout\ & (\x_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[6]~input_o\,
	datab => \St:x_ar[5][4]~6_combout\,
	datac => \Mux47~12_combout\,
	datad => \St:x_ar[5][4]~7_combout\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X66_Y65_N14
\Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\x_ar~221_combout\) # ((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((!\St~66_combout\ & \x_ar~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~221_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~229_combout\,
	combout => \Selector51~1_combout\);

-- Location: LCCOMB_X62_Y65_N12
\Selector51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~2_combout\ = (\St~66_combout\ & ((\Selector51~1_combout\ & (\x_ar~213_combout\)) # (!\Selector51~1_combout\ & ((\x_ar~219_combout\))))) # (!\St~66_combout\ & (((\Selector51~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~213_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~219_combout\,
	datad => \Selector51~1_combout\,
	combout => \Selector51~2_combout\);

-- Location: LCCOMB_X61_Y68_N26
\Selector51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~3_combout\ = (\St:x_ar[5][4]~6_combout\ & ((\Selector51~0_combout\ & ((\Selector51~2_combout\))) # (!\Selector51~0_combout\ & (\x_ar~235_combout\)))) # (!\St:x_ar[5][4]~6_combout\ & (((\Selector51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~235_combout\,
	datab => \St:x_ar[5][4]~6_combout\,
	datac => \Selector51~2_combout\,
	datad => \Selector51~0_combout\,
	combout => \Selector51~3_combout\);

-- Location: LCCOMB_X56_Y68_N28
\St:x_ar[5][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][6]~3_combout\ = \St:x_ar[5][6]~1_combout\ $ (\Selector51~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[5][6]~1_combout\,
	datad => \Selector51~3_combout\,
	combout => \St:x_ar[5][6]~3_combout\);

-- Location: LCCOMB_X56_Y68_N22
\St~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~110_combout\ = (\St:x_ar[5][6]~2_combout\ & ((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][6]~2_combout\,
	datac => \L_in[1]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~110_combout\);

-- Location: LCCOMB_X62_Y68_N30
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\St:x_ar[1][0]~9_combout\ & (((\St:x_ar[1][0]~10_combout\)))) # (!\St:x_ar[1][0]~9_combout\ & ((\St:x_ar[1][0]~10_combout\ & ((\Mux47~12_combout\))) # (!\St:x_ar[1][0]~10_combout\ & (\x_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~9_combout\,
	datab => \x_in[6]~input_o\,
	datac => \St:x_ar[1][0]~10_combout\,
	datad => \Mux47~12_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X66_Y65_N10
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (\St~66_combout\)) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & ((\x_ar~216_combout\))) # (!\St~66_combout\ & (\x_ar~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~230_combout\,
	datad => \x_ar~216_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X62_Y65_N4
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector15~1_combout\ & ((\x_ar~212_combout\))) # (!\Selector15~1_combout\ & (\x_ar~225_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~225_combout\,
	datab => \x_ar~212_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \Selector15~1_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X62_Y68_N8
\Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\St:x_ar[1][0]~9_combout\ & ((\Selector15~0_combout\ & (\Selector15~2_combout\)) # (!\Selector15~0_combout\ & ((\x_ar~240_combout\))))) # (!\St:x_ar[1][0]~9_combout\ & (((\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~9_combout\,
	datab => \Selector15~2_combout\,
	datac => \Selector15~0_combout\,
	datad => \x_ar~240_combout\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X62_Y68_N12
\St:x_ar[1][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][6]~3_combout\ = \St:x_ar[1][6]~1_combout\ $ (\Selector15~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][6]~1_combout\,
	datac => \Selector15~3_combout\,
	combout => \St:x_ar[1][6]~3_combout\);

-- Location: LCCOMB_X66_Y67_N18
\Selector60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\x_ar~222_combout\) # ((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((\x_ar~228_combout\ & !\St~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~222_combout\,
	datac => \x_ar~228_combout\,
	datad => \St~66_combout\,
	combout => \Selector60~1_combout\);

-- Location: LCCOMB_X66_Y67_N20
\Selector60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~2_combout\ = (\St~66_combout\ & ((\Selector60~1_combout\ & (\x_ar~207_combout\)) # (!\Selector60~1_combout\ & ((\x_ar~220_combout\))))) # (!\St~66_combout\ & (((\Selector60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~207_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~220_combout\,
	datad => \Selector60~1_combout\,
	combout => \Selector60~2_combout\);

-- Location: LCCOMB_X59_Y64_N22
\x_ar~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~270_combout\ = (\Decoder3~2_combout\ & ((\Mux37~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~269_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~2_combout\,
	datac => \x_ar~269_combout\,
	datad => \Mux37~3_combout\,
	combout => \x_ar~270_combout\);

-- Location: LCCOMB_X56_Y66_N4
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\St:x_ar[1][0]~10_combout\ & (\St:x_ar[1][0]~9_combout\)) # (!\St:x_ar[1][0]~10_combout\ & ((\St:x_ar[1][0]~9_combout\ & (\x_ar~271_combout\)) # (!\St:x_ar[1][0]~9_combout\ & ((\x_in[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~10_combout\,
	datab => \St:x_ar[1][0]~9_combout\,
	datac => \x_ar~271_combout\,
	datad => \x_in[7]~input_o\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X56_Y66_N30
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (\St~66_combout\)) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & (\x_ar~249_combout\)) # (!\St~66_combout\ & ((\x_ar~265_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~249_combout\,
	datad => \x_ar~265_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X56_Y66_N24
\Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector14~1_combout\ & (\x_ar~246_combout\)) # (!\Selector14~1_combout\ & ((\x_ar~260_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~246_combout\,
	datac => \Selector14~1_combout\,
	datad => \x_ar~260_combout\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X56_Y66_N6
\Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\St:x_ar[1][0]~10_combout\ & ((\Selector14~0_combout\ & (\Selector14~2_combout\)) # (!\Selector14~0_combout\ & ((\Mux46~4_combout\))))) # (!\St:x_ar[1][0]~10_combout\ & (((\Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~10_combout\,
	datab => \Selector14~2_combout\,
	datac => \Selector14~0_combout\,
	datad => \Mux46~4_combout\,
	combout => \Selector14~3_combout\);

-- Location: LCCOMB_X56_Y66_N8
\St:x_ar[1][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][7]~3_combout\ = \St:x_ar[1][7]~1_combout\ $ (\Selector14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[1][7]~1_combout\,
	datad => \Selector14~3_combout\,
	combout => \St:x_ar[1][7]~3_combout\);

-- Location: LCCOMB_X56_Y66_N28
\St~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~118_combout\ = (\St:x_ar[1][7]~2_combout\ & (!\L_in[2]~input_o\ & !\L_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][7]~2_combout\,
	datac => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~118_combout\);

-- Location: LCCOMB_X59_Y66_N0
\Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\) # ((\x_ar~248_combout\)))) # (!\St~66_combout\ & (!\St:x_ar[1][0]~6_combout\ & ((\x_ar~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~248_combout\,
	datad => \x_ar~266_combout\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X59_Y66_N30
\Selector32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector32~1_combout\ & ((\x_ar~244_combout\))) # (!\Selector32~1_combout\ & (\x_ar~262_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~262_combout\,
	datac => \x_ar~244_combout\,
	datad => \Selector32~1_combout\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X58_Y68_N26
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\St:x_ar[4][6]~7_combout\ & (((\St:x_ar[4][6]~8_combout\) # (\x_ar~270_combout\)))) # (!\St:x_ar[4][6]~7_combout\ & (\x_in[7]~input_o\ & (!\St:x_ar[4][6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[7]~input_o\,
	datab => \St:x_ar[4][6]~7_combout\,
	datac => \St:x_ar[4][6]~8_combout\,
	datad => \x_ar~270_combout\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X61_Y64_N6
\Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & (\x_ar~252_combout\)) # (!\St~66_combout\ & ((\x_ar~269_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~252_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~269_combout\,
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X61_Y64_N8
\Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector41~1_combout\ & (\x_ar~241_combout\)) # (!\Selector41~1_combout\ & ((\x_ar~257_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~241_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~257_combout\,
	datad => \Selector41~1_combout\,
	combout => \Selector41~2_combout\);

-- Location: LCCOMB_X58_Y68_N28
\Selector41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~3_combout\ = (\St:x_ar[4][6]~8_combout\ & ((\Selector41~0_combout\ & (\Selector41~2_combout\)) # (!\Selector41~0_combout\ & ((\Mux46~4_combout\))))) # (!\St:x_ar[4][6]~8_combout\ & (((\Selector41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~2_combout\,
	datab => \St:x_ar[4][6]~8_combout\,
	datac => \Selector41~0_combout\,
	datad => \Mux46~4_combout\,
	combout => \Selector41~3_combout\);

-- Location: LCCOMB_X58_Y68_N24
\St:x_ar[4][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][7]~3_combout\ = \St:x_ar[4][7]~1_combout\ $ (\Selector41~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[4][7]~1_combout\,
	datad => \Selector41~3_combout\,
	combout => \St:x_ar[4][7]~3_combout\);

-- Location: LCCOMB_X58_Y68_N14
\St~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~122_combout\ = (\St:x_ar[4][7]~2_combout\ & (((!\L_in[1]~input_o\ & !\L_in[0]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \St:x_ar[4][7]~2_combout\,
	datac => \L_in[2]~input_o\,
	datad => \L_in[0]~input_o\,
	combout => \St~122_combout\);

-- Location: LCCOMB_X58_Y66_N20
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\St:x_ar[6][1]~6_combout\ & ((\St:x_ar[6][1]~7_combout\) # ((\x_ar~273_combout\)))) # (!\St:x_ar[6][1]~6_combout\ & (!\St:x_ar[6][1]~7_combout\ & ((\x_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~6_combout\,
	datab => \St:x_ar[6][1]~7_combout\,
	datac => \x_ar~273_combout\,
	datad => \x_in[7]~input_o\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X61_Y64_N18
\Selector59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~1_combout\ = (\St~66_combout\ & (((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\ & ((\x_ar~255_combout\))) # (!\St:x_ar[1][0]~6_combout\ & (\x_ar~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~264_combout\,
	datab => \St~66_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~255_combout\,
	combout => \Selector59~1_combout\);

-- Location: LCCOMB_X61_Y64_N24
\Selector59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~2_combout\ = (\St~66_combout\ & ((\Selector59~1_combout\ & ((\x_ar~242_combout\))) # (!\Selector59~1_combout\ & (\x_ar~254_combout\)))) # (!\St~66_combout\ & (((\Selector59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~254_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~242_combout\,
	datad => \Selector59~1_combout\,
	combout => \Selector59~2_combout\);

-- Location: LCCOMB_X57_Y66_N10
\Selector59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~3_combout\ = (\St:x_ar[6][1]~7_combout\ & ((\Selector59~0_combout\ & (\Selector59~2_combout\)) # (!\Selector59~0_combout\ & ((\Mux46~4_combout\))))) # (!\St:x_ar[6][1]~7_combout\ & (((\Selector59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~7_combout\,
	datab => \Selector59~2_combout\,
	datac => \Selector59~0_combout\,
	datad => \Mux46~4_combout\,
	combout => \Selector59~3_combout\);

-- Location: LCCOMB_X57_Y66_N22
\St:x_ar[6][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][7]~3_combout\ = \St:x_ar[6][7]~1_combout\ $ (\Selector59~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][7]~1_combout\,
	datad => \Selector59~3_combout\,
	combout => \St:x_ar[6][7]~3_combout\);

-- Location: LCCOMB_X67_Y70_N10
\x_ar~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~289_combout\ = (\Equal8~0_combout\ & ((\Mux9~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~276_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~276_combout\,
	datac => \Equal8~0_combout\,
	datad => \Mux9~3_combout\,
	combout => \x_ar~289_combout\);

-- Location: LCCOMB_X67_Y66_N30
\x_ar~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~302_combout\ = (\Decoder3~3_combout\ & ((\Mux27~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~295_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datab => \x_ar~295_combout\,
	datac => \Mux27~3_combout\,
	combout => \x_ar~302_combout\);

-- Location: LCCOMB_X67_Y66_N26
\x_ar~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~309_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux36~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~299_combout\)))) # (!\Decoder3~6_combout\ & (((\x_ar~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~299_combout\,
	datad => \Mux36~3_combout\,
	combout => \x_ar~309_combout\);

-- Location: LCCOMB_X67_Y66_N28
\Mux45~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~11_combout\ = (!\Mux49~9_combout\ & ((\St:x_count_ini[0]~2_combout\ & ((\x_ar~309_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (\x_ar~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~302_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~309_combout\,
	datad => \Mux49~9_combout\,
	combout => \Mux45~11_combout\);

-- Location: LCCOMB_X67_Y69_N18
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\St:x_ar[5][4]~7_combout\ & (((\St:x_ar[5][4]~6_combout\) # (\Mux45~12_combout\)))) # (!\St:x_ar[5][4]~7_combout\ & (\x_in[8]~input_o\ & (!\St:x_ar[5][4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \x_in[8]~input_o\,
	datac => \St:x_ar[5][4]~6_combout\,
	datad => \Mux45~12_combout\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X66_Y67_N22
\Selector49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\) # ((\x_ar~290_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (!\St~66_combout\ & (\x_ar~298_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~298_combout\,
	datad => \x_ar~290_combout\,
	combout => \Selector49~1_combout\);

-- Location: LCCOMB_X67_Y69_N12
\Selector49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~2_combout\ = (\St~66_combout\ & ((\Selector49~1_combout\ & ((\x_ar~282_combout\))) # (!\Selector49~1_combout\ & (\x_ar~288_combout\)))) # (!\St~66_combout\ & (((\Selector49~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~288_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~282_combout\,
	datad => \Selector49~1_combout\,
	combout => \Selector49~2_combout\);

-- Location: LCCOMB_X67_Y69_N10
\Selector49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~3_combout\ = (\St:x_ar[5][4]~6_combout\ & ((\Selector49~0_combout\ & (\Selector49~2_combout\)) # (!\Selector49~0_combout\ & ((\x_ar~304_combout\))))) # (!\St:x_ar[5][4]~6_combout\ & (((\Selector49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector49~2_combout\,
	datab => \St:x_ar[5][4]~6_combout\,
	datac => \x_ar~304_combout\,
	datad => \Selector49~0_combout\,
	combout => \Selector49~3_combout\);

-- Location: LCCOMB_X67_Y69_N24
\St:x_ar[5][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][8]~3_combout\ = \St:x_ar[5][8]~1_combout\ $ (\Selector49~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[5][8]~1_combout\,
	datad => \Selector49~3_combout\,
	combout => \St:x_ar[5][8]~3_combout\);

-- Location: LCCOMB_X66_Y66_N12
\Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\St~66_combout\ & (\St:x_ar[1][0]~6_combout\)) # (!\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\ & (\x_ar~293_combout\)) # (!\St:x_ar[1][0]~6_combout\ & ((\x_ar~301_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~293_combout\,
	datad => \x_ar~301_combout\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X66_Y66_N18
\Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\St~66_combout\ & ((\Selector22~1_combout\ & (\x_ar~280_combout\)) # (!\Selector22~1_combout\ & ((\x_ar~287_combout\))))) # (!\St~66_combout\ & (((\Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~280_combout\,
	datab => \x_ar~287_combout\,
	datac => \St~66_combout\,
	datad => \Selector22~1_combout\,
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X67_Y67_N28
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\St:x_ar[1][0]~9_combout\ & (((\St:x_ar[1][0]~10_combout\)))) # (!\St:x_ar[1][0]~9_combout\ & ((\St:x_ar[1][0]~10_combout\ & ((\Mux45~12_combout\))) # (!\St:x_ar[1][0]~10_combout\ & (\x_in[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~9_combout\,
	datab => \x_in[8]~input_o\,
	datac => \St:x_ar[1][0]~10_combout\,
	datad => \Mux45~12_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X67_Y67_N30
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\St~66_combout\ & ((\x_ar~285_combout\) # ((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & (((!\St:x_ar[1][0]~6_combout\ & \x_ar~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~285_combout\,
	datab => \St~66_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~299_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X67_Y67_N16
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\Selector13~1_combout\ & ((\x_ar~281_combout\) # ((!\St:x_ar[1][0]~6_combout\)))) # (!\Selector13~1_combout\ & (((\St:x_ar[1][0]~6_combout\ & \x_ar~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~1_combout\,
	datab => \x_ar~281_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~294_combout\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X67_Y67_N10
\Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\St:x_ar[1][0]~9_combout\ & ((\Selector13~0_combout\ & (\Selector13~2_combout\)) # (!\Selector13~0_combout\ & ((\x_ar~309_combout\))))) # (!\St:x_ar[1][0]~9_combout\ & (((\Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~9_combout\,
	datab => \Selector13~2_combout\,
	datac => \x_ar~309_combout\,
	datad => \Selector13~0_combout\,
	combout => \Selector13~3_combout\);

-- Location: LCCOMB_X67_Y67_N24
\St:x_ar[1][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][8]~3_combout\ = \St:x_ar[1][8]~1_combout\ $ (\Selector13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[1][8]~1_combout\,
	datad => \Selector13~3_combout\,
	combout => \St:x_ar[1][8]~3_combout\);

-- Location: LCCOMB_X63_Y66_N16
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\St:x_ar[3][6]~7_combout\ & ((\St:x_ar[3][6]~6_combout\) # ((\Mux45~12_combout\)))) # (!\St:x_ar[3][6]~7_combout\ & (!\St:x_ar[3][6]~6_combout\ & (\x_in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][6]~7_combout\,
	datab => \St:x_ar[3][6]~6_combout\,
	datac => \x_in[8]~input_o\,
	datad => \Mux45~12_combout\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X66_Y67_N28
\Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (\St~66_combout\)) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & (\x_ar~284_combout\)) # (!\St~66_combout\ & ((\x_ar~300_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~284_combout\,
	datad => \x_ar~300_combout\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X66_Y67_N30
\Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector31~1_combout\ & (\x_ar~279_combout\)) # (!\Selector31~1_combout\ & ((\x_ar~296_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (\Selector31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \Selector31~1_combout\,
	datac => \x_ar~279_combout\,
	datad => \x_ar~296_combout\,
	combout => \Selector31~2_combout\);

-- Location: LCCOMB_X63_Y66_N10
\Selector31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~3_combout\ = (\St:x_ar[3][6]~6_combout\ & ((\Selector31~0_combout\ & ((\Selector31~2_combout\))) # (!\Selector31~0_combout\ & (\x_ar~305_combout\)))) # (!\St:x_ar[3][6]~6_combout\ & (((\Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][6]~6_combout\,
	datab => \x_ar~305_combout\,
	datac => \Selector31~2_combout\,
	datad => \Selector31~0_combout\,
	combout => \Selector31~3_combout\);

-- Location: LCCOMB_X63_Y66_N20
\St:x_ar[3][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][8]~3_combout\ = \St:x_ar[3][8]~1_combout\ $ (\Selector31~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[3][8]~1_combout\,
	datad => \Selector31~3_combout\,
	combout => \St:x_ar[3][8]~3_combout\);

-- Location: LCCOMB_X67_Y67_N6
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\St:x_ar[4][6]~8_combout\ & (((\St:x_ar[4][6]~7_combout\) # (\Mux45~12_combout\)))) # (!\St:x_ar[4][6]~8_combout\ & (\x_in[8]~input_o\ & (!\St:x_ar[4][6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[8]~input_o\,
	datab => \St:x_ar[4][6]~8_combout\,
	datac => \St:x_ar[4][6]~7_combout\,
	datad => \Mux45~12_combout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X67_Y67_N4
\Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\St~66_combout\ & ((\x_ar~283_combout\) # ((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & (((!\St:x_ar[1][0]~6_combout\ & \x_ar~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~283_combout\,
	datab => \St~66_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~303_combout\,
	combout => \Selector40~1_combout\);

-- Location: LCCOMB_X67_Y67_N14
\Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector40~1_combout\ & (\x_ar~277_combout\)) # (!\Selector40~1_combout\ & ((\x_ar~292_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~277_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \Selector40~1_combout\,
	datad => \x_ar~292_combout\,
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X67_Y67_N12
\Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (\St:x_ar[4][6]~7_combout\ & ((\Selector40~0_combout\ & (\Selector40~2_combout\)) # (!\Selector40~0_combout\ & ((\x_ar~307_combout\))))) # (!\St:x_ar[4][6]~7_combout\ & (((\Selector40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~2_combout\,
	datab => \St:x_ar[4][6]~7_combout\,
	datac => \x_ar~307_combout\,
	datad => \Selector40~0_combout\,
	combout => \Selector40~3_combout\);

-- Location: LCCOMB_X67_Y67_N0
\St:x_ar[4][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][8]~3_combout\ = \St:x_ar[4][8]~1_combout\ $ (\Selector40~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[4][8]~1_combout\,
	datad => \Selector40~3_combout\,
	combout => \St:x_ar[4][8]~3_combout\);

-- Location: LCCOMB_X67_Y69_N28
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\St:x_ar[6][1]~7_combout\ & (((\St:x_ar[6][1]~6_combout\) # (\Mux45~12_combout\)))) # (!\St:x_ar[6][1]~7_combout\ & (\x_in[8]~input_o\ & (!\St:x_ar[6][1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~7_combout\,
	datab => \x_in[8]~input_o\,
	datac => \St:x_ar[6][1]~6_combout\,
	datad => \Mux45~12_combout\,
	combout => \Selector58~0_combout\);

-- Location: LCCOMB_X68_Y70_N0
\Selector58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\) # ((\x_ar~291_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (!\St~66_combout\ & ((\x_ar~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~291_combout\,
	datad => \x_ar~297_combout\,
	combout => \Selector58~1_combout\);

-- Location: LCCOMB_X68_Y70_N30
\Selector58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~2_combout\ = (\St~66_combout\ & ((\Selector58~1_combout\ & ((\x_ar~276_combout\))) # (!\Selector58~1_combout\ & (\x_ar~289_combout\)))) # (!\St~66_combout\ & (((\Selector58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~289_combout\,
	datab => \x_ar~276_combout\,
	datac => \St~66_combout\,
	datad => \Selector58~1_combout\,
	combout => \Selector58~2_combout\);

-- Location: LCCOMB_X67_Y69_N26
\Selector58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~3_combout\ = (\St:x_ar[6][1]~6_combout\ & ((\Selector58~0_combout\ & (\Selector58~2_combout\)) # (!\Selector58~0_combout\ & ((\x_ar~306_combout\))))) # (!\St:x_ar[6][1]~6_combout\ & (((\Selector58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~6_combout\,
	datab => \Selector58~2_combout\,
	datac => \x_ar~306_combout\,
	datad => \Selector58~0_combout\,
	combout => \Selector58~3_combout\);

-- Location: LCCOMB_X67_Y69_N14
\St:x_ar[6][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][8]~3_combout\ = \Selector58~3_combout\ $ (\St:x_ar[6][8]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector58~3_combout\,
	datad => \St:x_ar[6][8]~1_combout\,
	combout => \St:x_ar[6][8]~3_combout\);

-- Location: FF_X54_Y70_N19
\St:c_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_count~4_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:c_count[3]~q\);

-- Location: LCCOMB_X54_Y70_N0
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = \St:c_count[3]~q\ $ (((\St:L_current[1]~2_combout\) # ((\St:L_current[2]~2_combout\) # (\St:L_current[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:L_current[1]~2_combout\,
	datab => \St:c_count[3]~q\,
	datac => \St:L_current[2]~2_combout\,
	datad => \St:L_current[0]~2_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X54_Y70_N26
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\St:L_current[0]~2_combout\ & (!\St:c_count[0]~q\ & (\St:c_count[1]~q\ $ (!\St:L_current[1]~2_combout\)))) # (!\St:L_current[0]~2_combout\ & (\St:c_count[0]~q\ & (\St:c_count[1]~q\ $ (\St:L_current[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:L_current[0]~2_combout\,
	datab => \St:c_count[1]~q\,
	datac => \St:L_current[1]~2_combout\,
	datad => \St:c_count[0]~q\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X54_Y70_N12
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\Equal7~1_combout\ & (\Equal7~0_combout\ & (\Add1~1_combout\ $ (\St:c_count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \Equal7~0_combout\,
	datac => \Add1~1_combout\,
	datad => \St:c_count[2]~q\,
	combout => \Equal7~2_combout\);

-- Location: FF_X65_Y72_N13
\St:x_count_ini[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_count_ini[3]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_count_ini[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_count_ini[3]~_emulated_q\);

-- Location: LCCOMB_X54_Y70_N18
\c_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~4_combout\ = (!\Equal7~2_combout\ & (\St:c_count[3]~q\ $ (((\Add2~0_combout\ & \St:c_count[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \Add2~0_combout\,
	datac => \St:c_count[3]~q\,
	datad => \St:c_count[2]~q\,
	combout => \c_count~4_combout\);

-- Location: LCCOMB_X65_Y70_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\St:L_current[2]~2_combout\) # ((\St:L_current[1]~2_combout\) # (\St:L_current[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:L_current[2]~2_combout\,
	datac => \St:L_current[1]~2_combout\,
	datad => \St:L_current[0]~2_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X65_Y72_N10
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = \St:x_ar[0][3]~6_combout\ $ ((((\Equal8~0_combout\ & \Add1~2_combout\)) # (!\St:x_count_ini[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][3]~6_combout\,
	datab => \Equal8~0_combout\,
	datac => \St:x_count_ini[3]~2_combout\,
	datad => \Add1~2_combout\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X65_Y72_N12
\St:x_count_ini[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[3]~3_combout\ = \St:x_count_ini[3]~1_combout\ $ (((\St:x_count_ini[2]~5_combout\ & (!\Add3~2_combout\)) # (!\St:x_count_ini[2]~5_combout\ & ((!\Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \St:x_count_ini[3]~1_combout\,
	datac => \St:x_count_ini[2]~5_combout\,
	datad => \Add1~2_combout\,
	combout => \St:x_count_ini[3]~3_combout\);

-- Location: LCCOMB_X67_Y66_N12
\Mux45~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~13_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux45~11_combout\))) # (!\St:x_count_ini[1]~2_combout\ & (\x_ar~308_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~308_combout\,
	datad => \Mux45~11_combout\,
	combout => \Mux45~13_combout\);

-- Location: LCCOMB_X60_Y68_N2
\Mux53~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~15_combout\ = ((\St:x_count_ini[1]~2_combout\) # (\x_ar~30_combout\)) # (!\St:x_count_ini[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datac => \St:x_count_ini[1]~2_combout\,
	datad => \x_ar~30_combout\,
	combout => \Mux53~15_combout\);

-- Location: LCCOMB_X57_Y72_N22
\St:L_current[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\L_in[0]~input_o\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\St:L_current[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L_in[0]~input_o\,
	datac => \St:L_current[0]~1_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:L_current[0]~1_combout\);

-- Location: LCCOMB_X53_Y68_N16
\c_ar[2][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][0]~5_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~3_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[2][0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[2][0]~5_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~3_combout\,
	combout => \c_ar[2][0]~5_combout\);

-- Location: LCCOMB_X53_Y68_N6
\c_ar[0][0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][0]~9_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~4_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[0][0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[0][0]~9_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~4_combout\,
	combout => \c_ar[0][0]~9_combout\);

-- Location: LCCOMB_X55_Y68_N10
\c_ar[6][1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][1]~53_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~15_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[6][1]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[6][1]~53_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~15_combout\,
	combout => \c_ar[6][1]~53_combout\);

-- Location: LCCOMB_X53_Y68_N24
\c_ar[2][2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][2]~61_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~17_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[2][2]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[2][2]~61_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~17_combout\,
	combout => \c_ar[2][2]~61_combout\);

-- Location: LCCOMB_X53_Y68_N10
\c_ar[0][2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][2]~65_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~18_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[0][2]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[0][2]~65_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~18_combout\,
	combout => \c_ar[0][2]~65_combout\);

-- Location: LCCOMB_X56_Y72_N0
\c_ar[3][4]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][4]~125_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~33_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[3][4]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St~33_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[3][4]~125_combout\,
	combout => \c_ar[3][4]~125_combout\);

-- Location: LCCOMB_X55_Y68_N2
\c_ar[6][5]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][5]~165_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~43_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[6][5]~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[6][5]~165_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~43_combout\,
	combout => \c_ar[6][5]~165_combout\);

-- Location: LCCOMB_X54_Y71_N18
\c_ar[4][6]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][6]~189_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~49_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[4][6]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[4][6]~189_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~49_combout\,
	combout => \c_ar[4][6]~189_combout\);

-- Location: LCCOMB_X53_Y71_N0
\c_ar[6][6]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][6]~193_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~50_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[6][6]~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[6][6]~193_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~50_combout\,
	combout => \c_ar[6][6]~193_combout\);

-- Location: LCCOMB_X53_Y71_N2
\c_ar[3][8]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][8]~237_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~61_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[3][8]~237_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[3][8]~237_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~61_combout\,
	combout => \c_ar[3][8]~237_combout\);

-- Location: LCCOMB_X56_Y69_N28
\c_ar[5][8]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][8]~241_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~62_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[5][8]~241_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~62_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[5][8]~241_combout\,
	combout => \c_ar[5][8]~241_combout\);

-- Location: LCCOMB_X59_Y68_N2
\c_ar[6][8]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][8]~249_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~64_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[6][8]~249_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St~64_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[6][8]~249_combout\,
	combout => \c_ar[6][8]~249_combout\);

-- Location: LCCOMB_X56_Y67_N6
\St:x_ar[1][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][3]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~89_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[1][3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][3]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~89_combout\,
	combout => \St:x_ar[1][3]~1_combout\);

-- Location: LCCOMB_X56_Y68_N18
\St:x_ar[5][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][6]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~110_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[5][6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][6]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~110_combout\,
	combout => \St:x_ar[5][6]~1_combout\);

-- Location: LCCOMB_X56_Y66_N10
\St:x_ar[1][7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][7]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~118_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[1][7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][7]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~118_combout\,
	combout => \St:x_ar[1][7]~1_combout\);

-- Location: LCCOMB_X58_Y68_N10
\St:x_ar[4][7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][7]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~122_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[4][7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][7]~1_combout\,
	datab => \St~122_combout\,
	datac => \St~0clkctrl_outclk\,
	combout => \St:x_ar[4][7]~1_combout\);

-- Location: IOOBUF_X69_Y73_N23
\y_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(0),
	devoe => ww_devoe,
	o => \y_out[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\y_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(1),
	devoe => ww_devoe,
	o => \y_out[1]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\y_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(2),
	devoe => ww_devoe,
	o => \y_out[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\y_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(3),
	devoe => ww_devoe,
	o => \y_out[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\y_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(4),
	devoe => ww_devoe,
	o => \y_out[4]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\y_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(5),
	devoe => ww_devoe,
	o => \y_out[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\y_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(6),
	devoe => ww_devoe,
	o => \y_out[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\y_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(7),
	devoe => ww_devoe,
	o => \y_out[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\y_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(8),
	devoe => ww_devoe,
	o => \y_out[8]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\y_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(9),
	devoe => ww_devoe,
	o => \y_out[9]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\y_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(10),
	devoe => ww_devoe,
	o => \y_out[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\y_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(11),
	devoe => ww_devoe,
	o => \y_out[11]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\y_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(12),
	devoe => ww_devoe,
	o => \y_out[12]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\y_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(13),
	devoe => ww_devoe,
	o => \y_out[13]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\y_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(14),
	devoe => ww_devoe,
	o => \y_out[14]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\y_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(15),
	devoe => ww_devoe,
	o => \y_out[15]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\y_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(16),
	devoe => ww_devoe,
	o => \y_out[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\y_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(17),
	devoe => ww_devoe,
	o => \y_out[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\y_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_temp(18),
	devoe => ww_devoe,
	o => \y_out[18]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y72_N4
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Equal16~1_combout\ & !\St:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal16~1_combout\,
	datac => \St:count[0]~q\,
	combout => \count~2_combout\);

-- Location: LCCOMB_X57_Y69_N8
\rst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rst~feeder_combout\);

-- Location: IOIBUF_X52_Y73_N8
\L_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_L_in(2),
	o => \L_in[2]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\L_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_L_in(1),
	o => \L_in[1]~input_o\);

-- Location: LCCOMB_X57_Y72_N0
\St:L_current[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[1]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\L_in[1]~input_o\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\St:L_current[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \St:L_current[1]~1_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:L_current[1]~1_combout\);

-- Location: LCCOMB_X57_Y72_N24
\St:L_current[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[1]~3_combout\ = \L_in[1]~input_o\ $ (\St:L_current[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datad => \St:L_current[1]~1_combout\,
	combout => \St:L_current[1]~3_combout\);

-- Location: FF_X57_Y72_N25
\St:L_current[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:L_current[1]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:L_current[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:L_current[1]~_emulated_q\);

-- Location: LCCOMB_X57_Y72_N10
\St:L_current[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[1]~2_combout\ = (\St~0_combout\ & (\L_in[1]~input_o\)) # (!\St~0_combout\ & ((\St:L_current[1]~1_combout\ $ (\St:L_current[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \St:L_current[1]~1_combout\,
	datac => \St~0_combout\,
	datad => \St:L_current[1]~_emulated_q\,
	combout => \St:L_current[1]~2_combout\);

-- Location: IOIBUF_X52_Y73_N15
\L_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_L_in(0),
	o => \L_in[0]~input_o\);

-- Location: LCCOMB_X57_Y72_N12
\St:L_current[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[0]~3_combout\ = \St:L_current[0]~1_combout\ $ (\L_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:L_current[0]~1_combout\,
	datac => \L_in[0]~input_o\,
	combout => \St:L_current[0]~3_combout\);

-- Location: FF_X57_Y72_N13
\St:L_current[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:L_current[0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:L_current[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:L_current[0]~_emulated_q\);

-- Location: LCCOMB_X57_Y72_N18
\St:L_current[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[0]~2_combout\ = (\St~0_combout\ & (((\L_in[0]~input_o\)))) # (!\St~0_combout\ & (\St:L_current[0]~1_combout\ $ (((\St:L_current[0]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:L_current[0]~1_combout\,
	datab => \St~0_combout\,
	datac => \L_in[0]~input_o\,
	datad => \St:L_current[0]~_emulated_q\,
	combout => \St:L_current[0]~2_combout\);

-- Location: LCCOMB_X65_Y72_N4
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\L_in[0]~input_o\ & (\St:L_current[0]~2_combout\ & (\L_in[1]~input_o\ $ (!\St:L_current[1]~2_combout\)))) # (!\L_in[0]~input_o\ & (!\St:L_current[0]~2_combout\ & (\L_in[1]~input_o\ $ (!\St:L_current[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \St:L_current[1]~2_combout\,
	datad => \St:L_current[0]~2_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X57_Y72_N14
\St:L_current[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[2]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\L_in[2]~input_o\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\St:L_current[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datac => \St:L_current[2]~1_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:L_current[2]~1_combout\);

-- Location: LCCOMB_X57_Y72_N20
\St:L_current[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[2]~3_combout\ = \L_in[2]~input_o\ $ (\St:L_current[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datac => \St:L_current[2]~1_combout\,
	combout => \St:L_current[2]~3_combout\);

-- Location: FF_X57_Y72_N21
\St:L_current[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:L_current[2]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:L_current[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:L_current[2]~_emulated_q\);

-- Location: LCCOMB_X57_Y72_N30
\St:L_current[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[2]~2_combout\ = (\St~0_combout\ & (\L_in[2]~input_o\)) # (!\St~0_combout\ & ((\St:L_current[2]~1_combout\ $ (\St:L_current[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \St:L_current[2]~1_combout\,
	datac => \St~0_combout\,
	datad => \St:L_current[2]~_emulated_q\,
	combout => \St:L_current[2]~2_combout\);

-- Location: LCCOMB_X65_Y72_N18
\St~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~1_combout\ = (!\Load_c~input_o\ & (\Equal9~0_combout\ & (\L_in[2]~input_o\ $ (!\St:L_current[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_c~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \St:L_current[2]~2_combout\,
	combout => \St~1_combout\);

-- Location: LCCOMB_X65_Y72_N14
\St:x_count_ini[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[2]~5_combout\ = (!\state.start~q\ & ((\Load_x~input_o\) # (!\St~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_x~input_o\,
	datab => \state.start~q\,
	datad => \St~1_combout\,
	combout => \St:x_count_ini[2]~5_combout\);

-- Location: LCCOMB_X65_Y72_N30
\St:d[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:d[19]~1_combout\ = (\state.trans~q\ & ((\L_in[2]~input_o\ $ (\St:L_current[2]~2_combout\)) # (!\Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.trans~q\,
	datab => \L_in[2]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \St:L_current[2]~2_combout\,
	combout => \St:d[19]~1_combout\);

-- Location: LCCOMB_X65_Y72_N20
\Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (!\St:x_count_ini[2]~5_combout\ & (!\St:d[19]~1_combout\ & ((\St:x_count_ini[2]~6_combout\) # (\St~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~6_combout\,
	datab => \St~1_combout\,
	datac => \St:x_count_ini[2]~5_combout\,
	datad => \St:d[19]~1_combout\,
	combout => \Selector100~0_combout\);

-- Location: FF_X65_Y72_N21
\state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector100~0_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.start~q\);

-- Location: LCCOMB_X65_Y72_N16
\Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (\Equal9~0_combout\ & (\L_in[2]~input_o\ $ (!\St:L_current[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L_in[2]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \St:L_current[2]~2_combout\,
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X59_Y72_N28
\Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\state.trans~q\ & ((\Equal9~1_combout\) # ((\Equal16~1_combout\ & \state.mac~q\)))) # (!\state.trans~q\ & (\Equal16~1_combout\ & (\state.mac~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.trans~q\,
	datab => \Equal16~1_combout\,
	datac => \state.mac~q\,
	datad => \Equal9~1_combout\,
	combout => \Selector102~0_combout\);

-- Location: FF_X59_Y72_N29
\state.mac\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector102~0_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.mac~q\);

-- Location: IOIBUF_X45_Y73_N1
\Load_x~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load_x,
	o => \Load_x~input_o\);

-- Location: LCCOMB_X59_Y72_N8
\St:x_count_ini[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[2]~4_combout\ = (!\Load_c~input_o\ & (!\Load_x~input_o\ & \Equal9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_c~input_o\,
	datac => \Load_x~input_o\,
	datad => \Equal9~1_combout\,
	combout => \St:x_count_ini[2]~4_combout\);

-- Location: LCCOMB_X59_Y72_N2
\Selector103~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector103~2_combout\ = (\state.mac~q\ & (((\St:x_count_ini[2]~4_combout\)))) # (!\state.mac~q\ & (\Selector101~2_combout\ & (\state.done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector101~2_combout\,
	datab => \state.mac~q\,
	datac => \state.done~q\,
	datad => \St:x_count_ini[2]~4_combout\,
	combout => \Selector103~2_combout\);

-- Location: LCCOMB_X59_Y72_N30
\Selector103~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector103~3_combout\ = (\Selector103~2_combout\ & ((!\state.mac~q\) # (!\Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal16~1_combout\,
	datac => \state.mac~q\,
	datad => \Selector103~2_combout\,
	combout => \Selector103~3_combout\);

-- Location: FF_X59_Y72_N31
\state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector103~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.done~q\);

-- Location: LCCOMB_X59_Y72_N12
\Selector101~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~1_combout\ = (!\state.trans~q\ & (\Equal9~1_combout\ & ((!\state.done~q\) # (!\Load_c~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_c~input_o\,
	datab => \state.trans~q\,
	datac => \state.done~q\,
	datad => \Equal9~1_combout\,
	combout => \Selector101~1_combout\);

-- Location: LCCOMB_X59_Y72_N22
\Selector101~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~2_combout\ = (\Selector101~1_combout\ & ((\Load_x~input_o\ & ((!\state.done~q\))) # (!\Load_x~input_o\ & ((\Load_c~input_o\) # (\state.done~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_c~input_o\,
	datab => \Load_x~input_o\,
	datac => \state.done~q\,
	datad => \Selector101~1_combout\,
	combout => \Selector101~2_combout\);

-- Location: LCCOMB_X65_Y72_N8
\Selector101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\Load_x~input_o\ & (\state.mac~q\ & (!\Equal16~1_combout\ & \St~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_x~input_o\,
	datab => \state.mac~q\,
	datac => \Equal16~1_combout\,
	datad => \St~1_combout\,
	combout => \Selector101~0_combout\);

-- Location: LCCOMB_X59_Y72_N20
\Selector101~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~3_combout\ = (\Selector101~0_combout\) # ((\Selector101~1_combout\ & (!\state.mac~q\ & !\Selector101~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector101~1_combout\,
	datab => \state.mac~q\,
	datac => \Selector101~2_combout\,
	datad => \Selector101~0_combout\,
	combout => \Selector101~3_combout\);

-- Location: FF_X59_Y72_N21
\state.trans\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector101~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.trans~q\);

-- Location: LCCOMB_X65_Y72_N0
\St:L_current[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[2]~6_combout\ = (!\Equal9~1_combout\ & ((\state.trans~q\) # (!\state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.start~q\,
	datac => \state.trans~q\,
	datad => \Equal9~1_combout\,
	combout => \St:L_current[2]~6_combout\);

-- Location: LCCOMB_X66_Y72_N0
\St:L_current[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:L_current[2]~7_combout\ = (\St:d[19]~0_combout\ & ((\St:L_current[2]~6_combout\) # ((\St:L_current[2]~5_combout\ & !\St~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:L_current[2]~5_combout\,
	datab => \St~1_combout\,
	datac => \St:L_current[2]~6_combout\,
	datad => \St:d[19]~0_combout\,
	combout => \St:L_current[2]~7_combout\);

-- Location: FF_X57_Y69_N9
rst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rst~feeder_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:L_current[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst~q\);

-- Location: IOIBUF_X58_Y73_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X57_Y69_N2
\St~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~0_combout\ = (\rst~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~q\,
	datad => \reset~input_o\,
	combout => \St~0_combout\);

-- Location: CLKCTRL_G10
\St~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \St~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \St~0clkctrl_outclk\);

-- Location: FF_X59_Y72_N5
\St:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~2_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \state.mac~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:count[0]~q\);

-- Location: LCCOMB_X59_Y72_N18
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (\St:count[0]~q\ & ((\St:L_current[0]~2_combout\) # (\St:count[1]~q\ $ (!\St:L_current[1]~2_combout\)))) # (!\St:count[0]~q\ & ((\St:count[1]~q\ $ (\St:L_current[1]~2_combout\)) # (!\St:L_current[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:count[0]~q\,
	datac => \St:L_current[1]~2_combout\,
	datad => \St:L_current[0]~2_combout\,
	combout => \Equal16~0_combout\);

-- Location: FF_X59_Y72_N7
\St:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add16~0_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \state.mac~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:count[3]~q\);

-- Location: LCCOMB_X59_Y72_N10
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Equal16~1_combout\ & (\St:count[0]~q\ $ (\St:count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[0]~q\,
	datab => \Equal16~1_combout\,
	datac => \St:count[1]~q\,
	combout => \count~1_combout\);

-- Location: FF_X59_Y72_N11
\St:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \state.mac~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:count[1]~q\);

-- Location: LCCOMB_X59_Y72_N6
\Add16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = \St:count[3]~q\ $ (((\St:count[0]~q\ & (\St:count[2]~q\ & \St:count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[0]~q\,
	datab => \St:count[2]~q\,
	datac => \St:count[3]~q\,
	datad => \St:count[1]~q\,
	combout => \Add16~0_combout\);

-- Location: LCCOMB_X59_Y72_N24
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add16~1_combout\ & (((\Equal16~0_combout\) # (\Add16~0_combout\)) # (!\St:L_current[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:L_current[2]~2_combout\,
	datab => \Add16~1_combout\,
	datac => \Equal16~0_combout\,
	datad => \Add16~0_combout\,
	combout => \count~0_combout\);

-- Location: FF_X59_Y72_N25
\St:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~0_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \state.mac~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:count[2]~q\);

-- Location: LCCOMB_X59_Y72_N0
\Add16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~1_combout\ = \St:count[2]~q\ $ (((\St:count[0]~q\ & \St:count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[0]~q\,
	datab => \St:count[2]~q\,
	datad => \St:count[1]~q\,
	combout => \Add16~1_combout\);

-- Location: LCCOMB_X59_Y72_N14
\Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (\Add16~0_combout\) # ((\Equal16~0_combout\) # (\Add16~1_combout\ $ (\St:L_current[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~0_combout\,
	datab => \Add16~1_combout\,
	datac => \St:L_current[2]~2_combout\,
	datad => \Equal16~0_combout\,
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X66_Y72_N6
\St:d[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:d[19]~0_combout\ = (!\Equal16~1_combout\) # (!\state.mac~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.mac~q\,
	datad => \Equal16~1_combout\,
	combout => \St:d[19]~0_combout\);

-- Location: LCCOMB_X65_Y72_N22
\St:d[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:d[31]~0_combout\ = (!\state.done~q\ & (!\St:d[19]~1_combout\ & (!\St~0_combout\ & \state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.done~q\,
	datab => \St:d[19]~1_combout\,
	datac => \St~0_combout\,
	datad => \state.start~q\,
	combout => \St:d[31]~0_combout\);

-- Location: FF_X70_Y71_N15
\St:d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~0_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[0]~q\);

-- Location: LCCOMB_X70_Y71_N14
\Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = (\Mult0|auto_generated|mac_out2~dataout\ & (\St:d[0]~q\ $ (VCC))) # (!\Mult0|auto_generated|mac_out2~dataout\ & (\St:d[0]~q\ & VCC))
-- \Add15~1\ = CARRY((\Mult0|auto_generated|mac_out2~dataout\ & \St:d[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \St:d[0]~q\,
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: LCCOMB_X69_Y71_N4
\a_temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[0]~feeder_combout\ = \Add15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~0_combout\,
	combout => \a_temp[0]~feeder_combout\);

-- Location: LCCOMB_X66_Y72_N28
\a_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[0]~0_combout\ = (\state.mac~q\ & (!\St~0_combout\ & !\Equal16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.mac~q\,
	datab => \St~0_combout\,
	datad => \Equal16~1_combout\,
	combout => \a_temp[0]~0_combout\);

-- Location: FF_X69_Y71_N5
\a_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[0]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(0));

-- Location: FF_X70_Y71_N17
\St:d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~2_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[1]~q\);

-- Location: LCCOMB_X70_Y71_N16
\Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\St:d[1]~q\ & (\Add15~1\ & VCC)) # (!\St:d[1]~q\ & (!\Add15~1\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\St:d[1]~q\ & (!\Add15~1\)) # (!\St:d[1]~q\ & ((\Add15~1\) # (GND)))))
-- \Add15~3\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\St:d[1]~q\ & !\Add15~1\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & ((!\Add15~1\) # (!\St:d[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \St:d[1]~q\,
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X69_Y71_N2
\a_temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[1]~feeder_combout\ = \Add15~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~2_combout\,
	combout => \a_temp[1]~feeder_combout\);

-- Location: FF_X69_Y71_N3
\a_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[1]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(1));

-- Location: LCCOMB_X55_Y68_N22
\St~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~8_combout\ = (\c_ar[6][0]~26_combout\ & (((!\L_in[0]~input_o\) # (!\L_in[2]~input_o\)) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \c_ar[6][0]~26_combout\,
	combout => \St~8_combout\);

-- Location: LCCOMB_X55_Y68_N28
\c_ar[6][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][0]~25_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~8_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[6][0]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[6][0]~25_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~8_combout\,
	combout => \c_ar[6][0]~25_combout\);

-- Location: LCCOMB_X55_Y68_N12
\c_ar[6][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][0]~27_combout\ = \c_in[0]~input_o\ $ (\c_ar[6][0]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in[0]~input_o\,
	datad => \c_ar[6][0]~25_combout\,
	combout => \c_ar[6][0]~27_combout\);

-- Location: LCCOMB_X54_Y70_N28
\c_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~2_combout\ = (!\Equal7~2_combout\ & !\St:c_count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datac => \St:c_count[0]~q\,
	combout => \c_count~2_combout\);

-- Location: IOIBUF_X40_Y73_N1
\Load_c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load_c,
	o => \Load_c~input_o\);

-- Location: LCCOMB_X54_Y70_N6
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\Load_c~input_o\ & !\state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Load_c~input_o\,
	datad => \state.start~q\,
	combout => \Decoder0~4_combout\);

-- Location: FF_X54_Y70_N29
\St:c_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_count~2_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:c_count[0]~q\);

-- Location: LCCOMB_X54_Y70_N4
\c_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~3_combout\ = (!\Equal7~2_combout\ & (\St:c_count[1]~q\ $ (\St:c_count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datac => \St:c_count[1]~q\,
	datad => \St:c_count[0]~q\,
	combout => \c_count~3_combout\);

-- Location: FF_X54_Y70_N5
\St:c_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_count~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:c_count[1]~q\);

-- Location: LCCOMB_X54_Y70_N10
\c_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_count~5_combout\ = (!\Equal7~2_combout\ & (\St:c_count[2]~q\ $ (((\St:c_count[1]~q\ & \St:c_count[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datab => \St:c_count[1]~q\,
	datac => \St:c_count[2]~q\,
	datad => \St:c_count[0]~q\,
	combout => \c_count~5_combout\);

-- Location: FF_X54_Y70_N11
\St:c_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c_count~5_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:c_count[2]~q\);

-- Location: LCCOMB_X54_Y70_N8
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\Decoder0~4_combout\ & (!\St:c_count[0]~q\ & (\St:c_count[1]~q\ & \St:c_count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \St:c_count[0]~q\,
	datac => \St:c_count[1]~q\,
	datad => \St:c_count[2]~q\,
	combout => \Decoder0~10_combout\);

-- Location: FF_X55_Y68_N1
\c_ar[6][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[6][0]~27_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[6][0]~_emulated_q\);

-- Location: LCCOMB_X55_Y68_N0
\c_ar[6][0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][0]~26_combout\ = (\St~0_combout\ & (\St~8_combout\)) # (!\St~0_combout\ & ((\c_ar[6][0]~_emulated_q\ $ (\c_ar[6][0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~8_combout\,
	datac => \c_ar[6][0]~_emulated_q\,
	datad => \c_ar[6][0]~25_combout\,
	combout => \c_ar[6][0]~26_combout\);

-- Location: LCCOMB_X54_Y69_N6
\St~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~2_combout\ = (!\L_in[2]~input_o\ & (!\L_in[1]~input_o\ & \c_ar[1][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datad => \c_ar[1][0]~2_combout\,
	combout => \St~2_combout\);

-- Location: IOIBUF_X42_Y73_N1
\c_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(0),
	o => \c_in[0]~input_o\);

-- Location: LCCOMB_X54_Y69_N18
\c_ar[1][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~2_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~2_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[1][0]~1_combout\,
	combout => \c_ar[1][0]~1_combout\);

-- Location: LCCOMB_X55_Y69_N30
\c_ar[1][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][0]~3_combout\ = \c_in[0]~input_o\ $ (\c_ar[1][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in[0]~input_o\,
	datad => \c_ar[1][0]~1_combout\,
	combout => \c_ar[1][0]~3_combout\);

-- Location: LCCOMB_X54_Y70_N20
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\Decoder0~4_combout\ & (\St:c_count[0]~q\ & (!\St:c_count[1]~q\ & !\St:c_count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \St:c_count[0]~q\,
	datac => \St:c_count[1]~q\,
	datad => \St:c_count[2]~q\,
	combout => \Decoder0~5_combout\);

-- Location: FF_X54_Y69_N17
\c_ar[1][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[1][0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[1][0]~_emulated_q\);

-- Location: LCCOMB_X54_Y69_N16
\c_ar[1][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][0]~2_combout\ = (\St~0_combout\ & (\St~2_combout\)) # (!\St~0_combout\ & ((\c_ar[1][0]~_emulated_q\ $ (\c_ar[1][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~2_combout\,
	datac => \c_ar[1][0]~_emulated_q\,
	datad => \c_ar[1][0]~1_combout\,
	combout => \c_ar[1][0]~2_combout\);

-- Location: LCCOMB_X53_Y72_N26
\St~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~5_combout\ = (!\L_in[2]~input_o\ & \c_ar[3][0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L_in[2]~input_o\,
	datad => \c_ar[3][0]~14_combout\,
	combout => \St~5_combout\);

-- Location: LCCOMB_X53_Y72_N20
\c_ar[3][0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][0]~13_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~5_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[3][0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[3][0]~13_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~5_combout\,
	combout => \c_ar[3][0]~13_combout\);

-- Location: LCCOMB_X53_Y72_N8
\c_ar[3][0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][0]~15_combout\ = \c_in[0]~input_o\ $ (\c_ar[3][0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in[0]~input_o\,
	datad => \c_ar[3][0]~13_combout\,
	combout => \c_ar[3][0]~15_combout\);

-- Location: LCCOMB_X54_Y70_N30
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\St:c_count[1]~q\ & \St:c_count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:c_count[1]~q\,
	datad => \St:c_count[0]~q\,
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X54_Y70_N2
\Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (!\St:c_count[2]~q\ & (!\state.start~q\ & (\Add2~0_combout\ & \Load_c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:c_count[2]~q\,
	datab => \state.start~q\,
	datac => \Add2~0_combout\,
	datad => \Load_c~input_o\,
	combout => \Decoder0~11_combout\);

-- Location: FF_X53_Y72_N1
\c_ar[3][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[3][0]~15_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[3][0]~_emulated_q\);

-- Location: LCCOMB_X53_Y72_N0
\c_ar[3][0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][0]~14_combout\ = (\St~0_combout\ & (\St~5_combout\)) # (!\St~0_combout\ & ((\c_ar[3][0]~_emulated_q\ $ (\c_ar[3][0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~5_combout\,
	datac => \c_ar[3][0]~_emulated_q\,
	datad => \c_ar[3][0]~13_combout\,
	combout => \c_ar[3][0]~14_combout\);

-- Location: LCCOMB_X54_Y69_N4
\Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~1_combout\ = (\Mux71~0_combout\ & (((\c_ar[3][0]~14_combout\) # (!\St:count[0]~q\)))) # (!\Mux71~0_combout\ & (\c_ar[1][0]~2_combout\ & (\St:count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \c_ar[1][0]~2_combout\,
	datac => \St:count[0]~q\,
	datad => \c_ar[3][0]~14_combout\,
	combout => \Mux71~1_combout\);

-- Location: LCCOMB_X55_Y71_N30
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\St:count[2]~q\ & ((\St:count[1]~q\) # (\St:count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:count[2]~q\,
	datad => \St:count[0]~q\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X55_Y69_N20
\c_ar[4][0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][0]~21_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~7_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[4][0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~7_combout\,
	datab => \c_ar[4][0]~21_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[4][0]~21_combout\);

-- Location: LCCOMB_X55_Y69_N28
\c_ar[4][0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][0]~23_combout\ = \c_in[0]~input_o\ $ (\c_ar[4][0]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in[0]~input_o\,
	datad => \c_ar[4][0]~21_combout\,
	combout => \c_ar[4][0]~23_combout\);

-- Location: LCCOMB_X54_Y70_N14
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\Decoder0~4_combout\ & (!\St:c_count[0]~q\ & (!\St:c_count[1]~q\ & \St:c_count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \St:c_count[0]~q\,
	datac => \St:c_count[1]~q\,
	datad => \St:c_count[2]~q\,
	combout => \Decoder0~9_combout\);

-- Location: FF_X55_Y69_N3
\c_ar[4][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[4][0]~23_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[4][0]~_emulated_q\);

-- Location: LCCOMB_X55_Y69_N2
\c_ar[4][0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][0]~22_combout\ = (\St~0_combout\ & (\St~7_combout\)) # (!\St~0_combout\ & ((\c_ar[4][0]~_emulated_q\ $ (\c_ar[4][0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~7_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[4][0]~_emulated_q\,
	datad => \c_ar[4][0]~21_combout\,
	combout => \c_ar[4][0]~22_combout\);

-- Location: LCCOMB_X55_Y69_N18
\c_ar[5][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][0]~17_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~6_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[5][0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~6_combout\,
	datab => \c_ar[5][0]~17_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[5][0]~17_combout\);

-- Location: LCCOMB_X55_Y69_N24
\c_ar[5][0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][0]~19_combout\ = \c_in[0]~input_o\ $ (\c_ar[5][0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in[0]~input_o\,
	datad => \c_ar[5][0]~17_combout\,
	combout => \c_ar[5][0]~19_combout\);

-- Location: LCCOMB_X54_Y70_N24
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\Decoder0~4_combout\ & (\St:c_count[0]~q\ & (!\St:c_count[1]~q\ & \St:c_count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \St:c_count[0]~q\,
	datac => \St:c_count[1]~q\,
	datad => \St:c_count[2]~q\,
	combout => \Decoder0~8_combout\);

-- Location: FF_X55_Y69_N1
\c_ar[5][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[5][0]~19_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[5][0]~_emulated_q\);

-- Location: LCCOMB_X55_Y69_N0
\c_ar[5][0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][0]~18_combout\ = (\St~0_combout\ & (\St~6_combout\)) # (!\St~0_combout\ & ((\c_ar[5][0]~_emulated_q\ $ (\c_ar[5][0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~6_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[5][0]~_emulated_q\,
	datad => \c_ar[5][0]~17_combout\,
	combout => \c_ar[5][0]~18_combout\);

-- Location: LCCOMB_X55_Y69_N16
\Mux71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~2_combout\ = (\Mux55~0_combout\ & (\Mux55~1_combout\)) # (!\Mux55~0_combout\ & ((\Mux55~1_combout\ & ((\c_ar[5][0]~18_combout\))) # (!\Mux55~1_combout\ & (\c_ar[4][0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux55~1_combout\,
	datac => \c_ar[4][0]~22_combout\,
	datad => \c_ar[5][0]~18_combout\,
	combout => \Mux71~2_combout\);

-- Location: LCCOMB_X55_Y69_N14
\Mux71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~3_combout\ = (\Mux55~0_combout\ & ((\Mux71~2_combout\ & (\c_ar[6][0]~26_combout\)) # (!\Mux71~2_combout\ & ((\Mux71~1_combout\))))) # (!\Mux55~0_combout\ & (((\Mux71~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \c_ar[6][0]~26_combout\,
	datac => \Mux71~1_combout\,
	datad => \Mux71~2_combout\,
	combout => \Mux71~3_combout\);

-- Location: LCCOMB_X56_Y69_N16
\c_ar[5][1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][1]~29_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~9_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[5][1]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~9_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[5][1]~29_combout\,
	combout => \c_ar[5][1]~29_combout\);

-- Location: IOIBUF_X54_Y73_N1
\c_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(1),
	o => \c_in[1]~input_o\);

-- Location: LCCOMB_X56_Y69_N4
\c_ar[5][1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][1]~31_combout\ = \c_ar[5][1]~29_combout\ $ (\c_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[5][1]~29_combout\,
	datad => \c_in[1]~input_o\,
	combout => \c_ar[5][1]~31_combout\);

-- Location: FF_X56_Y69_N25
\c_ar[5][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[5][1]~31_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[5][1]~_emulated_q\);

-- Location: LCCOMB_X56_Y69_N24
\c_ar[5][1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][1]~30_combout\ = (\St~0_combout\ & (\St~9_combout\)) # (!\St~0_combout\ & ((\c_ar[5][1]~_emulated_q\ $ (\c_ar[5][1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~9_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[5][1]~_emulated_q\,
	datad => \c_ar[5][1]~29_combout\,
	combout => \c_ar[5][1]~30_combout\);

-- Location: LCCOMB_X54_Y67_N26
\St~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~10_combout\ = (!\L_in[2]~input_o\ & (\c_ar[2][1]~34_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \c_ar[2][1]~34_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~10_combout\);

-- Location: LCCOMB_X54_Y67_N4
\c_ar[2][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][1]~35_combout\ = \c_ar[2][1]~33_combout\ $ (\c_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[2][1]~33_combout\,
	datac => \c_in[1]~input_o\,
	combout => \c_ar[2][1]~35_combout\);

-- Location: LCCOMB_X54_Y70_N22
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\Decoder0~4_combout\ & (!\St:c_count[0]~q\ & (\St:c_count[1]~q\ & !\St:c_count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \St:c_count[0]~q\,
	datac => \St:c_count[1]~q\,
	datad => \St:c_count[2]~q\,
	combout => \Decoder0~6_combout\);

-- Location: FF_X54_Y67_N1
\c_ar[2][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[2][1]~35_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[2][1]~_emulated_q\);

-- Location: LCCOMB_X54_Y67_N20
\c_ar[2][1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][1]~33_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~10_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[2][1]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[2][1]~33_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~10_combout\,
	combout => \c_ar[2][1]~33_combout\);

-- Location: LCCOMB_X54_Y67_N0
\c_ar[2][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][1]~34_combout\ = (\St~0_combout\ & (\St~10_combout\)) # (!\St~0_combout\ & ((\c_ar[2][1]~_emulated_q\ $ (\c_ar[2][1]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~10_combout\,
	datac => \c_ar[2][1]~_emulated_q\,
	datad => \c_ar[2][1]~33_combout\,
	combout => \c_ar[2][1]~34_combout\);

-- Location: LCCOMB_X56_Y69_N6
\c_ar[1][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][1]~37_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~11_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[1][1]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~11_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[1][1]~37_combout\,
	combout => \c_ar[1][1]~37_combout\);

-- Location: LCCOMB_X56_Y69_N0
\c_ar[1][1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][1]~39_combout\ = \c_ar[1][1]~37_combout\ $ (\c_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[1][1]~37_combout\,
	datad => \c_in[1]~input_o\,
	combout => \c_ar[1][1]~39_combout\);

-- Location: FF_X56_Y69_N31
\c_ar[1][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[1][1]~39_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[1][1]~_emulated_q\);

-- Location: LCCOMB_X56_Y69_N30
\c_ar[1][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][1]~38_combout\ = (\St~0_combout\ & (\St~11_combout\)) # (!\St~0_combout\ & ((\c_ar[1][1]~_emulated_q\ $ (\c_ar[1][1]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~11_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[1][1]~_emulated_q\,
	datad => \c_ar[1][1]~37_combout\,
	combout => \c_ar[1][1]~38_combout\);

-- Location: LCCOMB_X54_Y67_N14
\St~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~12_combout\ = (!\L_in[0]~input_o\ & (!\L_in[2]~input_o\ & (\c_ar[0][1]~42_combout\ & !\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \c_ar[0][1]~42_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~12_combout\);

-- Location: LCCOMB_X54_Y67_N10
\c_ar[0][1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][1]~41_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~12_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[0][1]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[0][1]~41_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~12_combout\,
	combout => \c_ar[0][1]~41_combout\);

-- Location: LCCOMB_X54_Y67_N28
\c_ar[0][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][1]~43_combout\ = \c_in[1]~input_o\ $ (\c_ar[0][1]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in[1]~input_o\,
	datad => \c_ar[0][1]~41_combout\,
	combout => \c_ar[0][1]~43_combout\);

-- Location: LCCOMB_X54_Y70_N16
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\Decoder0~4_combout\ & (!\St:c_count[0]~q\ & (!\St:c_count[1]~q\ & !\St:c_count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => \St:c_count[0]~q\,
	datac => \St:c_count[1]~q\,
	datad => \St:c_count[2]~q\,
	combout => \Decoder0~7_combout\);

-- Location: FF_X54_Y67_N3
\c_ar[0][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[0][1]~43_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[0][1]~_emulated_q\);

-- Location: LCCOMB_X54_Y67_N2
\c_ar[0][1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][1]~42_combout\ = (\St~0_combout\ & (\St~12_combout\)) # (!\St~0_combout\ & ((\c_ar[0][1]~_emulated_q\ $ (\c_ar[0][1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~12_combout\,
	datac => \c_ar[0][1]~_emulated_q\,
	datad => \c_ar[0][1]~41_combout\,
	combout => \c_ar[0][1]~42_combout\);

-- Location: LCCOMB_X54_Y69_N14
\Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (\St:count[1]~q\ & (((\St:count[0]~q\)))) # (!\St:count[1]~q\ & ((\St:count[0]~q\ & (\c_ar[1][1]~38_combout\)) # (!\St:count[0]~q\ & ((\c_ar[0][1]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[1][1]~38_combout\,
	datac => \St:count[0]~q\,
	datad => \c_ar[0][1]~42_combout\,
	combout => \Mux70~0_combout\);

-- Location: LCCOMB_X55_Y67_N8
\St~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~13_combout\ = (!\L_in[2]~input_o\ & \c_ar[3][1]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L_in[2]~input_o\,
	datad => \c_ar[3][1]~46_combout\,
	combout => \St~13_combout\);

-- Location: LCCOMB_X55_Y67_N10
\c_ar[3][1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][1]~45_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~13_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[3][1]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[3][1]~45_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~13_combout\,
	combout => \c_ar[3][1]~45_combout\);

-- Location: LCCOMB_X55_Y67_N22
\c_ar[3][1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][1]~47_combout\ = \c_ar[3][1]~45_combout\ $ (\c_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[3][1]~45_combout\,
	datac => \c_in[1]~input_o\,
	combout => \c_ar[3][1]~47_combout\);

-- Location: FF_X55_Y67_N13
\c_ar[3][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[3][1]~47_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[3][1]~_emulated_q\);

-- Location: LCCOMB_X55_Y67_N12
\c_ar[3][1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][1]~46_combout\ = (\St~0_combout\ & (\St~13_combout\)) # (!\St~0_combout\ & ((\c_ar[3][1]~_emulated_q\ $ (\c_ar[3][1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~13_combout\,
	datac => \c_ar[3][1]~_emulated_q\,
	datad => \c_ar[3][1]~45_combout\,
	combout => \c_ar[3][1]~46_combout\);

-- Location: LCCOMB_X54_Y69_N0
\Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~1_combout\ = (\St:count[1]~q\ & ((\Mux70~0_combout\ & ((\c_ar[3][1]~46_combout\))) # (!\Mux70~0_combout\ & (\c_ar[2][1]~34_combout\)))) # (!\St:count[1]~q\ & (((\Mux70~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[2][1]~34_combout\,
	datac => \Mux70~0_combout\,
	datad => \c_ar[3][1]~46_combout\,
	combout => \Mux70~1_combout\);

-- Location: LCCOMB_X56_Y69_N8
\c_ar[4][1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][1]~51_combout\ = \c_ar[4][1]~49_combout\ $ (\c_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[4][1]~49_combout\,
	datad => \c_in[1]~input_o\,
	combout => \c_ar[4][1]~51_combout\);

-- Location: FF_X55_Y69_N9
\c_ar[4][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[4][1]~51_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[4][1]~_emulated_q\);

-- Location: LCCOMB_X55_Y69_N6
\c_ar[4][1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][1]~49_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~14_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[4][1]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~14_combout\,
	datac => \c_ar[4][1]~49_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[4][1]~49_combout\);

-- Location: LCCOMB_X55_Y69_N8
\c_ar[4][1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][1]~50_combout\ = (\St~0_combout\ & (\St~14_combout\)) # (!\St~0_combout\ & ((\c_ar[4][1]~_emulated_q\ $ (\c_ar[4][1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~14_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[4][1]~_emulated_q\,
	datad => \c_ar[4][1]~49_combout\,
	combout => \c_ar[4][1]~50_combout\);

-- Location: LCCOMB_X55_Y69_N4
\Mux70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~2_combout\ = (\Mux55~0_combout\ & ((\Mux55~1_combout\) # ((\Mux70~1_combout\)))) # (!\Mux55~0_combout\ & (!\Mux55~1_combout\ & ((\c_ar[4][1]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux55~1_combout\,
	datac => \Mux70~1_combout\,
	datad => \c_ar[4][1]~50_combout\,
	combout => \Mux70~2_combout\);

-- Location: LCCOMB_X55_Y69_N22
\Mux70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~3_combout\ = (\Mux70~2_combout\ & ((\c_ar[6][1]~54_combout\) # ((!\Mux55~1_combout\)))) # (!\Mux70~2_combout\ & (((\c_ar[5][1]~30_combout\ & \Mux55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[6][1]~54_combout\,
	datab => \c_ar[5][1]~30_combout\,
	datac => \Mux70~2_combout\,
	datad => \Mux55~1_combout\,
	combout => \Mux70~3_combout\);

-- Location: LCCOMB_X55_Y71_N12
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\St:count[1]~q\) # (!\St:count[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datad => \St:count[2]~q\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X56_Y70_N30
\St~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~20_combout\ = (\c_ar[5][2]~74_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[5][2]~74_combout\,
	datab => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~20_combout\);

-- Location: LCCOMB_X56_Y70_N20
\c_ar[5][2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][2]~73_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~20_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[5][2]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~20_combout\,
	datac => \c_ar[5][2]~73_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[5][2]~73_combout\);

-- Location: IOIBUF_X54_Y73_N8
\c_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(2),
	o => \c_in[2]~input_o\);

-- Location: LCCOMB_X55_Y70_N0
\c_ar[5][2]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][2]~75_combout\ = \c_ar[5][2]~73_combout\ $ (\c_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[5][2]~73_combout\,
	datad => \c_in[2]~input_o\,
	combout => \c_ar[5][2]~75_combout\);

-- Location: FF_X56_Y70_N15
\c_ar[5][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[5][2]~75_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[5][2]~_emulated_q\);

-- Location: LCCOMB_X56_Y70_N14
\c_ar[5][2]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][2]~74_combout\ = (\St~0_combout\ & (\St~20_combout\)) # (!\St~0_combout\ & ((\c_ar[5][2]~_emulated_q\ $ (\c_ar[5][2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~20_combout\,
	datac => \c_ar[5][2]~_emulated_q\,
	datad => \c_ar[5][2]~73_combout\,
	combout => \c_ar[5][2]~74_combout\);

-- Location: LCCOMB_X56_Y70_N6
\St~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~21_combout\ = (\c_ar[4][2]~78_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \c_ar[4][2]~78_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~21_combout\);

-- Location: LCCOMB_X56_Y70_N2
\c_ar[4][2]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][2]~77_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~21_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[4][2]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~21_combout\,
	datac => \c_ar[4][2]~77_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[4][2]~77_combout\);

-- Location: LCCOMB_X56_Y70_N8
\c_ar[4][2]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][2]~79_combout\ = \c_ar[4][2]~77_combout\ $ (\c_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[4][2]~77_combout\,
	datad => \c_in[2]~input_o\,
	combout => \c_ar[4][2]~79_combout\);

-- Location: FF_X56_Y70_N25
\c_ar[4][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[4][2]~79_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[4][2]~_emulated_q\);

-- Location: LCCOMB_X56_Y70_N24
\c_ar[4][2]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][2]~78_combout\ = (\St~0_combout\ & (\St~21_combout\)) # (!\St~0_combout\ & ((\c_ar[4][2]~_emulated_q\ $ (\c_ar[4][2]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~21_combout\,
	datac => \c_ar[4][2]~_emulated_q\,
	datad => \c_ar[4][2]~77_combout\,
	combout => \c_ar[4][2]~78_combout\);

-- Location: LCCOMB_X55_Y70_N16
\Mux69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~2_combout\ = (\Mux55~1_combout\ & ((\Mux55~0_combout\) # ((\c_ar[5][2]~74_combout\)))) # (!\Mux55~1_combout\ & (!\Mux55~0_combout\ & ((\c_ar[4][2]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \Mux55~0_combout\,
	datac => \c_ar[5][2]~74_combout\,
	datad => \c_ar[4][2]~78_combout\,
	combout => \Mux69~2_combout\);

-- Location: LCCOMB_X54_Y69_N26
\St~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~16_combout\ = (!\L_in[1]~input_o\ & (\c_ar[1][2]~58_combout\ & !\L_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L_in[1]~input_o\,
	datac => \c_ar[1][2]~58_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~16_combout\);

-- Location: LCCOMB_X54_Y69_N8
\c_ar[1][2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][2]~59_combout\ = \c_ar[1][2]~57_combout\ $ (\c_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[1][2]~57_combout\,
	datac => \c_in[2]~input_o\,
	combout => \c_ar[1][2]~59_combout\);

-- Location: FF_X54_Y69_N31
\c_ar[1][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[1][2]~59_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[1][2]~_emulated_q\);

-- Location: LCCOMB_X54_Y69_N20
\c_ar[1][2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][2]~57_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~16_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[1][2]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~16_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[1][2]~57_combout\,
	combout => \c_ar[1][2]~57_combout\);

-- Location: LCCOMB_X54_Y69_N30
\c_ar[1][2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][2]~58_combout\ = (\St~0_combout\ & (\St~16_combout\)) # (!\St~0_combout\ & ((\c_ar[1][2]~_emulated_q\ $ (\c_ar[1][2]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~16_combout\,
	datac => \c_ar[1][2]~_emulated_q\,
	datad => \c_ar[1][2]~57_combout\,
	combout => \c_ar[1][2]~58_combout\);

-- Location: LCCOMB_X53_Y71_N4
\St~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~19_combout\ = (!\L_in[2]~input_o\ & \c_ar[3][2]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L_in[2]~input_o\,
	datad => \c_ar[3][2]~70_combout\,
	combout => \St~19_combout\);

-- Location: LCCOMB_X53_Y71_N10
\c_ar[3][2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][2]~69_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~19_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[3][2]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[3][2]~69_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~19_combout\,
	combout => \c_ar[3][2]~69_combout\);

-- Location: LCCOMB_X53_Y71_N22
\c_ar[3][2]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][2]~71_combout\ = \c_ar[3][2]~69_combout\ $ (\c_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[3][2]~69_combout\,
	datac => \c_in[2]~input_o\,
	combout => \c_ar[3][2]~71_combout\);

-- Location: FF_X53_Y71_N21
\c_ar[3][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[3][2]~71_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[3][2]~_emulated_q\);

-- Location: LCCOMB_X53_Y71_N20
\c_ar[3][2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][2]~70_combout\ = (\St~0_combout\ & (\St~19_combout\)) # (!\St~0_combout\ & ((\c_ar[3][2]~_emulated_q\ $ (\c_ar[3][2]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~19_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[3][2]~_emulated_q\,
	datad => \c_ar[3][2]~69_combout\,
	combout => \c_ar[3][2]~70_combout\);

-- Location: LCCOMB_X54_Y69_N10
\Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = (\Mux69~0_combout\ & (((\c_ar[3][2]~70_combout\)) # (!\St:count[0]~q\))) # (!\Mux69~0_combout\ & (\St:count[0]~q\ & (\c_ar[1][2]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~0_combout\,
	datab => \St:count[0]~q\,
	datac => \c_ar[1][2]~58_combout\,
	datad => \c_ar[3][2]~70_combout\,
	combout => \Mux69~1_combout\);

-- Location: LCCOMB_X55_Y68_N4
\St~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~22_combout\ = (\c_ar[6][2]~82_combout\ & (((!\L_in[0]~input_o\) # (!\L_in[2]~input_o\)) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \c_ar[6][2]~82_combout\,
	combout => \St~22_combout\);

-- Location: LCCOMB_X55_Y68_N20
\c_ar[6][2]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][2]~81_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~22_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[6][2]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[6][2]~81_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~22_combout\,
	combout => \c_ar[6][2]~81_combout\);

-- Location: LCCOMB_X54_Y68_N4
\c_ar[6][2]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][2]~83_combout\ = \c_ar[6][2]~81_combout\ $ (\c_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[6][2]~81_combout\,
	datad => \c_in[2]~input_o\,
	combout => \c_ar[6][2]~83_combout\);

-- Location: FF_X55_Y68_N17
\c_ar[6][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[6][2]~83_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[6][2]~_emulated_q\);

-- Location: LCCOMB_X55_Y68_N16
\c_ar[6][2]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][2]~82_combout\ = (\St~0_combout\ & (\St~22_combout\)) # (!\St~0_combout\ & ((\c_ar[6][2]~_emulated_q\ $ (\c_ar[6][2]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~22_combout\,
	datac => \c_ar[6][2]~_emulated_q\,
	datad => \c_ar[6][2]~81_combout\,
	combout => \c_ar[6][2]~82_combout\);

-- Location: LCCOMB_X55_Y70_N22
\Mux69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~3_combout\ = (\Mux55~0_combout\ & ((\Mux69~2_combout\ & ((\c_ar[6][2]~82_combout\))) # (!\Mux69~2_combout\ & (\Mux69~1_combout\)))) # (!\Mux55~0_combout\ & (\Mux69~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux69~2_combout\,
	datac => \Mux69~1_combout\,
	datad => \c_ar[6][2]~82_combout\,
	combout => \Mux69~3_combout\);

-- Location: LCCOMB_X52_Y69_N26
\St~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~29_combout\ = (\c_ar[6][3]~110_combout\ & (((!\L_in[2]~input_o\) # (!\L_in[0]~input_o\)) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[6][3]~110_combout\,
	combout => \St~29_combout\);

-- Location: LCCOMB_X52_Y69_N6
\c_ar[6][3]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][3]~109_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~29_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[6][3]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[6][3]~109_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~29_combout\,
	combout => \c_ar[6][3]~109_combout\);

-- Location: IOIBUF_X49_Y73_N22
\c_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(3),
	o => \c_in[3]~input_o\);

-- Location: LCCOMB_X52_Y69_N4
\c_ar[6][3]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][3]~111_combout\ = \c_ar[6][3]~109_combout\ $ (\c_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[6][3]~109_combout\,
	datac => \c_in[3]~input_o\,
	combout => \c_ar[6][3]~111_combout\);

-- Location: FF_X52_Y69_N11
\c_ar[6][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[6][3]~111_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[6][3]~_emulated_q\);

-- Location: LCCOMB_X52_Y69_N10
\c_ar[6][3]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][3]~110_combout\ = (\St~0_combout\ & (\St~29_combout\)) # (!\St~0_combout\ & ((\c_ar[6][3]~_emulated_q\ $ (\c_ar[6][3]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~29_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[6][3]~_emulated_q\,
	datad => \c_ar[6][3]~109_combout\,
	combout => \c_ar[6][3]~110_combout\);

-- Location: LCCOMB_X56_Y70_N10
\St~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~23_combout\ = (\c_ar[5][3]~86_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \c_ar[5][3]~86_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~23_combout\);

-- Location: LCCOMB_X56_Y70_N28
\c_ar[5][3]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][3]~85_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~23_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[5][3]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~23_combout\,
	datac => \c_ar[5][3]~85_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[5][3]~85_combout\);

-- Location: LCCOMB_X56_Y70_N12
\c_ar[5][3]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][3]~87_combout\ = \c_ar[5][3]~85_combout\ $ (\c_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[5][3]~85_combout\,
	datad => \c_in[3]~input_o\,
	combout => \c_ar[5][3]~87_combout\);

-- Location: FF_X56_Y70_N27
\c_ar[5][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[5][3]~87_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[5][3]~_emulated_q\);

-- Location: LCCOMB_X56_Y70_N26
\c_ar[5][3]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][3]~86_combout\ = (\St~0_combout\ & (\St~23_combout\)) # (!\St~0_combout\ & ((\c_ar[5][3]~_emulated_q\ $ (\c_ar[5][3]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~23_combout\,
	datac => \c_ar[5][3]~_emulated_q\,
	datad => \c_ar[5][3]~85_combout\,
	combout => \c_ar[5][3]~86_combout\);

-- Location: LCCOMB_X53_Y69_N28
\c_ar[3][3]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][3]~103_combout\ = \c_ar[3][3]~101_combout\ $ (\c_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[3][3]~101_combout\,
	datad => \c_in[3]~input_o\,
	combout => \c_ar[3][3]~103_combout\);

-- Location: FF_X53_Y69_N5
\c_ar[3][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[3][3]~103_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[3][3]~_emulated_q\);

-- Location: LCCOMB_X53_Y69_N24
\c_ar[3][3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][3]~101_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~27_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[3][3]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~27_combout\,
	datac => \c_ar[3][3]~101_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[3][3]~101_combout\);

-- Location: LCCOMB_X53_Y69_N4
\c_ar[3][3]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][3]~102_combout\ = (\St~0_combout\ & (\St~27_combout\)) # (!\St~0_combout\ & ((\c_ar[3][3]~_emulated_q\ $ (\c_ar[3][3]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~27_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[3][3]~_emulated_q\,
	datad => \c_ar[3][3]~101_combout\,
	combout => \c_ar[3][3]~102_combout\);

-- Location: LCCOMB_X52_Y69_N28
\c_ar[2][3]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][3]~91_combout\ = \c_ar[2][3]~89_combout\ $ (\c_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[2][3]~89_combout\,
	datac => \c_in[3]~input_o\,
	combout => \c_ar[2][3]~91_combout\);

-- Location: FF_X52_Y69_N25
\c_ar[2][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[2][3]~91_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[2][3]~_emulated_q\);

-- Location: LCCOMB_X52_Y69_N22
\St~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~24_combout\ = (!\L_in[2]~input_o\ & (\c_ar[2][3]~90_combout\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[2][3]~90_combout\,
	combout => \St~24_combout\);

-- Location: LCCOMB_X52_Y69_N20
\c_ar[2][3]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][3]~89_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~24_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[2][3]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[2][3]~89_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~24_combout\,
	combout => \c_ar[2][3]~89_combout\);

-- Location: LCCOMB_X52_Y69_N24
\c_ar[2][3]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][3]~90_combout\ = (\St~0_combout\ & (\St~24_combout\)) # (!\St~0_combout\ & ((\c_ar[2][3]~_emulated_q\ $ (\c_ar[2][3]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~24_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[2][3]~_emulated_q\,
	datad => \c_ar[2][3]~89_combout\,
	combout => \c_ar[2][3]~90_combout\);

-- Location: LCCOMB_X54_Y69_N12
\St~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~25_combout\ = (!\L_in[2]~input_o\ & (!\L_in[1]~input_o\ & \c_ar[1][3]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datad => \c_ar[1][3]~94_combout\,
	combout => \St~25_combout\);

-- Location: LCCOMB_X53_Y69_N14
\c_ar[1][3]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][3]~95_combout\ = \c_ar[1][3]~93_combout\ $ (\c_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[1][3]~93_combout\,
	datad => \c_in[3]~input_o\,
	combout => \c_ar[1][3]~95_combout\);

-- Location: FF_X54_Y69_N25
\c_ar[1][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[1][3]~95_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[1][3]~_emulated_q\);

-- Location: LCCOMB_X54_Y69_N2
\c_ar[1][3]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][3]~93_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~25_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[1][3]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~25_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[1][3]~93_combout\,
	combout => \c_ar[1][3]~93_combout\);

-- Location: LCCOMB_X54_Y69_N24
\c_ar[1][3]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][3]~94_combout\ = (\St~0_combout\ & (\St~25_combout\)) # (!\St~0_combout\ & ((\c_ar[1][3]~_emulated_q\ $ (\c_ar[1][3]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~25_combout\,
	datac => \c_ar[1][3]~_emulated_q\,
	datad => \c_ar[1][3]~93_combout\,
	combout => \c_ar[1][3]~94_combout\);

-- Location: LCCOMB_X53_Y72_N14
\St~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~26_combout\ = (!\L_in[1]~input_o\ & (!\L_in[2]~input_o\ & (!\L_in[0]~input_o\ & \c_ar[0][3]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \c_ar[0][3]~98_combout\,
	combout => \St~26_combout\);

-- Location: LCCOMB_X53_Y72_N24
\c_ar[0][3]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][3]~99_combout\ = \c_ar[0][3]~97_combout\ $ (\c_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[0][3]~97_combout\,
	datad => \c_in[3]~input_o\,
	combout => \c_ar[0][3]~99_combout\);

-- Location: FF_X53_Y72_N19
\c_ar[0][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[0][3]~99_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[0][3]~_emulated_q\);

-- Location: LCCOMB_X53_Y72_N10
\c_ar[0][3]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][3]~97_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~26_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[0][3]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[0][3]~97_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~26_combout\,
	combout => \c_ar[0][3]~97_combout\);

-- Location: LCCOMB_X53_Y72_N18
\c_ar[0][3]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][3]~98_combout\ = (\St~0_combout\ & (\St~26_combout\)) # (!\St~0_combout\ & ((\c_ar[0][3]~_emulated_q\ $ (\c_ar[0][3]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~26_combout\,
	datac => \c_ar[0][3]~_emulated_q\,
	datad => \c_ar[0][3]~97_combout\,
	combout => \c_ar[0][3]~98_combout\);

-- Location: LCCOMB_X54_Y69_N28
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\St:count[1]~q\ & (((\St:count[0]~q\)))) # (!\St:count[1]~q\ & ((\St:count[0]~q\ & (\c_ar[1][3]~94_combout\)) # (!\St:count[0]~q\ & ((\c_ar[0][3]~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[1][3]~94_combout\,
	datac => \St:count[0]~q\,
	datad => \c_ar[0][3]~98_combout\,
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X54_Y69_N22
\Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = (\St:count[1]~q\ & ((\Mux68~0_combout\ & (\c_ar[3][3]~102_combout\)) # (!\Mux68~0_combout\ & ((\c_ar[2][3]~90_combout\))))) # (!\St:count[1]~q\ & (((\Mux68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[3][3]~102_combout\,
	datac => \c_ar[2][3]~90_combout\,
	datad => \Mux68~0_combout\,
	combout => \Mux68~1_combout\);

-- Location: LCCOMB_X56_Y70_N22
\St~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~28_combout\ = (\c_ar[4][3]~106_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \c_ar[4][3]~106_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~28_combout\);

-- Location: LCCOMB_X56_Y70_N18
\c_ar[4][3]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][3]~105_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~28_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[4][3]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~28_combout\,
	datac => \c_ar[4][3]~105_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[4][3]~105_combout\);

-- Location: LCCOMB_X56_Y70_N16
\c_ar[4][3]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][3]~107_combout\ = \c_ar[4][3]~105_combout\ $ (\c_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[4][3]~105_combout\,
	datad => \c_in[3]~input_o\,
	combout => \c_ar[4][3]~107_combout\);

-- Location: FF_X56_Y70_N5
\c_ar[4][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[4][3]~107_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[4][3]~_emulated_q\);

-- Location: LCCOMB_X56_Y70_N4
\c_ar[4][3]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][3]~106_combout\ = (\St~0_combout\ & (\St~28_combout\)) # (!\St~0_combout\ & ((\c_ar[4][3]~_emulated_q\ $ (\c_ar[4][3]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~28_combout\,
	datac => \c_ar[4][3]~_emulated_q\,
	datad => \c_ar[4][3]~105_combout\,
	combout => \c_ar[4][3]~106_combout\);

-- Location: LCCOMB_X55_Y71_N0
\Mux68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~2_combout\ = (\Mux55~1_combout\ & (((\Mux55~0_combout\)))) # (!\Mux55~1_combout\ & ((\Mux55~0_combout\ & (\Mux68~1_combout\)) # (!\Mux55~0_combout\ & ((\c_ar[4][3]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \Mux68~1_combout\,
	datac => \c_ar[4][3]~106_combout\,
	datad => \Mux55~0_combout\,
	combout => \Mux68~2_combout\);

-- Location: LCCOMB_X55_Y71_N22
\Mux68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~3_combout\ = (\Mux55~1_combout\ & ((\Mux68~2_combout\ & (\c_ar[6][3]~110_combout\)) # (!\Mux68~2_combout\ & ((\c_ar[5][3]~86_combout\))))) # (!\Mux55~1_combout\ & (((\Mux68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \c_ar[6][3]~110_combout\,
	datac => \c_ar[5][3]~86_combout\,
	datad => \Mux68~2_combout\,
	combout => \Mux68~3_combout\);

-- Location: IOIBUF_X47_Y73_N1
\c_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(4),
	o => \c_in[4]~input_o\);

-- Location: LCCOMB_X55_Y71_N4
\c_ar[5][4]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][4]~131_combout\ = \c_ar[5][4]~129_combout\ $ (\c_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[5][4]~129_combout\,
	datac => \c_in[4]~input_o\,
	combout => \c_ar[5][4]~131_combout\);

-- Location: FF_X56_Y71_N5
\c_ar[5][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[5][4]~131_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[5][4]~_emulated_q\);

-- Location: LCCOMB_X56_Y71_N2
\c_ar[5][4]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][4]~129_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~34_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[5][4]~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~34_combout\,
	datac => \c_ar[5][4]~129_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[5][4]~129_combout\);

-- Location: LCCOMB_X56_Y71_N4
\c_ar[5][4]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][4]~130_combout\ = (\St~0_combout\ & (\St~34_combout\)) # (!\St~0_combout\ & ((\c_ar[5][4]~_emulated_q\ $ (\c_ar[5][4]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~34_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[5][4]~_emulated_q\,
	datad => \c_ar[5][4]~129_combout\,
	combout => \c_ar[5][4]~130_combout\);

-- Location: LCCOMB_X56_Y68_N4
\c_ar[4][4]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][4]~135_combout\ = \c_ar[4][4]~133_combout\ $ (\c_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[4][4]~133_combout\,
	datac => \c_in[4]~input_o\,
	combout => \c_ar[4][4]~135_combout\);

-- Location: FF_X56_Y68_N15
\c_ar[4][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[4][4]~135_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[4][4]~_emulated_q\);

-- Location: LCCOMB_X56_Y68_N20
\c_ar[4][4]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][4]~133_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~35_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[4][4]~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~35_combout\,
	datac => \c_ar[4][4]~133_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[4][4]~133_combout\);

-- Location: LCCOMB_X56_Y68_N14
\c_ar[4][4]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][4]~134_combout\ = (\St~0_combout\ & (\St~35_combout\)) # (!\St~0_combout\ & ((\c_ar[4][4]~_emulated_q\ $ (\c_ar[4][4]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~35_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[4][4]~_emulated_q\,
	datad => \c_ar[4][4]~133_combout\,
	combout => \c_ar[4][4]~134_combout\);

-- Location: LCCOMB_X56_Y71_N20
\Mux67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~2_combout\ = (\Mux55~0_combout\ & (((\Mux55~1_combout\)))) # (!\Mux55~0_combout\ & ((\Mux55~1_combout\ & (\c_ar[5][4]~130_combout\)) # (!\Mux55~1_combout\ & ((\c_ar[4][4]~134_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \c_ar[5][4]~130_combout\,
	datac => \c_ar[4][4]~134_combout\,
	datad => \Mux55~1_combout\,
	combout => \Mux67~2_combout\);

-- Location: LCCOMB_X59_Y68_N8
\St~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~36_combout\ = (\c_ar[6][4]~138_combout\ & (((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[6][4]~138_combout\,
	combout => \St~36_combout\);

-- Location: LCCOMB_X59_Y68_N18
\c_ar[6][4]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][4]~137_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~36_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[6][4]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St~36_combout\,
	datac => \c_ar[6][4]~137_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[6][4]~137_combout\);

-- Location: LCCOMB_X59_Y68_N30
\c_ar[6][4]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][4]~139_combout\ = \c_ar[6][4]~137_combout\ $ (\c_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[6][4]~137_combout\,
	datad => \c_in[4]~input_o\,
	combout => \c_ar[6][4]~139_combout\);

-- Location: FF_X59_Y68_N21
\c_ar[6][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[6][4]~139_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[6][4]~_emulated_q\);

-- Location: LCCOMB_X59_Y68_N20
\c_ar[6][4]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][4]~138_combout\ = (\St~0_combout\ & (\St~36_combout\)) # (!\St~0_combout\ & ((\c_ar[6][4]~_emulated_q\ $ (\c_ar[6][4]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~36_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[6][4]~_emulated_q\,
	datad => \c_ar[6][4]~137_combout\,
	combout => \c_ar[6][4]~138_combout\);

-- Location: LCCOMB_X55_Y72_N30
\St~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~32_combout\ = (!\L_in[0]~input_o\ & (!\L_in[1]~input_o\ & (!\L_in[2]~input_o\ & \c_ar[0][4]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[0][4]~122_combout\,
	combout => \St~32_combout\);

-- Location: LCCOMB_X55_Y72_N6
\c_ar[0][4]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][4]~121_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~32_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[0][4]~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[0][4]~121_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~32_combout\,
	combout => \c_ar[0][4]~121_combout\);

-- Location: LCCOMB_X56_Y72_N8
\c_ar[0][4]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][4]~123_combout\ = \c_ar[0][4]~121_combout\ $ (\c_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[0][4]~121_combout\,
	datac => \c_in[4]~input_o\,
	combout => \c_ar[0][4]~123_combout\);

-- Location: FF_X55_Y72_N19
\c_ar[0][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[0][4]~123_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[0][4]~_emulated_q\);

-- Location: LCCOMB_X55_Y72_N18
\c_ar[0][4]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][4]~122_combout\ = (\St~0_combout\ & (\St~32_combout\)) # (!\St~0_combout\ & ((\c_ar[0][4]~_emulated_q\ $ (\c_ar[0][4]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~32_combout\,
	datac => \c_ar[0][4]~_emulated_q\,
	datad => \c_ar[0][4]~121_combout\,
	combout => \c_ar[0][4]~122_combout\);

-- Location: LCCOMB_X55_Y72_N4
\St~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~31_combout\ = (!\L_in[2]~input_o\ & (\c_ar[2][4]~118_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[2][4]~118_combout\,
	combout => \St~31_combout\);

-- Location: LCCOMB_X55_Y72_N12
\c_ar[2][4]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][4]~117_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~31_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[2][4]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[2][4]~117_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~31_combout\,
	combout => \c_ar[2][4]~117_combout\);

-- Location: LCCOMB_X56_Y72_N30
\c_ar[2][4]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][4]~119_combout\ = \c_in[4]~input_o\ $ (\c_ar[2][4]~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in[4]~input_o\,
	datad => \c_ar[2][4]~117_combout\,
	combout => \c_ar[2][4]~119_combout\);

-- Location: FF_X55_Y72_N1
\c_ar[2][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[2][4]~119_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[2][4]~_emulated_q\);

-- Location: LCCOMB_X55_Y72_N0
\c_ar[2][4]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][4]~118_combout\ = (\St~0_combout\ & (\St~31_combout\)) # (!\St~0_combout\ & ((\c_ar[2][4]~_emulated_q\ $ (\c_ar[2][4]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~31_combout\,
	datac => \c_ar[2][4]~_emulated_q\,
	datad => \c_ar[2][4]~117_combout\,
	combout => \c_ar[2][4]~118_combout\);

-- Location: LCCOMB_X55_Y72_N16
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (\St:count[1]~q\ & (((\St:count[0]~q\) # (\c_ar[2][4]~118_combout\)))) # (!\St:count[1]~q\ & (\c_ar[0][4]~122_combout\ & (!\St:count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[0][4]~122_combout\,
	datac => \St:count[0]~q\,
	datad => \c_ar[2][4]~118_combout\,
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X56_Y72_N20
\St~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~30_combout\ = (!\L_in[1]~input_o\ & (\c_ar[1][4]~114_combout\ & !\L_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \c_ar[1][4]~114_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~30_combout\);

-- Location: LCCOMB_X56_Y72_N10
\c_ar[1][4]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][4]~113_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~30_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[1][4]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[1][4]~113_combout\,
	datab => \St~30_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[1][4]~113_combout\);

-- Location: LCCOMB_X56_Y72_N22
\c_ar[1][4]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][4]~115_combout\ = \c_in[4]~input_o\ $ (\c_ar[1][4]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in[4]~input_o\,
	datad => \c_ar[1][4]~113_combout\,
	combout => \c_ar[1][4]~115_combout\);

-- Location: FF_X56_Y72_N17
\c_ar[1][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[1][4]~115_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[1][4]~_emulated_q\);

-- Location: LCCOMB_X56_Y72_N16
\c_ar[1][4]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][4]~114_combout\ = (\St~0_combout\ & (\St~30_combout\)) # (!\St~0_combout\ & ((\c_ar[1][4]~_emulated_q\ $ (\c_ar[1][4]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~30_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[1][4]~_emulated_q\,
	datad => \c_ar[1][4]~113_combout\,
	combout => \c_ar[1][4]~114_combout\);

-- Location: LCCOMB_X56_Y72_N24
\Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = (\St:count[0]~q\ & ((\Mux67~0_combout\ & (\c_ar[3][4]~126_combout\)) # (!\Mux67~0_combout\ & ((\c_ar[1][4]~114_combout\))))) # (!\St:count[0]~q\ & (((\Mux67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[3][4]~126_combout\,
	datab => \St:count[0]~q\,
	datac => \Mux67~0_combout\,
	datad => \c_ar[1][4]~114_combout\,
	combout => \Mux67~1_combout\);

-- Location: LCCOMB_X56_Y71_N22
\Mux67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~3_combout\ = (\Mux55~0_combout\ & ((\Mux67~2_combout\ & (\c_ar[6][4]~138_combout\)) # (!\Mux67~2_combout\ & ((\Mux67~1_combout\))))) # (!\Mux55~0_combout\ & (\Mux67~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux67~2_combout\,
	datac => \c_ar[6][4]~138_combout\,
	datad => \Mux67~1_combout\,
	combout => \Mux67~3_combout\);

-- Location: LCCOMB_X56_Y71_N8
\St~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~37_combout\ = (\c_ar[5][5]~142_combout\ & ((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \c_ar[5][5]~142_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~37_combout\);

-- Location: LCCOMB_X56_Y71_N24
\c_ar[5][5]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][5]~141_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~37_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[5][5]~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St~37_combout\,
	datac => \c_ar[5][5]~141_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[5][5]~141_combout\);

-- Location: LCCOMB_X55_Y71_N26
\c_ar[5][5]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][5]~143_combout\ = \c_in[5]~input_o\ $ (\c_ar[5][5]~141_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in[5]~input_o\,
	datad => \c_ar[5][5]~141_combout\,
	combout => \c_ar[5][5]~143_combout\);

-- Location: FF_X56_Y71_N11
\c_ar[5][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[5][5]~143_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[5][5]~_emulated_q\);

-- Location: LCCOMB_X56_Y71_N10
\c_ar[5][5]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][5]~142_combout\ = (\St~0_combout\ & (\St~37_combout\)) # (!\St~0_combout\ & ((\c_ar[5][5]~_emulated_q\ $ (\c_ar[5][5]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~37_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[5][5]~_emulated_q\,
	datad => \c_ar[5][5]~141_combout\,
	combout => \c_ar[5][5]~142_combout\);

-- Location: LCCOMB_X55_Y67_N28
\St~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~41_combout\ = (!\L_in[2]~input_o\ & \c_ar[3][5]~158_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L_in[2]~input_o\,
	datad => \c_ar[3][5]~158_combout\,
	combout => \St~41_combout\);

-- Location: IOIBUF_X45_Y73_N8
\c_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(5),
	o => \c_in[5]~input_o\);

-- Location: LCCOMB_X55_Y67_N30
\c_ar[3][5]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][5]~159_combout\ = \c_ar[3][5]~157_combout\ $ (\c_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[3][5]~157_combout\,
	datac => \c_in[5]~input_o\,
	combout => \c_ar[3][5]~159_combout\);

-- Location: FF_X55_Y67_N21
\c_ar[3][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[3][5]~159_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[3][5]~_emulated_q\);

-- Location: LCCOMB_X55_Y67_N18
\c_ar[3][5]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][5]~157_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~41_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[3][5]~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[3][5]~157_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~41_combout\,
	combout => \c_ar[3][5]~157_combout\);

-- Location: LCCOMB_X55_Y67_N20
\c_ar[3][5]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][5]~158_combout\ = (\St~0_combout\ & (\St~41_combout\)) # (!\St~0_combout\ & ((\c_ar[3][5]~_emulated_q\ $ (\c_ar[3][5]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~41_combout\,
	datac => \c_ar[3][5]~_emulated_q\,
	datad => \c_ar[3][5]~157_combout\,
	combout => \c_ar[3][5]~158_combout\);

-- Location: LCCOMB_X54_Y67_N22
\St~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~38_combout\ = (\c_ar[2][5]~146_combout\ & (!\L_in[2]~input_o\ & ((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \c_ar[2][5]~146_combout\,
	datac => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~38_combout\);

-- Location: LCCOMB_X54_Y67_N12
\c_ar[2][5]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][5]~145_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~38_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[2][5]~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[2][5]~145_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~38_combout\,
	combout => \c_ar[2][5]~145_combout\);

-- Location: LCCOMB_X54_Y67_N24
\c_ar[2][5]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][5]~147_combout\ = \c_in[5]~input_o\ $ (\c_ar[2][5]~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in[5]~input_o\,
	datad => \c_ar[2][5]~145_combout\,
	combout => \c_ar[2][5]~147_combout\);

-- Location: FF_X54_Y67_N17
\c_ar[2][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[2][5]~147_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[2][5]~_emulated_q\);

-- Location: LCCOMB_X54_Y67_N16
\c_ar[2][5]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][5]~146_combout\ = (\St~0_combout\ & (\St~38_combout\)) # (!\St~0_combout\ & ((\c_ar[2][5]~_emulated_q\ $ (\c_ar[2][5]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~38_combout\,
	datac => \c_ar[2][5]~_emulated_q\,
	datad => \c_ar[2][5]~145_combout\,
	combout => \c_ar[2][5]~146_combout\);

-- Location: LCCOMB_X54_Y67_N30
\St~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~40_combout\ = (!\L_in[0]~input_o\ & (\c_ar[0][5]~154_combout\ & (!\L_in[2]~input_o\ & !\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \c_ar[0][5]~154_combout\,
	datac => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~40_combout\);

-- Location: LCCOMB_X54_Y67_N18
\c_ar[0][5]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][5]~153_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~40_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[0][5]~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[0][5]~153_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~40_combout\,
	combout => \c_ar[0][5]~153_combout\);

-- Location: LCCOMB_X54_Y67_N8
\c_ar[0][5]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][5]~155_combout\ = \c_in[5]~input_o\ $ (\c_ar[0][5]~153_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in[5]~input_o\,
	datac => \c_ar[0][5]~153_combout\,
	combout => \c_ar[0][5]~155_combout\);

-- Location: FF_X54_Y67_N7
\c_ar[0][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[0][5]~155_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[0][5]~_emulated_q\);

-- Location: LCCOMB_X54_Y67_N6
\c_ar[0][5]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][5]~154_combout\ = (\St~0_combout\ & (\St~40_combout\)) # (!\St~0_combout\ & ((\c_ar[0][5]~_emulated_q\ $ (\c_ar[0][5]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~40_combout\,
	datac => \c_ar[0][5]~_emulated_q\,
	datad => \c_ar[0][5]~153_combout\,
	combout => \c_ar[0][5]~154_combout\);

-- Location: LCCOMB_X55_Y67_N4
\St~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~39_combout\ = (!\L_in[1]~input_o\ & (!\L_in[2]~input_o\ & \c_ar[1][5]~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[1][5]~150_combout\,
	combout => \St~39_combout\);

-- Location: LCCOMB_X55_Y67_N16
\c_ar[1][5]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][5]~149_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~39_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[1][5]~149_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[1][5]~149_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~39_combout\,
	combout => \c_ar[1][5]~149_combout\);

-- Location: LCCOMB_X55_Y67_N14
\c_ar[1][5]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][5]~151_combout\ = \c_in[5]~input_o\ $ (\c_ar[1][5]~149_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in[5]~input_o\,
	datad => \c_ar[1][5]~149_combout\,
	combout => \c_ar[1][5]~151_combout\);

-- Location: FF_X55_Y67_N7
\c_ar[1][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[1][5]~151_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[1][5]~_emulated_q\);

-- Location: LCCOMB_X55_Y67_N6
\c_ar[1][5]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][5]~150_combout\ = (\St~0_combout\ & (\St~39_combout\)) # (!\St~0_combout\ & ((\c_ar[1][5]~_emulated_q\ $ (\c_ar[1][5]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~39_combout\,
	datac => \c_ar[1][5]~_emulated_q\,
	datad => \c_ar[1][5]~149_combout\,
	combout => \c_ar[1][5]~150_combout\);

-- Location: LCCOMB_X55_Y67_N24
\Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\St:count[1]~q\ & (\St:count[0]~q\)) # (!\St:count[1]~q\ & ((\St:count[0]~q\ & ((\c_ar[1][5]~150_combout\))) # (!\St:count[0]~q\ & (\c_ar[0][5]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:count[0]~q\,
	datac => \c_ar[0][5]~154_combout\,
	datad => \c_ar[1][5]~150_combout\,
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X55_Y67_N26
\Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~1_combout\ = (\St:count[1]~q\ & ((\Mux66~0_combout\ & (\c_ar[3][5]~158_combout\)) # (!\Mux66~0_combout\ & ((\c_ar[2][5]~146_combout\))))) # (!\St:count[1]~q\ & (((\Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[3][5]~158_combout\,
	datac => \c_ar[2][5]~146_combout\,
	datad => \Mux66~0_combout\,
	combout => \Mux66~1_combout\);

-- Location: LCCOMB_X56_Y68_N0
\St~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~42_combout\ = (\c_ar[4][5]~162_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[4][5]~162_combout\,
	combout => \St~42_combout\);

-- Location: LCCOMB_X56_Y68_N6
\c_ar[4][5]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][5]~161_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~42_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[4][5]~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St~42_combout\,
	datac => \c_ar[4][5]~161_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[4][5]~161_combout\);

-- Location: LCCOMB_X55_Y68_N6
\c_ar[4][5]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][5]~163_combout\ = \c_ar[4][5]~161_combout\ $ (\c_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[4][5]~161_combout\,
	datad => \c_in[5]~input_o\,
	combout => \c_ar[4][5]~163_combout\);

-- Location: FF_X56_Y68_N25
\c_ar[4][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[4][5]~163_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[4][5]~_emulated_q\);

-- Location: LCCOMB_X56_Y68_N24
\c_ar[4][5]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][5]~162_combout\ = (\St~0_combout\ & (\St~42_combout\)) # (!\St~0_combout\ & ((\c_ar[4][5]~_emulated_q\ $ (\c_ar[4][5]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~42_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[4][5]~_emulated_q\,
	datad => \c_ar[4][5]~161_combout\,
	combout => \c_ar[4][5]~162_combout\);

-- Location: LCCOMB_X56_Y71_N16
\Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~2_combout\ = (\Mux55~0_combout\ & ((\Mux55~1_combout\) # ((\Mux66~1_combout\)))) # (!\Mux55~0_combout\ & (!\Mux55~1_combout\ & ((\c_ar[4][5]~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux55~1_combout\,
	datac => \Mux66~1_combout\,
	datad => \c_ar[4][5]~162_combout\,
	combout => \Mux66~2_combout\);

-- Location: LCCOMB_X56_Y71_N14
\Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~3_combout\ = (\Mux55~1_combout\ & ((\Mux66~2_combout\ & (\c_ar[6][5]~166_combout\)) # (!\Mux66~2_combout\ & ((\c_ar[5][5]~142_combout\))))) # (!\Mux55~1_combout\ & (((\Mux66~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[6][5]~166_combout\,
	datab => \Mux55~1_combout\,
	datac => \c_ar[5][5]~142_combout\,
	datad => \Mux66~2_combout\,
	combout => \Mux66~3_combout\);

-- Location: LCCOMB_X53_Y72_N22
\St~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~46_combout\ = (!\L_in[1]~input_o\ & (\c_ar[0][6]~178_combout\ & (!\L_in[0]~input_o\ & !\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \c_ar[0][6]~178_combout\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~46_combout\);

-- Location: LCCOMB_X53_Y72_N28
\c_ar[0][6]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][6]~177_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~46_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[0][6]~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[0][6]~177_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~46_combout\,
	combout => \c_ar[0][6]~177_combout\);

-- Location: LCCOMB_X53_Y72_N4
\c_ar[0][6]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][6]~179_combout\ = \c_in[6]~input_o\ $ (\c_ar[0][6]~177_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_in[6]~input_o\,
	datad => \c_ar[0][6]~177_combout\,
	combout => \c_ar[0][6]~179_combout\);

-- Location: FF_X53_Y72_N17
\c_ar[0][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[0][6]~179_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[0][6]~_emulated_q\);

-- Location: LCCOMB_X53_Y72_N16
\c_ar[0][6]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][6]~178_combout\ = (\St~0_combout\ & (\St~46_combout\)) # (!\St~0_combout\ & ((\c_ar[0][6]~_emulated_q\ $ (\c_ar[0][6]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~46_combout\,
	datac => \c_ar[0][6]~_emulated_q\,
	datad => \c_ar[0][6]~177_combout\,
	combout => \c_ar[0][6]~178_combout\);

-- Location: LCCOMB_X54_Y72_N28
\St~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~45_combout\ = (!\L_in[2]~input_o\ & (\c_ar[2][6]~174_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[2][6]~174_combout\,
	combout => \St~45_combout\);

-- Location: LCCOMB_X54_Y72_N0
\c_ar[2][6]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][6]~173_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~45_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[2][6]~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[2][6]~173_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~45_combout\,
	combout => \c_ar[2][6]~173_combout\);

-- Location: IOIBUF_X47_Y73_N15
\c_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(6),
	o => \c_in[6]~input_o\);

-- Location: LCCOMB_X54_Y72_N26
\c_ar[2][6]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][6]~175_combout\ = \c_ar[2][6]~173_combout\ $ (\c_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[2][6]~173_combout\,
	datad => \c_in[6]~input_o\,
	combout => \c_ar[2][6]~175_combout\);

-- Location: FF_X54_Y72_N3
\c_ar[2][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[2][6]~175_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[2][6]~_emulated_q\);

-- Location: LCCOMB_X54_Y72_N2
\c_ar[2][6]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][6]~174_combout\ = (\St~0_combout\ & (\St~45_combout\)) # (!\St~0_combout\ & ((\c_ar[2][6]~_emulated_q\ $ (\c_ar[2][6]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~45_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[2][6]~_emulated_q\,
	datad => \c_ar[2][6]~173_combout\,
	combout => \c_ar[2][6]~174_combout\);

-- Location: LCCOMB_X54_Y72_N20
\Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\St:count[0]~q\ & (((\St:count[1]~q\)))) # (!\St:count[0]~q\ & ((\St:count[1]~q\ & ((\c_ar[2][6]~174_combout\))) # (!\St:count[1]~q\ & (\c_ar[0][6]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[0]~q\,
	datab => \c_ar[0][6]~178_combout\,
	datac => \St:count[1]~q\,
	datad => \c_ar[2][6]~174_combout\,
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X53_Y72_N30
\St~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~47_combout\ = (!\L_in[2]~input_o\ & \c_ar[3][6]~182_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L_in[2]~input_o\,
	datad => \c_ar[3][6]~182_combout\,
	combout => \St~47_combout\);

-- Location: LCCOMB_X53_Y72_N2
\c_ar[3][6]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][6]~181_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~47_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[3][6]~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[3][6]~181_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~47_combout\,
	combout => \c_ar[3][6]~181_combout\);

-- Location: LCCOMB_X53_Y72_N12
\c_ar[3][6]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][6]~183_combout\ = \c_ar[3][6]~181_combout\ $ (\c_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[3][6]~181_combout\,
	datad => \c_in[6]~input_o\,
	combout => \c_ar[3][6]~183_combout\);

-- Location: FF_X53_Y72_N7
\c_ar[3][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[3][6]~183_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[3][6]~_emulated_q\);

-- Location: LCCOMB_X53_Y72_N6
\c_ar[3][6]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][6]~182_combout\ = (\St~0_combout\ & (\St~47_combout\)) # (!\St~0_combout\ & ((\c_ar[3][6]~_emulated_q\ $ (\c_ar[3][6]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~47_combout\,
	datac => \c_ar[3][6]~_emulated_q\,
	datad => \c_ar[3][6]~181_combout\,
	combout => \c_ar[3][6]~182_combout\);

-- Location: LCCOMB_X54_Y72_N8
\St~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~44_combout\ = (!\L_in[1]~input_o\ & (!\L_in[2]~input_o\ & \c_ar[1][6]~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[1][6]~170_combout\,
	combout => \St~44_combout\);

-- Location: LCCOMB_X54_Y72_N18
\c_ar[1][6]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][6]~169_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~44_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[1][6]~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[1][6]~169_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~44_combout\,
	combout => \c_ar[1][6]~169_combout\);

-- Location: LCCOMB_X54_Y72_N22
\c_ar[1][6]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][6]~171_combout\ = \c_ar[1][6]~169_combout\ $ (\c_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[1][6]~169_combout\,
	datad => \c_in[6]~input_o\,
	combout => \c_ar[1][6]~171_combout\);

-- Location: FF_X54_Y72_N25
\c_ar[1][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[1][6]~171_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[1][6]~_emulated_q\);

-- Location: LCCOMB_X54_Y72_N24
\c_ar[1][6]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][6]~170_combout\ = (\St~0_combout\ & (\St~44_combout\)) # (!\St~0_combout\ & ((\c_ar[1][6]~_emulated_q\ $ (\c_ar[1][6]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~44_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[1][6]~_emulated_q\,
	datad => \c_ar[1][6]~169_combout\,
	combout => \c_ar[1][6]~170_combout\);

-- Location: LCCOMB_X54_Y72_N30
\Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~1_combout\ = (\St:count[0]~q\ & ((\Mux65~0_combout\ & (\c_ar[3][6]~182_combout\)) # (!\Mux65~0_combout\ & ((\c_ar[1][6]~170_combout\))))) # (!\St:count[0]~q\ & (\Mux65~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[0]~q\,
	datab => \Mux65~0_combout\,
	datac => \c_ar[3][6]~182_combout\,
	datad => \c_ar[1][6]~170_combout\,
	combout => \Mux65~1_combout\);

-- Location: LCCOMB_X54_Y71_N8
\c_ar[5][6]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][6]~187_combout\ = \c_ar[5][6]~185_combout\ $ (\c_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[5][6]~185_combout\,
	datad => \c_in[6]~input_o\,
	combout => \c_ar[5][6]~187_combout\);

-- Location: FF_X54_Y71_N29
\c_ar[5][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[5][6]~187_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[5][6]~_emulated_q\);

-- Location: LCCOMB_X54_Y71_N22
\St~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~48_combout\ = (\c_ar[5][6]~186_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[5][6]~186_combout\,
	combout => \St~48_combout\);

-- Location: LCCOMB_X54_Y71_N16
\c_ar[5][6]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][6]~185_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~48_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[5][6]~185_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[5][6]~185_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~48_combout\,
	combout => \c_ar[5][6]~185_combout\);

-- Location: LCCOMB_X54_Y71_N28
\c_ar[5][6]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][6]~186_combout\ = (\St~0_combout\ & (\St~48_combout\)) # (!\St~0_combout\ & ((\c_ar[5][6]~_emulated_q\ $ (\c_ar[5][6]~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~48_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[5][6]~_emulated_q\,
	datad => \c_ar[5][6]~185_combout\,
	combout => \c_ar[5][6]~186_combout\);

-- Location: LCCOMB_X54_Y71_N12
\Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~2_combout\ = (\Mux55~0_combout\ & (((\Mux55~1_combout\)))) # (!\Mux55~0_combout\ & ((\Mux55~1_combout\ & ((\c_ar[5][6]~186_combout\))) # (!\Mux55~1_combout\ & (\c_ar[4][6]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[4][6]~190_combout\,
	datab => \Mux55~0_combout\,
	datac => \Mux55~1_combout\,
	datad => \c_ar[5][6]~186_combout\,
	combout => \Mux65~2_combout\);

-- Location: LCCOMB_X54_Y71_N14
\Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~3_combout\ = (\Mux55~0_combout\ & ((\Mux65~2_combout\ & (\c_ar[6][6]~194_combout\)) # (!\Mux65~2_combout\ & ((\Mux65~1_combout\))))) # (!\Mux55~0_combout\ & (((\Mux65~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[6][6]~194_combout\,
	datab => \Mux55~0_combout\,
	datac => \Mux65~1_combout\,
	datad => \Mux65~2_combout\,
	combout => \Mux65~3_combout\);

-- Location: IOIBUF_X49_Y73_N15
\c_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(7),
	o => \c_in[7]~input_o\);

-- Location: LCCOMB_X56_Y71_N26
\c_ar[5][7]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][7]~199_combout\ = \c_ar[5][7]~197_combout\ $ (\c_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[5][7]~197_combout\,
	datad => \c_in[7]~input_o\,
	combout => \c_ar[5][7]~199_combout\);

-- Location: FF_X56_Y71_N1
\c_ar[5][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[5][7]~199_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[5][7]~_emulated_q\);

-- Location: LCCOMB_X56_Y71_N6
\c_ar[5][7]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][7]~197_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~51_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[5][7]~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~51_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[5][7]~197_combout\,
	combout => \c_ar[5][7]~197_combout\);

-- Location: LCCOMB_X56_Y71_N0
\c_ar[5][7]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[5][7]~198_combout\ = (\St~0_combout\ & (\St~51_combout\)) # (!\St~0_combout\ & ((\c_ar[5][7]~_emulated_q\ $ (\c_ar[5][7]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~51_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[5][7]~_emulated_q\,
	datad => \c_ar[5][7]~197_combout\,
	combout => \c_ar[5][7]~198_combout\);

-- Location: LCCOMB_X52_Y69_N30
\St~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~57_combout\ = (\c_ar[6][7]~222_combout\ & (((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)) # (!\L_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[6][7]~222_combout\,
	datab => \L_in[0]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~57_combout\);

-- Location: LCCOMB_X52_Y69_N2
\c_ar[6][7]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][7]~221_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~57_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[6][7]~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[6][7]~221_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~57_combout\,
	combout => \c_ar[6][7]~221_combout\);

-- Location: LCCOMB_X52_Y69_N0
\c_ar[6][7]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][7]~223_combout\ = \c_ar[6][7]~221_combout\ $ (\c_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[6][7]~221_combout\,
	datad => \c_in[7]~input_o\,
	combout => \c_ar[6][7]~223_combout\);

-- Location: FF_X52_Y69_N19
\c_ar[6][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[6][7]~223_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[6][7]~_emulated_q\);

-- Location: LCCOMB_X52_Y69_N18
\c_ar[6][7]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[6][7]~222_combout\ = (\St~0_combout\ & (\St~57_combout\)) # (!\St~0_combout\ & ((\c_ar[6][7]~_emulated_q\ $ (\c_ar[6][7]~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~57_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[6][7]~_emulated_q\,
	datad => \c_ar[6][7]~221_combout\,
	combout => \c_ar[6][7]~222_combout\);

-- Location: LCCOMB_X53_Y69_N0
\c_ar[3][7]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][7]~213_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~55_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[3][7]~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~55_combout\,
	datab => \c_ar[3][7]~213_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[3][7]~213_combout\);

-- Location: LCCOMB_X53_Y69_N8
\c_ar[3][7]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][7]~215_combout\ = \c_ar[3][7]~213_combout\ $ (\c_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[3][7]~213_combout\,
	datad => \c_in[7]~input_o\,
	combout => \c_ar[3][7]~215_combout\);

-- Location: FF_X53_Y69_N21
\c_ar[3][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[3][7]~215_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[3][7]~_emulated_q\);

-- Location: LCCOMB_X53_Y69_N20
\c_ar[3][7]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[3][7]~214_combout\ = (\St~0_combout\ & (\St~55_combout\)) # (!\St~0_combout\ & ((\c_ar[3][7]~_emulated_q\ $ (\c_ar[3][7]~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~55_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[3][7]~_emulated_q\,
	datad => \c_ar[3][7]~213_combout\,
	combout => \c_ar[3][7]~214_combout\);

-- Location: LCCOMB_X52_Y69_N14
\St~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~52_combout\ = (!\L_in[2]~input_o\ & (\c_ar[2][7]~202_combout\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[2][7]~202_combout\,
	combout => \St~52_combout\);

-- Location: LCCOMB_X52_Y69_N12
\c_ar[2][7]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][7]~201_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~52_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[2][7]~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[2][7]~201_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~52_combout\,
	combout => \c_ar[2][7]~201_combout\);

-- Location: LCCOMB_X52_Y69_N8
\c_ar[2][7]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][7]~203_combout\ = \c_ar[2][7]~201_combout\ $ (\c_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[2][7]~201_combout\,
	datad => \c_in[7]~input_o\,
	combout => \c_ar[2][7]~203_combout\);

-- Location: FF_X52_Y69_N17
\c_ar[2][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[2][7]~203_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[2][7]~_emulated_q\);

-- Location: LCCOMB_X52_Y69_N16
\c_ar[2][7]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][7]~202_combout\ = (\St~0_combout\ & (\St~52_combout\)) # (!\St~0_combout\ & ((\c_ar[2][7]~_emulated_q\ $ (\c_ar[2][7]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~52_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[2][7]~_emulated_q\,
	datad => \c_ar[2][7]~201_combout\,
	combout => \c_ar[2][7]~202_combout\);

-- Location: LCCOMB_X53_Y69_N6
\c_ar[0][7]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][7]~209_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~54_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[0][7]~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~54_combout\,
	datac => \c_ar[0][7]~209_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[0][7]~209_combout\);

-- Location: LCCOMB_X53_Y69_N12
\c_ar[0][7]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][7]~211_combout\ = \c_ar[0][7]~209_combout\ $ (\c_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_ar[0][7]~209_combout\,
	datad => \c_in[7]~input_o\,
	combout => \c_ar[0][7]~211_combout\);

-- Location: FF_X53_Y69_N19
\c_ar[0][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[0][7]~211_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[0][7]~_emulated_q\);

-- Location: LCCOMB_X53_Y69_N18
\c_ar[0][7]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][7]~210_combout\ = (\St~0_combout\ & (\St~54_combout\)) # (!\St~0_combout\ & ((\c_ar[0][7]~_emulated_q\ $ (\c_ar[0][7]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~54_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[0][7]~_emulated_q\,
	datad => \c_ar[0][7]~209_combout\,
	combout => \c_ar[0][7]~210_combout\);

-- Location: LCCOMB_X54_Y72_N4
\St~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~53_combout\ = (!\L_in[1]~input_o\ & (!\L_in[2]~input_o\ & \c_ar[1][7]~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[1][7]~206_combout\,
	combout => \St~53_combout\);

-- Location: LCCOMB_X54_Y72_N6
\c_ar[1][7]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][7]~205_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~53_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[1][7]~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[1][7]~205_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~53_combout\,
	combout => \c_ar[1][7]~205_combout\);

-- Location: LCCOMB_X54_Y72_N10
\c_ar[1][7]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][7]~207_combout\ = \c_in[7]~input_o\ $ (\c_ar[1][7]~205_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_in[7]~input_o\,
	datad => \c_ar[1][7]~205_combout\,
	combout => \c_ar[1][7]~207_combout\);

-- Location: FF_X54_Y72_N17
\c_ar[1][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[1][7]~207_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[1][7]~_emulated_q\);

-- Location: LCCOMB_X54_Y72_N16
\c_ar[1][7]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][7]~206_combout\ = (\St~0_combout\ & (\St~53_combout\)) # (!\St~0_combout\ & ((\c_ar[1][7]~_emulated_q\ $ (\c_ar[1][7]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~53_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[1][7]~_emulated_q\,
	datad => \c_ar[1][7]~205_combout\,
	combout => \c_ar[1][7]~206_combout\);

-- Location: LCCOMB_X53_Y69_N16
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\St:count[1]~q\ & (((\St:count[0]~q\)))) # (!\St:count[1]~q\ & ((\St:count[0]~q\ & ((\c_ar[1][7]~206_combout\))) # (!\St:count[0]~q\ & (\c_ar[0][7]~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[0][7]~210_combout\,
	datac => \St:count[0]~q\,
	datad => \c_ar[1][7]~206_combout\,
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X53_Y69_N30
\Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = (\St:count[1]~q\ & ((\Mux64~0_combout\ & (\c_ar[3][7]~214_combout\)) # (!\Mux64~0_combout\ & ((\c_ar[2][7]~202_combout\))))) # (!\St:count[1]~q\ & (((\Mux64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[3][7]~214_combout\,
	datac => \c_ar[2][7]~202_combout\,
	datad => \Mux64~0_combout\,
	combout => \Mux64~1_combout\);

-- Location: LCCOMB_X56_Y68_N8
\St~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~56_combout\ = (\c_ar[4][7]~218_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[4][7]~218_combout\,
	combout => \St~56_combout\);

-- Location: LCCOMB_X56_Y68_N12
\c_ar[4][7]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][7]~217_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~56_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[4][7]~217_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St~56_combout\,
	datac => \c_ar[4][7]~217_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \c_ar[4][7]~217_combout\);

-- Location: LCCOMB_X56_Y68_N30
\c_ar[4][7]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][7]~219_combout\ = \c_ar[4][7]~217_combout\ $ (\c_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[4][7]~217_combout\,
	datac => \c_in[7]~input_o\,
	combout => \c_ar[4][7]~219_combout\);

-- Location: FF_X56_Y68_N3
\c_ar[4][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[4][7]~219_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[4][7]~_emulated_q\);

-- Location: LCCOMB_X56_Y68_N2
\c_ar[4][7]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][7]~218_combout\ = (\St~0_combout\ & (\St~56_combout\)) # (!\St~0_combout\ & ((\c_ar[4][7]~_emulated_q\ $ (\c_ar[4][7]~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~56_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[4][7]~_emulated_q\,
	datad => \c_ar[4][7]~217_combout\,
	combout => \c_ar[4][7]~218_combout\);

-- Location: LCCOMB_X56_Y71_N28
\Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~2_combout\ = (\Mux55~0_combout\ & ((\Mux55~1_combout\) # ((\Mux64~1_combout\)))) # (!\Mux55~0_combout\ & (!\Mux55~1_combout\ & ((\c_ar[4][7]~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux55~1_combout\,
	datac => \Mux64~1_combout\,
	datad => \c_ar[4][7]~218_combout\,
	combout => \Mux64~2_combout\);

-- Location: LCCOMB_X56_Y71_N18
\Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~3_combout\ = (\Mux55~1_combout\ & ((\Mux64~2_combout\ & ((\c_ar[6][7]~222_combout\))) # (!\Mux64~2_combout\ & (\c_ar[5][7]~198_combout\)))) # (!\Mux55~1_combout\ & (((\Mux64~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \c_ar[5][7]~198_combout\,
	datac => \c_ar[6][7]~222_combout\,
	datad => \Mux64~2_combout\,
	combout => \Mux64~3_combout\);

-- Location: IOIBUF_X52_Y73_N1
\c_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(8),
	o => \c_in[8]~input_o\);

-- Location: LCCOMB_X56_Y72_N18
\c_ar[1][8]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][8]~227_combout\ = \c_ar[1][8]~225_combout\ $ (\c_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[1][8]~225_combout\,
	datac => \c_in[8]~input_o\,
	combout => \c_ar[1][8]~227_combout\);

-- Location: FF_X56_Y72_N5
\c_ar[1][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[1][8]~227_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[1][8]~_emulated_q\);

-- Location: LCCOMB_X56_Y72_N2
\c_ar[1][8]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][8]~225_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~58_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[1][8]~225_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~58_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[1][8]~225_combout\,
	combout => \c_ar[1][8]~225_combout\);

-- Location: LCCOMB_X56_Y72_N4
\c_ar[1][8]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[1][8]~226_combout\ = (\St~0_combout\ & (\St~58_combout\)) # (!\St~0_combout\ & ((\c_ar[1][8]~_emulated_q\ $ (\c_ar[1][8]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~58_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[1][8]~_emulated_q\,
	datad => \c_ar[1][8]~225_combout\,
	combout => \c_ar[1][8]~226_combout\);

-- Location: LCCOMB_X55_Y72_N22
\St~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~60_combout\ = (!\L_in[0]~input_o\ & (!\L_in[1]~input_o\ & (!\L_in[2]~input_o\ & \c_ar[0][8]~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[0][8]~234_combout\,
	combout => \St~60_combout\);

-- Location: LCCOMB_X55_Y72_N10
\c_ar[0][8]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][8]~233_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~60_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[0][8]~233_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[0][8]~233_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~60_combout\,
	combout => \c_ar[0][8]~233_combout\);

-- Location: LCCOMB_X55_Y72_N8
\c_ar[0][8]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][8]~235_combout\ = \c_ar[0][8]~233_combout\ $ (\c_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[0][8]~233_combout\,
	datac => \c_in[8]~input_o\,
	combout => \c_ar[0][8]~235_combout\);

-- Location: FF_X55_Y72_N3
\c_ar[0][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[0][8]~235_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[0][8]~_emulated_q\);

-- Location: LCCOMB_X55_Y72_N2
\c_ar[0][8]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[0][8]~234_combout\ = (\St~0_combout\ & (\St~60_combout\)) # (!\St~0_combout\ & ((\c_ar[0][8]~_emulated_q\ $ (\c_ar[0][8]~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~60_combout\,
	datac => \c_ar[0][8]~_emulated_q\,
	datad => \c_ar[0][8]~233_combout\,
	combout => \c_ar[0][8]~234_combout\);

-- Location: LCCOMB_X55_Y72_N26
\St~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~59_combout\ = (!\L_in[2]~input_o\ & (\c_ar[2][8]~230_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \c_ar[2][8]~230_combout\,
	combout => \St~59_combout\);

-- Location: LCCOMB_X55_Y72_N28
\c_ar[2][8]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][8]~229_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~59_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\c_ar[2][8]~229_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[2][8]~229_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~59_combout\,
	combout => \c_ar[2][8]~229_combout\);

-- Location: LCCOMB_X55_Y72_N20
\c_ar[2][8]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][8]~231_combout\ = \c_in[8]~input_o\ $ (\c_ar[2][8]~229_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c_in[8]~input_o\,
	datad => \c_ar[2][8]~229_combout\,
	combout => \c_ar[2][8]~231_combout\);

-- Location: FF_X55_Y72_N25
\c_ar[2][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[2][8]~231_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[2][8]~_emulated_q\);

-- Location: LCCOMB_X55_Y72_N24
\c_ar[2][8]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[2][8]~230_combout\ = (\St~0_combout\ & (\St~59_combout\)) # (!\St~0_combout\ & ((\c_ar[2][8]~_emulated_q\ $ (\c_ar[2][8]~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~59_combout\,
	datac => \c_ar[2][8]~_emulated_q\,
	datad => \c_ar[2][8]~229_combout\,
	combout => \c_ar[2][8]~230_combout\);

-- Location: LCCOMB_X55_Y72_N14
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\St:count[1]~q\ & (((\St:count[0]~q\) # (\c_ar[2][8]~230_combout\)))) # (!\St:count[1]~q\ & (\c_ar[0][8]~234_combout\ & (!\St:count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \c_ar[0][8]~234_combout\,
	datac => \St:count[0]~q\,
	datad => \c_ar[2][8]~230_combout\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X56_Y72_N26
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\St:count[0]~q\ & ((\Mux63~0_combout\ & (\c_ar[3][8]~238_combout\)) # (!\Mux63~0_combout\ & ((\c_ar[1][8]~226_combout\))))) # (!\St:count[0]~q\ & (((\Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[3][8]~238_combout\,
	datab => \St:count[0]~q\,
	datac => \c_ar[1][8]~226_combout\,
	datad => \Mux63~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X59_Y68_N4
\St~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~63_combout\ = (\c_ar[4][8]~246_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \c_ar[4][8]~246_combout\,
	combout => \St~63_combout\);

-- Location: LCCOMB_X59_Y68_N0
\c_ar[4][8]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][8]~245_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~63_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\c_ar[4][8]~245_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St~63_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \c_ar[4][8]~245_combout\,
	combout => \c_ar[4][8]~245_combout\);

-- Location: LCCOMB_X59_Y68_N26
\c_ar[4][8]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][8]~247_combout\ = \c_ar[4][8]~245_combout\ $ (\c_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_ar[4][8]~245_combout\,
	datac => \c_in[8]~input_o\,
	combout => \c_ar[4][8]~247_combout\);

-- Location: FF_X59_Y68_N23
\c_ar[4][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_ar[4][8]~247_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_ar[4][8]~_emulated_q\);

-- Location: LCCOMB_X59_Y68_N22
\c_ar[4][8]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_ar[4][8]~246_combout\ = (\St~0_combout\ & (\St~63_combout\)) # (!\St~0_combout\ & ((\c_ar[4][8]~_emulated_q\ $ (\c_ar[4][8]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~63_combout\,
	datab => \St~0_combout\,
	datac => \c_ar[4][8]~_emulated_q\,
	datad => \c_ar[4][8]~245_combout\,
	combout => \c_ar[4][8]~246_combout\);

-- Location: LCCOMB_X60_Y72_N0
\Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~2_combout\ = (\Mux55~0_combout\ & (((\Mux55~1_combout\)))) # (!\Mux55~0_combout\ & ((\Mux55~1_combout\ & (\c_ar[5][8]~242_combout\)) # (!\Mux55~1_combout\ & ((\c_ar[4][8]~246_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[5][8]~242_combout\,
	datab => \Mux55~0_combout\,
	datac => \Mux55~1_combout\,
	datad => \c_ar[4][8]~246_combout\,
	combout => \Mux63~2_combout\);

-- Location: LCCOMB_X60_Y72_N30
\Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~3_combout\ = (\Mux55~0_combout\ & ((\Mux63~2_combout\ & (\c_ar[6][8]~250_combout\)) # (!\Mux63~2_combout\ & ((\Mux63~1_combout\))))) # (!\Mux55~0_combout\ & (((\Mux63~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_ar[6][8]~250_combout\,
	datab => \Mux55~0_combout\,
	datac => \Mux63~1_combout\,
	datad => \Mux63~2_combout\,
	combout => \Mux63~3_combout\);

-- Location: LCCOMB_X60_Y71_N4
\St~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~68_combout\ = (\St:x_ar[5][0]~2_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][0]~2_combout\,
	datab => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~68_combout\);

-- Location: LCCOMB_X60_Y71_N18
\St:x_ar[5][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~68_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[5][0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][0]~1_combout\,
	datac => \St~68_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[5][0]~1_combout\);

-- Location: LCCOMB_X65_Y72_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\L_in[0]~input_o\) # ((\L_in[1]~input_o\) # (\L_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X65_Y72_N2
\St:x_count_ini[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[3]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (!\Equal0~0_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\St:x_count_ini[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St:x_count_ini[3]~1_combout\,
	combout => \St:x_count_ini[3]~1_combout\);

-- Location: LCCOMB_X65_Y72_N6
\St:x_count_ini[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[3]~2_combout\ = (\St~0_combout\ & (((!\Equal0~0_combout\)))) # (!\St~0_combout\ & (\St:x_count_ini[3]~_emulated_q\ $ ((\St:x_count_ini[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[3]~_emulated_q\,
	datab => \St:x_count_ini[3]~1_combout\,
	datac => \St~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \St:x_count_ini[3]~2_combout\);

-- Location: LCCOMB_X63_Y69_N0
\x_count_ini~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_count_ini~1_combout\ = ((\Equal8~0_combout\ & (\St:x_count_ini[3]~2_combout\ & \St:L_current[0]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \St:x_count_ini[3]~2_combout\,
	datac => \St:x_count_ini[0]~2_combout\,
	datad => \St:L_current[0]~2_combout\,
	combout => \x_count_ini~1_combout\);

-- Location: LCCOMB_X63_Y69_N8
\St:x_count_ini[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[0]~3_combout\ = \St:x_count_ini[0]~1_combout\ $ (((\St:x_count_ini[2]~5_combout\ & (\x_count_ini~1_combout\)) # (!\St:x_count_ini[2]~5_combout\ & ((!\St:L_current[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~1_combout\,
	datab => \x_count_ini~1_combout\,
	datac => \St:L_current[0]~2_combout\,
	datad => \St:x_count_ini[2]~5_combout\,
	combout => \St:x_count_ini[0]~3_combout\);

-- Location: LCCOMB_X65_Y72_N28
\St:x_count_ini[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[2]~9_combout\ = (\St~1_combout\ & (((!\St:x_count_ini[2]~6_combout\ & \Load_x~input_o\)) # (!\state.start~q\))) # (!\St~1_combout\ & (((\Load_x~input_o\ & !\state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~6_combout\,
	datab => \St~1_combout\,
	datac => \Load_x~input_o\,
	datad => \state.start~q\,
	combout => \St:x_count_ini[2]~9_combout\);

-- Location: FF_X57_Y69_N1
\St:x_count_ini[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_count_ini[0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_count_ini[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_count_ini[0]~_emulated_q\);

-- Location: LCCOMB_X57_Y69_N24
\St:x_count_ini[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (!\L_in[0]~input_o\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\St:x_count_ini[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datac => \St~0clkctrl_outclk\,
	datad => \St:x_count_ini[0]~1_combout\,
	combout => \St:x_count_ini[0]~1_combout\);

-- Location: LCCOMB_X57_Y69_N0
\St:x_count_ini[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[0]~2_combout\ = (\St~0_combout\ & (!\L_in[0]~input_o\)) # (!\St~0_combout\ & ((\St:x_count_ini[0]~_emulated_q\ $ (\St:x_count_ini[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \St~0_combout\,
	datac => \St:x_count_ini[0]~_emulated_q\,
	datad => \St:x_count_ini[0]~1_combout\,
	combout => \St:x_count_ini[0]~2_combout\);

-- Location: LCCOMB_X65_Y70_N4
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \St:L_current[2]~2_combout\ $ (((\St:L_current[1]~2_combout\) # (\St:L_current[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:L_current[2]~2_combout\,
	datac => \St:L_current[1]~2_combout\,
	datad => \St:L_current[0]~2_combout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X63_Y69_N28
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \St:L_current[1]~2_combout\ $ (\St:L_current[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:L_current[1]~2_combout\,
	datac => \St:L_current[0]~2_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X63_Y69_N4
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \x_count_ini~0_combout\ $ (\x_count_ini~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_count_ini~0_combout\,
	datad => \x_count_ini~1_combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X63_Y69_N26
\St:x_count_ini[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[1]~3_combout\ = \St:x_count_ini[1]~1_combout\ $ (((\St:x_count_ini[2]~5_combout\ & ((\Add3~0_combout\))) # (!\St:x_count_ini[2]~5_combout\ & (!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~1_combout\,
	datab => \Add1~0_combout\,
	datac => \Add3~0_combout\,
	datad => \St:x_count_ini[2]~5_combout\,
	combout => \St:x_count_ini[1]~3_combout\);

-- Location: FF_X57_Y69_N11
\St:x_count_ini[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_count_ini[1]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_count_ini[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_count_ini[1]~_emulated_q\);

-- Location: LCCOMB_X55_Y70_N30
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \L_in[0]~input_o\ $ (\L_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L_in[0]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X57_Y69_N28
\St:x_count_ini[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[1]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (!\Add0~0_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\St:x_count_ini[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St:x_count_ini[1]~1_combout\,
	combout => \St:x_count_ini[1]~1_combout\);

-- Location: LCCOMB_X57_Y69_N10
\St:x_count_ini[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[1]~2_combout\ = (\St~0_combout\ & (!\Add0~0_combout\)) # (!\St~0_combout\ & ((\St:x_count_ini[1]~_emulated_q\ $ (\St:x_count_ini[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \St~0_combout\,
	datac => \St:x_count_ini[1]~_emulated_q\,
	datad => \St:x_count_ini[1]~1_combout\,
	combout => \St:x_count_ini[1]~2_combout\);

-- Location: LCCOMB_X63_Y69_N14
\x_count_ini~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_count_ini~0_combout\ = (\Equal8~0_combout\ & ((\St:x_count_ini[3]~2_combout\ & ((!\Add1~0_combout\))) # (!\St:x_count_ini[3]~2_combout\ & (\St:x_count_ini[1]~2_combout\)))) # (!\Equal8~0_combout\ & (\St:x_count_ini[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[3]~2_combout\,
	datad => \Add1~0_combout\,
	combout => \x_count_ini~0_combout\);

-- Location: LCCOMB_X65_Y70_N18
\x_count_ini~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_count_ini~2_combout\ = (\Equal8~0_combout\ & ((\St:x_count_ini[3]~2_combout\ & (!\Add1~1_combout\)) # (!\St:x_count_ini[3]~2_combout\ & ((\St:x_count_ini[2]~2_combout\))))) # (!\Equal8~0_combout\ & (((\St:x_count_ini[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Add1~1_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \St:x_count_ini[3]~2_combout\,
	combout => \x_count_ini~2_combout\);

-- Location: LCCOMB_X65_Y70_N6
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = \x_count_ini~2_combout\ $ (((\x_count_ini~0_combout\) # (!\x_count_ini~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_count_ini~1_combout\,
	datac => \x_count_ini~0_combout\,
	datad => \x_count_ini~2_combout\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X65_Y70_N16
\St:x_count_ini[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[2]~3_combout\ = \St:x_count_ini[2]~1_combout\ $ (((\St:x_count_ini[2]~5_combout\ & ((!\Add3~1_combout\))) # (!\St:x_count_ini[2]~5_combout\ & (!\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~1_combout\,
	datab => \Add1~1_combout\,
	datac => \St:x_count_ini[2]~5_combout\,
	datad => \Add3~1_combout\,
	combout => \St:x_count_ini[2]~3_combout\);

-- Location: FF_X57_Y69_N27
\St:x_count_ini[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_count_ini[2]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_count_ini[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_count_ini[2]~_emulated_q\);

-- Location: LCCOMB_X58_Y72_N12
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \L_in[2]~input_o\ $ (((\L_in[0]~input_o\) # (\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X57_Y69_N16
\St:x_count_ini[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[2]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (!\Add0~1_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\St:x_count_ini[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St:x_count_ini[2]~1_combout\,
	combout => \St:x_count_ini[2]~1_combout\);

-- Location: LCCOMB_X57_Y69_N26
\St:x_count_ini[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_count_ini[2]~2_combout\ = (\St~0_combout\ & (!\Add0~1_combout\)) # (!\St~0_combout\ & ((\St:x_count_ini[2]~_emulated_q\ $ (\St:x_count_ini[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \St~0_combout\,
	datac => \St:x_count_ini[2]~_emulated_q\,
	datad => \St:x_count_ini[2]~1_combout\,
	combout => \St:x_count_ini[2]~2_combout\);

-- Location: LCCOMB_X57_Y69_N6
\Decoder3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder3~4_combout\ = (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[2]~2_combout\ & \St:x_count_ini[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \St:x_count_ini[1]~2_combout\,
	combout => \Decoder3~4_combout\);

-- Location: LCCOMB_X63_Y71_N30
\St~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~65_combout\ = (\St:L_current[1]~2_combout\ & ((\St:L_current[2]~2_combout\))) # (!\St:L_current[1]~2_combout\ & (!\St:L_current[0]~2_combout\ & !\St:L_current[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:L_current[0]~2_combout\,
	datac => \St:L_current[1]~2_combout\,
	datad => \St:L_current[2]~2_combout\,
	combout => \St~65_combout\);

-- Location: LCCOMB_X63_Y71_N4
\Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (!\St:L_current[0]~2_combout\ & (\St:L_current[1]~2_combout\ & \St:L_current[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:L_current[0]~2_combout\,
	datac => \St:L_current[1]~2_combout\,
	datad => \St:L_current[2]~2_combout\,
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X63_Y70_N24
\St:x_ar[5][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][4]~6_combout\ = (\state.trans~q\ & (((\Equal15~0_combout\) # (!\St~65_combout\)) # (!\Decoder3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.trans~q\,
	datab => \Decoder3~4_combout\,
	datac => \St~65_combout\,
	datad => \Equal15~0_combout\,
	combout => \St:x_ar[5][4]~6_combout\);

-- Location: LCCOMB_X63_Y71_N24
\St~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~66_combout\ = (!\St:L_current[2]~2_combout\ & ((\St:L_current[0]~2_combout\) # (\St:L_current[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:L_current[0]~2_combout\,
	datac => \St:L_current[1]~2_combout\,
	datad => \St:L_current[2]~2_combout\,
	combout => \St~66_combout\);

-- Location: LCCOMB_X61_Y67_N24
\Decoder3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder3~6_combout\ = (!\St:x_count_ini[1]~2_combout\ & \St:x_count_ini[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[0]~2_combout\,
	combout => \Decoder3~6_combout\);

-- Location: LCCOMB_X57_Y69_N14
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\St:x_count_ini[2]~2_combout\ & ((!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[2]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # (\St:x_count_ini[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \St:x_count_ini[1]~2_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X59_Y71_N8
\St~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~74_combout\ = (\St:x_ar[6][0]~2_combout\ & (((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \St:x_ar[6][0]~2_combout\,
	combout => \St~74_combout\);

-- Location: LCCOMB_X59_Y71_N20
\St:x_ar[6][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~74_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[6][0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][0]~1_combout\,
	datac => \St~74_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[6][0]~1_combout\);

-- Location: LCCOMB_X57_Y69_N18
\Decoder3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder3~3_combout\ = (!\St:x_count_ini[2]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & \St:x_count_ini[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datad => \St:x_count_ini[1]~2_combout\,
	combout => \Decoder3~3_combout\);

-- Location: LCCOMB_X63_Y71_N28
\St:x_ar[6][1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][1]~6_combout\ = (\state.trans~q\ & (((\Equal15~0_combout\) # (!\Decoder3~3_combout\)) # (!\St~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~65_combout\,
	datab => \Equal15~0_combout\,
	datac => \state.trans~q\,
	datad => \Decoder3~3_combout\,
	combout => \St:x_ar[6][1]~6_combout\);

-- Location: LCCOMB_X58_Y67_N20
\Decoder3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder3~5_combout\ = (!\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & !\St:x_count_ini[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[0]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Decoder3~5_combout\);

-- Location: LCCOMB_X61_Y69_N26
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & \St:x_count_ini[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X65_Y68_N8
\Decoder3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder3~0_combout\ = (!\St:x_count_ini[0]~2_combout\ & (\St:x_count_ini[1]~2_combout\ & \St:x_count_ini[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datac => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Decoder3~0_combout\);

-- Location: LCCOMB_X60_Y69_N18
\x_ar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~0_combout\ = (\Decoder3~0_combout\ & ((\Mux8~5_combout\))) # (!\Decoder3~0_combout\ & (\St:x_ar[6][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][0]~2_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux8~5_combout\,
	combout => \x_ar~0_combout\);

-- Location: LCCOMB_X57_Y69_N30
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & \St:x_count_ini[2]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((!\St:x_count_ini[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X58_Y69_N28
\Decoder3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder3~1_combout\ = (!\St:x_count_ini[0]~2_combout\ & !\St:x_count_ini[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_count_ini[0]~2_combout\,
	datad => \St:x_count_ini[1]~2_combout\,
	combout => \Decoder3~1_combout\);

-- Location: LCCOMB_X60_Y69_N4
\x_ar~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~1_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux8~5_combout\))) # (!\Decoder3~1_combout\ & (\St:x_ar[4][0]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[4][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][0]~2_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \Decoder3~1_combout\,
	datad => \Mux8~5_combout\,
	combout => \x_ar~1_combout\);

-- Location: LCCOMB_X60_Y71_N26
\St~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~70_combout\ = (\St:x_ar[1][0]~2_combout\ & (!\L_in[2]~input_o\ & !\L_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~2_combout\,
	datab => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~70_combout\);

-- Location: LCCOMB_X60_Y71_N16
\St:x_ar[1][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~70_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[1][0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][0]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~70_combout\,
	combout => \St:x_ar[1][0]~1_combout\);

-- Location: LCCOMB_X63_Y70_N22
\St:x_ar[1][0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][0]~9_combout\ = (\state.trans~q\ & (((\Equal15~0_combout\) # (!\St~65_combout\)) # (!\Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.trans~q\,
	datab => \Decoder3~0_combout\,
	datac => \St~65_combout\,
	datad => \Equal15~0_combout\,
	combout => \St:x_ar[1][0]~9_combout\);

-- Location: LCCOMB_X61_Y67_N18
\x_ar~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~9_combout\ = (\Decoder3~4_combout\ & ((\Mux17~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~5_combout\,
	datad => \Mux17~3_combout\,
	combout => \x_ar~9_combout\);

-- Location: LCCOMB_X60_Y67_N16
\x_ar~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~7_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux17~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~1_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \x_ar~1_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux17~3_combout\,
	combout => \x_ar~7_combout\);

-- Location: LCCOMB_X63_Y69_N20
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (\St:x_count_ini[1]~2_combout\ $ (!\St:x_count_ini[2]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (\St:x_count_ini[1]~2_combout\ & !\St:x_count_ini[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X61_Y67_N14
\x_ar~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~12_combout\ = (\Decoder3~0_combout\ & ((\Mux17~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~6_combout\,
	datad => \Mux17~3_combout\,
	combout => \x_ar~12_combout\);

-- Location: LCCOMB_X60_Y69_N24
\x_ar~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~3_combout\ = (\Decoder3~3_combout\ & ((\Mux8~5_combout\))) # (!\Decoder3~3_combout\ & (\St:x_ar[3][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][0]~2_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux8~5_combout\,
	combout => \x_ar~3_combout\);

-- Location: LCCOMB_X60_Y67_N14
\x_ar~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~8_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux17~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~3_combout\)))) # (!\Decoder3~1_combout\ & (((\x_ar~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~3_combout\,
	datad => \Mux17~3_combout\,
	combout => \x_ar~8_combout\);

-- Location: LCCOMB_X61_Y71_N14
\St~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~69_combout\ = (!\L_in[2]~input_o\ & (\St:x_ar[2][0]~2_combout\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \St:x_ar[2][0]~2_combout\,
	datad => \L_in[0]~input_o\,
	combout => \St~69_combout\);

-- Location: LCCOMB_X61_Y71_N0
\St:x_ar[2][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~69_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[2][0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][0]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~69_combout\,
	combout => \St:x_ar[2][0]~1_combout\);

-- Location: LCCOMB_X61_Y71_N30
\St:x_ar[2][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][0]~2_combout\ = (\St~0_combout\ & (((\St~69_combout\)))) # (!\St~0_combout\ & (\St:x_ar[2][0]~_emulated_q\ $ (((\St:x_ar[2][0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][0]~_emulated_q\,
	datab => \St~69_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[2][0]~1_combout\,
	combout => \St:x_ar[2][0]~2_combout\);

-- Location: LCCOMB_X60_Y69_N26
\x_ar~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~4_combout\ = (\Decoder3~4_combout\ & ((\Mux8~5_combout\))) # (!\Decoder3~4_combout\ & (\St:x_ar[2][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \St:x_ar[2][0]~2_combout\,
	datad => \Mux8~5_combout\,
	combout => \x_ar~4_combout\);

-- Location: LCCOMB_X60_Y67_N8
\x_ar~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~11_combout\ = (\Decoder3~3_combout\ & ((\Mux17~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datab => \x_ar~4_combout\,
	datad => \Mux17~3_combout\,
	combout => \x_ar~11_combout\);

-- Location: LCCOMB_X58_Y72_N4
\St~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~71_combout\ = (!\L_in[0]~input_o\ & (!\L_in[2]~input_o\ & (!\L_in[1]~input_o\ & \St:x_ar[0][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \St:x_ar[0][0]~2_combout\,
	combout => \St~71_combout\);

-- Location: LCCOMB_X58_Y72_N6
\St:x_ar[0][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~71_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[0][0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][0]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~71_combout\,
	combout => \St:x_ar[0][0]~1_combout\);

-- Location: LCCOMB_X58_Y72_N22
\St:x_ar[0][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][0]~3_combout\ = \x_in[0]~input_o\ $ (\St:x_ar[0][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[0]~input_o\,
	datac => \St:x_ar[0][0]~1_combout\,
	combout => \St:x_ar[0][0]~3_combout\);

-- Location: LCCOMB_X65_Y70_N14
\St:x_ar[0][3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][3]~6_combout\ = (\x_count_ini~1_combout\ & (!\x_count_ini~0_combout\ & !\x_count_ini~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_count_ini~1_combout\,
	datac => \x_count_ini~0_combout\,
	datad => \x_count_ini~2_combout\,
	combout => \St:x_ar[0][3]~6_combout\);

-- Location: LCCOMB_X65_Y72_N26
\St:x_ar[0][3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][3]~7_combout\ = (\Load_x~input_o\ & ((\state.trans~q\) # ((!\state.start~q\ & \St:x_ar[0][3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_x~input_o\,
	datab => \state.start~q\,
	datac => \state.trans~q\,
	datad => \St:x_ar[0][3]~6_combout\,
	combout => \St:x_ar[0][3]~7_combout\);

-- Location: FF_X58_Y72_N1
\St:x_ar[0][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_ar[0][0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_ar[0][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[0][0]~_emulated_q\);

-- Location: LCCOMB_X58_Y72_N0
\St:x_ar[0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][0]~2_combout\ = (\St~0_combout\ & (\St~71_combout\)) # (!\St~0_combout\ & ((\St:x_ar[0][0]~_emulated_q\ $ (\St:x_ar[0][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~71_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[0][0]~_emulated_q\,
	datad => \St:x_ar[0][0]~1_combout\,
	combout => \St:x_ar[0][0]~2_combout\);

-- Location: LCCOMB_X58_Y68_N0
\Decoder3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder3~2_combout\ = (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[2]~2_combout\ & !\St:x_count_ini[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \St:x_count_ini[1]~2_combout\,
	combout => \Decoder3~2_combout\);

-- Location: LCCOMB_X60_Y69_N22
\x_ar~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~2_combout\ = (\Decoder3~2_combout\ & ((\Mux8~5_combout\))) # (!\Decoder3~2_combout\ & (\St:x_ar[0][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[0][0]~2_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux8~5_combout\,
	combout => \x_ar~2_combout\);

-- Location: LCCOMB_X60_Y69_N28
\x_ar~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~10_combout\ = (\Decoder3~5_combout\ & ((\Mux17~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \x_ar~2_combout\,
	datad => \Mux17~3_combout\,
	combout => \x_ar~10_combout\);

-- Location: LCCOMB_X61_Y67_N28
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & (\x_ar~10_combout\))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # ((\x_ar~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~10_combout\,
	datad => \x_ar~9_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X60_Y67_N2
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Add4~0_combout\ & ((\Mux26~0_combout\ & ((\x_ar~11_combout\))) # (!\Mux26~0_combout\ & (\x_ar~8_combout\)))) # (!\Add4~0_combout\ & (((\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~8_combout\,
	datac => \x_ar~11_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X60_Y67_N20
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux22~1_combout\ & ((\Mux22~0_combout\) # ((\Mux26~1_combout\)))) # (!\Mux22~1_combout\ & (!\Mux22~0_combout\ & (\x_ar~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~12_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X60_Y67_N24
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux22~0_combout\ & ((\Mux26~2_combout\ & (\x_ar~13_combout\)) # (!\Mux26~2_combout\ & ((\x_ar~7_combout\))))) # (!\Mux22~0_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~13_combout\,
	datab => \x_ar~7_combout\,
	datac => \Mux22~0_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X61_Y67_N4
\x_ar~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~18_combout\ = (\Decoder3~3_combout\ & ((\Mux26~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datab => \x_ar~9_combout\,
	datad => \Mux26~3_combout\,
	combout => \x_ar~18_combout\);

-- Location: LCCOMB_X63_Y69_N24
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\St:x_count_ini[2]~2_combout\) # ((\St:x_count_ini[0]~2_combout\ & !\St:x_count_ini[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X60_Y67_N26
\x_ar~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~16_combout\ = (\Decoder3~0_combout\ & ((\Mux26~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datab => \x_ar~7_combout\,
	datad => \Mux26~3_combout\,
	combout => \x_ar~16_combout\);

-- Location: LCCOMB_X60_Y67_N4
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux31~1_combout\ & ((\Mux31~0_combout\) # ((\x_ar~15_combout\)))) # (!\Mux31~1_combout\ & (!\Mux31~0_combout\ & (\x_ar~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \x_ar~16_combout\,
	datad => \x_ar~15_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X60_Y67_N6
\x_ar~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~17_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux26~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~11_combout\)))) # (!\Decoder3~1_combout\ & (((\x_ar~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~11_combout\,
	datad => \Mux26~3_combout\,
	combout => \x_ar~17_combout\);

-- Location: LCCOMB_X61_Y67_N22
\x_ar~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~20_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux26~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~8_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \x_ar~8_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux26~3_combout\,
	combout => \x_ar~20_combout\);

-- Location: LCCOMB_X61_Y67_N2
\x_ar~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~19_combout\ = (\Decoder3~4_combout\ & ((\Mux26~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~10_combout\,
	datab => \Decoder3~4_combout\,
	datad => \Mux26~3_combout\,
	combout => \x_ar~19_combout\);

-- Location: LCCOMB_X61_Y67_N20
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~18_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\x_ar~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~18_combout\,
	datad => \x_ar~19_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X61_Y67_N16
\Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux35~1_combout\ & ((\x_ar~20_combout\))) # (!\Mux35~1_combout\ & (\x_ar~17_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~17_combout\,
	datac => \x_ar~20_combout\,
	datad => \Mux35~1_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X60_Y67_N12
\Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux31~0_combout\ & ((\Mux35~0_combout\ & ((\Mux35~2_combout\))) # (!\Mux35~0_combout\ & (\x_ar~14_combout\)))) # (!\Mux31~0_combout\ & (((\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~14_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux35~0_combout\,
	datad => \Mux35~2_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X60_Y68_N26
\x_ar~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~23_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux35~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~18_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \x_ar~18_combout\,
	datad => \Mux35~3_combout\,
	combout => \x_ar~23_combout\);

-- Location: LCCOMB_X60_Y67_N22
\x_ar~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~27_combout\ = (\Equal8~0_combout\ & ((\Mux35~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \x_ar~16_combout\,
	datad => \Mux35~3_combout\,
	combout => \x_ar~27_combout\);

-- Location: LCCOMB_X63_Y69_N22
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (!\St:x_count_ini[2]~2_combout\ & (\St:x_count_ini[0]~2_combout\ $ (\St:x_count_ini[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X60_Y67_N30
\x_ar~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~14_combout\ = (\Equal8~0_combout\ & ((\Mux26~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \x_ar~12_combout\,
	datad => \Mux26~3_combout\,
	combout => \x_ar~14_combout\);

-- Location: LCCOMB_X60_Y67_N10
\x_ar~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~22_combout\ = (\Decoder3~2_combout\ & ((\Mux35~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~14_combout\,
	datad => \Mux35~3_combout\,
	combout => \x_ar~22_combout\);

-- Location: LCCOMB_X57_Y69_N20
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \St:x_count_ini[1]~2_combout\ $ (\St:x_count_ini[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[0]~2_combout\,
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X60_Y68_N30
\x_ar~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~26_combout\ = (\Decoder3~3_combout\ & ((\Mux35~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~19_combout\,
	datab => \Decoder3~3_combout\,
	datad => \Mux35~3_combout\,
	combout => \x_ar~26_combout\);

-- Location: LCCOMB_X60_Y67_N0
\x_ar~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~25_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux35~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~17_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~17_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \Decoder3~6_combout\,
	datad => \Mux35~3_combout\,
	combout => \x_ar~25_combout\);

-- Location: LCCOMB_X61_Y67_N6
\x_ar~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~24_combout\ = (\Decoder3~0_combout\ & ((\Mux35~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~20_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux35~3_combout\,
	combout => \x_ar~24_combout\);

-- Location: LCCOMB_X60_Y68_N28
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\x_ar~25_combout\) # ((!\St:x_count_ini[1]~2_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (((!\St:x_count_ini[1]~2_combout\ & \x_ar~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \x_ar~25_combout\,
	datac => \St:x_count_ini[1]~2_combout\,
	datad => \x_ar~24_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X60_Y68_N16
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\Add4~0_combout\ & ((\Mux44~0_combout\ & ((\x_ar~26_combout\))) # (!\Mux44~0_combout\ & (\x_ar~23_combout\)))) # (!\Add4~0_combout\ & (((\Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~23_combout\,
	datab => \Add4~0_combout\,
	datac => \x_ar~26_combout\,
	datad => \Mux44~0_combout\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X60_Y68_N18
\Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Mux39~0_combout\ & (\Mux39~1_combout\)) # (!\Mux39~0_combout\ & ((\Mux39~1_combout\ & (\x_ar~22_combout\)) # (!\Mux39~1_combout\ & ((\Mux44~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \Mux39~1_combout\,
	datac => \x_ar~22_combout\,
	datad => \Mux44~1_combout\,
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X60_Y68_N12
\Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (\Mux39~0_combout\ & ((\Mux44~2_combout\ & (\x_ar~27_combout\)) # (!\Mux44~2_combout\ & ((\x_ar~21_combout\))))) # (!\Mux39~0_combout\ & (((\Mux44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \x_ar~27_combout\,
	datac => \x_ar~21_combout\,
	datad => \Mux44~2_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X60_Y68_N10
\x_ar~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~33_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux44~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~23_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~23_combout\,
	datad => \Mux44~3_combout\,
	combout => \x_ar~33_combout\);

-- Location: LCCOMB_X63_Y71_N18
\St:x_ar[1][0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][0]~10_combout\ = (\state.trans~q\ & (((\Decoder3~0_combout\ & !\Equal15~0_combout\)) # (!\St~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datab => \Equal15~0_combout\,
	datac => \St~65_combout\,
	datad => \state.trans~q\,
	combout => \St:x_ar[1][0]~10_combout\);

-- Location: LCCOMB_X61_Y68_N30
\Mux49~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~9_combout\ = (!\St:x_count_ini[2]~2_combout\ & \St:x_count_ini[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \St:x_count_ini[1]~2_combout\,
	combout => \Mux49~9_combout\);

-- Location: LCCOMB_X57_Y65_N24
\Mux49~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~8_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # (\St:x_count_ini[2]~2_combout\))) # (!\St:x_count_ini[1]~2_combout\ & ((!\St:x_count_ini[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[0]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Mux49~8_combout\);

-- Location: LCCOMB_X61_Y68_N0
\x_ar~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~28_combout\ = (\Decoder3~5_combout\ & ((\Mux44~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~22_combout\,
	datad => \Mux44~3_combout\,
	combout => \x_ar~28_combout\);

-- Location: LCCOMB_X61_Y68_N28
\Mux53~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~8_combout\ = (\Mux53~13_combout\) # (((\Mux49~9_combout\ & \x_ar~28_combout\)) # (!\Mux49~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~13_combout\,
	datab => \Mux49~9_combout\,
	datac => \Mux49~8_combout\,
	datad => \x_ar~28_combout\,
	combout => \Mux53~8_combout\);

-- Location: LCCOMB_X60_Y68_N8
\x_ar~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~32_combout\ = (\Decoder3~0_combout\ & ((\Mux44~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \x_ar~25_combout\,
	datad => \Mux44~3_combout\,
	combout => \x_ar~32_combout\);

-- Location: LCCOMB_X60_Y68_N0
\Mux53~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~11_combout\ = (!\Mux49~9_combout\ & ((\St:x_count_ini[0]~2_combout\ & ((\x_ar~33_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (\x_ar~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~9_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~26_combout\,
	datad => \x_ar~33_combout\,
	combout => \Mux53~11_combout\);

-- Location: LCCOMB_X60_Y68_N4
\Mux53~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~14_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux53~11_combout\))) # (!\St:x_count_ini[1]~2_combout\ & (\x_ar~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~32_combout\,
	datad => \Mux53~11_combout\,
	combout => \Mux53~14_combout\);

-- Location: LCCOMB_X61_Y68_N10
\x_ar~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~31_combout\ = (\Decoder3~2_combout\ & ((\Mux44~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~27_combout\,
	datab => \Decoder3~2_combout\,
	datad => \Mux44~3_combout\,
	combout => \x_ar~31_combout\);

-- Location: LCCOMB_X61_Y68_N4
\Mux53~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~10_combout\ = (\Mux53~13_combout\) # (((\Mux49~8_combout\) # (\x_ar~31_combout\)) # (!\Mux49~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~13_combout\,
	datab => \Mux49~9_combout\,
	datac => \Mux49~8_combout\,
	datad => \x_ar~31_combout\,
	combout => \Mux53~10_combout\);

-- Location: LCCOMB_X60_Y68_N14
\Mux53~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~12_combout\ = (\Mux53~8_combout\ & (\Mux53~9_combout\ & ((\Mux53~10_combout\)))) # (!\Mux53~8_combout\ & (((\Mux53~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~9_combout\,
	datab => \Mux53~8_combout\,
	datac => \Mux53~14_combout\,
	datad => \Mux53~10_combout\,
	combout => \Mux53~12_combout\);

-- Location: LCCOMB_X60_Y71_N2
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\St:x_ar[1][0]~10_combout\ & (((\St:x_ar[1][0]~9_combout\) # (\Mux53~12_combout\)))) # (!\St:x_ar[1][0]~10_combout\ & (\x_in[0]~input_o\ & (!\St:x_ar[1][0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[0]~input_o\,
	datab => \St:x_ar[1][0]~10_combout\,
	datac => \St:x_ar[1][0]~9_combout\,
	datad => \Mux53~12_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X60_Y71_N28
\Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = (\St:x_ar[1][0]~9_combout\ & ((\Selector21~0_combout\ & (\Selector21~2_combout\)) # (!\Selector21~0_combout\ & ((\x_ar~33_combout\))))) # (!\St:x_ar[1][0]~9_combout\ & (((\Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~2_combout\,
	datab => \St:x_ar[1][0]~9_combout\,
	datac => \x_ar~33_combout\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~3_combout\);

-- Location: LCCOMB_X60_Y71_N0
\St:x_ar[1][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][0]~3_combout\ = \St:x_ar[1][0]~1_combout\ $ (\Selector21~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][0]~1_combout\,
	datad => \Selector21~3_combout\,
	combout => \St:x_ar[1][0]~3_combout\);

-- Location: LCCOMB_X65_Y70_N28
\St:x_ar[1][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][0]~8_combout\ = (!\state.start~q\ & (\Load_x~input_o\ & !\x_count_ini~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.start~q\,
	datab => \Load_x~input_o\,
	datad => \x_count_ini~2_combout\,
	combout => \St:x_ar[1][0]~8_combout\);

-- Location: LCCOMB_X65_Y70_N12
\St:x_ar[1][0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][0]~11_combout\ = ((!\x_count_ini~1_combout\ & (!\x_count_ini~0_combout\ & \St:x_ar[1][0]~8_combout\))) # (!\St:x_ar[1][0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~7_combout\,
	datab => \x_count_ini~1_combout\,
	datac => \x_count_ini~0_combout\,
	datad => \St:x_ar[1][0]~8_combout\,
	combout => \St:x_ar[1][0]~11_combout\);

-- Location: FF_X60_Y71_N1
\St:x_ar[1][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[1][0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[1][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[1][0]~_emulated_q\);

-- Location: LCCOMB_X60_Y71_N22
\St:x_ar[1][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][0]~2_combout\ = (\St~0_combout\ & (\St~70_combout\)) # (!\St~0_combout\ & ((\St:x_ar[1][0]~_emulated_q\ $ (\St:x_ar[1][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~70_combout\,
	datac => \St:x_ar[1][0]~_emulated_q\,
	datad => \St:x_ar[1][0]~1_combout\,
	combout => \St:x_ar[1][0]~2_combout\);

-- Location: LCCOMB_X60_Y69_N30
\x_ar~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~5_combout\ = (\Decoder3~5_combout\ & ((\Mux8~5_combout\))) # (!\Decoder3~5_combout\ & (\St:x_ar[1][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][0]~2_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux8~5_combout\,
	combout => \x_ar~5_combout\);

-- Location: LCCOMB_X60_Y69_N16
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\ & ((\x_ar~3_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (\x_ar~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~4_combout\,
	datad => \x_ar~3_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X60_Y69_N12
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux17~0_combout\ & ((\x_ar~5_combout\))) # (!\Mux17~0_combout\ & (\x_ar~2_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~5_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X60_Y69_N2
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux14~1_combout\ & ((\Mux14~0_combout\) # ((\x_ar~1_combout\)))) # (!\Mux14~1_combout\ & (!\Mux14~0_combout\ & ((\Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \x_ar~1_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X60_Y69_N6
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux14~0_combout\ & ((\Mux17~2_combout\ & ((\x_ar~6_combout\))) # (!\Mux17~2_combout\ & (\x_ar~0_combout\)))) # (!\Mux14~0_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \x_ar~0_combout\,
	datac => \x_ar~6_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X60_Y67_N18
\x_ar~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~13_combout\ = (\Equal8~0_combout\ & ((\Mux17~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~0_combout\,
	datab => \Equal8~0_combout\,
	datac => \Mux17~3_combout\,
	combout => \x_ar~13_combout\);

-- Location: LCCOMB_X60_Y67_N28
\x_ar~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~15_combout\ = (\Decoder3~2_combout\ & ((\Mux26~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datab => \x_ar~13_combout\,
	datad => \Mux26~3_combout\,
	combout => \x_ar~15_combout\);

-- Location: LCCOMB_X60_Y68_N20
\x_ar~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~21_combout\ = (\Decoder3~5_combout\ & ((\Mux35~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \x_ar~15_combout\,
	datad => \Mux35~3_combout\,
	combout => \x_ar~21_combout\);

-- Location: LCCOMB_X60_Y68_N24
\x_ar~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~30_combout\ = (\Decoder3~4_combout\ & ((\Mux44~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~21_combout\,
	datad => \Mux44~3_combout\,
	combout => \x_ar~30_combout\);

-- Location: IOIBUF_X60_Y73_N15
\x_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: LCCOMB_X59_Y71_N24
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\St:x_ar[6][1]~7_combout\ & ((\St:x_ar[6][1]~6_combout\) # ((\Mux53~12_combout\)))) # (!\St:x_ar[6][1]~7_combout\ & (!\St:x_ar[6][1]~6_combout\ & ((\x_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~7_combout\,
	datab => \St:x_ar[6][1]~6_combout\,
	datac => \Mux53~12_combout\,
	datad => \x_in[0]~input_o\,
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X59_Y71_N2
\Selector66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~3_combout\ = (\St:x_ar[6][1]~6_combout\ & ((\Selector66~0_combout\ & (\Selector66~2_combout\)) # (!\Selector66~0_combout\ & ((\x_ar~30_combout\))))) # (!\St:x_ar[6][1]~6_combout\ & (((\Selector66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector66~2_combout\,
	datab => \St:x_ar[6][1]~6_combout\,
	datac => \x_ar~30_combout\,
	datad => \Selector66~0_combout\,
	combout => \Selector66~3_combout\);

-- Location: LCCOMB_X59_Y71_N4
\St:x_ar[6][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][0]~3_combout\ = \St:x_ar[6][0]~1_combout\ $ (\Selector66~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][0]~1_combout\,
	datad => \Selector66~3_combout\,
	combout => \St:x_ar[6][0]~3_combout\);

-- Location: LCCOMB_X65_Y70_N0
\St:x_ar[4][6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][6]~6_combout\ = (!\state.start~q\ & (\Load_x~input_o\ & \x_count_ini~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.start~q\,
	datab => \Load_x~input_o\,
	datad => \x_count_ini~2_combout\,
	combout => \St:x_ar[4][6]~6_combout\);

-- Location: LCCOMB_X65_Y70_N24
\St:x_ar[6][1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][1]~8_combout\ = ((\x_count_ini~1_combout\ & (\x_count_ini~0_combout\ & \St:x_ar[4][6]~6_combout\))) # (!\St:x_ar[1][0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~7_combout\,
	datab => \x_count_ini~1_combout\,
	datac => \x_count_ini~0_combout\,
	datad => \St:x_ar[4][6]~6_combout\,
	combout => \St:x_ar[6][1]~8_combout\);

-- Location: FF_X59_Y71_N5
\St:x_ar[6][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[6][0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[6][0]~_emulated_q\);

-- Location: LCCOMB_X59_Y71_N6
\St:x_ar[6][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][0]~2_combout\ = (\St~0_combout\ & (\St~74_combout\)) # (!\St~0_combout\ & ((\St:x_ar[6][0]~_emulated_q\ $ (\St:x_ar[6][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~74_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[6][0]~_emulated_q\,
	datad => \St:x_ar[6][0]~1_combout\,
	combout => \St:x_ar[6][0]~2_combout\);

-- Location: LCCOMB_X60_Y69_N14
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux8~3_combout\ & ((\Mux8~2_combout\) # ((\St:x_ar[5][0]~2_combout\)))) # (!\Mux8~3_combout\ & (!\Mux8~2_combout\ & ((\St:x_ar[6][0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Mux8~2_combout\,
	datac => \St:x_ar[5][0]~2_combout\,
	datad => \St:x_ar[6][0]~2_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X57_Y71_N4
\St~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~72_combout\ = (\St:x_ar[3][0]~2_combout\ & !\L_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][0]~2_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~72_combout\);

-- Location: LCCOMB_X57_Y71_N18
\St:x_ar[3][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~72_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[3][0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][0]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~72_combout\,
	combout => \St:x_ar[3][0]~1_combout\);

-- Location: LCCOMB_X60_Y68_N6
\x_ar~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~29_combout\ = (\Equal8~0_combout\ & ((\Mux44~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \x_ar~24_combout\,
	datad => \Mux44~3_combout\,
	combout => \x_ar~29_combout\);

-- Location: LCCOMB_X63_Y71_N14
\St:x_ar[1][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][0]~6_combout\ = (\St:L_current[0]~2_combout\ & (!\St:L_current[1]~2_combout\ & !\St:L_current[2]~2_combout\)) # (!\St:L_current[0]~2_combout\ & (\St:L_current[1]~2_combout\ $ (\St:L_current[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:L_current[0]~2_combout\,
	datac => \St:L_current[1]~2_combout\,
	datad => \St:L_current[2]~2_combout\,
	combout => \St:x_ar[1][0]~6_combout\);

-- Location: LCCOMB_X61_Y67_N8
\Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\St~66_combout\ & (((\St:x_ar[1][0]~6_combout\) # (\x_ar~8_combout\)))) # (!\St~66_combout\ & (\x_ar~24_combout\ & (!\St:x_ar[1][0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~24_combout\,
	datab => \St~66_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~8_combout\,
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X61_Y67_N30
\Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector39~1_combout\ & ((\x_ar~3_combout\))) # (!\Selector39~1_combout\ & (\x_ar~20_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~20_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \Selector39~1_combout\,
	datad => \x_ar~3_combout\,
	combout => \Selector39~2_combout\);

-- Location: LCCOMB_X63_Y71_N10
\St:x_ar[3][6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][6]~7_combout\ = (\state.trans~q\ & (((!\Equal15~0_combout\ & \Decoder3~2_combout\)) # (!\St~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~65_combout\,
	datab => \Equal15~0_combout\,
	datac => \Decoder3~2_combout\,
	datad => \state.trans~q\,
	combout => \St:x_ar[3][6]~7_combout\);

-- Location: LCCOMB_X63_Y71_N8
\St:x_ar[3][6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][6]~6_combout\ = (\state.trans~q\ & (((\Equal15~0_combout\) # (!\St~65_combout\)) # (!\Decoder3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datab => \Equal15~0_combout\,
	datac => \St~65_combout\,
	datad => \state.trans~q\,
	combout => \St:x_ar[3][6]~6_combout\);

-- Location: LCCOMB_X57_Y71_N24
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\St:x_ar[3][6]~7_combout\ & (((\St:x_ar[3][6]~6_combout\) # (\Mux53~12_combout\)))) # (!\St:x_ar[3][6]~7_combout\ & (\x_in[0]~input_o\ & (!\St:x_ar[3][6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[0]~input_o\,
	datab => \St:x_ar[3][6]~7_combout\,
	datac => \St:x_ar[3][6]~6_combout\,
	datad => \Mux53~12_combout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X57_Y71_N6
\Selector39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~3_combout\ = (\St:x_ar[3][6]~6_combout\ & ((\Selector39~0_combout\ & ((\Selector39~2_combout\))) # (!\Selector39~0_combout\ & (\x_ar~29_combout\)))) # (!\St:x_ar[3][6]~6_combout\ & (((\Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][6]~6_combout\,
	datab => \x_ar~29_combout\,
	datac => \Selector39~2_combout\,
	datad => \Selector39~0_combout\,
	combout => \Selector39~3_combout\);

-- Location: LCCOMB_X57_Y71_N8
\St:x_ar[3][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][0]~3_combout\ = \St:x_ar[3][0]~1_combout\ $ (\Selector39~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][0]~1_combout\,
	datad => \Selector39~3_combout\,
	combout => \St:x_ar[3][0]~3_combout\);

-- Location: LCCOMB_X65_Y70_N20
\St:x_ar[3][6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][6]~8_combout\ = ((!\x_count_ini~1_combout\ & (\x_count_ini~0_combout\ & \St:x_ar[1][0]~8_combout\))) # (!\St:x_ar[1][0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~7_combout\,
	datab => \x_count_ini~1_combout\,
	datac => \x_count_ini~0_combout\,
	datad => \St:x_ar[1][0]~8_combout\,
	combout => \St:x_ar[3][6]~8_combout\);

-- Location: FF_X57_Y71_N9
\St:x_ar[3][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[3][0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[3][0]~_emulated_q\);

-- Location: LCCOMB_X57_Y71_N2
\St:x_ar[3][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][0]~2_combout\ = (\St~0_combout\ & (\St~72_combout\)) # (!\St~0_combout\ & ((\St:x_ar[3][0]~_emulated_q\ $ (\St:x_ar[3][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~72_combout\,
	datab => \St:x_ar[3][0]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[3][0]~1_combout\,
	combout => \St:x_ar[3][0]~2_combout\);

-- Location: LCCOMB_X61_Y71_N24
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_ar[2][0]~2_combout\ & ((\St:x_count_ini[0]~2_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\St:x_ar[3][0]~2_combout\) # (\St:x_count_ini[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][0]~2_combout\,
	datab => \St:x_ar[3][0]~2_combout\,
	datac => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[0]~2_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X60_Y69_N20
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Add4~0_combout\ & ((\Mux8~0_combout\ & ((\St:x_ar[0][0]~2_combout\))) # (!\Mux8~0_combout\ & (\St:x_ar[1][0]~2_combout\)))) # (!\Add4~0_combout\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \St:x_ar[1][0]~2_combout\,
	datac => \St:x_ar[0][0]~2_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X60_Y69_N0
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~2_combout\ & ((\Mux8~4_combout\ & (\St:x_ar[4][0]~2_combout\)) # (!\Mux8~4_combout\ & ((\Mux8~1_combout\))))) # (!\Mux8~2_combout\ & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][0]~2_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux8~4_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X60_Y69_N8
\x_ar~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~6_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux8~5_combout\))) # (!\Decoder3~6_combout\ & (\St:x_ar[5][0]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[5][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][0]~2_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \Decoder3~6_combout\,
	datad => \Mux8~5_combout\,
	combout => \x_ar~6_combout\);

-- Location: LCCOMB_X60_Y65_N0
\Selector57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\) # ((\x_ar~14_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (!\St~66_combout\ & ((\x_ar~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~14_combout\,
	datad => \x_ar~22_combout\,
	combout => \Selector57~1_combout\);

-- Location: LCCOMB_X60_Y65_N30
\Selector57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~2_combout\ = (\St~66_combout\ & ((\Selector57~1_combout\ & ((\x_ar~6_combout\))) # (!\Selector57~1_combout\ & (\x_ar~12_combout\)))) # (!\St~66_combout\ & (((\Selector57~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~12_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~6_combout\,
	datad => \Selector57~1_combout\,
	combout => \Selector57~2_combout\);

-- Location: LCCOMB_X63_Y70_N18
\St:x_ar[5][4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][4]~7_combout\ = (\state.trans~q\ & (((\Decoder3~4_combout\ & !\Equal15~0_combout\)) # (!\St~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.trans~q\,
	datab => \Decoder3~4_combout\,
	datac => \St~65_combout\,
	datad => \Equal15~0_combout\,
	combout => \St:x_ar[5][4]~7_combout\);

-- Location: LCCOMB_X60_Y71_N20
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\St:x_ar[5][4]~6_combout\ & (((\St:x_ar[5][4]~7_combout\)))) # (!\St:x_ar[5][4]~6_combout\ & ((\St:x_ar[5][4]~7_combout\ & ((\Mux53~12_combout\))) # (!\St:x_ar[5][4]~7_combout\ & (\x_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[0]~input_o\,
	datab => \St:x_ar[5][4]~6_combout\,
	datac => \St:x_ar[5][4]~7_combout\,
	datad => \Mux53~12_combout\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X60_Y71_N10
\Selector57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~3_combout\ = (\St:x_ar[5][4]~6_combout\ & ((\Selector57~0_combout\ & ((\Selector57~2_combout\))) # (!\Selector57~0_combout\ & (\x_ar~28_combout\)))) # (!\St:x_ar[5][4]~6_combout\ & (((\Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~28_combout\,
	datab => \St:x_ar[5][4]~6_combout\,
	datac => \Selector57~2_combout\,
	datad => \Selector57~0_combout\,
	combout => \Selector57~3_combout\);

-- Location: LCCOMB_X60_Y71_N12
\St:x_ar[5][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][0]~3_combout\ = \St:x_ar[5][0]~1_combout\ $ (\Selector57~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][0]~1_combout\,
	datad => \Selector57~3_combout\,
	combout => \St:x_ar[5][0]~3_combout\);

-- Location: LCCOMB_X65_Y70_N22
\St:x_ar[5][4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][4]~8_combout\ = ((!\x_count_ini~1_combout\ & (!\x_count_ini~0_combout\ & \St:x_ar[4][6]~6_combout\))) # (!\St:x_ar[1][0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~7_combout\,
	datab => \x_count_ini~1_combout\,
	datac => \x_count_ini~0_combout\,
	datad => \St:x_ar[4][6]~6_combout\,
	combout => \St:x_ar[5][4]~8_combout\);

-- Location: FF_X60_Y71_N13
\St:x_ar[5][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[5][0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[5][4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[5][0]~_emulated_q\);

-- Location: LCCOMB_X60_Y71_N30
\St:x_ar[5][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][0]~2_combout\ = (\St~0_combout\ & (\St~68_combout\)) # (!\St~0_combout\ & ((\St:x_ar[5][0]~_emulated_q\ $ (\St:x_ar[5][0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~68_combout\,
	datac => \St:x_ar[5][0]~_emulated_q\,
	datad => \St:x_ar[5][0]~1_combout\,
	combout => \St:x_ar[5][0]~2_combout\);

-- Location: LCCOMB_X61_Y69_N24
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\St:count[0]~q\ & ((\St:count[1]~q\) # ((\St:x_ar[1][0]~2_combout\)))) # (!\St:count[0]~q\ & (!\St:count[1]~q\ & ((\St:x_ar[0][0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[0]~q\,
	datab => \St:count[1]~q\,
	datac => \St:x_ar[1][0]~2_combout\,
	datad => \St:x_ar[0][0]~2_combout\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X68_Y69_N0
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\St:count[1]~q\ & ((\Mux62~0_combout\ & (\St:x_ar[3][0]~2_combout\)) # (!\Mux62~0_combout\ & ((\St:x_ar[2][0]~2_combout\))))) # (!\St:count[1]~q\ & (((\Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:x_ar[3][0]~2_combout\,
	datac => \St:x_ar[2][0]~2_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X61_Y70_N22
\St~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~73_combout\ = (\St:x_ar[4][0]~2_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \St:x_ar[4][0]~2_combout\,
	datac => \L_in[1]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~73_combout\);

-- Location: LCCOMB_X61_Y70_N12
\St:x_ar[4][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][0]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~73_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[4][0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][0]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~73_combout\,
	combout => \St:x_ar[4][0]~1_combout\);

-- Location: LCCOMB_X61_Y70_N8
\Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\St~66_combout\ & ((\x_ar~7_combout\) # ((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & (((!\St:x_ar[1][0]~6_combout\ & \x_ar~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~7_combout\,
	datab => \St~66_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~27_combout\,
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X61_Y70_N14
\Selector48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector48~1_combout\ & ((\x_ar~1_combout\))) # (!\Selector48~1_combout\ & (\x_ar~16_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (\Selector48~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \Selector48~1_combout\,
	datac => \x_ar~16_combout\,
	datad => \x_ar~1_combout\,
	combout => \Selector48~2_combout\);

-- Location: LCCOMB_X63_Y70_N16
\St:x_ar[4][6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][6]~8_combout\ = (\state.trans~q\ & (((!\Equal15~0_combout\ & \Decoder3~5_combout\)) # (!\St~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.trans~q\,
	datab => \Equal15~0_combout\,
	datac => \St~65_combout\,
	datad => \Decoder3~5_combout\,
	combout => \St:x_ar[4][6]~8_combout\);

-- Location: LCCOMB_X61_Y70_N10
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\St:x_ar[4][6]~7_combout\ & (\St:x_ar[4][6]~8_combout\)) # (!\St:x_ar[4][6]~7_combout\ & ((\St:x_ar[4][6]~8_combout\ & ((\Mux53~12_combout\))) # (!\St:x_ar[4][6]~8_combout\ & (\x_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][6]~7_combout\,
	datab => \St:x_ar[4][6]~8_combout\,
	datac => \x_in[0]~input_o\,
	datad => \Mux53~12_combout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X61_Y70_N16
\Selector48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~3_combout\ = (\St:x_ar[4][6]~7_combout\ & ((\Selector48~0_combout\ & (\Selector48~2_combout\)) # (!\Selector48~0_combout\ & ((\x_ar~31_combout\))))) # (!\St:x_ar[4][6]~7_combout\ & (((\Selector48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][6]~7_combout\,
	datab => \Selector48~2_combout\,
	datac => \x_ar~31_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector48~3_combout\);

-- Location: LCCOMB_X61_Y70_N18
\St:x_ar[4][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][0]~3_combout\ = \St:x_ar[4][0]~1_combout\ $ (\Selector48~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[4][0]~1_combout\,
	datad => \Selector48~3_combout\,
	combout => \St:x_ar[4][0]~3_combout\);

-- Location: LCCOMB_X65_Y70_N10
\St:x_ar[4][6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][6]~9_combout\ = ((\x_count_ini~1_combout\ & (!\x_count_ini~0_combout\ & \St:x_ar[4][6]~6_combout\))) # (!\St:x_ar[1][0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~7_combout\,
	datab => \x_count_ini~1_combout\,
	datac => \x_count_ini~0_combout\,
	datad => \St:x_ar[4][6]~6_combout\,
	combout => \St:x_ar[4][6]~9_combout\);

-- Location: FF_X61_Y70_N19
\St:x_ar[4][0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[4][0]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[4][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[4][0]~_emulated_q\);

-- Location: LCCOMB_X61_Y70_N20
\St:x_ar[4][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][0]~2_combout\ = (\St~0_combout\ & (((\St~73_combout\)))) # (!\St~0_combout\ & (\St:x_ar[4][0]~_emulated_q\ $ (((\St:x_ar[4][0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St:x_ar[4][0]~_emulated_q\,
	datac => \St~73_combout\,
	datad => \St:x_ar[4][0]~1_combout\,
	combout => \St:x_ar[4][0]~2_combout\);

-- Location: LCCOMB_X68_Y69_N10
\Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~2_combout\ = (\Mux55~1_combout\ & (((\Mux55~0_combout\)))) # (!\Mux55~1_combout\ & ((\Mux55~0_combout\ & (\Mux62~1_combout\)) # (!\Mux55~0_combout\ & ((\St:x_ar[4][0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \Mux62~1_combout\,
	datac => \Mux55~0_combout\,
	datad => \St:x_ar[4][0]~2_combout\,
	combout => \Mux62~2_combout\);

-- Location: LCCOMB_X67_Y71_N24
\Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~3_combout\ = (\Mux55~1_combout\ & ((\Mux62~2_combout\ & (\St:x_ar[6][0]~2_combout\)) # (!\Mux62~2_combout\ & ((\St:x_ar[5][0]~2_combout\))))) # (!\Mux55~1_combout\ & (((\Mux62~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][0]~2_combout\,
	datab => \Mux55~1_combout\,
	datac => \St:x_ar[5][0]~2_combout\,
	datad => \Mux62~2_combout\,
	combout => \Mux62~3_combout\);

-- Location: LCCOMB_X60_Y70_N22
\St~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~80_combout\ = (\St:x_ar[4][1]~2_combout\ & (((!\L_in[1]~input_o\ & !\L_in[0]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \St:x_ar[4][1]~2_combout\,
	datad => \L_in[0]~input_o\,
	combout => \St~80_combout\);

-- Location: LCCOMB_X60_Y70_N2
\St:x_ar[4][1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][1]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~80_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[4][1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[4][1]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~80_combout\,
	combout => \St:x_ar[4][1]~1_combout\);

-- Location: LCCOMB_X57_Y69_N22
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\St:x_count_ini[2]~2_combout\ & (\St:x_count_ini[1]~2_combout\ $ (\St:x_count_ini[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \St:x_count_ini[0]~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X62_Y66_N8
\St~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~81_combout\ = (\St:x_ar[6][1]~2_combout\ & (((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \St:x_ar[6][1]~2_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~81_combout\);

-- Location: LCCOMB_X62_Y66_N16
\St:x_ar[6][1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][1]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~81_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[6][1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][1]~1_combout\,
	datac => \St~81_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[6][1]~1_combout\);

-- Location: LCCOMB_X58_Y69_N8
\x_ar~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~35_combout\ = (\Decoder3~0_combout\ & ((\Mux7~3_combout\))) # (!\Decoder3~0_combout\ & (\St:x_ar[6][1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][1]~2_combout\,
	datac => \Mux7~3_combout\,
	datad => \Decoder3~0_combout\,
	combout => \x_ar~35_combout\);

-- Location: LCCOMB_X59_Y72_N16
\x_ar~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~47_combout\ = (\Equal8~0_combout\ & ((\Mux16~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~35_combout\,
	datac => \Mux16~3_combout\,
	datad => \Equal8~0_combout\,
	combout => \x_ar~47_combout\);

-- Location: LCCOMB_X59_Y69_N28
\St~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~79_combout\ = (\St:x_ar[5][1]~2_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \St:x_ar[5][1]~2_combout\,
	combout => \St~79_combout\);

-- Location: LCCOMB_X59_Y69_N2
\St:x_ar[5][1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][1]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~79_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[5][1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][1]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~79_combout\,
	combout => \St:x_ar[5][1]~1_combout\);

-- Location: LCCOMB_X59_Y69_N8
\Selector56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~2_combout\ = (\Selector56~1_combout\ & ((\x_ar~40_combout\) # ((!\St~66_combout\)))) # (!\Selector56~1_combout\ & (((\x_ar~46_combout\ & \St~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector56~1_combout\,
	datab => \x_ar~40_combout\,
	datac => \x_ar~46_combout\,
	datad => \St~66_combout\,
	combout => \Selector56~2_combout\);

-- Location: LCCOMB_X63_Y69_N30
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\St:x_count_ini[1]~2_combout\) # (\St:x_count_ini[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X57_Y70_N8
\St~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~78_combout\ = (!\L_in[2]~input_o\ & \St:x_ar[3][1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L_in[2]~input_o\,
	datad => \St:x_ar[3][1]~2_combout\,
	combout => \St~78_combout\);

-- Location: LCCOMB_X57_Y70_N0
\St:x_ar[3][1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][1]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~78_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[3][1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][1]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~78_combout\,
	combout => \St:x_ar[3][1]~1_combout\);

-- Location: LCCOMB_X57_Y70_N24
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\St:x_ar[3][6]~7_combout\ & (((\St:x_ar[3][6]~6_combout\)))) # (!\St:x_ar[3][6]~7_combout\ & ((\St:x_ar[3][6]~6_combout\ & ((\x_ar~68_combout\))) # (!\St:x_ar[3][6]~6_combout\ & (\x_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[1]~input_o\,
	datab => \St:x_ar[3][6]~7_combout\,
	datac => \St:x_ar[3][6]~6_combout\,
	datad => \x_ar~68_combout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X57_Y70_N18
\Selector38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~3_combout\ = (\St:x_ar[3][6]~7_combout\ & ((\Selector38~0_combout\ & (\Selector38~2_combout\)) # (!\Selector38~0_combout\ & ((\Mux52~4_combout\))))) # (!\St:x_ar[3][6]~7_combout\ & (((\Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~2_combout\,
	datab => \St:x_ar[3][6]~7_combout\,
	datac => \Mux52~4_combout\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~3_combout\);

-- Location: LCCOMB_X57_Y70_N4
\St:x_ar[3][1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][1]~3_combout\ = \St:x_ar[3][1]~1_combout\ $ (\Selector38~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][1]~1_combout\,
	datad => \Selector38~3_combout\,
	combout => \St:x_ar[3][1]~3_combout\);

-- Location: FF_X57_Y70_N5
\St:x_ar[3][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[3][1]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[3][1]~_emulated_q\);

-- Location: LCCOMB_X57_Y70_N30
\St:x_ar[3][1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][1]~2_combout\ = (\St~0_combout\ & (\St~78_combout\)) # (!\St~0_combout\ & ((\St:x_ar[3][1]~_emulated_q\ $ (\St:x_ar[3][1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~78_combout\,
	datac => \St:x_ar[3][1]~_emulated_q\,
	datad => \St:x_ar[3][1]~1_combout\,
	combout => \St:x_ar[3][1]~2_combout\);

-- Location: LCCOMB_X58_Y69_N30
\x_ar~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~37_combout\ = (\Decoder3~3_combout\ & ((\Mux7~3_combout\))) # (!\Decoder3~3_combout\ & (\St:x_ar[3][1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][1]~2_combout\,
	datac => \Mux7~3_combout\,
	datad => \Decoder3~3_combout\,
	combout => \x_ar~37_combout\);

-- Location: LCCOMB_X58_Y70_N8
\x_ar~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~41_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux16~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~37_combout\)))) # (!\Decoder3~1_combout\ & (\x_ar~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \x_ar~37_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux16~3_combout\,
	combout => \x_ar~41_combout\);

-- Location: LCCOMB_X57_Y70_N6
\x_ar~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~55_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux25~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~41_combout\)))) # (!\Decoder3~6_combout\ & (((\x_ar~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~41_combout\,
	datad => \Mux25~3_combout\,
	combout => \x_ar~55_combout\);

-- Location: LCCOMB_X58_Y70_N14
\x_ar~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~49_combout\ = (\Equal8~0_combout\ & ((\Mux25~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \x_ar~46_combout\,
	datad => \Mux25~3_combout\,
	combout => \x_ar~49_combout\);

-- Location: LCCOMB_X58_Y70_N30
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mux31~0_combout\ & ((\Mux31~1_combout\) # ((\x_ar~49_combout\)))) # (!\Mux31~0_combout\ & (!\Mux31~1_combout\ & ((\x_ar~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \x_ar~49_combout\,
	datad => \x_ar~50_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X60_Y70_N24
\St:x_ar[2][1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][1]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~76_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\St:x_ar[2][1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~76_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St:x_ar[2][1]~1_combout\,
	combout => \St:x_ar[2][1]~1_combout\);

-- Location: LCCOMB_X57_Y70_N12
\x_ar~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~51_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux25~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~44_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~44_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \Decoder3~1_combout\,
	datad => \Mux25~3_combout\,
	combout => \x_ar~51_combout\);

-- Location: LCCOMB_X59_Y70_N28
\x_ar~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~60_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux34~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~51_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~51_combout\,
	datad => \Mux34~3_combout\,
	combout => \x_ar~60_combout\);

-- Location: LCCOMB_X60_Y69_N10
\Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\St~66_combout\ & (\St:x_ar[1][0]~6_combout\)) # (!\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\ & ((\x_ar~51_combout\))) # (!\St:x_ar[1][0]~6_combout\ & (\x_ar~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~60_combout\,
	datad => \x_ar~51_combout\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X60_Y70_N28
\Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\St~66_combout\ & ((\Selector29~1_combout\ & ((\x_ar~38_combout\))) # (!\Selector29~1_combout\ & (\x_ar~44_combout\)))) # (!\St~66_combout\ & (((\Selector29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~44_combout\,
	datab => \St~66_combout\,
	datac => \Selector29~1_combout\,
	datad => \x_ar~38_combout\,
	combout => \Selector29~2_combout\);

-- Location: LCCOMB_X63_Y71_N0
\St:x_ar[2][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][2]~6_combout\ = (\state.trans~q\ & (((\Equal15~0_combout\) # (!\Equal8~0_combout\)) # (!\St~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~65_combout\,
	datab => \Equal15~0_combout\,
	datac => \state.trans~q\,
	datad => \Equal8~0_combout\,
	combout => \St:x_ar[2][2]~6_combout\);

-- Location: IOIBUF_X58_Y73_N8
\x_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: LCCOMB_X63_Y69_N12
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\St:x_count_ini[0]~2_combout\ & ((!\St:x_count_ini[2]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & \St:x_count_ini[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X58_Y70_N10
\x_ar~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~53_combout\ = (\Decoder3~3_combout\ & ((\x_ar~52_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~42_combout\,
	datac => \Decoder3~3_combout\,
	datad => \x_ar~52_combout\,
	combout => \x_ar~53_combout\);

-- Location: LCCOMB_X59_Y70_N16
\x_ar~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~58_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux34~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~53_combout\)))) # (!\Decoder3~1_combout\ & (((\x_ar~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~53_combout\,
	datad => \Mux34~3_combout\,
	combout => \x_ar~58_combout\);

-- Location: LCCOMB_X58_Y70_N16
\x_ar~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~61_combout\ = (\Decoder3~3_combout\ & ((\Mux34~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datac => \x_ar~54_combout\,
	datad => \Mux34~3_combout\,
	combout => \x_ar~61_combout\);

-- Location: LCCOMB_X59_Y70_N2
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\x_ar~60_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & (\x_ar~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~59_combout\,
	datad => \x_ar~60_combout\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X59_Y70_N20
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Add4~0_combout\ & ((\Mux43~0_combout\ & ((\x_ar~61_combout\))) # (!\Mux43~0_combout\ & (\x_ar~58_combout\)))) # (!\Add4~0_combout\ & (((\Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~58_combout\,
	datac => \x_ar~61_combout\,
	datad => \Mux43~0_combout\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X59_Y70_N26
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux39~1_combout\ & (\Mux39~0_combout\)) # (!\Mux39~1_combout\ & ((\Mux39~0_combout\ & (\x_ar~57_combout\)) # (!\Mux39~0_combout\ & ((\Mux43~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~1_combout\,
	datab => \Mux39~0_combout\,
	datac => \x_ar~57_combout\,
	datad => \Mux43~1_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X59_Y69_N0
\x_ar~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~56_combout\ = (\Decoder3~2_combout\ & ((\Mux34~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~2_combout\,
	datac => \x_ar~49_combout\,
	datad => \Mux34~3_combout\,
	combout => \x_ar~56_combout\);

-- Location: LCCOMB_X59_Y70_N24
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\Mux39~1_combout\ & ((\Mux43~2_combout\ & (\x_ar~62_combout\)) # (!\Mux43~2_combout\ & ((\x_ar~56_combout\))))) # (!\Mux39~1_combout\ & (((\Mux43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~1_combout\,
	datab => \x_ar~62_combout\,
	datac => \Mux43~2_combout\,
	datad => \x_ar~56_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X59_Y70_N8
\x_ar~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~65_combout\ = (\Decoder3~0_combout\ & ((\Mux43~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datab => \x_ar~60_combout\,
	datad => \Mux43~3_combout\,
	combout => \x_ar~65_combout\);

-- Location: LCCOMB_X60_Y70_N26
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\St:x_ar[2][2]~7_combout\ & (\St:x_ar[2][2]~6_combout\)) # (!\St:x_ar[2][2]~7_combout\ & ((\St:x_ar[2][2]~6_combout\ & ((\x_ar~65_combout\))) # (!\St:x_ar[2][2]~6_combout\ & (\x_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~7_combout\,
	datab => \St:x_ar[2][2]~6_combout\,
	datac => \x_in[1]~input_o\,
	datad => \x_ar~65_combout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X60_Y70_N18
\Selector29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~3_combout\ = (\St:x_ar[2][2]~7_combout\ & ((\Selector29~0_combout\ & (\Selector29~2_combout\)) # (!\Selector29~0_combout\ & ((\Mux52~4_combout\))))) # (!\St:x_ar[2][2]~7_combout\ & (((\Selector29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~7_combout\,
	datab => \Selector29~2_combout\,
	datac => \Selector29~0_combout\,
	datad => \Mux52~4_combout\,
	combout => \Selector29~3_combout\);

-- Location: LCCOMB_X60_Y70_N8
\St:x_ar[2][1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][1]~3_combout\ = \St:x_ar[2][1]~1_combout\ $ (\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][1]~1_combout\,
	datad => \Selector29~3_combout\,
	combout => \St:x_ar[2][1]~3_combout\);

-- Location: LCCOMB_X65_Y70_N30
\St:x_ar[2][2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][2]~8_combout\ = ((\x_count_ini~1_combout\ & (\x_count_ini~0_combout\ & \St:x_ar[1][0]~8_combout\))) # (!\St:x_ar[1][0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~7_combout\,
	datab => \x_count_ini~1_combout\,
	datac => \x_count_ini~0_combout\,
	datad => \St:x_ar[1][0]~8_combout\,
	combout => \St:x_ar[2][2]~8_combout\);

-- Location: FF_X60_Y70_N9
\St:x_ar[2][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[2][1]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[2][1]~_emulated_q\);

-- Location: LCCOMB_X60_Y70_N30
\St:x_ar[2][1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][1]~2_combout\ = (\St~0_combout\ & (\St~76_combout\)) # (!\St~0_combout\ & ((\St:x_ar[2][1]~_emulated_q\ $ (\St:x_ar[2][1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~76_combout\,
	datab => \St:x_ar[2][1]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[2][1]~1_combout\,
	combout => \St:x_ar[2][1]~2_combout\);

-- Location: LCCOMB_X58_Y69_N16
\x_ar~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~38_combout\ = (\Decoder3~4_combout\ & ((\Mux7~3_combout\))) # (!\Decoder3~4_combout\ & (\St:x_ar[2][1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][1]~2_combout\,
	datac => \Mux7~3_combout\,
	datad => \Decoder3~4_combout\,
	combout => \x_ar~38_combout\);

-- Location: LCCOMB_X57_Y69_N4
\x_ar~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~44_combout\ = (\Decoder3~3_combout\ & (\Mux16~3_combout\)) # (!\Decoder3~3_combout\ & ((\x_ar~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datac => \Mux16~3_combout\,
	datad => \x_ar~38_combout\,
	combout => \x_ar~44_combout\);

-- Location: LCCOMB_X59_Y68_N10
\x_ar~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~36_combout\ = (\Decoder3~2_combout\ & ((\Mux7~3_combout\))) # (!\Decoder3~2_combout\ & (\St:x_ar[0][1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][1]~2_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux7~3_combout\,
	combout => \x_ar~36_combout\);

-- Location: LCCOMB_X59_Y68_N28
\x_ar~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~43_combout\ = (\Decoder3~5_combout\ & (\Mux16~3_combout\)) # (!\Decoder3~5_combout\ & ((\x_ar~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \Mux16~3_combout\,
	datad => \x_ar~36_combout\,
	combout => \x_ar~43_combout\);

-- Location: LCCOMB_X58_Y70_N6
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (((\St:x_count_ini[0]~2_combout\ & \x_ar~43_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~42_combout\) # ((\St:x_count_ini[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~42_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[0]~2_combout\,
	datad => \x_ar~43_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X58_Y70_N28
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Add4~0_combout\ & ((\Mux25~0_combout\ & ((\x_ar~44_combout\))) # (!\Mux25~0_combout\ & (\x_ar~41_combout\)))) # (!\Add4~0_combout\ & (((\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~41_combout\,
	datac => \x_ar~44_combout\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X58_Y70_N12
\x_ar~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~52_combout\ = (\Mux22~1_combout\ & ((\Mux25~2_combout\ & (\x_ar~47_combout\)) # (!\Mux25~2_combout\ & ((\Mux25~1_combout\))))) # (!\Mux22~1_combout\ & (\Mux25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux25~2_combout\,
	datac => \x_ar~47_combout\,
	datad => \Mux25~1_combout\,
	combout => \x_ar~52_combout\);

-- Location: LCCOMB_X58_Y70_N4
\x_ar~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~54_combout\ = (\Decoder3~4_combout\ & ((\x_ar~52_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~43_combout\,
	datac => \Decoder3~4_combout\,
	datad => \x_ar~52_combout\,
	combout => \x_ar~54_combout\);

-- Location: LCCOMB_X58_Y70_N26
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~53_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & (\x_ar~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~54_combout\,
	datad => \x_ar~53_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X58_Y70_N0
\Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux34~1_combout\ & (\x_ar~55_combout\)) # (!\Mux34~1_combout\ & ((\x_ar~51_combout\))))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~55_combout\,
	datac => \Mux34~1_combout\,
	datad => \x_ar~51_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X58_Y70_N18
\Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\Mux31~1_combout\ & ((\Mux34~0_combout\ & ((\Mux34~2_combout\))) # (!\Mux34~0_combout\ & (\x_ar~48_combout\)))) # (!\Mux31~1_combout\ & (((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \x_ar~48_combout\,
	datac => \Mux34~0_combout\,
	datad => \Mux34~2_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X59_Y70_N22
\x_ar~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~59_combout\ = (\Decoder3~0_combout\ & ((\Mux34~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~55_combout\,
	datad => \Mux34~3_combout\,
	combout => \x_ar~59_combout\);

-- Location: LCCOMB_X59_Y70_N4
\x_ar~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~68_combout\ = (\Equal8~0_combout\ & ((\Mux43~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \x_ar~59_combout\,
	datad => \Mux43~3_combout\,
	combout => \x_ar~68_combout\);

-- Location: LCCOMB_X59_Y69_N14
\x_ar~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~67_combout\ = (\Decoder3~5_combout\ & ((\Mux43~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~56_combout\,
	datac => \Mux43~3_combout\,
	datad => \Decoder3~5_combout\,
	combout => \x_ar~67_combout\);

-- Location: LCCOMB_X59_Y70_N14
\x_ar~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~66_combout\ = (\Decoder3~4_combout\ & ((\Mux43~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~4_combout\,
	datac => \x_ar~57_combout\,
	datad => \Mux43~3_combout\,
	combout => \x_ar~66_combout\);

-- Location: LCCOMB_X59_Y70_N10
\x_ar~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~64_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux43~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~58_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \x_ar~58_combout\,
	datac => \Decoder3~6_combout\,
	datad => \Mux43~3_combout\,
	combout => \x_ar~64_combout\);

-- Location: LCCOMB_X59_Y70_N18
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & ((\x_ar~64_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\x_ar~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~65_combout\,
	datad => \x_ar~64_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X59_Y70_N12
\Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Mux52~0_combout\) # ((!\St:x_count_ini[0]~2_combout\ & (\St:x_count_ini[1]~2_combout\ & \x_ar~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~61_combout\,
	datad => \Mux52~0_combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X59_Y70_N0
\Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\Mux49~8_combout\ & ((\Mux49~9_combout\) # ((\Mux52~1_combout\)))) # (!\Mux49~8_combout\ & (!\Mux49~9_combout\ & (\x_ar~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~8_combout\,
	datab => \Mux49~9_combout\,
	datac => \x_ar~66_combout\,
	datad => \Mux52~1_combout\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X59_Y70_N6
\Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (\Mux49~9_combout\ & ((\Mux52~2_combout\ & ((\x_ar~67_combout\))) # (!\Mux52~2_combout\ & (\x_ar~63_combout\)))) # (!\Mux49~9_combout\ & (((\Mux52~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~9_combout\,
	datab => \x_ar~63_combout\,
	datac => \x_ar~67_combout\,
	datad => \Mux52~2_combout\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X59_Y70_N30
\Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\Mux31~1_combout\ & ((\Mux52~3_combout\))) # (!\Mux31~1_combout\ & (\x_ar~68_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (((\Mux52~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \Mux31~1_combout\,
	datac => \x_ar~68_combout\,
	datad => \Mux52~3_combout\,
	combout => \Mux52~4_combout\);

-- Location: LCCOMB_X59_Y69_N24
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\St:x_ar[5][4]~7_combout\ & (((\St:x_ar[5][4]~6_combout\)))) # (!\St:x_ar[5][4]~7_combout\ & ((\St:x_ar[5][4]~6_combout\ & ((\x_ar~67_combout\))) # (!\St:x_ar[5][4]~6_combout\ & (\x_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \x_in[1]~input_o\,
	datac => \x_ar~67_combout\,
	datad => \St:x_ar[5][4]~6_combout\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X59_Y69_N6
\Selector56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~3_combout\ = (\St:x_ar[5][4]~7_combout\ & ((\Selector56~0_combout\ & (\Selector56~2_combout\)) # (!\Selector56~0_combout\ & ((\Mux52~4_combout\))))) # (!\St:x_ar[5][4]~7_combout\ & (((\Selector56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \Selector56~2_combout\,
	datac => \Mux52~4_combout\,
	datad => \Selector56~0_combout\,
	combout => \Selector56~3_combout\);

-- Location: LCCOMB_X59_Y69_N18
\St:x_ar[5][1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][1]~3_combout\ = \St:x_ar[5][1]~1_combout\ $ (\Selector56~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][1]~1_combout\,
	datad => \Selector56~3_combout\,
	combout => \St:x_ar[5][1]~3_combout\);

-- Location: FF_X59_Y69_N19
\St:x_ar[5][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[5][1]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[5][4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[5][1]~_emulated_q\);

-- Location: LCCOMB_X59_Y69_N12
\St:x_ar[5][1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][1]~2_combout\ = (\St~0_combout\ & (\St~79_combout\)) # (!\St~0_combout\ & ((\St:x_ar[5][1]~_emulated_q\ $ (\St:x_ar[5][1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~79_combout\,
	datac => \St:x_ar[5][1]~_emulated_q\,
	datad => \St:x_ar[5][1]~1_combout\,
	combout => \St:x_ar[5][1]~2_combout\);

-- Location: LCCOMB_X58_Y69_N10
\x_ar~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~40_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux7~3_combout\))) # (!\Decoder3~6_combout\ & (\St:x_ar[5][1]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[5][1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \St:x_ar[5][1]~2_combout\,
	datac => \Mux7~3_combout\,
	datad => \Decoder3~6_combout\,
	combout => \x_ar~40_combout\);

-- Location: LCCOMB_X59_Y69_N4
\x_ar~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~46_combout\ = (\Decoder3~0_combout\ & (\Mux16~3_combout\)) # (!\Decoder3~0_combout\ & ((\x_ar~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \Mux16~3_combout\,
	datad => \x_ar~40_combout\,
	combout => \x_ar~46_combout\);

-- Location: LCCOMB_X59_Y69_N22
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux22~1_combout\ & (\Mux22~0_combout\)) # (!\Mux22~1_combout\ & ((\Mux22~0_combout\ & ((\x_ar~45_combout\))) # (!\Mux22~0_combout\ & (\x_ar~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~46_combout\,
	datad => \x_ar~45_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X58_Y70_N2
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux22~1_combout\ & ((\Mux25~2_combout\ & (\x_ar~47_combout\)) # (!\Mux25~2_combout\ & ((\Mux25~1_combout\))))) # (!\Mux22~1_combout\ & (\Mux25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux25~2_combout\,
	datac => \x_ar~47_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X58_Y70_N20
\x_ar~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~48_combout\ = (\Decoder3~2_combout\ & ((\Mux25~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~47_combout\,
	datad => \Mux25~3_combout\,
	combout => \x_ar~48_combout\);

-- Location: LCCOMB_X63_Y70_N14
\x_ar~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~57_combout\ = (\Decoder3~5_combout\ & ((\Mux34~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~48_combout\,
	datad => \Mux34~3_combout\,
	combout => \x_ar~57_combout\);

-- Location: LCCOMB_X62_Y66_N22
\Selector65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\x_ar~48_combout\) # ((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((!\St~66_combout\ & \x_ar~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~48_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~57_combout\,
	combout => \Selector65~1_combout\);

-- Location: LCCOMB_X62_Y66_N28
\Selector65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~2_combout\ = (\St~66_combout\ & ((\Selector65~1_combout\ & (\x_ar~35_combout\)) # (!\Selector65~1_combout\ & ((\x_ar~47_combout\))))) # (!\St~66_combout\ & (((\Selector65~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~35_combout\,
	datac => \Selector65~1_combout\,
	datad => \x_ar~47_combout\,
	combout => \Selector65~2_combout\);

-- Location: LCCOMB_X63_Y71_N2
\St:x_ar[6][1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][1]~7_combout\ = (\state.trans~q\ & (((!\Equal15~0_combout\ & \Decoder3~3_combout\)) # (!\St~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~65_combout\,
	datab => \Equal15~0_combout\,
	datac => \state.trans~q\,
	datad => \Decoder3~3_combout\,
	combout => \St:x_ar[6][1]~7_combout\);

-- Location: LCCOMB_X62_Y66_N10
\Selector65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~3_combout\ = (\Selector65~0_combout\ & ((\Selector65~2_combout\) # ((!\St:x_ar[6][1]~7_combout\)))) # (!\Selector65~0_combout\ & (((\St:x_ar[6][1]~7_combout\ & \Mux52~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~0_combout\,
	datab => \Selector65~2_combout\,
	datac => \St:x_ar[6][1]~7_combout\,
	datad => \Mux52~4_combout\,
	combout => \Selector65~3_combout\);

-- Location: LCCOMB_X62_Y66_N4
\St:x_ar[6][1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][1]~3_combout\ = \St:x_ar[6][1]~1_combout\ $ (\Selector65~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][1]~1_combout\,
	datad => \Selector65~3_combout\,
	combout => \St:x_ar[6][1]~3_combout\);

-- Location: FF_X62_Y66_N5
\St:x_ar[6][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[6][1]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[6][1]~_emulated_q\);

-- Location: LCCOMB_X62_Y66_N14
\St:x_ar[6][1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][1]~2_combout\ = (\St~0_combout\ & (\St~81_combout\)) # (!\St~0_combout\ & ((\St:x_ar[6][1]~_emulated_q\ $ (\St:x_ar[6][1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~81_combout\,
	datab => \St:x_ar[6][1]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[6][1]~1_combout\,
	combout => \St:x_ar[6][1]~2_combout\);

-- Location: LCCOMB_X58_Y69_N22
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\St:x_ar[2][1]~2_combout\) # (!\St:x_count_ini[1]~2_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (\St:x_ar[3][1]~2_combout\ & ((!\St:x_count_ini[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_ar[3][1]~2_combout\,
	datac => \St:x_ar[2][1]~2_combout\,
	datad => \St:x_count_ini[1]~2_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X58_Y65_N26
\St~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~77_combout\ = (!\L_in[2]~input_o\ & (!\L_in[1]~input_o\ & (!\L_in[0]~input_o\ & \St:x_ar[0][1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \St:x_ar[0][1]~2_combout\,
	combout => \St~77_combout\);

-- Location: LCCOMB_X58_Y65_N20
\St:x_ar[0][1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][1]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~77_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[0][1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[0][1]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~77_combout\,
	combout => \St:x_ar[0][1]~1_combout\);

-- Location: LCCOMB_X58_Y65_N4
\St:x_ar[0][1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][1]~3_combout\ = \x_in[1]~input_o\ $ (\St:x_ar[0][1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[1]~input_o\,
	datac => \St:x_ar[0][1]~1_combout\,
	combout => \St:x_ar[0][1]~3_combout\);

-- Location: FF_X58_Y65_N25
\St:x_ar[0][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_ar[0][1]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_ar[0][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[0][1]~_emulated_q\);

-- Location: LCCOMB_X58_Y65_N24
\St:x_ar[0][1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][1]~2_combout\ = (\St~0_combout\ & (\St~77_combout\)) # (!\St~0_combout\ & ((\St:x_ar[0][1]~_emulated_q\ $ (\St:x_ar[0][1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~77_combout\,
	datac => \St:x_ar[0][1]~_emulated_q\,
	datad => \St:x_ar[0][1]~1_combout\,
	combout => \St:x_ar[0][1]~2_combout\);

-- Location: LCCOMB_X58_Y69_N24
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Add4~0_combout\ & ((\Mux7~0_combout\ & ((\St:x_ar[0][1]~2_combout\))) # (!\Mux7~0_combout\ & (\St:x_ar[1][1]~2_combout\)))) # (!\Add4~0_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][1]~2_combout\,
	datab => \Add4~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \St:x_ar[0][1]~2_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X58_Y69_N6
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux8~2_combout\ & ((\Mux8~3_combout\) # ((\Mux7~1_combout\)))) # (!\Mux8~2_combout\ & (!\Mux8~3_combout\ & (\St:x_ar[6][1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \Mux8~3_combout\,
	datac => \St:x_ar[6][1]~2_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X58_Y69_N4
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux8~3_combout\ & ((\Mux7~2_combout\ & ((\St:x_ar[4][1]~2_combout\))) # (!\Mux7~2_combout\ & (\St:x_ar[5][1]~2_combout\)))) # (!\Mux8~3_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][1]~2_combout\,
	datab => \Mux8~3_combout\,
	datac => \St:x_ar[4][1]~2_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X58_Y69_N14
\x_ar~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~34_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & (\Mux7~3_combout\)) # (!\Decoder3~1_combout\ & ((\St:x_ar[4][1]~2_combout\))))) # (!\St:x_count_ini[2]~2_combout\ & (((\St:x_ar[4][1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \Mux7~3_combout\,
	datad => \St:x_ar[4][1]~2_combout\,
	combout => \x_ar~34_combout\);

-- Location: LCCOMB_X57_Y69_N12
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\St:x_count_ini[1]~2_combout\ & \St:x_count_ini[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X58_Y69_N26
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~37_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\x_ar~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~37_combout\,
	datad => \x_ar~38_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X58_Y69_N18
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux16~0_combout\ & (\x_ar~39_combout\)) # (!\Mux16~0_combout\ & ((\x_ar~36_combout\))))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~39_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \Mux16~0_combout\,
	datad => \x_ar~36_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X58_Y69_N20
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux14~1_combout\ & (\Mux14~0_combout\)) # (!\Mux14~1_combout\ & ((\Mux14~0_combout\ & (\x_ar~35_combout\)) # (!\Mux14~0_combout\ & ((\Mux16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \x_ar~35_combout\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X58_Y69_N0
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux14~1_combout\ & ((\Mux16~2_combout\ & (\x_ar~40_combout\)) # (!\Mux16~2_combout\ & ((\x_ar~34_combout\))))) # (!\Mux14~1_combout\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~40_combout\,
	datab => \x_ar~34_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X59_Y69_N10
\x_ar~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~45_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & (\Mux16~3_combout\)) # (!\Decoder3~6_combout\ & ((\x_ar~34_combout\))))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \Mux16~3_combout\,
	datad => \x_ar~34_combout\,
	combout => \x_ar~45_combout\);

-- Location: LCCOMB_X58_Y70_N24
\x_ar~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~50_combout\ = (\Decoder3~0_combout\ & ((\Mux25~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \x_ar~45_combout\,
	datad => \Mux25~3_combout\,
	combout => \x_ar~50_combout\);

-- Location: LCCOMB_X58_Y70_N22
\x_ar~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~62_combout\ = (\Equal8~0_combout\ & ((\Mux34~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \x_ar~50_combout\,
	datad => \Mux34~3_combout\,
	combout => \x_ar~62_combout\);

-- Location: LCCOMB_X60_Y70_N16
\x_ar~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~63_combout\ = (\Decoder3~2_combout\ & ((\Mux43~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~2_combout\,
	datac => \x_ar~62_combout\,
	datad => \Mux43~3_combout\,
	combout => \x_ar~63_combout\);

-- Location: LCCOMB_X62_Y70_N12
\St:x_ar[4][6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][6]~7_combout\ = (\state.trans~q\ & (((\Equal15~0_combout\) # (!\St~65_combout\)) # (!\Decoder3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datab => \St~65_combout\,
	datac => \Equal15~0_combout\,
	datad => \state.trans~q\,
	combout => \St:x_ar[4][6]~7_combout\);

-- Location: LCCOMB_X60_Y70_N6
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\St:x_ar[4][6]~8_combout\ & (((\St:x_ar[4][6]~7_combout\)))) # (!\St:x_ar[4][6]~8_combout\ & ((\St:x_ar[4][6]~7_combout\ & ((\x_ar~63_combout\))) # (!\St:x_ar[4][6]~7_combout\ & (\x_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[1]~input_o\,
	datab => \x_ar~63_combout\,
	datac => \St:x_ar[4][6]~8_combout\,
	datad => \St:x_ar[4][6]~7_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X60_Y70_N0
\Selector47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~3_combout\ = (\St:x_ar[4][6]~8_combout\ & ((\Selector47~0_combout\ & (\Selector47~2_combout\)) # (!\Selector47~0_combout\ & ((\Mux52~4_combout\))))) # (!\St:x_ar[4][6]~8_combout\ & (((\Selector47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~2_combout\,
	datab => \St:x_ar[4][6]~8_combout\,
	datac => \Selector47~0_combout\,
	datad => \Mux52~4_combout\,
	combout => \Selector47~3_combout\);

-- Location: LCCOMB_X60_Y70_N20
\St:x_ar[4][1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][1]~3_combout\ = \St:x_ar[4][1]~1_combout\ $ (\Selector47~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[4][1]~1_combout\,
	datad => \Selector47~3_combout\,
	combout => \St:x_ar[4][1]~3_combout\);

-- Location: FF_X60_Y70_N21
\St:x_ar[4][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[4][1]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[4][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[4][1]~_emulated_q\);

-- Location: LCCOMB_X60_Y70_N14
\St:x_ar[4][1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][1]~2_combout\ = (\St~0_combout\ & (\St~80_combout\)) # (!\St~0_combout\ & ((\St:x_ar[4][1]~_emulated_q\ $ (\St:x_ar[4][1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~80_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[4][1]~_emulated_q\,
	datad => \St:x_ar[4][1]~1_combout\,
	combout => \St:x_ar[4][1]~2_combout\);

-- Location: LCCOMB_X55_Y70_N2
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\Mux55~0_combout\ & (((\Mux55~1_combout\)))) # (!\Mux55~0_combout\ & ((\Mux55~1_combout\ & (\St:x_ar[5][1]~2_combout\)) # (!\Mux55~1_combout\ & ((\St:x_ar[4][1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][1]~2_combout\,
	datab => \Mux55~0_combout\,
	datac => \Mux55~1_combout\,
	datad => \St:x_ar[4][1]~2_combout\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X56_Y69_N14
\St~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~75_combout\ = (!\L_in[1]~input_o\ & (!\L_in[2]~input_o\ & \St:x_ar[1][1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \L_in[2]~input_o\,
	datad => \St:x_ar[1][1]~2_combout\,
	combout => \St~75_combout\);

-- Location: LCCOMB_X56_Y69_N2
\St:x_ar[1][1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][1]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~75_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[1][1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][1]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~75_combout\,
	combout => \St:x_ar[1][1]~1_combout\);

-- Location: LCCOMB_X59_Y69_N20
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\St:x_ar[1][0]~10_combout\ & (\St:x_ar[1][0]~9_combout\)) # (!\St:x_ar[1][0]~10_combout\ & ((\St:x_ar[1][0]~9_combout\ & (\x_ar~64_combout\)) # (!\St:x_ar[1][0]~9_combout\ & ((\x_in[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~10_combout\,
	datab => \St:x_ar[1][0]~9_combout\,
	datac => \x_ar~64_combout\,
	datad => \x_in[1]~input_o\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X58_Y69_N12
\x_ar~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~39_combout\ = (\Decoder3~5_combout\ & ((\Mux7~3_combout\))) # (!\Decoder3~5_combout\ & (\St:x_ar[1][1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][1]~2_combout\,
	datab => \Decoder3~5_combout\,
	datac => \Mux7~3_combout\,
	combout => \x_ar~39_combout\);

-- Location: LCCOMB_X59_Y67_N12
\Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & (\x_ar~42_combout\)) # (!\St~66_combout\ & ((\x_ar~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~42_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~58_combout\,
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X59_Y67_N14
\Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector20~1_combout\ & (\x_ar~39_combout\)) # (!\Selector20~1_combout\ & ((\x_ar~53_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~39_combout\,
	datac => \x_ar~53_combout\,
	datad => \Selector20~1_combout\,
	combout => \Selector20~2_combout\);

-- Location: LCCOMB_X59_Y69_N30
\Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = (\St:x_ar[1][0]~10_combout\ & ((\Selector20~0_combout\ & ((\Selector20~2_combout\))) # (!\Selector20~0_combout\ & (\Mux52~4_combout\)))) # (!\St:x_ar[1][0]~10_combout\ & (\Selector20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~10_combout\,
	datab => \Selector20~0_combout\,
	datac => \Mux52~4_combout\,
	datad => \Selector20~2_combout\,
	combout => \Selector20~3_combout\);

-- Location: LCCOMB_X59_Y69_N16
\St:x_ar[1][1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][1]~3_combout\ = \St:x_ar[1][1]~1_combout\ $ (\Selector20~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][1]~1_combout\,
	datac => \Selector20~3_combout\,
	combout => \St:x_ar[1][1]~3_combout\);

-- Location: FF_X59_Y69_N17
\St:x_ar[1][1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[1][1]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[1][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[1][1]~_emulated_q\);

-- Location: LCCOMB_X56_Y69_N18
\St:x_ar[1][1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][1]~2_combout\ = (\St~0_combout\ & (\St~75_combout\)) # (!\St~0_combout\ & ((\St:x_ar[1][1]~_emulated_q\ $ (\St:x_ar[1][1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~75_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[1][1]~_emulated_q\,
	datad => \St:x_ar[1][1]~1_combout\,
	combout => \St:x_ar[1][1]~2_combout\);

-- Location: LCCOMB_X58_Y65_N0
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\St:count[0]~q\ & (((\St:count[1]~q\)))) # (!\St:count[0]~q\ & ((\St:count[1]~q\ & (\St:x_ar[2][1]~2_combout\)) # (!\St:count[1]~q\ & ((\St:x_ar[0][1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[0]~q\,
	datab => \St:x_ar[2][1]~2_combout\,
	datac => \St:count[1]~q\,
	datad => \St:x_ar[0][1]~2_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X55_Y70_N28
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\St:count[0]~q\ & ((\Mux61~0_combout\ & (\St:x_ar[3][1]~2_combout\)) # (!\Mux61~0_combout\ & ((\St:x_ar[1][1]~2_combout\))))) # (!\St:count[0]~q\ & (((\Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][1]~2_combout\,
	datab => \St:x_ar[1][1]~2_combout\,
	datac => \St:count[0]~q\,
	datad => \Mux61~0_combout\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X55_Y70_N12
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (\Mux61~2_combout\ & ((\St:x_ar[6][1]~2_combout\) # ((!\Mux55~0_combout\)))) # (!\Mux61~2_combout\ & (((\Mux55~0_combout\ & \Mux61~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~2_combout\,
	datab => \Mux61~2_combout\,
	datac => \Mux55~0_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X62_Y66_N30
\St~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~88_combout\ = (\St:x_ar[6][2]~2_combout\ & (((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \St:x_ar[6][2]~2_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~88_combout\);

-- Location: LCCOMB_X62_Y66_N18
\St:x_ar[6][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][2]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~88_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[6][2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][2]~1_combout\,
	datac => \St~88_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[6][2]~1_combout\);

-- Location: LCCOMB_X62_Y67_N28
\x_ar~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~70_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux6~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[4][2]~2_combout\)))) # (!\Decoder3~1_combout\ & (\St:x_ar[4][2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \x_ar~70_combout\);

-- Location: LCCOMB_X63_Y69_N2
\St~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~82_combout\ = (\St:x_ar[5][2]~2_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][2]~2_combout\,
	datab => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~82_combout\);

-- Location: LCCOMB_X63_Y69_N18
\St:x_ar[5][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][2]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~82_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[5][2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][2]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~82_combout\,
	combout => \St:x_ar[5][2]~1_combout\);

-- Location: LCCOMB_X62_Y69_N30
\St:x_ar[5][2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][2]~2_combout\ = (\St~0_combout\ & (((\St~82_combout\)))) # (!\St~0_combout\ & (\St:x_ar[5][2]~_emulated_q\ $ (((\St:x_ar[5][2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][2]~_emulated_q\,
	datab => \St~82_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[5][2]~1_combout\,
	combout => \St:x_ar[5][2]~2_combout\);

-- Location: LCCOMB_X62_Y69_N22
\x_ar~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~75_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux6~3_combout\))) # (!\Decoder3~6_combout\ & (\St:x_ar[5][2]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\St:x_ar[5][2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \St:x_ar[5][2]~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \x_ar~75_combout\);

-- Location: LCCOMB_X62_Y69_N20
\x_ar~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~71_combout\ = (\Decoder3~2_combout\ & ((\Mux6~3_combout\))) # (!\Decoder3~2_combout\ & (\St:x_ar[0][2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][2]~2_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \x_ar~71_combout\);

-- Location: LCCOMB_X61_Y66_N4
\St~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~84_combout\ = (\St:x_ar[1][2]~2_combout\ & (!\L_in[2]~input_o\ & !\L_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][2]~2_combout\,
	datac => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~84_combout\);

-- Location: LCCOMB_X61_Y66_N28
\St:x_ar[1][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][2]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~84_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[1][2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][2]~1_combout\,
	datac => \St~84_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[1][2]~1_combout\);

-- Location: LCCOMB_X62_Y70_N8
\x_ar~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~78_combout\ = (\Decoder3~4_combout\ & ((\Mux15~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~4_combout\,
	datac => \x_ar~74_combout\,
	datad => \Mux15~3_combout\,
	combout => \x_ar~78_combout\);

-- Location: LCCOMB_X62_Y70_N26
\x_ar~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~81_combout\ = (\Decoder3~0_combout\ & ((\Mux15~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~75_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux15~3_combout\,
	combout => \x_ar~81_combout\);

-- Location: LCCOMB_X63_Y66_N14
\St~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~83_combout\ = (\St:x_ar[2][2]~2_combout\ & (!\L_in[2]~input_o\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~2_combout\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~83_combout\);

-- Location: LCCOMB_X63_Y66_N24
\St:x_ar[2][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][2]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~83_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[2][2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][2]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~83_combout\,
	combout => \St:x_ar[2][2]~1_combout\);

-- Location: LCCOMB_X62_Y70_N18
\x_ar~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~86_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux24~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~80_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \x_ar~80_combout\,
	datac => \Decoder3~1_combout\,
	datad => \Mux24~3_combout\,
	combout => \x_ar~86_combout\);

-- Location: LCCOMB_X63_Y67_N20
\x_ar~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~94_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux33~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~86_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~86_combout\,
	datad => \Mux33~3_combout\,
	combout => \x_ar~94_combout\);

-- Location: LCCOMB_X63_Y70_N0
\Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\x_ar~86_combout\) # ((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((!\St~66_combout\ & \x_ar~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~86_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~94_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X63_Y70_N10
\Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\St~66_combout\ & ((\Selector28~1_combout\ & ((\x_ar~73_combout\))) # (!\Selector28~1_combout\ & (\x_ar~80_combout\)))) # (!\St~66_combout\ & (((\Selector28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~80_combout\,
	datab => \x_ar~73_combout\,
	datac => \St~66_combout\,
	datad => \Selector28~1_combout\,
	combout => \Selector28~2_combout\);

-- Location: LCCOMB_X63_Y67_N22
\x_ar~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~91_combout\ = (\Decoder3~2_combout\ & ((\Mux33~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~83_combout\,
	datad => \Mux33~3_combout\,
	combout => \x_ar~91_combout\);

-- Location: LCCOMB_X62_Y70_N2
\x_ar~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~79_combout\ = (\Decoder3~5_combout\ & ((\Mux15~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~71_combout\,
	datad => \Mux15~3_combout\,
	combout => \x_ar~79_combout\);

-- Location: LCCOMB_X62_Y70_N4
\x_ar~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~88_combout\ = (\Decoder3~4_combout\ & ((\Mux24~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~4_combout\,
	datab => \x_ar~79_combout\,
	datad => \Mux24~3_combout\,
	combout => \x_ar~88_combout\);

-- Location: LCCOMB_X63_Y67_N2
\x_ar~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~95_combout\ = (\Decoder3~3_combout\ & ((\Mux33~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~3_combout\,
	datac => \x_ar~88_combout\,
	datad => \Mux33~3_combout\,
	combout => \x_ar~95_combout\);

-- Location: LCCOMB_X62_Y70_N22
\x_ar~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~89_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux24~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~77_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~77_combout\,
	datab => \Decoder3~6_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux24~3_combout\,
	combout => \x_ar~89_combout\);

-- Location: LCCOMB_X63_Y67_N14
\x_ar~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~93_combout\ = (\Decoder3~0_combout\ & ((\Mux33~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~89_combout\,
	datad => \Mux33~3_combout\,
	combout => \x_ar~93_combout\);

-- Location: LCCOMB_X65_Y67_N2
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & ((\x_ar~94_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # ((\x_ar~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~93_combout\,
	datad => \x_ar~94_combout\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X65_Y67_N28
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Add4~0_combout\ & ((\Mux42~0_combout\ & ((\x_ar~95_combout\))) # (!\Mux42~0_combout\ & (\x_ar~92_combout\)))) # (!\Add4~0_combout\ & (((\Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~92_combout\,
	datab => \Add4~0_combout\,
	datac => \x_ar~95_combout\,
	datad => \Mux42~0_combout\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X65_Y67_N10
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux39~0_combout\ & (\Mux39~1_combout\)) # (!\Mux39~0_combout\ & ((\Mux39~1_combout\ & (\x_ar~91_combout\)) # (!\Mux39~1_combout\ & ((\Mux42~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \Mux39~1_combout\,
	datac => \x_ar~91_combout\,
	datad => \Mux42~1_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X65_Y67_N12
\Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\Mux39~0_combout\ & ((\Mux42~2_combout\ & ((\x_ar~96_combout\))) # (!\Mux42~2_combout\ & (\x_ar~90_combout\)))) # (!\Mux39~0_combout\ & (((\Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \x_ar~90_combout\,
	datac => \x_ar~96_combout\,
	datad => \Mux42~2_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X63_Y67_N4
\x_ar~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~101_combout\ = (\Decoder3~0_combout\ & ((\Mux42~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datab => \x_ar~94_combout\,
	datad => \Mux42~3_combout\,
	combout => \x_ar~101_combout\);

-- Location: LCCOMB_X63_Y70_N28
\St:x_ar[2][2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][2]~7_combout\ = (\state.trans~q\ & (((\Equal8~0_combout\ & !\Equal15~0_combout\)) # (!\St~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.trans~q\,
	datab => \Equal8~0_combout\,
	datac => \St~65_combout\,
	datad => \Equal15~0_combout\,
	combout => \St:x_ar[2][2]~7_combout\);

-- Location: LCCOMB_X66_Y67_N24
\Mux53~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~13_combout\ = (!\St:x_count_ini[1]~2_combout\ & (!\St:x_count_ini[2]~2_combout\ & \St:x_count_ini[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \St:x_count_ini[0]~2_combout\,
	combout => \Mux53~13_combout\);

-- Location: LCCOMB_X62_Y67_N30
\Mux51~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~10_combout\ = ((\Mux53~13_combout\) # ((\Mux49~8_combout\) # (\x_ar~100_combout\))) # (!\Mux49~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~9_combout\,
	datab => \Mux53~13_combout\,
	datac => \Mux49~8_combout\,
	datad => \x_ar~100_combout\,
	combout => \Mux51~10_combout\);

-- Location: LCCOMB_X63_Y67_N10
\x_ar~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~102_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux42~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~92_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~92_combout\,
	datab => \Decoder3~6_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux42~3_combout\,
	combout => \x_ar~102_combout\);

-- Location: LCCOMB_X63_Y67_N0
\Mux51~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~11_combout\ = (!\Mux49~9_combout\ & ((\St:x_count_ini[0]~2_combout\ & ((\x_ar~102_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (\x_ar~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \Mux49~9_combout\,
	datac => \x_ar~95_combout\,
	datad => \x_ar~102_combout\,
	combout => \Mux51~11_combout\);

-- Location: LCCOMB_X63_Y67_N30
\Mux51~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~13_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux51~11_combout\))) # (!\St:x_count_ini[1]~2_combout\ & (\x_ar~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~101_combout\,
	datad => \Mux51~11_combout\,
	combout => \Mux51~13_combout\);

-- Location: LCCOMB_X65_Y67_N8
\x_ar~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~98_combout\ = (\Equal8~0_combout\ & ((\Mux42~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \x_ar~93_combout\,
	datad => \Mux42~3_combout\,
	combout => \x_ar~98_combout\);

-- Location: LCCOMB_X65_Y67_N16
\Mux51~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~14_combout\ = (\St:x_count_ini[1]~2_combout\) # ((\x_ar~99_combout\) # (!\St:x_count_ini[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \x_ar~99_combout\,
	combout => \Mux51~14_combout\);

-- Location: LCCOMB_X65_Y67_N20
\Mux51~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~9_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\Mux31~1_combout\ & ((\Mux51~14_combout\))) # (!\Mux31~1_combout\ & (\x_ar~98_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (((\Mux51~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \Mux31~1_combout\,
	datac => \x_ar~98_combout\,
	datad => \Mux51~14_combout\,
	combout => \Mux51~9_combout\);

-- Location: LCCOMB_X62_Y66_N0
\Mux51~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~12_combout\ = (\Mux51~8_combout\ & (\Mux51~10_combout\ & ((\Mux51~9_combout\)))) # (!\Mux51~8_combout\ & (((\Mux51~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~8_combout\,
	datab => \Mux51~10_combout\,
	datac => \Mux51~13_combout\,
	datad => \Mux51~9_combout\,
	combout => \Mux51~12_combout\);

-- Location: IOIBUF_X60_Y73_N1
\x_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: LCCOMB_X63_Y66_N6
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\St:x_ar[2][2]~6_combout\ & (\St:x_ar[2][2]~7_combout\)) # (!\St:x_ar[2][2]~6_combout\ & ((\St:x_ar[2][2]~7_combout\ & (\Mux51~12_combout\)) # (!\St:x_ar[2][2]~7_combout\ & ((\x_in[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~6_combout\,
	datab => \St:x_ar[2][2]~7_combout\,
	datac => \Mux51~12_combout\,
	datad => \x_in[2]~input_o\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X63_Y66_N0
\Selector28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~3_combout\ = (\St:x_ar[2][2]~6_combout\ & ((\Selector28~0_combout\ & (\Selector28~2_combout\)) # (!\Selector28~0_combout\ & ((\x_ar~101_combout\))))) # (!\St:x_ar[2][2]~6_combout\ & (((\Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~6_combout\,
	datab => \Selector28~2_combout\,
	datac => \x_ar~101_combout\,
	datad => \Selector28~0_combout\,
	combout => \Selector28~3_combout\);

-- Location: LCCOMB_X63_Y66_N4
\St:x_ar[2][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][2]~3_combout\ = \St:x_ar[2][2]~1_combout\ $ (\Selector28~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][2]~1_combout\,
	datad => \Selector28~3_combout\,
	combout => \St:x_ar[2][2]~3_combout\);

-- Location: FF_X63_Y66_N5
\St:x_ar[2][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[2][2]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[2][2]~_emulated_q\);

-- Location: LCCOMB_X63_Y66_N26
\St:x_ar[2][2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][2]~2_combout\ = (\St~0_combout\ & (\St~83_combout\)) # (!\St~0_combout\ & ((\St:x_ar[2][2]~_emulated_q\ $ (\St:x_ar[2][2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~83_combout\,
	datab => \St:x_ar[2][2]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[2][2]~1_combout\,
	combout => \St:x_ar[2][2]~2_combout\);

-- Location: LCCOMB_X62_Y69_N16
\x_ar~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~73_combout\ = (\Decoder3~4_combout\ & ((\Mux6~3_combout\))) # (!\Decoder3~4_combout\ & (\St:x_ar[2][2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][2]~2_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux6~3_combout\,
	combout => \x_ar~73_combout\);

-- Location: LCCOMB_X62_Y70_N14
\x_ar~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~80_combout\ = (\Decoder3~3_combout\ & ((\Mux15~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datab => \x_ar~73_combout\,
	datad => \Mux15~3_combout\,
	combout => \x_ar~80_combout\);

-- Location: LCCOMB_X62_Y70_N28
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & ((\x_ar~79_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # ((\x_ar~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~78_combout\,
	datad => \x_ar~79_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X62_Y70_N0
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Add4~0_combout\ & ((\Mux24~0_combout\ & ((\x_ar~80_combout\))) # (!\Mux24~0_combout\ & (\x_ar~77_combout\)))) # (!\Add4~0_combout\ & (((\Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~77_combout\,
	datab => \Add4~0_combout\,
	datac => \x_ar~80_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X62_Y70_N20
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux22~1_combout\ & ((\Mux22~0_combout\) # ((\Mux24~1_combout\)))) # (!\Mux22~1_combout\ & (!\Mux22~0_combout\ & (\x_ar~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~81_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X62_Y70_N24
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux22~0_combout\ & ((\Mux24~2_combout\ & (\x_ar~82_combout\)) # (!\Mux24~2_combout\ & ((\x_ar~76_combout\))))) # (!\Mux22~0_combout\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~82_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~76_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X63_Y67_N8
\x_ar~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~83_combout\ = (\Equal8~0_combout\ & ((\Mux24~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~81_combout\,
	datab => \Equal8~0_combout\,
	datad => \Mux24~3_combout\,
	combout => \x_ar~83_combout\);

-- Location: LCCOMB_X62_Y67_N16
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux31~1_combout\ & ((\Mux31~0_combout\) # ((\x_ar~84_combout\)))) # (!\Mux31~1_combout\ & (!\Mux31~0_combout\ & (\x_ar~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \x_ar~85_combout\,
	datad => \x_ar~84_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X63_Y67_N6
\x_ar~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~87_combout\ = (\Decoder3~3_combout\ & ((\Mux24~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~3_combout\,
	datac => \x_ar~78_combout\,
	datad => \Mux24~3_combout\,
	combout => \x_ar~87_combout\);

-- Location: LCCOMB_X63_Y67_N16
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~87_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & (\x_ar~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~88_combout\,
	datad => \x_ar~87_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X63_Y67_N18
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux33~1_combout\ & (\x_ar~89_combout\)) # (!\Mux33~1_combout\ & ((\x_ar~86_combout\))))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~89_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~86_combout\,
	datad => \Mux33~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X63_Y67_N28
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux31~0_combout\ & ((\Mux33~0_combout\ & ((\Mux33~2_combout\))) # (!\Mux33~0_combout\ & (\x_ar~83_combout\)))) # (!\Mux31~0_combout\ & (((\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \x_ar~83_combout\,
	datac => \Mux33~0_combout\,
	datad => \Mux33~2_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X63_Y67_N12
\x_ar~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~92_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux33~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~87_combout\)))) # (!\Decoder3~1_combout\ & (\x_ar~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~87_combout\,
	datab => \Decoder3~1_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux33~3_combout\,
	combout => \x_ar~92_combout\);

-- Location: LCCOMB_X61_Y66_N14
\Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\) # ((\x_ar~78_combout\)))) # (!\St~66_combout\ & (!\St:x_ar[1][0]~6_combout\ & ((\x_ar~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~78_combout\,
	datad => \x_ar~92_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X61_Y66_N24
\Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector19~1_combout\ & ((\x_ar~74_combout\))) # (!\Selector19~1_combout\ & (\x_ar~87_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~87_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \Selector19~1_combout\,
	datad => \x_ar~74_combout\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X61_Y66_N12
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\St:x_ar[1][0]~10_combout\ & (((\Mux51~12_combout\) # (\St:x_ar[1][0]~9_combout\)))) # (!\St:x_ar[1][0]~10_combout\ & (\x_in[2]~input_o\ & ((!\St:x_ar[1][0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[2]~input_o\,
	datab => \St:x_ar[1][0]~10_combout\,
	datac => \Mux51~12_combout\,
	datad => \St:x_ar[1][0]~9_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X61_Y66_N6
\Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\St:x_ar[1][0]~9_combout\ & ((\Selector19~0_combout\ & (\Selector19~2_combout\)) # (!\Selector19~0_combout\ & ((\x_ar~102_combout\))))) # (!\St:x_ar[1][0]~9_combout\ & (((\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~9_combout\,
	datab => \Selector19~2_combout\,
	datac => \x_ar~102_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X61_Y66_N0
\St:x_ar[1][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][2]~3_combout\ = \St:x_ar[1][2]~1_combout\ $ (\Selector19~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[1][2]~1_combout\,
	datad => \Selector19~3_combout\,
	combout => \St:x_ar[1][2]~3_combout\);

-- Location: FF_X61_Y66_N1
\St:x_ar[1][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[1][2]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[1][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[1][2]~_emulated_q\);

-- Location: LCCOMB_X61_Y66_N10
\St:x_ar[1][2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][2]~2_combout\ = (\St~0_combout\ & (\St~84_combout\)) # (!\St~0_combout\ & ((\St:x_ar[1][2]~_emulated_q\ $ (\St:x_ar[1][2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~84_combout\,
	datab => \St:x_ar[1][2]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[1][2]~1_combout\,
	combout => \St:x_ar[1][2]~2_combout\);

-- Location: LCCOMB_X62_Y69_N8
\x_ar~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~74_combout\ = (\Decoder3~5_combout\ & ((\Mux6~3_combout\))) # (!\Decoder3~5_combout\ & (\St:x_ar[1][2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][2]~2_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux6~3_combout\,
	combout => \x_ar~74_combout\);

-- Location: LCCOMB_X61_Y66_N18
\St:x_ar[3][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][2]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & (\St~86_combout\)) # (!GLOBAL(\St~0clkctrl_outclk\) & ((\St:x_ar[3][2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~86_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St:x_ar[3][2]~1_combout\,
	combout => \St:x_ar[3][2]~1_combout\);

-- Location: LCCOMB_X61_Y66_N2
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\St:x_ar[3][6]~6_combout\ & (((\St:x_ar[3][6]~7_combout\)))) # (!\St:x_ar[3][6]~6_combout\ & ((\St:x_ar[3][6]~7_combout\ & ((\Mux51~12_combout\))) # (!\St:x_ar[3][6]~7_combout\ & (\x_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[2]~input_o\,
	datab => \St:x_ar[3][6]~6_combout\,
	datac => \Mux51~12_combout\,
	datad => \St:x_ar[3][6]~7_combout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X61_Y66_N16
\Selector37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~3_combout\ = (\St:x_ar[3][6]~6_combout\ & ((\Selector37~0_combout\ & (\Selector37~2_combout\)) # (!\Selector37~0_combout\ & ((\x_ar~98_combout\))))) # (!\St:x_ar[3][6]~6_combout\ & (((\Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~2_combout\,
	datab => \St:x_ar[3][6]~6_combout\,
	datac => \x_ar~98_combout\,
	datad => \Selector37~0_combout\,
	combout => \Selector37~3_combout\);

-- Location: LCCOMB_X61_Y66_N8
\St:x_ar[3][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][2]~3_combout\ = \St:x_ar[3][2]~1_combout\ $ (\Selector37~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][2]~1_combout\,
	datad => \Selector37~3_combout\,
	combout => \St:x_ar[3][2]~3_combout\);

-- Location: FF_X61_Y66_N9
\St:x_ar[3][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[3][2]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[3][2]~_emulated_q\);

-- Location: LCCOMB_X61_Y66_N26
\St:x_ar[3][2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][2]~2_combout\ = (\St~0_combout\ & (\St~86_combout\)) # (!\St~0_combout\ & ((\St:x_ar[3][2]~_emulated_q\ $ (\St:x_ar[3][2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~86_combout\,
	datab => \St:x_ar[3][2]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[3][2]~1_combout\,
	combout => \St:x_ar[3][2]~2_combout\);

-- Location: LCCOMB_X62_Y69_N14
\x_ar~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~72_combout\ = (\Decoder3~3_combout\ & ((\Mux6~3_combout\))) # (!\Decoder3~3_combout\ & (\St:x_ar[3][2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~3_combout\,
	datac => \St:x_ar[3][2]~2_combout\,
	datad => \Mux6~3_combout\,
	combout => \x_ar~72_combout\);

-- Location: LCCOMB_X62_Y69_N2
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~72_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\x_ar~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~72_combout\,
	datad => \x_ar~73_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X62_Y69_N26
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux15~0_combout\ & ((\x_ar~74_combout\))) # (!\Mux15~0_combout\ & (\x_ar~71_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~71_combout\,
	datac => \x_ar~74_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X62_Y69_N0
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux14~1_combout\ & ((\Mux14~0_combout\) # ((\x_ar~70_combout\)))) # (!\Mux14~1_combout\ & (!\Mux14~0_combout\ & (\Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \x_ar~70_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X62_Y70_N16
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux14~0_combout\ & ((\Mux15~2_combout\ & ((\x_ar~75_combout\))) # (!\Mux15~2_combout\ & (\x_ar~69_combout\)))) # (!\Mux14~0_combout\ & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~69_combout\,
	datab => \Mux14~0_combout\,
	datac => \x_ar~75_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X62_Y67_N18
\x_ar~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~76_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux15~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~70_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \x_ar~70_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux15~3_combout\,
	combout => \x_ar~76_combout\);

-- Location: LCCOMB_X62_Y67_N14
\x_ar~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~85_combout\ = (\Decoder3~0_combout\ & ((\Mux24~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~76_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux24~3_combout\,
	combout => \x_ar~85_combout\);

-- Location: LCCOMB_X62_Y67_N22
\x_ar~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~96_combout\ = (\Equal8~0_combout\ & ((\Mux33~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \x_ar~85_combout\,
	datad => \Mux33~3_combout\,
	combout => \x_ar~96_combout\);

-- Location: LCCOMB_X62_Y67_N0
\x_ar~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~100_combout\ = (\Decoder3~2_combout\ & ((\Mux42~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~2_combout\,
	datac => \x_ar~96_combout\,
	datad => \Mux42~3_combout\,
	combout => \x_ar~100_combout\);

-- Location: LCCOMB_X62_Y67_N24
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\St:x_ar[4][6]~8_combout\ & (((\St:x_ar[4][6]~7_combout\) # (\Mux51~12_combout\)))) # (!\St:x_ar[4][6]~8_combout\ & (\x_in[2]~input_o\ & (!\St:x_ar[4][6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[2]~input_o\,
	datab => \St:x_ar[4][6]~8_combout\,
	datac => \St:x_ar[4][6]~7_combout\,
	datad => \Mux51~12_combout\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X62_Y67_N2
\Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~3_combout\ = (\St:x_ar[4][6]~7_combout\ & ((\Selector46~0_combout\ & (\Selector46~2_combout\)) # (!\Selector46~0_combout\ & ((\x_ar~100_combout\))))) # (!\St:x_ar[4][6]~7_combout\ & (((\Selector46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~2_combout\,
	datab => \St:x_ar[4][6]~7_combout\,
	datac => \x_ar~100_combout\,
	datad => \Selector46~0_combout\,
	combout => \Selector46~3_combout\);

-- Location: LCCOMB_X62_Y67_N8
\St:x_ar[4][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][2]~3_combout\ = \St:x_ar[4][2]~1_combout\ $ (\Selector46~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][2]~1_combout\,
	datad => \Selector46~3_combout\,
	combout => \St:x_ar[4][2]~3_combout\);

-- Location: FF_X62_Y67_N9
\St:x_ar[4][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[4][2]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[4][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[4][2]~_emulated_q\);

-- Location: LCCOMB_X62_Y67_N4
\St~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~87_combout\ = (\St:x_ar[4][2]~2_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \St:x_ar[4][2]~2_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~87_combout\);

-- Location: LCCOMB_X62_Y67_N6
\St:x_ar[4][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][2]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~87_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[4][2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][2]~1_combout\,
	datac => \St~87_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[4][2]~1_combout\);

-- Location: LCCOMB_X62_Y67_N26
\St:x_ar[4][2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][2]~2_combout\ = (\St~0_combout\ & (\St~87_combout\)) # (!\St~0_combout\ & ((\St:x_ar[4][2]~_emulated_q\ $ (\St:x_ar[4][2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~87_combout\,
	datab => \St:x_ar[4][2]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[4][2]~1_combout\,
	combout => \St:x_ar[4][2]~2_combout\);

-- Location: LCCOMB_X62_Y69_N4
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux8~2_combout\ & (((\Mux8~3_combout\)))) # (!\Mux8~2_combout\ & ((\Mux8~3_combout\ & (\St:x_ar[5][2]~2_combout\)) # (!\Mux8~3_combout\ & ((\St:x_ar[6][2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \St:x_ar[5][2]~2_combout\,
	datac => \St:x_ar[6][2]~2_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X58_Y65_N22
\St~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~85_combout\ = (\St:x_ar[0][2]~2_combout\ & (!\L_in[1]~input_o\ & (!\L_in[0]~input_o\ & !\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][2]~2_combout\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~85_combout\);

-- Location: LCCOMB_X58_Y65_N18
\St:x_ar[0][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][2]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~85_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[0][2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[0][2]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~85_combout\,
	combout => \St:x_ar[0][2]~1_combout\);

-- Location: LCCOMB_X58_Y65_N8
\St:x_ar[0][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][2]~3_combout\ = \x_in[2]~input_o\ $ (\St:x_ar[0][2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[2]~input_o\,
	datad => \St:x_ar[0][2]~1_combout\,
	combout => \St:x_ar[0][2]~3_combout\);

-- Location: FF_X58_Y65_N3
\St:x_ar[0][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_ar[0][2]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_ar[0][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[0][2]~_emulated_q\);

-- Location: LCCOMB_X58_Y65_N2
\St:x_ar[0][2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][2]~2_combout\ = (\St~0_combout\ & (\St~85_combout\)) # (!\St~0_combout\ & ((\St:x_ar[0][2]~_emulated_q\ $ (\St:x_ar[0][2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~85_combout\,
	datac => \St:x_ar[0][2]~_emulated_q\,
	datad => \St:x_ar[0][2]~1_combout\,
	combout => \St:x_ar[0][2]~2_combout\);

-- Location: LCCOMB_X62_Y69_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & ((\St:x_ar[2][2]~2_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # ((\St:x_ar[3][2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \St:x_ar[3][2]~2_combout\,
	datad => \St:x_ar[2][2]~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X62_Y69_N6
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Add4~0_combout\ & ((\Mux6~0_combout\ & ((\St:x_ar[0][2]~2_combout\))) # (!\Mux6~0_combout\ & (\St:x_ar[1][2]~2_combout\)))) # (!\Add4~0_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \St:x_ar[1][2]~2_combout\,
	datac => \St:x_ar[0][2]~2_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X62_Y69_N10
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux8~2_combout\ & ((\Mux6~2_combout\ & (\St:x_ar[4][2]~2_combout\)) # (!\Mux6~2_combout\ & ((\Mux6~1_combout\))))) # (!\Mux8~2_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \St:x_ar[4][2]~2_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X62_Y70_N6
\x_ar~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~69_combout\ = (\Decoder3~0_combout\ & ((\Mux6~3_combout\))) # (!\Decoder3~0_combout\ & (\St:x_ar[6][2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][2]~2_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux6~3_combout\,
	combout => \x_ar~69_combout\);

-- Location: LCCOMB_X62_Y70_N30
\x_ar~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~82_combout\ = (\Equal8~0_combout\ & ((\Mux15~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \x_ar~69_combout\,
	datad => \Mux15~3_combout\,
	combout => \x_ar~82_combout\);

-- Location: LCCOMB_X62_Y67_N20
\x_ar~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~84_combout\ = (\Decoder3~2_combout\ & ((\Mux24~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~2_combout\,
	datac => \x_ar~82_combout\,
	datad => \Mux24~3_combout\,
	combout => \x_ar~84_combout\);

-- Location: LCCOMB_X65_Y67_N4
\x_ar~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~90_combout\ = (\Decoder3~5_combout\ & ((\Mux33~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~84_combout\,
	datad => \Mux33~3_combout\,
	combout => \x_ar~90_combout\);

-- Location: LCCOMB_X65_Y67_N18
\x_ar~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~99_combout\ = (\Decoder3~4_combout\ & ((\Mux42~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~90_combout\,
	datad => \Mux42~3_combout\,
	combout => \x_ar~99_combout\);

-- Location: LCCOMB_X63_Y70_N12
\Selector64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\) # ((\x_ar~84_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (!\St~66_combout\ & ((\x_ar~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~84_combout\,
	datad => \x_ar~90_combout\,
	combout => \Selector64~1_combout\);

-- Location: LCCOMB_X63_Y70_N26
\Selector64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~2_combout\ = (\St~66_combout\ & ((\Selector64~1_combout\ & (\x_ar~69_combout\)) # (!\Selector64~1_combout\ & ((\x_ar~82_combout\))))) # (!\St~66_combout\ & (((\Selector64~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~69_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~82_combout\,
	datad => \Selector64~1_combout\,
	combout => \Selector64~2_combout\);

-- Location: LCCOMB_X62_Y66_N2
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\St:x_ar[6][1]~6_combout\ & (((\St:x_ar[6][1]~7_combout\)))) # (!\St:x_ar[6][1]~6_combout\ & ((\St:x_ar[6][1]~7_combout\ & ((\Mux51~12_combout\))) # (!\St:x_ar[6][1]~7_combout\ & (\x_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~6_combout\,
	datab => \x_in[2]~input_o\,
	datac => \St:x_ar[6][1]~7_combout\,
	datad => \Mux51~12_combout\,
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X62_Y66_N24
\Selector64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~3_combout\ = (\St:x_ar[6][1]~6_combout\ & ((\Selector64~0_combout\ & ((\Selector64~2_combout\))) # (!\Selector64~0_combout\ & (\x_ar~99_combout\)))) # (!\St:x_ar[6][1]~6_combout\ & (((\Selector64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~6_combout\,
	datab => \x_ar~99_combout\,
	datac => \Selector64~2_combout\,
	datad => \Selector64~0_combout\,
	combout => \Selector64~3_combout\);

-- Location: LCCOMB_X62_Y66_N20
\St:x_ar[6][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][2]~3_combout\ = \St:x_ar[6][2]~1_combout\ $ (\Selector64~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[6][2]~1_combout\,
	datad => \Selector64~3_combout\,
	combout => \St:x_ar[6][2]~3_combout\);

-- Location: FF_X62_Y66_N21
\St:x_ar[6][2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[6][2]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[6][2]~_emulated_q\);

-- Location: LCCOMB_X62_Y66_N26
\St:x_ar[6][2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][2]~2_combout\ = (\St~0_combout\ & (\St~88_combout\)) # (!\St~0_combout\ & ((\St:x_ar[6][2]~_emulated_q\ $ (\St:x_ar[6][2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~88_combout\,
	datab => \St:x_ar[6][2]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[6][2]~1_combout\,
	combout => \St:x_ar[6][2]~2_combout\);

-- Location: LCCOMB_X68_Y69_N4
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\St:count[1]~q\ & (\St:count[0]~q\)) # (!\St:count[1]~q\ & ((\St:count[0]~q\ & (\St:x_ar[1][2]~2_combout\)) # (!\St:count[0]~q\ & ((\St:x_ar[0][2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:count[0]~q\,
	datac => \St:x_ar[1][2]~2_combout\,
	datad => \St:x_ar[0][2]~2_combout\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X68_Y69_N6
\Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\St:count[1]~q\ & ((\Mux60~0_combout\ & (\St:x_ar[3][2]~2_combout\)) # (!\Mux60~0_combout\ & ((\St:x_ar[2][2]~2_combout\))))) # (!\St:count[1]~q\ & (((\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:x_ar[3][2]~2_combout\,
	datac => \Mux60~0_combout\,
	datad => \St:x_ar[2][2]~2_combout\,
	combout => \Mux60~1_combout\);

-- Location: LCCOMB_X68_Y69_N16
\Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = (\Mux55~0_combout\ & (((\Mux55~1_combout\) # (\Mux60~1_combout\)))) # (!\Mux55~0_combout\ & (\St:x_ar[4][2]~2_combout\ & (!\Mux55~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][2]~2_combout\,
	datab => \Mux55~0_combout\,
	datac => \Mux55~1_combout\,
	datad => \Mux60~1_combout\,
	combout => \Mux60~2_combout\);

-- Location: LCCOMB_X68_Y69_N26
\Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = (\Mux55~1_combout\ & ((\Mux60~2_combout\ & (\St:x_ar[6][2]~2_combout\)) # (!\Mux60~2_combout\ & ((\St:x_ar[5][2]~2_combout\))))) # (!\Mux55~1_combout\ & (((\Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \St:x_ar[6][2]~2_combout\,
	datac => \St:x_ar[5][2]~2_combout\,
	datad => \Mux60~2_combout\,
	combout => \Mux60~3_combout\);

-- Location: LCCOMB_X58_Y65_N28
\St~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~90_combout\ = (!\L_in[2]~input_o\ & (\St:x_ar[2][3]~2_combout\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \St:x_ar[2][3]~2_combout\,
	combout => \St~90_combout\);

-- Location: LCCOMB_X58_Y65_N12
\St:x_ar[2][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][3]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~90_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[2][3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][3]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~90_combout\,
	combout => \St:x_ar[2][3]~1_combout\);

-- Location: LCCOMB_X58_Y65_N16
\St:x_ar[2][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][3]~2_combout\ = (\St~0_combout\ & (((\St~90_combout\)))) # (!\St~0_combout\ & (\St:x_ar[2][3]~_emulated_q\ $ (((\St:x_ar[2][3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][3]~_emulated_q\,
	datab => \St~90_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[2][3]~1_combout\,
	combout => \St:x_ar[2][3]~2_combout\);

-- Location: LCCOMB_X58_Y65_N6
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\St:count[1]~q\ & (((\St:x_ar[2][3]~2_combout\) # (\St:count[0]~q\)))) # (!\St:count[1]~q\ & (\St:x_ar[0][3]~2_combout\ & ((!\St:count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][3]~2_combout\,
	datab => \St:x_ar[2][3]~2_combout\,
	datac => \St:count[1]~q\,
	datad => \St:count[0]~q\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X57_Y70_N26
\St~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~92_combout\ = (\St:x_ar[3][3]~2_combout\ & !\L_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][3]~2_combout\,
	datac => \L_in[2]~input_o\,
	combout => \St~92_combout\);

-- Location: LCCOMB_X57_Y70_N2
\St:x_ar[3][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][3]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~92_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[3][3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][3]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~92_combout\,
	combout => \St:x_ar[3][3]~1_combout\);

-- Location: LCCOMB_X58_Y68_N8
\St~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~94_combout\ = (\St:x_ar[4][3]~2_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \St:x_ar[4][3]~2_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~94_combout\);

-- Location: LCCOMB_X58_Y68_N16
\St:x_ar[4][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][3]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~94_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[4][3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[4][3]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~94_combout\,
	combout => \St:x_ar[4][3]~1_combout\);

-- Location: LCCOMB_X63_Y69_N10
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\St:x_count_ini[0]~2_combout\ & ((!\St:x_count_ini[2]~2_combout\) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # (\St:x_count_ini[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X57_Y66_N28
\St~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~95_combout\ = (\St:x_ar[6][3]~2_combout\ & (((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)) # (!\L_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \St:x_ar[6][3]~2_combout\,
	combout => \St~95_combout\);

-- Location: LCCOMB_X57_Y66_N6
\St:x_ar[6][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][3]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~95_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[6][3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][3]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~95_combout\,
	combout => \St:x_ar[6][3]~1_combout\);

-- Location: LCCOMB_X57_Y66_N0
\St:x_ar[6][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][3]~2_combout\ = (\St~0_combout\ & (((\St~95_combout\)))) # (!\St~0_combout\ & (\St:x_ar[6][3]~_emulated_q\ $ (((\St:x_ar[6][3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][3]~_emulated_q\,
	datab => \St~95_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[6][3]~1_combout\,
	combout => \St:x_ar[6][3]~2_combout\);

-- Location: LCCOMB_X58_Y65_N14
\St~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~91_combout\ = (!\L_in[0]~input_o\ & (!\L_in[1]~input_o\ & (\St:x_ar[0][3]~2_combout\ & !\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \St:x_ar[0][3]~2_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~91_combout\);

-- Location: LCCOMB_X58_Y65_N10
\St:x_ar[0][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][3]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~91_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[0][3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][3]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~91_combout\,
	combout => \St:x_ar[0][3]~1_combout\);

-- Location: LCCOMB_X57_Y65_N20
\St:x_ar[0][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][3]~3_combout\ = \x_in[3]~input_o\ $ (\St:x_ar[0][3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[3]~input_o\,
	datad => \St:x_ar[0][3]~1_combout\,
	combout => \St:x_ar[0][3]~3_combout\);

-- Location: FF_X58_Y65_N31
\St:x_ar[0][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_ar[0][3]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_ar[0][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[0][3]~_emulated_q\);

-- Location: LCCOMB_X58_Y65_N30
\St:x_ar[0][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][3]~2_combout\ = (\St~0_combout\ & (\St~91_combout\)) # (!\St~0_combout\ & ((\St:x_ar[0][3]~_emulated_q\ $ (\St:x_ar[0][3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~91_combout\,
	datac => \St:x_ar[0][3]~_emulated_q\,
	datad => \St:x_ar[0][3]~1_combout\,
	combout => \St:x_ar[0][3]~2_combout\);

-- Location: LCCOMB_X57_Y67_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\St:x_ar[2][3]~2_combout\) # (!\St:x_count_ini[1]~2_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (\St:x_ar[3][3]~2_combout\ & (!\St:x_count_ini[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_ar[3][3]~2_combout\,
	datac => \St:x_count_ini[1]~2_combout\,
	datad => \St:x_ar[2][3]~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X57_Y67_N28
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Add4~0_combout\ & ((\Mux5~0_combout\ & ((\St:x_ar[0][3]~2_combout\))) # (!\Mux5~0_combout\ & (\St:x_ar[1][3]~2_combout\)))) # (!\Add4~0_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][3]~2_combout\,
	datab => \Add4~0_combout\,
	datac => \St:x_ar[0][3]~2_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X57_Y67_N6
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux8~2_combout\ & (((\Mux8~3_combout\) # (\Mux5~1_combout\)))) # (!\Mux8~2_combout\ & (\St:x_ar[6][3]~2_combout\ & (!\Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \St:x_ar[6][3]~2_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X57_Y67_N16
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux8~3_combout\ & ((\Mux5~2_combout\ & ((\St:x_ar[4][3]~2_combout\))) # (!\Mux5~2_combout\ & (\St:x_ar[5][3]~2_combout\)))) # (!\Mux8~3_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][3]~2_combout\,
	datab => \Mux8~3_combout\,
	datac => \St:x_ar[4][3]~2_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X57_Y67_N18
\x_ar~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~107_combout\ = (\Decoder3~4_combout\ & ((\Mux5~3_combout\))) # (!\Decoder3~4_combout\ & (\St:x_ar[2][3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][3]~2_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux5~3_combout\,
	combout => \x_ar~107_combout\);

-- Location: LCCOMB_X58_Y67_N4
\x_ar~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~113_combout\ = (\Decoder3~3_combout\ & ((\Mux14~5_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~3_combout\,
	datac => \x_ar~107_combout\,
	datad => \Mux14~5_combout\,
	combout => \x_ar~113_combout\);

-- Location: LCCOMB_X57_Y67_N26
\x_ar~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~105_combout\ = (\Decoder3~2_combout\ & ((\Mux5~3_combout\))) # (!\Decoder3~2_combout\ & (\St:x_ar[0][3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~2_combout\,
	datac => \St:x_ar[0][3]~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \x_ar~105_combout\);

-- Location: LCCOMB_X58_Y67_N8
\x_ar~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~112_combout\ = (\Decoder3~5_combout\ & ((\Mux14~5_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \x_ar~105_combout\,
	datad => \Mux14~5_combout\,
	combout => \x_ar~112_combout\);

-- Location: LCCOMB_X57_Y67_N30
\x_ar~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~108_combout\ = (\Decoder3~5_combout\ & ((\Mux5~3_combout\))) # (!\Decoder3~5_combout\ & (\St:x_ar[1][3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][3]~2_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux5~3_combout\,
	combout => \x_ar~108_combout\);

-- Location: LCCOMB_X57_Y67_N2
\x_ar~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~111_combout\ = (\Decoder3~4_combout\ & ((\Mux14~5_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~4_combout\,
	datac => \x_ar~108_combout\,
	datad => \Mux14~5_combout\,
	combout => \x_ar~111_combout\);

-- Location: LCCOMB_X58_Y67_N10
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & (\x_ar~112_combout\))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # ((\x_ar~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~112_combout\,
	datad => \x_ar~111_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X58_Y67_N26
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Add4~0_combout\ & ((\Mux23~0_combout\ & (\x_ar~113_combout\)) # (!\Mux23~0_combout\ & ((\x_ar~110_combout\))))) # (!\Add4~0_combout\ & (((\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~113_combout\,
	datac => \x_ar~110_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X58_Y67_N28
\x_ar~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~114_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux14~5_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~103_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~103_combout\,
	datab => \Decoder3~6_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux14~5_combout\,
	combout => \x_ar~114_combout\);

-- Location: LCCOMB_X56_Y65_N28
\St~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~93_combout\ = (\St:x_ar[5][3]~2_combout\ & ((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \St:x_ar[5][3]~2_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~93_combout\);

-- Location: LCCOMB_X56_Y65_N12
\St:x_ar[5][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][3]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~93_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[5][3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][3]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~93_combout\,
	combout => \St:x_ar[5][3]~1_combout\);

-- Location: IOIBUF_X58_Y73_N15
\x_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: LCCOMB_X59_Y67_N22
\x_ar~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~118_combout\ = (\Equal8~0_combout\ & ((\Mux23~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~115_combout\,
	datac => \Equal8~0_combout\,
	datad => \Mux23~3_combout\,
	combout => \x_ar~118_combout\);

-- Location: LCCOMB_X59_Y67_N26
\x_ar~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~125_combout\ = (\Decoder3~2_combout\ & ((\Mux32~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~118_combout\,
	datad => \Mux32~3_combout\,
	combout => \x_ar~125_combout\);

-- Location: LCCOMB_X57_Y65_N22
\x_ar~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~126_combout\ = (\Decoder3~5_combout\ & ((\Mux32~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \x_ar~117_combout\,
	datad => \Mux32~3_combout\,
	combout => \x_ar~126_combout\);

-- Location: LCCOMB_X57_Y67_N4
\x_ar~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~104_combout\ = (\Decoder3~0_combout\ & ((\Mux5~3_combout\))) # (!\Decoder3~0_combout\ & (\St:x_ar[6][3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][3]~2_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux5~3_combout\,
	combout => \x_ar~104_combout\);

-- Location: LCCOMB_X58_Y67_N12
\x_ar~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~116_combout\ = (\Equal8~0_combout\ & ((\Mux14~5_combout\))) # (!\Equal8~0_combout\ & (\x_ar~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~104_combout\,
	datac => \Equal8~0_combout\,
	datad => \Mux14~5_combout\,
	combout => \x_ar~116_combout\);

-- Location: LCCOMB_X59_Y65_N16
\x_ar~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~121_combout\ = (\Mux22~1_combout\ & ((\Mux23~2_combout\ & (\x_ar~116_combout\)) # (!\Mux23~2_combout\ & ((\Mux23~1_combout\))))) # (!\Mux22~1_combout\ & (((\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \x_ar~116_combout\,
	datac => \Mux23~2_combout\,
	datad => \Mux23~1_combout\,
	combout => \x_ar~121_combout\);

-- Location: LCCOMB_X59_Y65_N24
\x_ar~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~123_combout\ = (\Decoder3~4_combout\ & ((\x_ar~121_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~112_combout\,
	datab => \Decoder3~4_combout\,
	datad => \x_ar~121_combout\,
	combout => \x_ar~123_combout\);

-- Location: LCCOMB_X59_Y65_N8
\x_ar~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~130_combout\ = (\Decoder3~3_combout\ & ((\Mux32~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datab => \x_ar~123_combout\,
	datad => \Mux32~3_combout\,
	combout => \x_ar~130_combout\);

-- Location: LCCOMB_X58_Y67_N24
\x_ar~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~120_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux23~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~113_combout\)))) # (!\Decoder3~1_combout\ & (((\x_ar~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~113_combout\,
	datad => \Mux23~3_combout\,
	combout => \x_ar~120_combout\);

-- Location: LCCOMB_X59_Y65_N28
\x_ar~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~129_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux32~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~120_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~120_combout\,
	datad => \Mux32~3_combout\,
	combout => \x_ar~129_combout\);

-- Location: LCCOMB_X59_Y65_N6
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\x_ar~129_combout\) # (!\St:x_count_ini[1]~2_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (\x_ar~128_combout\ & (!\St:x_count_ini[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \x_ar~128_combout\,
	datac => \St:x_count_ini[1]~2_combout\,
	datad => \x_ar~129_combout\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X59_Y65_N22
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\Add4~0_combout\ & ((\Mux41~0_combout\ & ((\x_ar~130_combout\))) # (!\Mux41~0_combout\ & (\x_ar~127_combout\)))) # (!\Add4~0_combout\ & (((\Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~127_combout\,
	datab => \Add4~0_combout\,
	datac => \x_ar~130_combout\,
	datad => \Mux41~0_combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X57_Y65_N12
\Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Mux39~0_combout\ & ((\Mux39~1_combout\) # ((\x_ar~126_combout\)))) # (!\Mux39~0_combout\ & (!\Mux39~1_combout\ & ((\Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \Mux39~1_combout\,
	datac => \x_ar~126_combout\,
	datad => \Mux41~1_combout\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X57_Y65_N2
\Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\Mux39~1_combout\ & ((\Mux41~2_combout\ & (\x_ar~131_combout\)) # (!\Mux41~2_combout\ & ((\x_ar~125_combout\))))) # (!\Mux39~1_combout\ & (((\Mux41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~131_combout\,
	datab => \Mux39~1_combout\,
	datac => \x_ar~125_combout\,
	datad => \Mux41~2_combout\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X57_Y65_N4
\x_ar~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~136_combout\ = (\Decoder3~5_combout\ & ((\Mux41~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \x_ar~125_combout\,
	datad => \Mux41~3_combout\,
	combout => \x_ar~136_combout\);

-- Location: LCCOMB_X56_Y65_N8
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\St:x_ar[5][4]~7_combout\ & (((\St:x_ar[5][4]~6_combout\)))) # (!\St:x_ar[5][4]~7_combout\ & ((\St:x_ar[5][4]~6_combout\ & ((\x_ar~136_combout\))) # (!\St:x_ar[5][4]~6_combout\ & (\x_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \x_in[3]~input_o\,
	datac => \St:x_ar[5][4]~6_combout\,
	datad => \x_ar~136_combout\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X57_Y65_N0
\x_ar~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~135_combout\ = (\Decoder3~4_combout\ & ((\Mux41~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~126_combout\,
	datad => \Mux41~3_combout\,
	combout => \x_ar~135_combout\);

-- Location: LCCOMB_X59_Y65_N30
\x_ar~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~122_combout\ = (\Decoder3~3_combout\ & ((\x_ar~121_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datac => \x_ar~111_combout\,
	datad => \x_ar~121_combout\,
	combout => \x_ar~122_combout\);

-- Location: LCCOMB_X59_Y65_N12
\x_ar~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~127_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux32~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~122_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \x_ar~122_combout\,
	datad => \Mux32~3_combout\,
	combout => \x_ar~127_combout\);

-- Location: LCCOMB_X57_Y65_N8
\x_ar~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~133_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux41~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~127_combout\)))) # (!\Decoder3~6_combout\ & (((\x_ar~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~127_combout\,
	datad => \Mux41~3_combout\,
	combout => \x_ar~133_combout\);

-- Location: LCCOMB_X57_Y65_N6
\x_ar~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~134_combout\ = (\Decoder3~0_combout\ & ((\Mux41~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \x_ar~129_combout\,
	datad => \Mux41~3_combout\,
	combout => \x_ar~134_combout\);

-- Location: LCCOMB_X57_Y65_N28
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & (\x_ar~133_combout\))) # (!\St:x_count_ini[1]~2_combout\ & (((\x_ar~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~133_combout\,
	datad => \x_ar~134_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X57_Y65_N18
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux50~0_combout\) # ((!\St:x_count_ini[0]~2_combout\ & (\St:x_count_ini[1]~2_combout\ & \x_ar~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~130_combout\,
	datad => \Mux50~0_combout\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X57_Y65_N26
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (\Mux49~9_combout\ & (((\Mux49~8_combout\)))) # (!\Mux49~9_combout\ & ((\Mux49~8_combout\ & ((\Mux50~1_combout\))) # (!\Mux49~8_combout\ & (\x_ar~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~9_combout\,
	datab => \x_ar~135_combout\,
	datac => \Mux49~8_combout\,
	datad => \Mux50~1_combout\,
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X57_Y65_N10
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (\Mux49~9_combout\ & ((\Mux50~2_combout\ & (\x_ar~136_combout\)) # (!\Mux50~2_combout\ & ((\x_ar~132_combout\))))) # (!\Mux49~9_combout\ & (((\Mux50~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~9_combout\,
	datab => \x_ar~136_combout\,
	datac => \Mux50~2_combout\,
	datad => \x_ar~132_combout\,
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X57_Y65_N14
\Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~4_combout\ = (\Mux31~1_combout\ & (((\Mux50~3_combout\)))) # (!\Mux31~1_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~137_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\Mux50~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \x_ar~137_combout\,
	datac => \St:x_count_ini[0]~2_combout\,
	datad => \Mux50~3_combout\,
	combout => \Mux50~4_combout\);

-- Location: LCCOMB_X59_Y67_N24
\Selector54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\x_ar~118_combout\) # ((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((\x_ar~125_combout\ & !\St~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~118_combout\,
	datac => \x_ar~125_combout\,
	datad => \St~66_combout\,
	combout => \Selector54~1_combout\);

-- Location: LCCOMB_X59_Y67_N10
\Selector54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~2_combout\ = (\St~66_combout\ & ((\Selector54~1_combout\ & ((\x_ar~109_combout\))) # (!\Selector54~1_combout\ & (\x_ar~115_combout\)))) # (!\St~66_combout\ & (((\Selector54~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~115_combout\,
	datac => \x_ar~109_combout\,
	datad => \Selector54~1_combout\,
	combout => \Selector54~2_combout\);

-- Location: LCCOMB_X56_Y65_N6
\Selector54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~3_combout\ = (\St:x_ar[5][4]~7_combout\ & ((\Selector54~0_combout\ & ((\Selector54~2_combout\))) # (!\Selector54~0_combout\ & (\Mux50~4_combout\)))) # (!\St:x_ar[5][4]~7_combout\ & (\Selector54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \Selector54~0_combout\,
	datac => \Mux50~4_combout\,
	datad => \Selector54~2_combout\,
	combout => \Selector54~3_combout\);

-- Location: LCCOMB_X56_Y65_N2
\St:x_ar[5][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][3]~3_combout\ = \St:x_ar[5][3]~1_combout\ $ (\Selector54~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[5][3]~1_combout\,
	datad => \Selector54~3_combout\,
	combout => \St:x_ar[5][3]~3_combout\);

-- Location: FF_X56_Y65_N3
\St:x_ar[5][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[5][3]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[5][4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[5][3]~_emulated_q\);

-- Location: LCCOMB_X56_Y65_N16
\St:x_ar[5][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][3]~2_combout\ = (\St~0_combout\ & (\St~93_combout\)) # (!\St~0_combout\ & ((\St:x_ar[5][3]~_emulated_q\ $ (\St:x_ar[5][3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~93_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[5][3]~_emulated_q\,
	datad => \St:x_ar[5][3]~1_combout\,
	combout => \St:x_ar[5][3]~2_combout\);

-- Location: LCCOMB_X61_Y67_N0
\x_ar~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~109_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux5~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[5][3]~2_combout\)))) # (!\Decoder3~6_combout\ & (((\St:x_ar[5][3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \St:x_ar[5][3]~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \x_ar~109_combout\);

-- Location: LCCOMB_X59_Y67_N28
\x_ar~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~115_combout\ = (\Decoder3~0_combout\ & ((\Mux14~5_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \x_ar~109_combout\,
	datad => \Mux14~5_combout\,
	combout => \x_ar~115_combout\);

-- Location: LCCOMB_X58_Y67_N2
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux22~1_combout\ & (((\Mux22~0_combout\)))) # (!\Mux22~1_combout\ & ((\Mux22~0_combout\ & (\x_ar~114_combout\)) # (!\Mux22~0_combout\ & ((\x_ar~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \x_ar~114_combout\,
	datac => \Mux22~0_combout\,
	datad => \x_ar~115_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X58_Y67_N18
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux22~1_combout\ & ((\Mux23~2_combout\ & (\x_ar~116_combout\)) # (!\Mux23~2_combout\ & ((\Mux23~1_combout\))))) # (!\Mux22~1_combout\ & (((\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~116_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux23~2_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X58_Y67_N16
\x_ar~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~117_combout\ = (\Decoder3~2_combout\ & ((\Mux23~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~116_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux23~3_combout\,
	combout => \x_ar~117_combout\);

-- Location: LCCOMB_X58_Y67_N14
\x_ar~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~119_combout\ = (\Decoder3~0_combout\ & ((\Mux23~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~114_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux23~3_combout\,
	combout => \x_ar~119_combout\);

-- Location: LCCOMB_X59_Y67_N4
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux31~1_combout\ & (\Mux31~0_combout\)) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & (\x_ar~118_combout\)) # (!\Mux31~0_combout\ & ((\x_ar~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \x_ar~118_combout\,
	datad => \x_ar~119_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X59_Y65_N18
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~122_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~122_combout\,
	datad => \x_ar~123_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X59_Y65_N0
\Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux32~1_combout\ & (\x_ar~124_combout\)) # (!\Mux32~1_combout\ & ((\x_ar~120_combout\))))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~124_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~120_combout\,
	datad => \Mux32~1_combout\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X59_Y65_N10
\Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\Mux31~1_combout\ & ((\Mux32~0_combout\ & ((\Mux32~2_combout\))) # (!\Mux32~0_combout\ & (\x_ar~117_combout\)))) # (!\Mux31~1_combout\ & (((\Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \x_ar~117_combout\,
	datac => \Mux32~0_combout\,
	datad => \Mux32~2_combout\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X59_Y65_N20
\x_ar~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~131_combout\ = (\Equal8~0_combout\ & ((\Mux32~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~119_combout\,
	datac => \Equal8~0_combout\,
	datad => \Mux32~3_combout\,
	combout => \x_ar~131_combout\);

-- Location: LCCOMB_X58_Y68_N6
\x_ar~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~132_combout\ = (\Decoder3~2_combout\ & ((\Mux41~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datab => \x_ar~131_combout\,
	datad => \Mux41~3_combout\,
	combout => \x_ar~132_combout\);

-- Location: LCCOMB_X58_Y68_N4
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\St:x_ar[4][6]~7_combout\ & (((\St:x_ar[4][6]~8_combout\) # (\x_ar~132_combout\)))) # (!\St:x_ar[4][6]~7_combout\ & (\x_in[3]~input_o\ & (!\St:x_ar[4][6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[3]~input_o\,
	datab => \St:x_ar[4][6]~7_combout\,
	datac => \St:x_ar[4][6]~8_combout\,
	datad => \x_ar~132_combout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X58_Y68_N18
\Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~3_combout\ = (\St:x_ar[4][6]~8_combout\ & ((\Selector45~0_combout\ & (\Selector45~2_combout\)) # (!\Selector45~0_combout\ & ((\Mux50~4_combout\))))) # (!\St:x_ar[4][6]~8_combout\ & (((\Selector45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~2_combout\,
	datab => \St:x_ar[4][6]~8_combout\,
	datac => \Selector45~0_combout\,
	datad => \Mux50~4_combout\,
	combout => \Selector45~3_combout\);

-- Location: LCCOMB_X58_Y68_N20
\St:x_ar[4][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][3]~3_combout\ = \St:x_ar[4][3]~1_combout\ $ (\Selector45~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[4][3]~1_combout\,
	datad => \Selector45~3_combout\,
	combout => \St:x_ar[4][3]~3_combout\);

-- Location: FF_X58_Y68_N21
\St:x_ar[4][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[4][3]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[4][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[4][3]~_emulated_q\);

-- Location: LCCOMB_X58_Y68_N30
\St:x_ar[4][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][3]~2_combout\ = (\St~0_combout\ & (\St~94_combout\)) # (!\St~0_combout\ & ((\St:x_ar[4][3]~_emulated_q\ $ (\St:x_ar[4][3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~94_combout\,
	datab => \St:x_ar[4][3]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[4][3]~1_combout\,
	combout => \St:x_ar[4][3]~2_combout\);

-- Location: LCCOMB_X57_Y67_N14
\x_ar~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~103_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux5~3_combout\))) # (!\Decoder3~1_combout\ & (\St:x_ar[4][3]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\St:x_ar[4][3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \St:x_ar[4][3]~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \x_ar~103_combout\);

-- Location: LCCOMB_X57_Y67_N8
\x_ar~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~106_combout\ = (\Decoder3~3_combout\ & ((\Mux5~3_combout\))) # (!\Decoder3~3_combout\ & (\St:x_ar[3][3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datac => \St:x_ar[3][3]~2_combout\,
	datad => \Mux5~3_combout\,
	combout => \x_ar~106_combout\);

-- Location: LCCOMB_X57_Y67_N0
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~106_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\x_ar~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~106_combout\,
	datad => \x_ar~107_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X57_Y67_N12
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux14~2_combout\ & ((\x_ar~108_combout\))) # (!\Mux14~2_combout\ & (\x_ar~105_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~105_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~108_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X57_Y67_N22
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\) # ((\x_ar~104_combout\)))) # (!\Mux14~0_combout\ & (!\Mux14~1_combout\ & ((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux14~1_combout\,
	datac => \x_ar~104_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X57_Y67_N20
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~1_combout\ & ((\Mux14~4_combout\ & ((\x_ar~109_combout\))) # (!\Mux14~4_combout\ & (\x_ar~103_combout\)))) # (!\Mux14~1_combout\ & (((\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \x_ar~103_combout\,
	datac => \Mux14~4_combout\,
	datad => \x_ar~109_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X58_Y67_N30
\x_ar~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~110_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux14~5_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~106_combout\)))) # (!\Decoder3~1_combout\ & (\x_ar~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~106_combout\,
	datab => \Decoder3~1_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux14~5_combout\,
	combout => \x_ar~110_combout\);

-- Location: LCCOMB_X58_Y67_N22
\x_ar~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~124_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux23~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~110_combout\)))) # (!\Decoder3~6_combout\ & (((\x_ar~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~110_combout\,
	datad => \Mux23~3_combout\,
	combout => \x_ar~124_combout\);

-- Location: LCCOMB_X59_Y65_N2
\x_ar~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~128_combout\ = (\Decoder3~0_combout\ & ((\Mux32~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \x_ar~124_combout\,
	datad => \Mux32~3_combout\,
	combout => \x_ar~128_combout\);

-- Location: LCCOMB_X57_Y65_N16
\x_ar~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~137_combout\ = (\Equal8~0_combout\ & ((\Mux41~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \x_ar~128_combout\,
	datad => \Mux41~3_combout\,
	combout => \x_ar~137_combout\);

-- Location: LCCOMB_X57_Y70_N22
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\St:x_ar[3][6]~7_combout\ & (((\St:x_ar[3][6]~6_combout\)))) # (!\St:x_ar[3][6]~7_combout\ & ((\St:x_ar[3][6]~6_combout\ & ((\x_ar~137_combout\))) # (!\St:x_ar[3][6]~6_combout\ & (\x_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[3]~input_o\,
	datab => \St:x_ar[3][6]~7_combout\,
	datac => \St:x_ar[3][6]~6_combout\,
	datad => \x_ar~137_combout\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X57_Y70_N20
\Selector36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~3_combout\ = (\St:x_ar[3][6]~7_combout\ & ((\Selector36~0_combout\ & (\Selector36~2_combout\)) # (!\Selector36~0_combout\ & ((\Mux50~4_combout\))))) # (!\St:x_ar[3][6]~7_combout\ & (((\Selector36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~2_combout\,
	datab => \St:x_ar[3][6]~7_combout\,
	datac => \Selector36~0_combout\,
	datad => \Mux50~4_combout\,
	combout => \Selector36~3_combout\);

-- Location: LCCOMB_X57_Y70_N16
\St:x_ar[3][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][3]~3_combout\ = \St:x_ar[3][3]~1_combout\ $ (\Selector36~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[3][3]~1_combout\,
	datad => \Selector36~3_combout\,
	combout => \St:x_ar[3][3]~3_combout\);

-- Location: FF_X57_Y70_N17
\St:x_ar[3][3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[3][3]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[3][3]~_emulated_q\);

-- Location: LCCOMB_X57_Y70_N14
\St:x_ar[3][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][3]~2_combout\ = (\St~0_combout\ & (\St~92_combout\)) # (!\St~0_combout\ & ((\St:x_ar[3][3]~_emulated_q\ $ (\St:x_ar[3][3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~92_combout\,
	datab => \St:x_ar[3][3]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[3][3]~1_combout\,
	combout => \St:x_ar[3][3]~2_combout\);

-- Location: LCCOMB_X57_Y67_N24
\Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\St:count[0]~q\ & ((\Mux59~0_combout\ & ((\St:x_ar[3][3]~2_combout\))) # (!\Mux59~0_combout\ & (\St:x_ar[1][3]~2_combout\)))) # (!\St:count[0]~q\ & (((\Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][3]~2_combout\,
	datab => \St:count[0]~q\,
	datac => \Mux59~0_combout\,
	datad => \St:x_ar[3][3]~2_combout\,
	combout => \Mux59~1_combout\);

-- Location: LCCOMB_X55_Y70_N26
\Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = (\Mux55~0_combout\ & (((\Mux55~1_combout\)))) # (!\Mux55~0_combout\ & ((\Mux55~1_combout\ & ((\St:x_ar[5][3]~2_combout\))) # (!\Mux55~1_combout\ & (\St:x_ar[4][3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \St:x_ar[4][3]~2_combout\,
	datac => \Mux55~1_combout\,
	datad => \St:x_ar[5][3]~2_combout\,
	combout => \Mux59~2_combout\);

-- Location: LCCOMB_X56_Y70_N0
\Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = (\Mux55~0_combout\ & ((\Mux59~2_combout\ & (\St:x_ar[6][3]~2_combout\)) # (!\Mux59~2_combout\ & ((\Mux59~1_combout\))))) # (!\Mux55~0_combout\ & (((\Mux59~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][3]~2_combout\,
	datab => \Mux55~0_combout\,
	datac => \Mux59~1_combout\,
	datad => \Mux59~2_combout\,
	combout => \Mux59~3_combout\);

-- Location: LCCOMB_X60_Y66_N26
\St~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~102_combout\ = (\St:x_ar[6][4]~2_combout\ & (((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][4]~2_combout\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \L_in[0]~input_o\,
	combout => \St~102_combout\);

-- Location: LCCOMB_X60_Y66_N18
\St:x_ar[6][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][4]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~102_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[6][4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][4]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~102_combout\,
	combout => \St:x_ar[6][4]~1_combout\);

-- Location: LCCOMB_X60_Y66_N6
\St:x_ar[6][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][4]~2_combout\ = (\St~0_combout\ & (((\St~102_combout\)))) # (!\St~0_combout\ & (\St:x_ar[6][4]~_emulated_q\ $ (((\St:x_ar[6][4]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][4]~_emulated_q\,
	datab => \St~102_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[6][4]~1_combout\,
	combout => \St:x_ar[6][4]~2_combout\);

-- Location: LCCOMB_X60_Y66_N4
\St~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~96_combout\ = (\St:x_ar[5][4]~2_combout\ & ((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \St:x_ar[5][4]~2_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~96_combout\);

-- Location: LCCOMB_X60_Y66_N0
\St:x_ar[5][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][4]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~96_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[5][4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][4]~1_combout\,
	datac => \St~96_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[5][4]~1_combout\);

-- Location: LCCOMB_X63_Y70_N4
\St~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~98_combout\ = (\St:x_ar[1][4]~2_combout\ & (!\L_in[1]~input_o\ & !\L_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][4]~2_combout\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	combout => \St~98_combout\);

-- Location: LCCOMB_X63_Y70_N2
\St:x_ar[1][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][4]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~98_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[1][4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][4]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~98_combout\,
	combout => \St:x_ar[1][4]~1_combout\);

-- Location: LCCOMB_X66_Y69_N28
\x_ar~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~143_combout\ = (\Decoder3~5_combout\ & ((\Mux4~3_combout\))) # (!\Decoder3~5_combout\ & (\St:x_ar[1][4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][4]~2_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux4~3_combout\,
	combout => \x_ar~143_combout\);

-- Location: LCCOMB_X67_Y68_N22
\x_ar~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~147_combout\ = (\Decoder3~4_combout\ & ((\Mux13~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~143_combout\,
	datad => \Mux13~3_combout\,
	combout => \x_ar~147_combout\);

-- Location: LCCOMB_X66_Y68_N22
\x_ar~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~156_combout\ = (\Decoder3~3_combout\ & ((\Mux22~5_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~147_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux22~5_combout\,
	combout => \x_ar~156_combout\);

-- Location: LCCOMB_X67_Y68_N0
\x_ar~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~154_combout\ = (\Decoder3~0_combout\ & ((\Mux22~5_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~145_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux22~5_combout\,
	combout => \x_ar~154_combout\);

-- Location: LCCOMB_X66_Y69_N10
\x_ar~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~151_combout\ = (\Equal8~0_combout\ & ((\Mux13~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~138_combout\,
	datac => \Mux13~3_combout\,
	datad => \Equal8~0_combout\,
	combout => \x_ar~151_combout\);

-- Location: LCCOMB_X65_Y68_N24
\x_ar~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~153_combout\ = (\Decoder3~2_combout\ & ((\Mux22~5_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~151_combout\,
	datad => \Mux22~5_combout\,
	combout => \x_ar~153_combout\);

-- Location: LCCOMB_X66_Y68_N4
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux31~0_combout\ & (\Mux31~1_combout\)) # (!\Mux31~0_combout\ & ((\Mux31~1_combout\ & ((\x_ar~153_combout\))) # (!\Mux31~1_combout\ & (\x_ar~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \x_ar~154_combout\,
	datad => \x_ar~153_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X67_Y68_N8
\x_ar~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~149_combout\ = (\Decoder3~3_combout\ & ((\Mux13~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~142_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux13~3_combout\,
	combout => \x_ar~149_combout\);

-- Location: LCCOMB_X67_Y68_N14
\x_ar~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~155_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux22~5_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~149_combout\)))) # (!\Decoder3~1_combout\ & (((\x_ar~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~149_combout\,
	datad => \Mux22~5_combout\,
	combout => \x_ar~155_combout\);

-- Location: LCCOMB_X66_Y69_N4
\x_ar~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~140_combout\ = (\Decoder3~2_combout\ & ((\Mux4~3_combout\))) # (!\Decoder3~2_combout\ & (\St:x_ar[0][4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][4]~2_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux4~3_combout\,
	combout => \x_ar~140_combout\);

-- Location: LCCOMB_X67_Y68_N28
\x_ar~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~148_combout\ = (\Decoder3~5_combout\ & ((\Mux13~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~140_combout\,
	datad => \Mux13~3_combout\,
	combout => \x_ar~148_combout\);

-- Location: LCCOMB_X67_Y68_N16
\x_ar~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~157_combout\ = (\Decoder3~4_combout\ & ((\Mux22~5_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~148_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux22~5_combout\,
	combout => \x_ar~157_combout\);

-- Location: LCCOMB_X66_Y68_N8
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~156_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~156_combout\,
	datad => \x_ar~157_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X66_Y69_N18
\x_ar~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~141_combout\ = (\Decoder3~3_combout\ & ((\Mux4~3_combout\))) # (!\Decoder3~3_combout\ & (\St:x_ar[3][4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][4]~2_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux4~3_combout\,
	combout => \x_ar~141_combout\);

-- Location: LCCOMB_X66_Y69_N16
\x_ar~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~146_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux13~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~141_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \x_ar~141_combout\,
	datac => \Mux13~3_combout\,
	datad => \Decoder3~1_combout\,
	combout => \x_ar~146_combout\);

-- Location: LCCOMB_X65_Y68_N14
\x_ar~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~158_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux22~5_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~146_combout\)))) # (!\Decoder3~6_combout\ & (((\x_ar~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~146_combout\,
	datad => \Mux22~5_combout\,
	combout => \x_ar~158_combout\);

-- Location: LCCOMB_X66_Y68_N6
\Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux31~3_combout\ & ((\x_ar~158_combout\))) # (!\Mux31~3_combout\ & (\x_ar~155_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~155_combout\,
	datac => \Mux31~3_combout\,
	datad => \x_ar~158_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X66_Y68_N24
\Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\Mux31~0_combout\ & ((\Mux31~2_combout\ & ((\Mux31~4_combout\))) # (!\Mux31~2_combout\ & (\x_ar~152_combout\)))) # (!\Mux31~0_combout\ & (((\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \x_ar~152_combout\,
	datac => \Mux31~2_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X66_Y68_N14
\x_ar~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~161_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux31~5_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~156_combout\)))) # (!\Decoder3~1_combout\ & (((\x_ar~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~156_combout\,
	datad => \Mux31~5_combout\,
	combout => \x_ar~161_combout\);

-- Location: LCCOMB_X65_Y68_N4
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\St~66_combout\ & ((\x_ar~147_combout\) # ((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & (((\x_ar~161_combout\ & !\St:x_ar[1][0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~147_combout\,
	datac => \x_ar~161_combout\,
	datad => \St:x_ar[1][0]~6_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X65_Y68_N18
\Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector17~1_combout\ & (\x_ar~143_combout\)) # (!\Selector17~1_combout\ & ((\x_ar~156_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~143_combout\,
	datac => \Selector17~1_combout\,
	datad => \x_ar~156_combout\,
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X66_Y68_N2
\x_ar~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~165_combout\ = (\Equal8~0_combout\ & ((\Mux31~5_combout\))) # (!\Equal8~0_combout\ & (\x_ar~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \x_ar~154_combout\,
	datad => \Mux31~5_combout\,
	combout => \x_ar~165_combout\);

-- Location: LCCOMB_X67_Y68_N30
\x_ar~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~164_combout\ = (\Decoder3~3_combout\ & ((\Mux31~5_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~157_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux31~5_combout\,
	combout => \x_ar~164_combout\);

-- Location: LCCOMB_X66_Y68_N30
\x_ar~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~163_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux31~5_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~155_combout\)))) # (!\Decoder3~6_combout\ & (((\x_ar~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~155_combout\,
	datad => \Mux31~5_combout\,
	combout => \x_ar~163_combout\);

-- Location: LCCOMB_X66_Y68_N12
\x_ar~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~162_combout\ = (\Decoder3~0_combout\ & ((\Mux31~5_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~158_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux31~5_combout\,
	combout => \x_ar~162_combout\);

-- Location: LCCOMB_X66_Y68_N0
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\x_ar~163_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~163_combout\,
	datad => \x_ar~162_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X66_Y68_N18
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\Add4~0_combout\ & ((\Mux40~0_combout\ & ((\x_ar~164_combout\))) # (!\Mux40~0_combout\ & (\x_ar~161_combout\)))) # (!\Add4~0_combout\ & (((\Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~161_combout\,
	datac => \x_ar~164_combout\,
	datad => \Mux40~0_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X66_Y68_N16
\Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux39~1_combout\ & ((\x_ar~160_combout\) # ((\Mux39~0_combout\)))) # (!\Mux39~1_combout\ & (((!\Mux39~0_combout\ & \Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~1_combout\,
	datab => \x_ar~160_combout\,
	datac => \Mux39~0_combout\,
	datad => \Mux40~1_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X66_Y68_N20
\Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (\Mux39~0_combout\ & ((\Mux40~2_combout\ & ((\x_ar~165_combout\))) # (!\Mux40~2_combout\ & (\x_ar~159_combout\)))) # (!\Mux39~0_combout\ & (((\Mux40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~159_combout\,
	datab => \x_ar~165_combout\,
	datac => \Mux39~0_combout\,
	datad => \Mux40~2_combout\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X65_Y68_N10
\x_ar~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~171_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux40~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~161_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \x_ar~161_combout\,
	datac => \Mux40~3_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \x_ar~171_combout\);

-- Location: LCCOMB_X66_Y66_N26
\Mux49~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~10_combout\ = ((\Mux53~13_combout\) # ((\Mux49~9_combout\ & \x_ar~166_combout\))) # (!\Mux49~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~9_combout\,
	datab => \Mux49~8_combout\,
	datac => \Mux53~13_combout\,
	datad => \x_ar~166_combout\,
	combout => \Mux49~10_combout\);

-- Location: LCCOMB_X65_Y66_N22
\Mux49~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~13_combout\ = (!\Mux49~9_combout\ & ((\St:x_count_ini[0]~2_combout\ & ((\x_ar~171_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (\x_ar~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \Mux49~9_combout\,
	datac => \x_ar~164_combout\,
	datad => \x_ar~171_combout\,
	combout => \Mux49~13_combout\);

-- Location: LCCOMB_X66_Y68_N26
\x_ar~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~170_combout\ = (\Decoder3~0_combout\ & ((\Mux40~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~163_combout\,
	datad => \Mux40~3_combout\,
	combout => \x_ar~170_combout\);

-- Location: LCCOMB_X65_Y66_N26
\Mux49~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~15_combout\ = (\St:x_count_ini[1]~2_combout\ & (\Mux49~13_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datac => \Mux49~13_combout\,
	datad => \x_ar~170_combout\,
	combout => \Mux49~15_combout\);

-- Location: LCCOMB_X65_Y68_N16
\x_ar~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~167_combout\ = (\Equal8~0_combout\ & ((\Mux40~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \x_ar~162_combout\,
	datac => \Mux40~3_combout\,
	combout => \x_ar~167_combout\);

-- Location: LCCOMB_X66_Y68_N10
\x_ar~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~159_combout\ = (\Decoder3~5_combout\ & ((\Mux31~5_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datab => \x_ar~153_combout\,
	datad => \Mux31~5_combout\,
	combout => \x_ar~159_combout\);

-- Location: LCCOMB_X66_Y67_N0
\x_ar~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~168_combout\ = (\Decoder3~4_combout\ & ((\Mux40~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~159_combout\,
	datad => \Mux40~3_combout\,
	combout => \x_ar~168_combout\);

-- Location: LCCOMB_X66_Y67_N6
\Mux49~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~16_combout\ = (\St:x_count_ini[1]~2_combout\) # ((\x_ar~168_combout\) # (!\St:x_count_ini[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \x_ar~168_combout\,
	combout => \Mux49~16_combout\);

-- Location: LCCOMB_X65_Y66_N12
\Mux49~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~11_combout\ = (\Mux31~1_combout\ & (((\Mux49~16_combout\)))) # (!\Mux31~1_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~167_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\Mux49~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~167_combout\,
	datad => \Mux49~16_combout\,
	combout => \Mux49~11_combout\);

-- Location: LCCOMB_X65_Y66_N20
\Mux49~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~14_combout\ = (\Mux49~10_combout\ & (\Mux49~12_combout\ & ((\Mux49~11_combout\)))) # (!\Mux49~10_combout\ & (((\Mux49~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~12_combout\,
	datab => \Mux49~10_combout\,
	datac => \Mux49~15_combout\,
	datad => \Mux49~11_combout\,
	combout => \Mux49~14_combout\);

-- Location: LCCOMB_X63_Y70_N20
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\St:x_ar[1][0]~10_combout\ & (((\St:x_ar[1][0]~9_combout\) # (\Mux49~14_combout\)))) # (!\St:x_ar[1][0]~10_combout\ & (\x_in[4]~input_o\ & (!\St:x_ar[1][0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[4]~input_o\,
	datab => \St:x_ar[1][0]~10_combout\,
	datac => \St:x_ar[1][0]~9_combout\,
	datad => \Mux49~14_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X63_Y70_N6
\Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\St:x_ar[1][0]~9_combout\ & ((\Selector17~0_combout\ & (\Selector17~2_combout\)) # (!\Selector17~0_combout\ & ((\x_ar~171_combout\))))) # (!\St:x_ar[1][0]~9_combout\ & (((\Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~9_combout\,
	datab => \Selector17~2_combout\,
	datac => \x_ar~171_combout\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~3_combout\);

-- Location: LCCOMB_X63_Y70_N8
\St:x_ar[1][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][4]~3_combout\ = \St:x_ar[1][4]~1_combout\ $ (\Selector17~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][4]~1_combout\,
	datad => \Selector17~3_combout\,
	combout => \St:x_ar[1][4]~3_combout\);

-- Location: FF_X63_Y70_N9
\St:x_ar[1][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[1][4]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[1][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[1][4]~_emulated_q\);

-- Location: LCCOMB_X63_Y70_N30
\St:x_ar[1][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][4]~2_combout\ = (\St~0_combout\ & (\St~98_combout\)) # (!\St~0_combout\ & ((\St:x_ar[1][4]~_emulated_q\ $ (\St:x_ar[1][4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~98_combout\,
	datab => \St:x_ar[1][4]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[1][4]~1_combout\,
	combout => \St:x_ar[1][4]~2_combout\);

-- Location: LCCOMB_X65_Y66_N30
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\St:x_ar[2][2]~6_combout\ & (((\St:x_ar[2][2]~7_combout\)))) # (!\St:x_ar[2][2]~6_combout\ & ((\St:x_ar[2][2]~7_combout\ & ((\Mux49~14_combout\))) # (!\St:x_ar[2][2]~7_combout\ & (\x_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[4]~input_o\,
	datab => \St:x_ar[2][2]~6_combout\,
	datac => \St:x_ar[2][2]~7_combout\,
	datad => \Mux49~14_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X65_Y66_N0
\Selector26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = (\St:x_ar[2][2]~6_combout\ & ((\Selector26~0_combout\ & (\Selector26~2_combout\)) # (!\Selector26~0_combout\ & ((\x_ar~170_combout\))))) # (!\St:x_ar[2][2]~6_combout\ & (((\Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~2_combout\,
	datab => \St:x_ar[2][2]~6_combout\,
	datac => \Selector26~0_combout\,
	datad => \x_ar~170_combout\,
	combout => \Selector26~3_combout\);

-- Location: LCCOMB_X65_Y66_N4
\St:x_ar[2][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][4]~3_combout\ = \St:x_ar[2][4]~1_combout\ $ (\Selector26~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][4]~1_combout\,
	datad => \Selector26~3_combout\,
	combout => \St:x_ar[2][4]~3_combout\);

-- Location: FF_X65_Y66_N5
\St:x_ar[2][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[2][4]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[2][4]~_emulated_q\);

-- Location: LCCOMB_X65_Y66_N2
\St~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~97_combout\ = (\St:x_ar[2][4]~2_combout\ & (!\L_in[2]~input_o\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][4]~2_combout\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \L_in[0]~input_o\,
	combout => \St~97_combout\);

-- Location: LCCOMB_X65_Y66_N16
\St:x_ar[2][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][4]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~97_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[2][4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][4]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~97_combout\,
	combout => \St:x_ar[2][4]~1_combout\);

-- Location: LCCOMB_X65_Y66_N10
\St:x_ar[2][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][4]~2_combout\ = (\St~0_combout\ & (\St~97_combout\)) # (!\St~0_combout\ & ((\St:x_ar[2][4]~_emulated_q\ $ (\St:x_ar[2][4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~97_combout\,
	datab => \St:x_ar[2][4]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[2][4]~1_combout\,
	combout => \St:x_ar[2][4]~2_combout\);

-- Location: LCCOMB_X65_Y66_N24
\St~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~100_combout\ = (\St:x_ar[3][4]~2_combout\ & !\L_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][4]~2_combout\,
	datac => \L_in[2]~input_o\,
	combout => \St~100_combout\);

-- Location: LCCOMB_X65_Y66_N18
\St:x_ar[3][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][4]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~100_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[3][4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][4]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~100_combout\,
	combout => \St:x_ar[3][4]~1_combout\);

-- Location: LCCOMB_X65_Y66_N14
\St:x_ar[3][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][4]~2_combout\ = (\St~0_combout\ & (((\St~100_combout\)))) # (!\St~0_combout\ & (\St:x_ar[3][4]~_emulated_q\ $ (((\St:x_ar[3][4]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][4]~_emulated_q\,
	datab => \St~100_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[3][4]~1_combout\,
	combout => \St:x_ar[3][4]~2_combout\);

-- Location: LCCOMB_X66_Y69_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\St:x_ar[2][4]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\St:x_ar[3][4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_ar[2][4]~2_combout\,
	datad => \St:x_ar[3][4]~2_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X66_Y69_N22
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Add4~0_combout\ & ((\Mux4~0_combout\ & (\St:x_ar[0][4]~2_combout\)) # (!\Mux4~0_combout\ & ((\St:x_ar[1][4]~2_combout\))))) # (!\Add4~0_combout\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][4]~2_combout\,
	datab => \St:x_ar[1][4]~2_combout\,
	datac => \Add4~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X66_Y69_N24
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux8~3_combout\ & ((\Mux8~2_combout\) # ((\St:x_ar[5][4]~2_combout\)))) # (!\Mux8~3_combout\ & (!\Mux8~2_combout\ & ((\St:x_ar[6][4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Mux8~2_combout\,
	datac => \St:x_ar[5][4]~2_combout\,
	datad => \St:x_ar[6][4]~2_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X66_Y69_N6
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux8~2_combout\ & ((\Mux4~2_combout\ & (\St:x_ar[4][4]~2_combout\)) # (!\Mux4~2_combout\ & ((\Mux4~1_combout\))))) # (!\Mux8~2_combout\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][4]~2_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X66_Y69_N20
\x_ar~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~138_combout\ = (\Decoder3~0_combout\ & ((\Mux4~3_combout\))) # (!\Decoder3~0_combout\ & (\St:x_ar[6][4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \St:x_ar[6][4]~2_combout\,
	datad => \Mux4~3_combout\,
	combout => \x_ar~138_combout\);

-- Location: LCCOMB_X65_Y68_N26
\x_ar~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~144_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux4~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[5][4]~2_combout\)))) # (!\Decoder3~6_combout\ & (((\St:x_ar[5][4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \St:x_ar[5][4]~2_combout\,
	datad => \Mux4~3_combout\,
	combout => \x_ar~144_combout\);

-- Location: LCCOMB_X65_Y69_N22
\St~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~101_combout\ = (\St:x_ar[4][4]~2_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \St:x_ar[4][4]~2_combout\,
	datac => \L_in[1]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~101_combout\);

-- Location: LCCOMB_X65_Y69_N10
\St:x_ar[4][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][4]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~101_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[4][4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][4]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~101_combout\,
	combout => \St:x_ar[4][4]~1_combout\);

-- Location: LCCOMB_X65_Y68_N28
\Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & ((\x_ar~145_combout\))) # (!\St~66_combout\ & (\x_ar~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~165_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~145_combout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X65_Y68_N22
\Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector44~1_combout\ & (\x_ar~139_combout\)) # (!\Selector44~1_combout\ & ((\x_ar~154_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~139_combout\,
	datac => \x_ar~154_combout\,
	datad => \Selector44~1_combout\,
	combout => \Selector44~2_combout\);

-- Location: LCCOMB_X65_Y69_N6
\x_ar~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~169_combout\ = (\Decoder3~2_combout\ & ((\Mux40~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~165_combout\,
	datad => \Mux40~3_combout\,
	combout => \x_ar~169_combout\);

-- Location: IOIBUF_X60_Y73_N8
\x_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: LCCOMB_X65_Y69_N2
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\St:x_ar[4][6]~7_combout\ & (((\St:x_ar[4][6]~8_combout\)))) # (!\St:x_ar[4][6]~7_combout\ & ((\St:x_ar[4][6]~8_combout\ & ((\Mux49~14_combout\))) # (!\St:x_ar[4][6]~8_combout\ & (\x_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][6]~7_combout\,
	datab => \x_in[4]~input_o\,
	datac => \St:x_ar[4][6]~8_combout\,
	datad => \Mux49~14_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X65_Y69_N24
\Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~3_combout\ = (\St:x_ar[4][6]~7_combout\ & ((\Selector44~0_combout\ & (\Selector44~2_combout\)) # (!\Selector44~0_combout\ & ((\x_ar~169_combout\))))) # (!\St:x_ar[4][6]~7_combout\ & (((\Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][6]~7_combout\,
	datab => \Selector44~2_combout\,
	datac => \x_ar~169_combout\,
	datad => \Selector44~0_combout\,
	combout => \Selector44~3_combout\);

-- Location: LCCOMB_X65_Y69_N18
\St:x_ar[4][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][4]~3_combout\ = \St:x_ar[4][4]~1_combout\ $ (\Selector44~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[4][4]~1_combout\,
	datad => \Selector44~3_combout\,
	combout => \St:x_ar[4][4]~3_combout\);

-- Location: FF_X65_Y69_N19
\St:x_ar[4][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[4][4]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[4][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[4][4]~_emulated_q\);

-- Location: LCCOMB_X65_Y69_N16
\St:x_ar[4][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][4]~2_combout\ = (\St~0_combout\ & (\St~101_combout\)) # (!\St~0_combout\ & ((\St:x_ar[4][4]~_emulated_q\ $ (\St:x_ar[4][4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~101_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[4][4]~_emulated_q\,
	datad => \St:x_ar[4][4]~1_combout\,
	combout => \St:x_ar[4][4]~2_combout\);

-- Location: LCCOMB_X66_Y69_N26
\x_ar~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~139_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux4~3_combout\))) # (!\Decoder3~1_combout\ & (\St:x_ar[4][4]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\St:x_ar[4][4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \St:x_ar[4][4]~2_combout\,
	datad => \Mux4~3_combout\,
	combout => \x_ar~139_combout\);

-- Location: LCCOMB_X66_Y69_N8
\x_ar~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~142_combout\ = (\Decoder3~4_combout\ & ((\Mux4~3_combout\))) # (!\Decoder3~4_combout\ & (\St:x_ar[2][4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][4]~2_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux4~3_combout\,
	combout => \x_ar~142_combout\);

-- Location: LCCOMB_X66_Y69_N14
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~141_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & (\x_ar~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~142_combout\,
	datad => \x_ar~141_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X66_Y69_N2
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux13~0_combout\ & ((\x_ar~143_combout\))) # (!\Mux13~0_combout\ & (\x_ar~140_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~140_combout\,
	datac => \Mux13~0_combout\,
	datad => \x_ar~143_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X66_Y69_N0
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux14~1_combout\ & ((\Mux14~0_combout\) # ((\x_ar~139_combout\)))) # (!\Mux14~1_combout\ & (!\Mux14~0_combout\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \x_ar~139_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X66_Y69_N30
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux14~0_combout\ & ((\Mux13~2_combout\ & ((\x_ar~144_combout\))) # (!\Mux13~2_combout\ & (\x_ar~138_combout\)))) # (!\Mux14~0_combout\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \x_ar~138_combout\,
	datac => \x_ar~144_combout\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X67_Y68_N20
\x_ar~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~145_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux13~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~139_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~139_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \Decoder3~6_combout\,
	datad => \Mux13~3_combout\,
	combout => \x_ar~145_combout\);

-- Location: LCCOMB_X65_Y68_N12
\x_ar~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~150_combout\ = (\Decoder3~0_combout\ & ((\Mux13~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \x_ar~144_combout\,
	datad => \Mux13~3_combout\,
	combout => \x_ar~150_combout\);

-- Location: LCCOMB_X67_Y68_N6
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\x_ar~148_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & (\x_ar~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~147_combout\,
	datad => \x_ar~148_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X67_Y68_N10
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Add4~0_combout\ & ((\Mux22~2_combout\ & ((\x_ar~149_combout\))) # (!\Mux22~2_combout\ & (\x_ar~146_combout\)))) # (!\Add4~0_combout\ & (((\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~146_combout\,
	datac => \x_ar~149_combout\,
	datad => \Mux22~2_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X67_Y68_N12
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux22~0_combout\ & (\Mux22~1_combout\)) # (!\Mux22~0_combout\ & ((\Mux22~1_combout\ & ((\Mux22~3_combout\))) # (!\Mux22~1_combout\ & (\x_ar~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Mux22~1_combout\,
	datac => \x_ar~150_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X67_Y68_N18
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~0_combout\ & ((\Mux22~4_combout\ & ((\x_ar~151_combout\))) # (!\Mux22~4_combout\ & (\x_ar~145_combout\)))) # (!\Mux22~0_combout\ & (((\Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \x_ar~145_combout\,
	datac => \x_ar~151_combout\,
	datad => \Mux22~4_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X65_Y68_N6
\x_ar~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~152_combout\ = (\Equal8~0_combout\ & ((\Mux22~5_combout\))) # (!\Equal8~0_combout\ & (\x_ar~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~150_combout\,
	datac => \Equal8~0_combout\,
	datad => \Mux22~5_combout\,
	combout => \x_ar~152_combout\);

-- Location: LCCOMB_X66_Y68_N28
\x_ar~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~160_combout\ = (\Decoder3~2_combout\ & ((\Mux31~5_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~152_combout\,
	datad => \Mux31~5_combout\,
	combout => \x_ar~160_combout\);

-- Location: LCCOMB_X66_Y66_N24
\x_ar~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~166_combout\ = (\Decoder3~5_combout\ & ((\Mux40~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \x_ar~160_combout\,
	datad => \Mux40~3_combout\,
	combout => \x_ar~166_combout\);

-- Location: LCCOMB_X60_Y66_N28
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\St:x_ar[5][4]~7_combout\ & ((\St:x_ar[5][4]~6_combout\) # ((\Mux49~14_combout\)))) # (!\St:x_ar[5][4]~7_combout\ & (!\St:x_ar[5][4]~6_combout\ & (\x_in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \St:x_ar[5][4]~6_combout\,
	datac => \x_in[4]~input_o\,
	datad => \Mux49~14_combout\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X60_Y66_N2
\Selector53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~3_combout\ = (\St:x_ar[5][4]~6_combout\ & ((\Selector53~0_combout\ & (\Selector53~2_combout\)) # (!\Selector53~0_combout\ & ((\x_ar~166_combout\))))) # (!\St:x_ar[5][4]~6_combout\ & (((\Selector53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~2_combout\,
	datab => \St:x_ar[5][4]~6_combout\,
	datac => \x_ar~166_combout\,
	datad => \Selector53~0_combout\,
	combout => \Selector53~3_combout\);

-- Location: LCCOMB_X60_Y66_N8
\St:x_ar[5][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][4]~3_combout\ = \St:x_ar[5][4]~1_combout\ $ (\Selector53~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][4]~1_combout\,
	datad => \Selector53~3_combout\,
	combout => \St:x_ar[5][4]~3_combout\);

-- Location: FF_X60_Y66_N9
\St:x_ar[5][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[5][4]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[5][4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[5][4]~_emulated_q\);

-- Location: LCCOMB_X60_Y66_N14
\St:x_ar[5][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][4]~2_combout\ = (\St~0_combout\ & (\St~96_combout\)) # (!\St~0_combout\ & ((\St:x_ar[5][4]~_emulated_q\ $ (\St:x_ar[5][4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~96_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[5][4]~_emulated_q\,
	datad => \St:x_ar[5][4]~1_combout\,
	combout => \St:x_ar[5][4]~2_combout\);

-- Location: LCCOMB_X65_Y69_N8
\St~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~99_combout\ = (!\L_in[0]~input_o\ & (\St:x_ar[0][4]~2_combout\ & (!\L_in[1]~input_o\ & !\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \St:x_ar[0][4]~2_combout\,
	datac => \L_in[1]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~99_combout\);

-- Location: LCCOMB_X65_Y69_N28
\St:x_ar[0][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][4]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~99_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[0][4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[0][4]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~99_combout\,
	combout => \St:x_ar[0][4]~1_combout\);

-- Location: LCCOMB_X65_Y69_N26
\St:x_ar[0][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][4]~3_combout\ = \x_in[4]~input_o\ $ (\St:x_ar[0][4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[4]~input_o\,
	datad => \St:x_ar[0][4]~1_combout\,
	combout => \St:x_ar[0][4]~3_combout\);

-- Location: FF_X65_Y69_N1
\St:x_ar[0][4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_ar[0][4]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_ar[0][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[0][4]~_emulated_q\);

-- Location: LCCOMB_X65_Y69_N0
\St:x_ar[0][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][4]~2_combout\ = (\St~0_combout\ & (\St~99_combout\)) # (!\St~0_combout\ & ((\St:x_ar[0][4]~_emulated_q\ $ (\St:x_ar[0][4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~99_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[0][4]~_emulated_q\,
	datad => \St:x_ar[0][4]~1_combout\,
	combout => \St:x_ar[0][4]~2_combout\);

-- Location: LCCOMB_X68_Y69_N24
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\St:count[1]~q\ & (((\St:count[0]~q\)))) # (!\St:count[1]~q\ & ((\St:count[0]~q\ & (\St:x_ar[1][4]~2_combout\)) # (!\St:count[0]~q\ & ((\St:x_ar[0][4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:x_ar[1][4]~2_combout\,
	datac => \St:count[0]~q\,
	datad => \St:x_ar[0][4]~2_combout\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X68_Y69_N18
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\St:count[1]~q\ & ((\Mux58~0_combout\ & (\St:x_ar[3][4]~2_combout\)) # (!\Mux58~0_combout\ & ((\St:x_ar[2][4]~2_combout\))))) # (!\St:count[1]~q\ & (((\Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:x_ar[3][4]~2_combout\,
	datac => \St:x_ar[2][4]~2_combout\,
	datad => \Mux58~0_combout\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X68_Y69_N28
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (\Mux55~0_combout\ & (((\Mux55~1_combout\) # (\Mux58~1_combout\)))) # (!\Mux55~0_combout\ & (\St:x_ar[4][4]~2_combout\ & (!\Mux55~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \St:x_ar[4][4]~2_combout\,
	datac => \Mux55~1_combout\,
	datad => \Mux58~1_combout\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X68_Y69_N22
\Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (\Mux55~1_combout\ & ((\Mux58~2_combout\ & (\St:x_ar[6][4]~2_combout\)) # (!\Mux58~2_combout\ & ((\St:x_ar[5][4]~2_combout\))))) # (!\Mux55~1_combout\ & (((\Mux58~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \St:x_ar[6][4]~2_combout\,
	datac => \St:x_ar[5][4]~2_combout\,
	datad => \Mux58~2_combout\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X59_Y71_N22
\St~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~109_combout\ = (\St:x_ar[6][5]~2_combout\ & (((!\L_in[1]~input_o\) # (!\L_in[0]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \St:x_ar[6][5]~2_combout\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~109_combout\);

-- Location: LCCOMB_X59_Y71_N18
\St:x_ar[6][5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][5]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~109_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[6][5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][5]~1_combout\,
	datac => \St~109_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[6][5]~1_combout\);

-- Location: IOIBUF_X60_Y73_N22
\x_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: LCCOMB_X61_Y72_N26
\St~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~107_combout\ = (\St:x_ar[5][5]~2_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datac => \St:x_ar[5][5]~2_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~107_combout\);

-- Location: LCCOMB_X61_Y72_N10
\St:x_ar[5][5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][5]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~107_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[5][5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][5]~1_combout\,
	datac => \St~107_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[5][5]~1_combout\);

-- Location: LCCOMB_X58_Y71_N22
\x_ar~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~178_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux3~3_combout\))) # (!\Decoder3~6_combout\ & (\St:x_ar[5][5]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\St:x_ar[5][5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \St:x_ar[5][5]~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \x_ar~178_combout\);

-- Location: LCCOMB_X58_Y71_N4
\x_ar~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~172_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux3~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[4][5]~2_combout\)))) # (!\Decoder3~1_combout\ & (\St:x_ar[4][5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][5]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \x_ar~172_combout\);

-- Location: LCCOMB_X58_Y72_N8
\St~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~105_combout\ = (!\L_in[0]~input_o\ & (!\L_in[2]~input_o\ & (\St:x_ar[0][5]~2_combout\ & !\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \St:x_ar[0][5]~2_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~105_combout\);

-- Location: LCCOMB_X58_Y72_N28
\St:x_ar[0][5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][5]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~105_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[0][5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[0][5]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~105_combout\,
	combout => \St:x_ar[0][5]~1_combout\);

-- Location: LCCOMB_X58_Y72_N2
\St:x_ar[0][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][5]~3_combout\ = \x_in[5]~input_o\ $ (\St:x_ar[0][5]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[5]~input_o\,
	datad => \St:x_ar[0][5]~1_combout\,
	combout => \St:x_ar[0][5]~3_combout\);

-- Location: FF_X58_Y72_N31
\St:x_ar[0][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_ar[0][5]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_ar[0][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[0][5]~_emulated_q\);

-- Location: LCCOMB_X58_Y72_N30
\St:x_ar[0][5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][5]~2_combout\ = (\St~0_combout\ & (\St~105_combout\)) # (!\St~0_combout\ & ((\St:x_ar[0][5]~_emulated_q\ $ (\St:x_ar[0][5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~105_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[0][5]~_emulated_q\,
	datad => \St:x_ar[0][5]~1_combout\,
	combout => \St:x_ar[0][5]~2_combout\);

-- Location: LCCOMB_X58_Y71_N8
\x_ar~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~174_combout\ = (\Decoder3~2_combout\ & ((\Mux3~3_combout\))) # (!\Decoder3~2_combout\ & (\St:x_ar[0][5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \St:x_ar[0][5]~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \x_ar~174_combout\);

-- Location: LCCOMB_X57_Y71_N28
\St~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~106_combout\ = (\St:x_ar[3][5]~2_combout\ & !\L_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[3][5]~2_combout\,
	datad => \L_in[2]~input_o\,
	combout => \St~106_combout\);

-- Location: LCCOMB_X57_Y71_N0
\St:x_ar[3][5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][5]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~106_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[3][5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][5]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~106_combout\,
	combout => \St:x_ar[3][5]~1_combout\);

-- Location: LCCOMB_X57_Y71_N26
\St:x_ar[3][5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][5]~2_combout\ = (\St~0_combout\ & (((\St~106_combout\)))) # (!\St~0_combout\ & (\St:x_ar[3][5]~_emulated_q\ $ (((\St:x_ar[3][5]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][5]~_emulated_q\,
	datab => \St~106_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[3][5]~1_combout\,
	combout => \St:x_ar[3][5]~2_combout\);

-- Location: LCCOMB_X58_Y71_N26
\x_ar~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~175_combout\ = (\Decoder3~3_combout\ & ((\Mux3~3_combout\))) # (!\Decoder3~3_combout\ & (\St:x_ar[3][5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~3_combout\,
	datac => \St:x_ar[3][5]~2_combout\,
	datad => \Mux3~3_combout\,
	combout => \x_ar~175_combout\);

-- Location: LCCOMB_X58_Y71_N20
\x_ar~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~176_combout\ = (\Decoder3~4_combout\ & ((\Mux3~3_combout\))) # (!\Decoder3~4_combout\ & (\St:x_ar[2][5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][5]~2_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux3~3_combout\,
	combout => \x_ar~176_combout\);

-- Location: LCCOMB_X58_Y71_N10
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~175_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~175_combout\,
	datad => \x_ar~176_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X58_Y71_N2
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux12~0_combout\ & (\x_ar~177_combout\)) # (!\Mux12~0_combout\ & ((\x_ar~174_combout\))))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~177_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~174_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X58_Y71_N28
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux14~1_combout\ & (\Mux14~0_combout\)) # (!\Mux14~1_combout\ & ((\Mux14~0_combout\ & (\x_ar~173_combout\)) # (!\Mux14~0_combout\ & ((\Mux12~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \x_ar~173_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X58_Y71_N16
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux14~1_combout\ & ((\Mux12~2_combout\ & ((\x_ar~178_combout\))) # (!\Mux12~2_combout\ & (\x_ar~172_combout\)))) # (!\Mux14~1_combout\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \x_ar~172_combout\,
	datac => \x_ar~178_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X61_Y72_N22
\x_ar~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~184_combout\ = (\Decoder3~0_combout\ & ((\Mux12~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~178_combout\,
	datad => \Mux12~3_combout\,
	combout => \x_ar~184_combout\);

-- Location: LCCOMB_X61_Y72_N28
\x_ar~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~183_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux12~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~172_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \x_ar~172_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux12~3_combout\,
	combout => \x_ar~183_combout\);

-- Location: LCCOMB_X61_Y72_N16
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux22~1_combout\ & (\Mux22~0_combout\)) # (!\Mux22~1_combout\ & ((\Mux22~0_combout\ & ((\x_ar~183_combout\))) # (!\Mux22~0_combout\ & (\x_ar~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~184_combout\,
	datad => \x_ar~183_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X59_Y71_N26
\x_ar~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~182_combout\ = (\Decoder3~3_combout\ & ((\Mux12~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~176_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~176_combout\,
	datac => \Mux12~3_combout\,
	datad => \Decoder3~3_combout\,
	combout => \x_ar~182_combout\);

-- Location: LCCOMB_X59_Y72_N26
\x_ar~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~179_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux12~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~175_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \x_ar~175_combout\,
	datac => \Decoder3~1_combout\,
	datad => \Mux12~3_combout\,
	combout => \x_ar~179_combout\);

-- Location: LCCOMB_X58_Y71_N30
\x_ar~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~181_combout\ = (\Decoder3~5_combout\ & ((\Mux12~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~174_combout\,
	datad => \Mux12~3_combout\,
	combout => \x_ar~181_combout\);

-- Location: LCCOMB_X63_Y71_N12
\x_ar~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~180_combout\ = (\Decoder3~4_combout\ & ((\Mux12~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~177_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux12~3_combout\,
	combout => \x_ar~180_combout\);

-- Location: LCCOMB_X62_Y72_N12
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\x_ar~181_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~181_combout\,
	datad => \x_ar~180_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X62_Y72_N10
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Add4~0_combout\ & ((\Mux21~0_combout\ & (\x_ar~182_combout\)) # (!\Mux21~0_combout\ & ((\x_ar~179_combout\))))) # (!\Add4~0_combout\ & (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~182_combout\,
	datac => \x_ar~179_combout\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X62_Y72_N28
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux22~1_combout\ & ((\Mux21~2_combout\ & (\x_ar~185_combout\)) # (!\Mux21~2_combout\ & ((\Mux21~1_combout\))))) # (!\Mux22~1_combout\ & (((\Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~185_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux21~2_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X61_Y72_N2
\x_ar~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~187_combout\ = (\Equal8~0_combout\ & ((\Mux21~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \x_ar~184_combout\,
	datad => \Mux21~3_combout\,
	combout => \x_ar~187_combout\);

-- Location: LCCOMB_X61_Y72_N8
\x_ar~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~194_combout\ = (\Decoder3~2_combout\ & (\Mux30~3_combout\)) # (!\Decoder3~2_combout\ & ((\x_ar~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \Mux30~3_combout\,
	datad => \x_ar~187_combout\,
	combout => \x_ar~194_combout\);

-- Location: LCCOMB_X61_Y72_N4
\x_ar~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~188_combout\ = (\Decoder3~0_combout\ & ((\Mux21~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datab => \x_ar~183_combout\,
	datad => \Mux21~3_combout\,
	combout => \x_ar~188_combout\);

-- Location: LCCOMB_X62_Y72_N22
\x_ar~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~200_combout\ = (\Equal8~0_combout\ & ((\Mux30~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~188_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \x_ar~188_combout\,
	datad => \Mux30~3_combout\,
	combout => \x_ar~200_combout\);

-- Location: LCCOMB_X62_Y72_N2
\x_ar~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~190_combout\ = (\Mux22~1_combout\ & ((\Mux21~2_combout\ & (\x_ar~185_combout\)) # (!\Mux21~2_combout\ & ((\Mux21~1_combout\))))) # (!\Mux22~1_combout\ & (((\Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~185_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux21~2_combout\,
	datad => \Mux21~1_combout\,
	combout => \x_ar~190_combout\);

-- Location: LCCOMB_X62_Y72_N18
\x_ar~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~192_combout\ = (\Decoder3~4_combout\ & ((\x_ar~190_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~4_combout\,
	datac => \x_ar~181_combout\,
	datad => \x_ar~190_combout\,
	combout => \x_ar~192_combout\);

-- Location: LCCOMB_X62_Y71_N14
\x_ar~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~199_combout\ = (\Decoder3~3_combout\ & ((\Mux30~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datab => \x_ar~192_combout\,
	datad => \Mux30~3_combout\,
	combout => \x_ar~199_combout\);

-- Location: LCCOMB_X62_Y72_N16
\x_ar~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~189_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux21~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~182_combout\)))) # (!\Decoder3~1_combout\ & (((\x_ar~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~182_combout\,
	datad => \Mux21~3_combout\,
	combout => \x_ar~189_combout\);

-- Location: LCCOMB_X62_Y72_N30
\x_ar~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~198_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux30~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~189_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \x_ar~189_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux30~3_combout\,
	combout => \x_ar~198_combout\);

-- Location: LCCOMB_X62_Y72_N26
\x_ar~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~193_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux21~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~179_combout\)))) # (!\Decoder3~6_combout\ & (((\x_ar~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~179_combout\,
	datad => \Mux21~3_combout\,
	combout => \x_ar~193_combout\);

-- Location: LCCOMB_X62_Y72_N0
\x_ar~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~197_combout\ = (\Decoder3~0_combout\ & ((\Mux30~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~193_combout\,
	datad => \Mux30~3_combout\,
	combout => \x_ar~197_combout\);

-- Location: LCCOMB_X62_Y72_N8
\Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\x_ar~198_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~198_combout\,
	datad => \x_ar~197_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X62_Y72_N4
\x_ar~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~191_combout\ = (\Decoder3~3_combout\ & ((\x_ar~190_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~180_combout\,
	datab => \Decoder3~3_combout\,
	datad => \x_ar~190_combout\,
	combout => \x_ar~191_combout\);

-- Location: LCCOMB_X62_Y71_N24
\x_ar~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~196_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & (\Mux30~3_combout\)) # (!\Decoder3~1_combout\ & ((\x_ar~191_combout\))))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \Mux30~3_combout\,
	datad => \x_ar~191_combout\,
	combout => \x_ar~196_combout\);

-- Location: LCCOMB_X62_Y71_N0
\Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Add4~0_combout\ & ((\Mux39~2_combout\ & (\x_ar~199_combout\)) # (!\Mux39~2_combout\ & ((\x_ar~196_combout\))))) # (!\Add4~0_combout\ & (((\Mux39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~199_combout\,
	datac => \Mux39~2_combout\,
	datad => \x_ar~196_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X62_Y71_N2
\Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (\Mux39~0_combout\ & ((\Mux39~1_combout\) # ((\x_ar~195_combout\)))) # (!\Mux39~0_combout\ & (!\Mux39~1_combout\ & ((\Mux39~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \Mux39~1_combout\,
	datac => \x_ar~195_combout\,
	datad => \Mux39~3_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X62_Y71_N16
\Mux39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = (\Mux39~1_combout\ & ((\Mux39~4_combout\ & ((\x_ar~200_combout\))) # (!\Mux39~4_combout\ & (\x_ar~194_combout\)))) # (!\Mux39~1_combout\ & (((\Mux39~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~194_combout\,
	datab => \Mux39~1_combout\,
	datac => \x_ar~200_combout\,
	datad => \Mux39~4_combout\,
	combout => \Mux39~5_combout\);

-- Location: LCCOMB_X62_Y71_N8
\x_ar~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~205_combout\ = (\Decoder3~5_combout\ & ((\Mux39~5_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \x_ar~194_combout\,
	datad => \Mux39~5_combout\,
	combout => \x_ar~205_combout\);

-- Location: LCCOMB_X61_Y72_N14
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\St:x_ar[5][4]~7_combout\ & (\St:x_ar[5][4]~6_combout\)) # (!\St:x_ar[5][4]~7_combout\ & ((\St:x_ar[5][4]~6_combout\ & ((\x_ar~205_combout\))) # (!\St:x_ar[5][4]~6_combout\ & (\x_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \St:x_ar[5][4]~6_combout\,
	datac => \x_in[5]~input_o\,
	datad => \x_ar~205_combout\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X62_Y71_N20
\x_ar~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~206_combout\ = (\Equal8~0_combout\ & ((\Mux39~5_combout\))) # (!\Equal8~0_combout\ & (\x_ar~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \x_ar~197_combout\,
	datad => \Mux39~5_combout\,
	combout => \x_ar~206_combout\);

-- Location: LCCOMB_X62_Y71_N30
\x_ar~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~203_combout\ = (\Decoder3~0_combout\ & ((\Mux39~5_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~198_combout\,
	datad => \Mux39~5_combout\,
	combout => \x_ar~203_combout\);

-- Location: LCCOMB_X62_Y71_N28
\x_ar~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~202_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux39~5_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~196_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \x_ar~196_combout\,
	datac => \Decoder3~6_combout\,
	datad => \Mux39~5_combout\,
	combout => \x_ar~202_combout\);

-- Location: LCCOMB_X62_Y71_N12
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & ((\x_ar~202_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\x_ar~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~203_combout\,
	datad => \x_ar~202_combout\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X62_Y71_N10
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\Mux48~0_combout\) # ((\St:x_count_ini[1]~2_combout\ & (!\St:x_count_ini[0]~2_combout\ & \x_ar~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~199_combout\,
	datad => \Mux48~0_combout\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X62_Y71_N18
\Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = (\Mux49~8_combout\ & ((\Mux49~9_combout\) # ((\Mux48~1_combout\)))) # (!\Mux49~8_combout\ & (!\Mux49~9_combout\ & (\x_ar~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~8_combout\,
	datab => \Mux49~9_combout\,
	datac => \x_ar~204_combout\,
	datad => \Mux48~1_combout\,
	combout => \Mux48~2_combout\);

-- Location: LCCOMB_X62_Y71_N6
\Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = (\Mux49~9_combout\ & ((\Mux48~2_combout\ & ((\x_ar~205_combout\))) # (!\Mux48~2_combout\ & (\x_ar~201_combout\)))) # (!\Mux49~9_combout\ & (((\Mux48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~201_combout\,
	datab => \Mux49~9_combout\,
	datac => \x_ar~205_combout\,
	datad => \Mux48~2_combout\,
	combout => \Mux48~3_combout\);

-- Location: LCCOMB_X62_Y71_N22
\Mux48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~4_combout\ = (\Mux31~1_combout\ & (((\Mux48~3_combout\)))) # (!\Mux31~1_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~206_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\Mux48~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \x_ar~206_combout\,
	datac => \St:x_count_ini[0]~2_combout\,
	datad => \Mux48~3_combout\,
	combout => \Mux48~4_combout\);

-- Location: LCCOMB_X61_Y72_N20
\Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\) # ((\x_ar~187_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (!\St~66_combout\ & (\x_ar~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~194_combout\,
	datad => \x_ar~187_combout\,
	combout => \Selector52~1_combout\);

-- Location: LCCOMB_X61_Y72_N18
\Selector52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~2_combout\ = (\St~66_combout\ & ((\Selector52~1_combout\ & ((\x_ar~178_combout\))) # (!\Selector52~1_combout\ & (\x_ar~184_combout\)))) # (!\St~66_combout\ & (((\Selector52~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~184_combout\,
	datab => \St~66_combout\,
	datac => \Selector52~1_combout\,
	datad => \x_ar~178_combout\,
	combout => \Selector52~2_combout\);

-- Location: LCCOMB_X61_Y72_N24
\Selector52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~3_combout\ = (\St:x_ar[5][4]~7_combout\ & ((\Selector52~0_combout\ & ((\Selector52~2_combout\))) # (!\Selector52~0_combout\ & (\Mux48~4_combout\)))) # (!\St:x_ar[5][4]~7_combout\ & (\Selector52~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \Selector52~0_combout\,
	datac => \Mux48~4_combout\,
	datad => \Selector52~2_combout\,
	combout => \Selector52~3_combout\);

-- Location: LCCOMB_X61_Y72_N12
\St:x_ar[5][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][5]~3_combout\ = \St:x_ar[5][5]~1_combout\ $ (\Selector52~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[5][5]~1_combout\,
	datad => \Selector52~3_combout\,
	combout => \St:x_ar[5][5]~3_combout\);

-- Location: FF_X61_Y72_N13
\St:x_ar[5][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[5][5]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[5][4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[5][5]~_emulated_q\);

-- Location: LCCOMB_X61_Y72_N30
\St:x_ar[5][5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][5]~2_combout\ = (\St~0_combout\ & (\St~107_combout\)) # (!\St~0_combout\ & ((\St:x_ar[5][5]~_emulated_q\ $ (\St:x_ar[5][5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~107_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[5][5]~_emulated_q\,
	datad => \St:x_ar[5][5]~1_combout\,
	combout => \St:x_ar[5][5]~2_combout\);

-- Location: LCCOMB_X60_Y71_N8
\St~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~103_combout\ = (!\L_in[1]~input_o\ & (\St:x_ar[1][5]~2_combout\ & !\L_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \St:x_ar[1][5]~2_combout\,
	datac => \L_in[2]~input_o\,
	combout => \St~103_combout\);

-- Location: LCCOMB_X63_Y71_N22
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\St:x_ar[1][0]~10_combout\ & (((\St:x_ar[1][0]~9_combout\)))) # (!\St:x_ar[1][0]~10_combout\ & ((\St:x_ar[1][0]~9_combout\ & ((\x_ar~202_combout\))) # (!\St:x_ar[1][0]~9_combout\ & (\x_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[5]~input_o\,
	datab => \St:x_ar[1][0]~10_combout\,
	datac => \St:x_ar[1][0]~9_combout\,
	datad => \x_ar~202_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X63_Y71_N16
\Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (\St:x_ar[1][0]~10_combout\ & ((\Selector16~0_combout\ & (\Selector16~2_combout\)) # (!\Selector16~0_combout\ & ((\Mux48~4_combout\))))) # (!\St:x_ar[1][0]~10_combout\ & (((\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~2_combout\,
	datab => \St:x_ar[1][0]~10_combout\,
	datac => \Selector16~0_combout\,
	datad => \Mux48~4_combout\,
	combout => \Selector16~3_combout\);

-- Location: LCCOMB_X60_Y71_N24
\St:x_ar[1][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][5]~3_combout\ = \St:x_ar[1][5]~1_combout\ $ (\Selector16~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][5]~1_combout\,
	datad => \Selector16~3_combout\,
	combout => \St:x_ar[1][5]~3_combout\);

-- Location: FF_X60_Y71_N25
\St:x_ar[1][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[1][5]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[1][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[1][5]~_emulated_q\);

-- Location: LCCOMB_X60_Y71_N6
\St:x_ar[1][5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][5]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~103_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[1][5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][5]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~103_combout\,
	combout => \St:x_ar[1][5]~1_combout\);

-- Location: LCCOMB_X60_Y71_N14
\St:x_ar[1][5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][5]~2_combout\ = (\St~0_combout\ & (\St~103_combout\)) # (!\St~0_combout\ & ((\St:x_ar[1][5]~_emulated_q\ $ (\St:x_ar[1][5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~103_combout\,
	datac => \St:x_ar[1][5]~_emulated_q\,
	datad => \St:x_ar[1][5]~1_combout\,
	combout => \St:x_ar[1][5]~2_combout\);

-- Location: LCCOMB_X58_Y71_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_ar[2][5]~2_combout\) # ((!\St:x_count_ini[1]~2_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (((\St:x_ar[3][5]~2_combout\ & !\St:x_count_ini[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][5]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \St:x_ar[3][5]~2_combout\,
	datad => \St:x_count_ini[1]~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X58_Y71_N18
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Add4~0_combout\ & ((\Mux3~0_combout\ & (\St:x_ar[0][5]~2_combout\)) # (!\Mux3~0_combout\ & ((\St:x_ar[1][5]~2_combout\))))) # (!\Add4~0_combout\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][5]~2_combout\,
	datab => \Add4~0_combout\,
	datac => \St:x_ar[1][5]~2_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X58_Y71_N24
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux8~2_combout\ & ((\Mux8~3_combout\) # ((\Mux3~1_combout\)))) # (!\Mux8~2_combout\ & (!\Mux8~3_combout\ & (\St:x_ar[6][5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \Mux8~3_combout\,
	datac => \St:x_ar[6][5]~2_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X58_Y71_N6
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux8~3_combout\ & ((\Mux3~2_combout\ & (\St:x_ar[4][5]~2_combout\)) # (!\Mux3~2_combout\ & ((\St:x_ar[5][5]~2_combout\))))) # (!\Mux8~3_combout\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][5]~2_combout\,
	datab => \Mux8~3_combout\,
	datac => \St:x_ar[5][5]~2_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X58_Y71_N14
\x_ar~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~173_combout\ = (\Decoder3~0_combout\ & ((\Mux3~3_combout\))) # (!\Decoder3~0_combout\ & (\St:x_ar[6][5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][5]~2_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux3~3_combout\,
	combout => \x_ar~173_combout\);

-- Location: LCCOMB_X59_Y71_N0
\x_ar~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~185_combout\ = (\Equal8~0_combout\ & ((\Mux12~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~173_combout\,
	datac => \Mux12~3_combout\,
	datad => \Equal8~0_combout\,
	combout => \x_ar~185_combout\);

-- Location: LCCOMB_X62_Y72_N14
\x_ar~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~186_combout\ = (\Decoder3~2_combout\ & ((\Mux21~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~185_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~185_combout\,
	datad => \Mux21~3_combout\,
	combout => \x_ar~186_combout\);

-- Location: LCCOMB_X61_Y72_N6
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux31~0_combout\ & ((\Mux31~1_combout\) # ((\x_ar~187_combout\)))) # (!\Mux31~0_combout\ & (!\Mux31~1_combout\ & (\x_ar~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux31~1_combout\,
	datac => \x_ar~188_combout\,
	datad => \x_ar~187_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X62_Y72_N20
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~191_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~191_combout\,
	datad => \x_ar~192_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X62_Y72_N24
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux30~1_combout\ & ((\x_ar~193_combout\))) # (!\Mux30~1_combout\ & (\x_ar~189_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~189_combout\,
	datac => \x_ar~193_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X62_Y72_N6
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux31~1_combout\ & ((\Mux30~0_combout\ & ((\Mux30~2_combout\))) # (!\Mux30~0_combout\ & (\x_ar~186_combout\)))) # (!\Mux31~1_combout\ & (((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \x_ar~186_combout\,
	datac => \Mux30~0_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X61_Y71_N16
\x_ar~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~195_combout\ = (\Decoder3~5_combout\ & (\Mux30~3_combout\)) # (!\Decoder3~5_combout\ & ((\x_ar~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \Mux30~3_combout\,
	datad => \x_ar~186_combout\,
	combout => \x_ar~195_combout\);

-- Location: LCCOMB_X62_Y71_N4
\x_ar~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~204_combout\ = (\Decoder3~4_combout\ & ((\Mux39~5_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~195_combout\,
	datad => \Mux39~5_combout\,
	combout => \x_ar~204_combout\);

-- Location: LCCOMB_X59_Y71_N30
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\St:x_ar[6][1]~6_combout\ & ((\St:x_ar[6][1]~7_combout\) # ((\x_ar~204_combout\)))) # (!\St:x_ar[6][1]~6_combout\ & (!\St:x_ar[6][1]~7_combout\ & (\x_in[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~6_combout\,
	datab => \St:x_ar[6][1]~7_combout\,
	datac => \x_in[5]~input_o\,
	datad => \x_ar~204_combout\,
	combout => \Selector61~0_combout\);

-- Location: LCCOMB_X59_Y71_N16
\Selector61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~3_combout\ = (\St:x_ar[6][1]~7_combout\ & ((\Selector61~0_combout\ & (\Selector61~2_combout\)) # (!\Selector61~0_combout\ & ((\Mux48~4_combout\))))) # (!\St:x_ar[6][1]~7_combout\ & (((\Selector61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector61~2_combout\,
	datab => \St:x_ar[6][1]~7_combout\,
	datac => \Selector61~0_combout\,
	datad => \Mux48~4_combout\,
	combout => \Selector61~3_combout\);

-- Location: LCCOMB_X59_Y71_N28
\St:x_ar[6][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][5]~3_combout\ = \St:x_ar[6][5]~1_combout\ $ (\Selector61~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][5]~1_combout\,
	datad => \Selector61~3_combout\,
	combout => \St:x_ar[6][5]~3_combout\);

-- Location: FF_X59_Y71_N29
\St:x_ar[6][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[6][5]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[6][5]~_emulated_q\);

-- Location: LCCOMB_X59_Y71_N14
\St:x_ar[6][5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][5]~2_combout\ = (\St~0_combout\ & (\St~109_combout\)) # (!\St~0_combout\ & ((\St:x_ar[6][5]~_emulated_q\ $ (\St:x_ar[6][5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~109_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[6][5]~_emulated_q\,
	datad => \St:x_ar[6][5]~1_combout\,
	combout => \St:x_ar[6][5]~2_combout\);

-- Location: LCCOMB_X61_Y70_N26
\St~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~108_combout\ = (\St:x_ar[4][5]~2_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \St:x_ar[4][5]~2_combout\,
	datac => \L_in[1]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~108_combout\);

-- Location: LCCOMB_X61_Y70_N6
\St:x_ar[4][5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][5]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~108_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[4][5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][5]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~108_combout\,
	combout => \St:x_ar[4][5]~1_combout\);

-- Location: LCCOMB_X62_Y71_N26
\x_ar~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~201_combout\ = (\Decoder3~2_combout\ & ((\Mux39~5_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~200_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~200_combout\,
	datad => \Mux39~5_combout\,
	combout => \x_ar~201_combout\);

-- Location: LCCOMB_X61_Y70_N4
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\St:x_ar[4][6]~7_combout\ & ((\St:x_ar[4][6]~8_combout\) # ((\x_ar~201_combout\)))) # (!\St:x_ar[4][6]~7_combout\ & (!\St:x_ar[4][6]~8_combout\ & ((\x_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][6]~7_combout\,
	datab => \St:x_ar[4][6]~8_combout\,
	datac => \x_ar~201_combout\,
	datad => \x_in[5]~input_o\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X61_Y70_N24
\Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~3_combout\ = (\St:x_ar[4][6]~8_combout\ & ((\Selector43~0_combout\ & (\Selector43~2_combout\)) # (!\Selector43~0_combout\ & ((\Mux48~4_combout\))))) # (!\St:x_ar[4][6]~8_combout\ & (((\Selector43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~2_combout\,
	datab => \St:x_ar[4][6]~8_combout\,
	datac => \Selector43~0_combout\,
	datad => \Mux48~4_combout\,
	combout => \Selector43~3_combout\);

-- Location: LCCOMB_X61_Y70_N2
\St:x_ar[4][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][5]~3_combout\ = \St:x_ar[4][5]~1_combout\ $ (\Selector43~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[4][5]~1_combout\,
	datad => \Selector43~3_combout\,
	combout => \St:x_ar[4][5]~3_combout\);

-- Location: FF_X61_Y70_N3
\St:x_ar[4][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[4][5]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[4][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[4][5]~_emulated_q\);

-- Location: LCCOMB_X61_Y70_N0
\St:x_ar[4][5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][5]~2_combout\ = (\St~0_combout\ & (((\St~108_combout\)))) # (!\St~0_combout\ & (\St:x_ar[4][5]~_emulated_q\ $ (((\St:x_ar[4][5]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St:x_ar[4][5]~_emulated_q\,
	datac => \St~108_combout\,
	datad => \St:x_ar[4][5]~1_combout\,
	combout => \St:x_ar[4][5]~2_combout\);

-- Location: LCCOMB_X61_Y70_N28
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\Mux55~1_combout\ & ((\St:x_ar[5][5]~2_combout\) # ((\Mux55~0_combout\)))) # (!\Mux55~1_combout\ & (((!\Mux55~0_combout\ & \St:x_ar[4][5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \St:x_ar[5][5]~2_combout\,
	datac => \Mux55~0_combout\,
	datad => \St:x_ar[4][5]~2_combout\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X61_Y71_N28
\Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\St~66_combout\ & (\St:x_ar[1][0]~6_combout\)) # (!\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\ & (\x_ar~189_combout\)) # (!\St:x_ar[1][0]~6_combout\ & ((\x_ar~198_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~189_combout\,
	datad => \x_ar~198_combout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X61_Y71_N18
\Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\St~66_combout\ & ((\Selector25~1_combout\ & ((\x_ar~176_combout\))) # (!\Selector25~1_combout\ & (\x_ar~182_combout\)))) # (!\St~66_combout\ & (((\Selector25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~182_combout\,
	datab => \x_ar~176_combout\,
	datac => \St~66_combout\,
	datad => \Selector25~1_combout\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X61_Y71_N2
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\St:x_ar[2][2]~7_combout\ & (((\St:x_ar[2][2]~6_combout\)))) # (!\St:x_ar[2][2]~7_combout\ & ((\St:x_ar[2][2]~6_combout\ & ((\x_ar~203_combout\))) # (!\St:x_ar[2][2]~6_combout\ & (\x_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~7_combout\,
	datab => \x_in[5]~input_o\,
	datac => \x_ar~203_combout\,
	datad => \St:x_ar[2][2]~6_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X61_Y71_N4
\Selector25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (\St:x_ar[2][2]~7_combout\ & ((\Selector25~0_combout\ & (\Selector25~2_combout\)) # (!\Selector25~0_combout\ & ((\Mux48~4_combout\))))) # (!\St:x_ar[2][2]~7_combout\ & (((\Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~7_combout\,
	datab => \Selector25~2_combout\,
	datac => \Selector25~0_combout\,
	datad => \Mux48~4_combout\,
	combout => \Selector25~3_combout\);

-- Location: LCCOMB_X61_Y71_N26
\St~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~104_combout\ = (!\L_in[2]~input_o\ & (\St:x_ar[2][5]~2_combout\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \St:x_ar[2][5]~2_combout\,
	datad => \L_in[0]~input_o\,
	combout => \St~104_combout\);

-- Location: LCCOMB_X61_Y71_N6
\St:x_ar[2][5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][5]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~104_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[2][5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][5]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~104_combout\,
	combout => \St:x_ar[2][5]~1_combout\);

-- Location: LCCOMB_X61_Y71_N8
\St:x_ar[2][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][5]~3_combout\ = \Selector25~3_combout\ $ (\St:x_ar[2][5]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector25~3_combout\,
	datad => \St:x_ar[2][5]~1_combout\,
	combout => \St:x_ar[2][5]~3_combout\);

-- Location: FF_X61_Y71_N9
\St:x_ar[2][5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[2][5]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[2][5]~_emulated_q\);

-- Location: LCCOMB_X61_Y71_N22
\St:x_ar[2][5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][5]~2_combout\ = (\St~0_combout\ & (\St~104_combout\)) # (!\St~0_combout\ & ((\St:x_ar[2][5]~_emulated_q\ $ (\St:x_ar[2][5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~104_combout\,
	datab => \St:x_ar[2][5]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[2][5]~1_combout\,
	combout => \St:x_ar[2][5]~2_combout\);

-- Location: LCCOMB_X58_Y72_N16
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\St:count[0]~q\ & (\St:count[1]~q\)) # (!\St:count[0]~q\ & ((\St:count[1]~q\ & ((\St:x_ar[2][5]~2_combout\))) # (!\St:count[1]~q\ & (\St:x_ar[0][5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[0]~q\,
	datab => \St:count[1]~q\,
	datac => \St:x_ar[0][5]~2_combout\,
	datad => \St:x_ar[2][5]~2_combout\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X57_Y71_N16
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\St:count[0]~q\ & ((\Mux57~0_combout\ & ((\St:x_ar[3][5]~2_combout\))) # (!\Mux57~0_combout\ & (\St:x_ar[1][5]~2_combout\)))) # (!\St:count[0]~q\ & (((\Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][5]~2_combout\,
	datab => \St:count[0]~q\,
	datac => \St:x_ar[3][5]~2_combout\,
	datad => \Mux57~0_combout\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X57_Y71_N14
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\Mux55~0_combout\ & ((\Mux57~2_combout\ & (\St:x_ar[6][5]~2_combout\)) # (!\Mux57~2_combout\ & ((\Mux57~1_combout\))))) # (!\Mux55~0_combout\ & (((\Mux57~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \St:x_ar[6][5]~2_combout\,
	datac => \Mux57~2_combout\,
	datad => \Mux57~1_combout\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X62_Y68_N28
\St~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~116_combout\ = (\St:x_ar[6][6]~2_combout\ & (((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \St:x_ar[6][6]~2_combout\,
	combout => \St~116_combout\);

-- Location: LCCOMB_X62_Y68_N2
\St:x_ar[6][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][6]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~116_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[6][6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][6]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~116_combout\,
	combout => \St:x_ar[6][6]~1_combout\);

-- Location: LCCOMB_X62_Y68_N22
\St~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~112_combout\ = (!\L_in[2]~input_o\ & (!\L_in[1]~input_o\ & \St:x_ar[1][6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \St:x_ar[1][6]~2_combout\,
	combout => \St~112_combout\);

-- Location: LCCOMB_X62_Y68_N16
\St:x_ar[1][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][6]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~112_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[1][6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][6]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~112_combout\,
	combout => \St:x_ar[1][6]~1_combout\);

-- Location: LCCOMB_X62_Y68_N10
\St:x_ar[1][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][6]~2_combout\ = (\St~0_combout\ & (((\St~112_combout\)))) # (!\St~0_combout\ & (\St:x_ar[1][6]~_emulated_q\ $ (((\St:x_ar[1][6]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][6]~_emulated_q\,
	datab => \St~112_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[1][6]~1_combout\,
	combout => \St:x_ar[1][6]~2_combout\);

-- Location: LCCOMB_X61_Y69_N30
\St~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~113_combout\ = (!\L_in[2]~input_o\ & (!\L_in[1]~input_o\ & (!\L_in[0]~input_o\ & \St:x_ar[0][6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \St:x_ar[0][6]~2_combout\,
	combout => \St~113_combout\);

-- Location: IOIBUF_X62_Y73_N15
\x_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: LCCOMB_X61_Y69_N28
\St:x_ar[0][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][6]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~113_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[0][6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[0][6]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~113_combout\,
	combout => \St:x_ar[0][6]~1_combout\);

-- Location: LCCOMB_X61_Y69_N4
\St:x_ar[0][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][6]~3_combout\ = \x_in[6]~input_o\ $ (\St:x_ar[0][6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_in[6]~input_o\,
	datad => \St:x_ar[0][6]~1_combout\,
	combout => \St:x_ar[0][6]~3_combout\);

-- Location: FF_X61_Y69_N19
\St:x_ar[0][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_ar[0][6]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_ar[0][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[0][6]~_emulated_q\);

-- Location: LCCOMB_X61_Y69_N18
\St:x_ar[0][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][6]~2_combout\ = (\St~0_combout\ & (\St~113_combout\)) # (!\St~0_combout\ & ((\St:x_ar[0][6]~_emulated_q\ $ (\St:x_ar[0][6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~113_combout\,
	datac => \St:x_ar[0][6]~_emulated_q\,
	datad => \St:x_ar[0][6]~1_combout\,
	combout => \St:x_ar[0][6]~2_combout\);

-- Location: LCCOMB_X61_Y68_N8
\St~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~111_combout\ = (\St:x_ar[2][6]~2_combout\ & (!\L_in[2]~input_o\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][6]~2_combout\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~111_combout\);

-- Location: LCCOMB_X61_Y68_N18
\St:x_ar[2][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][6]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~111_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[2][6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][6]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~111_combout\,
	combout => \St:x_ar[2][6]~1_combout\);

-- Location: LCCOMB_X61_Y65_N18
\x_ar~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~211_combout\ = (\Decoder3~4_combout\ & ((\Mux2~3_combout\))) # (!\Decoder3~4_combout\ & (\St:x_ar[2][6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][6]~2_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux2~3_combout\,
	combout => \x_ar~211_combout\);

-- Location: LCCOMB_X65_Y65_N26
\x_ar~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~218_combout\ = (\Decoder3~3_combout\ & ((\Mux11~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~211_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux11~3_combout\,
	combout => \x_ar~218_combout\);

-- Location: LCCOMB_X65_Y65_N4
\x_ar~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~214_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux11~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~208_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~208_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \Decoder3~6_combout\,
	datad => \Mux11~3_combout\,
	combout => \x_ar~214_combout\);

-- Location: LCCOMB_X65_Y65_N14
\x_ar~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~219_combout\ = (\Decoder3~0_combout\ & ((\Mux11~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~213_combout\,
	datad => \Mux11~3_combout\,
	combout => \x_ar~219_combout\);

-- Location: LCCOMB_X61_Y65_N30
\x_ar~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~212_combout\ = (\Decoder3~5_combout\ & ((\Mux2~3_combout\))) # (!\Decoder3~5_combout\ & (\St:x_ar[1][6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][6]~2_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux2~3_combout\,
	combout => \x_ar~212_combout\);

-- Location: LCCOMB_X65_Y65_N8
\x_ar~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~216_combout\ = (\Decoder3~4_combout\ & ((\Mux11~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~212_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~4_combout\,
	datac => \x_ar~212_combout\,
	datad => \Mux11~3_combout\,
	combout => \x_ar~216_combout\);

-- Location: LCCOMB_X61_Y65_N22
\x_ar~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~209_combout\ = (\Decoder3~2_combout\ & ((\Mux2~3_combout\))) # (!\Decoder3~2_combout\ & (\St:x_ar[0][6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][6]~2_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux2~3_combout\,
	combout => \x_ar~209_combout\);

-- Location: LCCOMB_X65_Y65_N18
\x_ar~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~217_combout\ = (\Decoder3~5_combout\ & ((\Mux11~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~209_combout\,
	datad => \Mux11~3_combout\,
	combout => \x_ar~217_combout\);

-- Location: LCCOMB_X65_Y65_N20
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\x_ar~217_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & (\x_ar~216_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~216_combout\,
	datad => \x_ar~217_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X65_Y65_N0
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Add4~0_combout\ & ((\Mux20~0_combout\ & ((\x_ar~218_combout\))) # (!\Mux20~0_combout\ & (\x_ar~215_combout\)))) # (!\Add4~0_combout\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~215_combout\,
	datab => \Add4~0_combout\,
	datac => \x_ar~218_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X65_Y65_N28
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux22~1_combout\ & ((\Mux22~0_combout\) # ((\Mux20~1_combout\)))) # (!\Mux22~1_combout\ & (!\Mux22~0_combout\ & (\x_ar~219_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~219_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X65_Y65_N24
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux22~0_combout\ & ((\Mux20~2_combout\ & (\x_ar~220_combout\)) # (!\Mux20~2_combout\ & ((\x_ar~214_combout\))))) # (!\Mux22~0_combout\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~220_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~214_combout\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X65_Y65_N16
\x_ar~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~224_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux20~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~218_combout\)))) # (!\Decoder3~1_combout\ & (((\x_ar~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~218_combout\,
	datad => \Mux20~3_combout\,
	combout => \x_ar~224_combout\);

-- Location: LCCOMB_X65_Y65_N6
\x_ar~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~223_combout\ = (\Decoder3~0_combout\ & ((\Mux20~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~214_combout\,
	datad => \Mux20~3_combout\,
	combout => \x_ar~223_combout\);

-- Location: LCCOMB_X66_Y65_N24
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux31~1_combout\ & ((\Mux31~0_combout\) # ((\x_ar~222_combout\)))) # (!\Mux31~1_combout\ & (!\Mux31~0_combout\ & (\x_ar~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \x_ar~223_combout\,
	datad => \x_ar~222_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X66_Y65_N4
\x_ar~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~221_combout\ = (\Equal8~0_combout\ & ((\Mux20~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~219_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~219_combout\,
	datac => \Equal8~0_combout\,
	datad => \Mux20~3_combout\,
	combout => \x_ar~221_combout\);

-- Location: LCCOMB_X61_Y65_N4
\x_ar~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~210_combout\ = (\Decoder3~3_combout\ & ((\Mux2~3_combout\))) # (!\Decoder3~3_combout\ & (\St:x_ar[3][6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][6]~2_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux2~3_combout\,
	combout => \x_ar~210_combout\);

-- Location: LCCOMB_X65_Y65_N22
\x_ar~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~215_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux11~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~210_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \x_ar~210_combout\,
	datad => \Mux11~3_combout\,
	combout => \x_ar~215_combout\);

-- Location: LCCOMB_X66_Y65_N26
\x_ar~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~227_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux20~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~215_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \x_ar~215_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux20~3_combout\,
	combout => \x_ar~227_combout\);

-- Location: LCCOMB_X66_Y65_N30
\x_ar~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~225_combout\ = (\Decoder3~3_combout\ & ((\Mux20~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~216_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux20~3_combout\,
	combout => \x_ar~225_combout\);

-- Location: LCCOMB_X65_Y65_N10
\x_ar~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~226_combout\ = (\Decoder3~4_combout\ & ((\Mux20~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~4_combout\,
	datab => \x_ar~217_combout\,
	datad => \Mux20~3_combout\,
	combout => \x_ar~226_combout\);

-- Location: LCCOMB_X66_Y65_N28
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~225_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\x_ar~226_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~225_combout\,
	datad => \x_ar~226_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X66_Y65_N20
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux29~1_combout\ & ((\x_ar~227_combout\))) # (!\Mux29~1_combout\ & (\x_ar~224_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~224_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~227_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X66_Y65_N18
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux31~0_combout\ & ((\Mux29~0_combout\ & ((\Mux29~2_combout\))) # (!\Mux29~0_combout\ & (\x_ar~221_combout\)))) # (!\Mux31~0_combout\ & (\Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Mux29~0_combout\,
	datac => \x_ar~221_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X66_Y65_N2
\x_ar~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~232_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux29~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~224_combout\)))) # (!\Decoder3~6_combout\ & (((\x_ar~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~224_combout\,
	datad => \Mux29~3_combout\,
	combout => \x_ar~232_combout\);

-- Location: LCCOMB_X66_Y65_N16
\Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\x_ar~224_combout\) # ((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((!\St~66_combout\ & \x_ar~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~224_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~232_combout\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X62_Y65_N22
\Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\St~66_combout\ & ((\Selector24~1_combout\ & (\x_ar~211_combout\)) # (!\Selector24~1_combout\ & ((\x_ar~218_combout\))))) # (!\St~66_combout\ & (((\Selector24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~211_combout\,
	datab => \St~66_combout\,
	datac => \x_ar~218_combout\,
	datad => \Selector24~1_combout\,
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X66_Y65_N12
\x_ar~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~229_combout\ = (\Decoder3~2_combout\ & ((\Mux29~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~221_combout\,
	datad => \Mux29~3_combout\,
	combout => \x_ar~229_combout\);

-- Location: LCCOMB_X66_Y65_N22
\x_ar~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~230_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux29~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~225_combout\)))) # (!\Decoder3~1_combout\ & (((\x_ar~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~225_combout\,
	datad => \Mux29~3_combout\,
	combout => \x_ar~230_combout\);

-- Location: LCCOMB_X66_Y65_N8
\x_ar~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~231_combout\ = (\Decoder3~0_combout\ & ((\Mux29~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~227_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~227_combout\,
	datad => \Mux29~3_combout\,
	combout => \x_ar~231_combout\);

-- Location: LCCOMB_X66_Y65_N0
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & ((\x_ar~232_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # ((\x_ar~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~231_combout\,
	datad => \x_ar~232_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X65_Y67_N24
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\Add4~0_combout\ & ((\Mux38~0_combout\ & (\x_ar~233_combout\)) # (!\Mux38~0_combout\ & ((\x_ar~230_combout\))))) # (!\Add4~0_combout\ & (((\Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~233_combout\,
	datab => \Add4~0_combout\,
	datac => \x_ar~230_combout\,
	datad => \Mux38~0_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X65_Y67_N14
\Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Mux39~0_combout\ & (\Mux39~1_combout\)) # (!\Mux39~0_combout\ & ((\Mux39~1_combout\ & (\x_ar~229_combout\)) # (!\Mux39~1_combout\ & ((\Mux38~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \Mux39~1_combout\,
	datac => \x_ar~229_combout\,
	datad => \Mux38~1_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X66_Y67_N4
\x_ar~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~234_combout\ = (\Equal8~0_combout\ & (\Mux29~3_combout\)) # (!\Equal8~0_combout\ & ((\x_ar~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \Mux29~3_combout\,
	datad => \x_ar~223_combout\,
	combout => \x_ar~234_combout\);

-- Location: LCCOMB_X65_Y67_N0
\Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (\Mux39~0_combout\ & ((\Mux38~2_combout\ & ((\x_ar~234_combout\))) # (!\Mux38~2_combout\ & (\x_ar~228_combout\)))) # (!\Mux39~0_combout\ & (((\Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \x_ar~228_combout\,
	datac => \Mux38~2_combout\,
	datad => \x_ar~234_combout\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X61_Y68_N14
\x_ar~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~239_combout\ = (\Decoder3~0_combout\ & ((\Mux38~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~232_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~232_combout\,
	datad => \Mux38~3_combout\,
	combout => \x_ar~239_combout\);

-- Location: LCCOMB_X65_Y67_N26
\x_ar~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~233_combout\ = (\Decoder3~3_combout\ & ((\Mux29~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~226_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~226_combout\,
	datab => \Decoder3~3_combout\,
	datac => \Mux29~3_combout\,
	combout => \x_ar~233_combout\);

-- Location: LCCOMB_X65_Y68_N20
\x_ar~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~240_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux38~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~230_combout\)))) # (!\Decoder3~6_combout\ & (((\x_ar~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~6_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \x_ar~230_combout\,
	datad => \Mux38~3_combout\,
	combout => \x_ar~240_combout\);

-- Location: LCCOMB_X62_Y68_N26
\Mux47~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~11_combout\ = (!\Mux49~9_combout\ & ((\St:x_count_ini[0]~2_combout\ & ((\x_ar~240_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (\x_ar~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \Mux49~9_combout\,
	datac => \x_ar~233_combout\,
	datad => \x_ar~240_combout\,
	combout => \Mux47~11_combout\);

-- Location: LCCOMB_X62_Y68_N14
\Mux47~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~13_combout\ = (\St:x_count_ini[1]~2_combout\ & (\Mux47~11_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~239_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \Mux47~11_combout\,
	datad => \x_ar~239_combout\,
	combout => \Mux47~13_combout\);

-- Location: LCCOMB_X65_Y67_N22
\Mux47~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~14_combout\ = (\St:x_count_ini[1]~2_combout\) # ((\x_ar~237_combout\) # (!\St:x_count_ini[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \x_ar~237_combout\,
	combout => \Mux47~14_combout\);

-- Location: LCCOMB_X63_Y68_N22
\x_ar~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~236_combout\ = (\Equal8~0_combout\ & ((\Mux38~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~231_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \x_ar~231_combout\,
	datad => \Mux38~3_combout\,
	combout => \x_ar~236_combout\);

-- Location: LCCOMB_X62_Y68_N4
\Mux47~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~9_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\Mux31~1_combout\ & (\Mux47~14_combout\)) # (!\Mux31~1_combout\ & ((\x_ar~236_combout\))))) # (!\St:x_count_ini[0]~2_combout\ & (((\Mux47~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \Mux31~1_combout\,
	datac => \Mux47~14_combout\,
	datad => \x_ar~236_combout\,
	combout => \Mux47~9_combout\);

-- Location: LCCOMB_X61_Y68_N2
\x_ar~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~235_combout\ = (\Decoder3~5_combout\ & ((\Mux38~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~229_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~229_combout\,
	datad => \Mux38~3_combout\,
	combout => \x_ar~235_combout\);

-- Location: LCCOMB_X61_Y68_N24
\Mux47~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~8_combout\ = (\Mux53~13_combout\) # (((\Mux49~9_combout\ & \x_ar~235_combout\)) # (!\Mux49~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~13_combout\,
	datab => \Mux49~9_combout\,
	datac => \Mux49~8_combout\,
	datad => \x_ar~235_combout\,
	combout => \Mux47~8_combout\);

-- Location: LCCOMB_X62_Y68_N0
\Mux47~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~12_combout\ = (\Mux47~8_combout\ & (\Mux47~10_combout\ & ((\Mux47~9_combout\)))) # (!\Mux47~8_combout\ & (((\Mux47~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~10_combout\,
	datab => \Mux47~13_combout\,
	datac => \Mux47~9_combout\,
	datad => \Mux47~8_combout\,
	combout => \Mux47~12_combout\);

-- Location: LCCOMB_X61_Y68_N20
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\St:x_ar[2][2]~7_combout\ & (((\Mux47~12_combout\) # (\St:x_ar[2][2]~6_combout\)))) # (!\St:x_ar[2][2]~7_combout\ & (\x_in[6]~input_o\ & ((!\St:x_ar[2][2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[6]~input_o\,
	datab => \St:x_ar[2][2]~7_combout\,
	datac => \Mux47~12_combout\,
	datad => \St:x_ar[2][2]~6_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X61_Y68_N6
\Selector24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (\St:x_ar[2][2]~6_combout\ & ((\Selector24~0_combout\ & (\Selector24~2_combout\)) # (!\Selector24~0_combout\ & ((\x_ar~239_combout\))))) # (!\St:x_ar[2][2]~6_combout\ & (((\Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~6_combout\,
	datab => \Selector24~2_combout\,
	datac => \x_ar~239_combout\,
	datad => \Selector24~0_combout\,
	combout => \Selector24~3_combout\);

-- Location: LCCOMB_X61_Y68_N16
\St:x_ar[2][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][6]~3_combout\ = \St:x_ar[2][6]~1_combout\ $ (\Selector24~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][6]~1_combout\,
	datad => \Selector24~3_combout\,
	combout => \St:x_ar[2][6]~3_combout\);

-- Location: FF_X61_Y68_N17
\St:x_ar[2][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[2][6]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[2][6]~_emulated_q\);

-- Location: LCCOMB_X61_Y68_N22
\St:x_ar[2][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][6]~2_combout\ = (\St~0_combout\ & (\St~111_combout\)) # (!\St~0_combout\ & ((\St:x_ar[2][6]~_emulated_q\ $ (\St:x_ar[2][6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~111_combout\,
	datab => \St:x_ar[2][6]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[2][6]~1_combout\,
	combout => \St:x_ar[2][6]~2_combout\);

-- Location: LCCOMB_X61_Y65_N12
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\St:x_ar[2][6]~2_combout\) # (!\St:x_count_ini[1]~2_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (\St:x_ar[3][6]~2_combout\ & ((!\St:x_count_ini[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][6]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \St:x_ar[2][6]~2_combout\,
	datad => \St:x_count_ini[1]~2_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X61_Y65_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Add4~0_combout\ & ((\Mux2~0_combout\ & ((\St:x_ar[0][6]~2_combout\))) # (!\Mux2~0_combout\ & (\St:x_ar[1][6]~2_combout\)))) # (!\Add4~0_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \St:x_ar[1][6]~2_combout\,
	datac => \St:x_ar[0][6]~2_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X61_Y65_N16
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux8~2_combout\ & (((\Mux8~3_combout\)))) # (!\Mux8~2_combout\ & ((\Mux8~3_combout\ & (\St:x_ar[5][6]~2_combout\)) # (!\Mux8~3_combout\ & ((\St:x_ar[6][6]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][6]~2_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux8~3_combout\,
	datad => \St:x_ar[6][6]~2_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X61_Y65_N10
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux8~2_combout\ & ((\Mux2~2_combout\ & (\St:x_ar[4][6]~2_combout\)) # (!\Mux2~2_combout\ & ((\Mux2~1_combout\))))) # (!\Mux8~2_combout\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][6]~2_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X61_Y65_N28
\x_ar~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~213_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux2~3_combout\))) # (!\Decoder3~6_combout\ & (\St:x_ar[5][6]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[5][6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][6]~2_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \Decoder3~6_combout\,
	datad => \Mux2~3_combout\,
	combout => \x_ar~213_combout\);

-- Location: LCCOMB_X61_Y65_N8
\x_ar~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~208_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux2~3_combout\))) # (!\Decoder3~1_combout\ & (\St:x_ar[4][6]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[4][6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][6]~2_combout\,
	datab => \St:x_count_ini[2]~2_combout\,
	datac => \Decoder3~1_combout\,
	datad => \Mux2~3_combout\,
	combout => \x_ar~208_combout\);

-- Location: LCCOMB_X61_Y65_N20
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~210_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\x_ar~211_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~210_combout\,
	datad => \x_ar~211_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X61_Y65_N24
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux11~0_combout\ & ((\x_ar~212_combout\))) # (!\Mux11~0_combout\ & (\x_ar~209_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~209_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~212_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X61_Y65_N14
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux14~1_combout\ & ((\Mux14~0_combout\) # ((\x_ar~208_combout\)))) # (!\Mux14~1_combout\ & (!\Mux14~0_combout\ & ((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \x_ar~208_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X65_Y65_N2
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux14~0_combout\ & ((\Mux11~2_combout\ & ((\x_ar~213_combout\))) # (!\Mux11~2_combout\ & (\x_ar~207_combout\)))) # (!\Mux14~0_combout\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~207_combout\,
	datab => \Mux14~0_combout\,
	datac => \x_ar~213_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X65_Y65_N30
\x_ar~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~220_combout\ = (\Equal8~0_combout\ & ((\Mux11~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~207_combout\,
	datac => \Equal8~0_combout\,
	datad => \Mux11~3_combout\,
	combout => \x_ar~220_combout\);

-- Location: LCCOMB_X66_Y65_N6
\x_ar~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~222_combout\ = (\Decoder3~2_combout\ & ((\Mux20~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~220_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux20~3_combout\,
	combout => \x_ar~222_combout\);

-- Location: LCCOMB_X66_Y67_N14
\x_ar~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~228_combout\ = (\Decoder3~5_combout\ & ((\Mux29~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~222_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~222_combout\,
	datac => \Mux29~3_combout\,
	datad => \Decoder3~5_combout\,
	combout => \x_ar~228_combout\);

-- Location: LCCOMB_X65_Y67_N6
\x_ar~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~237_combout\ = (\Decoder3~4_combout\ & ((\Mux38~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~228_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~228_combout\,
	datad => \Mux38~3_combout\,
	combout => \x_ar~237_combout\);

-- Location: LCCOMB_X62_Y68_N24
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\St:x_ar[6][1]~7_combout\ & ((\St:x_ar[6][1]~6_combout\) # ((\Mux47~12_combout\)))) # (!\St:x_ar[6][1]~7_combout\ & (!\St:x_ar[6][1]~6_combout\ & (\x_in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][1]~7_combout\,
	datab => \St:x_ar[6][1]~6_combout\,
	datac => \x_in[6]~input_o\,
	datad => \Mux47~12_combout\,
	combout => \Selector60~0_combout\);

-- Location: LCCOMB_X62_Y68_N6
\Selector60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~3_combout\ = (\St:x_ar[6][1]~6_combout\ & ((\Selector60~0_combout\ & (\Selector60~2_combout\)) # (!\Selector60~0_combout\ & ((\x_ar~237_combout\))))) # (!\St:x_ar[6][1]~6_combout\ & (((\Selector60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector60~2_combout\,
	datab => \St:x_ar[6][1]~6_combout\,
	datac => \x_ar~237_combout\,
	datad => \Selector60~0_combout\,
	combout => \Selector60~3_combout\);

-- Location: LCCOMB_X62_Y68_N20
\St:x_ar[6][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][6]~3_combout\ = \St:x_ar[6][6]~1_combout\ $ (\Selector60~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][6]~1_combout\,
	datad => \Selector60~3_combout\,
	combout => \St:x_ar[6][6]~3_combout\);

-- Location: FF_X62_Y68_N21
\St:x_ar[6][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[6][6]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[6][6]~_emulated_q\);

-- Location: LCCOMB_X62_Y68_N18
\St:x_ar[6][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][6]~2_combout\ = (\St~0_combout\ & (\St~116_combout\)) # (!\St~0_combout\ & ((\St:x_ar[6][6]~_emulated_q\ $ (\St:x_ar[6][6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~116_combout\,
	datab => \St:x_ar[6][6]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[6][6]~1_combout\,
	combout => \St:x_ar[6][6]~2_combout\);

-- Location: LCCOMB_X63_Y68_N6
\Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\) # ((\x_ar~215_combout\)))) # (!\St~66_combout\ & (!\St:x_ar[1][0]~6_combout\ & (\x_ar~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \x_ar~231_combout\,
	datad => \x_ar~215_combout\,
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X63_Y68_N4
\Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector33~1_combout\ & ((\x_ar~210_combout\))) # (!\Selector33~1_combout\ & (\x_ar~227_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~227_combout\,
	datab => \x_ar~210_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \Selector33~1_combout\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X63_Y68_N12
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\St:x_ar[3][6]~6_combout\ & (((\St:x_ar[3][6]~7_combout\)))) # (!\St:x_ar[3][6]~6_combout\ & ((\St:x_ar[3][6]~7_combout\ & ((\Mux47~12_combout\))) # (!\St:x_ar[3][6]~7_combout\ & (\x_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][6]~6_combout\,
	datab => \x_in[6]~input_o\,
	datac => \Mux47~12_combout\,
	datad => \St:x_ar[3][6]~7_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X63_Y68_N10
\Selector33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~3_combout\ = (\St:x_ar[3][6]~6_combout\ & ((\Selector33~0_combout\ & (\Selector33~2_combout\)) # (!\Selector33~0_combout\ & ((\x_ar~236_combout\))))) # (!\St:x_ar[3][6]~6_combout\ & (((\Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][6]~6_combout\,
	datab => \Selector33~2_combout\,
	datac => \x_ar~236_combout\,
	datad => \Selector33~0_combout\,
	combout => \Selector33~3_combout\);

-- Location: LCCOMB_X63_Y68_N0
\St:x_ar[3][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][6]~3_combout\ = \St:x_ar[3][6]~1_combout\ $ (\Selector33~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][6]~1_combout\,
	datad => \Selector33~3_combout\,
	combout => \St:x_ar[3][6]~3_combout\);

-- Location: FF_X63_Y68_N1
\St:x_ar[3][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[3][6]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[3][6]~_emulated_q\);

-- Location: LCCOMB_X61_Y69_N8
\St~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~114_combout\ = (!\L_in[2]~input_o\ & \St:x_ar[3][6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datad => \St:x_ar[3][6]~2_combout\,
	combout => \St~114_combout\);

-- Location: LCCOMB_X61_Y69_N2
\St:x_ar[3][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][6]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~114_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[3][6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][6]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~114_combout\,
	combout => \St:x_ar[3][6]~1_combout\);

-- Location: LCCOMB_X61_Y69_N0
\St:x_ar[3][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][6]~2_combout\ = (\St~0_combout\ & (((\St~114_combout\)))) # (!\St~0_combout\ & (\St:x_ar[3][6]~_emulated_q\ $ (((\St:x_ar[3][6]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St:x_ar[3][6]~_emulated_q\,
	datac => \St~114_combout\,
	datad => \St:x_ar[3][6]~1_combout\,
	combout => \St:x_ar[3][6]~2_combout\);

-- Location: LCCOMB_X68_Y69_N20
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\St:count[1]~q\ & (\St:count[0]~q\)) # (!\St:count[1]~q\ & ((\St:count[0]~q\ & (\St:x_ar[1][6]~2_combout\)) # (!\St:count[0]~q\ & ((\St:x_ar[0][6]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:count[0]~q\,
	datac => \St:x_ar[1][6]~2_combout\,
	datad => \St:x_ar[0][6]~2_combout\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X68_Y69_N2
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\St:count[1]~q\ & ((\Mux56~0_combout\ & ((\St:x_ar[3][6]~2_combout\))) # (!\Mux56~0_combout\ & (\St:x_ar[2][6]~2_combout\)))) # (!\St:count[1]~q\ & (((\Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[1]~q\,
	datab => \St:x_ar[2][6]~2_combout\,
	datac => \St:x_ar[3][6]~2_combout\,
	datad => \Mux56~0_combout\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X61_Y69_N14
\St~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~115_combout\ = (\St:x_ar[4][6]~2_combout\ & (((!\L_in[1]~input_o\ & !\L_in[0]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \St:x_ar[4][6]~2_combout\,
	combout => \St~115_combout\);

-- Location: LCCOMB_X61_Y69_N20
\St:x_ar[4][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][6]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~115_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[4][6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[4][6]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~115_combout\,
	combout => \St:x_ar[4][6]~1_combout\);

-- Location: LCCOMB_X65_Y69_N20
\x_ar~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~238_combout\ = (\Decoder3~2_combout\ & ((\Mux38~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~234_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~234_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux38~3_combout\,
	combout => \x_ar~238_combout\);

-- Location: LCCOMB_X63_Y69_N16
\Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & ((\St~66_combout\ & (\x_ar~214_combout\)) # (!\St~66_combout\ & ((\x_ar~234_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][0]~6_combout\,
	datab => \x_ar~214_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~234_combout\,
	combout => \Selector42~1_combout\);

-- Location: LCCOMB_X63_Y69_N6
\Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~2_combout\ = (\St:x_ar[1][0]~6_combout\ & ((\Selector42~1_combout\ & (\x_ar~208_combout\)) # (!\Selector42~1_combout\ & ((\x_ar~223_combout\))))) # (!\St:x_ar[1][0]~6_combout\ & (((\Selector42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~208_combout\,
	datab => \x_ar~223_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \Selector42~1_combout\,
	combout => \Selector42~2_combout\);

-- Location: LCCOMB_X61_Y69_N6
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\St:x_ar[4][6]~7_combout\ & (((\St:x_ar[4][6]~8_combout\)))) # (!\St:x_ar[4][6]~7_combout\ & ((\St:x_ar[4][6]~8_combout\ & ((\Mux47~12_combout\))) # (!\St:x_ar[4][6]~8_combout\ & (\x_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][6]~7_combout\,
	datab => \x_in[6]~input_o\,
	datac => \St:x_ar[4][6]~8_combout\,
	datad => \Mux47~12_combout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X61_Y69_N12
\Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~3_combout\ = (\St:x_ar[4][6]~7_combout\ & ((\Selector42~0_combout\ & ((\Selector42~2_combout\))) # (!\Selector42~0_combout\ & (\x_ar~238_combout\)))) # (!\St:x_ar[4][6]~7_combout\ & (((\Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][6]~7_combout\,
	datab => \x_ar~238_combout\,
	datac => \Selector42~2_combout\,
	datad => \Selector42~0_combout\,
	combout => \Selector42~3_combout\);

-- Location: LCCOMB_X61_Y69_N10
\St:x_ar[4][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][6]~3_combout\ = \St:x_ar[4][6]~1_combout\ $ (\Selector42~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[4][6]~1_combout\,
	datad => \Selector42~3_combout\,
	combout => \St:x_ar[4][6]~3_combout\);

-- Location: FF_X61_Y69_N11
\St:x_ar[4][6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[4][6]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[4][6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[4][6]~_emulated_q\);

-- Location: LCCOMB_X61_Y69_N16
\St:x_ar[4][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][6]~2_combout\ = (\St~0_combout\ & (\St~115_combout\)) # (!\St~0_combout\ & ((\St:x_ar[4][6]~_emulated_q\ $ (\St:x_ar[4][6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~0_combout\,
	datab => \St~115_combout\,
	datac => \St:x_ar[4][6]~_emulated_q\,
	datad => \St:x_ar[4][6]~1_combout\,
	combout => \St:x_ar[4][6]~2_combout\);

-- Location: LCCOMB_X68_Y69_N12
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\Mux55~0_combout\ & ((\Mux56~1_combout\) # ((\Mux55~1_combout\)))) # (!\Mux55~0_combout\ & (((!\Mux55~1_combout\ & \St:x_ar[4][6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~0_combout\,
	datab => \Mux56~1_combout\,
	datac => \Mux55~1_combout\,
	datad => \St:x_ar[4][6]~2_combout\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X68_Y69_N14
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\Mux55~1_combout\ & ((\Mux56~2_combout\ & ((\St:x_ar[6][6]~2_combout\))) # (!\Mux56~2_combout\ & (\St:x_ar[5][6]~2_combout\)))) # (!\Mux55~1_combout\ & (((\Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][6]~2_combout\,
	datab => \St:x_ar[6][6]~2_combout\,
	datac => \Mux55~1_combout\,
	datad => \Mux56~2_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X57_Y66_N8
\St~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~123_combout\ = (\St:x_ar[6][7]~2_combout\ & (((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)) # (!\L_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[2]~input_o\,
	datad => \St:x_ar[6][7]~2_combout\,
	combout => \St~123_combout\);

-- Location: LCCOMB_X57_Y66_N20
\St:x_ar[6][7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][7]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~123_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[6][7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][7]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~123_combout\,
	combout => \St:x_ar[6][7]~1_combout\);

-- Location: LCCOMB_X57_Y66_N24
\St:x_ar[6][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][7]~2_combout\ = (\St~0_combout\ & (((\St~123_combout\)))) # (!\St~0_combout\ & (\St:x_ar[6][7]~_emulated_q\ $ (((\St:x_ar[6][7]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][7]~_emulated_q\,
	datab => \St~123_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[6][7]~1_combout\,
	combout => \St:x_ar[6][7]~2_combout\);

-- Location: IOIBUF_X58_Y73_N1
\x_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: LCCOMB_X56_Y65_N22
\St~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~121_combout\ = (\St:x_ar[5][7]~2_combout\ & ((!\L_in[2]~input_o\) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][7]~2_combout\,
	datac => \L_in[1]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~121_combout\);

-- Location: LCCOMB_X56_Y65_N10
\St:x_ar[5][7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][7]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~121_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[5][7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][7]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~121_combout\,
	combout => \St:x_ar[5][7]~1_combout\);

-- Location: LCCOMB_X57_Y68_N26
\x_ar~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~247_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux1~3_combout\))) # (!\Decoder3~6_combout\ & (\St:x_ar[5][7]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\St:x_ar[5][7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \St:x_ar[5][7]~2_combout\,
	datad => \Mux1~3_combout\,
	combout => \x_ar~247_combout\);

-- Location: LCCOMB_X57_Y68_N8
\x_ar~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~241_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux1~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[4][7]~2_combout\)))) # (!\Decoder3~1_combout\ & (\St:x_ar[4][7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][7]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux1~3_combout\,
	combout => \x_ar~241_combout\);

-- Location: LCCOMB_X57_Y68_N14
\x_ar~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~242_combout\ = (\Decoder3~0_combout\ & ((\Mux1~3_combout\))) # (!\Decoder3~0_combout\ & (\St:x_ar[6][7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][7]~2_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux1~3_combout\,
	combout => \x_ar~242_combout\);

-- Location: LCCOMB_X57_Y72_N28
\St~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~119_combout\ = (!\L_in[2]~input_o\ & (\St:x_ar[0][7]~2_combout\ & (!\L_in[0]~input_o\ & !\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \St:x_ar[0][7]~2_combout\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~119_combout\);

-- Location: LCCOMB_X57_Y72_N16
\St:x_ar[0][7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][7]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~119_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[0][7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[0][7]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~119_combout\,
	combout => \St:x_ar[0][7]~1_combout\);

-- Location: LCCOMB_X57_Y72_N26
\St:x_ar[0][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][7]~3_combout\ = \St:x_ar[0][7]~1_combout\ $ (\x_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[0][7]~1_combout\,
	datad => \x_in[7]~input_o\,
	combout => \St:x_ar[0][7]~3_combout\);

-- Location: FF_X57_Y72_N5
\St:x_ar[0][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_ar[0][7]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_ar[0][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[0][7]~_emulated_q\);

-- Location: LCCOMB_X57_Y72_N4
\St:x_ar[0][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][7]~2_combout\ = (\St~0_combout\ & (\St~119_combout\)) # (!\St~0_combout\ & ((\St:x_ar[0][7]~_emulated_q\ $ (\St:x_ar[0][7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~119_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[0][7]~_emulated_q\,
	datad => \St:x_ar[0][7]~1_combout\,
	combout => \St:x_ar[0][7]~2_combout\);

-- Location: LCCOMB_X57_Y68_N4
\x_ar~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~243_combout\ = (\Decoder3~2_combout\ & ((\Mux1~3_combout\))) # (!\Decoder3~2_combout\ & (\St:x_ar[0][7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[0][7]~2_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux1~3_combout\,
	combout => \x_ar~243_combout\);

-- Location: LCCOMB_X58_Y66_N22
\St~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~120_combout\ = (!\L_in[2]~input_o\ & \St:x_ar[3][7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L_in[2]~input_o\,
	datad => \St:x_ar[3][7]~2_combout\,
	combout => \St~120_combout\);

-- Location: LCCOMB_X58_Y66_N24
\St:x_ar[3][7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][7]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~120_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[3][7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][7]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~120_combout\,
	combout => \St:x_ar[3][7]~1_combout\);

-- Location: LCCOMB_X59_Y68_N6
\x_ar~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~248_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux10~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~244_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \x_ar~244_combout\,
	datad => \Mux10~3_combout\,
	combout => \x_ar~248_combout\);

-- Location: LCCOMB_X61_Y64_N14
\x_ar~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~254_combout\ = (\Equal8~0_combout\ & ((\Mux10~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~242_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \x_ar~242_combout\,
	datad => \Mux10~3_combout\,
	combout => \x_ar~254_combout\);

-- Location: LCCOMB_X57_Y68_N30
\x_ar~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~250_combout\ = (\Decoder3~5_combout\ & ((\Mux10~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~243_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~5_combout\,
	datac => \x_ar~243_combout\,
	datad => \Mux10~3_combout\,
	combout => \x_ar~250_combout\);

-- Location: LCCOMB_X57_Y68_N20
\x_ar~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~246_combout\ = (\Decoder3~5_combout\ & ((\Mux1~3_combout\))) # (!\Decoder3~5_combout\ & (\St:x_ar[1][7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][7]~2_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux1~3_combout\,
	combout => \x_ar~246_combout\);

-- Location: LCCOMB_X60_Y64_N0
\x_ar~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~249_combout\ = (\Decoder3~4_combout\ & ((\Mux10~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~246_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~246_combout\,
	datad => \Mux10~3_combout\,
	combout => \x_ar~249_combout\);

-- Location: LCCOMB_X60_Y64_N2
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\x_ar~250_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~250_combout\,
	datad => \x_ar~249_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X60_Y64_N4
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Add4~0_combout\ & ((\Mux19~0_combout\ & ((\x_ar~251_combout\))) # (!\Mux19~0_combout\ & (\x_ar~248_combout\)))) # (!\Add4~0_combout\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~248_combout\,
	datac => \x_ar~251_combout\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X61_Y64_N16
\x_ar~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~252_combout\ = (\Decoder3~6_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux10~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~241_combout\)))) # (!\Decoder3~6_combout\ & (\x_ar~241_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~241_combout\,
	datab => \Decoder3~6_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux10~3_combout\,
	combout => \x_ar~252_combout\);

-- Location: LCCOMB_X61_Y64_N4
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux22~1_combout\ & (\Mux22~0_combout\)) # (!\Mux22~1_combout\ & ((\Mux22~0_combout\ & ((\x_ar~252_combout\))) # (!\Mux22~0_combout\ & (\x_ar~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~253_combout\,
	datad => \x_ar~252_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X60_Y64_N6
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux22~1_combout\ & ((\Mux19~2_combout\ & (\x_ar~254_combout\)) # (!\Mux19~2_combout\ & ((\Mux19~1_combout\))))) # (!\Mux22~1_combout\ & (((\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \x_ar~254_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X59_Y68_N12
\x_ar~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~262_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux19~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~248_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~248_combout\,
	datad => \Mux19~3_combout\,
	combout => \x_ar~262_combout\);

-- Location: LCCOMB_X60_Y64_N8
\x_ar~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~255_combout\ = (\Decoder3~2_combout\ & ((\Mux19~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~2_combout\,
	datac => \x_ar~254_combout\,
	datad => \Mux19~3_combout\,
	combout => \x_ar~255_combout\);

-- Location: LCCOMB_X61_Y64_N22
\x_ar~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~257_combout\ = (\Decoder3~0_combout\ & (\Mux19~3_combout\)) # (!\Decoder3~0_combout\ & ((\x_ar~252_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \Mux19~3_combout\,
	datad => \x_ar~252_combout\,
	combout => \x_ar~257_combout\);

-- Location: LCCOMB_X61_Y64_N28
\x_ar~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~256_combout\ = (\Equal8~0_combout\ & ((\Mux19~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~253_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~253_combout\,
	datab => \Equal8~0_combout\,
	datac => \Mux19~3_combout\,
	combout => \x_ar~256_combout\);

-- Location: LCCOMB_X61_Y64_N12
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux31~1_combout\ & (\Mux31~0_combout\)) # (!\Mux31~1_combout\ & ((\Mux31~0_combout\ & ((\x_ar~256_combout\))) # (!\Mux31~0_combout\ & (\x_ar~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \x_ar~257_combout\,
	datad => \x_ar~256_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X60_Y64_N16
\x_ar~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~259_combout\ = (\Mux22~1_combout\ & ((\Mux19~2_combout\ & (\x_ar~254_combout\)) # (!\Mux19~2_combout\ & ((\Mux19~1_combout\))))) # (!\Mux22~1_combout\ & (((\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \x_ar~254_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux19~2_combout\,
	combout => \x_ar~259_combout\);

-- Location: LCCOMB_X60_Y64_N22
\x_ar~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~260_combout\ = (\Decoder3~3_combout\ & ((\x_ar~259_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~249_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~249_combout\,
	datac => \Decoder3~3_combout\,
	datad => \x_ar~259_combout\,
	combout => \x_ar~260_combout\);

-- Location: LCCOMB_X60_Y64_N20
\x_ar~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~261_combout\ = (\Decoder3~4_combout\ & ((\x_ar~259_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~250_combout\,
	datab => \Decoder3~4_combout\,
	datad => \x_ar~259_combout\,
	combout => \x_ar~261_combout\);

-- Location: LCCOMB_X60_Y64_N30
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~260_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~260_combout\,
	datad => \x_ar~261_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X60_Y64_N24
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux28~1_combout\ & ((\x_ar~262_combout\))) # (!\Mux28~1_combout\ & (\x_ar~258_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~258_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \Mux28~1_combout\,
	datad => \x_ar~262_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X60_Y64_N18
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux31~1_combout\ & ((\Mux28~0_combout\ & ((\Mux28~2_combout\))) # (!\Mux28~0_combout\ & (\x_ar~255_combout\)))) # (!\Mux31~1_combout\ & (((\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \x_ar~255_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X60_Y64_N28
\x_ar~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~266_combout\ = (\Decoder3~0_combout\ & ((\Mux28~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~262_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \x_ar~262_combout\,
	datad => \Mux28~3_combout\,
	combout => \x_ar~266_combout\);

-- Location: LCCOMB_X60_Y64_N12
\x_ar~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~263_combout\ = (\Decoder3~2_combout\ & ((\Mux28~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~256_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~256_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux28~3_combout\,
	combout => \x_ar~263_combout\);

-- Location: LCCOMB_X61_Y64_N20
\x_ar~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~269_combout\ = (\Equal8~0_combout\ & ((\Mux28~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \x_ar~257_combout\,
	datad => \Mux28~3_combout\,
	combout => \x_ar~269_combout\);

-- Location: LCCOMB_X61_Y64_N26
\x_ar~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~264_combout\ = (\Decoder3~5_combout\ & ((\Mux28~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~255_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~255_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux28~3_combout\,
	combout => \x_ar~264_combout\);

-- Location: LCCOMB_X59_Y64_N2
\x_ar~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~268_combout\ = (\Decoder3~3_combout\ & ((\Mux28~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~261_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~3_combout\,
	datac => \x_ar~261_combout\,
	datad => \Mux28~3_combout\,
	combout => \x_ar~268_combout\);

-- Location: LCCOMB_X60_Y64_N10
\x_ar~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~265_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux28~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~260_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \x_ar~260_combout\,
	datad => \Mux28~3_combout\,
	combout => \x_ar~265_combout\);

-- Location: LCCOMB_X59_Y64_N20
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & (\x_ar~267_combout\))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # ((\x_ar~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~267_combout\,
	datad => \x_ar~266_combout\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X59_Y64_N28
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Add4~0_combout\ & ((\Mux37~0_combout\ & (\x_ar~268_combout\)) # (!\Mux37~0_combout\ & ((\x_ar~265_combout\))))) # (!\Add4~0_combout\ & (((\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \x_ar~268_combout\,
	datac => \x_ar~265_combout\,
	datad => \Mux37~0_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X59_Y64_N18
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux39~0_combout\ & ((\Mux39~1_combout\) # ((\x_ar~264_combout\)))) # (!\Mux39~0_combout\ & (!\Mux39~1_combout\ & ((\Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \Mux39~1_combout\,
	datac => \x_ar~264_combout\,
	datad => \Mux37~1_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X59_Y64_N16
\Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (\Mux39~1_combout\ & ((\Mux37~2_combout\ & ((\x_ar~269_combout\))) # (!\Mux37~2_combout\ & (\x_ar~263_combout\)))) # (!\Mux39~1_combout\ & (((\Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~1_combout\,
	datab => \x_ar~263_combout\,
	datac => \x_ar~269_combout\,
	datad => \Mux37~2_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X59_Y64_N8
\x_ar~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~275_combout\ = (\Equal8~0_combout\ & ((\Mux37~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~266_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~266_combout\,
	datac => \Equal8~0_combout\,
	datad => \Mux37~3_combout\,
	combout => \x_ar~275_combout\);

-- Location: LCCOMB_X58_Y66_N30
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\St:x_ar[3][6]~7_combout\ & (((\St:x_ar[3][6]~6_combout\)))) # (!\St:x_ar[3][6]~7_combout\ & ((\St:x_ar[3][6]~6_combout\ & ((\x_ar~275_combout\))) # (!\St:x_ar[3][6]~6_combout\ & (\x_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[7]~input_o\,
	datab => \St:x_ar[3][6]~7_combout\,
	datac => \x_ar~275_combout\,
	datad => \St:x_ar[3][6]~6_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X59_Y64_N4
\x_ar~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~274_combout\ = (\Decoder3~5_combout\ & ((\Mux37~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~263_combout\,
	datad => \Mux37~3_combout\,
	combout => \x_ar~274_combout\);

-- Location: LCCOMB_X59_Y64_N24
\x_ar~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~271_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux37~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~265_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~265_combout\,
	datad => \Mux37~3_combout\,
	combout => \x_ar~271_combout\);

-- Location: LCCOMB_X59_Y64_N12
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & ((\x_ar~271_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\x_ar~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~272_combout\,
	datad => \x_ar~271_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X59_Y64_N14
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\Mux46~0_combout\) # ((\St:x_count_ini[1]~2_combout\ & (\x_ar~268_combout\ & !\St:x_count_ini[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~268_combout\,
	datac => \St:x_count_ini[0]~2_combout\,
	datad => \Mux46~0_combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X59_Y64_N0
\x_ar~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~273_combout\ = (\Decoder3~4_combout\ & ((\Mux37~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~264_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~264_combout\,
	datad => \Mux37~3_combout\,
	combout => \x_ar~273_combout\);

-- Location: LCCOMB_X59_Y64_N10
\Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Mux49~8_combout\ & ((\Mux49~9_combout\) # ((\Mux46~1_combout\)))) # (!\Mux49~8_combout\ & (!\Mux49~9_combout\ & ((\x_ar~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~8_combout\,
	datab => \Mux49~9_combout\,
	datac => \Mux46~1_combout\,
	datad => \x_ar~273_combout\,
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X59_Y64_N6
\Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\Mux49~9_combout\ & ((\Mux46~2_combout\ & ((\x_ar~274_combout\))) # (!\Mux46~2_combout\ & (\x_ar~270_combout\)))) # (!\Mux49~9_combout\ & (((\Mux46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~270_combout\,
	datab => \Mux49~9_combout\,
	datac => \x_ar~274_combout\,
	datad => \Mux46~2_combout\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X59_Y64_N26
\Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (\Mux31~1_combout\ & (((\Mux46~3_combout\)))) # (!\Mux31~1_combout\ & ((\St:x_count_ini[0]~2_combout\ & (\x_ar~275_combout\)) # (!\St:x_count_ini[0]~2_combout\ & ((\Mux46~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~275_combout\,
	datad => \Mux46~3_combout\,
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X58_Y66_N0
\Selector32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (\St:x_ar[3][6]~7_combout\ & ((\Selector32~0_combout\ & (\Selector32~2_combout\)) # (!\Selector32~0_combout\ & ((\Mux46~4_combout\))))) # (!\St:x_ar[3][6]~7_combout\ & (((\Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~2_combout\,
	datab => \St:x_ar[3][6]~7_combout\,
	datac => \Selector32~0_combout\,
	datad => \Mux46~4_combout\,
	combout => \Selector32~3_combout\);

-- Location: LCCOMB_X58_Y66_N4
\St:x_ar[3][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][7]~3_combout\ = \St:x_ar[3][7]~1_combout\ $ (\Selector32~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][7]~1_combout\,
	datad => \Selector32~3_combout\,
	combout => \St:x_ar[3][7]~3_combout\);

-- Location: FF_X58_Y66_N5
\St:x_ar[3][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[3][7]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[3][6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[3][7]~_emulated_q\);

-- Location: LCCOMB_X58_Y66_N6
\St:x_ar[3][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][7]~2_combout\ = (\St~0_combout\ & (\St~120_combout\)) # (!\St~0_combout\ & ((\St:x_ar[3][7]~_emulated_q\ $ (\St:x_ar[3][7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~120_combout\,
	datab => \St:x_ar[3][7]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[3][7]~1_combout\,
	combout => \St:x_ar[3][7]~2_combout\);

-- Location: LCCOMB_X57_Y68_N2
\x_ar~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~244_combout\ = (\Decoder3~3_combout\ & ((\Mux1~3_combout\))) # (!\Decoder3~3_combout\ & (\St:x_ar[3][7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~3_combout\,
	datac => \St:x_ar[3][7]~2_combout\,
	datad => \Mux1~3_combout\,
	combout => \x_ar~244_combout\);

-- Location: LCCOMB_X57_Y68_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (((\St:x_count_ini[0]~2_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\ & ((\x_ar~244_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (\x_ar~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~245_combout\,
	datac => \St:x_count_ini[0]~2_combout\,
	datad => \x_ar~244_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X57_Y68_N6
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux10~0_combout\ & ((\x_ar~246_combout\))) # (!\Mux10~0_combout\ & (\x_ar~243_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~243_combout\,
	datac => \Mux10~0_combout\,
	datad => \x_ar~246_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X57_Y68_N16
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\) # ((\x_ar~242_combout\)))) # (!\Mux14~0_combout\ & (!\Mux14~1_combout\ & ((\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux14~1_combout\,
	datac => \x_ar~242_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X57_Y68_N12
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux14~1_combout\ & ((\Mux10~2_combout\ & ((\x_ar~247_combout\))) # (!\Mux10~2_combout\ & (\x_ar~241_combout\)))) # (!\Mux14~1_combout\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \x_ar~241_combout\,
	datac => \x_ar~247_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X61_Y64_N30
\x_ar~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~253_combout\ = (\Decoder3~0_combout\ & ((\Mux10~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~0_combout\,
	datac => \x_ar~247_combout\,
	datad => \Mux10~3_combout\,
	combout => \x_ar~253_combout\);

-- Location: LCCOMB_X61_Y64_N10
\Selector50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\St~66_combout\ & (((\St:x_ar[1][0]~6_combout\)))) # (!\St~66_combout\ & ((\St:x_ar[1][0]~6_combout\ & (\x_ar~256_combout\)) # (!\St:x_ar[1][0]~6_combout\ & ((\x_ar~263_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~256_combout\,
	datac => \St:x_ar[1][0]~6_combout\,
	datad => \x_ar~263_combout\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X61_Y64_N0
\Selector50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~2_combout\ = (\St~66_combout\ & ((\Selector50~1_combout\ & ((\x_ar~247_combout\))) # (!\Selector50~1_combout\ & (\x_ar~253_combout\)))) # (!\St~66_combout\ & (((\Selector50~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~66_combout\,
	datab => \x_ar~253_combout\,
	datac => \x_ar~247_combout\,
	datad => \Selector50~1_combout\,
	combout => \Selector50~2_combout\);

-- Location: LCCOMB_X56_Y65_N14
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\St:x_ar[5][4]~7_combout\ & (((\St:x_ar[5][4]~6_combout\)))) # (!\St:x_ar[5][4]~7_combout\ & ((\St:x_ar[5][4]~6_combout\ & ((\x_ar~274_combout\))) # (!\St:x_ar[5][4]~6_combout\ & (\x_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \x_in[7]~input_o\,
	datac => \St:x_ar[5][4]~6_combout\,
	datad => \x_ar~274_combout\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X56_Y65_N20
\Selector50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~3_combout\ = (\St:x_ar[5][4]~7_combout\ & ((\Selector50~0_combout\ & (\Selector50~2_combout\)) # (!\Selector50~0_combout\ & ((\Mux46~4_combout\))))) # (!\St:x_ar[5][4]~7_combout\ & (((\Selector50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][4]~7_combout\,
	datab => \Selector50~2_combout\,
	datac => \Selector50~0_combout\,
	datad => \Mux46~4_combout\,
	combout => \Selector50~3_combout\);

-- Location: LCCOMB_X56_Y65_N18
\St:x_ar[5][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][7]~3_combout\ = \St:x_ar[5][7]~1_combout\ $ (\Selector50~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \St:x_ar[5][7]~1_combout\,
	datad => \Selector50~3_combout\,
	combout => \St:x_ar[5][7]~3_combout\);

-- Location: FF_X56_Y65_N19
\St:x_ar[5][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[5][7]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[5][4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[5][7]~_emulated_q\);

-- Location: LCCOMB_X56_Y65_N24
\St:x_ar[5][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][7]~2_combout\ = (\St~0_combout\ & (\St~121_combout\)) # (!\St~0_combout\ & ((\St:x_ar[5][7]~_emulated_q\ $ (\St:x_ar[5][7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~121_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[5][7]~_emulated_q\,
	datad => \St:x_ar[5][7]~1_combout\,
	combout => \St:x_ar[5][7]~2_combout\);

-- Location: LCCOMB_X57_Y68_N0
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\St:x_ar[2][7]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & (\St:x_ar[3][7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_ar[3][7]~2_combout\,
	datad => \St:x_ar[2][7]~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X57_Y68_N10
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Add4~0_combout\ & ((\Mux1~0_combout\ & ((\St:x_ar[0][7]~2_combout\))) # (!\Mux1~0_combout\ & (\St:x_ar[1][7]~2_combout\)))) # (!\Add4~0_combout\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][7]~2_combout\,
	datab => \St:x_ar[0][7]~2_combout\,
	datac => \Add4~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X57_Y68_N24
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux8~2_combout\ & (((\Mux8~3_combout\) # (\Mux1~1_combout\)))) # (!\Mux8~2_combout\ & (\St:x_ar[6][7]~2_combout\ & (!\Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][7]~2_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X57_Y68_N18
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux8~3_combout\ & ((\Mux1~2_combout\ & (\St:x_ar[4][7]~2_combout\)) # (!\Mux1~2_combout\ & ((\St:x_ar[5][7]~2_combout\))))) # (!\Mux8~3_combout\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][7]~2_combout\,
	datab => \Mux8~3_combout\,
	datac => \St:x_ar[5][7]~2_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X57_Y68_N28
\x_ar~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~245_combout\ = (\Decoder3~4_combout\ & ((\Mux1~3_combout\))) # (!\Decoder3~4_combout\ & (\St:x_ar[2][7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \St:x_ar[2][7]~2_combout\,
	datad => \Mux1~3_combout\,
	combout => \x_ar~245_combout\);

-- Location: LCCOMB_X58_Y64_N20
\x_ar~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~251_combout\ = (\Decoder3~3_combout\ & ((\Mux10~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~245_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~3_combout\,
	datac => \x_ar~245_combout\,
	datad => \Mux10~3_combout\,
	combout => \x_ar~251_combout\);

-- Location: LCCOMB_X60_Y64_N26
\x_ar~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~258_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux19~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~251_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~1_combout\,
	datac => \x_ar~251_combout\,
	datad => \Mux19~3_combout\,
	combout => \x_ar~258_combout\);

-- Location: LCCOMB_X60_Y64_N14
\x_ar~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~267_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux28~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~258_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~258_combout\,
	datad => \Mux28~3_combout\,
	combout => \x_ar~267_combout\);

-- Location: LCCOMB_X59_Y64_N30
\x_ar~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~272_combout\ = (\Decoder3~0_combout\ & ((\Mux37~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~267_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~267_combout\,
	datad => \Mux37~3_combout\,
	combout => \x_ar~272_combout\);

-- Location: LCCOMB_X58_Y66_N16
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\St:x_ar[2][2]~7_combout\ & (\St:x_ar[2][2]~6_combout\)) # (!\St:x_ar[2][2]~7_combout\ & ((\St:x_ar[2][2]~6_combout\ & ((\x_ar~272_combout\))) # (!\St:x_ar[2][2]~6_combout\ & (\x_in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~7_combout\,
	datab => \St:x_ar[2][2]~6_combout\,
	datac => \x_in[7]~input_o\,
	datad => \x_ar~272_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X58_Y64_N18
\Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\St:x_ar[1][0]~6_combout\ & (((\St~66_combout\) # (\x_ar~258_combout\)))) # (!\St:x_ar[1][0]~6_combout\ & (\x_ar~267_combout\ & (!\St~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~267_combout\,
	datab => \St:x_ar[1][0]~6_combout\,
	datac => \St~66_combout\,
	datad => \x_ar~258_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X58_Y64_N16
\Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\St~66_combout\ & ((\Selector23~1_combout\ & (\x_ar~245_combout\)) # (!\Selector23~1_combout\ & ((\x_ar~251_combout\))))) # (!\St~66_combout\ & (((\Selector23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~245_combout\,
	datab => \x_ar~251_combout\,
	datac => \St~66_combout\,
	datad => \Selector23~1_combout\,
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X58_Y66_N18
\Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (\St:x_ar[2][2]~7_combout\ & ((\Selector23~0_combout\ & (\Selector23~2_combout\)) # (!\Selector23~0_combout\ & ((\Mux46~4_combout\))))) # (!\St:x_ar[2][2]~7_combout\ & (\Selector23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~7_combout\,
	datab => \Selector23~0_combout\,
	datac => \Selector23~2_combout\,
	datad => \Mux46~4_combout\,
	combout => \Selector23~3_combout\);

-- Location: LCCOMB_X58_Y66_N8
\St:x_ar[2][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][7]~3_combout\ = \St:x_ar[2][7]~1_combout\ $ (\Selector23~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][7]~1_combout\,
	datad => \Selector23~3_combout\,
	combout => \St:x_ar[2][7]~3_combout\);

-- Location: FF_X58_Y66_N9
\St:x_ar[2][7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[2][7]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[2][7]~_emulated_q\);

-- Location: LCCOMB_X58_Y66_N28
\St~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~117_combout\ = (\St:x_ar[2][7]~2_combout\ & (!\L_in[2]~input_o\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \St:x_ar[2][7]~2_combout\,
	datac => \L_in[2]~input_o\,
	datad => \L_in[0]~input_o\,
	combout => \St~117_combout\);

-- Location: LCCOMB_X58_Y66_N10
\St:x_ar[2][7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][7]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~117_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[2][7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][7]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~117_combout\,
	combout => \St:x_ar[2][7]~1_combout\);

-- Location: LCCOMB_X58_Y66_N2
\St:x_ar[2][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][7]~2_combout\ = (\St~0_combout\ & (\St~117_combout\)) # (!\St~0_combout\ & ((\St:x_ar[2][7]~_emulated_q\ $ (\St:x_ar[2][7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~117_combout\,
	datab => \St:x_ar[2][7]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[2][7]~1_combout\,
	combout => \St:x_ar[2][7]~2_combout\);

-- Location: LCCOMB_X58_Y66_N26
\Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\Mux55~2_combout\ & (((\St:x_ar[3][7]~2_combout\) # (!\St:count[1]~q\)))) # (!\Mux55~2_combout\ & (\St:x_ar[2][7]~2_combout\ & (\St:count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~2_combout\,
	datab => \St:x_ar[2][7]~2_combout\,
	datac => \St:count[1]~q\,
	datad => \St:x_ar[3][7]~2_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X57_Y66_N12
\Mux55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~5_combout\ = (\Mux55~4_combout\ & ((\St:x_ar[6][7]~2_combout\) # ((!\Mux55~0_combout\)))) # (!\Mux55~4_combout\ & (((\Mux55~0_combout\ & \Mux55~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~4_combout\,
	datab => \St:x_ar[6][7]~2_combout\,
	datac => \Mux55~0_combout\,
	datad => \Mux55~3_combout\,
	combout => \Mux55~5_combout\);

-- Location: LCCOMB_X67_Y69_N8
\St~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~124_combout\ = (\St:x_ar[5][8]~2_combout\ & ((!\L_in[1]~input_o\) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][8]~2_combout\,
	datab => \L_in[2]~input_o\,
	datad => \L_in[1]~input_o\,
	combout => \St~124_combout\);

-- Location: LCCOMB_X67_Y69_N6
\St:x_ar[5][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][8]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~124_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[5][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][8]~1_combout\,
	datac => \St~124_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[5][8]~1_combout\);

-- Location: LCCOMB_X67_Y69_N22
\St:x_ar[5][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[5][8]~2_combout\ = (\St~0_combout\ & (((\St~124_combout\)))) # (!\St~0_combout\ & (\St:x_ar[5][8]~_emulated_q\ $ (((\St:x_ar[5][8]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[5][8]~_emulated_q\,
	datab => \St~124_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[5][8]~1_combout\,
	combout => \St:x_ar[5][8]~2_combout\);

-- Location: LCCOMB_X67_Y67_N18
\St~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~129_combout\ = (\St:x_ar[4][8]~2_combout\ & (((!\L_in[0]~input_o\ & !\L_in[1]~input_o\)) # (!\L_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \L_in[0]~input_o\,
	datac => \St:x_ar[4][8]~2_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~129_combout\);

-- Location: LCCOMB_X67_Y67_N26
\St:x_ar[4][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][8]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~129_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[4][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][8]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~129_combout\,
	combout => \St:x_ar[4][8]~1_combout\);

-- Location: LCCOMB_X67_Y67_N22
\St:x_ar[4][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[4][8]~2_combout\ = (\St~0_combout\ & (((\St~129_combout\)))) # (!\St~0_combout\ & (\St:x_ar[4][8]~_emulated_q\ $ (((\St:x_ar[4][8]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][8]~_emulated_q\,
	datab => \St~129_combout\,
	datac => \St:x_ar[4][8]~1_combout\,
	datad => \St~0_combout\,
	combout => \St:x_ar[4][8]~2_combout\);

-- Location: LCCOMB_X67_Y69_N4
\St~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~130_combout\ = (\St:x_ar[6][8]~2_combout\ & (((!\L_in[2]~input_o\) # (!\L_in[0]~input_o\)) # (!\L_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[1]~input_o\,
	datab => \St:x_ar[6][8]~2_combout\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~130_combout\);

-- Location: LCCOMB_X67_Y69_N2
\St:x_ar[6][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][8]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~130_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[6][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[6][8]~1_combout\,
	datac => \St~130_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[6][8]~1_combout\);

-- Location: LCCOMB_X67_Y69_N20
\St:x_ar[6][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[6][8]~2_combout\ = (\St~0_combout\ & (((\St~130_combout\)))) # (!\St~0_combout\ & (\St:x_ar[6][8]~_emulated_q\ $ (((\St:x_ar[6][8]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][8]~_emulated_q\,
	datab => \St~130_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[6][8]~1_combout\,
	combout => \St:x_ar[6][8]~2_combout\);

-- Location: LCCOMB_X66_Y70_N4
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux8~2_combout\ & (((\Mux8~3_combout\)))) # (!\Mux8~2_combout\ & ((\Mux8~3_combout\ & ((\St:x_ar[5][8]~2_combout\))) # (!\Mux8~3_combout\ & (\St:x_ar[6][8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \St:x_ar[6][8]~2_combout\,
	datac => \St:x_ar[5][8]~2_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X62_Y73_N22
\x_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(8),
	o => \x_in[8]~input_o\);

-- Location: LCCOMB_X58_Y72_N26
\St~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~127_combout\ = (!\L_in[0]~input_o\ & (!\L_in[2]~input_o\ & (!\L_in[1]~input_o\ & \St:x_ar[0][8]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[0]~input_o\,
	datab => \L_in[2]~input_o\,
	datac => \L_in[1]~input_o\,
	datad => \St:x_ar[0][8]~2_combout\,
	combout => \St~127_combout\);

-- Location: LCCOMB_X58_Y72_N10
\St:x_ar[0][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][8]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~127_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[0][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[0][8]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~127_combout\,
	combout => \St:x_ar[0][8]~1_combout\);

-- Location: LCCOMB_X58_Y72_N20
\St:x_ar[0][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][8]~3_combout\ = \x_in[8]~input_o\ $ (\St:x_ar[0][8]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_in[8]~input_o\,
	datad => \St:x_ar[0][8]~1_combout\,
	combout => \St:x_ar[0][8]~3_combout\);

-- Location: FF_X58_Y72_N25
\St:x_ar[0][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \St:x_ar[0][8]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	sload => VCC,
	ena => \St:x_ar[0][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[0][8]~_emulated_q\);

-- Location: LCCOMB_X58_Y72_N24
\St:x_ar[0][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[0][8]~2_combout\ = (\St~0_combout\ & (\St~127_combout\)) # (!\St~0_combout\ & ((\St:x_ar[0][8]~_emulated_q\ $ (\St:x_ar[0][8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~127_combout\,
	datab => \St~0_combout\,
	datac => \St:x_ar[0][8]~_emulated_q\,
	datad => \St:x_ar[0][8]~1_combout\,
	combout => \St:x_ar[0][8]~2_combout\);

-- Location: LCCOMB_X67_Y69_N30
\St~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~128_combout\ = (!\L_in[2]~input_o\ & \St:x_ar[3][8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L_in[2]~input_o\,
	datad => \St:x_ar[3][8]~2_combout\,
	combout => \St~128_combout\);

-- Location: LCCOMB_X67_Y69_N16
\St:x_ar[3][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][8]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~128_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[3][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[3][8]~1_combout\,
	datac => \St~128_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[3][8]~1_combout\);

-- Location: LCCOMB_X67_Y69_N0
\St:x_ar[3][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[3][8]~2_combout\ = (\St~0_combout\ & (((\St~128_combout\)))) # (!\St~0_combout\ & (\St:x_ar[3][8]~_emulated_q\ $ (((\St:x_ar[3][8]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][8]~_emulated_q\,
	datab => \St~128_combout\,
	datac => \St~0_combout\,
	datad => \St:x_ar[3][8]~1_combout\,
	combout => \St:x_ar[3][8]~2_combout\);

-- Location: LCCOMB_X66_Y70_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\St:x_count_ini[0]~2_combout\ & (((\St:x_ar[2][8]~2_combout\)) # (!\St:x_count_ini[1]~2_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\St:x_ar[3][8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_ar[2][8]~2_combout\,
	datad => \St:x_ar[3][8]~2_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X66_Y70_N6
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\St:x_ar[0][8]~2_combout\) # (!\Add4~0_combout\)))) # (!\Mux0~0_combout\ & (\St:x_ar[1][8]~2_combout\ & ((\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][8]~2_combout\,
	datab => \St:x_ar[0][8]~2_combout\,
	datac => \Mux0~0_combout\,
	datad => \Add4~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X66_Y70_N18
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux8~2_combout\ & ((\Mux0~2_combout\ & (\St:x_ar[4][8]~2_combout\)) # (!\Mux0~2_combout\ & ((\Mux0~1_combout\))))) # (!\Mux8~2_combout\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \St:x_ar[4][8]~2_combout\,
	datac => \Mux0~2_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X66_Y70_N24
\x_ar~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~279_combout\ = (\Decoder3~3_combout\ & ((\Mux0~3_combout\))) # (!\Decoder3~3_combout\ & (\St:x_ar[3][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][8]~2_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux0~3_combout\,
	combout => \x_ar~279_combout\);

-- Location: LCCOMB_X67_Y70_N0
\x_ar~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~276_combout\ = (\Decoder3~0_combout\ & ((\Mux0~3_combout\))) # (!\Decoder3~0_combout\ & (\St:x_ar[6][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datab => \St:x_ar[6][8]~2_combout\,
	datad => \Mux0~3_combout\,
	combout => \x_ar~276_combout\);

-- Location: LCCOMB_X66_Y70_N8
\x_ar~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~277_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux0~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[4][8]~2_combout\)))) # (!\Decoder3~1_combout\ & (\St:x_ar[4][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \St:x_ar[4][8]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux0~3_combout\,
	combout => \x_ar~277_combout\);

-- Location: LCCOMB_X66_Y70_N26
\x_ar~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~281_combout\ = (\Decoder3~5_combout\ & ((\Mux0~3_combout\))) # (!\Decoder3~5_combout\ & (\St:x_ar[1][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][8]~2_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux0~3_combout\,
	combout => \x_ar~281_combout\);

-- Location: LCCOMB_X66_Y70_N22
\x_ar~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~280_combout\ = (\Decoder3~4_combout\ & ((\Mux0~3_combout\))) # (!\Decoder3~4_combout\ & (\St:x_ar[2][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][8]~2_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux0~3_combout\,
	combout => \x_ar~280_combout\);

-- Location: LCCOMB_X66_Y70_N28
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~279_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & (\x_ar~280_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~280_combout\,
	datad => \x_ar~279_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X66_Y70_N16
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux9~0_combout\ & ((\x_ar~281_combout\))) # (!\Mux9~0_combout\ & (\x_ar~278_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~278_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~281_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X66_Y70_N14
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux14~0_combout\ & (\Mux14~1_combout\)) # (!\Mux14~0_combout\ & ((\Mux14~1_combout\ & (\x_ar~277_combout\)) # (!\Mux14~1_combout\ & ((\Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux14~1_combout\,
	datac => \x_ar~277_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X67_Y70_N16
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux14~0_combout\ & ((\Mux9~2_combout\ & (\x_ar~282_combout\)) # (!\Mux9~2_combout\ & ((\x_ar~276_combout\))))) # (!\Mux14~0_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~282_combout\,
	datab => \x_ar~276_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X67_Y70_N22
\x_ar~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~284_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~1_combout\ & ((\Mux9~3_combout\))) # (!\Decoder3~1_combout\ & (\x_ar~279_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~279_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \x_ar~279_combout\,
	datac => \Decoder3~1_combout\,
	datad => \Mux9~3_combout\,
	combout => \x_ar~284_combout\);

-- Location: LCCOMB_X66_Y66_N28
\x_ar~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~283_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux9~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~277_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~277_combout\,
	datad => \Mux9~3_combout\,
	combout => \x_ar~283_combout\);

-- Location: LCCOMB_X67_Y70_N30
\x_ar~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~282_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux0~3_combout\))) # (!\Decoder3~6_combout\ & (\St:x_ar[5][8]~2_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (\St:x_ar[5][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \St:x_ar[5][8]~2_combout\,
	datac => \Decoder3~6_combout\,
	datad => \Mux0~3_combout\,
	combout => \x_ar~282_combout\);

-- Location: LCCOMB_X67_Y70_N26
\x_ar~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~288_combout\ = (\Decoder3~0_combout\ & ((\Mux9~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~0_combout\,
	datac => \x_ar~282_combout\,
	datad => \Mux9~3_combout\,
	combout => \x_ar~288_combout\);

-- Location: LCCOMB_X67_Y70_N14
\x_ar~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~287_combout\ = (\Decoder3~3_combout\ & ((\Mux9~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~280_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~280_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Mux9~3_combout\,
	combout => \x_ar~287_combout\);

-- Location: LCCOMB_X67_Y70_N4
\x_ar~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~285_combout\ = (\Decoder3~4_combout\ & ((\Mux9~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~281_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux9~3_combout\,
	combout => \x_ar~285_combout\);

-- Location: LCCOMB_X66_Y70_N30
\x_ar~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~278_combout\ = (\Decoder3~2_combout\ & ((\Mux0~3_combout\))) # (!\Decoder3~2_combout\ & (\St:x_ar[0][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[0][8]~2_combout\,
	datac => \Decoder3~2_combout\,
	datad => \Mux0~3_combout\,
	combout => \x_ar~278_combout\);

-- Location: LCCOMB_X67_Y70_N18
\x_ar~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~286_combout\ = (\Decoder3~5_combout\ & ((\Mux9~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~278_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~278_combout\,
	datac => \Decoder3~5_combout\,
	datad => \Mux9~3_combout\,
	combout => \x_ar~286_combout\);

-- Location: LCCOMB_X67_Y70_N28
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & ((\x_ar~286_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # ((\x_ar~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~285_combout\,
	datad => \x_ar~286_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X67_Y70_N20
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Add4~0_combout\ & ((\Mux18~0_combout\ & ((\x_ar~287_combout\))) # (!\Mux18~0_combout\ & (\x_ar~284_combout\)))) # (!\Add4~0_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~284_combout\,
	datab => \Add4~0_combout\,
	datac => \x_ar~287_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X67_Y70_N12
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux22~1_combout\ & ((\Mux22~0_combout\) # ((\Mux18~1_combout\)))) # (!\Mux22~1_combout\ & (!\Mux22~0_combout\ & (\x_ar~288_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~288_combout\,
	datad => \Mux18~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X67_Y70_N24
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux22~0_combout\ & ((\Mux18~2_combout\ & (\x_ar~289_combout\)) # (!\Mux18~2_combout\ & ((\x_ar~283_combout\))))) # (!\Mux22~0_combout\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~289_combout\,
	datab => \Mux22~0_combout\,
	datac => \x_ar~283_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X66_Y66_N20
\x_ar~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~296_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux18~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~284_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~284_combout\,
	datad => \Mux18~3_combout\,
	combout => \x_ar~296_combout\);

-- Location: LCCOMB_X67_Y70_N8
\x_ar~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~293_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux18~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~287_combout\)))) # (!\Decoder3~1_combout\ & (\x_ar~287_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \x_ar~287_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \Mux18~3_combout\,
	combout => \x_ar~293_combout\);

-- Location: LCCOMB_X66_Y66_N4
\x_ar~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~294_combout\ = (\Decoder3~3_combout\ & ((\Mux18~3_combout\))) # (!\Decoder3~3_combout\ & (\x_ar~285_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~3_combout\,
	datac => \x_ar~285_combout\,
	datad => \Mux18~3_combout\,
	combout => \x_ar~294_combout\);

-- Location: LCCOMB_X67_Y70_N2
\x_ar~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~295_combout\ = (\Decoder3~4_combout\ & ((\Mux18~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~286_combout\,
	datac => \Decoder3~4_combout\,
	datad => \Mux18~3_combout\,
	combout => \x_ar~295_combout\);

-- Location: LCCOMB_X66_Y66_N2
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\St:x_count_ini[0]~2_combout\ & ((\St:x_count_ini[1]~2_combout\) # ((\x_ar~294_combout\)))) # (!\St:x_count_ini[0]~2_combout\ & (!\St:x_count_ini[1]~2_combout\ & ((\x_ar~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[0]~2_combout\,
	datab => \St:x_count_ini[1]~2_combout\,
	datac => \x_ar~294_combout\,
	datad => \x_ar~295_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X66_Y66_N30
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\St:x_count_ini[1]~2_combout\ & ((\Mux27~1_combout\ & (\x_ar~296_combout\)) # (!\Mux27~1_combout\ & ((\x_ar~293_combout\))))) # (!\St:x_count_ini[1]~2_combout\ & (((\Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \x_ar~296_combout\,
	datac => \x_ar~293_combout\,
	datad => \Mux27~1_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X66_Y66_N8
\x_ar~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~292_combout\ = (\Decoder3~0_combout\ & ((\Mux18~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~283_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~283_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux18~3_combout\,
	combout => \x_ar~292_combout\);

-- Location: LCCOMB_X67_Y70_N6
\x_ar~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~291_combout\ = (\Decoder3~2_combout\ & ((\Mux18~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~289_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~289_combout\,
	datab => \Decoder3~2_combout\,
	datad => \Mux18~3_combout\,
	combout => \x_ar~291_combout\);

-- Location: LCCOMB_X66_Y66_N10
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux31~1_combout\ & ((\Mux31~0_combout\) # ((\x_ar~291_combout\)))) # (!\Mux31~1_combout\ & (!\Mux31~0_combout\ & (\x_ar~292_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \Mux31~0_combout\,
	datac => \x_ar~292_combout\,
	datad => \x_ar~291_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X66_Y66_N0
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux31~0_combout\ & ((\Mux27~0_combout\ & ((\Mux27~2_combout\))) # (!\Mux27~0_combout\ & (\x_ar~290_combout\)))) # (!\Mux31~0_combout\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~290_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux27~2_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X67_Y66_N0
\x_ar~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~303_combout\ = (\Equal8~0_combout\ & (\Mux27~3_combout\)) # (!\Equal8~0_combout\ & ((\x_ar~292_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \Mux27~3_combout\,
	datad => \x_ar~292_combout\,
	combout => \x_ar~303_combout\);

-- Location: LCCOMB_X67_Y66_N4
\x_ar~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~297_combout\ = (\Decoder3~5_combout\ & ((\Mux27~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~291_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~291_combout\,
	datab => \Decoder3~5_combout\,
	datac => \Mux27~3_combout\,
	combout => \x_ar~297_combout\);

-- Location: LCCOMB_X66_Y66_N22
\x_ar~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~290_combout\ = (\Equal8~0_combout\ & ((\Mux18~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~288_combout\,
	datac => \Equal8~0_combout\,
	datad => \Mux18~3_combout\,
	combout => \x_ar~290_combout\);

-- Location: LCCOMB_X66_Y66_N6
\x_ar~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~298_combout\ = (\Decoder3~2_combout\ & ((\Mux27~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~290_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~2_combout\,
	datac => \x_ar~290_combout\,
	datad => \Mux27~3_combout\,
	combout => \x_ar~298_combout\);

-- Location: LCCOMB_X67_Y66_N14
\x_ar~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~299_combout\ = (\Decoder3~1_combout\ & ((\St:x_count_ini[2]~2_combout\ & ((\Mux27~3_combout\))) # (!\St:x_count_ini[2]~2_combout\ & (\x_ar~294_combout\)))) # (!\Decoder3~1_combout\ & (\x_ar~294_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~1_combout\,
	datab => \x_ar~294_combout\,
	datac => \Mux27~3_combout\,
	datad => \St:x_count_ini[2]~2_combout\,
	combout => \x_ar~299_combout\);

-- Location: LCCOMB_X66_Y66_N16
\x_ar~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~300_combout\ = (\Decoder3~0_combout\ & ((\Mux27~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~296_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_ar~296_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux27~3_combout\,
	combout => \x_ar~300_combout\);

-- Location: LCCOMB_X66_Y66_N14
\x_ar~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~301_combout\ = (\St:x_count_ini[2]~2_combout\ & ((\Decoder3~6_combout\ & ((\Mux27~3_combout\))) # (!\Decoder3~6_combout\ & (\x_ar~293_combout\)))) # (!\St:x_count_ini[2]~2_combout\ & (((\x_ar~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[2]~2_combout\,
	datab => \Decoder3~6_combout\,
	datac => \x_ar~293_combout\,
	datad => \Mux27~3_combout\,
	combout => \x_ar~301_combout\);

-- Location: LCCOMB_X67_Y66_N16
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\St:x_count_ini[1]~2_combout\ & (\St:x_count_ini[0]~2_combout\ & ((\x_ar~301_combout\)))) # (!\St:x_count_ini[1]~2_combout\ & ((\St:x_count_ini[0]~2_combout\) # ((\x_ar~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \x_ar~300_combout\,
	datad => \x_ar~301_combout\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X67_Y66_N24
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Add4~0_combout\ & ((\Mux36~0_combout\ & (\x_ar~302_combout\)) # (!\Mux36~0_combout\ & ((\x_ar~299_combout\))))) # (!\Add4~0_combout\ & (((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~302_combout\,
	datab => \Add4~0_combout\,
	datac => \x_ar~299_combout\,
	datad => \Mux36~0_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X67_Y66_N18
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux39~1_combout\ & ((\Mux39~0_combout\) # ((\x_ar~298_combout\)))) # (!\Mux39~1_combout\ & (!\Mux39~0_combout\ & ((\Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~1_combout\,
	datab => \Mux39~0_combout\,
	datac => \x_ar~298_combout\,
	datad => \Mux36~1_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X67_Y66_N10
\Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux39~0_combout\ & ((\Mux36~2_combout\ & (\x_ar~303_combout\)) # (!\Mux36~2_combout\ & ((\x_ar~297_combout\))))) # (!\Mux39~0_combout\ & (((\Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \x_ar~303_combout\,
	datac => \x_ar~297_combout\,
	datad => \Mux36~2_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X67_Y66_N8
\x_ar~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~308_combout\ = (\Decoder3~0_combout\ & ((\Mux36~3_combout\))) # (!\Decoder3~0_combout\ & (\x_ar~301_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~301_combout\,
	datac => \Decoder3~0_combout\,
	datad => \Mux36~3_combout\,
	combout => \x_ar~308_combout\);

-- Location: LCCOMB_X68_Y66_N12
\x_ar~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~304_combout\ = (\Decoder3~5_combout\ & ((\Mux36~3_combout\))) # (!\Decoder3~5_combout\ & (\x_ar~298_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder3~5_combout\,
	datac => \x_ar~298_combout\,
	datad => \Mux36~3_combout\,
	combout => \x_ar~304_combout\);

-- Location: LCCOMB_X68_Y66_N26
\Mux45~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~8_combout\ = ((\Mux53~13_combout\) # ((\Mux49~9_combout\ & \x_ar~304_combout\))) # (!\Mux49~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~8_combout\,
	datab => \Mux49~9_combout\,
	datac => \Mux53~13_combout\,
	datad => \x_ar~304_combout\,
	combout => \Mux45~8_combout\);

-- Location: LCCOMB_X68_Y66_N16
\x_ar~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~307_combout\ = (\Decoder3~2_combout\ & ((\Mux36~3_combout\))) # (!\Decoder3~2_combout\ & (\x_ar~303_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~2_combout\,
	datac => \x_ar~303_combout\,
	datad => \Mux36~3_combout\,
	combout => \x_ar~307_combout\);

-- Location: LCCOMB_X68_Y66_N10
\Mux45~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~10_combout\ = (\Mux49~8_combout\) # (((\Mux53~13_combout\) # (\x_ar~307_combout\)) # (!\Mux49~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~8_combout\,
	datab => \Mux49~9_combout\,
	datac => \Mux53~13_combout\,
	datad => \x_ar~307_combout\,
	combout => \Mux45~10_combout\);

-- Location: LCCOMB_X67_Y66_N20
\x_ar~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~306_combout\ = (\Decoder3~4_combout\ & ((\Mux36~3_combout\))) # (!\Decoder3~4_combout\ & (\x_ar~297_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder3~4_combout\,
	datac => \x_ar~297_combout\,
	datad => \Mux36~3_combout\,
	combout => \x_ar~306_combout\);

-- Location: LCCOMB_X67_Y66_N22
\Mux45~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~14_combout\ = (\St:x_count_ini[1]~2_combout\) # ((\x_ar~306_combout\) # (!\St:x_count_ini[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_count_ini[1]~2_combout\,
	datac => \St:x_count_ini[2]~2_combout\,
	datad => \x_ar~306_combout\,
	combout => \Mux45~14_combout\);

-- Location: LCCOMB_X63_Y66_N8
\x_ar~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_ar~305_combout\ = (\Equal8~0_combout\ & ((\Mux36~3_combout\))) # (!\Equal8~0_combout\ & (\x_ar~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_ar~300_combout\,
	datab => \Equal8~0_combout\,
	datad => \Mux36~3_combout\,
	combout => \x_ar~305_combout\);

-- Location: LCCOMB_X67_Y66_N2
\Mux45~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~9_combout\ = (\Mux31~1_combout\ & (((\Mux45~14_combout\)))) # (!\Mux31~1_combout\ & ((\St:x_count_ini[0]~2_combout\ & ((\x_ar~305_combout\))) # (!\St:x_count_ini[0]~2_combout\ & (\Mux45~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datab => \St:x_count_ini[0]~2_combout\,
	datac => \Mux45~14_combout\,
	datad => \x_ar~305_combout\,
	combout => \Mux45~9_combout\);

-- Location: LCCOMB_X67_Y66_N6
\Mux45~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~12_combout\ = (\Mux45~8_combout\ & (((\Mux45~10_combout\ & \Mux45~9_combout\)))) # (!\Mux45~8_combout\ & (\Mux45~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~13_combout\,
	datab => \Mux45~8_combout\,
	datac => \Mux45~10_combout\,
	datad => \Mux45~9_combout\,
	combout => \Mux45~12_combout\);

-- Location: LCCOMB_X63_Y66_N18
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\St:x_ar[2][2]~6_combout\ & (\St:x_ar[2][2]~7_combout\)) # (!\St:x_ar[2][2]~6_combout\ & ((\St:x_ar[2][2]~7_combout\ & ((\Mux45~12_combout\))) # (!\St:x_ar[2][2]~7_combout\ & (\x_in[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][2]~6_combout\,
	datab => \St:x_ar[2][2]~7_combout\,
	datac => \x_in[8]~input_o\,
	datad => \Mux45~12_combout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X63_Y66_N12
\Selector22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = (\St:x_ar[2][2]~6_combout\ & ((\Selector22~0_combout\ & (\Selector22~2_combout\)) # (!\Selector22~0_combout\ & ((\x_ar~308_combout\))))) # (!\St:x_ar[2][2]~6_combout\ & (((\Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~2_combout\,
	datab => \St:x_ar[2][2]~6_combout\,
	datac => \x_ar~308_combout\,
	datad => \Selector22~0_combout\,
	combout => \Selector22~3_combout\);

-- Location: LCCOMB_X63_Y66_N28
\St:x_ar[2][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][8]~3_combout\ = \St:x_ar[2][8]~1_combout\ $ (\Selector22~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][8]~1_combout\,
	datad => \Selector22~3_combout\,
	combout => \St:x_ar[2][8]~3_combout\);

-- Location: FF_X63_Y66_N29
\St:x_ar[2][8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \St:x_ar[2][8]~3_combout\,
	clrn => \ALT_INV_St~0clkctrl_outclk\,
	ena => \St:x_ar[2][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:x_ar[2][8]~_emulated_q\);

-- Location: LCCOMB_X63_Y66_N30
\St~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~125_combout\ = (\St:x_ar[2][8]~2_combout\ & (!\L_in[2]~input_o\ & ((!\L_in[0]~input_o\) # (!\L_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[2][8]~2_combout\,
	datab => \L_in[1]~input_o\,
	datac => \L_in[0]~input_o\,
	datad => \L_in[2]~input_o\,
	combout => \St~125_combout\);

-- Location: LCCOMB_X63_Y66_N2
\St:x_ar[2][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][8]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~125_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[2][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[2][8]~1_combout\,
	datac => \St~125_combout\,
	datad => \St~0clkctrl_outclk\,
	combout => \St:x_ar[2][8]~1_combout\);

-- Location: LCCOMB_X63_Y66_N22
\St:x_ar[2][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[2][8]~2_combout\ = (\St~0_combout\ & (\St~125_combout\)) # (!\St~0_combout\ & ((\St:x_ar[2][8]~_emulated_q\ $ (\St:x_ar[2][8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St~125_combout\,
	datab => \St:x_ar[2][8]~_emulated_q\,
	datac => \St~0_combout\,
	datad => \St:x_ar[2][8]~1_combout\,
	combout => \St:x_ar[2][8]~2_combout\);

-- Location: LCCOMB_X67_Y67_N20
\St~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \St~126_combout\ = (!\L_in[2]~input_o\ & (\St:x_ar[1][8]~2_combout\ & !\L_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L_in[2]~input_o\,
	datab => \St:x_ar[1][8]~2_combout\,
	datad => \L_in[1]~input_o\,
	combout => \St~126_combout\);

-- Location: LCCOMB_X67_Y67_N8
\St:x_ar[1][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][8]~1_combout\ = (GLOBAL(\St~0clkctrl_outclk\) & ((\St~126_combout\))) # (!GLOBAL(\St~0clkctrl_outclk\) & (\St:x_ar[1][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \St:x_ar[1][8]~1_combout\,
	datac => \St~0clkctrl_outclk\,
	datad => \St~126_combout\,
	combout => \St:x_ar[1][8]~1_combout\);

-- Location: LCCOMB_X67_Y67_N2
\St:x_ar[1][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \St:x_ar[1][8]~2_combout\ = (\St~0_combout\ & (((\St~126_combout\)))) # (!\St~0_combout\ & (\St:x_ar[1][8]~_emulated_q\ $ (((\St:x_ar[1][8]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[1][8]~_emulated_q\,
	datab => \St~126_combout\,
	datac => \St:x_ar[1][8]~1_combout\,
	datad => \St~0_combout\,
	combout => \St:x_ar[1][8]~2_combout\);

-- Location: LCCOMB_X58_Y72_N14
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\St:count[0]~q\ & (((\St:count[1]~q\) # (\St:x_ar[1][8]~2_combout\)))) # (!\St:count[0]~q\ & (\St:x_ar[0][8]~2_combout\ & (!\St:count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:count[0]~q\,
	datab => \St:x_ar[0][8]~2_combout\,
	datac => \St:count[1]~q\,
	datad => \St:x_ar[1][8]~2_combout\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X67_Y71_N2
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\St:count[1]~q\ & ((\Mux54~0_combout\ & (\St:x_ar[3][8]~2_combout\)) # (!\Mux54~0_combout\ & ((\St:x_ar[2][8]~2_combout\))))) # (!\St:count[1]~q\ & (((\Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[3][8]~2_combout\,
	datab => \St:count[1]~q\,
	datac => \St:x_ar[2][8]~2_combout\,
	datad => \Mux54~0_combout\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X67_Y71_N0
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\Mux55~0_combout\ & (((\Mux55~1_combout\) # (\Mux54~1_combout\)))) # (!\Mux55~0_combout\ & (\St:x_ar[4][8]~2_combout\ & (!\Mux55~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[4][8]~2_combout\,
	datab => \Mux55~0_combout\,
	datac => \Mux55~1_combout\,
	datad => \Mux54~1_combout\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X67_Y71_N30
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\Mux55~1_combout\ & ((\Mux54~2_combout\ & (\St:x_ar[6][8]~2_combout\)) # (!\Mux54~2_combout\ & ((\St:x_ar[5][8]~2_combout\))))) # (!\Mux55~1_combout\ & (((\Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \St:x_ar[6][8]~2_combout\,
	datab => \Mux55~1_combout\,
	datac => \St:x_ar[5][8]~2_combout\,
	datad => \Mux54~2_combout\,
	combout => \Mux54~3_combout\);

-- Location: DSPMULT_X71_Y71_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X70_Y71_N18
\Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = ((\St:d[2]~q\ $ (\Mult0|auto_generated|mac_out2~DATAOUT2\ $ (!\Add15~3\)))) # (GND)
-- \Add15~5\ = CARRY((\St:d[2]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\Add15~3\))) # (!\St:d[2]~q\ & (\Mult0|auto_generated|mac_out2~DATAOUT2\ & !\Add15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[2]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X70_Y71_N12
\a_temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[2]~feeder_combout\ = \Add15~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~4_combout\,
	combout => \a_temp[2]~feeder_combout\);

-- Location: FF_X70_Y71_N13
\a_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[2]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(2));

-- Location: LCCOMB_X70_Y71_N20
\Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (\St:d[3]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\ & (\Add15~5\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\Add15~5\)))) # (!\St:d[3]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\Add15~5\)) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\Add15~5\) # (GND)))))
-- \Add15~7\ = CARRY((\St:d[3]~q\ & (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & !\Add15~5\)) # (!\St:d[3]~q\ & ((!\Add15~5\) # (!\Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[3]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X70_Y71_N10
\a_temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[3]~feeder_combout\ = \Add15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~6_combout\,
	combout => \a_temp[3]~feeder_combout\);

-- Location: FF_X70_Y71_N11
\a_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[3]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(3));

-- Location: FF_X70_Y71_N23
\St:d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~8_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[4]~q\);

-- Location: LCCOMB_X70_Y71_N22
\Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT4\ $ (\St:d[4]~q\ $ (!\Add15~7\)))) # (GND)
-- \Add15~9\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\St:d[4]~q\) # (!\Add15~7\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & (\St:d[4]~q\ & !\Add15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \St:d[4]~q\,
	datad => VCC,
	cin => \Add15~7\,
	combout => \Add15~8_combout\,
	cout => \Add15~9\);

-- Location: LCCOMB_X70_Y71_N0
\a_temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[4]~feeder_combout\ = \Add15~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~8_combout\,
	combout => \a_temp[4]~feeder_combout\);

-- Location: FF_X70_Y71_N1
\a_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[4]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(4));

-- Location: LCCOMB_X70_Y71_N24
\Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~10_combout\ = (\St:d[5]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\ & (\Add15~9\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\Add15~9\)))) # (!\St:d[5]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\Add15~9\)) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\Add15~9\) # (GND)))))
-- \Add15~11\ = CARRY((\St:d[5]~q\ & (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & !\Add15~9\)) # (!\St:d[5]~q\ & ((!\Add15~9\) # (!\Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[5]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Add15~9\,
	combout => \Add15~10_combout\,
	cout => \Add15~11\);

-- Location: LCCOMB_X70_Y71_N2
\a_temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[5]~feeder_combout\ = \Add15~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~10_combout\,
	combout => \a_temp[5]~feeder_combout\);

-- Location: FF_X70_Y71_N3
\a_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[5]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(5));

-- Location: LCCOMB_X70_Y71_N26
\Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~12_combout\ = ((\St:d[6]~q\ $ (\Mult0|auto_generated|mac_out2~DATAOUT6\ $ (!\Add15~11\)))) # (GND)
-- \Add15~13\ = CARRY((\St:d[6]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\Add15~11\))) # (!\St:d[6]~q\ & (\Mult0|auto_generated|mac_out2~DATAOUT6\ & !\Add15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[6]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Add15~11\,
	combout => \Add15~12_combout\,
	cout => \Add15~13\);

-- Location: LCCOMB_X70_Y71_N8
\a_temp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[6]~feeder_combout\ = \Add15~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~12_combout\,
	combout => \a_temp[6]~feeder_combout\);

-- Location: FF_X70_Y71_N9
\a_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[6]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(6));

-- Location: FF_X70_Y71_N29
\St:d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~14_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[7]~q\);

-- Location: LCCOMB_X70_Y71_N28
\Add15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~14_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\St:d[7]~q\ & (\Add15~13\ & VCC)) # (!\St:d[7]~q\ & (!\Add15~13\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\St:d[7]~q\ & (!\Add15~13\)) # (!\St:d[7]~q\ & ((\Add15~13\) # 
-- (GND)))))
-- \Add15~15\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\St:d[7]~q\ & !\Add15~13\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & ((!\Add15~13\) # (!\St:d[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \St:d[7]~q\,
	datad => VCC,
	cin => \Add15~13\,
	combout => \Add15~14_combout\,
	cout => \Add15~15\);

-- Location: LCCOMB_X70_Y71_N6
\a_temp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[7]~feeder_combout\ = \Add15~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~14_combout\,
	combout => \a_temp[7]~feeder_combout\);

-- Location: FF_X70_Y71_N7
\a_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[7]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(7));

-- Location: FF_X70_Y71_N31
\St:d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~16_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[8]~q\);

-- Location: LCCOMB_X70_Y71_N30
\Add15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~16_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT8\ $ (\St:d[8]~q\ $ (!\Add15~15\)))) # (GND)
-- \Add15~17\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\St:d[8]~q\) # (!\Add15~15\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT8\ & (\St:d[8]~q\ & !\Add15~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \St:d[8]~q\,
	datad => VCC,
	cin => \Add15~15\,
	combout => \Add15~16_combout\,
	cout => \Add15~17\);

-- Location: LCCOMB_X70_Y71_N4
\a_temp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[8]~feeder_combout\ = \Add15~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~16_combout\,
	combout => \a_temp[8]~feeder_combout\);

-- Location: FF_X70_Y71_N5
\a_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[8]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(8));

-- Location: FF_X70_Y70_N1
\St:d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~18_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[9]~q\);

-- Location: LCCOMB_X70_Y70_N0
\Add15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~18_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\St:d[9]~q\ & (\Add15~17\ & VCC)) # (!\St:d[9]~q\ & (!\Add15~17\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\St:d[9]~q\ & (!\Add15~17\)) # (!\St:d[9]~q\ & ((\Add15~17\) # 
-- (GND)))))
-- \Add15~19\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\St:d[9]~q\ & !\Add15~17\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\ & ((!\Add15~17\) # (!\St:d[9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \St:d[9]~q\,
	datad => VCC,
	cin => \Add15~17\,
	combout => \Add15~18_combout\,
	cout => \Add15~19\);

-- Location: LCCOMB_X69_Y70_N20
\a_temp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[9]~feeder_combout\ = \Add15~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~18_combout\,
	combout => \a_temp[9]~feeder_combout\);

-- Location: FF_X69_Y70_N21
\a_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[9]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(9));

-- Location: LCCOMB_X70_Y70_N2
\Add15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~20_combout\ = ((\St:d[10]~q\ $ (\Mult0|auto_generated|mac_out2~DATAOUT10\ $ (!\Add15~19\)))) # (GND)
-- \Add15~21\ = CARRY((\St:d[10]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT10\) # (!\Add15~19\))) # (!\St:d[10]~q\ & (\Mult0|auto_generated|mac_out2~DATAOUT10\ & !\Add15~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[10]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add15~19\,
	combout => \Add15~20_combout\,
	cout => \Add15~21\);

-- Location: LCCOMB_X70_Y70_N24
\a_temp[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[10]~feeder_combout\ = \Add15~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~20_combout\,
	combout => \a_temp[10]~feeder_combout\);

-- Location: FF_X70_Y70_N25
\a_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[10]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(10));

-- Location: FF_X70_Y70_N5
\St:d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~22_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[11]~q\);

-- Location: LCCOMB_X70_Y70_N4
\Add15~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~22_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\St:d[11]~q\ & (\Add15~21\ & VCC)) # (!\St:d[11]~q\ & (!\Add15~21\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\St:d[11]~q\ & (!\Add15~21\)) # (!\St:d[11]~q\ & ((\Add15~21\) # 
-- (GND)))))
-- \Add15~23\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\St:d[11]~q\ & !\Add15~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((!\Add15~21\) # (!\St:d[11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \St:d[11]~q\,
	datad => VCC,
	cin => \Add15~21\,
	combout => \Add15~22_combout\,
	cout => \Add15~23\);

-- Location: LCCOMB_X69_Y70_N6
\a_temp[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[11]~feeder_combout\ = \Add15~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~22_combout\,
	combout => \a_temp[11]~feeder_combout\);

-- Location: FF_X69_Y70_N7
\a_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[11]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(11));

-- Location: LCCOMB_X70_Y70_N6
\Add15~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~24_combout\ = ((\St:d[12]~q\ $ (\Mult0|auto_generated|mac_out2~DATAOUT12\ $ (!\Add15~23\)))) # (GND)
-- \Add15~25\ = CARRY((\St:d[12]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT12\) # (!\Add15~23\))) # (!\St:d[12]~q\ & (\Mult0|auto_generated|mac_out2~DATAOUT12\ & !\Add15~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[12]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \Add15~23\,
	combout => \Add15~24_combout\,
	cout => \Add15~25\);

-- Location: LCCOMB_X70_Y70_N26
\a_temp[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[12]~feeder_combout\ = \Add15~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~24_combout\,
	combout => \a_temp[12]~feeder_combout\);

-- Location: FF_X70_Y70_N27
\a_temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[12]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(12));

-- Location: LCCOMB_X70_Y70_N8
\Add15~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~26_combout\ = (\St:d[13]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT13\ & (\Add15~25\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\Add15~25\)))) # (!\St:d[13]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\Add15~25\)) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\Add15~25\) # (GND)))))
-- \Add15~27\ = CARRY((\St:d[13]~q\ & (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & !\Add15~25\)) # (!\St:d[13]~q\ & ((!\Add15~25\) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[13]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \Add15~25\,
	combout => \Add15~26_combout\,
	cout => \Add15~27\);

-- Location: LCCOMB_X70_Y70_N28
\a_temp[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[13]~feeder_combout\ = \Add15~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~26_combout\,
	combout => \a_temp[13]~feeder_combout\);

-- Location: FF_X70_Y70_N29
\a_temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[13]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(13));

-- Location: FF_X70_Y70_N11
\St:d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~28_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[14]~q\);

-- Location: LCCOMB_X70_Y70_N10
\Add15~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~28_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT14\ $ (\St:d[14]~q\ $ (!\Add15~27\)))) # (GND)
-- \Add15~29\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\St:d[14]~q\) # (!\Add15~27\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT14\ & (\St:d[14]~q\ & !\Add15~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \St:d[14]~q\,
	datad => VCC,
	cin => \Add15~27\,
	combout => \Add15~28_combout\,
	cout => \Add15~29\);

-- Location: LCCOMB_X70_Y70_N22
\a_temp[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[14]~feeder_combout\ = \Add15~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~28_combout\,
	combout => \a_temp[14]~feeder_combout\);

-- Location: FF_X70_Y70_N23
\a_temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[14]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(14));

-- Location: LCCOMB_X70_Y70_N12
\Add15~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~30_combout\ = (\St:d[15]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT15\ & (\Add15~29\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\Add15~29\)))) # (!\St:d[15]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\Add15~29\)) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\Add15~29\) # (GND)))))
-- \Add15~31\ = CARRY((\St:d[15]~q\ & (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & !\Add15~29\)) # (!\St:d[15]~q\ & ((!\Add15~29\) # (!\Mult0|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[15]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \Add15~29\,
	combout => \Add15~30_combout\,
	cout => \Add15~31\);

-- Location: LCCOMB_X70_Y70_N20
\a_temp[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[15]~feeder_combout\ = \Add15~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~30_combout\,
	combout => \a_temp[15]~feeder_combout\);

-- Location: FF_X70_Y70_N21
\a_temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[15]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(15));

-- Location: LCCOMB_X70_Y70_N14
\Add15~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~32_combout\ = ((\St:d[16]~q\ $ (\Mult0|auto_generated|mac_out2~DATAOUT16\ $ (!\Add15~31\)))) # (GND)
-- \Add15~33\ = CARRY((\St:d[16]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\Add15~31\))) # (!\St:d[16]~q\ & (\Mult0|auto_generated|mac_out2~DATAOUT16\ & !\Add15~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[16]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \Add15~31\,
	combout => \Add15~32_combout\,
	cout => \Add15~33\);

-- Location: LCCOMB_X69_Y70_N0
\a_temp[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[16]~feeder_combout\ = \Add15~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~32_combout\,
	combout => \a_temp[16]~feeder_combout\);

-- Location: FF_X69_Y70_N1
\a_temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[16]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(16));

-- Location: FF_X70_Y70_N17
\St:d[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add15~34_combout\,
	sclr => \St:d[19]~0_combout\,
	ena => \St:d[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \St:d[17]~q\);

-- Location: LCCOMB_X70_Y70_N16
\Add15~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~34_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\St:d[17]~q\ & (\Add15~33\ & VCC)) # (!\St:d[17]~q\ & (!\Add15~33\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\St:d[17]~q\ & (!\Add15~33\)) # (!\St:d[17]~q\ & ((\Add15~33\) # 
-- (GND)))))
-- \Add15~35\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\St:d[17]~q\ & !\Add15~33\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT17\ & ((!\Add15~33\) # (!\St:d[17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \St:d[17]~q\,
	datad => VCC,
	cin => \Add15~33\,
	combout => \Add15~34_combout\,
	cout => \Add15~35\);

-- Location: LCCOMB_X69_Y70_N2
\a_temp[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[17]~feeder_combout\ = \Add15~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~34_combout\,
	combout => \a_temp[17]~feeder_combout\);

-- Location: FF_X69_Y70_N3
\a_temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[17]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(17));

-- Location: LCCOMB_X70_Y70_N18
\Add15~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~36_combout\ = \St:d[18]~q\ $ (\Add15~35\ $ (!\Mult0|auto_generated|mac_out2~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \St:d[18]~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT17\,
	cin => \Add15~35\,
	combout => \Add15~36_combout\);

-- Location: LCCOMB_X70_Y70_N30
\a_temp[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_temp[18]~feeder_combout\ = \Add15~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add15~36_combout\,
	combout => \a_temp[18]~feeder_combout\);

-- Location: FF_X70_Y70_N31
\a_temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_temp[18]~feeder_combout\,
	ena => \a_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_temp(18));

ww_y_out(0) <= \y_out[0]~output_o\;

ww_y_out(1) <= \y_out[1]~output_o\;

ww_y_out(2) <= \y_out[2]~output_o\;

ww_y_out(3) <= \y_out[3]~output_o\;

ww_y_out(4) <= \y_out[4]~output_o\;

ww_y_out(5) <= \y_out[5]~output_o\;

ww_y_out(6) <= \y_out[6]~output_o\;

ww_y_out(7) <= \y_out[7]~output_o\;

ww_y_out(8) <= \y_out[8]~output_o\;

ww_y_out(9) <= \y_out[9]~output_o\;

ww_y_out(10) <= \y_out[10]~output_o\;

ww_y_out(11) <= \y_out[11]~output_o\;

ww_y_out(12) <= \y_out[12]~output_o\;

ww_y_out(13) <= \y_out[13]~output_o\;

ww_y_out(14) <= \y_out[14]~output_o\;

ww_y_out(15) <= \y_out[15]~output_o\;

ww_y_out(16) <= \y_out[16]~output_o\;

ww_y_out(17) <= \y_out[17]~output_o\;

ww_y_out(18) <= \y_out[18]~output_o\;
END structure;


