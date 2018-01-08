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

-- DATE "03/31/2016 14:51:19"

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

ENTITY 	fir_gen IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	Load_x : IN std_logic;
	x_in : IN std_logic_vector(8 DOWNTO 0);
	c_in : IN std_logic_vector(8 DOWNTO 0);
	y_out : OUT std_logic_vector(10 DOWNTO 0)
	);
END fir_gen;

-- Design Ports Information
-- y_out[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[1]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[3]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[5]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[7]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[8]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_out[10]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load_x	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[6]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[7]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[8]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[0]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[6]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[7]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in[8]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_gen IS
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
SIGNAL ww_x_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_c_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_y_out : std_logic_vector(10 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \a[1][8]~q\ : std_logic;
SIGNAL \a[1][5]~q\ : std_logic;
SIGNAL \a[1][2]~q\ : std_logic;
SIGNAL \a[1][12]~q\ : std_logic;
SIGNAL \a[1][13]~q\ : std_logic;
SIGNAL \a[1][15]~q\ : std_logic;
SIGNAL \a[1][16]~q\ : std_logic;
SIGNAL \a[1][18]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \a[2][7]~q\ : std_logic;
SIGNAL \a[2][6]~q\ : std_logic;
SIGNAL \a[2][2]~q\ : std_logic;
SIGNAL \a[2][0]~q\ : std_logic;
SIGNAL \a[1][2]~91_combout\ : std_logic;
SIGNAL \a[1][5]~97_combout\ : std_logic;
SIGNAL \a[1][8]~103_combout\ : std_logic;
SIGNAL \a[2][9]~q\ : std_logic;
SIGNAL \a[2][10]~q\ : std_logic;
SIGNAL \a[1][12]~111_combout\ : std_logic;
SIGNAL \a[2][13]~q\ : std_logic;
SIGNAL \a[1][13]~113_combout\ : std_logic;
SIGNAL \a[2][14]~q\ : std_logic;
SIGNAL \a[2][15]~q\ : std_logic;
SIGNAL \a[1][15]~117_combout\ : std_logic;
SIGNAL \a[1][16]~119_combout\ : std_logic;
SIGNAL \a[1][17]~122\ : std_logic;
SIGNAL \a[2][18]~q\ : std_logic;
SIGNAL \a[1][18]~123_combout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \a[2][0]~125_combout\ : std_logic;
SIGNAL \a[2][2]~129_combout\ : std_logic;
SIGNAL \a[2][6]~137_combout\ : std_logic;
SIGNAL \a[2][7]~139_combout\ : std_logic;
SIGNAL \a[2][9]~143_combout\ : std_logic;
SIGNAL \a[2][10]~145_combout\ : std_logic;
SIGNAL \a[2][13]~151_combout\ : std_logic;
SIGNAL \a[2][14]~153_combout\ : std_logic;
SIGNAL \a[2][15]~155_combout\ : std_logic;
SIGNAL \a[2][17]~160\ : std_logic;
SIGNAL \a[2][18]~161_combout\ : std_logic;
SIGNAL \a[3][0]\ : std_logic;
SIGNAL \a[3][1]\ : std_logic;
SIGNAL \a[3][2]\ : std_logic;
SIGNAL \a[3][3]\ : std_logic;
SIGNAL \a[3][4]\ : std_logic;
SIGNAL \a[3][5]\ : std_logic;
SIGNAL \a[3][6]\ : std_logic;
SIGNAL \a[3][7]\ : std_logic;
SIGNAL \a[3][9]\ : std_logic;
SIGNAL \a[3][10]\ : std_logic;
SIGNAL \a[3][12]\ : std_logic;
SIGNAL \a[3][15]\ : std_logic;
SIGNAL \a[3][16]\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Load_x~input_o\ : std_logic;
SIGNAL \c_in[0]~input_o\ : std_logic;
SIGNAL \c[3][0]~feeder_combout\ : std_logic;
SIGNAL \c[3][0]~q\ : std_logic;
SIGNAL \c[2][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[1]~input_o\ : std_logic;
SIGNAL \c[3][1]~q\ : std_logic;
SIGNAL \c[2][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[2]~input_o\ : std_logic;
SIGNAL \c[3][2]~feeder_combout\ : std_logic;
SIGNAL \c[3][2]~q\ : std_logic;
SIGNAL \c[2][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[3]~input_o\ : std_logic;
SIGNAL \c[3][3]~feeder_combout\ : std_logic;
SIGNAL \c[3][3]~q\ : std_logic;
SIGNAL \c[2][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[4]~input_o\ : std_logic;
SIGNAL \c[3][4]~q\ : std_logic;
SIGNAL \c[2][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[5]~input_o\ : std_logic;
SIGNAL \c[3][5]~feeder_combout\ : std_logic;
SIGNAL \c[3][5]~q\ : std_logic;
SIGNAL \c[2][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[6]~input_o\ : std_logic;
SIGNAL \c[3][6]~q\ : std_logic;
SIGNAL \c[2][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[7]~input_o\ : std_logic;
SIGNAL \c[3][7]~feeder_combout\ : std_logic;
SIGNAL \c[3][7]~q\ : std_logic;
SIGNAL \c[2][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \c_in[8]~input_o\ : std_logic;
SIGNAL \c[3][8]~feeder_combout\ : std_logic;
SIGNAL \c[3][8]~q\ : std_logic;
SIGNAL \c[2][8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \c[2][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \c[1][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \x[0]~feeder_combout\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \x[1]~feeder_combout\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \x[2]~feeder_combout\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \x[3]~feeder_combout\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x[4]~feeder_combout\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \x[5]~feeder_combout\ : std_logic;
SIGNAL \x_in[6]~input_o\ : std_logic;
SIGNAL \x[6]~feeder_combout\ : std_logic;
SIGNAL \x_in[7]~input_o\ : std_logic;
SIGNAL \x_in[8]~input_o\ : std_logic;
SIGNAL \x[8]~feeder_combout\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
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
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
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
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \a[2][0]~126\ : std_logic;
SIGNAL \a[2][1]~128\ : std_logic;
SIGNAL \a[2][2]~130\ : std_logic;
SIGNAL \a[2][3]~132\ : std_logic;
SIGNAL \a[2][4]~134\ : std_logic;
SIGNAL \a[2][5]~135_combout\ : std_logic;
SIGNAL \a[2][5]~q\ : std_logic;
SIGNAL \a[2][4]~133_combout\ : std_logic;
SIGNAL \a[2][4]~q\ : std_logic;
SIGNAL \a[2][3]~131_combout\ : std_logic;
SIGNAL \a[2][3]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \a[2][1]~127_combout\ : std_logic;
SIGNAL \a[2][1]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \a[1][0]~88\ : std_logic;
SIGNAL \a[1][1]~90\ : std_logic;
SIGNAL \a[1][2]~92\ : std_logic;
SIGNAL \a[1][3]~94\ : std_logic;
SIGNAL \a[1][4]~96\ : std_logic;
SIGNAL \a[1][5]~98\ : std_logic;
SIGNAL \a[1][6]~100\ : std_logic;
SIGNAL \a[1][7]~101_combout\ : std_logic;
SIGNAL \a[1][7]~q\ : std_logic;
SIGNAL \a[1][6]~99_combout\ : std_logic;
SIGNAL \a[1][6]~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \a[1][4]~95_combout\ : std_logic;
SIGNAL \a[1][4]~q\ : std_logic;
SIGNAL \a[1][3]~93_combout\ : std_logic;
SIGNAL \a[1][3]~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \a[1][1]~89_combout\ : std_logic;
SIGNAL \a[1][1]~q\ : std_logic;
SIGNAL \a[1][0]~87_combout\ : std_logic;
SIGNAL \a[1][0]~q\ : std_logic;
SIGNAL \a[0][8]~50_cout\ : std_logic;
SIGNAL \a[0][8]~52_cout\ : std_logic;
SIGNAL \a[0][8]~54_cout\ : std_logic;
SIGNAL \a[0][8]~56_cout\ : std_logic;
SIGNAL \a[0][8]~58_cout\ : std_logic;
SIGNAL \a[0][8]~60_cout\ : std_logic;
SIGNAL \a[0][8]~62_cout\ : std_logic;
SIGNAL \a[0][8]~64_cout\ : std_logic;
SIGNAL \a[0][8]~65_combout\ : std_logic;
SIGNAL \a[0][8]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
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
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \a[3][8]\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \a[2][5]~136\ : std_logic;
SIGNAL \a[2][6]~138\ : std_logic;
SIGNAL \a[2][7]~140\ : std_logic;
SIGNAL \a[2][8]~141_combout\ : std_logic;
SIGNAL \a[2][8]~q\ : std_logic;
SIGNAL \a[1][7]~102\ : std_logic;
SIGNAL \a[1][8]~104\ : std_logic;
SIGNAL \a[1][9]~105_combout\ : std_logic;
SIGNAL \a[1][9]~q\ : std_logic;
SIGNAL \a[0][8]~66\ : std_logic;
SIGNAL \a[0][9]~67_combout\ : std_logic;
SIGNAL \a[0][9]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \a[1][9]~106\ : std_logic;
SIGNAL \a[1][10]~107_combout\ : std_logic;
SIGNAL \a[1][10]~q\ : std_logic;
SIGNAL \a[0][9]~68\ : std_logic;
SIGNAL \a[0][10]~69_combout\ : std_logic;
SIGNAL \a[0][10]~q\ : std_logic;
SIGNAL \a[3][11]\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \a[2][8]~142\ : std_logic;
SIGNAL \a[2][9]~144\ : std_logic;
SIGNAL \a[2][10]~146\ : std_logic;
SIGNAL \a[2][11]~147_combout\ : std_logic;
SIGNAL \a[2][11]~q\ : std_logic;
SIGNAL \a[1][10]~108\ : std_logic;
SIGNAL \a[1][11]~109_combout\ : std_logic;
SIGNAL \a[1][11]~q\ : std_logic;
SIGNAL \a[0][10]~70\ : std_logic;
SIGNAL \a[0][11]~71_combout\ : std_logic;
SIGNAL \a[0][11]~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \a[0][11]~72\ : std_logic;
SIGNAL \a[0][12]~73_combout\ : std_logic;
SIGNAL \a[0][12]~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \a[0][12]~74\ : std_logic;
SIGNAL \a[0][13]~75_combout\ : std_logic;
SIGNAL \a[0][13]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \a[2][11]~148\ : std_logic;
SIGNAL \a[2][12]~149_combout\ : std_logic;
SIGNAL \a[2][12]~q\ : std_logic;
SIGNAL \a[1][11]~110\ : std_logic;
SIGNAL \a[1][12]~112\ : std_logic;
SIGNAL \a[1][13]~114\ : std_logic;
SIGNAL \a[1][14]~115_combout\ : std_logic;
SIGNAL \a[1][14]~q\ : std_logic;
SIGNAL \a[0][13]~76\ : std_logic;
SIGNAL \a[0][14]~77_combout\ : std_logic;
SIGNAL \a[0][14]~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \a[0][14]~78\ : std_logic;
SIGNAL \a[0][15]~79_combout\ : std_logic;
SIGNAL \a[0][15]~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \a[0][15]~80\ : std_logic;
SIGNAL \a[0][16]~81_combout\ : std_logic;
SIGNAL \a[0][16]~q\ : std_logic;
SIGNAL \a[3][18]\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \a[3][14]\ : std_logic;
SIGNAL \a[3][13]\ : std_logic;
SIGNAL \a[2][12]~150\ : std_logic;
SIGNAL \a[2][13]~152\ : std_logic;
SIGNAL \a[2][14]~154\ : std_logic;
SIGNAL \a[2][15]~156\ : std_logic;
SIGNAL \a[2][16]~158\ : std_logic;
SIGNAL \a[2][17]~159_combout\ : std_logic;
SIGNAL \a[2][17]~q\ : std_logic;
SIGNAL \a[2][16]~157_combout\ : std_logic;
SIGNAL \a[2][16]~q\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \a[1][14]~116\ : std_logic;
SIGNAL \a[1][15]~118\ : std_logic;
SIGNAL \a[1][16]~120\ : std_logic;
SIGNAL \a[1][17]~121_combout\ : std_logic;
SIGNAL \a[1][17]~q\ : std_logic;
SIGNAL \a[0][16]~82\ : std_logic;
SIGNAL \a[0][17]~83_combout\ : std_logic;
SIGNAL \a[0][17]~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \a[0][17]~84\ : std_logic;
SIGNAL \a[0][18]~85_combout\ : std_logic;
SIGNAL \a[0][18]~q\ : std_logic;
SIGNAL x : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Load_x~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_Load_x <= Load_x;
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

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\c[1][8]~_Duplicate_1_q\ & \c[1][7]~_Duplicate_1_q\ & \c[1][6]~_Duplicate_1_q\ & \c[1][5]~_Duplicate_1_q\ & \c[1][4]~_Duplicate_1_q\ & \c[1][3]~_Duplicate_1_q\ & \c[1][2]~_Duplicate_1_q\ & 
\c[1][1]~_Duplicate_1_q\ & \c[1][0]~_Duplicate_1_q\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (x(8) & x(7) & x(6) & x(5) & x(4) & x(3) & x(2) & x(1) & x(0));

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

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT17\ & \Mult1|auto_generated|mac_mult1~DATAOUT16\ & \Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & \Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & \Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & \Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\);

\Mult1|auto_generated|mac_out2~dataout\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out2~DATAOUT15\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out2~DATAOUT16\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out2~DATAOUT17\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\c[2][8]~_Duplicate_1_q\ & \c[2][7]~_Duplicate_1_q\ & \c[2][6]~_Duplicate_1_q\ & \c[2][5]~_Duplicate_1_q\ & \c[2][4]~_Duplicate_1_q\ & \c[2][3]~_Duplicate_1_q\ & \c[2][2]~_Duplicate_1_q\ & 
\c[2][1]~_Duplicate_1_q\ & \c[2][0]~_Duplicate_1_q\);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (x(8) & x(7) & x(6) & x(5) & x(4) & x(3) & x(2) & x(1) & x(0));

\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult1~DATAOUT17\ & \Mult2|auto_generated|mac_mult1~DATAOUT16\ & \Mult2|auto_generated|mac_mult1~DATAOUT15\ & \Mult2|auto_generated|mac_mult1~DATAOUT14\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT13\ & \Mult2|auto_generated|mac_mult1~DATAOUT12\ & \Mult2|auto_generated|mac_mult1~DATAOUT11\ & \Mult2|auto_generated|mac_mult1~DATAOUT10\ & \Mult2|auto_generated|mac_mult1~DATAOUT9\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT8\ & \Mult2|auto_generated|mac_mult1~DATAOUT7\ & \Mult2|auto_generated|mac_mult1~DATAOUT6\ & \Mult2|auto_generated|mac_mult1~DATAOUT5\ & \Mult2|auto_generated|mac_mult1~DATAOUT4\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT3\ & \Mult2|auto_generated|mac_mult1~DATAOUT2\ & \Mult2|auto_generated|mac_mult1~DATAOUT1\ & \Mult2|auto_generated|mac_mult1~dataout\);

\Mult2|auto_generated|mac_out2~dataout\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out2~DATAOUT1\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_out2~DATAOUT2\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_out2~DATAOUT3\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_out2~DATAOUT4\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_out2~DATAOUT5\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_out2~DATAOUT6\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_out2~DATAOUT7\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_out2~DATAOUT8\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_out2~DATAOUT9\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_out2~DATAOUT10\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_out2~DATAOUT11\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_out2~DATAOUT12\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_out2~DATAOUT13\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_out2~DATAOUT14\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_out2~DATAOUT15\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_out2~DATAOUT16\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_out2~DATAOUT17\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\c[3][8]~q\ & \c[3][7]~q\ & \c[3][6]~q\ & \c[3][5]~q\ & \c[3][4]~q\ & \c[3][3]~q\ & \c[3][2]~q\ & \c[3][1]~q\ & \c[3][0]~q\);

\Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (x(8) & x(7) & x(6) & x(5) & x(4) & x(3) & x(2) & x(1) & x(0));

\Mult2|auto_generated|mac_mult1~dataout\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult1~DATAOUT16\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult1~DATAOUT17\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\Mult3|auto_generated|mac_mult1~DATAOUT17\ & \Mult3|auto_generated|mac_mult1~DATAOUT16\ & \Mult3|auto_generated|mac_mult1~DATAOUT15\ & \Mult3|auto_generated|mac_mult1~DATAOUT14\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT13\ & \Mult3|auto_generated|mac_mult1~DATAOUT12\ & \Mult3|auto_generated|mac_mult1~DATAOUT11\ & \Mult3|auto_generated|mac_mult1~DATAOUT10\ & \Mult3|auto_generated|mac_mult1~DATAOUT9\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT8\ & \Mult3|auto_generated|mac_mult1~DATAOUT7\ & \Mult3|auto_generated|mac_mult1~DATAOUT6\ & \Mult3|auto_generated|mac_mult1~DATAOUT5\ & \Mult3|auto_generated|mac_mult1~DATAOUT4\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT3\ & \Mult3|auto_generated|mac_mult1~DATAOUT2\ & \Mult3|auto_generated|mac_mult1~DATAOUT1\ & \Mult3|auto_generated|mac_mult1~dataout\);

\a[3][0]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\a[3][1]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\a[3][2]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\a[3][3]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\a[3][4]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\a[3][5]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\a[3][6]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\a[3][7]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\a[3][8]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\a[3][9]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\a[3][10]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\a[3][11]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\a[3][12]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\a[3][13]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\a[3][14]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\a[3][15]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\a[3][16]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\a[3][18]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\c[3][8]~q\ & \c[3][7]~q\ & \c[3][6]~q\ & \c[3][5]~q\ & \c[3][4]~q\ & \c[3][3]~q\ & \c[3][2]~q\ & \c[3][1]~q\ & \c[3][0]~q\);

\Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (x(8) & x(7) & x(6) & x(5) & x(4) & x(3) & x(2) & x(1) & x(0));

\Mult3|auto_generated|mac_mult1~dataout\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_mult1~DATAOUT16\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_mult1~DATAOUT17\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_Load_x~input_o\ <= NOT \Load_x~input_o\;

-- Location: DSPOUT_X22_Y1_N3
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

-- Location: FF_X23_Y3_N31
\a[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][8]~103_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][8]~q\);

-- Location: FF_X23_Y3_N25
\a[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][5]~97_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][5]~q\);

-- Location: FF_X23_Y3_N19
\a[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][2]~91_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][2]~q\);

-- Location: FF_X23_Y2_N7
\a[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][12]~111_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][12]~q\);

-- Location: FF_X23_Y2_N9
\a[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][13]~113_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][13]~q\);

-- Location: FF_X23_Y2_N13
\a[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][15]~117_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][15]~q\);

-- Location: FF_X23_Y2_N15
\a[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][16]~119_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][16]~q\);

-- Location: FF_X23_Y2_N19
\a[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][18]~123_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][18]~q\);

-- Location: DSPOUT_X22_Y3_N2
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

-- Location: FF_X21_Y2_N29
\a[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][7]~139_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][7]~q\);

-- Location: FF_X21_Y2_N27
\a[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][6]~137_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][6]~q\);

-- Location: FF_X21_Y2_N19
\a[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][2]~129_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][2]~q\);

-- Location: FF_X21_Y2_N15
\a[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][0]~125_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][0]~q\);

-- Location: LCCOMB_X23_Y3_N18
\a[1][2]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][2]~91_combout\ = ((\a[2][2]~q\ $ (\Mult1|auto_generated|mac_out2~DATAOUT2\ $ (!\a[1][1]~90\)))) # (GND)
-- \a[1][2]~92\ = CARRY((\a[2][2]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT2\) # (!\a[1][1]~90\))) # (!\a[2][2]~q\ & (\Mult1|auto_generated|mac_out2~DATAOUT2\ & !\a[1][1]~90\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2][2]~q\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \a[1][1]~90\,
	combout => \a[1][2]~91_combout\,
	cout => \a[1][2]~92\);

-- Location: LCCOMB_X23_Y3_N24
\a[1][5]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][5]~97_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\a[2][5]~q\ & (\a[1][4]~96\ & VCC)) # (!\a[2][5]~q\ & (!\a[1][4]~96\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\a[2][5]~q\ & (!\a[1][4]~96\)) # (!\a[2][5]~q\ & ((\a[1][4]~96\) 
-- # (GND)))))
-- \a[1][5]~98\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\a[2][5]~q\ & !\a[1][4]~96\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT5\ & ((!\a[1][4]~96\) # (!\a[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT5\,
	datab => \a[2][5]~q\,
	datad => VCC,
	cin => \a[1][4]~96\,
	combout => \a[1][5]~97_combout\,
	cout => \a[1][5]~98\);

-- Location: LCCOMB_X23_Y3_N30
\a[1][8]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][8]~103_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT8\ $ (\a[2][8]~q\ $ (!\a[1][7]~102\)))) # (GND)
-- \a[1][8]~104\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\a[2][8]~q\) # (!\a[1][7]~102\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT8\ & (\a[2][8]~q\ & !\a[1][7]~102\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \a[2][8]~q\,
	datad => VCC,
	cin => \a[1][7]~102\,
	combout => \a[1][8]~103_combout\,
	cout => \a[1][8]~104\);

-- Location: FF_X21_Y1_N1
\a[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][9]~143_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][9]~q\);

-- Location: FF_X21_Y1_N3
\a[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][10]~145_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][10]~q\);

-- Location: LCCOMB_X23_Y2_N6
\a[1][12]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][12]~111_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT12\ $ (\a[2][12]~q\ $ (!\a[1][11]~110\)))) # (GND)
-- \a[1][12]~112\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\a[2][12]~q\) # (!\a[1][11]~110\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT12\ & (\a[2][12]~q\ & !\a[1][11]~110\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT12\,
	datab => \a[2][12]~q\,
	datad => VCC,
	cin => \a[1][11]~110\,
	combout => \a[1][12]~111_combout\,
	cout => \a[1][12]~112\);

-- Location: FF_X21_Y1_N9
\a[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][13]~151_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][13]~q\);

-- Location: LCCOMB_X23_Y2_N8
\a[1][13]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][13]~113_combout\ = (\a[2][13]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT13\ & (\a[1][12]~112\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\a[1][12]~112\)))) # (!\a[2][13]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT13\ & 
-- (!\a[1][12]~112\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\a[1][12]~112\) # (GND)))))
-- \a[1][13]~114\ = CARRY((\a[2][13]~q\ & (!\Mult1|auto_generated|mac_out2~DATAOUT13\ & !\a[1][12]~112\)) # (!\a[2][13]~q\ & ((!\a[1][12]~112\) # (!\Mult1|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2][13]~q\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \a[1][12]~112\,
	combout => \a[1][13]~113_combout\,
	cout => \a[1][13]~114\);

-- Location: FF_X21_Y1_N11
\a[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][14]~153_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][14]~q\);

-- Location: FF_X21_Y1_N13
\a[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][15]~155_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][15]~q\);

-- Location: LCCOMB_X23_Y2_N12
\a[1][15]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][15]~117_combout\ = (\a[2][15]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT15\ & (\a[1][14]~116\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\a[1][14]~116\)))) # (!\a[2][15]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\a[1][14]~116\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\a[1][14]~116\) # (GND)))))
-- \a[1][15]~118\ = CARRY((\a[2][15]~q\ & (!\Mult1|auto_generated|mac_out2~DATAOUT15\ & !\a[1][14]~116\)) # (!\a[2][15]~q\ & ((!\a[1][14]~116\) # (!\Mult1|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2][15]~q\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \a[1][14]~116\,
	combout => \a[1][15]~117_combout\,
	cout => \a[1][15]~118\);

-- Location: LCCOMB_X23_Y2_N14
\a[1][16]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][16]~119_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT16\ $ (\a[2][16]~q\ $ (!\a[1][15]~118\)))) # (GND)
-- \a[1][16]~120\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\a[2][16]~q\) # (!\a[1][15]~118\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT16\ & (\a[2][16]~q\ & !\a[1][15]~118\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \a[2][16]~q\,
	datad => VCC,
	cin => \a[1][15]~118\,
	combout => \a[1][16]~119_combout\,
	cout => \a[1][16]~120\);

-- Location: LCCOMB_X23_Y2_N16
\a[1][17]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][17]~121_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\a[2][17]~q\ & (\a[1][16]~120\ & VCC)) # (!\a[2][17]~q\ & (!\a[1][16]~120\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\a[2][17]~q\ & (!\a[1][16]~120\)) # (!\a[2][17]~q\ & 
-- ((\a[1][16]~120\) # (GND)))))
-- \a[1][17]~122\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\a[2][17]~q\ & !\a[1][16]~120\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT17\ & ((!\a[1][16]~120\) # (!\a[2][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT17\,
	datab => \a[2][17]~q\,
	datad => VCC,
	cin => \a[1][16]~120\,
	combout => \a[1][17]~121_combout\,
	cout => \a[1][17]~122\);

-- Location: FF_X21_Y1_N19
\a[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][18]~161_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][18]~q\);

-- Location: LCCOMB_X23_Y2_N18
\a[1][18]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][18]~123_combout\ = \Mult1|auto_generated|mac_out2~DATAOUT17\ $ (\a[1][17]~122\ $ (!\a[2][18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT17\,
	datad => \a[2][18]~q\,
	cin => \a[1][17]~122\,
	combout => \a[1][18]~123_combout\);

-- Location: DSPOUT_X22_Y1_N2
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

-- Location: LCCOMB_X21_Y2_N14
\a[2][0]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][0]~125_combout\ = (\a[3][0]\ & (\Mult2|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\a[3][0]\ & (\Mult2|auto_generated|mac_out2~dataout\ & VCC))
-- \a[2][0]~126\ = CARRY((\a[3][0]\ & \Mult2|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][0]\,
	datab => \Mult2|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \a[2][0]~125_combout\,
	cout => \a[2][0]~126\);

-- Location: LCCOMB_X21_Y2_N18
\a[2][2]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][2]~129_combout\ = ((\a[3][2]\ $ (\Mult2|auto_generated|mac_out2~DATAOUT2\ $ (!\a[2][1]~128\)))) # (GND)
-- \a[2][2]~130\ = CARRY((\a[3][2]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT2\) # (!\a[2][1]~128\))) # (!\a[3][2]\ & (\Mult2|auto_generated|mac_out2~DATAOUT2\ & !\a[2][1]~128\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][2]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \a[2][1]~128\,
	combout => \a[2][2]~129_combout\,
	cout => \a[2][2]~130\);

-- Location: LCCOMB_X21_Y2_N26
\a[2][6]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][6]~137_combout\ = ((\a[3][6]\ $ (\Mult2|auto_generated|mac_out2~DATAOUT6\ $ (!\a[2][5]~136\)))) # (GND)
-- \a[2][6]~138\ = CARRY((\a[3][6]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT6\) # (!\a[2][5]~136\))) # (!\a[3][6]\ & (\Mult2|auto_generated|mac_out2~DATAOUT6\ & !\a[2][5]~136\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][6]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \a[2][5]~136\,
	combout => \a[2][6]~137_combout\,
	cout => \a[2][6]~138\);

-- Location: LCCOMB_X21_Y2_N28
\a[2][7]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][7]~139_combout\ = (\a[3][7]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT7\ & (\a[2][6]~138\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT7\ & (!\a[2][6]~138\)))) # (!\a[3][7]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT7\ & (!\a[2][6]~138\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT7\ & ((\a[2][6]~138\) # (GND)))))
-- \a[2][7]~140\ = CARRY((\a[3][7]\ & (!\Mult2|auto_generated|mac_out2~DATAOUT7\ & !\a[2][6]~138\)) # (!\a[3][7]\ & ((!\a[2][6]~138\) # (!\Mult2|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][7]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \a[2][6]~138\,
	combout => \a[2][7]~139_combout\,
	cout => \a[2][7]~140\);

-- Location: LCCOMB_X21_Y1_N0
\a[2][9]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][9]~143_combout\ = (\a[3][9]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT9\ & (\a[2][8]~142\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & (!\a[2][8]~142\)))) # (!\a[3][9]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT9\ & (!\a[2][8]~142\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & ((\a[2][8]~142\) # (GND)))))
-- \a[2][9]~144\ = CARRY((\a[3][9]\ & (!\Mult2|auto_generated|mac_out2~DATAOUT9\ & !\a[2][8]~142\)) # (!\a[3][9]\ & ((!\a[2][8]~142\) # (!\Mult2|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][9]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \a[2][8]~142\,
	combout => \a[2][9]~143_combout\,
	cout => \a[2][9]~144\);

-- Location: LCCOMB_X21_Y1_N2
\a[2][10]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][10]~145_combout\ = ((\a[3][10]\ $ (\Mult2|auto_generated|mac_out2~DATAOUT10\ $ (!\a[2][9]~144\)))) # (GND)
-- \a[2][10]~146\ = CARRY((\a[3][10]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT10\) # (!\a[2][9]~144\))) # (!\a[3][10]\ & (\Mult2|auto_generated|mac_out2~DATAOUT10\ & !\a[2][9]~144\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][10]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \a[2][9]~144\,
	combout => \a[2][10]~145_combout\,
	cout => \a[2][10]~146\);

-- Location: LCCOMB_X21_Y1_N8
\a[2][13]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][13]~151_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT13\ & ((\a[3][13]\ & (\a[2][12]~150\ & VCC)) # (!\a[3][13]\ & (!\a[2][12]~150\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT13\ & ((\a[3][13]\ & (!\a[2][12]~150\)) # (!\a[3][13]\ & 
-- ((\a[2][12]~150\) # (GND)))))
-- \a[2][13]~152\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT13\ & (!\a[3][13]\ & !\a[2][12]~150\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT13\ & ((!\a[2][12]~150\) # (!\a[3][13]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT13\,
	datab => \a[3][13]\,
	datad => VCC,
	cin => \a[2][12]~150\,
	combout => \a[2][13]~151_combout\,
	cout => \a[2][13]~152\);

-- Location: LCCOMB_X21_Y1_N10
\a[2][14]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][14]~153_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT14\ $ (\a[3][14]\ $ (!\a[2][13]~152\)))) # (GND)
-- \a[2][14]~154\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT14\ & ((\a[3][14]\) # (!\a[2][13]~152\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT14\ & (\a[3][14]\ & !\a[2][13]~152\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT14\,
	datab => \a[3][14]\,
	datad => VCC,
	cin => \a[2][13]~152\,
	combout => \a[2][14]~153_combout\,
	cout => \a[2][14]~154\);

-- Location: LCCOMB_X21_Y1_N12
\a[2][15]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][15]~155_combout\ = (\a[3][15]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT15\ & (\a[2][14]~154\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT15\ & (!\a[2][14]~154\)))) # (!\a[3][15]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\a[2][14]~154\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT15\ & ((\a[2][14]~154\) # (GND)))))
-- \a[2][15]~156\ = CARRY((\a[3][15]\ & (!\Mult2|auto_generated|mac_out2~DATAOUT15\ & !\a[2][14]~154\)) # (!\a[3][15]\ & ((!\a[2][14]~154\) # (!\Mult2|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][15]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \a[2][14]~154\,
	combout => \a[2][15]~155_combout\,
	cout => \a[2][15]~156\);

-- Location: LCCOMB_X21_Y1_N16
\a[2][17]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][17]~159_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT17\ & ((\a[3][18]\ & (\a[2][16]~158\ & VCC)) # (!\a[3][18]\ & (!\a[2][16]~158\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT17\ & ((\a[3][18]\ & (!\a[2][16]~158\)) # (!\a[3][18]\ & 
-- ((\a[2][16]~158\) # (GND)))))
-- \a[2][17]~160\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT17\ & (!\a[3][18]\ & !\a[2][16]~158\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT17\ & ((!\a[2][16]~158\) # (!\a[3][18]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT17\,
	datab => \a[3][18]\,
	datad => VCC,
	cin => \a[2][16]~158\,
	combout => \a[2][17]~159_combout\,
	cout => \a[2][17]~160\);

-- Location: LCCOMB_X21_Y1_N18
\a[2][18]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][18]~161_combout\ = \a[3][18]\ $ (\a[2][17]~160\ $ (!\Mult2|auto_generated|mac_out2~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a[3][18]\,
	datad => \Mult2|auto_generated|mac_out2~DATAOUT17\,
	cin => \a[2][17]~160\,
	combout => \a[2][18]~161_combout\);

-- Location: DSPOUT_X22_Y2_N2
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

-- Location: IOOBUF_X11_Y0_N9
\y_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][8]~q\,
	devoe => ww_devoe,
	o => \y_out[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\y_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][9]~q\,
	devoe => ww_devoe,
	o => \y_out[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\y_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][10]~q\,
	devoe => ww_devoe,
	o => \y_out[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\y_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][11]~q\,
	devoe => ww_devoe,
	o => \y_out[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\y_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][12]~q\,
	devoe => ww_devoe,
	o => \y_out[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\y_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][13]~q\,
	devoe => ww_devoe,
	o => \y_out[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\y_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][14]~q\,
	devoe => ww_devoe,
	o => \y_out[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\y_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][15]~q\,
	devoe => ww_devoe,
	o => \y_out[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\y_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][16]~q\,
	devoe => ww_devoe,
	o => \y_out[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\y_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][17]~q\,
	devoe => ww_devoe,
	o => \y_out[9]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\y_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0][18]~q\,
	devoe => ww_devoe,
	o => \y_out[10]~output_o\);

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

-- Location: IOIBUF_X20_Y0_N22
\Load_x~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load_x,
	o => \Load_x~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\c_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(0),
	o => \c_in[0]~input_o\);

-- Location: LCCOMB_X23_Y1_N28
\c[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3][0]~feeder_combout\ = \c_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_in[0]~input_o\,
	combout => \c[3][0]~feeder_combout\);

-- Location: FF_X23_Y1_N29
\c[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[3][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][0]~q\);

-- Location: LCCOMB_X23_Y1_N24
\c[2][0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2][0]~_Duplicate_1feeder_combout\ = \c[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[3][0]~q\,
	combout => \c[2][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y1_N25
\c[2][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[2][0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y1_N6
\c[1][0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1][0]~_Duplicate_1feeder_combout\ = \c[2][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[2][0]~_Duplicate_1_q\,
	combout => \c[1][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y1_N7
\c[1][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[1][0]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][0]~_Duplicate_1_q\);

-- Location: IOIBUF_X16_Y0_N22
\c_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(1),
	o => \c_in[1]~input_o\);

-- Location: FF_X20_Y2_N21
\c[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][1]~q\);

-- Location: LCCOMB_X20_Y2_N0
\c[2][1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2][1]~_Duplicate_1feeder_combout\ = \c[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[3][1]~q\,
	combout => \c[2][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X20_Y2_N1
\c[2][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[2][1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][1]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y1_N16
\c[1][1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1][1]~_Duplicate_1feeder_combout\ = \c[2][1]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c[2][1]~_Duplicate_1_q\,
	combout => \c[1][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y1_N17
\c[1][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[1][1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][1]~_Duplicate_1_q\);

-- Location: IOIBUF_X11_Y0_N22
\c_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(2),
	o => \c_in[2]~input_o\);

-- Location: LCCOMB_X20_Y2_N10
\c[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3][2]~feeder_combout\ = \c_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_in[2]~input_o\,
	combout => \c[3][2]~feeder_combout\);

-- Location: FF_X20_Y2_N11
\c[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[3][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][2]~q\);

-- Location: LCCOMB_X20_Y2_N2
\c[2][2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2][2]~_Duplicate_1feeder_combout\ = \c[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[3][2]~q\,
	combout => \c[2][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X20_Y2_N3
\c[2][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[2][2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][2]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y1_N24
\c[1][2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1][2]~_Duplicate_1feeder_combout\ = \c[2][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[2][2]~_Duplicate_1_q\,
	combout => \c[1][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y1_N25
\c[1][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[1][2]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][2]~_Duplicate_1_q\);

-- Location: IOIBUF_X11_Y0_N15
\c_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(3),
	o => \c_in[3]~input_o\);

-- Location: LCCOMB_X20_Y2_N16
\c[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3][3]~feeder_combout\ = \c_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_in[3]~input_o\,
	combout => \c[3][3]~feeder_combout\);

-- Location: FF_X20_Y2_N17
\c[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[3][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][3]~q\);

-- Location: FF_X20_Y1_N3
\c[2][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c[3][3]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y1_N12
\c[1][3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1][3]~_Duplicate_1feeder_combout\ = \c[2][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[2][3]~_Duplicate_1_q\,
	combout => \c[1][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X20_Y1_N13
\c[1][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[1][3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][3]~_Duplicate_1_q\);

-- Location: IOIBUF_X18_Y0_N15
\c_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(4),
	o => \c_in[4]~input_o\);

-- Location: FF_X21_Y2_N3
\c[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][4]~q\);

-- Location: LCCOMB_X21_Y2_N12
\c[2][4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2][4]~_Duplicate_1feeder_combout\ = \c[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[3][4]~q\,
	combout => \c[2][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y2_N13
\c[2][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[2][4]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][4]~_Duplicate_1_q\);

-- Location: FF_X21_Y1_N27
\c[1][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c[2][4]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][4]~_Duplicate_1_q\);

-- Location: IOIBUF_X20_Y0_N15
\c_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(5),
	o => \c_in[5]~input_o\);

-- Location: LCCOMB_X21_Y2_N4
\c[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3][5]~feeder_combout\ = \c_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_in[5]~input_o\,
	combout => \c[3][5]~feeder_combout\);

-- Location: FF_X21_Y2_N5
\c[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][5]~q\);

-- Location: FF_X21_Y2_N11
\c[2][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c[3][5]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y1_N28
\c[1][5]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1][5]~_Duplicate_1feeder_combout\ = \c[2][5]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[2][5]~_Duplicate_1_q\,
	combout => \c[1][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y1_N29
\c[1][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[1][5]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][5]~_Duplicate_1_q\);

-- Location: IOIBUF_X18_Y0_N22
\c_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(6),
	o => \c_in[6]~input_o\);

-- Location: FF_X21_Y2_N7
\c[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][6]~q\);

-- Location: LCCOMB_X21_Y2_N0
\c[2][6]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2][6]~_Duplicate_1feeder_combout\ = \c[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[3][6]~q\,
	combout => \c[2][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y2_N1
\c[2][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[2][6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y1_N22
\c[1][6]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[1][6]~_Duplicate_1feeder_combout\ = \c[2][6]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[2][6]~_Duplicate_1_q\,
	combout => \c[1][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y1_N23
\c[1][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[1][6]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][6]~_Duplicate_1_q\);

-- Location: IOIBUF_X9_Y0_N22
\c_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(7),
	o => \c_in[7]~input_o\);

-- Location: LCCOMB_X21_Y2_N8
\c[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3][7]~feeder_combout\ = \c_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_in[7]~input_o\,
	combout => \c[3][7]~feeder_combout\);

-- Location: FF_X21_Y2_N9
\c[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[3][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][7]~q\);

-- Location: FF_X21_Y1_N31
\c[2][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c[3][7]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][7]~_Duplicate_1_q\);

-- Location: FF_X21_Y1_N21
\c[1][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c[2][7]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][7]~_Duplicate_1_q\);

-- Location: IOIBUF_X27_Y0_N22
\c_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in(8),
	o => \c_in[8]~input_o\);

-- Location: LCCOMB_X23_Y1_N10
\c[3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[3][8]~feeder_combout\ = \c_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_in[8]~input_o\,
	combout => \c[3][8]~feeder_combout\);

-- Location: FF_X23_Y1_N11
\c[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[3][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[3][8]~q\);

-- Location: LCCOMB_X23_Y1_N14
\c[2][8]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c[2][8]~_Duplicate_1feeder_combout\ = \c[3][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c[3][8]~q\,
	combout => \c[2][8]~_Duplicate_1feeder_combout\);

-- Location: FF_X23_Y1_N15
\c[2][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[2][8]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[2][8]~_Duplicate_1_q\);

-- Location: FF_X23_Y1_N23
\c[1][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \c[2][8]~_Duplicate_1_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c[1][8]~_Duplicate_1_q\);

-- Location: IOIBUF_X35_Y0_N22
\x_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: LCCOMB_X23_Y1_N0
\x[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[0]~feeder_combout\ = \x_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[0]~input_o\,
	combout => \x[0]~feeder_combout\);

-- Location: FF_X23_Y1_N1
\x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(0));

-- Location: IOIBUF_X23_Y0_N22
\x_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: LCCOMB_X23_Y1_N2
\x[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[1]~feeder_combout\ = \x_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[1]~input_o\,
	combout => \x[1]~feeder_combout\);

-- Location: FF_X23_Y1_N3
\x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(1));

-- Location: IOIBUF_X29_Y0_N22
\x_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N12
\x[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[2]~feeder_combout\ = \x_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[2]~input_o\,
	combout => \x[2]~feeder_combout\);

-- Location: FF_X23_Y1_N13
\x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(2));

-- Location: IOIBUF_X23_Y0_N15
\x_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: LCCOMB_X23_Y1_N26
\x[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[3]~feeder_combout\ = \x_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[3]~input_o\,
	combout => \x[3]~feeder_combout\);

-- Location: FF_X23_Y1_N27
\x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(3));

-- Location: IOIBUF_X27_Y0_N8
\x_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: LCCOMB_X23_Y1_N20
\x[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[4]~feeder_combout\ = \x_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[4]~input_o\,
	combout => \x[4]~feeder_combout\);

-- Location: FF_X23_Y1_N21
\x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(4));

-- Location: IOIBUF_X31_Y0_N1
\x_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: LCCOMB_X23_Y1_N18
\x[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[5]~feeder_combout\ = \x_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[5]~input_o\,
	combout => \x[5]~feeder_combout\);

-- Location: FF_X23_Y1_N19
\x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(5));

-- Location: IOIBUF_X33_Y0_N8
\x_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(6),
	o => \x_in[6]~input_o\);

-- Location: LCCOMB_X23_Y1_N4
\x[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[6]~feeder_combout\ = \x_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[6]~input_o\,
	combout => \x[6]~feeder_combout\);

-- Location: FF_X23_Y1_N5
\x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(6));

-- Location: IOIBUF_X29_Y0_N15
\x_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(7),
	o => \x_in[7]~input_o\);

-- Location: FF_X23_Y1_N31
\x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x_in[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(7));

-- Location: IOIBUF_X31_Y0_N8
\x_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(8),
	o => \x_in[8]~input_o\);

-- Location: LCCOMB_X23_Y1_N8
\x[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x[8]~feeder_combout\ = \x_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_in[8]~input_o\,
	combout => \x[8]~feeder_combout\);

-- Location: FF_X23_Y1_N9
\x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x[8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Load_x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => x(8));

-- Location: DSPMULT_X22_Y1_N1
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPMULT_X22_Y3_N0
\Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPMULT_X22_Y1_N0
\Mult2|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Load_x~input_o\,
	dataa => \Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y2_N16
\a[2][1]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][1]~127_combout\ = (\a[3][1]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT1\ & (\a[2][0]~126\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT1\ & (!\a[2][0]~126\)))) # (!\a[3][1]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT1\ & (!\a[2][0]~126\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT1\ & ((\a[2][0]~126\) # (GND)))))
-- \a[2][1]~128\ = CARRY((\a[3][1]\ & (!\Mult2|auto_generated|mac_out2~DATAOUT1\ & !\a[2][0]~126\)) # (!\a[3][1]\ & ((!\a[2][0]~126\) # (!\Mult2|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][1]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \a[2][0]~126\,
	combout => \a[2][1]~127_combout\,
	cout => \a[2][1]~128\);

-- Location: LCCOMB_X21_Y2_N20
\a[2][3]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][3]~131_combout\ = (\a[3][3]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT3\ & (\a[2][2]~130\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT3\ & (!\a[2][2]~130\)))) # (!\a[3][3]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT3\ & (!\a[2][2]~130\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT3\ & ((\a[2][2]~130\) # (GND)))))
-- \a[2][3]~132\ = CARRY((\a[3][3]\ & (!\Mult2|auto_generated|mac_out2~DATAOUT3\ & !\a[2][2]~130\)) # (!\a[3][3]\ & ((!\a[2][2]~130\) # (!\Mult2|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][3]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \a[2][2]~130\,
	combout => \a[2][3]~131_combout\,
	cout => \a[2][3]~132\);

-- Location: LCCOMB_X21_Y2_N22
\a[2][4]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][4]~133_combout\ = ((\a[3][4]\ $ (\Mult2|auto_generated|mac_out2~DATAOUT4\ $ (!\a[2][3]~132\)))) # (GND)
-- \a[2][4]~134\ = CARRY((\a[3][4]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT4\) # (!\a[2][3]~132\))) # (!\a[3][4]\ & (\Mult2|auto_generated|mac_out2~DATAOUT4\ & !\a[2][3]~132\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][4]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \a[2][3]~132\,
	combout => \a[2][4]~133_combout\,
	cout => \a[2][4]~134\);

-- Location: LCCOMB_X21_Y2_N24
\a[2][5]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][5]~135_combout\ = (\a[3][5]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT5\ & (\a[2][4]~134\ & VCC)) # (!\Mult2|auto_generated|mac_out2~DATAOUT5\ & (!\a[2][4]~134\)))) # (!\a[3][5]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT5\ & (!\a[2][4]~134\)) # 
-- (!\Mult2|auto_generated|mac_out2~DATAOUT5\ & ((\a[2][4]~134\) # (GND)))))
-- \a[2][5]~136\ = CARRY((\a[3][5]\ & (!\Mult2|auto_generated|mac_out2~DATAOUT5\ & !\a[2][4]~134\)) # (!\a[3][5]\ & ((!\a[2][4]~134\) # (!\Mult2|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][5]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \a[2][4]~134\,
	combout => \a[2][5]~135_combout\,
	cout => \a[2][5]~136\);

-- Location: FF_X21_Y2_N25
\a[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][5]~135_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][5]~q\);

-- Location: FF_X21_Y2_N23
\a[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][4]~133_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][4]~q\);

-- Location: FF_X21_Y2_N21
\a[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][3]~131_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][3]~q\);

-- Location: FF_X21_Y2_N17
\a[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][1]~127_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][1]~q\);

-- Location: LCCOMB_X23_Y3_N14
\a[1][0]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][0]~87_combout\ = (\a[2][0]~q\ & (\Mult1|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\a[2][0]~q\ & (\Mult1|auto_generated|mac_out2~dataout\ & VCC))
-- \a[1][0]~88\ = CARRY((\a[2][0]~q\ & \Mult1|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2][0]~q\,
	datab => \Mult1|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \a[1][0]~87_combout\,
	cout => \a[1][0]~88\);

-- Location: LCCOMB_X23_Y3_N16
\a[1][1]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][1]~89_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT1\ & ((\a[2][1]~q\ & (\a[1][0]~88\ & VCC)) # (!\a[2][1]~q\ & (!\a[1][0]~88\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT1\ & ((\a[2][1]~q\ & (!\a[1][0]~88\)) # (!\a[2][1]~q\ & ((\a[1][0]~88\) 
-- # (GND)))))
-- \a[1][1]~90\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT1\ & (!\a[2][1]~q\ & !\a[1][0]~88\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT1\ & ((!\a[1][0]~88\) # (!\a[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT1\,
	datab => \a[2][1]~q\,
	datad => VCC,
	cin => \a[1][0]~88\,
	combout => \a[1][1]~89_combout\,
	cout => \a[1][1]~90\);

-- Location: LCCOMB_X23_Y3_N20
\a[1][3]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][3]~93_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\a[2][3]~q\ & (\a[1][2]~92\ & VCC)) # (!\a[2][3]~q\ & (!\a[1][2]~92\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\a[2][3]~q\ & (!\a[1][2]~92\)) # (!\a[2][3]~q\ & ((\a[1][2]~92\) 
-- # (GND)))))
-- \a[1][3]~94\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT3\ & (!\a[2][3]~q\ & !\a[1][2]~92\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT3\ & ((!\a[1][2]~92\) # (!\a[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT3\,
	datab => \a[2][3]~q\,
	datad => VCC,
	cin => \a[1][2]~92\,
	combout => \a[1][3]~93_combout\,
	cout => \a[1][3]~94\);

-- Location: LCCOMB_X23_Y3_N22
\a[1][4]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][4]~95_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT4\ $ (\a[2][4]~q\ $ (!\a[1][3]~94\)))) # (GND)
-- \a[1][4]~96\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT4\ & ((\a[2][4]~q\) # (!\a[1][3]~94\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT4\ & (\a[2][4]~q\ & !\a[1][3]~94\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT4\,
	datab => \a[2][4]~q\,
	datad => VCC,
	cin => \a[1][3]~94\,
	combout => \a[1][4]~95_combout\,
	cout => \a[1][4]~96\);

-- Location: LCCOMB_X23_Y3_N26
\a[1][6]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][6]~99_combout\ = ((\a[2][6]~q\ $ (\Mult1|auto_generated|mac_out2~DATAOUT6\ $ (!\a[1][5]~98\)))) # (GND)
-- \a[1][6]~100\ = CARRY((\a[2][6]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT6\) # (!\a[1][5]~98\))) # (!\a[2][6]~q\ & (\Mult1|auto_generated|mac_out2~DATAOUT6\ & !\a[1][5]~98\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2][6]~q\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \a[1][5]~98\,
	combout => \a[1][6]~99_combout\,
	cout => \a[1][6]~100\);

-- Location: LCCOMB_X23_Y3_N28
\a[1][7]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][7]~101_combout\ = (\a[2][7]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT7\ & (\a[1][6]~100\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\a[1][6]~100\)))) # (!\a[2][7]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\a[1][6]~100\)) 
-- # (!\Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\a[1][6]~100\) # (GND)))))
-- \a[1][7]~102\ = CARRY((\a[2][7]~q\ & (!\Mult1|auto_generated|mac_out2~DATAOUT7\ & !\a[1][6]~100\)) # (!\a[2][7]~q\ & ((!\a[1][6]~100\) # (!\Mult1|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2][7]~q\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \a[1][6]~100\,
	combout => \a[1][7]~101_combout\,
	cout => \a[1][7]~102\);

-- Location: FF_X23_Y3_N29
\a[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][7]~101_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][7]~q\);

-- Location: FF_X23_Y3_N27
\a[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][6]~99_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][6]~q\);

-- Location: FF_X23_Y3_N23
\a[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][4]~95_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][4]~q\);

-- Location: FF_X23_Y3_N21
\a[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][3]~93_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][3]~q\);

-- Location: FF_X23_Y3_N17
\a[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][1]~89_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][1]~q\);

-- Location: FF_X23_Y3_N15
\a[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][0]~87_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][0]~q\);

-- Location: LCCOMB_X21_Y4_N14
\a[0][8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][8]~50_cout\ = CARRY((\Mult0|auto_generated|mac_out2~dataout\ & \a[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datab => \a[1][0]~q\,
	datad => VCC,
	cout => \a[0][8]~50_cout\);

-- Location: LCCOMB_X21_Y4_N16
\a[0][8]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][8]~52_cout\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\a[1][1]~q\ & !\a[0][8]~50_cout\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & ((!\a[0][8]~50_cout\) # (!\a[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \a[1][1]~q\,
	datad => VCC,
	cin => \a[0][8]~50_cout\,
	cout => \a[0][8]~52_cout\);

-- Location: LCCOMB_X21_Y4_N18
\a[0][8]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][8]~54_cout\ = CARRY((\a[1][2]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\a[0][8]~52_cout\))) # (!\a[1][2]~q\ & (\Mult0|auto_generated|mac_out2~DATAOUT2\ & !\a[0][8]~52_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1][2]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \a[0][8]~52_cout\,
	cout => \a[0][8]~54_cout\);

-- Location: LCCOMB_X21_Y4_N20
\a[0][8]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][8]~56_cout\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\a[1][3]~q\ & !\a[0][8]~54_cout\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & ((!\a[0][8]~54_cout\) # (!\a[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \a[1][3]~q\,
	datad => VCC,
	cin => \a[0][8]~54_cout\,
	cout => \a[0][8]~56_cout\);

-- Location: LCCOMB_X21_Y4_N22
\a[0][8]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][8]~58_cout\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\a[1][4]~q\) # (!\a[0][8]~56_cout\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT4\ & (\a[1][4]~q\ & !\a[0][8]~56_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \a[1][4]~q\,
	datad => VCC,
	cin => \a[0][8]~56_cout\,
	cout => \a[0][8]~58_cout\);

-- Location: LCCOMB_X21_Y4_N24
\a[0][8]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][8]~60_cout\ = CARRY((\a[1][5]~q\ & (!\Mult0|auto_generated|mac_out2~DATAOUT5\ & !\a[0][8]~58_cout\)) # (!\a[1][5]~q\ & ((!\a[0][8]~58_cout\) # (!\Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1][5]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \a[0][8]~58_cout\,
	cout => \a[0][8]~60_cout\);

-- Location: LCCOMB_X21_Y4_N26
\a[0][8]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][8]~62_cout\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\a[1][6]~q\) # (!\a[0][8]~60_cout\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT6\ & (\a[1][6]~q\ & !\a[0][8]~60_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \a[1][6]~q\,
	datad => VCC,
	cin => \a[0][8]~60_cout\,
	cout => \a[0][8]~62_cout\);

-- Location: LCCOMB_X21_Y4_N28
\a[0][8]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][8]~64_cout\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\a[1][7]~q\ & !\a[0][8]~62_cout\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT7\ & ((!\a[0][8]~62_cout\) # (!\a[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \a[1][7]~q\,
	datad => VCC,
	cin => \a[0][8]~62_cout\,
	cout => \a[0][8]~64_cout\);

-- Location: LCCOMB_X21_Y4_N30
\a[0][8]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][8]~65_combout\ = ((\a[1][8]~q\ $ (\Mult0|auto_generated|mac_out2~DATAOUT8\ $ (!\a[0][8]~64_cout\)))) # (GND)
-- \a[0][8]~66\ = CARRY((\a[1][8]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\a[0][8]~64_cout\))) # (!\a[1][8]~q\ & (\Mult0|auto_generated|mac_out2~DATAOUT8\ & !\a[0][8]~64_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1][8]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \a[0][8]~64_cout\,
	combout => \a[0][8]~65_combout\,
	cout => \a[0][8]~66\);

-- Location: FF_X21_Y4_N31
\a[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][8]~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][8]~q\);

-- Location: DSPMULT_X22_Y2_N0
\Mult3|auto_generated|mac_mult1\ : cycloneive_mac_mult
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
	dataa => \Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y2_N30
\a[2][8]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][8]~141_combout\ = ((\Mult2|auto_generated|mac_out2~DATAOUT8\ $ (\a[3][8]\ $ (!\a[2][7]~140\)))) # (GND)
-- \a[2][8]~142\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT8\ & ((\a[3][8]\) # (!\a[2][7]~140\))) # (!\Mult2|auto_generated|mac_out2~DATAOUT8\ & (\a[3][8]\ & !\a[2][7]~140\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT8\,
	datab => \a[3][8]\,
	datad => VCC,
	cin => \a[2][7]~140\,
	combout => \a[2][8]~141_combout\,
	cout => \a[2][8]~142\);

-- Location: FF_X21_Y2_N31
\a[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][8]~141_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][8]~q\);

-- Location: LCCOMB_X23_Y2_N0
\a[1][9]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][9]~105_combout\ = (\a[2][9]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT9\ & (\a[1][8]~104\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\a[1][8]~104\)))) # (!\a[2][9]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\a[1][8]~104\)) 
-- # (!\Mult1|auto_generated|mac_out2~DATAOUT9\ & ((\a[1][8]~104\) # (GND)))))
-- \a[1][9]~106\ = CARRY((\a[2][9]~q\ & (!\Mult1|auto_generated|mac_out2~DATAOUT9\ & !\a[1][8]~104\)) # (!\a[2][9]~q\ & ((!\a[1][8]~104\) # (!\Mult1|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2][9]~q\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \a[1][8]~104\,
	combout => \a[1][9]~105_combout\,
	cout => \a[1][9]~106\);

-- Location: FF_X23_Y2_N1
\a[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][9]~105_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][9]~q\);

-- Location: LCCOMB_X21_Y3_N0
\a[0][9]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][9]~67_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\a[1][9]~q\ & (\a[0][8]~66\ & VCC)) # (!\a[1][9]~q\ & (!\a[0][8]~66\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\a[1][9]~q\ & (!\a[0][8]~66\)) # (!\a[1][9]~q\ & ((\a[0][8]~66\) 
-- # (GND)))))
-- \a[0][9]~68\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\a[1][9]~q\ & !\a[0][8]~66\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\ & ((!\a[0][8]~66\) # (!\a[1][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \a[1][9]~q\,
	datad => VCC,
	cin => \a[0][8]~66\,
	combout => \a[0][9]~67_combout\,
	cout => \a[0][9]~68\);

-- Location: FF_X21_Y3_N1
\a[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][9]~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][9]~q\);

-- Location: LCCOMB_X23_Y2_N2
\a[1][10]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][10]~107_combout\ = ((\a[2][10]~q\ $ (\Mult1|auto_generated|mac_out2~DATAOUT10\ $ (!\a[1][9]~106\)))) # (GND)
-- \a[1][10]~108\ = CARRY((\a[2][10]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT10\) # (!\a[1][9]~106\))) # (!\a[2][10]~q\ & (\Mult1|auto_generated|mac_out2~DATAOUT10\ & !\a[1][9]~106\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2][10]~q\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \a[1][9]~106\,
	combout => \a[1][10]~107_combout\,
	cout => \a[1][10]~108\);

-- Location: FF_X23_Y2_N3
\a[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][10]~107_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][10]~q\);

-- Location: LCCOMB_X21_Y3_N2
\a[0][10]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][10]~69_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT10\ $ (\a[1][10]~q\ $ (!\a[0][9]~68\)))) # (GND)
-- \a[0][10]~70\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\a[1][10]~q\) # (!\a[0][9]~68\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT10\ & (\a[1][10]~q\ & !\a[0][9]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \a[1][10]~q\,
	datad => VCC,
	cin => \a[0][9]~68\,
	combout => \a[0][10]~69_combout\,
	cout => \a[0][10]~70\);

-- Location: FF_X21_Y3_N3
\a[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][10]~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][10]~q\);

-- Location: LCCOMB_X21_Y1_N4
\a[2][11]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][11]~147_combout\ = (\Mult2|auto_generated|mac_out2~DATAOUT11\ & ((\a[3][11]\ & (\a[2][10]~146\ & VCC)) # (!\a[3][11]\ & (!\a[2][10]~146\)))) # (!\Mult2|auto_generated|mac_out2~DATAOUT11\ & ((\a[3][11]\ & (!\a[2][10]~146\)) # (!\a[3][11]\ & 
-- ((\a[2][10]~146\) # (GND)))))
-- \a[2][11]~148\ = CARRY((\Mult2|auto_generated|mac_out2~DATAOUT11\ & (!\a[3][11]\ & !\a[2][10]~146\)) # (!\Mult2|auto_generated|mac_out2~DATAOUT11\ & ((!\a[2][10]~146\) # (!\a[3][11]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|auto_generated|mac_out2~DATAOUT11\,
	datab => \a[3][11]\,
	datad => VCC,
	cin => \a[2][10]~146\,
	combout => \a[2][11]~147_combout\,
	cout => \a[2][11]~148\);

-- Location: FF_X21_Y1_N5
\a[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][11]~147_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][11]~q\);

-- Location: LCCOMB_X23_Y2_N4
\a[1][11]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][11]~109_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\a[2][11]~q\ & (\a[1][10]~108\ & VCC)) # (!\a[2][11]~q\ & (!\a[1][10]~108\)))) # (!\Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\a[2][11]~q\ & (!\a[1][10]~108\)) # (!\a[2][11]~q\ & 
-- ((\a[1][10]~108\) # (GND)))))
-- \a[1][11]~110\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\a[2][11]~q\ & !\a[1][10]~108\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT11\ & ((!\a[1][10]~108\) # (!\a[2][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT11\,
	datab => \a[2][11]~q\,
	datad => VCC,
	cin => \a[1][10]~108\,
	combout => \a[1][11]~109_combout\,
	cout => \a[1][11]~110\);

-- Location: FF_X23_Y2_N5
\a[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][11]~109_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][11]~q\);

-- Location: LCCOMB_X21_Y3_N4
\a[0][11]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][11]~71_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\a[1][11]~q\ & (\a[0][10]~70\ & VCC)) # (!\a[1][11]~q\ & (!\a[0][10]~70\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\a[1][11]~q\ & (!\a[0][10]~70\)) # (!\a[1][11]~q\ & 
-- ((\a[0][10]~70\) # (GND)))))
-- \a[0][11]~72\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\a[1][11]~q\ & !\a[0][10]~70\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((!\a[0][10]~70\) # (!\a[1][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \a[1][11]~q\,
	datad => VCC,
	cin => \a[0][10]~70\,
	combout => \a[0][11]~71_combout\,
	cout => \a[0][11]~72\);

-- Location: FF_X21_Y3_N5
\a[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][11]~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][11]~q\);

-- Location: LCCOMB_X21_Y3_N6
\a[0][12]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][12]~73_combout\ = ((\a[1][12]~q\ $ (\Mult0|auto_generated|mac_out2~DATAOUT12\ $ (!\a[0][11]~72\)))) # (GND)
-- \a[0][12]~74\ = CARRY((\a[1][12]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT12\) # (!\a[0][11]~72\))) # (!\a[1][12]~q\ & (\Mult0|auto_generated|mac_out2~DATAOUT12\ & !\a[0][11]~72\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1][12]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \a[0][11]~72\,
	combout => \a[0][12]~73_combout\,
	cout => \a[0][12]~74\);

-- Location: FF_X21_Y3_N7
\a[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][12]~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][12]~q\);

-- Location: LCCOMB_X21_Y3_N8
\a[0][13]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][13]~75_combout\ = (\a[1][13]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT13\ & (\a[0][12]~74\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\a[0][12]~74\)))) # (!\a[1][13]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- (!\a[0][12]~74\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\a[0][12]~74\) # (GND)))))
-- \a[0][13]~76\ = CARRY((\a[1][13]~q\ & (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & !\a[0][12]~74\)) # (!\a[1][13]~q\ & ((!\a[0][12]~74\) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1][13]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \a[0][12]~74\,
	combout => \a[0][13]~75_combout\,
	cout => \a[0][13]~76\);

-- Location: FF_X21_Y3_N9
\a[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][13]~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][13]~q\);

-- Location: LCCOMB_X21_Y1_N6
\a[2][12]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][12]~149_combout\ = ((\a[3][12]\ $ (\Mult2|auto_generated|mac_out2~DATAOUT12\ $ (!\a[2][11]~148\)))) # (GND)
-- \a[2][12]~150\ = CARRY((\a[3][12]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT12\) # (!\a[2][11]~148\))) # (!\a[3][12]\ & (\Mult2|auto_generated|mac_out2~DATAOUT12\ & !\a[2][11]~148\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][12]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \a[2][11]~148\,
	combout => \a[2][12]~149_combout\,
	cout => \a[2][12]~150\);

-- Location: FF_X21_Y1_N7
\a[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][12]~149_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][12]~q\);

-- Location: LCCOMB_X23_Y2_N10
\a[1][14]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[1][14]~115_combout\ = ((\a[2][14]~q\ $ (\Mult1|auto_generated|mac_out2~DATAOUT14\ $ (!\a[1][13]~114\)))) # (GND)
-- \a[1][14]~116\ = CARRY((\a[2][14]~q\ & ((\Mult1|auto_generated|mac_out2~DATAOUT14\) # (!\a[1][13]~114\))) # (!\a[2][14]~q\ & (\Mult1|auto_generated|mac_out2~DATAOUT14\ & !\a[1][13]~114\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2][14]~q\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \a[1][13]~114\,
	combout => \a[1][14]~115_combout\,
	cout => \a[1][14]~116\);

-- Location: FF_X23_Y2_N11
\a[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][14]~115_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][14]~q\);

-- Location: LCCOMB_X21_Y3_N10
\a[0][14]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][14]~77_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT14\ $ (\a[1][14]~q\ $ (!\a[0][13]~76\)))) # (GND)
-- \a[0][14]~78\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\a[1][14]~q\) # (!\a[0][13]~76\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT14\ & (\a[1][14]~q\ & !\a[0][13]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \a[1][14]~q\,
	datad => VCC,
	cin => \a[0][13]~76\,
	combout => \a[0][14]~77_combout\,
	cout => \a[0][14]~78\);

-- Location: FF_X21_Y3_N11
\a[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][14]~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][14]~q\);

-- Location: LCCOMB_X21_Y3_N12
\a[0][15]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][15]~79_combout\ = (\a[1][15]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT15\ & (\a[0][14]~78\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\a[0][14]~78\)))) # (!\a[1][15]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\a[0][14]~78\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\a[0][14]~78\) # (GND)))))
-- \a[0][15]~80\ = CARRY((\a[1][15]~q\ & (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & !\a[0][14]~78\)) # (!\a[1][15]~q\ & ((!\a[0][14]~78\) # (!\Mult0|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1][15]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \a[0][14]~78\,
	combout => \a[0][15]~79_combout\,
	cout => \a[0][15]~80\);

-- Location: FF_X21_Y3_N13
\a[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][15]~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][15]~q\);

-- Location: LCCOMB_X21_Y3_N14
\a[0][16]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][16]~81_combout\ = ((\a[1][16]~q\ $ (\Mult0|auto_generated|mac_out2~DATAOUT16\ $ (!\a[0][15]~80\)))) # (GND)
-- \a[0][16]~82\ = CARRY((\a[1][16]~q\ & ((\Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\a[0][15]~80\))) # (!\a[1][16]~q\ & (\Mult0|auto_generated|mac_out2~DATAOUT16\ & !\a[0][15]~80\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1][16]~q\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \a[0][15]~80\,
	combout => \a[0][16]~81_combout\,
	cout => \a[0][16]~82\);

-- Location: FF_X21_Y3_N15
\a[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][16]~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][16]~q\);

-- Location: LCCOMB_X21_Y1_N14
\a[2][16]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[2][16]~157_combout\ = ((\a[3][16]\ $ (\Mult2|auto_generated|mac_out2~DATAOUT16\ $ (!\a[2][15]~156\)))) # (GND)
-- \a[2][16]~158\ = CARRY((\a[3][16]\ & ((\Mult2|auto_generated|mac_out2~DATAOUT16\) # (!\a[2][15]~156\))) # (!\a[3][16]\ & (\Mult2|auto_generated|mac_out2~DATAOUT16\ & !\a[2][15]~156\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3][16]\,
	datab => \Mult2|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \a[2][15]~156\,
	combout => \a[2][16]~157_combout\,
	cout => \a[2][16]~158\);

-- Location: FF_X21_Y1_N17
\a[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][17]~159_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][17]~q\);

-- Location: FF_X21_Y1_N15
\a[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2][16]~157_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[2][16]~q\);

-- Location: FF_X23_Y2_N17
\a[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1][17]~121_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[1][17]~q\);

-- Location: LCCOMB_X21_Y3_N16
\a[0][17]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][17]~83_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\a[1][17]~q\ & (\a[0][16]~82\ & VCC)) # (!\a[1][17]~q\ & (!\a[0][16]~82\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\a[1][17]~q\ & (!\a[0][16]~82\)) # (!\a[1][17]~q\ & 
-- ((\a[0][16]~82\) # (GND)))))
-- \a[0][17]~84\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\a[1][17]~q\ & !\a[0][16]~82\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT17\ & ((!\a[0][16]~82\) # (!\a[1][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \a[1][17]~q\,
	datad => VCC,
	cin => \a[0][16]~82\,
	combout => \a[0][17]~83_combout\,
	cout => \a[0][17]~84\);

-- Location: FF_X21_Y3_N17
\a[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][17]~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][17]~q\);

-- Location: LCCOMB_X21_Y3_N18
\a[0][18]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \a[0][18]~85_combout\ = \a[1][18]~q\ $ (\a[0][17]~84\ $ (!\Mult0|auto_generated|mac_out2~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1][18]~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT17\,
	cin => \a[0][17]~84\,
	combout => \a[0][18]~85_combout\);

-- Location: FF_X21_Y3_N19
\a[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0][18]~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a[0][18]~q\);

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
END structure;


