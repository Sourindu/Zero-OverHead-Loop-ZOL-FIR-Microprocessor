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

-- DATE "03/07/2016 23:48:48"

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

ENTITY 	fir_lms IS
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
END fir_lms;

-- Design Ports Information
-- f0_out[0]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[1]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0_out[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[2]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[5]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[6]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1_out[7]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[11]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[12]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[13]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[14]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[15]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[4]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[5]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[6]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[7]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[8]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[9]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[10]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[11]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[13]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[14]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_out[15]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_lms IS
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
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \d_in[2]~input_o\ : std_logic;
SIGNAL \d_in[3]~input_o\ : std_logic;
SIGNAL \d_in[4]~input_o\ : std_logic;
SIGNAL \d_in[5]~input_o\ : std_logic;
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
SIGNAL \d_in[1]~input_o\ : std_logic;
SIGNAL \d_in[0]~input_o\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \f[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][0]~32_combout\ : std_logic;
SIGNAL \d_in[6]~input_o\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \f[0][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][0]~17\ : std_logic;
SIGNAL \f[0][1]~19\ : std_logic;
SIGNAL \f[0][2]~21\ : std_logic;
SIGNAL \f[0][3]~23\ : std_logic;
SIGNAL \f[0][4]~24_combout\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
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
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \f[0][4]~25\ : std_logic;
SIGNAL \f[0][5]~26_combout\ : std_logic;
SIGNAL \f[0][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][5]~27\ : std_logic;
SIGNAL \f[0][6]~28_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \f[0][6]~29\ : std_logic;
SIGNAL \f[0][7]~30_combout\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \x[0][0]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[0][1]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[0][1]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[0][2]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[0][2]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[0][3]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[0][4]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[0][4]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[0][5]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[0][6]~_Duplicate_2_q\ : std_logic;
SIGNAL \x[0][7]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \x[0][7]~_Duplicate_2_q\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
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
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \f[1][0]~33\ : std_logic;
SIGNAL \f[1][1]~35\ : std_logic;
SIGNAL \f[1][2]~37\ : std_logic;
SIGNAL \f[1][3]~38_combout\ : std_logic;
SIGNAL \f[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][3]~39\ : std_logic;
SIGNAL \f[1][4]~40_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \f[1][4]~41\ : std_logic;
SIGNAL \f[1][5]~42_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \f[1][5]~43\ : std_logic;
SIGNAL \f[1][6]~44_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \f[1][6]~45\ : std_logic;
SIGNAL \f[1][7]~46_combout\ : std_logic;
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
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~3_cout\ : std_logic;
SIGNAL \Add2~5_cout\ : std_logic;
SIGNAL \Add2~7_cout\ : std_logic;
SIGNAL \Add2~9_cout\ : std_logic;
SIGNAL \Add2~11_cout\ : std_logic;
SIGNAL \Add2~13_cout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \f[0][3]~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \f[1][2]~36_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \f[0][2]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \f[1][1]~34_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \f[0][1]~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \f[0][0]~16_combout\ : std_logic;
SIGNAL \f[0][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[0][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \f[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \d_in[7]~input_o\ : std_logic;
SIGNAL \d[7]~feeder_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL d : std_logic_vector(7 DOWNTO 0);
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
\Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out2~DATAOUT15\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult1~DATAOUT15\ & \Mult2|auto_generated|mac_mult1~DATAOUT14\ & \Mult2|auto_generated|mac_mult1~DATAOUT13\ & \Mult2|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT11\ & \Mult2|auto_generated|mac_mult1~DATAOUT10\ & \Mult2|auto_generated|mac_mult1~DATAOUT9\ & \Mult2|auto_generated|mac_mult1~DATAOUT8\ & \Mult2|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT6\ & \Mult2|auto_generated|mac_mult1~DATAOUT5\ & \Mult2|auto_generated|mac_mult1~DATAOUT4\ & \Mult2|auto_generated|mac_mult1~DATAOUT3\ & \Mult2|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT1\ & \Mult2|auto_generated|mac_mult1~dataout\ & \Mult2|auto_generated|mac_mult1~1\ & \Mult2|auto_generated|mac_mult1~0\);

\Mult2|auto_generated|mac_out2~0\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out2~1\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_out2~dataout\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_out2~DATAOUT1\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_out2~DATAOUT2\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_out2~DATAOUT3\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_out2~DATAOUT4\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_out2~DATAOUT5\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_out2~DATAOUT6\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_out2~DATAOUT7\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_out2~DATAOUT8\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_out2~DATAOUT9\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_out2~DATAOUT10\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_out2~DATAOUT11\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_out2~DATAOUT12\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_out2~DATAOUT13\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_out2~DATAOUT14\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_out2~DATAOUT15\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);

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
\Mult3|auto_generated|mac_out2~DATAOUT8\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_out2~DATAOUT9\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_out2~DATAOUT10\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_out2~DATAOUT11\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_out2~DATAOUT12\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_out2~DATAOUT13\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_out2~DATAOUT14\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_out2~DATAOUT15\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\f[1][7]~46_combout\ & \f[1][6]~44_combout\ & \f[1][5]~42_combout\ & \f[1][4]~40_combout\ & \f[1][3]~38_combout\ & \f[1][2]~36_combout\ & \f[1][1]~34_combout\ & \f[1][0]~32_combout\ & gnd);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\x[0][7]~_Duplicate_2_q\ & \x[0][6]~_Duplicate_2_q\ & \x[0][5]~_Duplicate_2_q\ & \x[0][4]~_Duplicate_2_q\ & \x[0][3]~_Duplicate_2_q\ & \x[0][2]~_Duplicate_2_q\ & \x[0][1]~_Duplicate_2_q\ & 
\x[0][0]~_Duplicate_2_q\ & gnd);

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

\Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\Add3~16_combout\ & \Add3~14_combout\ & \Add3~12_combout\ & \Add3~10_combout\ & \Add3~8_combout\ & \Add3~6_combout\ & \Add3~4_combout\ & \Add3~2_combout\ & gnd);

\Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (\x_in[7]~input_o\ & \x_in[6]~input_o\ & \x_in[5]~input_o\ & \x_in[4]~input_o\ & \x_in[3]~input_o\ & \x_in[2]~input_o\ & \x_in[1]~input_o\ & \x_in[0]~input_o\ & gnd);

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

\Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\Add3~16_combout\ & \Add3~14_combout\ & \Add3~12_combout\ & \Add3~10_combout\ & \Add3~8_combout\ & \Add3~6_combout\ & \Add3~4_combout\ & \Add3~2_combout\ & gnd);

\Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (\x[0][7]~_Duplicate_2_q\ & \x[0][6]~_Duplicate_2_q\ & \x[0][5]~_Duplicate_2_q\ & \x[0][4]~_Duplicate_2_q\ & \x[0][3]~_Duplicate_2_q\ & \x[0][2]~_Duplicate_2_q\ & \x[0][1]~_Duplicate_2_q\ & 
\x[0][0]~_Duplicate_2_q\ & gnd);

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

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: DSPOUT_X22_Y22_N2
\Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y24_N2
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

-- Location: DSPOUT_X22_Y24_N3
\Mult2|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y22_N3
\Mult3|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X24_Y24_N13
\d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(2));

-- Location: FF_X24_Y24_N15
\d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(3));

-- Location: FF_X24_Y24_N17
\d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(4));

-- Location: FF_X24_Y24_N19
\d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(5));

-- Location: IOIBUF_X0_Y31_N15
\d_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(2),
	o => \d_in[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\d_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(3),
	o => \d_in[3]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\d_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(4),
	o => \d_in[4]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\d_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(5),
	o => \d_in[5]~input_o\);

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X0_Y30_N9
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

-- Location: IOOBUF_X0_Y28_N16
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

-- Location: IOOBUF_X0_Y30_N2
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

-- Location: IOOBUF_X0_Y33_N23
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

-- Location: IOOBUF_X0_Y33_N16
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X0_Y22_N16
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

-- Location: IOOBUF_X0_Y14_N9
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X0_Y14_N2
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

-- Location: IOOBUF_X0_Y22_N23
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

-- Location: IOOBUF_X0_Y29_N16
\y_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~14_combout\,
	devoe => ww_devoe,
	o => \y_out[0]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\y_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~16_combout\,
	devoe => ww_devoe,
	o => \y_out[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\y_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~18_combout\,
	devoe => ww_devoe,
	o => \y_out[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\y_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~20_combout\,
	devoe => ww_devoe,
	o => \y_out[3]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\y_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~22_combout\,
	devoe => ww_devoe,
	o => \y_out[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\y_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~24_combout\,
	devoe => ww_devoe,
	o => \y_out[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\y_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~26_combout\,
	devoe => ww_devoe,
	o => \y_out[6]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\y_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~28_combout\,
	devoe => ww_devoe,
	o => \y_out[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\y_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~30_combout\,
	devoe => ww_devoe,
	o => \y_out[8]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\y_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~30_combout\,
	devoe => ww_devoe,
	o => \y_out[9]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\y_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~30_combout\,
	devoe => ww_devoe,
	o => \y_out[10]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\y_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~30_combout\,
	devoe => ww_devoe,
	o => \y_out[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\y_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~30_combout\,
	devoe => ww_devoe,
	o => \y_out[12]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\y_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~30_combout\,
	devoe => ww_devoe,
	o => \y_out[13]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\y_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~30_combout\,
	devoe => ww_devoe,
	o => \y_out[14]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\y_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~30_combout\,
	devoe => ww_devoe,
	o => \y_out[15]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\e_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~0_combout\,
	devoe => ww_devoe,
	o => \e_out[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\e_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~2_combout\,
	devoe => ww_devoe,
	o => \e_out[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\e_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~4_combout\,
	devoe => ww_devoe,
	o => \e_out[2]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\e_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~6_combout\,
	devoe => ww_devoe,
	o => \e_out[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\e_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~8_combout\,
	devoe => ww_devoe,
	o => \e_out[4]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\e_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~10_combout\,
	devoe => ww_devoe,
	o => \e_out[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\e_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~12_combout\,
	devoe => ww_devoe,
	o => \e_out[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\e_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~14_combout\,
	devoe => ww_devoe,
	o => \e_out[7]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\e_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~16_combout\,
	devoe => ww_devoe,
	o => \e_out[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\e_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~18_combout\,
	devoe => ww_devoe,
	o => \e_out[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\e_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~18_combout\,
	devoe => ww_devoe,
	o => \e_out[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\e_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~18_combout\,
	devoe => ww_devoe,
	o => \e_out[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\e_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~18_combout\,
	devoe => ww_devoe,
	o => \e_out[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\e_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~18_combout\,
	devoe => ww_devoe,
	o => \e_out[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\e_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~18_combout\,
	devoe => ww_devoe,
	o => \e_out[14]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\e_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~18_combout\,
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

-- Location: FF_X24_Y24_N11
\d[1]\ : dffeas
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
	q => d(1));

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

-- Location: FF_X24_Y24_N9
\d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(0));

-- Location: LCCOMB_X24_Y24_N8
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Add2~14_combout\ & (d(0) $ (VCC))) # (!\Add2~14_combout\ & ((d(0)) # (GND)))
-- \Add3~1\ = CARRY((d(0)) # (!\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => d(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X24_Y24_N10
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add2~16_combout\ & ((d(1) & (!\Add3~1\)) # (!d(1) & ((\Add3~1\) # (GND))))) # (!\Add2~16_combout\ & ((d(1) & (\Add3~1\ & VCC)) # (!d(1) & (!\Add3~1\))))
-- \Add3~3\ = CARRY((\Add2~16_combout\ & ((!\Add3~1\) # (!d(1)))) # (!\Add2~16_combout\ & (!d(1) & !\Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => d(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X23_Y22_N9
\f[1][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][0]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y22_N8
\f[1][0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][0]~32_combout\ = (\Mult3|auto_generated|mac_out2~DATAOUT8\ & (\f[1][0]~_Duplicate_1_q\ $ (VCC))) # (!\Mult3|auto_generated|mac_out2~DATAOUT8\ & (\f[1][0]~_Duplicate_1_q\ & VCC))
-- \f[1][0]~33\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT8\ & \f[1][0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT8\,
	datab => \f[1][0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \f[1][0]~32_combout\,
	cout => \f[1][0]~33\);

-- Location: IOIBUF_X0_Y32_N15
\d_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(6),
	o => \d_in[6]~input_o\);

-- Location: FF_X24_Y24_N21
\d[6]\ : dffeas
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
	q => d(6));

-- Location: LCCOMB_X24_Y24_N12
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((d(2) $ (\Add2~18_combout\ $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((d(2) & ((!\Add3~3\) # (!\Add2~18_combout\))) # (!d(2) & (!\Add2~18_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(2),
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X24_Y24_N14
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (d(3) & ((\Add2~20_combout\ & (!\Add3~5\)) # (!\Add2~20_combout\ & (\Add3~5\ & VCC)))) # (!d(3) & ((\Add2~20_combout\ & ((\Add3~5\) # (GND))) # (!\Add2~20_combout\ & (!\Add3~5\))))
-- \Add3~7\ = CARRY((d(3) & (\Add2~20_combout\ & !\Add3~5\)) # (!d(3) & ((\Add2~20_combout\) # (!\Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(3),
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X24_Y24_N16
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((d(4) $ (\Add2~22_combout\ $ (\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((d(4) & ((!\Add3~7\) # (!\Add2~22_combout\))) # (!d(4) & (!\Add2~22_combout\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(4),
	datab => \Add2~22_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X24_Y24_N18
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (d(5) & ((\Add2~24_combout\ & (!\Add3~9\)) # (!\Add2~24_combout\ & (\Add3~9\ & VCC)))) # (!d(5) & ((\Add2~24_combout\ & ((\Add3~9\) # (GND))) # (!\Add2~24_combout\ & (!\Add3~9\))))
-- \Add3~11\ = CARRY((d(5) & (\Add2~24_combout\ & !\Add3~9\)) # (!d(5) & ((\Add2~24_combout\) # (!\Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(5),
	datab => \Add2~24_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X24_Y24_N20
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\Add2~26_combout\ $ (d(6) $ (\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\Add2~26_combout\ & (d(6) & !\Add3~11\)) # (!\Add2~26_combout\ & ((d(6)) # (!\Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => d(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X21_Y24_N21
\f[0][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][4]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y24_N12
\f[0][0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][0]~16_combout\ = (\f[0][0]~_Duplicate_1_q\ & (\Mult2|auto_generated|mac_out2~DATAOUT8\ $ (VCC))) # (!\f[0][0]~_Duplicate_1_q\ & (\Mult2|auto_generated|mac_out2~DATAOUT8\ & VCC))
-- \f[0][0]~17\ = CARRY((\f[0][0]~_Duplicate_1_q\ & \Mult2|auto_generated|mac_out2~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][0]~_Duplicate_1_q\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	combout => \f[0][0]~16_combout\,
	cout => \f[0][0]~17\);

-- Location: LCCOMB_X21_Y24_N14
\f[0][1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][1]~18_combout\ = (\f[0][1]~_Duplicate_1_q\ & ((\Mult2|auto_generated|mac_out2~DATAOUT9\ & (\f[0][0]~17\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & (!\f[0][0]~17\)))) # (!\f[0][1]~_Duplicate_1_q\ & 
-- ((\Mult2|auto_generated|mac_out2~DATAOUT9\ & (!\f[0][0]~17\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & ((\f[0][0]~17\) # (GND)))))
-- \f[0][1]~19\ = CARRY((\f[0][1]~_Duplicate_1_q\ & (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & !\f[0][0]~17\)) # (!\f[0][1]~_Duplicate_1_q\ & ((!\f[0][0]~17\) # (!\Mult2|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][1]~_Duplicate_1_q\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \f[0][0]~17\,
	combout => \f[0][1]~18_combout\,
	cout => \f[0][1]~19\);

-- Location: LCCOMB_X21_Y24_N16
\f[0][2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][2]~20_combout\ = ((\f[0][2]~_Duplicate_1_q\ $ (\Mult2|auto_generated|mac_out2~DATAOUT10\ $ (!\f[0][1]~19\)))) # (GND)
-- \f[0][2]~21\ = CARRY((\f[0][2]~_Duplicate_1_q\ & ((\Mult2|auto_generated|mac_out2~DATAOUT10\) # (!\f[0][1]~19\))) # (!\f[0][2]~_Duplicate_1_q\ & (\Mult2|auto_generated|mac_out2~DATAOUT10\ & !\f[0][1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][2]~_Duplicate_1_q\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \f[0][1]~19\,
	combout => \f[0][2]~20_combout\,
	cout => \f[0][2]~21\);

-- Location: LCCOMB_X21_Y24_N18
\f[0][3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][3]~22_combout\ = (\f[0][3]~_Duplicate_1_q\ & ((\Mult2|auto_generated|mac_out2~DATAOUT11\ & (\f[0][2]~21\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT11\ & (!\f[0][2]~21\)))) # (!\f[0][3]~_Duplicate_1_q\ & 
-- ((\Mult2|auto_generated|mac_out2~DATAOUT11\ & (!\f[0][2]~21\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT11\ & ((\f[0][2]~21\) # (GND)))))
-- \f[0][3]~23\ = CARRY((\f[0][3]~_Duplicate_1_q\ & (!\Mult2|auto_generated|mac_out2~DATAOUT11\ & !\f[0][2]~21\)) # (!\f[0][3]~_Duplicate_1_q\ & ((!\f[0][2]~21\) # (!\Mult2|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][3]~_Duplicate_1_q\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \f[0][2]~21\,
	combout => \f[0][3]~22_combout\,
	cout => \f[0][3]~23\);

-- Location: LCCOMB_X21_Y24_N20
\f[0][4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][4]~24_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT12\ $ (\f[0][4]~_Duplicate_1_q\ $ (!\f[0][3]~23\)))) # (GND)
-- \f[0][4]~25\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT12\ & ((\f[0][4]~_Duplicate_1_q\) # (!\f[0][3]~23\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT12\ & (\f[0][4]~_Duplicate_1_q\ & !\f[0][3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT12\,
	datab => \f[0][4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \f[0][3]~23\,
	combout => \f[0][4]~24_combout\,
	cout => \f[0][4]~25\);

-- Location: IOIBUF_X0_Y24_N22
\x_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\x_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\x_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\x_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\x_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\x_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\x_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\x_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: DSPMULT_X22_Y24_N1
\Mult2|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
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

-- Location: LCCOMB_X21_Y24_N22
\f[0][5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][5]~26_combout\ = (\f[0][5]~_Duplicate_1_q\ & ((\Mult2|auto_generated|mac_out2~DATAOUT13\ & (\f[0][4]~25\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT13\ & (!\f[0][4]~25\)))) # (!\f[0][5]~_Duplicate_1_q\ & 
-- ((\Mult2|auto_generated|mac_out2~DATAOUT13\ & (!\f[0][4]~25\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT13\ & ((\f[0][4]~25\) # (GND)))))
-- \f[0][5]~27\ = CARRY((\f[0][5]~_Duplicate_1_q\ & (!\Mult2|auto_generated|mac_out2~DATAOUT13\ & !\f[0][4]~25\)) # (!\f[0][5]~_Duplicate_1_q\ & ((!\f[0][4]~25\) # (!\Mult2|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][5]~_Duplicate_1_q\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \f[0][4]~25\,
	combout => \f[0][5]~26_combout\,
	cout => \f[0][5]~27\);

-- Location: FF_X21_Y24_N25
\f[0][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][6]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y24_N24
\f[0][6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][6]~28_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT14\ $ (\f[0][6]~_Duplicate_1_q\ $ (!\f[0][5]~27\)))) # (GND)
-- \f[0][6]~29\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\f[0][6]~_Duplicate_1_q\) # (!\f[0][5]~27\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT14\ & (\f[0][6]~_Duplicate_1_q\ & !\f[0][5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT14\,
	datab => \f[0][6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \f[0][5]~27\,
	combout => \f[0][6]~28_combout\,
	cout => \f[0][6]~29\);

-- Location: LCCOMB_X21_Y24_N26
\f[0][7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[0][7]~30_combout\ = \f[0][7]~_Duplicate_1_q\ $ (\f[0][6]~29\ $ (\Mult2|auto_generated|mac_out2~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[0][7]~_Duplicate_1_q\,
	datad => \Mult2|auto_generated|mac_out2~DATAOUT15\,
	cin => \f[0][6]~29\,
	combout => \f[0][7]~30_combout\);

-- Location: DSPMULT_X22_Y24_N0
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

-- Location: FF_X21_Y24_N29
\x[0][0]~_Duplicate_2\ : dffeas
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
	q => \x[0][0]~_Duplicate_2_q\);

-- Location: LCCOMB_X23_Y22_N28
\x[0][1]~_Duplicate_2feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0][1]~_Duplicate_2feeder_combout\ = \x_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[1]~input_o\,
	combout => \x[0][1]~_Duplicate_2feeder_combout\);

-- Location: FF_X23_Y22_N29
\x[0][1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[0][1]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][1]~_Duplicate_2_q\);

-- Location: LCCOMB_X23_Y22_N2
\x[0][2]~_Duplicate_2feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0][2]~_Duplicate_2feeder_combout\ = \x_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[2]~input_o\,
	combout => \x[0][2]~_Duplicate_2feeder_combout\);

-- Location: FF_X23_Y22_N3
\x[0][2]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[0][2]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][2]~_Duplicate_2_q\);

-- Location: FF_X23_Y22_N5
\x[0][3]~_Duplicate_2\ : dffeas
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
	q => \x[0][3]~_Duplicate_2_q\);

-- Location: LCCOMB_X23_Y22_N26
\x[0][4]~_Duplicate_2feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0][4]~_Duplicate_2feeder_combout\ = \x_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[4]~input_o\,
	combout => \x[0][4]~_Duplicate_2feeder_combout\);

-- Location: FF_X23_Y22_N27
\x[0][4]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[0][4]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][4]~_Duplicate_2_q\);

-- Location: FF_X23_Y22_N1
\x[0][5]~_Duplicate_2\ : dffeas
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
	q => \x[0][5]~_Duplicate_2_q\);

-- Location: FF_X23_Y22_N7
\x[0][6]~_Duplicate_2\ : dffeas
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
	q => \x[0][6]~_Duplicate_2_q\);

-- Location: LCCOMB_X23_Y22_N24
\x[0][7]~_Duplicate_2feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0][7]~_Duplicate_2feeder_combout\ = \x_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[7]~input_o\,
	combout => \x[0][7]~_Duplicate_2feeder_combout\);

-- Location: FF_X23_Y22_N25
\x[0][7]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[0][7]~_Duplicate_2feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x[0][7]~_Duplicate_2_q\);

-- Location: DSPMULT_X22_Y22_N1
\Mult3|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
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

-- Location: LCCOMB_X23_Y22_N10
\f[1][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][1]~34_combout\ = (\f[1][1]~_Duplicate_1_q\ & ((\Mult3|auto_generated|mac_out2~DATAOUT9\ & (\f[1][0]~33\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT9\ & (!\f[1][0]~33\)))) # (!\f[1][1]~_Duplicate_1_q\ & 
-- ((\Mult3|auto_generated|mac_out2~DATAOUT9\ & (!\f[1][0]~33\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT9\ & ((\f[1][0]~33\) # (GND)))))
-- \f[1][1]~35\ = CARRY((\f[1][1]~_Duplicate_1_q\ & (!\Mult3|auto_generated|mac_out2~DATAOUT9\ & !\f[1][0]~33\)) # (!\f[1][1]~_Duplicate_1_q\ & ((!\f[1][0]~33\) # (!\Mult3|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][1]~_Duplicate_1_q\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \f[1][0]~33\,
	combout => \f[1][1]~34_combout\,
	cout => \f[1][1]~35\);

-- Location: LCCOMB_X23_Y22_N12
\f[1][2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][2]~36_combout\ = ((\f[1][2]~_Duplicate_1_q\ $ (\Mult3|auto_generated|mac_out2~DATAOUT10\ $ (!\f[1][1]~35\)))) # (GND)
-- \f[1][2]~37\ = CARRY((\f[1][2]~_Duplicate_1_q\ & ((\Mult3|auto_generated|mac_out2~DATAOUT10\) # (!\f[1][1]~35\))) # (!\f[1][2]~_Duplicate_1_q\ & (\Mult3|auto_generated|mac_out2~DATAOUT10\ & !\f[1][1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][2]~_Duplicate_1_q\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \f[1][1]~35\,
	combout => \f[1][2]~36_combout\,
	cout => \f[1][2]~37\);

-- Location: LCCOMB_X23_Y22_N14
\f[1][3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][3]~38_combout\ = (\f[1][3]~_Duplicate_1_q\ & ((\Mult3|auto_generated|mac_out2~DATAOUT11\ & (\f[1][2]~37\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT11\ & (!\f[1][2]~37\)))) # (!\f[1][3]~_Duplicate_1_q\ & 
-- ((\Mult3|auto_generated|mac_out2~DATAOUT11\ & (!\f[1][2]~37\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT11\ & ((\f[1][2]~37\) # (GND)))))
-- \f[1][3]~39\ = CARRY((\f[1][3]~_Duplicate_1_q\ & (!\Mult3|auto_generated|mac_out2~DATAOUT11\ & !\f[1][2]~37\)) # (!\f[1][3]~_Duplicate_1_q\ & ((!\f[1][2]~37\) # (!\Mult3|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][3]~_Duplicate_1_q\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \f[1][2]~37\,
	combout => \f[1][3]~38_combout\,
	cout => \f[1][3]~39\);

-- Location: FF_X23_Y22_N17
\f[1][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][4]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y22_N16
\f[1][4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][4]~40_combout\ = ((\Mult3|auto_generated|mac_out2~DATAOUT12\ $ (\f[1][4]~_Duplicate_1_q\ $ (!\f[1][3]~39\)))) # (GND)
-- \f[1][4]~41\ = CARRY((\Mult3|auto_generated|mac_out2~DATAOUT12\ & ((\f[1][4]~_Duplicate_1_q\) # (!\f[1][3]~39\))) # (!\Mult3|auto_generated|mac_out2~DATAOUT12\ & (\f[1][4]~_Duplicate_1_q\ & !\f[1][3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|auto_generated|mac_out2~DATAOUT12\,
	datab => \f[1][4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \f[1][3]~39\,
	combout => \f[1][4]~40_combout\,
	cout => \f[1][4]~41\);

-- Location: LCCOMB_X23_Y22_N18
\f[1][5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][5]~42_combout\ = (\f[1][5]~_Duplicate_1_q\ & ((\Mult3|auto_generated|mac_out2~DATAOUT13\ & (\f[1][4]~41\ & VCC)) # (!\Mult3|auto_generated|mac_out2~DATAOUT13\ & (!\f[1][4]~41\)))) # (!\f[1][5]~_Duplicate_1_q\ & 
-- ((\Mult3|auto_generated|mac_out2~DATAOUT13\ & (!\f[1][4]~41\)) # (!\Mult3|auto_generated|mac_out2~DATAOUT13\ & ((\f[1][4]~41\) # (GND)))))
-- \f[1][5]~43\ = CARRY((\f[1][5]~_Duplicate_1_q\ & (!\Mult3|auto_generated|mac_out2~DATAOUT13\ & !\f[1][4]~41\)) # (!\f[1][5]~_Duplicate_1_q\ & ((!\f[1][4]~41\) # (!\Mult3|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][5]~_Duplicate_1_q\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \f[1][4]~41\,
	combout => \f[1][5]~42_combout\,
	cout => \f[1][5]~43\);

-- Location: LCCOMB_X23_Y22_N20
\f[1][6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][6]~44_combout\ = ((\f[1][6]~_Duplicate_1_q\ $ (\Mult3|auto_generated|mac_out2~DATAOUT14\ $ (!\f[1][5]~43\)))) # (GND)
-- \f[1][6]~45\ = CARRY((\f[1][6]~_Duplicate_1_q\ & ((\Mult3|auto_generated|mac_out2~DATAOUT14\) # (!\f[1][5]~43\))) # (!\f[1][6]~_Duplicate_1_q\ & (\Mult3|auto_generated|mac_out2~DATAOUT14\ & !\f[1][5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][6]~_Duplicate_1_q\,
	datab => \Mult3|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \f[1][5]~43\,
	combout => \f[1][6]~44_combout\,
	cout => \f[1][6]~45\);

-- Location: LCCOMB_X23_Y22_N22
\f[1][7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f[1][7]~46_combout\ = \f[1][7]~_Duplicate_1_q\ $ (\f[1][6]~45\ $ (\Mult3|auto_generated|mac_out2~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f[1][7]~_Duplicate_1_q\,
	datad => \Mult3|auto_generated|mac_out2~DATAOUT15\,
	cin => \f[1][6]~45\,
	combout => \f[1][7]~46_combout\);

-- Location: DSPMULT_X22_Y22_N0
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

-- Location: LCCOMB_X23_Y24_N0
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY((\Mult0|auto_generated|mac_out2~dataout\ & \Mult1|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \Mult1|auto_generated|mac_out2~dataout\,
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X23_Y24_N2
\Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~3_cout\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\Mult1|auto_generated|mac_out2~DATAOUT1\ & !\Add2~1_cout\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & ((!\Add2~1_cout\) # (!\Mult1|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \Add2~1_cout\,
	cout => \Add2~3_cout\);

-- Location: LCCOMB_X23_Y24_N4
\Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~5_cout\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT2\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\Add2~3_cout\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT2\ & (\Mult0|auto_generated|mac_out2~DATAOUT2\ & !\Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \Add2~3_cout\,
	cout => \Add2~5_cout\);

-- Location: LCCOMB_X23_Y24_N6
\Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~7_cout\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\Mult1|auto_generated|mac_out2~DATAOUT3\ & !\Add2~5_cout\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & ((!\Add2~5_cout\) # (!\Mult1|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \Add2~5_cout\,
	cout => \Add2~7_cout\);

-- Location: LCCOMB_X23_Y24_N8
\Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~9_cout\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT4\ & ((\Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\Add2~7_cout\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT4\ & (\Mult0|auto_generated|mac_out2~DATAOUT4\ & !\Add2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \Add2~7_cout\,
	cout => \Add2~9_cout\);

-- Location: LCCOMB_X23_Y24_N10
\Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~11_cout\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\Mult1|auto_generated|mac_out2~DATAOUT5\ & !\Add2~9_cout\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & ((!\Add2~9_cout\) # (!\Mult1|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \Add2~9_cout\,
	cout => \Add2~11_cout\);

-- Location: LCCOMB_X23_Y24_N12
\Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~13_cout\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\Mult1|auto_generated|mac_out2~DATAOUT6\) # (!\Add2~11_cout\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT6\ & (\Mult1|auto_generated|mac_out2~DATAOUT6\ & !\Add2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \Add2~11_cout\,
	cout => \Add2~13_cout\);

-- Location: LCCOMB_X23_Y24_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\ & (\Add2~13_cout\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\Add2~13_cout\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT7\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\Add2~13_cout\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\Add2~13_cout\) # (GND)))))
-- \Add2~15\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & !\Add2~13_cout\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT7\ & ((!\Add2~13_cout\) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \Add2~13_cout\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X23_Y24_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT8\ $ (\Mult0|auto_generated|mac_out2~DATAOUT8\ $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\Add2~15\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT8\ & (\Mult0|auto_generated|mac_out2~DATAOUT8\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X23_Y24_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT9\ & ((\Mult0|auto_generated|mac_out2~DATAOUT9\ & (\Add2~17\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\Add2~17\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT9\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\Add2~17\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\Add2~17\) # (GND)))))
-- \Add2~19\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\Mult0|auto_generated|mac_out2~DATAOUT9\ & !\Add2~17\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT9\ & ((!\Add2~17\) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT9\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X23_Y24_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT10\ $ (\Mult1|auto_generated|mac_out2~DATAOUT10\ $ (!\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\Mult1|auto_generated|mac_out2~DATAOUT10\) # (!\Add2~19\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT10\ & (\Mult1|auto_generated|mac_out2~DATAOUT10\ & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X23_Y24_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\Mult0|auto_generated|mac_out2~DATAOUT11\ & (\Add2~21\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\Add2~21\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT11\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\Add2~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\Add2~21\) # (GND)))))
-- \Add2~23\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & !\Add2~21\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT11\ & ((!\Add2~21\) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT11\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X23_Y24_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT12\ $ (\Mult1|auto_generated|mac_out2~DATAOUT12\ $ (!\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\Mult1|auto_generated|mac_out2~DATAOUT12\) # (!\Add2~23\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT12\ & (\Mult1|auto_generated|mac_out2~DATAOUT12\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X23_Y24_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\Mult0|auto_generated|mac_out2~DATAOUT13\ & (\Add2~25\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\Add2~25\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT13\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\Add2~25\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\Add2~25\) # (GND)))))
-- \Add2~27\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & !\Add2~25\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT13\ & ((!\Add2~25\) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT13\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X23_Y24_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT14\ $ (\Mult0|auto_generated|mac_out2~DATAOUT14\ $ (!\Add2~27\)))) # (GND)
-- \Add2~29\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\Mult0|auto_generated|mac_out2~DATAOUT14\) # (!\Add2~27\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT14\ & (\Mult0|auto_generated|mac_out2~DATAOUT14\ & !\Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X23_Y24_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = \Mult0|auto_generated|mac_out2~DATAOUT15\ $ (\Add2~29\ $ (\Mult1|auto_generated|mac_out2~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT15\,
	cin => \Add2~29\,
	combout => \Add2~30_combout\);

-- Location: LCCOMB_X24_Y24_N22
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (d(7) & ((\Add2~28_combout\ & (!\Add3~13\)) # (!\Add2~28_combout\ & (\Add3~13\ & VCC)))) # (!d(7) & ((\Add2~28_combout\ & ((\Add3~13\) # (GND))) # (!\Add2~28_combout\ & (!\Add3~13\))))
-- \Add3~15\ = CARRY((d(7) & (\Add2~28_combout\ & !\Add3~13\)) # (!d(7) & ((\Add2~28_combout\) # (!\Add3~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(7),
	datab => \Add2~28_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X24_Y24_N24
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((d(7) $ (\Add2~30_combout\ $ (\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((d(7) & ((!\Add3~15\) # (!\Add2~30_combout\))) # (!d(7) & (!\Add2~30_combout\ & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d(7),
	datab => \Add2~30_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: FF_X21_Y24_N13
\f[0][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][0]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][0]~_Duplicate_1_q\);

-- Location: FF_X21_Y24_N15
\f[0][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][1]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][1]~_Duplicate_1_q\);

-- Location: FF_X21_Y24_N17
\f[0][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][2]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][2]~_Duplicate_1_q\);

-- Location: FF_X21_Y24_N19
\f[0][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][3]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][3]~_Duplicate_1_q\);

-- Location: FF_X21_Y24_N23
\f[0][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][5]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][5]~_Duplicate_1_q\);

-- Location: FF_X21_Y24_N27
\f[0][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[0][7]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[0][7]~_Duplicate_1_q\);

-- Location: FF_X23_Y22_N11
\f[1][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][1]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][1]~_Duplicate_1_q\);

-- Location: FF_X23_Y22_N13
\f[1][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][2]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][2]~_Duplicate_1_q\);

-- Location: FF_X23_Y22_N15
\f[1][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][3]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][3]~_Duplicate_1_q\);

-- Location: FF_X23_Y22_N19
\f[1][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][5]~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][5]~_Duplicate_1_q\);

-- Location: FF_X23_Y22_N21
\f[1][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f[1][6]~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f[1][6]~_Duplicate_1_q\);

-- Location: FF_X23_Y22_N23
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

-- Location: IOIBUF_X0_Y28_N22
\d_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(7),
	o => \d_in[7]~input_o\);

-- Location: LCCOMB_X24_Y24_N0
\d[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[7]~feeder_combout\ = \d_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[7]~input_o\,
	combout => \d[7]~feeder_combout\);

-- Location: FF_X24_Y24_N1
\d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(7));

-- Location: LCCOMB_X24_Y24_N26
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = \Add2~30_combout\ $ (\Add3~17\ $ (!d(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~30_combout\,
	datad => d(7),
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

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


