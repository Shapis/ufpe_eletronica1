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

-- DATE "06/23/2023 19:25:34"

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
	LED : OUT std_logic_vector(2 DOWNTO 2);
	FPGA_CLK : IN std_logic
	);
END projeto1;

-- Design Ports Information
-- LED[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_LED : std_logic_vector(2 DOWNTO 2);
SIGNAL ww_FPGA_CLK : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst22|inst|inst~0_combout\ : std_logic;
SIGNAL \inst22|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst22|inst|inst~q\ : std_logic;
SIGNAL \inst22|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst22|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst22|inst2|inst~q\ : std_logic;
SIGNAL \inst22|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst22|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst22|inst3|inst~q\ : std_logic;
SIGNAL \inst22|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst22|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst22|inst4|inst~q\ : std_logic;
SIGNAL \inst22|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst22|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst22|inst5|inst~q\ : std_logic;
SIGNAL \inst22|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst22|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst22|inst6|inst~q\ : std_logic;
SIGNAL \inst22|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst22|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst22|inst7|inst~q\ : std_logic;
SIGNAL \inst22|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst22|inst8|inst~q\ : std_logic;

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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N2
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst8|inst~q\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

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

-- Location: LCCOMB_X3_Y11_N28
\inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst~0_combout\ = !\inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst~q\,
	combout => \inst|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X3_Y11_N26
\inst|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst~feeder_combout\ = \inst|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst|inst~0_combout\,
	combout => \inst|inst|inst|inst~feeder_combout\);

-- Location: FF_X3_Y11_N27
\inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~input_o\,
	d => \inst|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|inst~q\);

-- Location: LCCOMB_X3_Y11_N24
\inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst~0_combout\ = !\inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|inst2|inst~q\,
	combout => \inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X3_Y11_N30
\inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst~feeder_combout\ = \inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2|inst~0_combout\,
	combout => \inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X3_Y11_N31
\inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst|inst~q\,
	d => \inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X4_Y10_N28
\inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst3|inst~0_combout\ = !\inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst3|inst~q\,
	combout => \inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X4_Y10_N14
\inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst3|inst~feeder_combout\ = \inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst3|inst~0_combout\,
	combout => \inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X4_Y10_N15
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

-- Location: LCCOMB_X4_Y10_N30
\inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst4|inst~0_combout\ = !\inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst4|inst~q\,
	combout => \inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X4_Y10_N6
\inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst4|inst~feeder_combout\ = \inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst4|inst~0_combout\,
	combout => \inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X4_Y10_N7
\inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst3|inst~q\,
	d => \inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X7_Y10_N28
\inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst~0_combout\ = !\inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst5|inst~q\,
	combout => \inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X7_Y10_N6
\inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst~feeder_combout\ = \inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst5|inst~0_combout\,
	combout => \inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X7_Y10_N7
\inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst4|inst~q\,
	d => \inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X7_Y10_N24
\inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|inst~0_combout\ = !\inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst6|inst~q\,
	combout => \inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X7_Y10_N30
\inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|inst~feeder_combout\ = \inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst6|inst~0_combout\,
	combout => \inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X7_Y10_N31
\inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst5|inst~q\,
	d => \inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X7_Y9_N28
\inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|inst~0_combout\ = !\inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst7|inst~q\,
	combout => \inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X7_Y9_N16
\inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|inst~feeder_combout\ = \inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst7|inst~0_combout\,
	combout => \inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X7_Y9_N17
\inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst6|inst~q\,
	d => \inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X7_Y9_N10
\inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|inst~0_combout\ = !\inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst8|inst~q\,
	combout => \inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X7_Y9_N2
\inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|inst~feeder_combout\ = \inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst8|inst~0_combout\,
	combout => \inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X7_Y9_N3
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

-- Location: LCCOMB_X12_Y9_N30
\inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst~0_combout\ = !\inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|inst~q\,
	combout => \inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X12_Y9_N16
\inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst~feeder_combout\ = \inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|inst~0_combout\,
	combout => \inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X12_Y9_N17
\inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst8|inst~q\,
	d => \inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X12_Y9_N28
\inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst2|inst~0_combout\ = !\inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst2|inst~q\,
	combout => \inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X12_Y9_N10
\inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst2|inst~feeder_combout\ = \inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst2|inst~0_combout\,
	combout => \inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X12_Y9_N11
\inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst|inst~q\,
	d => \inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X13_Y7_N18
\inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst3|inst~0_combout\ = !\inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst3|inst~q\,
	combout => \inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X13_Y7_N20
\inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst3|inst~feeder_combout\ = \inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst3|inst~0_combout\,
	combout => \inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X13_Y7_N21
\inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst2|inst~q\,
	d => \inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X13_Y7_N10
\inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst4|inst~0_combout\ = !\inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst4|inst~q\,
	combout => \inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y7_N6
\inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst4|inst~feeder_combout\ = \inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst4|inst~0_combout\,
	combout => \inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X13_Y7_N7
\inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst3|inst~q\,
	d => \inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X18_Y7_N26
\inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst5|inst~0_combout\ = !\inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst5|inst~q\,
	combout => \inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X18_Y7_N10
\inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst5|inst~feeder_combout\ = \inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst5|inst~0_combout\,
	combout => \inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X18_Y7_N11
\inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst4|inst~q\,
	d => \inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X18_Y7_N28
\inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst6|inst~0_combout\ = !\inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst6|inst~q\,
	combout => \inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X18_Y7_N20
\inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst6|inst~feeder_combout\ = \inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst6|inst~0_combout\,
	combout => \inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X18_Y7_N21
\inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst5|inst~q\,
	d => \inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X19_Y8_N4
\inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst7|inst~0_combout\ = !\inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst7|inst~q\,
	combout => \inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst7|inst~feeder_combout\ = \inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst7|inst~0_combout\,
	combout => \inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X19_Y8_N15
\inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst6|inst~q\,
	d => \inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X19_Y8_N10
\inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst8|inst~0_combout\ = !\inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst8|inst~q\,
	combout => \inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst8|inst~feeder_combout\ = \inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst8|inst~0_combout\,
	combout => \inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X19_Y8_N7
\inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst7|inst~q\,
	d => \inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X21_Y8_N20
\inst22|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst|inst~0_combout\ = !\inst22|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst|inst~q\,
	combout => \inst22|inst|inst~0_combout\);

-- Location: LCCOMB_X21_Y8_N28
\inst22|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst|inst~feeder_combout\ = \inst22|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst|inst~0_combout\,
	combout => \inst22|inst|inst~feeder_combout\);

-- Location: FF_X21_Y8_N29
\inst22|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst8|inst~q\,
	d => \inst22|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst|inst~q\);

-- Location: LCCOMB_X21_Y8_N30
\inst22|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst2|inst~0_combout\ = !\inst22|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|inst2|inst~q\,
	combout => \inst22|inst2|inst~0_combout\);

-- Location: LCCOMB_X21_Y8_N10
\inst22|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst2|inst~feeder_combout\ = \inst22|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|inst2|inst~0_combout\,
	combout => \inst22|inst2|inst~feeder_combout\);

-- Location: FF_X21_Y8_N11
\inst22|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst|inst~q\,
	d => \inst22|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst2|inst~q\);

-- Location: LCCOMB_X22_Y7_N18
\inst22|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst3|inst~0_combout\ = !\inst22|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|inst3|inst~q\,
	combout => \inst22|inst3|inst~0_combout\);

-- Location: LCCOMB_X22_Y7_N14
\inst22|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst3|inst~feeder_combout\ = \inst22|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst3|inst~0_combout\,
	combout => \inst22|inst3|inst~feeder_combout\);

-- Location: FF_X22_Y7_N15
\inst22|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst2|inst~q\,
	d => \inst22|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst3|inst~q\);

-- Location: LCCOMB_X22_Y9_N14
\inst22|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst4|inst~0_combout\ = !\inst22|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst4|inst~q\,
	combout => \inst22|inst4|inst~0_combout\);

-- Location: LCCOMB_X22_Y9_N18
\inst22|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst4|inst~feeder_combout\ = \inst22|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|inst4|inst~0_combout\,
	combout => \inst22|inst4|inst~feeder_combout\);

-- Location: FF_X22_Y9_N19
\inst22|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst3|inst~q\,
	d => \inst22|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst4|inst~q\);

-- Location: LCCOMB_X22_Y9_N24
\inst22|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst5|inst~0_combout\ = !\inst22|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst5|inst~q\,
	combout => \inst22|inst5|inst~0_combout\);

-- Location: LCCOMB_X22_Y9_N20
\inst22|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst5|inst~feeder_combout\ = \inst22|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst5|inst~0_combout\,
	combout => \inst22|inst5|inst~feeder_combout\);

-- Location: FF_X22_Y9_N21
\inst22|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst4|inst~q\,
	d => \inst22|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst5|inst~q\);

-- Location: LCCOMB_X23_Y9_N16
\inst22|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst6|inst~0_combout\ = !\inst22|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|inst6|inst~q\,
	combout => \inst22|inst6|inst~0_combout\);

-- Location: LCCOMB_X23_Y9_N18
\inst22|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst6|inst~feeder_combout\ = \inst22|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|inst6|inst~0_combout\,
	combout => \inst22|inst6|inst~feeder_combout\);

-- Location: FF_X23_Y9_N19
\inst22|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst5|inst~q\,
	d => \inst22|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst6|inst~q\);

-- Location: LCCOMB_X23_Y9_N28
\inst22|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst7|inst~0_combout\ = !\inst22|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|inst7|inst~q\,
	combout => \inst22|inst7|inst~0_combout\);

-- Location: LCCOMB_X23_Y9_N6
\inst22|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst7|inst~feeder_combout\ = \inst22|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst7|inst~0_combout\,
	combout => \inst22|inst7|inst~feeder_combout\);

-- Location: FF_X23_Y9_N7
\inst22|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst6|inst~q\,
	d => \inst22|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst7|inst~q\);

-- Location: LCCOMB_X24_Y9_N28
\inst22|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|inst8|inst~0_combout\ = !\inst22|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|inst8|inst~q\,
	combout => \inst22|inst8|inst~0_combout\);

-- Location: FF_X24_Y9_N29
\inst22|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst7|inst~q\,
	d => \inst22|inst8|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst8|inst~q\);

ww_LED(2) <= \LED[2]~output_o\;
END structure;


