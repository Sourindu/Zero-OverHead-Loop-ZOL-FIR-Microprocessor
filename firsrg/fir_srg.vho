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

-- DATE "03/08/2016 03:05:13"

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

ENTITY 	fir_srg IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x : IN std_logic_vector(7 DOWNTO 0);
	y : OUT std_logic_vector(7 DOWNTO 0)
	);
END fir_srg;

-- Design Ports Information
-- y[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir_srg IS
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
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \tap[3][0]~q\ : std_logic;
SIGNAL \tap[3][1]~q\ : std_logic;
SIGNAL \tap[3][2]~q\ : std_logic;
SIGNAL \tap[3][4]~q\ : std_logic;
SIGNAL \tap[3][6]~q\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \tap[1][1]~q\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \tap[1][7]~q\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \y[0]~reg0_q\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \y[1]~reg0_q\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \y[2]~reg0_q\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \y[3]~reg0_q\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \tap[1][5]~q\ : std_logic;
SIGNAL \tap[2][5]~q\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \tap[1][4]~q\ : std_logic;
SIGNAL \tap[2][4]~q\ : std_logic;
SIGNAL \tap[1][2]~q\ : std_logic;
SIGNAL \tap[2][2]~q\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \tap[1][0]~feeder_combout\ : std_logic;
SIGNAL \tap[1][0]~q\ : std_logic;
SIGNAL \tap[2][0]~q\ : std_logic;
SIGNAL \Add7~1_cout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \tap[2][7]~feeder_combout\ : std_logic;
SIGNAL \tap[2][7]~q\ : std_logic;
SIGNAL \Add9~1_cout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \tap[2][1]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \tap[1][3]~q\ : std_logic;
SIGNAL \tap[2][3]~feeder_combout\ : std_logic;
SIGNAL \tap[2][3]~q\ : std_logic;
SIGNAL \tap[3][3]~q\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \y[4]~reg0_q\ : std_logic;
SIGNAL \tap[3][5]~q\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \y[5]~reg0_q\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \tap[1][6]~q\ : std_logic;
SIGNAL \tap[2][6]~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \y[6]~reg0_q\ : std_logic;
SIGNAL \tap[3][7]~q\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \y[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_x <= x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: LCCOMB_X48_Y55_N10
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\tap[1][2]~q\ & (!\Add3~1_cout\)) # (!\tap[1][2]~q\ & ((\Add3~1_cout\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1_cout\) # (!\tap[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][2]~q\,
	datad => VCC,
	cin => \Add3~1_cout\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X50_Y55_N18
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\tap[2][2]~q\ & (!\Add9~1_cout\)) # (!\tap[2][2]~q\ & ((\Add9~1_cout\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1_cout\) # (!\tap[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][2]~q\,
	datad => VCC,
	cin => \Add9~1_cout\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X50_Y55_N0
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\Add9~2_combout\ & (\Add7~2_combout\ $ (VCC))) # (!\Add9~2_combout\ & (\Add7~2_combout\ & VCC))
-- \Add8~1\ = CARRY((\Add9~2_combout\ & \Add7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add7~2_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X47_Y55_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\tap[1][0]~q\ & (\tap[1][1]~q\ $ (VCC))) # (!\tap[1][0]~q\ & (\tap[1][1]~q\ & VCC))
-- \Add0~1\ = CARRY((\tap[1][0]~q\ & \tap[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][0]~q\,
	datab => \tap[1][1]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X48_Y55_N12
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\tap[1][3]~q\ & (\Add3~3\ $ (GND))) # (!\tap[1][3]~q\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\tap[1][3]~q\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][3]~q\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X49_Y55_N6
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\tap[2][2]~q\ & (\Add7~3\ $ (GND))) # (!\tap[2][2]~q\ & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((\tap[2][2]~q\ & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][2]~q\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X50_Y55_N2
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add7~4_combout\ & ((\Add9~4_combout\ & (\Add8~1\ & VCC)) # (!\Add9~4_combout\ & (!\Add8~1\)))) # (!\Add7~4_combout\ & ((\Add9~4_combout\ & (!\Add8~1\)) # (!\Add9~4_combout\ & ((\Add8~1\) # (GND)))))
-- \Add8~3\ = CARRY((\Add7~4_combout\ & (!\Add9~4_combout\ & !\Add8~1\)) # (!\Add7~4_combout\ & ((!\Add8~1\) # (!\Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add9~4_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X43_Y55_N2
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\tap[3][1]~q\ & ((\Add10~2_combout\ & (!\Add11~1\)) # (!\Add10~2_combout\ & ((\Add11~1\) # (GND))))) # (!\tap[3][1]~q\ & ((\Add10~2_combout\ & (\Add11~1\ & VCC)) # (!\Add10~2_combout\ & (!\Add11~1\))))
-- \Add11~3\ = CARRY((\tap[3][1]~q\ & ((!\Add11~1\) # (!\Add10~2_combout\))) # (!\tap[3][1]~q\ & (!\Add10~2_combout\ & !\Add11~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[3][1]~q\,
	datab => \Add10~2_combout\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X47_Y55_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\tap[1][2]~q\ & ((\tap[1][1]~q\ & (\Add0~1\ & VCC)) # (!\tap[1][1]~q\ & (!\Add0~1\)))) # (!\tap[1][2]~q\ & ((\tap[1][1]~q\ & (!\Add0~1\)) # (!\tap[1][1]~q\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\tap[1][2]~q\ & (!\tap[1][1]~q\ & !\Add0~1\)) # (!\tap[1][2]~q\ & ((!\Add0~1\) # (!\tap[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][2]~q\,
	datab => \tap[1][1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X47_Y55_N20
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\tap[1][3]~q\ & (!\Add1~5\)) # (!\tap[1][3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\tap[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X48_Y55_N14
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\tap[1][4]~q\ & (!\Add3~5\)) # (!\tap[1][4]~q\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\tap[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][4]~q\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X46_Y55_N20
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Add3~6_combout\ $ (\Add2~4_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Add3~6_combout\ & ((\Add2~4_combout\) # (!\Add4~3\))) # (!\Add3~6_combout\ & (\Add2~4_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X50_Y55_N22
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\tap[2][4]~q\ & (!\Add9~5\)) # (!\tap[2][4]~q\ & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!\tap[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][4]~q\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X50_Y55_N4
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((\Add9~6_combout\ $ (\Add7~6_combout\ $ (!\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((\Add9~6_combout\ & ((\Add7~6_combout\) # (!\Add8~3\))) # (!\Add9~6_combout\ & (\Add7~6_combout\ & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \Add7~6_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X43_Y55_N4
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = ((\tap[3][2]~q\ $ (\Add10~4_combout\ $ (\Add11~3\)))) # (GND)
-- \Add11~5\ = CARRY((\tap[3][2]~q\ & (\Add10~4_combout\ & !\Add11~3\)) # (!\tap[3][2]~q\ & ((\Add10~4_combout\) # (!\Add11~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[3][2]~q\,
	datab => \Add10~4_combout\,
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X47_Y55_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\tap[1][2]~q\ $ (\tap[1][3]~q\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\tap[1][2]~q\ & ((\tap[1][3]~q\) # (!\Add0~3\))) # (!\tap[1][2]~q\ & (\tap[1][3]~q\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][2]~q\,
	datab => \tap[1][3]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X46_Y55_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add0~4_combout\ & ((\Add1~8_combout\ & (\Add2~5\ & VCC)) # (!\Add1~8_combout\ & (!\Add2~5\)))) # (!\Add0~4_combout\ & ((\Add1~8_combout\ & (!\Add2~5\)) # (!\Add1~8_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add0~4_combout\ & (!\Add1~8_combout\ & !\Add2~5\)) # (!\Add0~4_combout\ & ((!\Add2~5\) # (!\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X45_Y55_N20
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\tap[2][3]~q\ & ((\Add5~4_combout\ & (\Add6~5\ & VCC)) # (!\Add5~4_combout\ & (!\Add6~5\)))) # (!\tap[2][3]~q\ & ((\Add5~4_combout\ & (!\Add6~5\)) # (!\Add5~4_combout\ & ((\Add6~5\) # (GND)))))
-- \Add6~7\ = CARRY((\tap[2][3]~q\ & (!\Add5~4_combout\ & !\Add6~5\)) # (!\tap[2][3]~q\ & ((!\Add6~5\) # (!\Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][3]~q\,
	datab => \Add5~4_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X49_Y55_N10
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\tap[2][4]~q\ & (\Add7~7\ $ (GND))) # (!\tap[2][4]~q\ & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((\tap[2][4]~q\ & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][4]~q\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X43_Y55_N22
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Add6~6_combout\ & ((\Add8~6_combout\ & (\Add10~5\ & VCC)) # (!\Add8~6_combout\ & (!\Add10~5\)))) # (!\Add6~6_combout\ & ((\Add8~6_combout\ & (!\Add10~5\)) # (!\Add8~6_combout\ & ((\Add10~5\) # (GND)))))
-- \Add10~7\ = CARRY((\Add6~6_combout\ & (!\Add8~6_combout\ & !\Add10~5\)) # (!\Add6~6_combout\ & ((!\Add10~5\) # (!\Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => \Add8~6_combout\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X43_Y55_N6
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\Add10~6_combout\ & ((\tap[3][3]~q\ & (!\Add11~5\)) # (!\tap[3][3]~q\ & (\Add11~5\ & VCC)))) # (!\Add10~6_combout\ & ((\tap[3][3]~q\ & ((\Add11~5\) # (GND))) # (!\tap[3][3]~q\ & (!\Add11~5\))))
-- \Add11~7\ = CARRY((\Add10~6_combout\ & (\tap[3][3]~q\ & !\Add11~5\)) # (!\Add10~6_combout\ & ((\tap[3][3]~q\) # (!\Add11~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \tap[3][3]~q\,
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X47_Y55_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\tap[1][4]~q\ & ((\tap[1][3]~q\ & (\Add0~5\ & VCC)) # (!\tap[1][3]~q\ & (!\Add0~5\)))) # (!\tap[1][4]~q\ & ((\tap[1][3]~q\ & (!\Add0~5\)) # (!\tap[1][3]~q\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\tap[1][4]~q\ & (!\tap[1][3]~q\ & !\Add0~5\)) # (!\tap[1][4]~q\ & ((!\Add0~5\) # (!\tap[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][4]~q\,
	datab => \tap[1][3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X47_Y55_N24
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\tap[1][5]~q\ & (!\Add1~9\)) # (!\tap[1][5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\tap[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X46_Y55_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add0~6_combout\ $ (\Add1~10_combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add0~6_combout\ & ((\Add1~10_combout\) # (!\Add2~7\))) # (!\Add0~6_combout\ & (\Add1~10_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X48_Y55_N18
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\tap[1][6]~q\ & (!\Add3~9\)) # (!\tap[1][6]~q\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\tap[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][6]~q\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X45_Y55_N6
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\tap[2][3]~q\ & ((\Add4~8_combout\ & (\Add5~5\ & VCC)) # (!\Add4~8_combout\ & (!\Add5~5\)))) # (!\tap[2][3]~q\ & ((\Add4~8_combout\ & (!\Add5~5\)) # (!\Add4~8_combout\ & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((\tap[2][3]~q\ & (!\Add4~8_combout\ & !\Add5~5\)) # (!\tap[2][3]~q\ & ((!\Add5~5\) # (!\Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][3]~q\,
	datab => \Add4~8_combout\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X45_Y55_N22
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((\Add5~6_combout\ $ (\tap[2][4]~q\ $ (!\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((\Add5~6_combout\ & ((\tap[2][4]~q\) # (!\Add6~7\))) # (!\Add5~6_combout\ & (\tap[2][4]~q\ & !\Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \tap[2][4]~q\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X50_Y55_N26
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\tap[2][6]~q\ & (!\Add9~9\)) # (!\tap[2][6]~q\ & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!\tap[2][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][6]~q\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X49_Y55_N12
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\tap[2][5]~q\ & (!\Add7~9\)) # (!\tap[2][5]~q\ & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!\tap[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][5]~q\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X47_Y55_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\tap[1][4]~q\ $ (\tap[1][5]~q\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\tap[1][4]~q\ & ((\tap[1][5]~q\) # (!\Add0~7\))) # (!\tap[1][4]~q\ & (\tap[1][5]~q\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][4]~q\,
	datab => \tap[1][5]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X47_Y55_N26
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\tap[1][6]~q\ & (\Add1~11\ $ (GND))) # (!\tap[1][6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\tap[1][6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X46_Y55_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add1~12_combout\ & ((\Add0~8_combout\ & (\Add2~9\ & VCC)) # (!\Add0~8_combout\ & (!\Add2~9\)))) # (!\Add1~12_combout\ & ((\Add0~8_combout\ & (!\Add2~9\)) # (!\Add0~8_combout\ & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((\Add1~12_combout\ & (!\Add0~8_combout\ & !\Add2~9\)) # (!\Add1~12_combout\ & ((!\Add2~9\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X48_Y55_N20
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\tap[1][7]~q\ & (\Add3~11\ $ (GND))) # (!\tap[1][7]~q\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\tap[1][7]~q\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][7]~q\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X46_Y55_N26
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add2~10_combout\ & ((\Add3~12_combout\ & (\Add4~9\ & VCC)) # (!\Add3~12_combout\ & (!\Add4~9\)))) # (!\Add2~10_combout\ & ((\Add3~12_combout\ & (!\Add4~9\)) # (!\Add3~12_combout\ & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((\Add2~10_combout\ & (!\Add3~12_combout\ & !\Add4~9\)) # (!\Add2~10_combout\ & ((!\Add4~9\) # (!\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X45_Y55_N8
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((\tap[2][4]~q\ $ (\Add4~10_combout\ $ (!\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((\tap[2][4]~q\ & ((\Add4~10_combout\) # (!\Add5~7\))) # (!\tap[2][4]~q\ & (\Add4~10_combout\ & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][4]~q\,
	datab => \Add4~10_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X45_Y55_N24
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\tap[2][5]~q\ & ((\Add5~8_combout\ & (\Add6~9\ & VCC)) # (!\Add5~8_combout\ & (!\Add6~9\)))) # (!\tap[2][5]~q\ & ((\Add5~8_combout\ & (!\Add6~9\)) # (!\Add5~8_combout\ & ((\Add6~9\) # (GND)))))
-- \Add6~11\ = CARRY((\tap[2][5]~q\ & (!\Add5~8_combout\ & !\Add6~9\)) # (!\tap[2][5]~q\ & ((!\Add6~9\) # (!\Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][5]~q\,
	datab => \Add5~8_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X50_Y55_N28
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\tap[2][7]~q\ & (\Add9~11\ $ (GND))) # (!\tap[2][7]~q\ & (!\Add9~11\ & VCC))
-- \Add9~13\ = CARRY((\tap[2][7]~q\ & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][7]~q\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X49_Y55_N14
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\tap[2][6]~q\ & (\Add7~11\ $ (GND))) # (!\tap[2][6]~q\ & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((\tap[2][6]~q\ & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][6]~q\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X50_Y55_N10
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add7~12_combout\ & ((\Add9~12_combout\ & (\Add8~9\ & VCC)) # (!\Add9~12_combout\ & (!\Add8~9\)))) # (!\Add7~12_combout\ & ((\Add9~12_combout\ & (!\Add8~9\)) # (!\Add9~12_combout\ & ((\Add8~9\) # (GND)))))
-- \Add8~11\ = CARRY((\Add7~12_combout\ & (!\Add9~12_combout\ & !\Add8~9\)) # (!\Add7~12_combout\ & ((!\Add8~9\) # (!\Add9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => \Add9~12_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X43_Y55_N26
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\Add6~10_combout\ & ((\Add8~10_combout\ & (\Add10~9\ & VCC)) # (!\Add8~10_combout\ & (!\Add10~9\)))) # (!\Add6~10_combout\ & ((\Add8~10_combout\ & (!\Add10~9\)) # (!\Add8~10_combout\ & ((\Add10~9\) # (GND)))))
-- \Add10~11\ = CARRY((\Add6~10_combout\ & (!\Add8~10_combout\ & !\Add10~9\)) # (!\Add6~10_combout\ & ((!\Add10~9\) # (!\Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X47_Y55_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\tap[1][6]~q\ & ((\tap[1][5]~q\ & (\Add0~9\ & VCC)) # (!\tap[1][5]~q\ & (!\Add0~9\)))) # (!\tap[1][6]~q\ & ((\tap[1][5]~q\ & (!\Add0~9\)) # (!\tap[1][5]~q\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\tap[1][6]~q\ & (!\tap[1][5]~q\ & !\Add0~9\)) # (!\tap[1][6]~q\ & ((!\Add0~9\) # (!\tap[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][6]~q\,
	datab => \tap[1][5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X47_Y55_N28
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\tap[1][7]~q\ & (!\Add1~13\)) # (!\tap[1][7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\tap[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X46_Y55_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add0~10_combout\ $ (\Add1~14_combout\ $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Add0~10_combout\ & ((\Add1~14_combout\) # (!\Add2~11\))) # (!\Add0~10_combout\ & (\Add1~14_combout\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X48_Y55_N22
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \Add3~13\ $ (\tap[1][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tap[1][7]~q\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X46_Y55_N28
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((\Add2~12_combout\ $ (\Add3~14_combout\ $ (!\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((\Add2~12_combout\ & ((\Add3~14_combout\) # (!\Add4~11\))) # (!\Add2~12_combout\ & (\Add3~14_combout\ & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add3~14_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X45_Y55_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\tap[2][5]~q\ & ((\Add4~12_combout\ & (\Add5~9\ & VCC)) # (!\Add4~12_combout\ & (!\Add5~9\)))) # (!\tap[2][5]~q\ & ((\Add4~12_combout\ & (!\Add5~9\)) # (!\Add4~12_combout\ & ((\Add5~9\) # (GND)))))
-- \Add5~11\ = CARRY((\tap[2][5]~q\ & (!\Add4~12_combout\ & !\Add5~9\)) # (!\tap[2][5]~q\ & ((!\Add5~9\) # (!\Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][5]~q\,
	datab => \Add4~12_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X45_Y55_N26
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = ((\Add5~10_combout\ $ (\tap[2][6]~q\ $ (!\Add6~11\)))) # (GND)
-- \Add6~13\ = CARRY((\Add5~10_combout\ & ((\tap[2][6]~q\) # (!\Add6~11\))) # (!\Add5~10_combout\ & (\tap[2][6]~q\ & !\Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \tap[2][6]~q\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X50_Y55_N30
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = \Add9~13\ $ (\tap[2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tap[2][7]~q\,
	cin => \Add9~13\,
	combout => \Add9~14_combout\);

-- Location: LCCOMB_X49_Y55_N16
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\tap[2][7]~q\ & (!\Add7~13\)) # (!\tap[2][7]~q\ & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!\tap[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][7]~q\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X50_Y55_N12
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = ((\Add9~14_combout\ $ (\Add7~14_combout\ $ (!\Add8~11\)))) # (GND)
-- \Add8~13\ = CARRY((\Add9~14_combout\ & ((\Add7~14_combout\) # (!\Add8~11\))) # (!\Add9~14_combout\ & (\Add7~14_combout\ & !\Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datab => \Add7~14_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X43_Y55_N28
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = ((\Add8~12_combout\ $ (\Add6~12_combout\ $ (!\Add10~11\)))) # (GND)
-- \Add10~13\ = CARRY((\Add8~12_combout\ & ((\Add6~12_combout\) # (!\Add10~11\))) # (!\Add8~12_combout\ & (\Add6~12_combout\ & !\Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~12_combout\,
	datab => \Add6~12_combout\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X47_Y55_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \tap[1][6]~q\ $ (\Add0~11\ $ (!\tap[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][6]~q\,
	datad => \tap[1][7]~q\,
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X47_Y55_N30
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (!\tap[1][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tap[1][7]~q\,
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X46_Y55_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add1~16_combout\ $ (\Add0~12_combout\ $ (\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add0~12_combout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X46_Y55_N30
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = \Add2~14_combout\ $ (\Add4~13\ $ (\Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datad => \Add3~14_combout\,
	cin => \Add4~13\,
	combout => \Add4~14_combout\);

-- Location: LCCOMB_X45_Y55_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = \tap[2][6]~q\ $ (\Add5~11\ $ (!\Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][6]~q\,
	datad => \Add4~14_combout\,
	cin => \Add5~11\,
	combout => \Add5~12_combout\);

-- Location: LCCOMB_X45_Y55_N28
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = \tap[2][7]~q\ $ (\Add6~13\ $ (\Add5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][7]~q\,
	datad => \Add5~12_combout\,
	cin => \Add6~13\,
	combout => \Add6~14_combout\);

-- Location: LCCOMB_X49_Y55_N18
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = \Add7~15\ $ (!\tap[2][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tap[2][7]~q\,
	cin => \Add7~15\,
	combout => \Add7~16_combout\);

-- Location: LCCOMB_X50_Y55_N14
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = \Add9~14_combout\ $ (\Add8~13\ $ (\Add7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datad => \Add7~16_combout\,
	cin => \Add8~13\,
	combout => \Add8~14_combout\);

-- Location: LCCOMB_X43_Y55_N30
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = \Add8~14_combout\ $ (\Add10~13\ $ (\Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~14_combout\,
	datad => \Add6~14_combout\,
	cin => \Add10~13\,
	combout => \Add10~14_combout\);

-- Location: LCCOMB_X49_Y55_N0
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\tap[2][1]~q\) # (\tap[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tap[2][1]~q\,
	datad => \tap[2][0]~q\,
	combout => \WideOr1~combout\);

-- Location: FF_X43_Y55_N1
\tap[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[2][0]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][0]~q\);

-- Location: FF_X43_Y55_N3
\tap[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[2][1]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][1]~q\);

-- Location: FF_X43_Y55_N5
\tap[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[2][2]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][2]~q\);

-- Location: FF_X43_Y55_N9
\tap[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[2][4]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][4]~q\);

-- Location: FF_X43_Y55_N13
\tap[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[2][6]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][6]~q\);

-- Location: IOOBUF_X40_Y73_N9
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0]~reg0_q\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1]~reg0_q\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2]~reg0_q\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~reg0_q\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[4]~reg0_q\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[5]~reg0_q\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[6]~reg0_q\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[7]~reg0_q\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

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

-- Location: IOIBUF_X49_Y73_N22
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

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

-- Location: FF_X47_Y55_N17
\tap[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][1]~q\);

-- Location: IOIBUF_X47_Y73_N15
\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: FF_X47_Y55_N15
\tap[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][7]~q\);

-- Location: LCCOMB_X47_Y55_N14
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY((\tap[1][0]~q\ & \tap[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][0]~q\,
	datab => \tap[1][7]~q\,
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X47_Y55_N16
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\tap[1][1]~q\ & (!\Add1~1_cout\)) # (!\tap[1][1]~q\ & ((\Add1~1_cout\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1_cout\) # (!\tap[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][1]~q\,
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X46_Y55_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\tap[1][0]~q\ & (\Add1~2_combout\ $ (VCC))) # (!\tap[1][0]~q\ & (\Add1~2_combout\ & VCC))
-- \Add2~1\ = CARRY((\tap[1][0]~q\ & \Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][0]~q\,
	datab => \Add1~2_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X46_Y55_N16
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Add3~2_combout\ & (\Add2~0_combout\ $ (VCC))) # (!\Add3~2_combout\ & (\Add2~0_combout\ & VCC))
-- \Add4~1\ = CARRY((\Add3~2_combout\ & \Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add2~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X45_Y55_N14
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\tap[2][0]~q\ & (\Add4~0_combout\ $ (VCC))) # (!\tap[2][0]~q\ & (\Add4~0_combout\ & VCC))
-- \Add6~1\ = CARRY((\tap[2][0]~q\ & \Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][0]~q\,
	datab => \Add4~0_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X43_Y55_N16
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = (\Add8~0_combout\ & (\Add6~0_combout\ $ (VCC))) # (!\Add8~0_combout\ & (\Add6~0_combout\ & VCC))
-- \Add10~1\ = CARRY((\Add8~0_combout\ & \Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \Add6~0_combout\,
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X43_Y55_N0
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (\tap[3][0]~q\ & (\Add10~0_combout\ $ (VCC))) # (!\tap[3][0]~q\ & ((\Add10~0_combout\) # (GND)))
-- \Add11~1\ = CARRY((\Add10~0_combout\) # (!\tap[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[3][0]~q\,
	datab => \Add10~0_combout\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X42_Y55_N8
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = (\x[0]~input_o\ & (\Add11~0_combout\ $ (VCC))) # (!\x[0]~input_o\ & ((\Add11~0_combout\) # (GND)))
-- \Add12~1\ = CARRY((\Add11~0_combout\) # (!\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \Add11~0_combout\,
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: FF_X42_Y55_N9
\y[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add12~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0]~reg0_q\);

-- Location: LCCOMB_X42_Y55_N10
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (\Add11~2_combout\ & ((\x[1]~input_o\ & (!\Add12~1\)) # (!\x[1]~input_o\ & (\Add12~1\ & VCC)))) # (!\Add11~2_combout\ & ((\x[1]~input_o\ & ((\Add12~1\) # (GND))) # (!\x[1]~input_o\ & (!\Add12~1\))))
-- \Add12~3\ = CARRY((\Add11~2_combout\ & (\x[1]~input_o\ & !\Add12~1\)) # (!\Add11~2_combout\ & ((\x[1]~input_o\) # (!\Add12~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \x[1]~input_o\,
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: FF_X42_Y55_N11
\y[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add12~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1]~reg0_q\);

-- Location: IOIBUF_X49_Y73_N15
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X42_Y55_N12
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = ((\Add11~4_combout\ $ (\x[2]~input_o\ $ (\Add12~3\)))) # (GND)
-- \Add12~5\ = CARRY((\Add11~4_combout\ & ((!\Add12~3\) # (!\x[2]~input_o\))) # (!\Add11~4_combout\ & (!\x[2]~input_o\ & !\Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datab => \x[2]~input_o\,
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: FF_X42_Y55_N13
\y[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add12~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2]~reg0_q\);

-- Location: IOIBUF_X45_Y73_N1
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X42_Y55_N14
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (\Add11~6_combout\ & ((\x[3]~input_o\ & (!\Add12~5\)) # (!\x[3]~input_o\ & (\Add12~5\ & VCC)))) # (!\Add11~6_combout\ & ((\x[3]~input_o\ & ((\Add12~5\) # (GND))) # (!\x[3]~input_o\ & (!\Add12~5\))))
-- \Add12~7\ = CARRY((\Add11~6_combout\ & (\x[3]~input_o\ & !\Add12~5\)) # (!\Add11~6_combout\ & ((\x[3]~input_o\) # (!\Add12~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \x[3]~input_o\,
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: FF_X42_Y55_N15
\y[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add12~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3]~reg0_q\);

-- Location: IOIBUF_X52_Y73_N1
\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: FF_X47_Y55_N25
\tap[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][5]~q\);

-- Location: FF_X50_Y55_N25
\tap[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[1][5]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][5]~q\);

-- Location: IOIBUF_X45_Y73_N8
\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: FF_X47_Y55_N23
\tap[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][4]~q\);

-- Location: FF_X50_Y55_N23
\tap[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[1][4]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][4]~q\);

-- Location: FF_X47_Y55_N19
\tap[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][2]~q\);

-- Location: FF_X50_Y55_N19
\tap[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[1][2]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][2]~q\);

-- Location: IOIBUF_X52_Y73_N22
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X48_Y55_N4
\tap[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap[1][0]~feeder_combout\ = \x[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[0]~input_o\,
	combout => \tap[1][0]~feeder_combout\);

-- Location: FF_X48_Y55_N5
\tap[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap[1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][0]~q\);

-- Location: FF_X49_Y55_N25
\tap[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[1][0]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][0]~q\);

-- Location: LCCOMB_X49_Y55_N2
\Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~1_cout\ = CARRY((\tap[2][7]~q\ & \tap[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][7]~q\,
	datab => \tap[2][0]~q\,
	datad => VCC,
	cout => \Add7~1_cout\);

-- Location: LCCOMB_X49_Y55_N4
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\tap[2][1]~q\ & (!\Add7~1_cout\)) # (!\tap[2][1]~q\ & ((\Add7~1_cout\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1_cout\) # (!\tap[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][1]~q\,
	datad => VCC,
	cin => \Add7~1_cout\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X49_Y55_N8
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\tap[2][3]~q\ & (!\Add7~5\)) # (!\tap[2][3]~q\ & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\tap[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][3]~q\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X49_Y55_N28
\tap[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap[2][7]~feeder_combout\ = \tap[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tap[1][7]~q\,
	combout => \tap[2][7]~feeder_combout\);

-- Location: FF_X49_Y55_N29
\tap[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap[2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][7]~q\);

-- Location: LCCOMB_X50_Y55_N16
\Add9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~1_cout\ = CARRY((\WideOr1~combout\ & \tap[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~combout\,
	datab => \tap[2][7]~q\,
	datad => VCC,
	cout => \Add9~1_cout\);

-- Location: LCCOMB_X50_Y55_N20
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\tap[2][3]~q\ & (\Add9~3\ $ (GND))) # (!\tap[2][3]~q\ & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((\tap[2][3]~q\ & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][3]~q\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X50_Y55_N24
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\tap[2][5]~q\ & (\Add9~7\ $ (GND))) # (!\tap[2][5]~q\ & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((\tap[2][5]~q\ & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[2][5]~q\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X50_Y55_N6
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add7~8_combout\ & ((\Add9~8_combout\ & (\Add8~5\ & VCC)) # (!\Add9~8_combout\ & (!\Add8~5\)))) # (!\Add7~8_combout\ & ((\Add9~8_combout\ & (!\Add8~5\)) # (!\Add9~8_combout\ & ((\Add8~5\) # (GND)))))
-- \Add8~7\ = CARRY((\Add7~8_combout\ & (!\Add9~8_combout\ & !\Add8~5\)) # (!\Add7~8_combout\ & ((!\Add8~5\) # (!\Add9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add9~8_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X50_Y55_N8
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = ((\Add9~10_combout\ $ (\Add7~10_combout\ $ (!\Add8~7\)))) # (GND)
-- \Add8~9\ = CARRY((\Add9~10_combout\ & ((\Add7~10_combout\) # (!\Add8~7\))) # (!\Add9~10_combout\ & (\Add7~10_combout\ & !\Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: FF_X49_Y55_N23
\tap[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[1][1]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][1]~q\);

-- Location: LCCOMB_X47_Y55_N18
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\tap[1][2]~q\ & (\Add1~3\ $ (GND))) # (!\tap[1][2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\tap[1][2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X46_Y55_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add0~0_combout\ & ((\Add1~4_combout\ & (\Add2~1\ & VCC)) # (!\Add1~4_combout\ & (!\Add2~1\)))) # (!\Add0~0_combout\ & ((\Add1~4_combout\ & (!\Add2~1\)) # (!\Add1~4_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add0~0_combout\ & (!\Add1~4_combout\ & !\Add2~1\)) # (!\Add0~0_combout\ & ((!\Add2~1\) # (!\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X46_Y55_N18
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add3~4_combout\ & ((\Add2~2_combout\ & (\Add4~1\ & VCC)) # (!\Add2~2_combout\ & (!\Add4~1\)))) # (!\Add3~4_combout\ & ((\Add2~2_combout\ & (!\Add4~1\)) # (!\Add2~2_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\Add3~4_combout\ & (!\Add2~2_combout\ & !\Add4~1\)) # (!\Add3~4_combout\ & ((!\Add4~1\) # (!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X45_Y55_N0
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\tap[2][0]~q\ & (\Add4~2_combout\ $ (VCC))) # (!\tap[2][0]~q\ & (\Add4~2_combout\ & VCC))
-- \Add5~1\ = CARRY((\tap[2][0]~q\ & \Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][0]~q\,
	datab => \Add4~2_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X45_Y55_N2
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add4~4_combout\ & ((\tap[2][1]~q\ & (\Add5~1\ & VCC)) # (!\tap[2][1]~q\ & (!\Add5~1\)))) # (!\Add4~4_combout\ & ((\tap[2][1]~q\ & (!\Add5~1\)) # (!\tap[2][1]~q\ & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\Add4~4_combout\ & (!\tap[2][1]~q\ & !\Add5~1\)) # (!\Add4~4_combout\ & ((!\Add5~1\) # (!\tap[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \tap[2][1]~q\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X45_Y55_N16
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\tap[2][1]~q\ & ((\Add5~0_combout\ & (\Add6~1\ & VCC)) # (!\Add5~0_combout\ & (!\Add6~1\)))) # (!\tap[2][1]~q\ & ((\Add5~0_combout\ & (!\Add6~1\)) # (!\Add5~0_combout\ & ((\Add6~1\) # (GND)))))
-- \Add6~3\ = CARRY((\tap[2][1]~q\ & (!\Add5~0_combout\ & !\Add6~1\)) # (!\tap[2][1]~q\ & ((!\Add6~1\) # (!\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][1]~q\,
	datab => \Add5~0_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X45_Y55_N18
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\tap[2][2]~q\ $ (\Add5~2_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\tap[2][2]~q\ & ((\Add5~2_combout\) # (!\Add6~3\))) # (!\tap[2][2]~q\ & (\Add5~2_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][2]~q\,
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X43_Y55_N18
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\Add8~2_combout\ & ((\Add6~2_combout\ & (\Add10~1\ & VCC)) # (!\Add6~2_combout\ & (!\Add10~1\)))) # (!\Add8~2_combout\ & ((\Add6~2_combout\ & (!\Add10~1\)) # (!\Add6~2_combout\ & ((\Add10~1\) # (GND)))))
-- \Add10~3\ = CARRY((\Add8~2_combout\ & (!\Add6~2_combout\ & !\Add10~1\)) # (!\Add8~2_combout\ & ((!\Add10~1\) # (!\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X43_Y55_N20
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = ((\Add8~4_combout\ $ (\Add6~4_combout\ $ (!\Add10~3\)))) # (GND)
-- \Add10~5\ = CARRY((\Add8~4_combout\ & ((\Add6~4_combout\) # (!\Add10~3\))) # (!\Add8~4_combout\ & (\Add6~4_combout\ & !\Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \Add6~4_combout\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X43_Y55_N24
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = ((\Add6~8_combout\ $ (\Add8~8_combout\ $ (!\Add10~7\)))) # (GND)
-- \Add10~9\ = CARRY((\Add6~8_combout\ & ((\Add8~8_combout\) # (!\Add10~7\))) # (!\Add6~8_combout\ & (\Add8~8_combout\ & !\Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: FF_X47_Y55_N21
\tap[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][3]~q\);

-- Location: LCCOMB_X49_Y55_N26
\tap[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tap[2][3]~feeder_combout\ = \tap[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tap[1][3]~q\,
	combout => \tap[2][3]~feeder_combout\);

-- Location: FF_X49_Y55_N27
\tap[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tap[2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][3]~q\);

-- Location: FF_X43_Y55_N7
\tap[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[2][3]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][3]~q\);

-- Location: LCCOMB_X43_Y55_N8
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = ((\tap[3][4]~q\ $ (\Add10~8_combout\ $ (\Add11~7\)))) # (GND)
-- \Add11~9\ = CARRY((\tap[3][4]~q\ & (\Add10~8_combout\ & !\Add11~7\)) # (!\tap[3][4]~q\ & ((\Add10~8_combout\) # (!\Add11~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[3][4]~q\,
	datab => \Add10~8_combout\,
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X42_Y55_N16
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = ((\x[4]~input_o\ $ (\Add11~8_combout\ $ (\Add12~7\)))) # (GND)
-- \Add12~9\ = CARRY((\x[4]~input_o\ & (\Add11~8_combout\ & !\Add12~7\)) # (!\x[4]~input_o\ & ((\Add11~8_combout\) # (!\Add12~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datab => \Add11~8_combout\,
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: FF_X42_Y55_N17
\y[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add12~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[4]~reg0_q\);

-- Location: FF_X43_Y55_N11
\tap[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[2][5]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][5]~q\);

-- Location: LCCOMB_X43_Y55_N10
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\Add10~10_combout\ & ((\tap[3][5]~q\ & (!\Add11~9\)) # (!\tap[3][5]~q\ & (\Add11~9\ & VCC)))) # (!\Add10~10_combout\ & ((\tap[3][5]~q\ & ((\Add11~9\) # (GND))) # (!\tap[3][5]~q\ & (!\Add11~9\))))
-- \Add11~11\ = CARRY((\Add10~10_combout\ & (\tap[3][5]~q\ & !\Add11~9\)) # (!\Add10~10_combout\ & ((\tap[3][5]~q\) # (!\Add11~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~10_combout\,
	datab => \tap[3][5]~q\,
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X42_Y55_N18
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (\x[5]~input_o\ & ((\Add11~10_combout\ & (!\Add12~9\)) # (!\Add11~10_combout\ & ((\Add12~9\) # (GND))))) # (!\x[5]~input_o\ & ((\Add11~10_combout\ & (\Add12~9\ & VCC)) # (!\Add11~10_combout\ & (!\Add12~9\))))
-- \Add12~11\ = CARRY((\x[5]~input_o\ & ((!\Add12~9\) # (!\Add11~10_combout\))) # (!\x[5]~input_o\ & (!\Add11~10_combout\ & !\Add12~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datab => \Add11~10_combout\,
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: FF_X42_Y55_N19
\y[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add12~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[5]~reg0_q\);

-- Location: IOIBUF_X47_Y73_N1
\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: FF_X47_Y55_N27
\tap[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[1][6]~q\);

-- Location: FF_X50_Y55_N27
\tap[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[1][6]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[2][6]~q\);

-- Location: LCCOMB_X48_Y55_N2
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\tap[1][1]~q\) # (\tap[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tap[1][1]~q\,
	datad => \tap[1][0]~q\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X48_Y55_N8
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY((\tap[1][7]~q\ & \WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][7]~q\,
	datab => \WideOr0~combout\,
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X48_Y55_N16
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\tap[1][5]~q\ & (\Add3~7\ $ (GND))) # (!\tap[1][5]~q\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\tap[1][5]~q\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tap[1][5]~q\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X47_Y55_N22
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\tap[1][4]~q\ & (\Add1~7\ $ (GND))) # (!\tap[1][4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\tap[1][4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[1][4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X46_Y55_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Add1~6_combout\ $ (\Add0~2_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Add1~6_combout\ & ((\Add0~2_combout\) # (!\Add2~3\))) # (!\Add1~6_combout\ & (\Add0~2_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X46_Y55_N22
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add2~6_combout\ & ((\Add3~8_combout\ & (\Add4~5\ & VCC)) # (!\Add3~8_combout\ & (!\Add4~5\)))) # (!\Add2~6_combout\ & ((\Add3~8_combout\ & (!\Add4~5\)) # (!\Add3~8_combout\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\Add2~6_combout\ & (!\Add3~8_combout\ & !\Add4~5\)) # (!\Add2~6_combout\ & ((!\Add4~5\) # (!\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X46_Y55_N24
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Add3~10_combout\ $ (\Add2~8_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Add3~10_combout\ & ((\Add2~8_combout\) # (!\Add4~7\))) # (!\Add3~10_combout\ & (\Add2~8_combout\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X45_Y55_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\tap[2][2]~q\ $ (\Add4~6_combout\ $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\tap[2][2]~q\ & ((\Add4~6_combout\) # (!\Add5~3\))) # (!\tap[2][2]~q\ & (\Add4~6_combout\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[2][2]~q\,
	datab => \Add4~6_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X43_Y55_N12
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = ((\tap[3][6]~q\ $ (\Add10~12_combout\ $ (\Add11~11\)))) # (GND)
-- \Add11~13\ = CARRY((\tap[3][6]~q\ & (\Add10~12_combout\ & !\Add11~11\)) # (!\tap[3][6]~q\ & ((\Add10~12_combout\) # (!\Add11~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tap[3][6]~q\,
	datab => \Add10~12_combout\,
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X42_Y55_N20
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = ((\x[6]~input_o\ $ (\Add11~12_combout\ $ (\Add12~11\)))) # (GND)
-- \Add12~13\ = CARRY((\x[6]~input_o\ & (\Add11~12_combout\ & !\Add12~11\)) # (!\x[6]~input_o\ & ((\Add11~12_combout\) # (!\Add12~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \Add11~12_combout\,
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: FF_X42_Y55_N21
\y[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add12~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[6]~reg0_q\);

-- Location: FF_X43_Y55_N15
\tap[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tap[2][7]~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tap[3][7]~q\);

-- Location: LCCOMB_X43_Y55_N14
\Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = \Add10~14_combout\ $ (\tap[3][7]~q\ $ (!\Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~14_combout\,
	datab => \tap[3][7]~q\,
	cin => \Add11~13\,
	combout => \Add11~14_combout\);

-- Location: LCCOMB_X42_Y55_N22
\Add12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = \x[7]~input_o\ $ (\Add12~13\ $ (!\Add11~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \x[7]~input_o\,
	datad => \Add11~14_combout\,
	cin => \Add12~13\,
	combout => \Add12~14_combout\);

-- Location: FF_X42_Y55_N23
\y[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add12~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[7]~reg0_q\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;
END structure;


