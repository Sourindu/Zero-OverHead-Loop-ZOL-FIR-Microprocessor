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

-- DATE "03/08/2016 03:09:30"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fir4dlms IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x_in : IN std_logic_vector(7 DOWNTO 0);
	d_in : IN std_logic_vector(7 DOWNTO 0);
	f0_out : OUT std_logic_vector(7 DOWNTO 0);
	f1_out : OUT std_logic_vector(7 DOWNTO 0);
	y_out : OUT std_logic_vector(15 DOWNTO 0);
	e_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END fir4dlms;

-- Design Ports Information
-- f0_out[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[2]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[1]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[2]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[3]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[6]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[9]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[10]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[11]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[12]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[13]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[14]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[15]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[1]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[2]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[4]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[5]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[6]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[9]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[10]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[11]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[12]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[13]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[14]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[15]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir4dlms IS
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
SIGNAL ww_x_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_f0_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_f1_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_e_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \xemu[0][9]\ : std_logic;
SIGNAL \xemu[0][11]\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \xemu[1][9]\ : std_logic;
SIGNAL \xemu[1][10]\ : std_logic;
SIGNAL \xemu[1][13]\ : std_logic;
SIGNAL \xemu[1][14]\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \p[1][0]\ : std_logic;
SIGNAL \p[1][2]\ : std_logic;
SIGNAL \p[1][6]\ : std_logic;
SIGNAL \p[1][7]\ : std_logic;
SIGNAL \p[1][10]\ : std_logic;
SIGNAL \p[1][12]\ : std_logic;
SIGNAL \p[1][15]\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \p[0][1]\ : std_logic;
SIGNAL \p[0][3]\ : std_logic;
SIGNAL \p[0][4]\ : std_logic;
SIGNAL \p[0][5]\ : std_logic;
SIGNAL \p[0][8]\ : std_logic;
SIGNAL \p[0][9]\ : std_logic;
SIGNAL \p[0][11]\ : std_logic;
SIGNAL \p[0][13]\ : std_logic;
SIGNAL \p[0][14]\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \d[2][1]~q\ : std_logic;
SIGNAL \d[2][3]~q\ : std_logic;
SIGNAL \d[2][4]~q\ : std_logic;
SIGNAL \d[2][6]~q\ : std_logic;
SIGNAL \d[1][1]~q\ : std_logic;
SIGNAL \d[1][3]~q\ : std_logic;
SIGNAL \d[1][4]~q\ : std_logic;
SIGNAL \d[1][6]~q\ : std_logic;
SIGNAL \d[0][1]~q\ : std_logic;
SIGNAL \d[0][3]~q\ : std_logic;
SIGNAL \d[0][4]~q\ : std_logic;
SIGNAL \d[0][6]~q\ : std_logic;
SIGNAL \d_in[1]~input_o\ : std_logic;
SIGNAL \d_in[3]~input_o\ : std_logic;
SIGNAL \d_in[4]~input_o\ : std_logic;
SIGNAL \d_in[6]~input_o\ : std_logic;
SIGNAL \d[2][1]~feeder_combout\ : std_logic;
SIGNAL \d[2][3]~feeder_combout\ : std_logic;
SIGNAL \d[2][4]~feeder_combout\ : std_logic;
SIGNAL \d[2][6]~feeder_combout\ : std_logic;
SIGNAL \d[1][1]~feeder_combout\ : std_logic;
SIGNAL \d[1][3]~feeder_combout\ : std_logic;
SIGNAL \d[1][4]~feeder_combout\ : std_logic;
SIGNAL \d[1][6]~feeder_combout\ : std_logic;
SIGNAL \d[0][3]~feeder_combout\ : std_logic;
SIGNAL \d[0][4]~feeder_combout\ : std_logic;
SIGNAL \f0_out[0]~output_o\ : std_logic;
SIGNAL \f0_out[1]~output_o\ : std_logic;
SIGNAL \f0_out[2]~output_o\ : std_logic;
SIGNAL \f0_out[3]~output_o\ : std_logic;
SIGNAL \f0_out[4]~output_o\ : std_logic;
SIGNAL \f0_out[5]~output_o\ : std_logic;
SIGNAL \f0_out[6]~output_o\ : std_logic;
SIGNAL \f0_out[7]~output_o\ : std_logic;
SIGNAL \f1_out[0]~output_o\ : std_logic;
SIGNAL \f1_out[1]~output_o\ : std_logic;
SIGNAL \f1_out[2]~output_o\ : std_logic;
SIGNAL \f1_out[3]~output_o\ : std_logic;
SIGNAL \f1_out[4]~output_o\ : std_logic;
SIGNAL \f1_out[5]~output_o\ : std_logic;
SIGNAL \f1_out[6]~output_o\ : std_logic;
SIGNAL \f1_out[7]~output_o\ : std_logic;
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
SIGNAL \e_out[0]~output_o\ : std_logic;
SIGNAL \e_out[1]~output_o\ : std_logic;
SIGNAL \e_out[2]~output_o\ : std_logic;
SIGNAL \e_out[3]~output_o\ : std_logic;
SIGNAL \e_out[4]~output_o\ : std_logic;
SIGNAL \e_out[5]~output_o\ : std_logic;
SIGNAL \e_out[6]~output_o\ : std_logic;
SIGNAL \e_out[7]~output_o\ : std_logic;
SIGNAL \e_out[8]~output_o\ : std_logic;
SIGNAL \e_out[9]~output_o\ : std_logic;
SIGNAL \e_out[10]~output_o\ : std_logic;
SIGNAL \e_out[11]~output_o\ : std_logic;
SIGNAL \e_out[12]~output_o\ : std_logic;
SIGNAL \e_out[13]~output_o\ : std_logic;
SIGNAL \e_out[14]~output_o\ : std_logic;
SIGNAL \e_out[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \d_in[2]~input_o\ : std_logic;
SIGNAL \d[0][2]~feeder_combout\ : std_logic;
SIGNAL \d[0][2]~q\ : std_logic;
SIGNAL \d[1][2]~feeder_combout\ : std_logic;
SIGNAL \d[1][2]~q\ : std_logic;
SIGNAL \d[2][2]~feeder_combout\ : std_logic;
SIGNAL \d[2][2]~q\ : std_logic;
SIGNAL \d_in[0]~input_o\ : std_logic;
SIGNAL \d[0][0]~feeder_combout\ : std_logic;
SIGNAL \d[0][0]~q\ : std_logic;
SIGNAL \d[1][0]~feeder_combout\ : std_logic;
SIGNAL \d[1][0]~q\ : std_logic;
SIGNAL \d[2][0]~feeder_combout\ : std_logic;
SIGNAL \d[2][0]~q\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \f[0][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[0][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][0]~17\ : std_logic;
SIGNAL \f[0][1]~18_combout\ : std_logic;
SIGNAL \f[1][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][0]~33\ : std_logic;
SIGNAL \f[1][1]~34_combout\ : std_logic;
SIGNAL \f[1][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][1]~35\ : std_logic;
SIGNAL \f[1][2]~36_combout\ : std_logic;
SIGNAL \d_in[5]~input_o\ : std_logic;
SIGNAL \d[0][5]~feeder_combout\ : std_logic;
SIGNAL \d[0][5]~q\ : std_logic;
SIGNAL \d[1][5]~feeder_combout\ : std_logic;
SIGNAL \d[1][5]~q\ : std_logic;
SIGNAL \d[2][5]~feeder_combout\ : std_logic;
SIGNAL \d[2][5]~q\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \f[1][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][2]~37\ : std_logic;
SIGNAL \f[1][3]~39\ : std_logic;
SIGNAL \f[1][4]~41\ : std_logic;
SIGNAL \f[1][5]~42_combout\ : std_logic;
SIGNAL \f[1][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][5]~43\ : std_logic;
SIGNAL \f[1][6]~44_combout\ : std_logic;
SIGNAL \d_in[7]~input_o\ : std_logic;
SIGNAL \d[0][7]~q\ : std_logic;
SIGNAL \d[1][7]~feeder_combout\ : std_logic;
SIGNAL \d[1][7]~q\ : std_logic;
SIGNAL \d[2][7]~feeder_combout\ : std_logic;
SIGNAL \d[2][7]~q\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \x[0][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[1][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[2][0]~feeder_combout\ : std_logic;
SIGNAL \x[2][0]~q\ : std_logic;
SIGNAL \x[3][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[3][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x[0][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[0][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[2][1]~q\ : std_logic;
SIGNAL \x[3][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \x[0][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[0][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[1][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[2][2]~feeder_combout\ : std_logic;
SIGNAL \x[2][2]~q\ : std_logic;
SIGNAL \x[3][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x[0][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[2][3]~q\ : std_logic;
SIGNAL \x[3][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x[0][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[0][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[1][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[2][4]~q\ : std_logic;
SIGNAL \x[3][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \x[0][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[1][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[2][5]~feeder_combout\ : std_logic;
SIGNAL \x[2][5]~q\ : std_logic;
SIGNAL \x[3][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x[0][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[2][6]~q\ : std_logic;
SIGNAL \x[3][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \x[0][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[0][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[1][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \x[2][7]~feeder_combout\ : std_logic;
SIGNAL \x[2][7]~q\ : std_logic;
SIGNAL \x[3][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \xemu[1][15]\ : std_logic;
SIGNAL \f[1][6]~45\ : std_logic;
SIGNAL \f[1][7]~46_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \p[1][14]\ : std_logic;
SIGNAL \f[0][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[0][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][1]~19\ : std_logic;
SIGNAL \f[0][2]~21\ : std_logic;
SIGNAL \f[0][3]~22_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \xemu[0][12]\ : std_logic;
SIGNAL \f[0][3]~23\ : std_logic;
SIGNAL \f[0][4]~24_combout\ : std_logic;
SIGNAL \xemu[0][13]\ : std_logic;
SIGNAL \f[0][4]~25\ : std_logic;
SIGNAL \f[0][5]~26_combout\ : std_logic;
SIGNAL \xemu[0][14]\ : std_logic;
SIGNAL \f[0][5]~27\ : std_logic;
SIGNAL \f[0][6]~28_combout\ : std_logic;
SIGNAL \xemu[0][15]\ : std_logic;
SIGNAL \f[0][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[0][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][6]~29\ : std_logic;
SIGNAL \f[0][7]~30_combout\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \p[0][12]\ : std_logic;
SIGNAL \p[1][9]\ : std_logic;
SIGNAL \p[0][7]\ : std_logic;
SIGNAL \p[0][6]\ : std_logic;
SIGNAL \p[1][5]\ : std_logic;
SIGNAL \p[1][4]\ : std_logic;
SIGNAL \p[1][3]\ : std_logic;
SIGNAL \p[0][2]\ : std_logic;
SIGNAL \p[1][1]\ : std_logic;
SIGNAL \p[0][0]\ : std_logic;
SIGNAL \y[7]~10_cout\ : std_logic;
SIGNAL \y[7]~12_cout\ : std_logic;
SIGNAL \y[7]~14_cout\ : std_logic;
SIGNAL \y[7]~16_cout\ : std_logic;
SIGNAL \y[7]~18_cout\ : std_logic;
SIGNAL \y[7]~20_cout\ : std_logic;
SIGNAL \y[7]~22_cout\ : std_logic;
SIGNAL \y[7]~24\ : std_logic;
SIGNAL \y[8]~26\ : std_logic;
SIGNAL \y[9]~28\ : std_logic;
SIGNAL \y[10]~30\ : std_logic;
SIGNAL \y[11]~32\ : std_logic;
SIGNAL \y[12]~34\ : std_logic;
SIGNAL \y[13]~36\ : std_logic;
SIGNAL \y[14]~37_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \xemu[1][12]\ : std_logic;
SIGNAL \f[1][4]~40_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \p[1][13]\ : std_logic;
SIGNAL \y[13]~35_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \xemu[1][11]\ : std_logic;
SIGNAL \f[1][3]~38_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \p[1][11]\ : std_logic;
SIGNAL \y[11]~31_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \xemu[0][10]\ : std_logic;
SIGNAL \f[0][2]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \p[0][10]\ : std_logic;
SIGNAL \y[10]~29_combout\ : std_logic;
SIGNAL \y[10]~feeder_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \xemu[1][8]\ : std_logic;
SIGNAL \f[1][0]~32_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \p[1][8]\ : std_logic;
SIGNAL \y[8]~25_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \xemu[0][8]\ : std_logic;
SIGNAL \f[0][0]~16_combout\ : std_logic;
SIGNAL \f[0][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[0][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[0][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[0][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[0][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[0][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \f[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \y[7]~23_combout\ : std_logic;
SIGNAL \y[7]~feeder_combout\ : std_logic;
SIGNAL \y[9]~27_combout\ : std_logic;
SIGNAL \y[12]~33_combout\ : std_logic;
SIGNAL \p[0][15]\ : std_logic;
SIGNAL \y[14]~38\ : std_logic;
SIGNAL \y[15]~39_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \e[1]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \e[1]~_Duplicate_2_q\ : std_logic;
SIGNAL \e[2]~_Duplicate_2_q\ : std_logic;
SIGNAL \e[3]~_Duplicate_2_q\ : std_logic;
SIGNAL \e[4]~_Duplicate_2_q\ : std_logic;
SIGNAL \e[5]~_Duplicate_2_q\ : std_logic;
SIGNAL \e[6]~_Duplicate_2_q\ : std_logic;
SIGNAL \e[7]~_Duplicate_2_q\ : std_logic;
SIGNAL \e[8]~_Duplicate_2_q\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \e[9]~feeder_combout\ : std_logic;
SIGNAL \e[11]~feeder_combout\ : std_logic;
SIGNAL \e[12]~feeder_combout\ : std_logic;
SIGNAL \e[13]~feeder_combout\ : std_logic;
SIGNAL \e[15]~feeder_combout\ : std_logic;
SIGNAL y : std_logic_vector(15 DOWNTO 0);
SIGNAL e : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_x_in <= x_in;
ww_d_in <= d_in;
f0_out <= ww_f0_out;
f1_out <= ww_f1_out;
y_out <= ww_y_out;
e_out <= ww_e_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~1\ & \Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~dataout\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\xemu[0][8]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\xemu[0][9]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\xemu[0][10]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\xemu[0][11]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\xemu[0][12]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\xemu[0][13]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\xemu[0][14]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\xemu[0][15]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\Mult3|auto_generated|mac_mult1~DATAOUT15\ & \Mult3|auto_generated|mac_mult1~DATAOUT14\ & \Mult3|auto_generated|mac_mult1~DATAOUT13\ & \Mult3|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT11\ & \Mult3|auto_generated|mac_mult1~DATAOUT10\ & \Mult3|auto_generated|mac_mult1~DATAOUT9\ & \Mult3|auto_generated|mac_mult1~DATAOUT8\ & \Mult3|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT6\ & \Mult3|auto_generated|mac_mult1~DATAOUT5\ & \Mult3|auto_generated|mac_mult1~DATAOUT4\ & \Mult3|auto_generated|mac_mult1~DATAOUT3\ & \Mult3|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT1\ & \Mult3|auto_generated|mac_mult1~dataout\ & \Mult3|auto_generated|mac_mult1~1\ & \Mult3|auto_generated|mac_mult1~0\);

\Mult3|auto_generated|mac_out2~0\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_out2~1\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_out2~dataout\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_out2~DATAOUT1\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_out2~DATAOUT2\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_out2~DATAOUT3\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_out2~DATAOUT4\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_out2~DATAOUT5\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_out2~DATAOUT6\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_out2~DATAOUT7\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\xemu[1][8]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\xemu[1][9]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\xemu[1][10]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\xemu[1][11]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\xemu[1][12]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\xemu[1][13]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\xemu[1][14]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\xemu[1][15]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult1~DATAOUT15\ & \Mult2|auto_generated|mac_mult1~DATAOUT14\ & \Mult2|auto_generated|mac_mult1~DATAOUT13\ & \Mult2|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT11\ & \Mult2|auto_generated|mac_mult1~DATAOUT10\ & \Mult2|auto_generated|mac_mult1~DATAOUT9\ & \Mult2|auto_generated|mac_mult1~DATAOUT8\ & \Mult2|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT6\ & \Mult2|auto_generated|mac_mult1~DATAOUT5\ & \Mult2|auto_generated|mac_mult1~DATAOUT4\ & \Mult2|auto_generated|mac_mult1~DATAOUT3\ & \Mult2|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT1\ & \Mult2|auto_generated|mac_mult1~dataout\ & \Mult2|auto_generated|mac_mult1~1\ & \Mult2|auto_generated|mac_mult1~0\);

\Mult2|auto_generated|mac_out2~0\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out2~1\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\p[1][0]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\p[1][1]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\p[1][2]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\p[1][3]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\p[1][4]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\p[1][5]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\p[1][6]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\p[1][7]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\p[1][8]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\p[1][9]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\p[1][10]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\p[1][11]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\p[1][12]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\p[1][13]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\p[1][14]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\p[1][15]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\p[0][0]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\p[0][1]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\p[0][2]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\p[0][3]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\p[0][4]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\p[0][5]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\p[0][6]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\p[0][7]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\p[0][8]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\p[0][9]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\p[0][10]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\p[0][11]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\p[0][12]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\p[0][13]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\p[0][14]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\p[0][15]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\Add3~16_combout\ & \Add3~14_combout\ & \Add3~12_combout\ & \Add3~10_combout\ & \Add3~8_combout\ & \Add3~6_combout\ & \Add3~4_combout\ & \Add3~2_combout\ & gnd);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\x[2][7]~q\ & \x[2][6]~q\ & \x[2][5]~q\ & \x[2][4]~q\ & \x[2][3]~q\ & \x[2][2]~q\ & \x[2][1]~q\ & \x[2][0]~q\ & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\Add3~16_combout\ & \Add3~14_combout\ & \Add3~12_combout\ & \Add3~10_combout\ & \Add3~8_combout\ & \Add3~6_combout\ & \Add3~4_combout\ & \Add3~2_combout\ & gnd);

\Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (\x[3][7]~_Duplicate_1_q\ & \x[3][6]~_Duplicate_1_q\ & \x[3][5]~_Duplicate_1_q\ & \x[3][4]~_Duplicate_1_q\ & \x[3][3]~_Duplicate_1_q\ & \x[3][2]~_Duplicate_1_q\ & \x[3][1]~_Duplicate_1_q\ & 
\x[3][0]~_Duplicate_1_q\ & gnd);

\Mult3|auto_generated|mac_mult1~0\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_mult1~1\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_mult1~dataout\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\f[1][7]~46_combout\ & \f[1][6]~44_combout\ & \f[1][5]~42_combout\ & \f[1][4]~40_combout\ & \f[1][3]~38_combout\ & \f[1][2]~36_combout\ & \f[1][1]~34_combout\ & \f[1][0]~32_combout\ & gnd);

\Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (\x[0][7]~_Duplicate_1_q\ & \x[0][6]~_Duplicate_1_q\ & \x[0][5]~_Duplicate_1_q\ & \x[0][4]~_Duplicate_1_q\ & \x[0][3]~_Duplicate_1_q\ & \x[0][2]~_Duplicate_1_q\ & \x[0][1]~_Duplicate_1_q\ & 
\x[0][0]~_Duplicate_1_q\ & gnd);

\Mult2|auto_generated|mac_mult1~0\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult1~1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult1~dataout\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\f[0][7]~30_combout\ & \f[0][6]~28_combout\ & \f[0][5]~26_combout\ & \f[0][4]~24_combout\ & \f[0][3]~22_combout\ & \f[0][2]~20_combout\ & \f[0][1]~18_combout\ & \f[0][0]~16_combout\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: DSPOUT_X93_Y69_N2
\Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y69_N3
\Mult3|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y70_N2
\Mult2|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y70_N3
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X94_Y69_N31
\d[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[2][1]~q\);

-- Location: FF_X95_Y69_N7
\d[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[2][3]~q\);

-- Location: FF_X95_Y69_N21
\d[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[2][4]~q\);

-- Location: FF_X95_Y69_N5
\d[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[2][6]~q\);

-- Location: FF_X95_Y69_N1
\d[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[1][1]~q\);

-- Location: FF_X96_Y69_N5
\d[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[1][3]~q\);

-- Location: FF_X96_Y69_N7
\d[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[1][4]~q\);

-- Location: FF_X95_Y69_N3
\d[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[1][6]~q\);

-- Location: FF_X107_Y69_N17
\d[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[0][1]~q\);

-- Location: FF_X97_Y69_N5
\d[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[0][3]~q\);

-- Location: FF_X97_Y69_N7
\d[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[0][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[0][4]~q\);

-- Location: FF_X96_Y69_N13
\d[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[0][6]~q\);

-- Location: IOIBUF_X115_Y37_N1
\d_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(1),
	o => \d_in[1]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\d_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(3),
	o => \d_in[3]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\d_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(4),
	o => \d_in[4]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\d_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(6),
	o => \d_in[6]~input_o\);

-- Location: LCCOMB_X94_Y69_N30
\d[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[2][1]~feeder_combout\ = \d[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d[1][1]~q\,
	combout => \d[2][1]~feeder_combout\);

-- Location: LCCOMB_X95_Y69_N6
\d[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[2][3]~feeder_combout\ = \d[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[1][3]~q\,
	combout => \d[2][3]~feeder_combout\);

-- Location: LCCOMB_X95_Y69_N20
\d[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[2][4]~feeder_combout\ = \d[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[1][4]~q\,
	combout => \d[2][4]~feeder_combout\);

-- Location: LCCOMB_X95_Y69_N4
\d[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[2][6]~feeder_combout\ = \d[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[1][6]~q\,
	combout => \d[2][6]~feeder_combout\);

-- Location: LCCOMB_X95_Y69_N0
\d[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[1][1]~feeder_combout\ = \d[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[0][1]~q\,
	combout => \d[1][1]~feeder_combout\);

-- Location: LCCOMB_X96_Y69_N4
\d[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[1][3]~feeder_combout\ = \d[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[0][3]~q\,
	combout => \d[1][3]~feeder_combout\);

-- Location: LCCOMB_X96_Y69_N6
\d[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[1][4]~feeder_combout\ = \d[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[0][4]~q\,
	combout => \d[1][4]~feeder_combout\);

-- Location: LCCOMB_X95_Y69_N2
\d[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[1][6]~feeder_combout\ = \d[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d[0][6]~q\,
	combout => \d[1][6]~feeder_combout\);

-- Location: LCCOMB_X97_Y69_N4
\d[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[0][3]~feeder_combout\ = \d_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[3]~input_o\,
	combout => \d[0][3]~feeder_combout\);

-- Location: LCCOMB_X97_Y69_N6
\d[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[0][4]~feeder_combout\ = \d_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[4]~input_o\,
	combout => \d[0][4]~feeder_combout\);

-- Location: IOOBUF_X83_Y73_N9
\f0_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0][0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f0_out[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\f0_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0][1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f0_out[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\f0_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0][2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f0_out[2]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\f0_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0][3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f0_out[3]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\f0_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0][4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f0_out[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\f0_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0][5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f0_out[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\f0_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0][6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f0_out[6]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\f0_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0][7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f0_out[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\f1_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1][0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f1_out[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\f1_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1][1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f1_out[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\f1_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1][2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f1_out[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\f1_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1][3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f1_out[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\f1_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1][4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f1_out[4]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\f1_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1][5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f1_out[5]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\f1_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1][6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f1_out[6]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\f1_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1][7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \f1_out[7]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\y_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(7),
	devoe => ww_devoe,
	o => \y_out[0]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\y_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(8),
	devoe => ww_devoe,
	o => \y_out[1]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\y_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(9),
	devoe => ww_devoe,
	o => \y_out[2]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\y_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(10),
	devoe => ww_devoe,
	o => \y_out[3]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\y_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(11),
	devoe => ww_devoe,
	o => \y_out[4]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\y_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(12),
	devoe => ww_devoe,
	o => \y_out[5]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\y_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(13),
	devoe => ww_devoe,
	o => \y_out[6]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\y_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(14),
	devoe => ww_devoe,
	o => \y_out[7]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\y_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(15),
	devoe => ww_devoe,
	o => \y_out[8]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\y_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(15),
	devoe => ww_devoe,
	o => \y_out[9]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\y_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(15),
	devoe => ww_devoe,
	o => \y_out[10]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\y_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(15),
	devoe => ww_devoe,
	o => \y_out[11]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\y_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(15),
	devoe => ww_devoe,
	o => \y_out[12]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\y_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(15),
	devoe => ww_devoe,
	o => \y_out[13]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\y_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(15),
	devoe => ww_devoe,
	o => \y_out[14]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\y_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => y(15),
	devoe => ww_devoe,
	o => \y_out[15]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\e_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => e(0),
	devoe => ww_devoe,
	o => \e_out[0]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\e_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e[1]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \e_out[1]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\e_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e[2]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \e_out[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\e_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e[3]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \e_out[3]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\e_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e[4]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \e_out[4]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\e_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e[5]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \e_out[5]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\e_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e[6]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \e_out[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\e_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e[7]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \e_out[7]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\e_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e[8]~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => \e_out[8]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\e_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => e(9),
	devoe => ww_devoe,
	o => \e_out[9]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\e_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => e(10),
	devoe => ww_devoe,
	o => \e_out[10]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\e_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => e(11),
	devoe => ww_devoe,
	o => \e_out[11]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\e_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => e(12),
	devoe => ww_devoe,
	o => \e_out[12]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\e_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => e(13),
	devoe => ww_devoe,
	o => \e_out[13]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\e_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => e(14),
	devoe => ww_devoe,
	o => \e_out[14]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\e_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => e(15),
	devoe => ww_devoe,
	o => \e_out[15]~output_o\);

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

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X111_Y73_N8
\d_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(2),
	o => \d_in[2]~input_o\);

-- Location: LCCOMB_X103_Y69_N8
\d[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[0][2]~feeder_combout\ = \d_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[2]~input_o\,
	combout => \d[0][2]~feeder_combout\);

-- Location: FF_X103_Y69_N9
\d[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[0][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[0][2]~q\);

-- Location: LCCOMB_X95_Y69_N22
\d[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[1][2]~feeder_combout\ = \d[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[0][2]~q\,
	combout => \d[1][2]~feeder_combout\);

-- Location: FF_X95_Y69_N23
\d[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[1][2]~q\);

-- Location: LCCOMB_X95_Y69_N28
\d[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[2][2]~feeder_combout\ = \d[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d[1][2]~q\,
	combout => \d[2][2]~feeder_combout\);

-- Location: FF_X95_Y69_N29
\d[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[2][2]~q\);

-- Location: IOIBUF_X115_Y37_N8
\d_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(0),
	o => \d_in[0]~input_o\);

-- Location: LCCOMB_X110_Y69_N8
\d[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[0][0]~feeder_combout\ = \d_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[0]~input_o\,
	combout => \d[0][0]~feeder_combout\);

-- Location: FF_X110_Y69_N9
\d[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[0][0]~q\);

-- Location: LCCOMB_X102_Y69_N24
\d[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[1][0]~feeder_combout\ = \d[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[0][0]~q\,
	combout => \d[1][0]~feeder_combout\);

-- Location: FF_X102_Y69_N25
\d[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[1][0]~q\);

-- Location: LCCOMB_X94_Y69_N0
\d[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[2][0]~feeder_combout\ = \d[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[1][0]~q\,
	combout => \d[2][0]~feeder_combout\);

-- Location: FF_X94_Y69_N1
\d[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[2][0]~q\);

-- Location: LCCOMB_X94_Y69_N6
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (y(7) & (\d[2][0]~q\ $ (VCC))) # (!y(7) & ((\d[2][0]~q\) # (GND)))
-- \Add3~1\ = CARRY((\d[2][0]~q\) # (!y(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y(7),
	datab => \d[2][0]~q\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X94_Y69_N8
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\d[2][1]~q\ & ((y(8) & (!\Add3~1\)) # (!y(8) & (\Add3~1\ & VCC)))) # (!\d[2][1]~q\ & ((y(8) & ((\Add3~1\) # (GND))) # (!y(8) & (!\Add3~1\))))
-- \Add3~3\ = CARRY((\d[2][1]~q\ & (y(8) & !\Add3~1\)) # (!\d[2][1]~q\ & ((y(8)) # (!\Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[2][1]~q\,
	datab => y(8),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X94_Y69_N10
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((y(9) $ (\d[2][2]~q\ $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((y(9) & (\d[2][2]~q\ & !\Add3~3\)) # (!y(9) & ((\d[2][2]~q\) # (!\Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y(9),
	datab => \d[2][2]~q\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X92_Y69_N0
\f[0][1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][1]~_Duplicate_1feeder_combout\ = \f[0][1]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f[0][1]~18_combout\,
	combout => \f[0][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y69_N1
\f[0][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][1]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y69_N12
\f[0][0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][0]~16_combout\ = (\f[0][0]~_Duplicate_1_q\ & (\xemu[0][8]\ $ (VCC))) # (!\f[0][0]~_Duplicate_1_q\ & (\xemu[0][8]\ & VCC))
-- \f[0][0]~17\ = CARRY((\f[0][0]~_Duplicate_1_q\ & \xemu[0][8]\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][0]~_Duplicate_1_q\,
	datab => \xemu[0][8]\,
	datad => VCC,
	combout => \f[0][0]~16_combout\,
	cout => \f[0][0]~17\);

-- Location: LCCOMB_X92_Y69_N14
\f[0][1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][1]~18_combout\ = (\xemu[0][9]\ & ((\f[0][1]~_Duplicate_1_q\ & (\f[0][0]~17\ & VCC)) # (!\f[0][1]~_Duplicate_1_q\ & (!\f[0][0]~17\)))) # (!\xemu[0][9]\ & ((\f[0][1]~_Duplicate_1_q\ & (!\f[0][0]~17\)) # (!\f[0][1]~_Duplicate_1_q\ & ((\f[0][0]~17\) # 
-- (GND)))))
-- \f[0][1]~19\ = CARRY((\xemu[0][9]\ & (!\f[0][1]~_Duplicate_1_q\ & !\f[0][0]~17\)) # (!\xemu[0][9]\ & ((!\f[0][0]~17\) # (!\f[0][1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xemu[0][9]\,
	datab => \f[0][1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \f[0][0]~17\,
	combout => \f[0][1]~18_combout\,
	cout => \f[0][1]~19\);

-- Location: LCCOMB_X92_Y70_N28
\f[1][1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][1]~_Duplicate_1feeder_combout\ = \f[1][1]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[1][1]~34_combout\,
	combout => \f[1][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y70_N29
\f[1][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][1]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y70_N8
\f[1][0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][0]~32_combout\ = (\f[1][0]~_Duplicate_1_q\ & (\xemu[1][8]\ $ (VCC))) # (!\f[1][0]~_Duplicate_1_q\ & (\xemu[1][8]\ & VCC))
-- \f[1][0]~33\ = CARRY((\f[1][0]~_Duplicate_1_q\ & \xemu[1][8]\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][0]~_Duplicate_1_q\,
	datab => \xemu[1][8]\,
	datad => VCC,
	combout => \f[1][0]~32_combout\,
	cout => \f[1][0]~33\);

-- Location: LCCOMB_X92_Y70_N10
\f[1][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][1]~34_combout\ = (\xemu[1][9]\ & ((\f[1][1]~_Duplicate_1_q\ & (\f[1][0]~33\ & VCC)) # (!\f[1][1]~_Duplicate_1_q\ & (!\f[1][0]~33\)))) # (!\xemu[1][9]\ & ((\f[1][1]~_Duplicate_1_q\ & (!\f[1][0]~33\)) # (!\f[1][1]~_Duplicate_1_q\ & ((\f[1][0]~33\) # 
-- (GND)))))
-- \f[1][1]~35\ = CARRY((\xemu[1][9]\ & (!\f[1][1]~_Duplicate_1_q\ & !\f[1][0]~33\)) # (!\xemu[1][9]\ & ((!\f[1][0]~33\) # (!\f[1][1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xemu[1][9]\,
	datab => \f[1][1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \f[1][0]~33\,
	combout => \f[1][1]~34_combout\,
	cout => \f[1][1]~35\);

-- Location: LCCOMB_X92_Y70_N24
\f[1][2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][2]~_Duplicate_1feeder_combout\ = \f[1][2]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[1][2]~36_combout\,
	combout => \f[1][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y70_N25
\f[1][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y70_N12
\f[1][2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][2]~36_combout\ = ((\xemu[1][10]\ $ (\f[1][2]~_Duplicate_1_q\ $ (!\f[1][1]~35\)))) # (GND)
-- \f[1][2]~37\ = CARRY((\xemu[1][10]\ & ((\f[1][2]~_Duplicate_1_q\) # (!\f[1][1]~35\))) # (!\xemu[1][10]\ & (\f[1][2]~_Duplicate_1_q\ & !\f[1][1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xemu[1][10]\,
	datab => \f[1][2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \f[1][1]~35\,
	combout => \f[1][2]~36_combout\,
	cout => \f[1][2]~37\);

-- Location: IOIBUF_X111_Y73_N1
\d_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(5),
	o => \d_in[5]~input_o\);

-- Location: LCCOMB_X103_Y69_N22
\d[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[0][5]~feeder_combout\ = \d_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[5]~input_o\,
	combout => \d[0][5]~feeder_combout\);

-- Location: FF_X103_Y69_N23
\d[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[0][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[0][5]~q\);

-- Location: LCCOMB_X95_Y69_N16
\d[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[1][5]~feeder_combout\ = \d[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[0][5]~q\,
	combout => \d[1][5]~feeder_combout\);

-- Location: FF_X95_Y69_N17
\d[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[1][5]~q\);

-- Location: LCCOMB_X95_Y69_N10
\d[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[2][5]~feeder_combout\ = \d[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[1][5]~q\,
	combout => \d[2][5]~feeder_combout\);

-- Location: FF_X95_Y69_N11
\d[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[2][5]~q\);

-- Location: LCCOMB_X94_Y69_N12
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\d[2][3]~q\ & ((y(10) & (!\Add3~5\)) # (!y(10) & (\Add3~5\ & VCC)))) # (!\d[2][3]~q\ & ((y(10) & ((\Add3~5\) # (GND))) # (!y(10) & (!\Add3~5\))))
-- \Add3~7\ = CARRY((\d[2][3]~q\ & (y(10) & !\Add3~5\)) # (!\d[2][3]~q\ & ((y(10)) # (!\Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[2][3]~q\,
	datab => y(10),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X94_Y69_N14
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\d[2][4]~q\ $ (y(11) $ (\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\d[2][4]~q\ & ((!\Add3~7\) # (!y(11)))) # (!\d[2][4]~q\ & (!y(11) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[2][4]~q\,
	datab => y(11),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X94_Y69_N16
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (y(12) & ((\d[2][5]~q\ & (!\Add3~9\)) # (!\d[2][5]~q\ & ((\Add3~9\) # (GND))))) # (!y(12) & ((\d[2][5]~q\ & (\Add3~9\ & VCC)) # (!\d[2][5]~q\ & (!\Add3~9\))))
-- \Add3~11\ = CARRY((y(12) & ((!\Add3~9\) # (!\d[2][5]~q\))) # (!y(12) & (!\d[2][5]~q\ & !\Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y(12),
	datab => \d[2][5]~q\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X92_Y70_N2
\f[1][5]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][5]~_Duplicate_1feeder_combout\ = \f[1][5]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[1][5]~42_combout\,
	combout => \f[1][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y70_N3
\f[1][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][5]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y70_N14
\f[1][3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][3]~38_combout\ = (\f[1][3]~_Duplicate_1_q\ & ((\xemu[1][11]\ & (\f[1][2]~37\ & VCC)) # (!\xemu[1][11]\ & (!\f[1][2]~37\)))) # (!\f[1][3]~_Duplicate_1_q\ & ((\xemu[1][11]\ & (!\f[1][2]~37\)) # (!\xemu[1][11]\ & ((\f[1][2]~37\) # (GND)))))
-- \f[1][3]~39\ = CARRY((\f[1][3]~_Duplicate_1_q\ & (!\xemu[1][11]\ & !\f[1][2]~37\)) # (!\f[1][3]~_Duplicate_1_q\ & ((!\f[1][2]~37\) # (!\xemu[1][11]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][3]~_Duplicate_1_q\,
	datab => \xemu[1][11]\,
	datad => VCC,
	cin => \f[1][2]~37\,
	combout => \f[1][3]~38_combout\,
	cout => \f[1][3]~39\);

-- Location: LCCOMB_X92_Y70_N16
\f[1][4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][4]~40_combout\ = ((\f[1][4]~_Duplicate_1_q\ $ (\xemu[1][12]\ $ (!\f[1][3]~39\)))) # (GND)
-- \f[1][4]~41\ = CARRY((\f[1][4]~_Duplicate_1_q\ & ((\xemu[1][12]\) # (!\f[1][3]~39\))) # (!\f[1][4]~_Duplicate_1_q\ & (\xemu[1][12]\ & !\f[1][3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][4]~_Duplicate_1_q\,
	datab => \xemu[1][12]\,
	datad => VCC,
	cin => \f[1][3]~39\,
	combout => \f[1][4]~40_combout\,
	cout => \f[1][4]~41\);

-- Location: LCCOMB_X92_Y70_N18
\f[1][5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][5]~42_combout\ = (\xemu[1][13]\ & ((\f[1][5]~_Duplicate_1_q\ & (\f[1][4]~41\ & VCC)) # (!\f[1][5]~_Duplicate_1_q\ & (!\f[1][4]~41\)))) # (!\xemu[1][13]\ & ((\f[1][5]~_Duplicate_1_q\ & (!\f[1][4]~41\)) # (!\f[1][5]~_Duplicate_1_q\ & ((\f[1][4]~41\) # 
-- (GND)))))
-- \f[1][5]~43\ = CARRY((\xemu[1][13]\ & (!\f[1][5]~_Duplicate_1_q\ & !\f[1][4]~41\)) # (!\xemu[1][13]\ & ((!\f[1][4]~41\) # (!\f[1][5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xemu[1][13]\,
	datab => \f[1][5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \f[1][4]~41\,
	combout => \f[1][5]~42_combout\,
	cout => \f[1][5]~43\);

-- Location: LCCOMB_X92_Y70_N4
\f[1][6]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][6]~_Duplicate_1feeder_combout\ = \f[1][6]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[1][6]~44_combout\,
	combout => \f[1][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y70_N5
\f[1][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y70_N20
\f[1][6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][6]~44_combout\ = ((\xemu[1][14]\ $ (\f[1][6]~_Duplicate_1_q\ $ (!\f[1][5]~43\)))) # (GND)
-- \f[1][6]~45\ = CARRY((\xemu[1][14]\ & ((\f[1][6]~_Duplicate_1_q\) # (!\f[1][5]~43\))) # (!\xemu[1][14]\ & (\f[1][6]~_Duplicate_1_q\ & !\f[1][5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xemu[1][14]\,
	datab => \f[1][6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \f[1][5]~43\,
	combout => \f[1][6]~44_combout\,
	cout => \f[1][6]~45\);

-- Location: IOIBUF_X109_Y73_N8
\d_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(7),
	o => \d_in[7]~input_o\);

-- Location: FF_X102_Y69_N23
\d[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[0][7]~q\);

-- Location: LCCOMB_X95_Y69_N24
\d[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[1][7]~feeder_combout\ = \d[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[0][7]~q\,
	combout => \d[1][7]~feeder_combout\);

-- Location: FF_X95_Y69_N25
\d[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[1][7]~q\);

-- Location: LCCOMB_X95_Y69_N30
\d[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[2][7]~feeder_combout\ = \d[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[1][7]~q\,
	combout => \d[2][7]~feeder_combout\);

-- Location: FF_X95_Y69_N31
\d[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d[2][7]~q\);

-- Location: LCCOMB_X94_Y69_N18
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\d[2][6]~q\ $ (y(13) $ (\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\d[2][6]~q\ & ((!\Add3~11\) # (!y(13)))) # (!\d[2][6]~q\ & (!y(13) & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[2][6]~q\,
	datab => y(13),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X94_Y69_N20
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\d[2][7]~q\ & ((y(14) & (!\Add3~13\)) # (!y(14) & (\Add3~13\ & VCC)))) # (!\d[2][7]~q\ & ((y(14) & ((\Add3~13\) # (GND))) # (!y(14) & (!\Add3~13\))))
-- \Add3~15\ = CARRY((\d[2][7]~q\ & (y(14) & !\Add3~13\)) # (!\d[2][7]~q\ & ((y(14)) # (!\Add3~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[2][7]~q\,
	datab => y(14),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X94_Y69_N22
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((y(15) $ (\d[2][7]~q\ $ (\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((y(15) & (\d[2][7]~q\ & !\Add3~15\)) # (!y(15) & ((\d[2][7]~q\) # (!\Add3~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => y(15),
	datab => \d[2][7]~q\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: IOIBUF_X102_Y73_N1
\x_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: FF_X96_Y70_N27
\x[0][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X96_Y70_N28
\x[1][0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[1][0]~_Duplicate_1feeder_combout\ = \x[0][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0][0]~_Duplicate_1_q\,
	combout => \x[1][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X96_Y70_N29
\x[1][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[1][0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X96_Y69_N24
\x[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[2][0]~feeder_combout\ = \x[1][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[1][0]~_Duplicate_1_q\,
	combout => \x[2][0]~feeder_combout\);

-- Location: FF_X96_Y69_N25
\x[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][0]~q\);

-- Location: LCCOMB_X96_Y69_N26
\x[3][0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[3][0]~_Duplicate_1feeder_combout\ = \x[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[2][0]~q\,
	combout => \x[3][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X96_Y69_N27
\x[3][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[3][0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][0]~_Duplicate_1_q\);

-- Location: IOIBUF_X96_Y73_N22
\x_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: LCCOMB_X92_Y70_N30
\x[0][1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0][1]~_Duplicate_1feeder_combout\ = \x_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[1]~input_o\,
	combout => \x[0][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y70_N31
\x[0][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[0][1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][1]~_Duplicate_1_q\);

-- Location: FF_X92_Y70_N21
\x[1][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[0][1]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][1]~_Duplicate_1_q\);

-- Location: FF_X92_Y69_N17
\x[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[1][1]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][1]~q\);

-- Location: FF_X92_Y69_N15
\x[3][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[2][1]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][1]~_Duplicate_1_q\);

-- Location: IOIBUF_X107_Y73_N1
\x_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: LCCOMB_X96_Y69_N2
\x[0][2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0][2]~_Duplicate_1feeder_combout\ = \x_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[2]~input_o\,
	combout => \x[0][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X96_Y69_N3
\x[0][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[0][2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X96_Y69_N28
\x[1][2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[1][2]~_Duplicate_1feeder_combout\ = \x[0][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[0][2]~_Duplicate_1_q\,
	combout => \x[1][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X96_Y69_N29
\x[1][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[1][2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X95_Y69_N26
\x[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[2][2]~feeder_combout\ = \x[1][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[1][2]~_Duplicate_1_q\,
	combout => \x[2][2]~feeder_combout\);

-- Location: FF_X95_Y69_N27
\x[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][2]~q\);

-- Location: FF_X92_Y69_N13
\x[3][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[2][2]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][2]~_Duplicate_1_q\);

-- Location: IOIBUF_X87_Y73_N15
\x_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: FF_X94_Y70_N1
\x[0][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][3]~_Duplicate_1_q\);

-- Location: FF_X94_Y70_N5
\x[1][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[0][3]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][3]~_Duplicate_1_q\);

-- Location: FF_X94_Y70_N3
\x[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[1][3]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][3]~q\);

-- Location: FF_X94_Y70_N9
\x[3][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[2][3]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][3]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y73_N15
\x_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: LCCOMB_X91_Y69_N0
\x[0][4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0][4]~_Duplicate_1feeder_combout\ = \x_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[4]~input_o\,
	combout => \x[0][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X91_Y69_N1
\x[0][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[0][4]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X91_Y69_N4
\x[1][4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[1][4]~_Duplicate_1feeder_combout\ = \x[0][4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[0][4]~_Duplicate_1_q\,
	combout => \x[1][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X91_Y69_N5
\x[1][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[1][4]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][4]~_Duplicate_1_q\);

-- Location: FF_X92_Y69_N27
\x[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[1][4]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][4]~q\);

-- Location: FF_X92_Y69_N19
\x[3][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[2][4]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][4]~_Duplicate_1_q\);

-- Location: IOIBUF_X89_Y73_N22
\x_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: FF_X90_Y69_N3
\x[0][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X90_Y69_N24
\x[1][5]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[1][5]~_Duplicate_1feeder_combout\ = \x[0][5]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[0][5]~_Duplicate_1_q\,
	combout => \x[1][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X90_Y69_N25
\x[1][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[1][5]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X91_Y69_N16
\x[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[2][5]~feeder_combout\ = \x[1][5]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[1][5]~_Duplicate_1_q\,
	combout => \x[2][5]~feeder_combout\);

-- Location: FF_X91_Y69_N17
\x[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][5]~q\);

-- Location: FF_X92_Y69_N21
\x[3][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[2][5]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][5]~_Duplicate_1_q\);

-- Location: IOIBUF_X83_Y73_N22
\x_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: FF_X92_Y70_N19
\x[0][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][6]~_Duplicate_1_q\);

-- Location: FF_X92_Y70_N17
\x[1][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[0][6]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][6]~_Duplicate_1_q\);

-- Location: FF_X92_Y70_N13
\x[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[1][6]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][6]~q\);

-- Location: FF_X92_Y69_N23
\x[3][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[2][6]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][6]~_Duplicate_1_q\);

-- Location: IOIBUF_X83_Y73_N15
\x_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: LCCOMB_X91_Y69_N22
\x[0][7]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0][7]~_Duplicate_1feeder_combout\ = \x_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[7]~input_o\,
	combout => \x[0][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X91_Y69_N23
\x[0][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[0][7]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X91_Y69_N10
\x[1][7]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[1][7]~_Duplicate_1feeder_combout\ = \x[0][7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0][7]~_Duplicate_1_q\,
	combout => \x[1][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X91_Y69_N11
\x[1][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[1][7]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[1][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X91_Y69_N2
\x[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[2][7]~feeder_combout\ = \x[1][7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[1][7]~_Duplicate_1_q\,
	combout => \x[2][7]~feeder_combout\);

-- Location: FF_X91_Y69_N3
\x[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[2][7]~q\);

-- Location: FF_X92_Y69_N25
\x[3][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[2][7]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[3][7]~_Duplicate_1_q\);

-- Location: DSPMULT_X93_Y69_N1
\Mult3|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X92_Y70_N22
\f[1][7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][7]~46_combout\ = \f[1][7]~_Duplicate_1_q\ $ (\f[1][6]~45\ $ (\xemu[1][15]\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][7]~_Duplicate_1_q\,
	datad => \xemu[1][15]\,
	cin => \f[1][6]~45\,
	combout => \f[1][7]~46_combout\);

-- Location: DSPMULT_X93_Y70_N0
\Mult2|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X92_Y69_N28
\f[0][3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][3]~_Duplicate_1feeder_combout\ = \f[0][3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[0][3]~22_combout\,
	combout => \f[0][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y69_N29
\f[0][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y69_N16
\f[0][2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][2]~20_combout\ = ((\f[0][2]~_Duplicate_1_q\ $ (\xemu[0][10]\ $ (!\f[0][1]~19\)))) # (GND)
-- \f[0][2]~21\ = CARRY((\f[0][2]~_Duplicate_1_q\ & ((\xemu[0][10]\) # (!\f[0][1]~19\))) # (!\f[0][2]~_Duplicate_1_q\ & (\xemu[0][10]\ & !\f[0][1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][2]~_Duplicate_1_q\,
	datab => \xemu[0][10]\,
	datad => VCC,
	cin => \f[0][1]~19\,
	combout => \f[0][2]~20_combout\,
	cout => \f[0][2]~21\);

-- Location: LCCOMB_X92_Y69_N18
\f[0][3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][3]~22_combout\ = (\xemu[0][11]\ & ((\f[0][3]~_Duplicate_1_q\ & (\f[0][2]~21\ & VCC)) # (!\f[0][3]~_Duplicate_1_q\ & (!\f[0][2]~21\)))) # (!\xemu[0][11]\ & ((\f[0][3]~_Duplicate_1_q\ & (!\f[0][2]~21\)) # (!\f[0][3]~_Duplicate_1_q\ & ((\f[0][2]~21\) # 
-- (GND)))))
-- \f[0][3]~23\ = CARRY((\xemu[0][11]\ & (!\f[0][3]~_Duplicate_1_q\ & !\f[0][2]~21\)) # (!\xemu[0][11]\ & ((!\f[0][2]~21\) # (!\f[0][3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xemu[0][11]\,
	datab => \f[0][3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \f[0][2]~21\,
	combout => \f[0][3]~22_combout\,
	cout => \f[0][3]~23\);

-- Location: DSPMULT_X93_Y69_N0
\Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X92_Y69_N20
\f[0][4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][4]~24_combout\ = ((\f[0][4]~_Duplicate_1_q\ $ (\xemu[0][12]\ $ (!\f[0][3]~23\)))) # (GND)
-- \f[0][4]~25\ = CARRY((\f[0][4]~_Duplicate_1_q\ & ((\xemu[0][12]\) # (!\f[0][3]~23\))) # (!\f[0][4]~_Duplicate_1_q\ & (\xemu[0][12]\ & !\f[0][3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][4]~_Duplicate_1_q\,
	datab => \xemu[0][12]\,
	datad => VCC,
	cin => \f[0][3]~23\,
	combout => \f[0][4]~24_combout\,
	cout => \f[0][4]~25\);

-- Location: LCCOMB_X92_Y69_N22
\f[0][5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][5]~26_combout\ = (\f[0][5]~_Duplicate_1_q\ & ((\xemu[0][13]\ & (\f[0][4]~25\ & VCC)) # (!\xemu[0][13]\ & (!\f[0][4]~25\)))) # (!\f[0][5]~_Duplicate_1_q\ & ((\xemu[0][13]\ & (!\f[0][4]~25\)) # (!\xemu[0][13]\ & ((\f[0][4]~25\) # (GND)))))
-- \f[0][5]~27\ = CARRY((\f[0][5]~_Duplicate_1_q\ & (!\xemu[0][13]\ & !\f[0][4]~25\)) # (!\f[0][5]~_Duplicate_1_q\ & ((!\f[0][4]~25\) # (!\xemu[0][13]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][5]~_Duplicate_1_q\,
	datab => \xemu[0][13]\,
	datad => VCC,
	cin => \f[0][4]~25\,
	combout => \f[0][5]~26_combout\,
	cout => \f[0][5]~27\);

-- Location: LCCOMB_X92_Y69_N24
\f[0][6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][6]~28_combout\ = ((\f[0][6]~_Duplicate_1_q\ $ (\xemu[0][14]\ $ (!\f[0][5]~27\)))) # (GND)
-- \f[0][6]~29\ = CARRY((\f[0][6]~_Duplicate_1_q\ & ((\xemu[0][14]\) # (!\f[0][5]~27\))) # (!\f[0][6]~_Duplicate_1_q\ & (\xemu[0][14]\ & !\f[0][5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][6]~_Duplicate_1_q\,
	datab => \xemu[0][14]\,
	datad => VCC,
	cin => \f[0][5]~27\,
	combout => \f[0][6]~28_combout\,
	cout => \f[0][6]~29\);

-- Location: LCCOMB_X92_Y69_N2
\f[0][7]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][7]~_Duplicate_1feeder_combout\ = \f[0][7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f[0][7]~30_combout\,
	combout => \f[0][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y69_N3
\f[0][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][7]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y69_N26
\f[0][7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][7]~30_combout\ = \xemu[0][15]\ $ (\f[0][6]~29\ $ (\f[0][7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xemu[0][15]\,
	datad => \f[0][7]~_Duplicate_1_q\,
	cin => \f[0][6]~29\,
	combout => \f[0][7]~30_combout\);

-- Location: DSPMULT_X93_Y70_N1
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X94_Y70_N0
\y[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~10_cout\ = CARRY((\p[1][0]\ & \p[0][0]\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p[1][0]\,
	datab => \p[0][0]\,
	datad => VCC,
	cout => \y[7]~10_cout\);

-- Location: LCCOMB_X94_Y70_N2
\y[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~12_cout\ = CARRY((\p[0][1]\ & (!\p[1][1]\ & !\y[7]~10_cout\)) # (!\p[0][1]\ & ((!\y[7]~10_cout\) # (!\p[1][1]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[0][1]\,
	datab => \p[1][1]\,
	datad => VCC,
	cin => \y[7]~10_cout\,
	cout => \y[7]~12_cout\);

-- Location: LCCOMB_X94_Y70_N4
\y[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~14_cout\ = CARRY((\p[1][2]\ & ((\p[0][2]\) # (!\y[7]~12_cout\))) # (!\p[1][2]\ & (\p[0][2]\ & !\y[7]~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[1][2]\,
	datab => \p[0][2]\,
	datad => VCC,
	cin => \y[7]~12_cout\,
	cout => \y[7]~14_cout\);

-- Location: LCCOMB_X94_Y70_N6
\y[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~16_cout\ = CARRY((\p[0][3]\ & (!\p[1][3]\ & !\y[7]~14_cout\)) # (!\p[0][3]\ & ((!\y[7]~14_cout\) # (!\p[1][3]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[0][3]\,
	datab => \p[1][3]\,
	datad => VCC,
	cin => \y[7]~14_cout\,
	cout => \y[7]~16_cout\);

-- Location: LCCOMB_X94_Y70_N8
\y[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~18_cout\ = CARRY((\p[0][4]\ & ((\p[1][4]\) # (!\y[7]~16_cout\))) # (!\p[0][4]\ & (\p[1][4]\ & !\y[7]~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[0][4]\,
	datab => \p[1][4]\,
	datad => VCC,
	cin => \y[7]~16_cout\,
	cout => \y[7]~18_cout\);

-- Location: LCCOMB_X94_Y70_N10
\y[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~20_cout\ = CARRY((\p[0][5]\ & (!\p[1][5]\ & !\y[7]~18_cout\)) # (!\p[0][5]\ & ((!\y[7]~18_cout\) # (!\p[1][5]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[0][5]\,
	datab => \p[1][5]\,
	datad => VCC,
	cin => \y[7]~18_cout\,
	cout => \y[7]~20_cout\);

-- Location: LCCOMB_X94_Y70_N12
\y[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~22_cout\ = CARRY((\p[1][6]\ & ((\p[0][6]\) # (!\y[7]~20_cout\))) # (!\p[1][6]\ & (\p[0][6]\ & !\y[7]~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[1][6]\,
	datab => \p[0][6]\,
	datad => VCC,
	cin => \y[7]~20_cout\,
	cout => \y[7]~22_cout\);

-- Location: LCCOMB_X94_Y70_N14
\y[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~23_combout\ = (\p[1][7]\ & ((\p[0][7]\ & (\y[7]~22_cout\ & VCC)) # (!\p[0][7]\ & (!\y[7]~22_cout\)))) # (!\p[1][7]\ & ((\p[0][7]\ & (!\y[7]~22_cout\)) # (!\p[0][7]\ & ((\y[7]~22_cout\) # (GND)))))
-- \y[7]~24\ = CARRY((\p[1][7]\ & (!\p[0][7]\ & !\y[7]~22_cout\)) # (!\p[1][7]\ & ((!\y[7]~22_cout\) # (!\p[0][7]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[1][7]\,
	datab => \p[0][7]\,
	datad => VCC,
	cin => \y[7]~22_cout\,
	combout => \y[7]~23_combout\,
	cout => \y[7]~24\);

-- Location: LCCOMB_X94_Y70_N16
\y[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[8]~25_combout\ = ((\p[0][8]\ $ (\p[1][8]\ $ (!\y[7]~24\)))) # (GND)
-- \y[8]~26\ = CARRY((\p[0][8]\ & ((\p[1][8]\) # (!\y[7]~24\))) # (!\p[0][8]\ & (\p[1][8]\ & !\y[7]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[0][8]\,
	datab => \p[1][8]\,
	datad => VCC,
	cin => \y[7]~24\,
	combout => \y[8]~25_combout\,
	cout => \y[8]~26\);

-- Location: LCCOMB_X94_Y70_N18
\y[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[9]~27_combout\ = (\p[0][9]\ & ((\p[1][9]\ & (\y[8]~26\ & VCC)) # (!\p[1][9]\ & (!\y[8]~26\)))) # (!\p[0][9]\ & ((\p[1][9]\ & (!\y[8]~26\)) # (!\p[1][9]\ & ((\y[8]~26\) # (GND)))))
-- \y[9]~28\ = CARRY((\p[0][9]\ & (!\p[1][9]\ & !\y[8]~26\)) # (!\p[0][9]\ & ((!\y[8]~26\) # (!\p[1][9]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[0][9]\,
	datab => \p[1][9]\,
	datad => VCC,
	cin => \y[8]~26\,
	combout => \y[9]~27_combout\,
	cout => \y[9]~28\);

-- Location: LCCOMB_X94_Y70_N20
\y[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[10]~29_combout\ = ((\p[1][10]\ $ (\p[0][10]\ $ (!\y[9]~28\)))) # (GND)
-- \y[10]~30\ = CARRY((\p[1][10]\ & ((\p[0][10]\) # (!\y[9]~28\))) # (!\p[1][10]\ & (\p[0][10]\ & !\y[9]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[1][10]\,
	datab => \p[0][10]\,
	datad => VCC,
	cin => \y[9]~28\,
	combout => \y[10]~29_combout\,
	cout => \y[10]~30\);

-- Location: LCCOMB_X94_Y70_N22
\y[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[11]~31_combout\ = (\p[0][11]\ & ((\p[1][11]\ & (\y[10]~30\ & VCC)) # (!\p[1][11]\ & (!\y[10]~30\)))) # (!\p[0][11]\ & ((\p[1][11]\ & (!\y[10]~30\)) # (!\p[1][11]\ & ((\y[10]~30\) # (GND)))))
-- \y[11]~32\ = CARRY((\p[0][11]\ & (!\p[1][11]\ & !\y[10]~30\)) # (!\p[0][11]\ & ((!\y[10]~30\) # (!\p[1][11]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[0][11]\,
	datab => \p[1][11]\,
	datad => VCC,
	cin => \y[10]~30\,
	combout => \y[11]~31_combout\,
	cout => \y[11]~32\);

-- Location: LCCOMB_X94_Y70_N24
\y[12]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[12]~33_combout\ = ((\p[1][12]\ $ (\p[0][12]\ $ (!\y[11]~32\)))) # (GND)
-- \y[12]~34\ = CARRY((\p[1][12]\ & ((\p[0][12]\) # (!\y[11]~32\))) # (!\p[1][12]\ & (\p[0][12]\ & !\y[11]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[1][12]\,
	datab => \p[0][12]\,
	datad => VCC,
	cin => \y[11]~32\,
	combout => \y[12]~33_combout\,
	cout => \y[12]~34\);

-- Location: LCCOMB_X94_Y70_N26
\y[13]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[13]~35_combout\ = (\p[0][13]\ & ((\p[1][13]\ & (\y[12]~34\ & VCC)) # (!\p[1][13]\ & (!\y[12]~34\)))) # (!\p[0][13]\ & ((\p[1][13]\ & (!\y[12]~34\)) # (!\p[1][13]\ & ((\y[12]~34\) # (GND)))))
-- \y[13]~36\ = CARRY((\p[0][13]\ & (!\p[1][13]\ & !\y[12]~34\)) # (!\p[0][13]\ & ((!\y[12]~34\) # (!\p[1][13]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[0][13]\,
	datab => \p[1][13]\,
	datad => VCC,
	cin => \y[12]~34\,
	combout => \y[13]~35_combout\,
	cout => \y[13]~36\);

-- Location: LCCOMB_X94_Y70_N28
\y[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[14]~37_combout\ = ((\p[0][14]\ $ (\p[1][14]\ $ (!\y[13]~36\)))) # (GND)
-- \y[14]~38\ = CARRY((\p[0][14]\ & ((\p[1][14]\) # (!\y[13]~36\))) # (!\p[0][14]\ & (\p[1][14]\ & !\y[13]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[0][14]\,
	datab => \p[1][14]\,
	datad => VCC,
	cin => \y[13]~36\,
	combout => \y[14]~37_combout\,
	cout => \y[14]~38\);

-- Location: FF_X94_Y70_N29
\y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[14]~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(14));

-- Location: FF_X94_Y70_N27
\y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[13]~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(13));

-- Location: FF_X94_Y70_N23
\y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[11]~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(11));

-- Location: LCCOMB_X95_Y69_N8
\y[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[10]~feeder_combout\ = \y[10]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[10]~29_combout\,
	combout => \y[10]~feeder_combout\);

-- Location: FF_X95_Y69_N9
\y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(10));

-- Location: FF_X94_Y70_N17
\y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[8]~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(8));

-- Location: LCCOMB_X92_Y69_N6
\f[0][0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][0]~_Duplicate_1feeder_combout\ = \f[0][0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[0][0]~16_combout\,
	combout => \f[0][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y69_N7
\f[0][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y69_N4
\f[0][2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][2]~_Duplicate_1feeder_combout\ = \f[0][2]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[0][2]~20_combout\,
	combout => \f[0][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y69_N5
\f[0][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y69_N30
\f[0][4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][4]~_Duplicate_1feeder_combout\ = \f[0][4]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[0][4]~24_combout\,
	combout => \f[0][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y69_N31
\f[0][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][4]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y69_N8
\f[0][5]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][5]~_Duplicate_1feeder_combout\ = \f[0][5]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f[0][5]~26_combout\,
	combout => \f[0][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y69_N9
\f[0][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][5]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y69_N10
\f[0][6]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][6]~_Duplicate_1feeder_combout\ = \f[0][6]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[0][6]~28_combout\,
	combout => \f[0][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y69_N11
\f[0][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y70_N6
\f[1][0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][0]~_Duplicate_1feeder_combout\ = \f[1][0]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f[1][0]~32_combout\,
	combout => \f[1][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y70_N7
\f[1][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y70_N0
\f[1][3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][3]~_Duplicate_1feeder_combout\ = \f[1][3]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f[1][3]~38_combout\,
	combout => \f[1][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y70_N1
\f[1][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X92_Y70_N26
\f[1][4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][4]~_Duplicate_1feeder_combout\ = \f[1][4]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f[1][4]~40_combout\,
	combout => \f[1][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X92_Y70_N27
\f[1][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][4]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][4]~_Duplicate_1_q\);

-- Location: FF_X92_Y70_N23
\f[1][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][7]~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][7]~_Duplicate_1_q\);

-- Location: LCCOMB_X94_Y69_N28
\y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[7]~feeder_combout\ = \y[7]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \y[7]~23_combout\,
	combout => \y[7]~feeder_combout\);

-- Location: FF_X94_Y69_N29
\y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(7));

-- Location: FF_X94_Y70_N19
\y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[9]~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(9));

-- Location: FF_X94_Y70_N25
\y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[12]~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(12));

-- Location: LCCOMB_X94_Y70_N30
\y[15]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[15]~39_combout\ = \p[1][15]\ $ (\y[14]~38\ $ (\p[0][15]\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p[1][15]\,
	datad => \p[0][15]\,
	cin => \y[14]~38\,
	combout => \y[15]~39_combout\);

-- Location: FF_X94_Y70_N31
\y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[15]~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(15));

-- Location: FF_X94_Y69_N7
\e[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e(0));

-- Location: LCCOMB_X95_Y69_N14
\e[1]~_Duplicate_2feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \e[1]~_Duplicate_2feeder_combout\ = \Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~2_combout\,
	combout => \e[1]~_Duplicate_2feeder_combout\);

-- Location: FF_X95_Y69_N15
\e[1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \e[1]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e[1]~_Duplicate_2_q\);

-- Location: FF_X94_Y69_N11
\e[2]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e[2]~_Duplicate_2_q\);

-- Location: FF_X94_Y69_N13
\e[3]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e[3]~_Duplicate_2_q\);

-- Location: FF_X94_Y69_N15
\e[4]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e[4]~_Duplicate_2_q\);

-- Location: FF_X94_Y69_N17
\e[5]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e[5]~_Duplicate_2_q\);

-- Location: FF_X94_Y69_N19
\e[6]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e[6]~_Duplicate_2_q\);

-- Location: FF_X94_Y69_N21
\e[7]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e[7]~_Duplicate_2_q\);

-- Location: FF_X94_Y69_N23
\e[8]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \e[8]~_Duplicate_2_q\);

-- Location: LCCOMB_X94_Y69_N24
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = \d[2][7]~q\ $ (\Add3~17\ $ (!y(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[2][7]~q\,
	datad => y(15),
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

-- Location: LCCOMB_X95_Y69_N12
\e[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \e[9]~feeder_combout\ = \Add3~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~18_combout\,
	combout => \e[9]~feeder_combout\);

-- Location: FF_X95_Y69_N13
\e[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \e[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e(9));

-- Location: FF_X94_Y69_N9
\e[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add3~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e(10));

-- Location: LCCOMB_X94_Y69_N26
\e[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \e[11]~feeder_combout\ = \Add3~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~18_combout\,
	combout => \e[11]~feeder_combout\);

-- Location: FF_X94_Y69_N27
\e[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \e[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e(11));

-- Location: LCCOMB_X94_Y69_N4
\e[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \e[12]~feeder_combout\ = \Add3~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~18_combout\,
	combout => \e[12]~feeder_combout\);

-- Location: FF_X94_Y69_N5
\e[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \e[12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e(12));

-- Location: LCCOMB_X94_Y69_N2
\e[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \e[13]~feeder_combout\ = \Add3~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~18_combout\,
	combout => \e[13]~feeder_combout\);

-- Location: FF_X94_Y69_N3
\e[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \e[13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e(13));

-- Location: FF_X94_Y69_N25
\e[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e(14));

-- Location: LCCOMB_X95_Y69_N18
\e[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \e[15]~feeder_combout\ = \Add3~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~18_combout\,
	combout => \e[15]~feeder_combout\);

-- Location: FF_X95_Y69_N19
\e[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \e[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => e(15));

ww_f0_out(0) <= \f0_out[0]~output_o\;

ww_f0_out(1) <= \f0_out[1]~output_o\;

ww_f0_out(2) <= \f0_out[2]~output_o\;

ww_f0_out(3) <= \f0_out[3]~output_o\;

ww_f0_out(4) <= \f0_out[4]~output_o\;

ww_f0_out(5) <= \f0_out[5]~output_o\;

ww_f0_out(6) <= \f0_out[6]~output_o\;

ww_f0_out(7) <= \f0_out[7]~output_o\;

ww_f1_out(0) <= \f1_out[0]~output_o\;

ww_f1_out(1) <= \f1_out[1]~output_o\;

ww_f1_out(2) <= \f1_out[2]~output_o\;

ww_f1_out(3) <= \f1_out[3]~output_o\;

ww_f1_out(4) <= \f1_out[4]~output_o\;

ww_f1_out(5) <= \f1_out[5]~output_o\;

ww_f1_out(6) <= \f1_out[6]~output_o\;

ww_f1_out(7) <= \f1_out[7]~output_o\;

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

ww_e_out(0) <= \e_out[0]~output_o\;

ww_e_out(1) <= \e_out[1]~output_o\;

ww_e_out(2) <= \e_out[2]~output_o\;

ww_e_out(3) <= \e_out[3]~output_o\;

ww_e_out(4) <= \e_out[4]~output_o\;

ww_e_out(5) <= \e_out[5]~output_o\;

ww_e_out(6) <= \e_out[6]~output_o\;

ww_e_out(7) <= \e_out[7]~output_o\;

ww_e_out(8) <= \e_out[8]~output_o\;

ww_e_out(9) <= \e_out[9]~output_o\;

ww_e_out(10) <= \e_out[10]~output_o\;

ww_e_out(11) <= \e_out[11]~output_o\;

ww_e_out(12) <= \e_out[12]~output_o\;

ww_e_out(13) <= \e_out[13]~output_o\;

ww_e_out(14) <= \e_out[14]~output_o\;

ww_e_out(15) <= \e_out[15]~output_o\;
END structure;


