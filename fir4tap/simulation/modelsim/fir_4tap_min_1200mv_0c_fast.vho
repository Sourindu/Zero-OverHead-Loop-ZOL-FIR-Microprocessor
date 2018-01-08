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

-- DATE "03/20/2016 16:33:20"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fir_4tap IS
    PORT (
	Clkl : IN std_logic;
	Xin : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	Yout : OUT IEEE.NUMERIC_STD.signed(15 DOWNTO 0)
	);
END fir_4tap;

-- Design Ports Information
-- Yout[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[2]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[3]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[4]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[5]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[7]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[8]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[9]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[10]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[12]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[13]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[14]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yout[15]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clkl	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[1]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[2]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[4]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[6]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Xin[7]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_4tap IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clkl : std_logic;
SIGNAL ww_Xin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Yout : std_logic_vector(15 DOWNTO 0);
SIGNAL \Clkl~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[1]~18_combout\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[4]~24_combout\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[5]~26_combout\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[6]~28_combout\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[7]~30_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[8]~32_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[13]~42_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][3]~1_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[1][2]~4_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[1][3]~5_combout\ : std_logic;
SIGNAL \Mult3|mult_core|romout[1][4]~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][2]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][2]~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][3]~5_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[1][4]~6_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[1]~feeder_combout\ : std_logic;
SIGNAL \DFFlocal2|qt[11]~feeder_combout\ : std_logic;
SIGNAL \Yout[0]~output_o\ : std_logic;
SIGNAL \Yout[1]~output_o\ : std_logic;
SIGNAL \Yout[2]~output_o\ : std_logic;
SIGNAL \Yout[3]~output_o\ : std_logic;
SIGNAL \Yout[4]~output_o\ : std_logic;
SIGNAL \Yout[5]~output_o\ : std_logic;
SIGNAL \Yout[6]~output_o\ : std_logic;
SIGNAL \Yout[7]~output_o\ : std_logic;
SIGNAL \Yout[8]~output_o\ : std_logic;
SIGNAL \Yout[9]~output_o\ : std_logic;
SIGNAL \Yout[10]~output_o\ : std_logic;
SIGNAL \Yout[11]~output_o\ : std_logic;
SIGNAL \Yout[12]~output_o\ : std_logic;
SIGNAL \Yout[13]~output_o\ : std_logic;
SIGNAL \Yout[14]~output_o\ : std_logic;
SIGNAL \Yout[15]~output_o\ : std_logic;
SIGNAL \Clkl~input_o\ : std_logic;
SIGNAL \Clkl~inputclkctrl_outclk\ : std_logic;
SIGNAL \Xin[0]~input_o\ : std_logic;
SIGNAL \DFFlocal3|qt[0]~16_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[0]~feeder_combout\ : std_logic;
SIGNAL \Yout[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Yout[0]~reg0_q\ : std_logic;
SIGNAL \Yout[1]~15_combout\ : std_logic;
SIGNAL \Yout[1]~reg0_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Xin[1]~input_o\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][2]~0_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[0]~17\ : std_logic;
SIGNAL \DFFlocal3|qt[1]~19\ : std_logic;
SIGNAL \DFFlocal3|qt[2]~20_combout\ : std_logic;
SIGNAL \Yout[1]~16\ : std_logic;
SIGNAL \Yout[2]~17_combout\ : std_logic;
SIGNAL \Yout[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Yout[2]~reg0_q\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[2]~21\ : std_logic;
SIGNAL \DFFlocal3|qt[3]~22_combout\ : std_logic;
SIGNAL \Yout[2]~18\ : std_logic;
SIGNAL \Yout[3]~19_combout\ : std_logic;
SIGNAL \Yout[3]~reg0_q\ : std_logic;
SIGNAL \Xin[2]~input_o\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][4]~2_combout\ : std_logic;
SIGNAL \Yout[3]~20\ : std_logic;
SIGNAL \Yout[4]~21_combout\ : std_logic;
SIGNAL \Yout[4]~reg0_q\ : std_logic;
SIGNAL \Xin[4]~input_o\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Yout[4]~22\ : std_logic;
SIGNAL \Yout[5]~23_combout\ : std_logic;
SIGNAL \Yout[5]~reg0_q\ : std_logic;
SIGNAL \Mult3|mult_core|romout[0][5]~3_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Yout[5]~24\ : std_logic;
SIGNAL \Yout[6]~25_combout\ : std_logic;
SIGNAL \Yout[6]~reg0_q\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Yout[6]~26\ : std_logic;
SIGNAL \Yout[7]~27_combout\ : std_logic;
SIGNAL \Yout[7]~reg0_q\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Yout[7]~28\ : std_logic;
SIGNAL \Yout[8]~29_combout\ : std_logic;
SIGNAL \Yout[8]~reg0_q\ : std_logic;
SIGNAL \Xin[7]~input_o\ : std_logic;
SIGNAL \Xin[5]~input_o\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Xin[6]~input_o\ : std_logic;
SIGNAL \Xin[3]~input_o\ : std_logic;
SIGNAL \DFFlocal1|qt[5]~feeder_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][3]~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mult2|mult_core|adder|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[3]~23\ : std_logic;
SIGNAL \DFFlocal3|qt[4]~25\ : std_logic;
SIGNAL \DFFlocal3|qt[5]~27\ : std_logic;
SIGNAL \DFFlocal3|qt[6]~29\ : std_logic;
SIGNAL \DFFlocal3|qt[7]~31\ : std_logic;
SIGNAL \DFFlocal3|qt[8]~33\ : std_logic;
SIGNAL \DFFlocal3|qt[9]~34_combout\ : std_logic;
SIGNAL \Yout[8]~30\ : std_logic;
SIGNAL \Yout[9]~31_combout\ : std_logic;
SIGNAL \Yout[9]~reg0_q\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][5]~3_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][4]~2_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[9]~35\ : std_logic;
SIGNAL \DFFlocal3|qt[10]~36_combout\ : std_logic;
SIGNAL \Yout[9]~32\ : std_logic;
SIGNAL \Yout[10]~33_combout\ : std_logic;
SIGNAL \Yout[10]~reg0_q\ : std_logic;
SIGNAL \DFFlocal3|qt[10]~37\ : std_logic;
SIGNAL \DFFlocal3|qt[11]~38_combout\ : std_logic;
SIGNAL \Yout[10]~34\ : std_logic;
SIGNAL \Yout[11]~35_combout\ : std_logic;
SIGNAL \Yout[11]~reg0_q\ : std_logic;
SIGNAL \DFFlocal1|qt[10]~feeder_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \DFFlocal2|qt[12]~feeder_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[11]~39\ : std_logic;
SIGNAL \DFFlocal3|qt[12]~40_combout\ : std_logic;
SIGNAL \Yout[11]~36\ : std_logic;
SIGNAL \Yout[12]~37_combout\ : std_logic;
SIGNAL \Yout[12]~reg0_q\ : std_logic;
SIGNAL \Mult3|mult_core|romout[1][4]~7_combout\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Yout[12]~38\ : std_logic;
SIGNAL \Yout[13]~39_combout\ : std_logic;
SIGNAL \Yout[13]~reg0_q\ : std_logic;
SIGNAL \DFFlocal2|qt[13]~feeder_combout\ : std_logic;
SIGNAL \DFFlocal3|qt[12]~41\ : std_logic;
SIGNAL \DFFlocal3|qt[13]~43\ : std_logic;
SIGNAL \DFFlocal3|qt[14]~44_combout\ : std_logic;
SIGNAL \Yout[13]~40\ : std_logic;
SIGNAL \Yout[14]~41_combout\ : std_logic;
SIGNAL \Yout[14]~reg0_q\ : std_logic;
SIGNAL \DFFlocal3|qt[14]~45\ : std_logic;
SIGNAL \DFFlocal3|qt[15]~46_combout\ : std_logic;
SIGNAL \Yout[14]~42\ : std_logic;
SIGNAL \Yout[15]~43_combout\ : std_logic;
SIGNAL \Yout[15]~reg0_q\ : std_logic;
SIGNAL \DFFlocal1|qt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DFFlocal2|qt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DFFlocal3|qt\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_Clkl <= Clkl;
ww_Xin <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(Xin);
Yout <= IEEE.NUMERIC_STD.SIGNED(ww_Yout);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clkl~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clkl~input_o\);

-- Location: FF_X114_Y8_N31
\DFFlocal3|qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(1));

-- Location: FF_X113_Y8_N9
\DFFlocal3|qt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(4));

-- Location: FF_X113_Y8_N11
\DFFlocal3|qt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(5));

-- Location: FF_X113_Y8_N13
\DFFlocal3|qt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(6));

-- Location: FF_X113_Y8_N15
\DFFlocal3|qt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(7));

-- Location: FF_X113_Y8_N17
\DFFlocal3|qt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(8));

-- Location: FF_X113_Y8_N27
\DFFlocal3|qt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(13));

-- Location: LCCOMB_X109_Y8_N10
\Mult2|mult_core|adder|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|adder|auto_generated|op_1~0_combout\ = (\Xin[1]~input_o\ & (!\Xin[0]~input_o\ & VCC)) # (!\Xin[1]~input_o\ & (\Xin[0]~input_o\ $ (GND)))
-- \Mult2|mult_core|adder|auto_generated|op_1~1\ = CARRY((!\Xin[1]~input_o\ & !\Xin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[1]~input_o\,
	datab => \Xin[0]~input_o\,
	datad => VCC,
	combout => \Mult2|mult_core|adder|auto_generated|op_1~0_combout\,
	cout => \Mult2|mult_core|adder|auto_generated|op_1~1\);

-- Location: LCCOMB_X113_Y8_N2
\DFFlocal3|qt[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[1]~18_combout\ = (\Mult2|mult_core|adder|auto_generated|op_1~0_combout\ & ((\DFFlocal2|qt\(1) & (\DFFlocal3|qt[0]~17\ & VCC)) # (!\DFFlocal2|qt\(1) & (!\DFFlocal3|qt[0]~17\)))) # (!\Mult2|mult_core|adder|auto_generated|op_1~0_combout\ & 
-- ((\DFFlocal2|qt\(1) & (!\DFFlocal3|qt[0]~17\)) # (!\DFFlocal2|qt\(1) & ((\DFFlocal3|qt[0]~17\) # (GND)))))
-- \DFFlocal3|qt[1]~19\ = CARRY((\Mult2|mult_core|adder|auto_generated|op_1~0_combout\ & (!\DFFlocal2|qt\(1) & !\DFFlocal3|qt[0]~17\)) # (!\Mult2|mult_core|adder|auto_generated|op_1~0_combout\ & ((!\DFFlocal3|qt[0]~17\) # (!\DFFlocal2|qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~0_combout\,
	datab => \DFFlocal2|qt\(1),
	datad => VCC,
	cin => \DFFlocal3|qt[0]~17\,
	combout => \DFFlocal3|qt[1]~18_combout\,
	cout => \DFFlocal3|qt[1]~19\);

-- Location: LCCOMB_X109_Y8_N12
\Mult2|mult_core|adder|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|adder|auto_generated|op_1~2_combout\ = (\Xin[2]~input_o\ & ((\Mult2|mult_core|adder|auto_generated|op_1~1\) # (GND))) # (!\Xin[2]~input_o\ & (!\Mult2|mult_core|adder|auto_generated|op_1~1\))
-- \Mult2|mult_core|adder|auto_generated|op_1~3\ = CARRY((\Xin[2]~input_o\) # (!\Mult2|mult_core|adder|auto_generated|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[2]~input_o\,
	datad => VCC,
	cin => \Mult2|mult_core|adder|auto_generated|op_1~1\,
	combout => \Mult2|mult_core|adder|auto_generated|op_1~2_combout\,
	cout => \Mult2|mult_core|adder|auto_generated|op_1~3\);

-- Location: LCCOMB_X113_Y8_N8
\DFFlocal3|qt[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[4]~24_combout\ = ((\DFFlocal2|qt\(4) $ (\Mult2|mult_core|adder|auto_generated|op_1~6_combout\ $ (!\DFFlocal3|qt[3]~23\)))) # (GND)
-- \DFFlocal3|qt[4]~25\ = CARRY((\DFFlocal2|qt\(4) & ((\Mult2|mult_core|adder|auto_generated|op_1~6_combout\) # (!\DFFlocal3|qt[3]~23\))) # (!\DFFlocal2|qt\(4) & (\Mult2|mult_core|adder|auto_generated|op_1~6_combout\ & !\DFFlocal3|qt[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal2|qt\(4),
	datab => \Mult2|mult_core|adder|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \DFFlocal3|qt[3]~23\,
	combout => \DFFlocal3|qt[4]~24_combout\,
	cout => \DFFlocal3|qt[4]~25\);

-- Location: LCCOMB_X109_Y8_N18
\Mult2|mult_core|adder|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|adder|auto_generated|op_1~8_combout\ = (\Xin[5]~input_o\ & (!\Mult2|mult_core|adder|auto_generated|op_1~7\ & VCC)) # (!\Xin[5]~input_o\ & (\Mult2|mult_core|adder|auto_generated|op_1~7\ $ (GND)))
-- \Mult2|mult_core|adder|auto_generated|op_1~9\ = CARRY((!\Xin[5]~input_o\ & !\Mult2|mult_core|adder|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Xin[5]~input_o\,
	datad => VCC,
	cin => \Mult2|mult_core|adder|auto_generated|op_1~7\,
	combout => \Mult2|mult_core|adder|auto_generated|op_1~8_combout\,
	cout => \Mult2|mult_core|adder|auto_generated|op_1~9\);

-- Location: LCCOMB_X113_Y8_N10
\DFFlocal3|qt[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[5]~26_combout\ = (\Mult2|mult_core|adder|auto_generated|op_1~8_combout\ & ((\DFFlocal2|qt\(5) & (\DFFlocal3|qt[4]~25\ & VCC)) # (!\DFFlocal2|qt\(5) & (!\DFFlocal3|qt[4]~25\)))) # (!\Mult2|mult_core|adder|auto_generated|op_1~8_combout\ & 
-- ((\DFFlocal2|qt\(5) & (!\DFFlocal3|qt[4]~25\)) # (!\DFFlocal2|qt\(5) & ((\DFFlocal3|qt[4]~25\) # (GND)))))
-- \DFFlocal3|qt[5]~27\ = CARRY((\Mult2|mult_core|adder|auto_generated|op_1~8_combout\ & (!\DFFlocal2|qt\(5) & !\DFFlocal3|qt[4]~25\)) # (!\Mult2|mult_core|adder|auto_generated|op_1~8_combout\ & ((!\DFFlocal3|qt[4]~25\) # (!\DFFlocal2|qt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~8_combout\,
	datab => \DFFlocal2|qt\(5),
	datad => VCC,
	cin => \DFFlocal3|qt[4]~25\,
	combout => \DFFlocal3|qt[5]~26_combout\,
	cout => \DFFlocal3|qt[5]~27\);

-- Location: LCCOMB_X109_Y8_N20
\Mult2|mult_core|adder|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|adder|auto_generated|op_1~10_combout\ = (\Xin[6]~input_o\ & ((\Mult2|mult_core|adder|auto_generated|op_1~9\) # (GND))) # (!\Xin[6]~input_o\ & (!\Mult2|mult_core|adder|auto_generated|op_1~9\))
-- \Mult2|mult_core|adder|auto_generated|op_1~11\ = CARRY((\Xin[6]~input_o\) # (!\Mult2|mult_core|adder|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[6]~input_o\,
	datad => VCC,
	cin => \Mult2|mult_core|adder|auto_generated|op_1~9\,
	combout => \Mult2|mult_core|adder|auto_generated|op_1~10_combout\,
	cout => \Mult2|mult_core|adder|auto_generated|op_1~11\);

-- Location: LCCOMB_X113_Y8_N12
\DFFlocal3|qt[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[6]~28_combout\ = ((\Mult2|mult_core|adder|auto_generated|op_1~10_combout\ $ (\DFFlocal2|qt\(6) $ (!\DFFlocal3|qt[5]~27\)))) # (GND)
-- \DFFlocal3|qt[6]~29\ = CARRY((\Mult2|mult_core|adder|auto_generated|op_1~10_combout\ & ((\DFFlocal2|qt\(6)) # (!\DFFlocal3|qt[5]~27\))) # (!\Mult2|mult_core|adder|auto_generated|op_1~10_combout\ & (\DFFlocal2|qt\(6) & !\DFFlocal3|qt[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~10_combout\,
	datab => \DFFlocal2|qt\(6),
	datad => VCC,
	cin => \DFFlocal3|qt[5]~27\,
	combout => \DFFlocal3|qt[6]~28_combout\,
	cout => \DFFlocal3|qt[6]~29\);

-- Location: LCCOMB_X109_Y8_N22
\Mult2|mult_core|adder|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|adder|auto_generated|op_1~12_combout\ = (\Xin[7]~input_o\ & (!\Mult2|mult_core|adder|auto_generated|op_1~11\ & VCC)) # (!\Xin[7]~input_o\ & (\Mult2|mult_core|adder|auto_generated|op_1~11\ $ (GND)))
-- \Mult2|mult_core|adder|auto_generated|op_1~13\ = CARRY((!\Xin[7]~input_o\ & !\Mult2|mult_core|adder|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[7]~input_o\,
	datad => VCC,
	cin => \Mult2|mult_core|adder|auto_generated|op_1~11\,
	combout => \Mult2|mult_core|adder|auto_generated|op_1~12_combout\,
	cout => \Mult2|mult_core|adder|auto_generated|op_1~13\);

-- Location: LCCOMB_X113_Y8_N14
\DFFlocal3|qt[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[7]~30_combout\ = (\Mult2|mult_core|adder|auto_generated|op_1~12_combout\ & ((\DFFlocal2|qt\(7) & (\DFFlocal3|qt[6]~29\ & VCC)) # (!\DFFlocal2|qt\(7) & (!\DFFlocal3|qt[6]~29\)))) # (!\Mult2|mult_core|adder|auto_generated|op_1~12_combout\ & 
-- ((\DFFlocal2|qt\(7) & (!\DFFlocal3|qt[6]~29\)) # (!\DFFlocal2|qt\(7) & ((\DFFlocal3|qt[6]~29\) # (GND)))))
-- \DFFlocal3|qt[7]~31\ = CARRY((\Mult2|mult_core|adder|auto_generated|op_1~12_combout\ & (!\DFFlocal2|qt\(7) & !\DFFlocal3|qt[6]~29\)) # (!\Mult2|mult_core|adder|auto_generated|op_1~12_combout\ & ((!\DFFlocal3|qt[6]~29\) # (!\DFFlocal2|qt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~12_combout\,
	datab => \DFFlocal2|qt\(7),
	datad => VCC,
	cin => \DFFlocal3|qt[6]~29\,
	combout => \DFFlocal3|qt[7]~30_combout\,
	cout => \DFFlocal3|qt[7]~31\);

-- Location: LCCOMB_X113_Y8_N16
\DFFlocal3|qt[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[8]~32_combout\ = ((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ $ (\DFFlocal2|qt\(8) $ (!\DFFlocal3|qt[7]~31\)))) # (GND)
-- \DFFlocal3|qt[8]~33\ = CARRY((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & ((\DFFlocal2|qt\(8)) # (!\DFFlocal3|qt[7]~31\))) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (\DFFlocal2|qt\(8) & !\DFFlocal3|qt[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~14_combout\,
	datab => \DFFlocal2|qt\(8),
	datad => VCC,
	cin => \DFFlocal3|qt[7]~31\,
	combout => \DFFlocal3|qt[8]~32_combout\,
	cout => \DFFlocal3|qt[8]~33\);

-- Location: LCCOMB_X113_Y8_N26
\DFFlocal3|qt[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[13]~42_combout\ = (\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & ((\DFFlocal2|qt\(13) & (\DFFlocal3|qt[12]~41\ & VCC)) # (!\DFFlocal2|qt\(13) & (!\DFFlocal3|qt[12]~41\)))) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ 
-- & ((\DFFlocal2|qt\(13) & (!\DFFlocal3|qt[12]~41\)) # (!\DFFlocal2|qt\(13) & ((\DFFlocal3|qt[12]~41\) # (GND)))))
-- \DFFlocal3|qt[13]~43\ = CARRY((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (!\DFFlocal2|qt\(13) & !\DFFlocal3|qt[12]~41\)) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & ((!\DFFlocal3|qt[12]~41\) # (!\DFFlocal2|qt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~14_combout\,
	datab => \DFFlocal2|qt\(13),
	datad => VCC,
	cin => \DFFlocal3|qt[12]~41\,
	combout => \DFFlocal3|qt[13]~42_combout\,
	cout => \DFFlocal3|qt[13]~43\);

-- Location: LCCOMB_X112_Y8_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\DFFlocal1|qt\(3) & ((\Mult1|mult_core|romout[0][3]~1_combout\ & (\Add0~1\ & VCC)) # (!\Mult1|mult_core|romout[0][3]~1_combout\ & (!\Add0~1\)))) # (!\DFFlocal1|qt\(3) & ((\Mult1|mult_core|romout[0][3]~1_combout\ & (!\Add0~1\)) # 
-- (!\Mult1|mult_core|romout[0][3]~1_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\DFFlocal1|qt\(3) & (!\Mult1|mult_core|romout[0][3]~1_combout\ & !\Add0~1\)) # (!\DFFlocal1|qt\(3) & ((!\Add0~1\) # (!\Mult1|mult_core|romout[0][3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal1|qt\(3),
	datab => \Mult1|mult_core|romout[0][3]~1_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X111_Y8_N8
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Xin[4]~input_o\ & (\Mult1|mult_core|romout[0][4]~2_combout\ $ (VCC))) # (!\Xin[4]~input_o\ & (\Mult1|mult_core|romout[0][4]~2_combout\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Xin[4]~input_o\ & \Mult1|mult_core|romout[0][4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[4]~input_o\,
	datab => \Mult1|mult_core|romout[0][4]~2_combout\,
	datad => VCC,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X112_Y8_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (\DFFlocal1|qt\(4) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\DFFlocal1|qt\(4)) # (!\Add0~3\))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\DFFlocal1|qt\(4) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \DFFlocal1|qt\(4),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X111_Y8_N10
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult3|mult_core|romout[1][2]~4_combout\ & ((\Mult1|mult_core|romout[0][5]~3_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult1|mult_core|romout[0][5]~3_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult3|mult_core|romout[1][2]~4_combout\ & ((\Mult1|mult_core|romout[0][5]~3_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult1|mult_core|romout[0][5]~3_combout\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult3|mult_core|romout[1][2]~4_combout\ & (!\Mult1|mult_core|romout[0][5]~3_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult3|mult_core|romout[1][2]~4_combout\ & ((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult1|mult_core|romout[0][5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|romout[1][2]~4_combout\,
	datab => \Mult1|mult_core|romout[0][5]~3_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X111_Y8_N12
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\Mult1|mult_core|romout[1][2]~4_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\Mult1|mult_core|romout[1][2]~4_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult1|mult_core|romout[1][2]~4_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[1][2]~4_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X111_Y8_N14
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult1|mult_core|romout[1][3]~5_combout\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult1|mult_core|romout[1][3]~5_combout\ & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult1|mult_core|romout[1][3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[1][3]~5_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X111_Y8_N16
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = (\Mult1|mult_core|romout[1][4]~6_combout\ & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ $ (GND))) # (!\Mult1|mult_core|romout[1][4]~6_combout\ & 
-- (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ & VCC))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult1|mult_core|romout[1][4]~6_combout\ & !\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[1][4]~6_combout\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X112_Y8_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\DFFlocal1|qt\(10) & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\Add0~13\ & VCC)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add0~13\)))) # (!\DFFlocal1|qt\(10) & 
-- ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add0~13\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\DFFlocal1|qt\(10) & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\Add0~13\)) # (!\DFFlocal1|qt\(10) & ((!\Add0~13\) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal1|qt\(10),
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X112_Y8_N2
\Mult3|mult_core|romout[0][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][3]~1_combout\ = \Xin[2]~input_o\ $ (((\Xin[0]~input_o\) # (\Xin[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[0]~input_o\,
	datac => \Xin[2]~input_o\,
	datad => \Xin[1]~input_o\,
	combout => \Mult3|mult_core|romout[0][3]~1_combout\);

-- Location: LCCOMB_X110_Y8_N6
\Mult3|mult_core|romout[1][2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[1][2]~4_combout\ = \Xin[4]~input_o\ $ (\Xin[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Xin[4]~input_o\,
	datac => \Xin[5]~input_o\,
	combout => \Mult3|mult_core|romout[1][2]~4_combout\);

-- Location: LCCOMB_X110_Y8_N12
\Mult3|mult_core|romout[1][3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[1][3]~5_combout\ = \Xin[6]~input_o\ $ (((\Xin[5]~input_o\) # (\Xin[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[5]~input_o\,
	datab => \Xin[6]~input_o\,
	datac => \Xin[4]~input_o\,
	combout => \Mult3|mult_core|romout[1][3]~5_combout\);

-- Location: LCCOMB_X110_Y8_N30
\Mult3|mult_core|romout[1][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[1][4]~6_combout\ = \Xin[7]~input_o\ $ (((\Xin[5]~input_o\) # ((\Xin[6]~input_o\) # (\Xin[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[5]~input_o\,
	datab => \Xin[6]~input_o\,
	datac => \Xin[4]~input_o\,
	datad => \Xin[7]~input_o\,
	combout => \Mult3|mult_core|romout[1][4]~6_combout\);

-- Location: FF_X112_Y8_N15
\DFFlocal2|qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(3));

-- Location: FF_X112_Y8_N17
\DFFlocal2|qt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(4));

-- Location: FF_X112_Y8_N27
\DFFlocal2|qt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(9));

-- Location: FF_X112_Y8_N1
\DFFlocal2|qt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal2|qt[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(11));

-- Location: FF_X112_Y8_N13
\DFFlocal2|qt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \Add0~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(14));

-- Location: LCCOMB_X112_Y8_N10
\Mult1|mult_core|romout[0][2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][2]~0_combout\ = \Xin[2]~input_o\ $ (((!\Xin[0]~input_o\ & \Xin[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[0]~input_o\,
	datab => \Xin[1]~input_o\,
	datad => \Xin[2]~input_o\,
	combout => \Mult1|mult_core|romout[0][2]~0_combout\);

-- Location: FF_X112_Y8_N11
\DFFlocal1|qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \Xin[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal1|qt\(3));

-- Location: LCCOMB_X111_Y8_N6
\Mult1|mult_core|romout[1][2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][2]~4_combout\ = \Xin[6]~input_o\ $ (((\Xin[5]~input_o\ & !\Xin[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[6]~input_o\,
	datac => \Xin[5]~input_o\,
	datad => \Xin[4]~input_o\,
	combout => \Mult1|mult_core|romout[1][2]~4_combout\);

-- Location: LCCOMB_X111_Y8_N22
\Mult1|mult_core|romout[1][3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][3]~5_combout\ = \Xin[7]~input_o\ $ (((\Xin[5]~input_o\ & (!\Xin[6]~input_o\ & \Xin[4]~input_o\)) # (!\Xin[5]~input_o\ & (\Xin[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[7]~input_o\,
	datab => \Xin[5]~input_o\,
	datac => \Xin[6]~input_o\,
	datad => \Xin[4]~input_o\,
	combout => \Mult1|mult_core|romout[1][3]~5_combout\);

-- Location: LCCOMB_X111_Y8_N26
\Mult1|mult_core|romout[1][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[1][4]~6_combout\ = (\Xin[7]~input_o\ & ((\Xin[6]~input_o\) # ((\Xin[5]~input_o\ & \Xin[4]~input_o\)))) # (!\Xin[7]~input_o\ & (\Xin[5]~input_o\ & (\Xin[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[7]~input_o\,
	datab => \Xin[5]~input_o\,
	datac => \Xin[6]~input_o\,
	datad => \Xin[4]~input_o\,
	combout => \Mult1|mult_core|romout[1][4]~6_combout\);

-- Location: LCCOMB_X114_Y8_N30
\DFFlocal3|qt[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[1]~feeder_combout\ = \DFFlocal3|qt[1]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFFlocal3|qt[1]~18_combout\,
	combout => \DFFlocal3|qt[1]~feeder_combout\);

-- Location: LCCOMB_X112_Y8_N0
\DFFlocal2|qt[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal2|qt[11]~feeder_combout\ = \Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	combout => \DFFlocal2|qt[11]~feeder_combout\);

-- Location: IOOBUF_X109_Y0_N9
\Yout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[0]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\Yout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[1]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\Yout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[2]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\Yout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[3]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\Yout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\Yout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[5]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\Yout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[6]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\Yout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[7]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\Yout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[8]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\Yout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[9]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\Yout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[10]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[10]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\Yout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[11]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[11]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\Yout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[12]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[12]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\Yout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[13]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[13]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\Yout[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[14]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[14]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\Yout[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Yout[15]~reg0_q\,
	devoe => ww_devoe,
	o => \Yout[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clkl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clkl,
	o => \Clkl~input_o\);

-- Location: CLKCTRL_G2
\Clkl~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clkl~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clkl~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y7_N15
\Xin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(0),
	o => \Xin[0]~input_o\);

-- Location: FF_X113_Y8_N1
\DFFlocal1|qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \Xin[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal1|qt\(2));

-- Location: LCCOMB_X113_Y8_N0
\DFFlocal3|qt[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[0]~16_combout\ = (\Xin[0]~input_o\ & (\DFFlocal1|qt\(2) $ (VCC))) # (!\Xin[0]~input_o\ & (\DFFlocal1|qt\(2) & VCC))
-- \DFFlocal3|qt[0]~17\ = CARRY((\Xin[0]~input_o\ & \DFFlocal1|qt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[0]~input_o\,
	datab => \DFFlocal1|qt\(2),
	datad => VCC,
	combout => \DFFlocal3|qt[0]~16_combout\,
	cout => \DFFlocal3|qt[0]~17\);

-- Location: LCCOMB_X111_Y8_N0
\DFFlocal3|qt[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[0]~feeder_combout\ = \DFFlocal3|qt[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DFFlocal3|qt[0]~16_combout\,
	combout => \DFFlocal3|qt[0]~feeder_combout\);

-- Location: FF_X111_Y8_N1
\DFFlocal3|qt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(0));

-- Location: LCCOMB_X111_Y8_N30
\Yout[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[0]~reg0feeder_combout\ = \DFFlocal3|qt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFFlocal3|qt\(0),
	combout => \Yout[0]~reg0feeder_combout\);

-- Location: FF_X111_Y8_N31
\Yout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[0]~reg0_q\);

-- Location: LCCOMB_X114_Y8_N0
\Yout[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[1]~15_combout\ = (\DFFlocal3|qt\(1) & (\Xin[0]~input_o\ $ (VCC))) # (!\DFFlocal3|qt\(1) & (\Xin[0]~input_o\ & VCC))
-- \Yout[1]~16\ = CARRY((\DFFlocal3|qt\(1) & \Xin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal3|qt\(1),
	datab => \Xin[0]~input_o\,
	datad => VCC,
	combout => \Yout[1]~15_combout\,
	cout => \Yout[1]~16\);

-- Location: FF_X114_Y8_N1
\Yout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[1]~reg0_q\);

-- Location: LCCOMB_X112_Y8_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mult1|mult_core|romout[0][2]~0_combout\ & (\DFFlocal1|qt\(2) $ (VCC))) # (!\Mult1|mult_core|romout[0][2]~0_combout\ & (\DFFlocal1|qt\(2) & VCC))
-- \Add0~1\ = CARRY((\Mult1|mult_core|romout[0][2]~0_combout\ & \DFFlocal1|qt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][2]~0_combout\,
	datab => \DFFlocal1|qt\(2),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X113_Y8_N5
\DFFlocal2|qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(2));

-- Location: IOIBUF_X105_Y0_N22
\Xin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(1),
	o => \Xin[1]~input_o\);

-- Location: LCCOMB_X112_Y8_N8
\Mult3|mult_core|romout[0][2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][2]~0_combout\ = \Xin[0]~input_o\ $ (\Xin[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[0]~input_o\,
	datad => \Xin[1]~input_o\,
	combout => \Mult3|mult_core|romout[0][2]~0_combout\);

-- Location: FF_X113_Y8_N3
\DFFlocal2|qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \Mult3|mult_core|romout[0][2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(1));

-- Location: LCCOMB_X113_Y8_N4
\DFFlocal3|qt[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[2]~20_combout\ = ((\Mult2|mult_core|adder|auto_generated|op_1~2_combout\ $ (\DFFlocal2|qt\(2) $ (!\DFFlocal3|qt[1]~19\)))) # (GND)
-- \DFFlocal3|qt[2]~21\ = CARRY((\Mult2|mult_core|adder|auto_generated|op_1~2_combout\ & ((\DFFlocal2|qt\(2)) # (!\DFFlocal3|qt[1]~19\))) # (!\Mult2|mult_core|adder|auto_generated|op_1~2_combout\ & (\DFFlocal2|qt\(2) & !\DFFlocal3|qt[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~2_combout\,
	datab => \DFFlocal2|qt\(2),
	datad => VCC,
	cin => \DFFlocal3|qt[1]~19\,
	combout => \DFFlocal3|qt[2]~20_combout\,
	cout => \DFFlocal3|qt[2]~21\);

-- Location: FF_X114_Y8_N3
\DFFlocal3|qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \DFFlocal3|qt[2]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(2));

-- Location: LCCOMB_X114_Y8_N2
\Yout[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[2]~17_combout\ = (\Mult3|mult_core|romout[0][2]~0_combout\ & ((\DFFlocal3|qt\(2) & (\Yout[1]~16\ & VCC)) # (!\DFFlocal3|qt\(2) & (!\Yout[1]~16\)))) # (!\Mult3|mult_core|romout[0][2]~0_combout\ & ((\DFFlocal3|qt\(2) & (!\Yout[1]~16\)) # 
-- (!\DFFlocal3|qt\(2) & ((\Yout[1]~16\) # (GND)))))
-- \Yout[2]~18\ = CARRY((\Mult3|mult_core|romout[0][2]~0_combout\ & (!\DFFlocal3|qt\(2) & !\Yout[1]~16\)) # (!\Mult3|mult_core|romout[0][2]~0_combout\ & ((!\Yout[1]~16\) # (!\DFFlocal3|qt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|romout[0][2]~0_combout\,
	datab => \DFFlocal3|qt\(2),
	datad => VCC,
	cin => \Yout[1]~16\,
	combout => \Yout[2]~17_combout\,
	cout => \Yout[2]~18\);

-- Location: LCCOMB_X110_Y8_N28
\Yout[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[2]~reg0feeder_combout\ = \Yout[2]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Yout[2]~17_combout\,
	combout => \Yout[2]~reg0feeder_combout\);

-- Location: FF_X110_Y8_N29
\Yout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[2]~reg0_q\);

-- Location: LCCOMB_X109_Y8_N14
\Mult2|mult_core|adder|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|adder|auto_generated|op_1~4_combout\ = (\Xin[3]~input_o\ & (!\Mult2|mult_core|adder|auto_generated|op_1~3\ & VCC)) # (!\Xin[3]~input_o\ & (\Mult2|mult_core|adder|auto_generated|op_1~3\ $ (GND)))
-- \Mult2|mult_core|adder|auto_generated|op_1~5\ = CARRY((!\Xin[3]~input_o\ & !\Mult2|mult_core|adder|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[3]~input_o\,
	datad => VCC,
	cin => \Mult2|mult_core|adder|auto_generated|op_1~3\,
	combout => \Mult2|mult_core|adder|auto_generated|op_1~4_combout\,
	cout => \Mult2|mult_core|adder|auto_generated|op_1~5\);

-- Location: LCCOMB_X113_Y8_N6
\DFFlocal3|qt[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[3]~22_combout\ = (\DFFlocal2|qt\(3) & ((\Mult2|mult_core|adder|auto_generated|op_1~4_combout\ & (\DFFlocal3|qt[2]~21\ & VCC)) # (!\Mult2|mult_core|adder|auto_generated|op_1~4_combout\ & (!\DFFlocal3|qt[2]~21\)))) # (!\DFFlocal2|qt\(3) & 
-- ((\Mult2|mult_core|adder|auto_generated|op_1~4_combout\ & (!\DFFlocal3|qt[2]~21\)) # (!\Mult2|mult_core|adder|auto_generated|op_1~4_combout\ & ((\DFFlocal3|qt[2]~21\) # (GND)))))
-- \DFFlocal3|qt[3]~23\ = CARRY((\DFFlocal2|qt\(3) & (!\Mult2|mult_core|adder|auto_generated|op_1~4_combout\ & !\DFFlocal3|qt[2]~21\)) # (!\DFFlocal2|qt\(3) & ((!\DFFlocal3|qt[2]~21\) # (!\Mult2|mult_core|adder|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal2|qt\(3),
	datab => \Mult2|mult_core|adder|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \DFFlocal3|qt[2]~21\,
	combout => \DFFlocal3|qt[3]~22_combout\,
	cout => \DFFlocal3|qt[3]~23\);

-- Location: FF_X113_Y8_N7
\DFFlocal3|qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(3));

-- Location: LCCOMB_X114_Y8_N4
\Yout[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[3]~19_combout\ = ((\Mult3|mult_core|romout[0][3]~1_combout\ $ (\DFFlocal3|qt\(3) $ (!\Yout[2]~18\)))) # (GND)
-- \Yout[3]~20\ = CARRY((\Mult3|mult_core|romout[0][3]~1_combout\ & ((\DFFlocal3|qt\(3)) # (!\Yout[2]~18\))) # (!\Mult3|mult_core|romout[0][3]~1_combout\ & (\DFFlocal3|qt\(3) & !\Yout[2]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|romout[0][3]~1_combout\,
	datab => \DFFlocal3|qt\(3),
	datad => VCC,
	cin => \Yout[2]~18\,
	combout => \Yout[3]~19_combout\,
	cout => \Yout[3]~20\);

-- Location: FF_X114_Y8_N5
\Yout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[3]~reg0_q\);

-- Location: IOIBUF_X115_Y8_N15
\Xin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(2),
	o => \Xin[2]~input_o\);

-- Location: LCCOMB_X109_Y8_N8
\Mult3|mult_core|romout[0][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][4]~2_combout\ = \Xin[3]~input_o\ $ (((\Xin[1]~input_o\) # ((\Xin[2]~input_o\) # (\Xin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[3]~input_o\,
	datab => \Xin[1]~input_o\,
	datac => \Xin[2]~input_o\,
	datad => \Xin[0]~input_o\,
	combout => \Mult3|mult_core|romout[0][4]~2_combout\);

-- Location: LCCOMB_X114_Y8_N6
\Yout[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[4]~21_combout\ = (\DFFlocal3|qt\(4) & ((\Mult3|mult_core|romout[0][4]~2_combout\ & (\Yout[3]~20\ & VCC)) # (!\Mult3|mult_core|romout[0][4]~2_combout\ & (!\Yout[3]~20\)))) # (!\DFFlocal3|qt\(4) & ((\Mult3|mult_core|romout[0][4]~2_combout\ & 
-- (!\Yout[3]~20\)) # (!\Mult3|mult_core|romout[0][4]~2_combout\ & ((\Yout[3]~20\) # (GND)))))
-- \Yout[4]~22\ = CARRY((\DFFlocal3|qt\(4) & (!\Mult3|mult_core|romout[0][4]~2_combout\ & !\Yout[3]~20\)) # (!\DFFlocal3|qt\(4) & ((!\Yout[3]~20\) # (!\Mult3|mult_core|romout[0][4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal3|qt\(4),
	datab => \Mult3|mult_core|romout[0][4]~2_combout\,
	datad => VCC,
	cin => \Yout[3]~20\,
	combout => \Yout[4]~21_combout\,
	cout => \Yout[4]~22\);

-- Location: FF_X114_Y8_N7
\Yout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[4]~reg0_q\);

-- Location: IOIBUF_X115_Y9_N22
\Xin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(4),
	o => \Xin[4]~input_o\);

-- Location: LCCOMB_X110_Y8_N16
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult3|mult_core|romout[0][5]~3_combout\ & (\Xin[4]~input_o\ $ (VCC))) # (!\Mult3|mult_core|romout[0][5]~3_combout\ & (\Xin[4]~input_o\ & VCC))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult3|mult_core|romout[0][5]~3_combout\ & \Xin[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|romout[0][5]~3_combout\,
	datab => \Xin[4]~input_o\,
	datad => VCC,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X114_Y8_N8
\Yout[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[5]~23_combout\ = ((\DFFlocal3|qt\(5) $ (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (!\Yout[4]~22\)))) # (GND)
-- \Yout[5]~24\ = CARRY((\DFFlocal3|qt\(5) & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # (!\Yout[4]~22\))) # (!\DFFlocal3|qt\(5) & (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\Yout[4]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal3|qt\(5),
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Yout[4]~22\,
	combout => \Yout[5]~23_combout\,
	cout => \Yout[5]~24\);

-- Location: FF_X114_Y8_N9
\Yout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[5]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[5]~reg0_q\);

-- Location: LCCOMB_X109_Y8_N6
\Mult3|mult_core|romout[0][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[0][5]~3_combout\ = (\Xin[3]~input_o\) # ((\Xin[1]~input_o\) # ((\Xin[2]~input_o\) # (\Xin[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[3]~input_o\,
	datab => \Xin[1]~input_o\,
	datac => \Xin[2]~input_o\,
	datad => \Xin[0]~input_o\,
	combout => \Mult3|mult_core|romout[0][5]~3_combout\);

-- Location: LCCOMB_X110_Y8_N18
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult3|mult_core|romout[1][2]~4_combout\ & ((\Mult3|mult_core|romout[0][5]~3_combout\ & (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult3|mult_core|romout[0][5]~3_combout\ & (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult3|mult_core|romout[1][2]~4_combout\ & ((\Mult3|mult_core|romout[0][5]~3_combout\ & 
-- (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult3|mult_core|romout[0][5]~3_combout\ & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult3|mult_core|romout[1][2]~4_combout\ & (!\Mult3|mult_core|romout[0][5]~3_combout\ & !\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult3|mult_core|romout[1][2]~4_combout\ & ((!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult3|mult_core|romout[0][5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|romout[1][2]~4_combout\,
	datab => \Mult3|mult_core|romout[0][5]~3_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X114_Y8_N10
\Yout[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[6]~25_combout\ = (\DFFlocal3|qt\(6) & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Yout[5]~24\ & VCC)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Yout[5]~24\)))) # (!\DFFlocal3|qt\(6) & 
-- ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Yout[5]~24\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Yout[5]~24\) # (GND)))))
-- \Yout[6]~26\ = CARRY((\DFFlocal3|qt\(6) & (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & !\Yout[5]~24\)) # (!\DFFlocal3|qt\(6) & ((!\Yout[5]~24\) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal3|qt\(6),
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Yout[5]~24\,
	combout => \Yout[6]~25_combout\,
	cout => \Yout[6]~26\);

-- Location: FF_X114_Y8_N11
\Yout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[6]~reg0_q\);

-- Location: LCCOMB_X110_Y8_N20
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult3|mult_core|romout[1][3]~5_combout\ $ (\Mult3|mult_core|romout[0][5]~3_combout\ $ (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult3|mult_core|romout[1][3]~5_combout\ & ((\Mult3|mult_core|romout[0][5]~3_combout\) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult3|mult_core|romout[1][3]~5_combout\ & (\Mult3|mult_core|romout[0][5]~3_combout\ & !\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|romout[1][3]~5_combout\,
	datab => \Mult3|mult_core|romout[0][5]~3_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X114_Y8_N12
\Yout[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[7]~27_combout\ = ((\DFFlocal3|qt\(7) $ (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (!\Yout[6]~26\)))) # (GND)
-- \Yout[7]~28\ = CARRY((\DFFlocal3|qt\(7) & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\) # (!\Yout[6]~26\))) # (!\DFFlocal3|qt\(7) & (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\Yout[6]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal3|qt\(7),
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Yout[6]~26\,
	combout => \Yout[7]~27_combout\,
	cout => \Yout[7]~28\);

-- Location: FF_X114_Y8_N13
\Yout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[7]~reg0_q\);

-- Location: LCCOMB_X110_Y8_N22
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult3|mult_core|romout[1][4]~6_combout\ & ((\Mult3|mult_core|romout[0][5]~3_combout\ & (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult3|mult_core|romout[0][5]~3_combout\ & (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult3|mult_core|romout[1][4]~6_combout\ & ((\Mult3|mult_core|romout[0][5]~3_combout\ & 
-- (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult3|mult_core|romout[0][5]~3_combout\ & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult3|mult_core|romout[1][4]~6_combout\ & (!\Mult3|mult_core|romout[0][5]~3_combout\ & !\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult3|mult_core|romout[1][4]~6_combout\ & ((!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult3|mult_core|romout[0][5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|romout[1][4]~6_combout\,
	datab => \Mult3|mult_core|romout[0][5]~3_combout\,
	datad => VCC,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X114_Y8_N14
\Yout[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[8]~29_combout\ = (\DFFlocal3|qt\(8) & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Yout[7]~28\ & VCC)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Yout[7]~28\)))) # (!\DFFlocal3|qt\(8) & 
-- ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\Yout[7]~28\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Yout[7]~28\) # (GND)))))
-- \Yout[8]~30\ = CARRY((\DFFlocal3|qt\(8) & (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\Yout[7]~28\)) # (!\DFFlocal3|qt\(8) & ((!\Yout[7]~28\) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal3|qt\(8),
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Yout[7]~28\,
	combout => \Yout[8]~29_combout\,
	cout => \Yout[8]~30\);

-- Location: FF_X114_Y8_N15
\Yout[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[8]~reg0_q\);

-- Location: IOIBUF_X115_Y8_N22
\Xin[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(7),
	o => \Xin[7]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\Xin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(5),
	o => \Xin[5]~input_o\);

-- Location: LCCOMB_X109_Y8_N16
\Mult2|mult_core|adder|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|adder|auto_generated|op_1~6_combout\ = (\Xin[4]~input_o\ & ((\Mult2|mult_core|adder|auto_generated|op_1~5\) # (GND))) # (!\Xin[4]~input_o\ & (!\Mult2|mult_core|adder|auto_generated|op_1~5\))
-- \Mult2|mult_core|adder|auto_generated|op_1~7\ = CARRY((\Xin[4]~input_o\) # (!\Mult2|mult_core|adder|auto_generated|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Xin[4]~input_o\,
	datad => VCC,
	cin => \Mult2|mult_core|adder|auto_generated|op_1~5\,
	combout => \Mult2|mult_core|adder|auto_generated|op_1~6_combout\,
	cout => \Mult2|mult_core|adder|auto_generated|op_1~7\);

-- Location: LCCOMB_X109_Y8_N24
\Mult2|mult_core|adder|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult2|mult_core|adder|auto_generated|op_1~14_combout\ = \Mult2|mult_core|adder|auto_generated|op_1~13\ $ (!\Xin[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Xin[7]~input_o\,
	cin => \Mult2|mult_core|adder|auto_generated|op_1~13\,
	combout => \Mult2|mult_core|adder|auto_generated|op_1~14_combout\);

-- Location: IOIBUF_X109_Y0_N1
\Xin[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(6),
	o => \Xin[6]~input_o\);

-- Location: FF_X111_Y8_N29
\DFFlocal1|qt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \Xin[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal1|qt\(8));

-- Location: FF_X111_Y8_N25
\DFFlocal1|qt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \Xin[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal1|qt\(7));

-- Location: FF_X112_Y8_N9
\DFFlocal1|qt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \Xin[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal1|qt\(6));

-- Location: IOIBUF_X107_Y0_N8
\Xin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Xin(3),
	o => \Xin[3]~input_o\);

-- Location: LCCOMB_X111_Y8_N4
\DFFlocal1|qt[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal1|qt[5]~feeder_combout\ = \Xin[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Xin[3]~input_o\,
	combout => \DFFlocal1|qt[5]~feeder_combout\);

-- Location: FF_X111_Y8_N5
\DFFlocal1|qt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal1|qt[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal1|qt\(5));

-- Location: FF_X112_Y8_N3
\DFFlocal1|qt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	asdata => \Xin[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal1|qt\(4));

-- Location: LCCOMB_X109_Y8_N4
\Mult1|mult_core|romout[0][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][3]~1_combout\ = \Xin[3]~input_o\ $ (((\Xin[1]~input_o\ & (!\Xin[2]~input_o\ & \Xin[0]~input_o\)) # (!\Xin[1]~input_o\ & (\Xin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[3]~input_o\,
	datab => \Xin[1]~input_o\,
	datac => \Xin[2]~input_o\,
	datad => \Xin[0]~input_o\,
	combout => \Mult1|mult_core|romout[0][3]~1_combout\);

-- Location: LCCOMB_X112_Y8_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\DFFlocal1|qt\(5) & (\Add0~5\ & VCC)) # (!\DFFlocal1|qt\(5) & (!\Add0~5\)))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\DFFlocal1|qt\(5) 
-- & (!\Add0~5\)) # (!\DFFlocal1|qt\(5) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\DFFlocal1|qt\(5) & !\Add0~5\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((!\Add0~5\) # (!\DFFlocal1|qt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \DFFlocal1|qt\(5),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X112_Y8_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (\DFFlocal1|qt\(6) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\DFFlocal1|qt\(6)) # (!\Add0~7\))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\DFFlocal1|qt\(6) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \DFFlocal1|qt\(6),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X112_Y8_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\DFFlocal1|qt\(7) & (\Add0~9\ & VCC)) # (!\DFFlocal1|qt\(7) & (!\Add0~9\)))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\DFFlocal1|qt\(7) 
-- & (!\Add0~9\)) # (!\DFFlocal1|qt\(7) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\DFFlocal1|qt\(7) & !\Add0~9\)) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((!\Add0~9\) # (!\DFFlocal1|qt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \DFFlocal1|qt\(7),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X112_Y8_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (\DFFlocal1|qt\(8) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\DFFlocal1|qt\(8)) # (!\Add0~11\))) # (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\DFFlocal1|qt\(8) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \DFFlocal1|qt\(8),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X112_Y8_N25
\DFFlocal2|qt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(8));

-- Location: FF_X112_Y8_N23
\DFFlocal2|qt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(7));

-- Location: FF_X112_Y8_N21
\DFFlocal2|qt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(6));

-- Location: FF_X112_Y8_N19
\DFFlocal2|qt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(5));

-- Location: LCCOMB_X113_Y8_N18
\DFFlocal3|qt[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[9]~34_combout\ = (\DFFlocal2|qt\(9) & ((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (\DFFlocal3|qt[8]~33\ & VCC)) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (!\DFFlocal3|qt[8]~33\)))) # (!\DFFlocal2|qt\(9) & 
-- ((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (!\DFFlocal3|qt[8]~33\)) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & ((\DFFlocal3|qt[8]~33\) # (GND)))))
-- \DFFlocal3|qt[9]~35\ = CARRY((\DFFlocal2|qt\(9) & (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & !\DFFlocal3|qt[8]~33\)) # (!\DFFlocal2|qt\(9) & ((!\DFFlocal3|qt[8]~33\) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal2|qt\(9),
	datab => \Mult2|mult_core|adder|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \DFFlocal3|qt[8]~33\,
	combout => \DFFlocal3|qt[9]~34_combout\,
	cout => \DFFlocal3|qt[9]~35\);

-- Location: FF_X113_Y8_N19
\DFFlocal3|qt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[9]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(9));

-- Location: LCCOMB_X114_Y8_N16
\Yout[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[9]~31_combout\ = ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (\DFFlocal3|qt\(9) $ (!\Yout[8]~30\)))) # (GND)
-- \Yout[9]~32\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\DFFlocal3|qt\(9)) # (!\Yout[8]~30\))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\DFFlocal3|qt\(9) & !\Yout[8]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \DFFlocal3|qt\(9),
	datad => VCC,
	cin => \Yout[8]~30\,
	combout => \Yout[9]~31_combout\,
	cout => \Yout[9]~32\);

-- Location: FF_X114_Y8_N17
\Yout[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[9]~reg0_q\);

-- Location: LCCOMB_X109_Y8_N28
\Mult1|mult_core|romout[0][5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][5]~3_combout\ = (\Xin[3]~input_o\ & ((\Xin[2]~input_o\) # ((\Xin[1]~input_o\ & \Xin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[3]~input_o\,
	datab => \Xin[1]~input_o\,
	datac => \Xin[2]~input_o\,
	datad => \Xin[0]~input_o\,
	combout => \Mult1|mult_core|romout[0][5]~3_combout\);

-- Location: LCCOMB_X109_Y8_N2
\Mult1|mult_core|romout[0][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][4]~2_combout\ = (\Xin[3]~input_o\ & (!\Xin[2]~input_o\ & ((!\Xin[0]~input_o\) # (!\Xin[1]~input_o\)))) # (!\Xin[3]~input_o\ & (\Xin[1]~input_o\ & (\Xin[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[3]~input_o\,
	datab => \Xin[1]~input_o\,
	datac => \Xin[2]~input_o\,
	datad => \Xin[0]~input_o\,
	combout => \Mult1|mult_core|romout[0][4]~2_combout\);

-- Location: LCCOMB_X111_Y8_N18
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Xin[7]~input_o\ & (!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Xin[7]~input_o\ & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Xin[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[7]~input_o\,
	datad => VCC,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X111_Y8_N20
\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (!\Xin[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Xin[7]~input_o\,
	cin => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\);

-- Location: LCCOMB_X112_Y8_N28
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\DFFlocal1|qt\(10) $ (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\DFFlocal1|qt\(10) & ((\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # (!\Add0~15\))) # (!\DFFlocal1|qt\(10) & (\Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal1|qt\(10),
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X112_Y8_N29
\DFFlocal2|qt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(10));

-- Location: LCCOMB_X113_Y8_N20
\DFFlocal3|qt[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[10]~36_combout\ = ((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ $ (\DFFlocal2|qt\(10) $ (!\DFFlocal3|qt[9]~35\)))) # (GND)
-- \DFFlocal3|qt[10]~37\ = CARRY((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & ((\DFFlocal2|qt\(10)) # (!\DFFlocal3|qt[9]~35\))) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (\DFFlocal2|qt\(10) & !\DFFlocal3|qt[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~14_combout\,
	datab => \DFFlocal2|qt\(10),
	datad => VCC,
	cin => \DFFlocal3|qt[9]~35\,
	combout => \DFFlocal3|qt[10]~36_combout\,
	cout => \DFFlocal3|qt[10]~37\);

-- Location: FF_X113_Y8_N21
\DFFlocal3|qt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[10]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(10));

-- Location: LCCOMB_X114_Y8_N18
\Yout[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[10]~33_combout\ = (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\DFFlocal3|qt\(10) & (\Yout[9]~32\ & VCC)) # (!\DFFlocal3|qt\(10) & (!\Yout[9]~32\)))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- ((\DFFlocal3|qt\(10) & (!\Yout[9]~32\)) # (!\DFFlocal3|qt\(10) & ((\Yout[9]~32\) # (GND)))))
-- \Yout[10]~34\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\DFFlocal3|qt\(10) & !\Yout[9]~32\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((!\Yout[9]~32\) # (!\DFFlocal3|qt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \DFFlocal3|qt\(10),
	datad => VCC,
	cin => \Yout[9]~32\,
	combout => \Yout[10]~33_combout\,
	cout => \Yout[10]~34\);

-- Location: FF_X114_Y8_N19
\Yout[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[10]~reg0_q\);

-- Location: LCCOMB_X113_Y8_N22
\DFFlocal3|qt[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[11]~38_combout\ = (\DFFlocal2|qt\(11) & ((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (\DFFlocal3|qt[10]~37\ & VCC)) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (!\DFFlocal3|qt[10]~37\)))) # (!\DFFlocal2|qt\(11) 
-- & ((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (!\DFFlocal3|qt[10]~37\)) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & ((\DFFlocal3|qt[10]~37\) # (GND)))))
-- \DFFlocal3|qt[11]~39\ = CARRY((\DFFlocal2|qt\(11) & (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & !\DFFlocal3|qt[10]~37\)) # (!\DFFlocal2|qt\(11) & ((!\DFFlocal3|qt[10]~37\) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal2|qt\(11),
	datab => \Mult2|mult_core|adder|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \DFFlocal3|qt[10]~37\,
	combout => \DFFlocal3|qt[11]~38_combout\,
	cout => \DFFlocal3|qt[11]~39\);

-- Location: FF_X113_Y8_N23
\DFFlocal3|qt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(11));

-- Location: LCCOMB_X114_Y8_N20
\Yout[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[11]~35_combout\ = ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (\DFFlocal3|qt\(11) $ (!\Yout[10]~34\)))) # (GND)
-- \Yout[11]~36\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\DFFlocal3|qt\(11)) # (!\Yout[10]~34\))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\DFFlocal3|qt\(11) & !\Yout[10]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \DFFlocal3|qt\(11),
	datad => VCC,
	cin => \Yout[10]~34\,
	combout => \Yout[11]~35_combout\,
	cout => \Yout[11]~36\);

-- Location: FF_X114_Y8_N21
\Yout[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[11]~reg0_q\);

-- Location: LCCOMB_X111_Y8_N2
\DFFlocal1|qt[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal1|qt[10]~feeder_combout\ = \Xin[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Xin[7]~input_o\,
	combout => \DFFlocal1|qt[10]~feeder_combout\);

-- Location: FF_X111_Y8_N3
\DFFlocal1|qt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal1|qt[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal1|qt\(10));

-- Location: LCCOMB_X112_Y8_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (\Add0~17\ $ (\DFFlocal1|qt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => \DFFlocal1|qt\(10),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X112_Y8_N6
\DFFlocal2|qt[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal2|qt[12]~feeder_combout\ = \Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	combout => \DFFlocal2|qt[12]~feeder_combout\);

-- Location: FF_X112_Y8_N7
\DFFlocal2|qt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal2|qt[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(12));

-- Location: LCCOMB_X113_Y8_N24
\DFFlocal3|qt[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[12]~40_combout\ = ((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ $ (\DFFlocal2|qt\(12) $ (!\DFFlocal3|qt[11]~39\)))) # (GND)
-- \DFFlocal3|qt[12]~41\ = CARRY((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & ((\DFFlocal2|qt\(12)) # (!\DFFlocal3|qt[11]~39\))) # (!\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & (\DFFlocal2|qt\(12) & !\DFFlocal3|qt[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~14_combout\,
	datab => \DFFlocal2|qt\(12),
	datad => VCC,
	cin => \DFFlocal3|qt[11]~39\,
	combout => \DFFlocal3|qt[12]~40_combout\,
	cout => \DFFlocal3|qt[12]~41\);

-- Location: FF_X113_Y8_N25
\DFFlocal3|qt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(12));

-- Location: LCCOMB_X114_Y8_N22
\Yout[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[12]~37_combout\ = (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\DFFlocal3|qt\(12) & (\Yout[11]~36\ & VCC)) # (!\DFFlocal3|qt\(12) & (!\Yout[11]~36\)))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- ((\DFFlocal3|qt\(12) & (!\Yout[11]~36\)) # (!\DFFlocal3|qt\(12) & ((\Yout[11]~36\) # (GND)))))
-- \Yout[12]~38\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\DFFlocal3|qt\(12) & !\Yout[11]~36\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((!\Yout[11]~36\) # (!\DFFlocal3|qt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \DFFlocal3|qt\(12),
	datad => VCC,
	cin => \Yout[11]~36\,
	combout => \Yout[12]~37_combout\,
	cout => \Yout[12]~38\);

-- Location: FF_X114_Y8_N23
\Yout[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[12]~reg0_q\);

-- Location: LCCOMB_X110_Y8_N0
\Mult3|mult_core|romout[1][4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|romout[1][4]~7_combout\ = (!\Xin[7]~input_o\ & ((\Xin[5]~input_o\) # ((\Xin[6]~input_o\) # (\Xin[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Xin[5]~input_o\,
	datab => \Xin[6]~input_o\,
	datac => \Xin[4]~input_o\,
	datad => \Xin[7]~input_o\,
	combout => \Mult3|mult_core|romout[1][4]~7_combout\);

-- Location: LCCOMB_X110_Y8_N24
\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = \Mult3|mult_core|romout[0][5]~3_combout\ $ (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\ $ (!\Mult3|mult_core|romout[1][4]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult3|mult_core|romout[0][5]~3_combout\,
	datad => \Mult3|mult_core|romout[1][4]~7_combout\,
	cin => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X114_Y8_N24
\Yout[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[13]~39_combout\ = ((\DFFlocal3|qt\(13) $ (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (!\Yout[12]~38\)))) # (GND)
-- \Yout[13]~40\ = CARRY((\DFFlocal3|qt\(13) & ((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\) # (!\Yout[12]~38\))) # (!\DFFlocal3|qt\(13) & (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\Yout[12]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal3|qt\(13),
	datab => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Yout[12]~38\,
	combout => \Yout[13]~39_combout\,
	cout => \Yout[13]~40\);

-- Location: FF_X114_Y8_N25
\Yout[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[13]~reg0_q\);

-- Location: LCCOMB_X112_Y8_N4
\DFFlocal2|qt[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal2|qt[13]~feeder_combout\ = \Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	combout => \DFFlocal2|qt[13]~feeder_combout\);

-- Location: FF_X112_Y8_N5
\DFFlocal2|qt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal2|qt[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(13));

-- Location: LCCOMB_X113_Y8_N28
\DFFlocal3|qt[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[14]~44_combout\ = ((\DFFlocal2|qt\(14) $ (\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ $ (!\DFFlocal3|qt[13]~43\)))) # (GND)
-- \DFFlocal3|qt[14]~45\ = CARRY((\DFFlocal2|qt\(14) & ((\Mult2|mult_core|adder|auto_generated|op_1~14_combout\) # (!\DFFlocal3|qt[13]~43\))) # (!\DFFlocal2|qt\(14) & (\Mult2|mult_core|adder|auto_generated|op_1~14_combout\ & !\DFFlocal3|qt[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DFFlocal2|qt\(14),
	datab => \Mult2|mult_core|adder|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \DFFlocal3|qt[13]~43\,
	combout => \DFFlocal3|qt[14]~44_combout\,
	cout => \DFFlocal3|qt[14]~45\);

-- Location: FF_X113_Y8_N29
\DFFlocal3|qt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[14]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(14));

-- Location: LCCOMB_X114_Y8_N26
\Yout[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[14]~41_combout\ = (\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\DFFlocal3|qt\(14) & (\Yout[13]~40\ & VCC)) # (!\DFFlocal3|qt\(14) & (!\Yout[13]~40\)))) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- ((\DFFlocal3|qt\(14) & (!\Yout[13]~40\)) # (!\DFFlocal3|qt\(14) & ((\Yout[13]~40\) # (GND)))))
-- \Yout[14]~42\ = CARRY((\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\DFFlocal3|qt\(14) & !\Yout[13]~40\)) # (!\Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((!\Yout[13]~40\) # (!\DFFlocal3|qt\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \DFFlocal3|qt\(14),
	datad => VCC,
	cin => \Yout[13]~40\,
	combout => \Yout[14]~41_combout\,
	cout => \Yout[14]~42\);

-- Location: FF_X114_Y8_N27
\Yout[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[14]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[14]~reg0_q\);

-- Location: FF_X112_Y8_N31
\DFFlocal2|qt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal2|qt\(15));

-- Location: LCCOMB_X113_Y8_N30
\DFFlocal3|qt[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFFlocal3|qt[15]~46_combout\ = \Mult2|mult_core|adder|auto_generated|op_1~14_combout\ $ (\DFFlocal3|qt[14]~45\ $ (\DFFlocal2|qt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult2|mult_core|adder|auto_generated|op_1~14_combout\,
	datad => \DFFlocal2|qt\(15),
	cin => \DFFlocal3|qt[14]~45\,
	combout => \DFFlocal3|qt[15]~46_combout\);

-- Location: FF_X113_Y8_N31
\DFFlocal3|qt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \DFFlocal3|qt[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFlocal3|qt\(15));

-- Location: LCCOMB_X114_Y8_N28
\Yout[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Yout[15]~43_combout\ = \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (\Yout[14]~42\ $ (!\DFFlocal3|qt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => \DFFlocal3|qt\(15),
	cin => \Yout[14]~42\,
	combout => \Yout[15]~43_combout\);

-- Location: FF_X114_Y8_N29
\Yout[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkl~inputclkctrl_outclk\,
	d => \Yout[15]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Yout[15]~reg0_q\);

ww_Yout(0) <= \Yout[0]~output_o\;

ww_Yout(1) <= \Yout[1]~output_o\;

ww_Yout(2) <= \Yout[2]~output_o\;

ww_Yout(3) <= \Yout[3]~output_o\;

ww_Yout(4) <= \Yout[4]~output_o\;

ww_Yout(5) <= \Yout[5]~output_o\;

ww_Yout(6) <= \Yout[6]~output_o\;

ww_Yout(7) <= \Yout[7]~output_o\;

ww_Yout(8) <= \Yout[8]~output_o\;

ww_Yout(9) <= \Yout[9]~output_o\;

ww_Yout(10) <= \Yout[10]~output_o\;

ww_Yout(11) <= \Yout[11]~output_o\;

ww_Yout(12) <= \Yout[12]~output_o\;

ww_Yout(13) <= \Yout[13]~output_o\;

ww_Yout(14) <= \Yout[14]~output_o\;

ww_Yout(15) <= \Yout[15]~output_o\;
END structure;


