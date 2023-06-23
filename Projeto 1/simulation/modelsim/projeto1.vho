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

-- DATE "06/23/2023 01:18:02"

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

ENTITY 	contador IS
    PORT (
	LED1 : OUT std_logic;
	KEY4 : IN std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic
	);
END contador;

-- Design Ports Information
-- LED1	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED4	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY4	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_KEY4 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \LED4~output_o\ : std_logic;
SIGNAL \KEY4~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~feeder_combout\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst22~feeder_combout\ : std_logic;
SIGNAL \inst22~q\ : std_logic;
SIGNAL \inst26~0_combout\ : std_logic;
SIGNAL \inst26~feeder_combout\ : std_logic;
SIGNAL \inst26~q\ : std_logic;
SIGNAL \inst30~0_combout\ : std_logic;
SIGNAL \inst30~q\ : std_logic;
SIGNAL \inst36~combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \ALT_INV_inst36~combout\ : std_logic;
SIGNAL \ALT_INV_inst30~q\ : std_logic;
SIGNAL \ALT_INV_inst26~q\ : std_logic;
SIGNAL \ALT_INV_inst22~q\ : std_logic;
SIGNAL \ALT_INV_inst~q\ : std_logic;
SIGNAL \ALT_INV_KEY4~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LED1 <= ww_LED1;
ww_KEY4 <= KEY4;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst36~combout\ <= NOT \inst36~combout\;
\ALT_INV_inst30~q\ <= NOT \inst30~q\;
\ALT_INV_inst26~q\ <= NOT \inst26~q\;
\ALT_INV_inst22~q\ <= NOT \inst22~q\;
\ALT_INV_inst~q\ <= NOT \inst~q\;
\ALT_INV_KEY4~input_o\ <= NOT \KEY4~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y10_N9
\LED1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst~q\,
	devoe => ww_devoe,
	o => \LED1~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\LED2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst22~q\,
	devoe => ww_devoe,
	o => \LED2~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\LED3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst26~q\,
	devoe => ww_devoe,
	o => \LED3~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\LED4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst30~q\,
	devoe => ww_devoe,
	o => \LED4~output_o\);

-- Location: IOIBUF_X34_Y12_N1
\KEY4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY4,
	o => \KEY4~input_o\);

-- Location: LCCOMB_X30_Y6_N18
\inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = !\inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	combout => \inst~0_combout\);

-- Location: LCCOMB_X30_Y6_N30
\inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~feeder_combout\ = \inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~0_combout\,
	combout => \inst~feeder_combout\);

-- Location: LCCOMB_X30_Y6_N24
\inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = !\inst22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22~q\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X30_Y6_N20
\inst22~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22~feeder_combout\ = \inst22~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22~0_combout\,
	combout => \inst22~feeder_combout\);

-- Location: FF_X30_Y6_N21
inst22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst~q\,
	d => \inst22~feeder_combout\,
	clrn => \ALT_INV_inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22~q\);

-- Location: LCCOMB_X29_Y6_N30
\inst26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26~0_combout\ = !\inst26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26~q\,
	combout => \inst26~0_combout\);

-- Location: LCCOMB_X29_Y6_N28
\inst26~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26~feeder_combout\ = \inst26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26~0_combout\,
	combout => \inst26~feeder_combout\);

-- Location: FF_X29_Y6_N29
inst26 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst22~q\,
	d => \inst26~feeder_combout\,
	clrn => \ALT_INV_inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26~q\);

-- Location: LCCOMB_X29_Y6_N8
\inst30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30~0_combout\ = !\inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30~q\,
	combout => \inst30~0_combout\);

-- Location: FF_X29_Y6_N9
inst30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst26~q\,
	d => \inst30~0_combout\,
	clrn => \ALT_INV_inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30~q\);

-- Location: LCCOMB_X29_Y6_N24
inst36 : cycloneive_lcell_comb
-- Equation(s):
-- \inst36~combout\ = (\inst30~q\ & \inst22~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30~q\,
	datad => \inst22~q\,
	combout => \inst36~combout\);

-- Location: FF_X30_Y6_N31
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY4~input_o\,
	d => \inst~feeder_combout\,
	clrn => \ALT_INV_inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

ww_LED1 <= \LED1~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED3 <= \LED3~output_o\;

ww_LED4 <= \LED4~output_o\;
END structure;


