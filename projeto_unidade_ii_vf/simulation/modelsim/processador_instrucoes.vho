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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "05/30/2026 12:37:50"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rtl IS
    PORT (
	rsr : IN std_logic;
	clk : IN std_logic;
	vetor_instrucoes : IN std_logic_vector(31 DOWNTO 0);
	CODestado : OUT std_logic_vector(6 DOWNTO 0)
	);
END rtl;

-- Design Ports Information
-- vetor_instrucoes[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[3]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[4]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[5]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[6]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[7]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[10]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[11]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[12]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[13]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[14]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[15]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[18]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[19]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[20]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[21]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[22]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[23]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[26]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[27]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[28]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[29]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[30]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[31]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CODestado[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODestado[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODestado[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODestado[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODestado[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODestado[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODestado[6]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rsr	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[17]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[9]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[25]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[16]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[8]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[0]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vetor_instrucoes[24]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF rtl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rsr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_vetor_instrucoes : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CODestado : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rsr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \U2_CONTROLADOR|estado_atual.DECODIFICACAO~feeder_combout\ : std_logic;
SIGNAL \rsr~combout\ : std_logic;
SIGNAL \rsr~clkctrl_outclk\ : std_logic;
SIGNAL \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\ : std_logic;
SIGNAL \U2_CONTROLADOR|prox_estado~2_combout\ : std_logic;
SIGNAL \U2_CONTROLADOR|estado_atual.BUSCA~regout\ : std_logic;
SIGNAL \U2_CONTROLADOR|estado_atual.INICIO~feeder_combout\ : std_logic;
SIGNAL \U2_CONTROLADOR|estado_atual.INICIO~regout\ : std_logic;
SIGNAL \U1_DATAPATH|U1_PC|pc_out~1_combout\ : std_logic;
SIGNAL \U1_DATAPATH|U3_IR|instruc_out[0]~3_combout\ : std_logic;
SIGNAL \U1_DATAPATH|U1_PC|pc_out~0_combout\ : std_logic;
SIGNAL \U1_DATAPATH|U3_IR|instruc_out~0_combout\ : std_logic;
SIGNAL \U1_DATAPATH|U3_IR|instruc_out~1_combout\ : std_logic;
SIGNAL \U1_DATAPATH|U3_IR|instruc_out~2_combout\ : std_logic;
SIGNAL \U1_DATAPATH|U3_IR|instruc_out~4_combout\ : std_logic;
SIGNAL \U1_DATAPATH|U3_IR|instruc_out~5_combout\ : std_logic;
SIGNAL \U1_DATAPATH|U3_IR|instruc_out~6_combout\ : std_logic;
SIGNAL \U2_CONTROLADOR|prox_estado.EXEC_00~0_combout\ : std_logic;
SIGNAL \U2_CONTROLADOR|estado_atual.EXEC_00~regout\ : std_logic;
SIGNAL \U2_CONTROLADOR|prox_estado.EXEC_01~0_combout\ : std_logic;
SIGNAL \U2_CONTROLADOR|estado_atual.EXEC_01~regout\ : std_logic;
SIGNAL \U2_CONTROLADOR|prox_estado.EXEC_10~0_combout\ : std_logic;
SIGNAL \U2_CONTROLADOR|estado_atual.EXEC_10~regout\ : std_logic;
SIGNAL \U2_CONTROLADOR|prox_estado.EXEC_11~0_combout\ : std_logic;
SIGNAL \U2_CONTROLADOR|estado_atual.EXEC_11~regout\ : std_logic;
SIGNAL \U1_DATAPATH|U1_PC|pc_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1_DATAPATH|U3_IR|instruc_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \vetor_instrucoes~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_rsr <= rsr;
ww_clk <= clk;
ww_vetor_instrucoes <= vetor_instrucoes;
CODestado <= ww_CODestado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rsr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rsr~combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[9]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(9),
	combout => \vetor_instrucoes~combout\(9));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[25]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(25),
	combout => \vetor_instrucoes~combout\(25));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[0]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(0),
	combout => \vetor_instrucoes~combout\(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[24]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(24),
	combout => \vetor_instrucoes~combout\(24));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X34_Y35_N2
\U2_CONTROLADOR|estado_atual.DECODIFICACAO~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_CONTROLADOR|estado_atual.DECODIFICACAO~feeder_combout\ = \U2_CONTROLADOR|estado_atual.BUSCA~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2_CONTROLADOR|estado_atual.BUSCA~regout\,
	combout => \U2_CONTROLADOR|estado_atual.DECODIFICACAO~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rsr~I\ : cycloneii_io
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
	padio => ww_rsr,
	combout => \rsr~combout\);

-- Location: CLKCTRL_G1
\rsr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rsr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rsr~clkctrl_outclk\);

-- Location: LCFF_X34_Y35_N3
\U2_CONTROLADOR|estado_atual.DECODIFICACAO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U2_CONTROLADOR|estado_atual.DECODIFICACAO~feeder_combout\,
	aclr => \rsr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\);

-- Location: LCCOMB_X34_Y35_N20
\U2_CONTROLADOR|prox_estado~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_CONTROLADOR|prox_estado~2_combout\ = (!\U2_CONTROLADOR|estado_atual.BUSCA~regout\ & !\U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_CONTROLADOR|estado_atual.BUSCA~regout\,
	datad => \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\,
	combout => \U2_CONTROLADOR|prox_estado~2_combout\);

-- Location: LCFF_X34_Y35_N21
\U2_CONTROLADOR|estado_atual.BUSCA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U2_CONTROLADOR|prox_estado~2_combout\,
	aclr => \rsr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_CONTROLADOR|estado_atual.BUSCA~regout\);

-- Location: LCCOMB_X34_Y35_N12
\U2_CONTROLADOR|estado_atual.INICIO~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_CONTROLADOR|estado_atual.INICIO~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U2_CONTROLADOR|estado_atual.INICIO~feeder_combout\);

-- Location: LCFF_X34_Y35_N13
\U2_CONTROLADOR|estado_atual.INICIO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U2_CONTROLADOR|estado_atual.INICIO~feeder_combout\,
	aclr => \rsr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_CONTROLADOR|estado_atual.INICIO~regout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[17]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(17),
	combout => \vetor_instrucoes~combout\(17));

-- Location: LCCOMB_X34_Y35_N4
\U1_DATAPATH|U1_PC|pc_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_DATAPATH|U1_PC|pc_out~1_combout\ = (\U2_CONTROLADOR|estado_atual.INICIO~regout\ & !\U1_DATAPATH|U1_PC|pc_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_CONTROLADOR|estado_atual.INICIO~regout\,
	datac => \U1_DATAPATH|U1_PC|pc_out\(0),
	combout => \U1_DATAPATH|U1_PC|pc_out~1_combout\);

-- Location: LCCOMB_X34_Y35_N22
\U1_DATAPATH|U3_IR|instruc_out[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_DATAPATH|U3_IR|instruc_out[0]~3_combout\ = \U2_CONTROLADOR|estado_atual.BUSCA~regout\ $ (!\U2_CONTROLADOR|estado_atual.INICIO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_CONTROLADOR|estado_atual.BUSCA~regout\,
	datad => \U2_CONTROLADOR|estado_atual.INICIO~regout\,
	combout => \U1_DATAPATH|U3_IR|instruc_out[0]~3_combout\);

-- Location: LCFF_X34_Y35_N5
\U1_DATAPATH|U1_PC|pc_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_DATAPATH|U1_PC|pc_out~1_combout\,
	ena => \U1_DATAPATH|U3_IR|instruc_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_DATAPATH|U1_PC|pc_out\(0));

-- Location: LCCOMB_X34_Y35_N18
\U1_DATAPATH|U1_PC|pc_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_DATAPATH|U1_PC|pc_out~0_combout\ = (\U2_CONTROLADOR|estado_atual.INICIO~regout\ & (\U1_DATAPATH|U1_PC|pc_out\(0) $ (\U1_DATAPATH|U1_PC|pc_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_DATAPATH|U1_PC|pc_out\(0),
	datac => \U1_DATAPATH|U1_PC|pc_out\(1),
	datad => \U2_CONTROLADOR|estado_atual.INICIO~regout\,
	combout => \U1_DATAPATH|U1_PC|pc_out~0_combout\);

-- Location: LCFF_X34_Y35_N19
\U1_DATAPATH|U1_PC|pc_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_DATAPATH|U1_PC|pc_out~0_combout\,
	ena => \U1_DATAPATH|U3_IR|instruc_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_DATAPATH|U1_PC|pc_out\(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[1]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(1),
	combout => \vetor_instrucoes~combout\(1));

-- Location: LCCOMB_X34_Y35_N6
\U1_DATAPATH|U3_IR|instruc_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_DATAPATH|U3_IR|instruc_out~0_combout\ = (\U1_DATAPATH|U1_PC|pc_out\(0) & ((\vetor_instrucoes~combout\(9)) # ((\U1_DATAPATH|U1_PC|pc_out\(1))))) # (!\U1_DATAPATH|U1_PC|pc_out\(0) & (((\vetor_instrucoes~combout\(1) & !\U1_DATAPATH|U1_PC|pc_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vetor_instrucoes~combout\(9),
	datab => \vetor_instrucoes~combout\(1),
	datac => \U1_DATAPATH|U1_PC|pc_out\(0),
	datad => \U1_DATAPATH|U1_PC|pc_out\(1),
	combout => \U1_DATAPATH|U3_IR|instruc_out~0_combout\);

-- Location: LCCOMB_X34_Y35_N28
\U1_DATAPATH|U3_IR|instruc_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_DATAPATH|U3_IR|instruc_out~1_combout\ = (\U1_DATAPATH|U1_PC|pc_out\(1) & ((\U1_DATAPATH|U3_IR|instruc_out~0_combout\ & (\vetor_instrucoes~combout\(25))) # (!\U1_DATAPATH|U3_IR|instruc_out~0_combout\ & ((\vetor_instrucoes~combout\(17)))))) # 
-- (!\U1_DATAPATH|U1_PC|pc_out\(1) & (((\U1_DATAPATH|U3_IR|instruc_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vetor_instrucoes~combout\(25),
	datab => \vetor_instrucoes~combout\(17),
	datac => \U1_DATAPATH|U1_PC|pc_out\(1),
	datad => \U1_DATAPATH|U3_IR|instruc_out~0_combout\,
	combout => \U1_DATAPATH|U3_IR|instruc_out~1_combout\);

-- Location: LCCOMB_X34_Y35_N24
\U1_DATAPATH|U3_IR|instruc_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_DATAPATH|U3_IR|instruc_out~2_combout\ = (\U2_CONTROLADOR|estado_atual.INICIO~regout\ & \U1_DATAPATH|U3_IR|instruc_out~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_CONTROLADOR|estado_atual.INICIO~regout\,
	datad => \U1_DATAPATH|U3_IR|instruc_out~1_combout\,
	combout => \U1_DATAPATH|U3_IR|instruc_out~2_combout\);

-- Location: LCFF_X34_Y35_N25
\U1_DATAPATH|U3_IR|instruc_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_DATAPATH|U3_IR|instruc_out~2_combout\,
	ena => \U1_DATAPATH|U3_IR|instruc_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_DATAPATH|U3_IR|instruc_out\(1));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[16]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(16),
	combout => \vetor_instrucoes~combout\(16));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[8]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(8),
	combout => \vetor_instrucoes~combout\(8));

-- Location: LCCOMB_X34_Y35_N0
\U1_DATAPATH|U3_IR|instruc_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_DATAPATH|U3_IR|instruc_out~4_combout\ = (\U1_DATAPATH|U1_PC|pc_out\(0) & (((\vetor_instrucoes~combout\(8)) # (\U1_DATAPATH|U1_PC|pc_out\(1))))) # (!\U1_DATAPATH|U1_PC|pc_out\(0) & (\vetor_instrucoes~combout\(0) & ((!\U1_DATAPATH|U1_PC|pc_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vetor_instrucoes~combout\(0),
	datab => \vetor_instrucoes~combout\(8),
	datac => \U1_DATAPATH|U1_PC|pc_out\(0),
	datad => \U1_DATAPATH|U1_PC|pc_out\(1),
	combout => \U1_DATAPATH|U3_IR|instruc_out~4_combout\);

-- Location: LCCOMB_X34_Y35_N30
\U1_DATAPATH|U3_IR|instruc_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_DATAPATH|U3_IR|instruc_out~5_combout\ = (\U1_DATAPATH|U1_PC|pc_out\(1) & ((\U1_DATAPATH|U3_IR|instruc_out~4_combout\ & (\vetor_instrucoes~combout\(24))) # (!\U1_DATAPATH|U3_IR|instruc_out~4_combout\ & ((\vetor_instrucoes~combout\(16)))))) # 
-- (!\U1_DATAPATH|U1_PC|pc_out\(1) & (((\U1_DATAPATH|U3_IR|instruc_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vetor_instrucoes~combout\(24),
	datab => \vetor_instrucoes~combout\(16),
	datac => \U1_DATAPATH|U1_PC|pc_out\(1),
	datad => \U1_DATAPATH|U3_IR|instruc_out~4_combout\,
	combout => \U1_DATAPATH|U3_IR|instruc_out~5_combout\);

-- Location: LCCOMB_X34_Y35_N14
\U1_DATAPATH|U3_IR|instruc_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1_DATAPATH|U3_IR|instruc_out~6_combout\ = (\U2_CONTROLADOR|estado_atual.INICIO~regout\ & \U1_DATAPATH|U3_IR|instruc_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_CONTROLADOR|estado_atual.INICIO~regout\,
	datad => \U1_DATAPATH|U3_IR|instruc_out~5_combout\,
	combout => \U1_DATAPATH|U3_IR|instruc_out~6_combout\);

-- Location: LCFF_X34_Y35_N15
\U1_DATAPATH|U3_IR|instruc_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U1_DATAPATH|U3_IR|instruc_out~6_combout\,
	ena => \U1_DATAPATH|U3_IR|instruc_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1_DATAPATH|U3_IR|instruc_out\(0));

-- Location: LCCOMB_X34_Y35_N8
\U2_CONTROLADOR|prox_estado.EXEC_00~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_CONTROLADOR|prox_estado.EXEC_00~0_combout\ = (!\U1_DATAPATH|U3_IR|instruc_out\(1) & (!\U1_DATAPATH|U3_IR|instruc_out\(0) & \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_DATAPATH|U3_IR|instruc_out\(1),
	datac => \U1_DATAPATH|U3_IR|instruc_out\(0),
	datad => \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\,
	combout => \U2_CONTROLADOR|prox_estado.EXEC_00~0_combout\);

-- Location: LCFF_X34_Y35_N9
\U2_CONTROLADOR|estado_atual.EXEC_00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U2_CONTROLADOR|prox_estado.EXEC_00~0_combout\,
	aclr => \rsr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_CONTROLADOR|estado_atual.EXEC_00~regout\);

-- Location: LCCOMB_X34_Y35_N26
\U2_CONTROLADOR|prox_estado.EXEC_01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_CONTROLADOR|prox_estado.EXEC_01~0_combout\ = (!\U1_DATAPATH|U3_IR|instruc_out\(1) & (\U1_DATAPATH|U3_IR|instruc_out\(0) & \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_DATAPATH|U3_IR|instruc_out\(1),
	datac => \U1_DATAPATH|U3_IR|instruc_out\(0),
	datad => \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\,
	combout => \U2_CONTROLADOR|prox_estado.EXEC_01~0_combout\);

-- Location: LCFF_X34_Y35_N27
\U2_CONTROLADOR|estado_atual.EXEC_01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U2_CONTROLADOR|prox_estado.EXEC_01~0_combout\,
	aclr => \rsr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_CONTROLADOR|estado_atual.EXEC_01~regout\);

-- Location: LCCOMB_X34_Y35_N16
\U2_CONTROLADOR|prox_estado.EXEC_10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_CONTROLADOR|prox_estado.EXEC_10~0_combout\ = (\U1_DATAPATH|U3_IR|instruc_out\(1) & (!\U1_DATAPATH|U3_IR|instruc_out\(0) & \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_DATAPATH|U3_IR|instruc_out\(1),
	datac => \U1_DATAPATH|U3_IR|instruc_out\(0),
	datad => \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\,
	combout => \U2_CONTROLADOR|prox_estado.EXEC_10~0_combout\);

-- Location: LCFF_X34_Y35_N17
\U2_CONTROLADOR|estado_atual.EXEC_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U2_CONTROLADOR|prox_estado.EXEC_10~0_combout\,
	aclr => \rsr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_CONTROLADOR|estado_atual.EXEC_10~regout\);

-- Location: LCCOMB_X34_Y35_N10
\U2_CONTROLADOR|prox_estado.EXEC_11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U2_CONTROLADOR|prox_estado.EXEC_11~0_combout\ = (\U1_DATAPATH|U3_IR|instruc_out\(1) & (\U1_DATAPATH|U3_IR|instruc_out\(0) & \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_DATAPATH|U3_IR|instruc_out\(1),
	datac => \U1_DATAPATH|U3_IR|instruc_out\(0),
	datad => \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\,
	combout => \U2_CONTROLADOR|prox_estado.EXEC_11~0_combout\);

-- Location: LCFF_X34_Y35_N11
\U2_CONTROLADOR|estado_atual.EXEC_11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U2_CONTROLADOR|prox_estado.EXEC_11~0_combout\,
	aclr => \rsr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U2_CONTROLADOR|estado_atual.EXEC_11~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[2]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[3]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(3));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[4]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(4));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[5]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(5));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[6]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(6));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[7]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(7));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[10]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(10));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[11]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(11));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[12]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(12));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[13]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(13));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[14]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(14));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[15]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(15));

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[18]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(18));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[19]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(19));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[20]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(20));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[21]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(21));

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[22]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(22));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[23]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(23));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[26]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(26));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[27]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(27));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[28]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(28));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[29]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(29));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[30]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(30));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vetor_instrucoes[31]~I\ : cycloneii_io
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
	padio => ww_vetor_instrucoes(31));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODestado[0]~I\ : cycloneii_io
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
	datain => \U2_CONTROLADOR|estado_atual.BUSCA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODestado(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODestado[1]~I\ : cycloneii_io
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
	datain => \U2_CONTROLADOR|estado_atual.DECODIFICACAO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODestado(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODestado[2]~I\ : cycloneii_io
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
	datain => \U2_CONTROLADOR|estado_atual.EXEC_00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODestado(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODestado[3]~I\ : cycloneii_io
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
	datain => \U2_CONTROLADOR|estado_atual.EXEC_01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODestado(3));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODestado[4]~I\ : cycloneii_io
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
	datain => \U2_CONTROLADOR|estado_atual.EXEC_10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODestado(4));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODestado[5]~I\ : cycloneii_io
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
	datain => \U2_CONTROLADOR|estado_atual.EXEC_11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODestado(5));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODestado[6]~I\ : cycloneii_io
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
	padio => ww_CODestado(6));
END structure;


