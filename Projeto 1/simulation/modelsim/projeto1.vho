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

-- DATE "06/24/2023 12:01:16"

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

ENTITY 	projeto1 IS
    PORT (
	LED : OUT std_logic_vector(1 DOWNTO 1);
	FPGA_CLK : IN std_logic
	);
END projeto1;

-- Design Ports Information
-- LED[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_FPGA_CLK : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst9|inst~q\ : std_logic;
SIGNAL \inst|inst|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst10|inst~q\ : std_logic;
SIGNAL \inst|inst|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst~q\ : std_logic;
SIGNAL \inst|inst|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst7~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst7~q\ : std_logic;
SIGNAL \inst|inst|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst8~q\ : std_logic;
SIGNAL \inst|inst|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst9~q\ : std_logic;
SIGNAL \inst|inst|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst14~q\ : std_logic;
SIGNAL \inst|inst|inst13|inst16~combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst17~q\ : std_logic;
SIGNAL \inst|inst|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst19~q\ : std_logic;
SIGNAL \inst|inst|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst21~q\ : std_logic;
SIGNAL \inst|inst|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst29~combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst4~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst13|inst4~q\ : std_logic;
SIGNAL \inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst|inst13|ALT_INV_inst29~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LED <= ww_LED;
ww_FPGA_CLK <= FPGA_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|inst|inst13|ALT_INV_inst29~combout\ <= NOT \inst|inst|inst13|inst29~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y10_N9
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst~q\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

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

-- Location: LCCOMB_X4_Y11_N20
\inst|inst|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst|inst~0_combout\ = !\inst|inst|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst|inst|inst~q\,
	combout => \inst|inst|inst|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X4_Y11_N30
\inst|inst|inst|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst|inst~feeder_combout\ = \inst|inst|inst|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst|inst~0_combout\,
	combout => \inst|inst|inst|inst|inst|inst~feeder_combout\);

-- Location: FF_X4_Y11_N31
\inst|inst|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~input_o\,
	d => \inst|inst|inst|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X4_Y11_N28
\inst|inst|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst2|inst~0_combout\ = !\inst|inst|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst2|inst~q\,
	combout => \inst|inst|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X4_Y11_N6
\inst|inst|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst2|inst~feeder_combout\ = \inst|inst|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst2|inst~0_combout\,
	combout => \inst|inst|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X4_Y11_N7
\inst|inst|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst|inst|inst~q\,
	d => \inst|inst|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X3_Y11_N18
\inst|inst|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst3|inst~0_combout\ = !\inst|inst|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst|inst3|inst~q\,
	combout => \inst|inst|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X3_Y11_N4
\inst|inst|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst3|inst~feeder_combout\ = \inst|inst|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst|inst3|inst~0_combout\,
	combout => \inst|inst|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X3_Y11_N5
\inst|inst|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst|inst2|inst~q\,
	d => \inst|inst|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X3_Y11_N28
\inst|inst|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst4|inst~0_combout\ = !\inst|inst|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst4|inst~q\,
	combout => \inst|inst|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X3_Y11_N10
\inst|inst|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst4|inst~feeder_combout\ = \inst|inst|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst|inst4|inst~0_combout\,
	combout => \inst|inst|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X3_Y11_N11
\inst|inst|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst|inst3|inst~q\,
	d => \inst|inst|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X2_Y11_N18
\inst|inst|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst5|inst~0_combout\ = !\inst|inst|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst|inst5|inst~q\,
	combout => \inst|inst|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X2_Y11_N4
\inst|inst|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst5|inst~feeder_combout\ = \inst|inst|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst|inst5|inst~0_combout\,
	combout => \inst|inst|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X2_Y11_N5
\inst|inst|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst|inst4|inst~q\,
	d => \inst|inst|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X2_Y11_N10
\inst|inst|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst6|inst~0_combout\ = !\inst|inst|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst6|inst~q\,
	combout => \inst|inst|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X2_Y11_N2
\inst|inst|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst6|inst~feeder_combout\ = \inst|inst|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst6|inst~0_combout\,
	combout => \inst|inst|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X2_Y11_N3
\inst|inst|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst|inst5|inst~q\,
	d => \inst|inst|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X6_Y11_N28
\inst|inst|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst7|inst~0_combout\ = !\inst|inst|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst7|inst~q\,
	combout => \inst|inst|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X6_Y11_N14
\inst|inst|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst7|inst~feeder_combout\ = \inst|inst|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst7|inst~0_combout\,
	combout => \inst|inst|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X6_Y11_N15
\inst|inst|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst|inst6|inst~q\,
	d => \inst|inst|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X6_Y11_N30
\inst|inst|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst8|inst~0_combout\ = !\inst|inst|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst8|inst~q\,
	combout => \inst|inst|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X6_Y11_N6
\inst|inst|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst|inst8|inst~feeder_combout\ = \inst|inst|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst|inst8|inst~0_combout\,
	combout => \inst|inst|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X6_Y11_N7
\inst|inst|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst|inst7|inst~q\,
	d => \inst|inst|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X16_Y11_N18
\inst|inst|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst|inst~0_combout\ = !\inst|inst|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst1|inst|inst~q\,
	combout => \inst|inst|inst|inst1|inst|inst~0_combout\);

-- Location: FF_X16_Y11_N17
\inst|inst|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst|inst8|inst~q\,
	asdata => \inst|inst|inst|inst1|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X19_Y11_N20
\inst|inst|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst2|inst~0_combout\ = !\inst|inst|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst1|inst2|inst~q\,
	combout => \inst|inst|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X19_Y11_N8
\inst|inst|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst2|inst~feeder_combout\ = \inst|inst|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst1|inst2|inst~0_combout\,
	combout => \inst|inst|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X19_Y11_N9
\inst|inst|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst1|inst|inst~q\,
	d => \inst|inst|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X19_Y11_N30
\inst|inst|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst3|inst~0_combout\ = !\inst|inst|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst1|inst3|inst~q\,
	combout => \inst|inst|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst|inst|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst3|inst~feeder_combout\ = \inst|inst|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst1|inst3|inst~0_combout\,
	combout => \inst|inst|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X19_Y11_N3
\inst|inst|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst1|inst2|inst~q\,
	d => \inst|inst|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X23_Y13_N30
\inst|inst|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst4|inst~0_combout\ = !\inst|inst|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst1|inst4|inst~q\,
	combout => \inst|inst|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst|inst|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst4|inst~feeder_combout\ = \inst|inst|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst1|inst4|inst~0_combout\,
	combout => \inst|inst|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X23_Y13_N29
\inst|inst|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst1|inst3|inst~q\,
	d => \inst|inst|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X23_Y13_N10
\inst|inst|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst5|inst~0_combout\ = !\inst|inst|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst1|inst5|inst~q\,
	combout => \inst|inst|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N6
\inst|inst|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst5|inst~feeder_combout\ = \inst|inst|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst1|inst5|inst~0_combout\,
	combout => \inst|inst|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X23_Y13_N7
\inst|inst|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst1|inst4|inst~q\,
	d => \inst|inst|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X24_Y13_N18
\inst|inst|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst6|inst~0_combout\ = !\inst|inst|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst1|inst6|inst~q\,
	combout => \inst|inst|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst|inst|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst6|inst~feeder_combout\ = \inst|inst|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst|inst1|inst6|inst~0_combout\,
	combout => \inst|inst|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X24_Y13_N21
\inst|inst|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst1|inst5|inst~q\,
	d => \inst|inst|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X24_Y13_N4
\inst|inst|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst7|inst~0_combout\ = !\inst|inst|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst1|inst7|inst~q\,
	combout => \inst|inst|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X24_Y13_N10
\inst|inst|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst7|inst~feeder_combout\ = \inst|inst|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst1|inst7|inst~0_combout\,
	combout => \inst|inst|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X24_Y13_N11
\inst|inst|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst1|inst6|inst~q\,
	d => \inst|inst|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X25_Y14_N20
\inst|inst|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst8|inst~0_combout\ = !\inst|inst|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst1|inst8|inst~q\,
	combout => \inst|inst|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X25_Y14_N2
\inst|inst|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst1|inst8|inst~feeder_combout\ = \inst|inst|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst1|inst8|inst~0_combout\,
	combout => \inst|inst|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X25_Y14_N3
\inst|inst|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst1|inst7|inst~q\,
	d => \inst|inst|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X24_Y14_N18
\inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst~0_combout\ = !\inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst2|inst~q\,
	combout => \inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst~feeder_combout\ = \inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst2|inst~0_combout\,
	combout => \inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X24_Y14_N29
\inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst1|inst8|inst~q\,
	d => \inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X23_Y14_N18
\inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst3|inst~0_combout\ = !\inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst3|inst~q\,
	combout => \inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X23_Y14_N16
\inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst3|inst~feeder_combout\ = \inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst3|inst~0_combout\,
	combout => \inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X23_Y14_N17
\inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst2|inst~q\,
	d => \inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X23_Y14_N28
\inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|inst~0_combout\ = !\inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst7|inst~q\,
	combout => \inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X23_Y14_N10
\inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|inst~feeder_combout\ = \inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst7|inst~0_combout\,
	combout => \inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X23_Y14_N11
\inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst3|inst~q\,
	d => \inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X22_Y14_N24
\inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|inst~0_combout\ = !\inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst8|inst~q\,
	combout => \inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X22_Y14_N10
\inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|inst~feeder_combout\ = \inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst8|inst~0_combout\,
	combout => \inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X22_Y14_N11
\inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst7|inst~q\,
	d => \inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X22_Y14_N28
\inst|inst|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst9|inst~0_combout\ = !\inst|inst|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst9|inst~q\,
	combout => \inst|inst|inst9|inst~0_combout\);

-- Location: LCCOMB_X22_Y14_N18
\inst|inst|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst9|inst~feeder_combout\ = \inst|inst|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst9|inst~0_combout\,
	combout => \inst|inst|inst9|inst~feeder_combout\);

-- Location: FF_X22_Y14_N19
\inst|inst|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst8|inst~q\,
	d => \inst|inst|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst9|inst~q\);

-- Location: LCCOMB_X21_Y14_N16
\inst|inst|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst10|inst~0_combout\ = !\inst|inst|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst10|inst~q\,
	combout => \inst|inst|inst10|inst~0_combout\);

-- Location: LCCOMB_X21_Y14_N12
\inst|inst|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst10|inst~feeder_combout\ = \inst|inst|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst10|inst~0_combout\,
	combout => \inst|inst|inst10|inst~feeder_combout\);

-- Location: FF_X21_Y14_N13
\inst|inst|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst9|inst~q\,
	d => \inst|inst|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst10|inst~q\);

-- Location: LCCOMB_X21_Y14_N30
\inst|inst|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst~0_combout\ = !\inst|inst|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst~q\,
	combout => \inst|inst|inst13|inst~0_combout\);

-- Location: LCCOMB_X21_Y14_N14
\inst|inst|inst13|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst~feeder_combout\ = \inst|inst|inst13|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst13|inst~0_combout\,
	combout => \inst|inst|inst13|inst~feeder_combout\);

-- Location: FF_X21_Y14_N15
\inst|inst|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst10|inst~q\,
	d => \inst|inst|inst13|inst~feeder_combout\,
	clrn => \inst|inst|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst13|inst~q\);

-- Location: LCCOMB_X21_Y14_N18
\inst|inst|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst7~0_combout\ = \inst|inst|inst13|inst~q\ $ (\inst|inst|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst~q\,
	datad => \inst|inst|inst13|inst7~q\,
	combout => \inst|inst|inst13|inst7~0_combout\);

-- Location: LCCOMB_X21_Y14_N6
\inst|inst|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst7~feeder_combout\ = \inst|inst|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst7~0_combout\,
	combout => \inst|inst|inst13|inst7~feeder_combout\);

-- Location: FF_X21_Y14_N7
\inst|inst|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst10|inst~q\,
	d => \inst|inst|inst13|inst7~feeder_combout\,
	clrn => \inst|inst|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst13|inst7~q\);

-- Location: LCCOMB_X21_Y14_N28
\inst|inst|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst5~0_combout\ = (\inst|inst|inst13|inst~q\ & \inst|inst|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst13|inst~q\,
	datad => \inst|inst|inst13|inst7~q\,
	combout => \inst|inst|inst13|inst5~0_combout\);

-- Location: LCCOMB_X21_Y14_N4
\inst|inst|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst8~0_combout\ = \inst|inst|inst13|inst8~q\ $ (((\inst|inst|inst13|inst~q\ & \inst|inst|inst13|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst~q\,
	datab => \inst|inst|inst13|inst7~q\,
	datac => \inst|inst|inst13|inst8~q\,
	combout => \inst|inst|inst13|inst8~0_combout\);

-- Location: FF_X21_Y14_N5
\inst|inst|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst10|inst~q\,
	d => \inst|inst|inst13|inst8~0_combout\,
	clrn => \inst|inst|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst13|inst8~q\);

-- Location: LCCOMB_X21_Y14_N2
\inst|inst|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst9~0_combout\ = \inst|inst|inst13|inst9~q\ $ (((\inst|inst|inst13|inst~q\ & (\inst|inst|inst13|inst8~q\ & \inst|inst|inst13|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst~q\,
	datab => \inst|inst|inst13|inst8~q\,
	datac => \inst|inst|inst13|inst9~q\,
	datad => \inst|inst|inst13|inst7~q\,
	combout => \inst|inst|inst13|inst9~0_combout\);

-- Location: FF_X21_Y14_N3
\inst|inst|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst10|inst~q\,
	d => \inst|inst|inst13|inst9~0_combout\,
	clrn => \inst|inst|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst13|inst9~q\);

-- Location: LCCOMB_X21_Y14_N24
\inst|inst|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst14~0_combout\ = \inst|inst|inst13|inst14~q\ $ (((\inst|inst|inst13|inst9~q\ & (\inst|inst|inst13|inst8~q\ & \inst|inst|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst9~q\,
	datab => \inst|inst|inst13|inst8~q\,
	datac => \inst|inst|inst13|inst14~q\,
	datad => \inst|inst|inst13|inst5~0_combout\,
	combout => \inst|inst|inst13|inst14~0_combout\);

-- Location: FF_X21_Y14_N25
\inst|inst|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst10|inst~q\,
	d => \inst|inst|inst13|inst14~0_combout\,
	clrn => \inst|inst|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst13|inst14~q\);

-- Location: LCCOMB_X21_Y14_N20
\inst|inst|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst16~combout\ = (\inst|inst|inst13|inst5~0_combout\ & (\inst|inst|inst13|inst14~q\ & (\inst|inst|inst13|inst8~q\ & \inst|inst|inst13|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst5~0_combout\,
	datab => \inst|inst|inst13|inst14~q\,
	datac => \inst|inst|inst13|inst8~q\,
	datad => \inst|inst|inst13|inst9~q\,
	combout => \inst|inst|inst13|inst16~combout\);

-- Location: LCCOMB_X21_Y14_N22
\inst|inst|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst17~0_combout\ = \inst|inst|inst13|inst16~combout\ $ (\inst|inst|inst13|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst16~combout\,
	datac => \inst|inst|inst13|inst17~q\,
	combout => \inst|inst|inst13|inst17~0_combout\);

-- Location: FF_X21_Y14_N23
\inst|inst|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst10|inst~q\,
	d => \inst|inst|inst13|inst17~0_combout\,
	clrn => \inst|inst|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst13|inst17~q\);

-- Location: LCCOMB_X21_Y14_N26
\inst|inst|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst19~0_combout\ = \inst|inst|inst13|inst19~q\ $ (((\inst|inst|inst13|inst16~combout\ & \inst|inst|inst13|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst16~combout\,
	datac => \inst|inst|inst13|inst19~q\,
	datad => \inst|inst|inst13|inst17~q\,
	combout => \inst|inst|inst13|inst19~0_combout\);

-- Location: FF_X21_Y14_N27
\inst|inst|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst10|inst~q\,
	d => \inst|inst|inst13|inst19~0_combout\,
	clrn => \inst|inst|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst13|inst19~q\);

-- Location: LCCOMB_X21_Y14_N0
\inst|inst|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst21~0_combout\ = \inst|inst|inst13|inst21~q\ $ (((\inst|inst|inst13|inst16~combout\ & (\inst|inst|inst13|inst17~q\ & \inst|inst|inst13|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst16~combout\,
	datab => \inst|inst|inst13|inst17~q\,
	datac => \inst|inst|inst13|inst21~q\,
	datad => \inst|inst|inst13|inst19~q\,
	combout => \inst|inst|inst13|inst21~0_combout\);

-- Location: FF_X21_Y14_N1
\inst|inst|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst10|inst~q\,
	d => \inst|inst|inst13|inst21~0_combout\,
	clrn => \inst|inst|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst13|inst21~q\);

-- Location: LCCOMB_X21_Y14_N8
\inst|inst|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst29~0_combout\ = (!\inst|inst|inst13|inst17~q\ & (!\inst|inst|inst13|inst21~q\ & (!\inst|inst|inst13|inst19~q\ & !\inst|inst|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst17~q\,
	datab => \inst|inst|inst13|inst21~q\,
	datac => \inst|inst|inst13|inst19~q\,
	datad => \inst|inst|inst13|inst14~q\,
	combout => \inst|inst|inst13|inst29~0_combout\);

-- Location: LCCOMB_X21_Y14_N10
\inst|inst|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst29~combout\ = LCELL((\inst|inst|inst13|inst5~0_combout\ & (\inst|inst|inst13|inst29~0_combout\ & (!\inst|inst|inst13|inst8~q\ & !\inst|inst|inst13|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst13|inst5~0_combout\,
	datab => \inst|inst|inst13|inst29~0_combout\,
	datac => \inst|inst|inst13|inst8~q\,
	datad => \inst|inst|inst13|inst9~q\,
	combout => \inst|inst|inst13|inst29~combout\);

-- Location: LCCOMB_X21_Y10_N18
\inst|inst|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst4~0_combout\ = !\inst|inst|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst13|inst4~q\,
	combout => \inst|inst|inst13|inst4~0_combout\);

-- Location: LCCOMB_X21_Y10_N0
\inst|inst|inst13|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst13|inst4~feeder_combout\ = \inst|inst|inst13|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst13|inst4~0_combout\,
	combout => \inst|inst|inst13|inst4~feeder_combout\);

-- Location: FF_X21_Y10_N1
\inst|inst|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst13|inst29~combout\,
	d => \inst|inst|inst13|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst13|inst4~q\);

-- Location: LCCOMB_X21_Y10_N6
\inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst~0_combout\ = !\inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|inst~q\,
	combout => \inst|inst2|inst~0_combout\);

-- Location: FF_X21_Y10_N7
\inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst13|inst4~q\,
	d => \inst|inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst~q\);

ww_LED(1) <= \LED[1]~output_o\;
END structure;


