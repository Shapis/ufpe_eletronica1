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

-- DATE "06/24/2023 16:38:38"

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

ENTITY 	testes IS
    PORT (
	LED : OUT std_logic_vector(1 DOWNTO 1);
	FPGA_CLK : IN std_logic;
	KEY1 : IN std_logic
	);
END testes;

-- Design Ports Information
-- LED[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testes IS
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
SIGNAL ww_KEY1 : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst21~1_combout\ : std_logic;
SIGNAL \inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst24|inst4|inst29~combout\ : std_logic;
SIGNAL \inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst24|inst4|inst4~feeder_combout\ : std_logic;
SIGNAL \inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst25|inst~0_combout\ : std_logic;
SIGNAL \inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst25|inst~q\ : std_logic;
SIGNAL \inst26|inst~0_combout\ : std_logic;
SIGNAL \inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst26|inst~q\ : std_logic;
SIGNAL \inst27|inst~0_combout\ : std_logic;
SIGNAL \inst27|inst~feeder_combout\ : std_logic;
SIGNAL \inst27|inst~q\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \dasda~0_combout\ : std_logic;
SIGNAL \dasda~q\ : std_logic;
SIGNAL \inst29~feeder_combout\ : std_logic;
SIGNAL \inst29~q\ : std_logic;
SIGNAL \inst30~feeder_combout\ : std_logic;
SIGNAL \inst30~q\ : std_logic;
SIGNAL \inst31~feeder_combout\ : std_logic;
SIGNAL \inst31~q\ : std_logic;
SIGNAL \inst36~0_combout\ : std_logic;
SIGNAL \inst32~feeder_combout\ : std_logic;
SIGNAL \inst32~q\ : std_logic;
SIGNAL \inst33~feeder_combout\ : std_logic;
SIGNAL \inst33~q\ : std_logic;
SIGNAL \inst23~feeder_combout\ : std_logic;
SIGNAL \inst23~q\ : std_logic;
SIGNAL \1231~q\ : std_logic;
SIGNAL \inst36~1_combout\ : std_logic;
SIGNAL \inst36~combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst26|ALT_INV_inst~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LED <= ww_LED;
ww_FPGA_CLK <= FPGA_CLK;
ww_KEY1 <= KEY1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst24|inst|inst|inst~q\;
\inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst24|inst|inst2|inst~q\;
\inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst24|inst|inst3|inst~q\;
\inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst24|inst|inst4|inst~q\;
\inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst24|inst|inst5|inst~q\;
\inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst24|inst|inst6|inst~q\;
\inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst24|inst|inst7|inst~q\;
\inst24|inst2|ALT_INV_inst~q\ <= NOT \inst24|inst2|inst~q\;
\inst24|inst3|ALT_INV_inst~q\ <= NOT \inst24|inst3|inst~q\;
\inst24|inst7|ALT_INV_inst~q\ <= NOT \inst24|inst7|inst~q\;
\inst24|inst8|ALT_INV_inst~q\ <= NOT \inst24|inst8|inst~q\;
\inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst24|inst4|inst29~combout\;
\inst25|ALT_INV_inst~q\ <= NOT \inst25|inst~q\;
\inst26|ALT_INV_inst~q\ <= NOT \inst26|inst~q\;
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
	i => \inst11~q\,
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

-- Location: LCCOMB_X1_Y11_N14
\inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst|inst~0_combout\ = !\inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst|inst|inst~q\,
	combout => \inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X1_Y11_N6
\inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst|inst~feeder_combout\ = \inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst|inst|inst~0_combout\,
	combout => \inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X1_Y11_N7
\inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~input_o\,
	d => \inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X9_Y7_N24
\inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst2|inst~0_combout\ = !\inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst|inst2|inst~q\,
	combout => \inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X9_Y7_N30
\inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst2|inst~feeder_combout\ = \inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|inst|inst2|inst~0_combout\,
	combout => \inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X9_Y7_N31
\inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X9_Y7_N16
\inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst3|inst~0_combout\ = !\inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst|inst3|inst~q\,
	combout => \inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X9_Y7_N28
\inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst3|inst~feeder_combout\ = \inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst|inst3|inst~0_combout\,
	combout => \inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X9_Y7_N29
\inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst|inst2|ALT_INV_inst~q\,
	d => \inst24|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X12_Y7_N18
\inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst4|inst~0_combout\ = !\inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst|inst4|inst~q\,
	combout => \inst24|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X12_Y7_N24
\inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst4|inst~feeder_combout\ = \inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst|inst4|inst~0_combout\,
	combout => \inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X12_Y7_N25
\inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst|inst3|ALT_INV_inst~q\,
	d => \inst24|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X12_Y7_N14
\inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst5|inst~0_combout\ = !\inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst|inst5|inst~q\,
	combout => \inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X12_Y7_N16
\inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst5|inst~feeder_combout\ = \inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst|inst5|inst~0_combout\,
	combout => \inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X12_Y7_N17
\inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst|inst4|ALT_INV_inst~q\,
	d => \inst24|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X13_Y7_N18
\inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst6|inst~0_combout\ = !\inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|inst|inst6|inst~q\,
	combout => \inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X13_Y7_N30
\inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst6|inst~feeder_combout\ = \inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|inst|inst6|inst~0_combout\,
	combout => \inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X13_Y7_N31
\inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X13_Y7_N28
\inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst7|inst~0_combout\ = !\inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|inst|inst7|inst~q\,
	combout => \inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X13_Y7_N6
\inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst7|inst~feeder_combout\ = \inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst|inst7|inst~0_combout\,
	combout => \inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X13_Y7_N7
\inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst|inst6|ALT_INV_inst~q\,
	d => \inst24|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X23_Y10_N18
\inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst8|inst~0_combout\ = !\inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|inst|inst8|inst~q\,
	combout => \inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X23_Y10_N6
\inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst|inst8|inst~feeder_combout\ = \inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|inst|inst8|inst~0_combout\,
	combout => \inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X23_Y10_N7
\inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X24_Y10_N28
\inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst2|inst~0_combout\ = !\inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|inst2|inst~q\,
	combout => \inst24|inst2|inst~0_combout\);

-- Location: FF_X24_Y10_N9
\inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst|inst8|inst~q\,
	asdata => \inst24|inst2|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst2|inst~q\);

-- Location: LCCOMB_X24_Y10_N26
\inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst3|inst~0_combout\ = !\inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst3|inst~q\,
	combout => \inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X24_Y10_N30
\inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst3|inst~feeder_combout\ = \inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst3|inst~0_combout\,
	combout => \inst24|inst3|inst~feeder_combout\);

-- Location: FF_X24_Y10_N31
\inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst2|ALT_INV_inst~q\,
	d => \inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst3|inst~q\);

-- Location: LCCOMB_X29_Y10_N30
\inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst7|inst~0_combout\ = !\inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst7|inst~q\,
	combout => \inst24|inst7|inst~0_combout\);

-- Location: LCCOMB_X29_Y10_N12
\inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst7|inst~feeder_combout\ = \inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst7|inst~0_combout\,
	combout => \inst24|inst7|inst~feeder_combout\);

-- Location: FF_X29_Y10_N13
\inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst3|ALT_INV_inst~q\,
	d => \inst24|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst7|inst~q\);

-- Location: LCCOMB_X29_Y10_N14
\inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst8|inst~0_combout\ = !\inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst8|inst~q\,
	combout => \inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X29_Y10_N16
\inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst8|inst~feeder_combout\ = \inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst8|inst~0_combout\,
	combout => \inst24|inst8|inst~feeder_combout\);

-- Location: FF_X29_Y10_N17
\inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst7|ALT_INV_inst~q\,
	d => \inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst8|inst~q\);

-- Location: LCCOMB_X30_Y10_N18
\inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst9|inst~0_combout\ = !\inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst9|inst~q\,
	combout => \inst24|inst9|inst~0_combout\);

-- Location: FF_X30_Y10_N15
\inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst8|ALT_INV_inst~q\,
	asdata => \inst24|inst9|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst9|inst~q\);

-- Location: LCCOMB_X30_Y10_N12
\inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst~0_combout\ = !\inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst4|inst~q\,
	combout => \inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X30_Y10_N10
\inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst~feeder_combout\ = \inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst4|inst~0_combout\,
	combout => \inst24|inst4|inst~feeder_combout\);

-- Location: FF_X30_Y10_N11
\inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst9|inst~q\,
	d => \inst24|inst4|inst~feeder_combout\,
	clrn => \inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst4|inst~q\);

-- Location: LCCOMB_X30_Y10_N2
\inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst7~0_combout\ = \inst24|inst4|inst7~q\ $ (\inst24|inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst4|inst7~q\,
	datad => \inst24|inst4|inst~q\,
	combout => \inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X30_Y10_N16
\inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst7~feeder_combout\ = \inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst7~0_combout\,
	combout => \inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X30_Y10_N17
\inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst9|inst~q\,
	d => \inst24|inst4|inst7~feeder_combout\,
	clrn => \inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst4|inst7~q\);

-- Location: LCCOMB_X30_Y10_N22
\inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst8~0_combout\ = \inst24|inst4|inst8~q\ $ (((\inst24|inst4|inst~q\ & \inst24|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst4|inst~q\,
	datac => \inst24|inst4|inst8~q\,
	datad => \inst24|inst4|inst7~q\,
	combout => \inst24|inst4|inst8~0_combout\);

-- Location: FF_X30_Y10_N23
\inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst9|inst~q\,
	d => \inst24|inst4|inst8~0_combout\,
	clrn => \inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst4|inst8~q\);

-- Location: LCCOMB_X30_Y10_N30
\inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst9~0_combout\ = \inst24|inst4|inst9~q\ $ (((\inst24|inst4|inst~q\ & (\inst24|inst4|inst7~q\ & \inst24|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst~q\,
	datab => \inst24|inst4|inst7~q\,
	datac => \inst24|inst4|inst9~q\,
	datad => \inst24|inst4|inst8~q\,
	combout => \inst24|inst4|inst9~0_combout\);

-- Location: FF_X30_Y10_N31
\inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst9|inst~q\,
	d => \inst24|inst4|inst9~0_combout\,
	clrn => \inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst4|inst9~q\);

-- Location: LCCOMB_X30_Y10_N20
\inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst29~0_combout\ = (\inst24|inst4|inst~q\ & (\inst24|inst4|inst8~q\ & \inst24|inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst~q\,
	datac => \inst24|inst4|inst8~q\,
	datad => \inst24|inst4|inst7~q\,
	combout => \inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X30_Y10_N6
\inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst14~0_combout\ = \inst24|inst4|inst14~q\ $ (((\inst24|inst4|inst9~q\ & \inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst9~q\,
	datac => \inst24|inst4|inst14~q\,
	datad => \inst24|inst4|inst29~0_combout\,
	combout => \inst24|inst4|inst14~0_combout\);

-- Location: FF_X30_Y10_N7
\inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst9|inst~q\,
	d => \inst24|inst4|inst14~0_combout\,
	clrn => \inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst4|inst14~q\);

-- Location: LCCOMB_X30_Y10_N8
\inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst17~0_combout\ = \inst24|inst4|inst17~q\ $ (((\inst24|inst4|inst14~q\ & (\inst24|inst4|inst29~0_combout\ & \inst24|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst14~q\,
	datab => \inst24|inst4|inst29~0_combout\,
	datac => \inst24|inst4|inst17~q\,
	datad => \inst24|inst4|inst9~q\,
	combout => \inst24|inst4|inst17~0_combout\);

-- Location: FF_X30_Y10_N9
\inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst9|inst~q\,
	d => \inst24|inst4|inst17~0_combout\,
	clrn => \inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst4|inst17~q\);

-- Location: LCCOMB_X30_Y10_N24
\inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst18~combout\ = (\inst24|inst4|inst29~0_combout\ & (\inst24|inst4|inst17~q\ & (\inst24|inst4|inst9~q\ & \inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst29~0_combout\,
	datab => \inst24|inst4|inst17~q\,
	datac => \inst24|inst4|inst9~q\,
	datad => \inst24|inst4|inst14~q\,
	combout => \inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X30_Y10_N26
\inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst19~0_combout\ = \inst24|inst4|inst18~combout\ $ (\inst24|inst4|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst18~combout\,
	datac => \inst24|inst4|inst19~q\,
	combout => \inst24|inst4|inst19~0_combout\);

-- Location: FF_X30_Y10_N27
\inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst9|inst~q\,
	d => \inst24|inst4|inst19~0_combout\,
	clrn => \inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst4|inst19~q\);

-- Location: LCCOMB_X30_Y10_N14
\inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst21~0_combout\ = ((!\inst24|inst4|inst14~q\) # (!\inst24|inst4|inst17~q\)) # (!\inst24|inst4|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst9~q\,
	datab => \inst24|inst4|inst17~q\,
	datad => \inst24|inst4|inst14~q\,
	combout => \inst24|inst4|inst21~0_combout\);

-- Location: LCCOMB_X30_Y10_N0
\inst24|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst21~1_combout\ = \inst24|inst4|inst21~q\ $ (((\inst24|inst4|inst19~q\ & (!\inst24|inst4|inst21~0_combout\ & \inst24|inst4|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst19~q\,
	datab => \inst24|inst4|inst21~0_combout\,
	datac => \inst24|inst4|inst21~q\,
	datad => \inst24|inst4|inst29~0_combout\,
	combout => \inst24|inst4|inst21~1_combout\);

-- Location: FF_X30_Y10_N1
\inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst9|inst~q\,
	d => \inst24|inst4|inst21~1_combout\,
	clrn => \inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst4|inst21~q\);

-- Location: LCCOMB_X30_Y10_N4
\inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst29~1_combout\ = (!\inst24|inst4|inst19~q\ & (!\inst24|inst4|inst21~q\ & (!\inst24|inst4|inst17~q\ & !\inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst19~q\,
	datab => \inst24|inst4|inst21~q\,
	datac => \inst24|inst4|inst17~q\,
	datad => \inst24|inst4|inst14~q\,
	combout => \inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X30_Y10_N28
\inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst29~combout\ = LCELL((!\inst24|inst4|inst9~q\ & (\inst24|inst4|inst29~1_combout\ & \inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst9~q\,
	datac => \inst24|inst4|inst29~1_combout\,
	datad => \inst24|inst4|inst29~0_combout\,
	combout => \inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X31_Y11_N30
\inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst4~0_combout\ = !\inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|inst4|inst4~q\,
	combout => \inst24|inst4|inst4~0_combout\);

-- Location: LCCOMB_X31_Y11_N24
\inst24|inst4|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|inst4|inst4~feeder_combout\ = \inst24|inst4|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst4|inst4~0_combout\,
	combout => \inst24|inst4|inst4~feeder_combout\);

-- Location: FF_X31_Y11_N25
\inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst4|inst29~combout\,
	d => \inst24|inst4|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|inst4|inst4~q\);

-- Location: LCCOMB_X31_Y11_N28
\inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst~0_combout\ = !\inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst~q\,
	combout => \inst25|inst~0_combout\);

-- Location: LCCOMB_X31_Y11_N6
\inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst~feeder_combout\ = \inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst~0_combout\,
	combout => \inst25|inst~feeder_combout\);

-- Location: FF_X31_Y11_N7
\inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|inst4|inst4~q\,
	d => \inst25|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst~q\);

-- Location: LCCOMB_X32_Y11_N2
\inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|inst~0_combout\ = !\inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|inst~q\,
	combout => \inst26|inst~0_combout\);

-- Location: LCCOMB_X32_Y11_N16
\inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|inst~feeder_combout\ = \inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|inst~0_combout\,
	combout => \inst26|inst~feeder_combout\);

-- Location: FF_X32_Y11_N17
\inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25|ALT_INV_inst~q\,
	d => \inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|inst~q\);

-- Location: LCCOMB_X32_Y11_N28
\inst27|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|inst~0_combout\ = !\inst27|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst27|inst~q\,
	combout => \inst27|inst~0_combout\);

-- Location: LCCOMB_X32_Y11_N6
\inst27|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|inst~feeder_combout\ = \inst27|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst27|inst~0_combout\,
	combout => \inst27|inst~feeder_combout\);

-- Location: FF_X32_Y11_N7
\inst27|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|ALT_INV_inst~q\,
	d => \inst27|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|inst~q\);

-- Location: IOIBUF_X34_Y12_N22
\KEY1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: LCCOMB_X33_Y11_N20
\dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dasda~0_combout\ = !\KEY1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY1~input_o\,
	combout => \dasda~0_combout\);

-- Location: FF_X33_Y11_N21
dasda : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27|inst~q\,
	d => \dasda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dasda~q\);

-- Location: LCCOMB_X33_Y11_N16
\inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29~feeder_combout\ = \dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dasda~q\,
	combout => \inst29~feeder_combout\);

-- Location: FF_X33_Y11_N17
inst29 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27|inst~q\,
	d => \inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29~q\);

-- Location: LCCOMB_X33_Y11_N26
\inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30~feeder_combout\ = \inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst29~q\,
	combout => \inst30~feeder_combout\);

-- Location: FF_X33_Y11_N27
inst30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27|inst~q\,
	d => \inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30~q\);

-- Location: LCCOMB_X33_Y11_N6
\inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31~feeder_combout\ = \inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30~q\,
	combout => \inst31~feeder_combout\);

-- Location: FF_X33_Y11_N7
inst31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27|inst~q\,
	d => \inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31~q\);

-- Location: LCCOMB_X33_Y11_N30
\inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36~0_combout\ = (\inst31~q\ & (\inst29~q\ & (\inst30~q\ & \dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31~q\,
	datab => \inst29~q\,
	datac => \inst30~q\,
	datad => \dasda~q\,
	combout => \inst36~0_combout\);

-- Location: LCCOMB_X33_Y11_N10
\inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32~feeder_combout\ = \inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31~q\,
	combout => \inst32~feeder_combout\);

-- Location: FF_X33_Y11_N11
inst32 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27|inst~q\,
	d => \inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32~q\);

-- Location: LCCOMB_X33_Y11_N28
\inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33~feeder_combout\ = \inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst32~q\,
	combout => \inst33~feeder_combout\);

-- Location: FF_X33_Y11_N29
inst33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27|inst~q\,
	d => \inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33~q\);

-- Location: LCCOMB_X33_Y11_N4
\inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23~feeder_combout\ = \inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33~q\,
	combout => \inst23~feeder_combout\);

-- Location: FF_X33_Y11_N5
inst23 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27|inst~q\,
	d => \inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23~q\);

-- Location: FF_X33_Y11_N3
\1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst27|inst~q\,
	asdata => \inst23~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \1231~q\);

-- Location: LCCOMB_X33_Y11_N2
\inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36~1_combout\ = (\inst32~q\ & (\inst23~q\ & (\1231~q\ & \inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~q\,
	datab => \inst23~q\,
	datac => \1231~q\,
	datad => \inst33~q\,
	combout => \inst36~1_combout\);

-- Location: LCCOMB_X33_Y11_N24
inst36 : cycloneive_lcell_comb
-- Equation(s):
-- \inst36~combout\ = LCELL((\inst36~0_combout\ & \inst36~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst36~0_combout\,
	datad => \inst36~1_combout\,
	combout => \inst36~combout\);

-- Location: LCCOMB_X33_Y11_N22
\inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = !\inst11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11~q\,
	combout => \inst11~0_combout\);

-- Location: FF_X33_Y11_N23
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst36~combout\,
	d => \inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

ww_LED(1) <= \LED[1]~output_o\;
END structure;


