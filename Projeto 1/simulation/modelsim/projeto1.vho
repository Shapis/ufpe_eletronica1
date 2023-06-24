-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/23/2023 22:45:22"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	buzzer_1760hz IS
    PORT (
	beep : OUT std_logic;
	FPGA_CLK : IN std_logic
	);
END buzzer_1760hz;

-- Design Ports Information
-- beep	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF buzzer_1760hz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_beep : std_logic;
SIGNAL ww_FPGA_CLK : std_logic;
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst~q\ : std_logic;
SIGNAL \inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst8|inst~q\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst2|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst2|inst~q\ : std_logic;
SIGNAL \inst4|inst~0_combout\ : std_logic;
SIGNAL \inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst4|inst~q\ : std_logic;
SIGNAL \inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst4|inst7~q\ : std_logic;
SIGNAL \inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst4|inst8~q\ : std_logic;
SIGNAL \inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst4|inst9~q\ : std_logic;
SIGNAL \inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst4|inst13~combout\ : std_logic;
SIGNAL \inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst4|inst14~q\ : std_logic;
SIGNAL \inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst4|inst17~q\ : std_logic;
SIGNAL \inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst4|inst19~q\ : std_logic;
SIGNAL \inst4|inst20~combout\ : std_logic;
SIGNAL \inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst4|inst21~q\ : std_logic;
SIGNAL \inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst4|inst29~combout\ : std_logic;
SIGNAL \inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst4~q\ : std_logic;
SIGNAL \inst4|ALT_INV_inst29~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

beep <= ww_beep;
ww_FPGA_CLK <= FPGA_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst4|ALT_INV_inst29~combout\ <= NOT \inst4|inst29~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N2
\beep~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4~q\,
	devoe => ww_devoe,
	o => \beep~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\FPGA_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_CLK,
	o => \FPGA_CLK~input_o\);

-- Location: LCCOMB_X1_Y17_N18
\inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst~0_combout\ = !\inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|inst~q\,
	combout => \inst|inst|inst~0_combout\);

-- Location: LCCOMB_X1_Y17_N0
\inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst~feeder_combout\ = \inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|inst~0_combout\,
	combout => \inst|inst|inst~feeder_combout\);

-- Location: FF_X1_Y17_N1
\inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~input_o\,
	d => \inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst~q\);

-- Location: LCCOMB_X1_Y17_N2
\inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst~0_combout\ = !\inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|inst~q\,
	combout => \inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X1_Y17_N6
\inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst~feeder_combout\ = \inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|inst~0_combout\,
	combout => \inst|inst2|inst~feeder_combout\);

-- Location: FF_X1_Y17_N7
\inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst~q\,
	d => \inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst~q\);

-- Location: LCCOMB_X2_Y17_N28
\inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst~0_combout\ = !\inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst~q\,
	combout => \inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X2_Y17_N20
\inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst~feeder_combout\ = \inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|inst~0_combout\,
	combout => \inst|inst3|inst~feeder_combout\);

-- Location: FF_X2_Y17_N21
\inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst2|inst~q\,
	d => \inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst~q\);

-- Location: LCCOMB_X3_Y17_N10
\inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst~0_combout\ = !\inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst~q\,
	combout => \inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X3_Y17_N16
\inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst~feeder_combout\ = \inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst~0_combout\,
	combout => \inst|inst4|inst~feeder_combout\);

-- Location: FF_X3_Y17_N17
\inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst3|inst~q\,
	d => \inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst~q\);

-- Location: LCCOMB_X3_Y21_N18
\inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|inst~0_combout\ = !\inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|inst~q\,
	combout => \inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X3_Y21_N4
\inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|inst~feeder_combout\ = \inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst5|inst~0_combout\,
	combout => \inst|inst5|inst~feeder_combout\);

-- Location: FF_X3_Y21_N5
\inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst4|inst~q\,
	d => \inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|inst~q\);

-- Location: LCCOMB_X3_Y21_N10
\inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|inst~0_combout\ = !\inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|inst~q\,
	combout => \inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X3_Y21_N6
\inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|inst~feeder_combout\ = \inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|inst~0_combout\,
	combout => \inst|inst6|inst~feeder_combout\);

-- Location: FF_X3_Y21_N7
\inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst5|inst~q\,
	d => \inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|inst~q\);

-- Location: LCCOMB_X4_Y21_N30
\inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst~0_combout\ = !\inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst7|inst~q\,
	combout => \inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X4_Y21_N26
\inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst~feeder_combout\ = \inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst7|inst~0_combout\,
	combout => \inst|inst7|inst~feeder_combout\);

-- Location: FF_X4_Y21_N27
\inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|inst~q\,
	d => \inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7|inst~q\);

-- Location: LCCOMB_X4_Y21_N28
\inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst8|inst~0_combout\ = !\inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst8|inst~q\,
	combout => \inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X4_Y21_N10
\inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst8|inst~feeder_combout\ = \inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|inst~0_combout\,
	combout => \inst|inst8|inst~feeder_combout\);

-- Location: FF_X4_Y21_N11
\inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst7|inst~q\,
	d => \inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst8|inst~q\);

-- Location: LCCOMB_X7_Y21_N18
\inst1|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = !\inst1|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	combout => \inst1|inst~0_combout\);

-- Location: LCCOMB_X7_Y21_N16
\inst1|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst~feeder_combout\ = \inst1|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~0_combout\,
	combout => \inst1|inst~feeder_combout\);

-- Location: FF_X7_Y21_N17
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst8|inst~q\,
	d => \inst1|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X7_Y21_N24
\inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst~0_combout\ = !\inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst~q\,
	combout => \inst2|inst~0_combout\);

-- Location: LCCOMB_X7_Y21_N2
\inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst~feeder_combout\ = \inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~0_combout\,
	combout => \inst2|inst~feeder_combout\);

-- Location: FF_X7_Y21_N3
\inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst~q\,
	d => \inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst~q\);

-- Location: LCCOMB_X8_Y21_N8
\inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~0_combout\ = !\inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst~q\,
	combout => \inst4|inst~0_combout\);

-- Location: LCCOMB_X8_Y21_N4
\inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~feeder_combout\ = \inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst~0_combout\,
	combout => \inst4|inst~feeder_combout\);

-- Location: FF_X8_Y21_N5
\inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	d => \inst4|inst~feeder_combout\,
	clrn => \inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst~q\);

-- Location: LCCOMB_X8_Y21_N2
\inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7~0_combout\ = \inst4|inst7~q\ $ (\inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datad => \inst4|inst~q\,
	combout => \inst4|inst7~0_combout\);

-- Location: FF_X8_Y21_N31
\inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	asdata => \inst4|inst7~0_combout\,
	clrn => \inst4|ALT_INV_inst29~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst7~q\);

-- Location: LCCOMB_X8_Y21_N0
\inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst8~0_combout\ = \inst4|inst8~q\ $ (((\inst4|inst7~q\ & \inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datac => \inst4|inst8~q\,
	datad => \inst4|inst~q\,
	combout => \inst4|inst8~0_combout\);

-- Location: FF_X8_Y21_N1
\inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	d => \inst4|inst8~0_combout\,
	clrn => \inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8~q\);

-- Location: LCCOMB_X8_Y21_N18
\inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst9~0_combout\ = \inst4|inst9~q\ $ (((\inst4|inst7~q\ & (\inst4|inst~q\ & \inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst~q\,
	datac => \inst4|inst9~q\,
	datad => \inst4|inst8~q\,
	combout => \inst4|inst9~0_combout\);

-- Location: FF_X8_Y21_N19
\inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	d => \inst4|inst9~0_combout\,
	clrn => \inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst9~q\);

-- Location: LCCOMB_X8_Y21_N22
\inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst29~0_combout\ = (\inst4|inst7~q\ & (\inst4|inst8~q\ & (!\inst4|inst~q\ & \inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst8~q\,
	datac => \inst4|inst~q\,
	datad => \inst4|inst9~q\,
	combout => \inst4|inst29~0_combout\);

-- Location: LCCOMB_X8_Y21_N14
\inst4|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst13~combout\ = (\inst4|inst7~q\ & (\inst4|inst~q\ & (\inst4|inst9~q\ & \inst4|inst8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7~q\,
	datab => \inst4|inst~q\,
	datac => \inst4|inst9~q\,
	datad => \inst4|inst8~q\,
	combout => \inst4|inst13~combout\);

-- Location: LCCOMB_X8_Y21_N26
\inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst14~0_combout\ = \inst4|inst13~combout\ $ (\inst4|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst13~combout\,
	datac => \inst4|inst14~q\,
	combout => \inst4|inst14~0_combout\);

-- Location: FF_X8_Y21_N27
\inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	d => \inst4|inst14~0_combout\,
	clrn => \inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst14~q\);

-- Location: LCCOMB_X8_Y21_N12
\inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst17~0_combout\ = \inst4|inst17~q\ $ (((\inst4|inst13~combout\ & \inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst13~combout\,
	datac => \inst4|inst17~q\,
	datad => \inst4|inst14~q\,
	combout => \inst4|inst17~0_combout\);

-- Location: FF_X8_Y21_N13
\inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	d => \inst4|inst17~0_combout\,
	clrn => \inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst17~q\);

-- Location: LCCOMB_X8_Y21_N10
\inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst19~0_combout\ = \inst4|inst19~q\ $ (((\inst4|inst14~q\ & (\inst4|inst13~combout\ & \inst4|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst14~q\,
	datab => \inst4|inst13~combout\,
	datac => \inst4|inst19~q\,
	datad => \inst4|inst17~q\,
	combout => \inst4|inst19~0_combout\);

-- Location: FF_X8_Y21_N11
\inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	d => \inst4|inst19~0_combout\,
	clrn => \inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst19~q\);

-- Location: LCCOMB_X8_Y21_N28
\inst4|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst20~combout\ = (\inst4|inst17~q\ & (\inst4|inst13~combout\ & (\inst4|inst14~q\ & \inst4|inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst17~q\,
	datab => \inst4|inst13~combout\,
	datac => \inst4|inst14~q\,
	datad => \inst4|inst19~q\,
	combout => \inst4|inst20~combout\);

-- Location: LCCOMB_X8_Y21_N16
\inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst21~0_combout\ = \inst4|inst20~combout\ $ (\inst4|inst21~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst20~combout\,
	datac => \inst4|inst21~q\,
	combout => \inst4|inst21~0_combout\);

-- Location: FF_X8_Y21_N17
\inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	d => \inst4|inst21~0_combout\,
	clrn => \inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst21~q\);

-- Location: LCCOMB_X8_Y21_N24
\inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst29~1_combout\ = (!\inst4|inst19~q\ & (!\inst4|inst17~q\ & (!\inst4|inst14~q\ & !\inst4|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst19~q\,
	datab => \inst4|inst17~q\,
	datac => \inst4|inst14~q\,
	datad => \inst4|inst21~q\,
	combout => \inst4|inst29~1_combout\);

-- Location: LCCOMB_X8_Y21_N6
\inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst29~combout\ = LCELL((\inst4|inst29~0_combout\ & \inst4|inst29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst29~0_combout\,
	datad => \inst4|inst29~1_combout\,
	combout => \inst4|inst29~combout\);

-- Location: LCCOMB_X8_Y21_N20
\inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst4~0_combout\ = !\inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst4~q\,
	combout => \inst4|inst4~0_combout\);

-- Location: FF_X8_Y21_N21
\inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|inst29~combout\,
	d => \inst4|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst4~q\);

ww_beep <= \beep~output_o\;
END structure;


