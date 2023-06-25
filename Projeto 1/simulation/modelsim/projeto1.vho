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

-- DATE "06/25/2023 04:18:42"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	OR16 IS
    PORT (
	\out\ : OUT std_logic;
	pin_name9 : IN std_logic;
	pin_name11 : IN std_logic;
	pin_name10 : IN std_logic;
	pin_name12 : IN std_logic;
	pin_name14 : IN std_logic;
	pin_name13 : IN std_logic;
	pin_name15 : IN std_logic;
	pin_name16 : IN std_logic;
	pin_name1 : IN std_logic;
	pin_name3 : IN std_logic;
	pin_name2 : IN std_logic;
	pin_name4 : IN std_logic;
	pin_name6 : IN std_logic;
	pin_name5 : IN std_logic;
	pin_name7 : IN std_logic;
	pin_name8 : IN std_logic
	);
END OR16;

-- Design Ports Information
-- out	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name9	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name11	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name10	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name12	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name14	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name13	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name15	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name16	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name6	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name5	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name7	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name8	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF OR16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_out\ : std_logic;
SIGNAL ww_pin_name9 : std_logic;
SIGNAL ww_pin_name11 : std_logic;
SIGNAL ww_pin_name10 : std_logic;
SIGNAL ww_pin_name12 : std_logic;
SIGNAL ww_pin_name14 : std_logic;
SIGNAL ww_pin_name13 : std_logic;
SIGNAL ww_pin_name15 : std_logic;
SIGNAL ww_pin_name16 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name6 : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name7 : std_logic;
SIGNAL ww_pin_name8 : std_logic;
SIGNAL \out~output_o\ : std_logic;
SIGNAL \pin_name16~input_o\ : std_logic;
SIGNAL \pin_name14~input_o\ : std_logic;
SIGNAL \pin_name15~input_o\ : std_logic;
SIGNAL \pin_name13~input_o\ : std_logic;
SIGNAL \inst2~1_combout\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;
SIGNAL \pin_name2~input_o\ : std_logic;
SIGNAL \pin_name3~input_o\ : std_logic;
SIGNAL \pin_name4~input_o\ : std_logic;
SIGNAL \inst2~2_combout\ : std_logic;
SIGNAL \pin_name5~input_o\ : std_logic;
SIGNAL \pin_name6~input_o\ : std_logic;
SIGNAL \pin_name7~input_o\ : std_logic;
SIGNAL \pin_name8~input_o\ : std_logic;
SIGNAL \inst2~3_combout\ : std_logic;
SIGNAL \pin_name10~input_o\ : std_logic;
SIGNAL \pin_name12~input_o\ : std_logic;
SIGNAL \pin_name11~input_o\ : std_logic;
SIGNAL \pin_name9~input_o\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst2~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

\out\ <= \ww_out\;
ww_pin_name9 <= pin_name9;
ww_pin_name11 <= pin_name11;
ww_pin_name10 <= pin_name10;
ww_pin_name12 <= pin_name12;
ww_pin_name14 <= pin_name14;
ww_pin_name13 <= pin_name13;
ww_pin_name15 <= pin_name15;
ww_pin_name16 <= pin_name16;
ww_pin_name1 <= pin_name1;
ww_pin_name3 <= pin_name3;
ww_pin_name2 <= pin_name2;
ww_pin_name4 <= pin_name4;
ww_pin_name6 <= pin_name6;
ww_pin_name5 <= pin_name5;
ww_pin_name7 <= pin_name7;
ww_pin_name8 <= pin_name8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N23
\out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~4_combout\,
	devoe => ww_devoe,
	o => \out~output_o\);

-- Location: IOIBUF_X1_Y0_N15
\pin_name16~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name16,
	o => \pin_name16~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\pin_name14~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name14,
	o => \pin_name14~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\pin_name15~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name15,
	o => \pin_name15~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\pin_name13~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name13,
	o => \pin_name13~input_o\);

-- Location: LCCOMB_X6_Y4_N10
\inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~1_combout\ = (\pin_name16~input_o\) # ((\pin_name14~input_o\) # ((\pin_name15~input_o\) # (\pin_name13~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name16~input_o\,
	datab => \pin_name14~input_o\,
	datac => \pin_name15~input_o\,
	datad => \pin_name13~input_o\,
	combout => \inst2~1_combout\);

-- Location: IOIBUF_X0_Y6_N22
\pin_name1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => \pin_name1~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\pin_name2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2,
	o => \pin_name2~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\pin_name3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name3,
	o => \pin_name3~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\pin_name4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name4,
	o => \pin_name4~input_o\);

-- Location: LCCOMB_X1_Y7_N8
\inst2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~2_combout\ = (\pin_name1~input_o\) # ((\pin_name2~input_o\) # ((\pin_name3~input_o\) # (\pin_name4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name1~input_o\,
	datab => \pin_name2~input_o\,
	datac => \pin_name3~input_o\,
	datad => \pin_name4~input_o\,
	combout => \inst2~2_combout\);

-- Location: IOIBUF_X0_Y6_N15
\pin_name5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name5,
	o => \pin_name5~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\pin_name6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name6,
	o => \pin_name6~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\pin_name7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name7,
	o => \pin_name7~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\pin_name8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name8,
	o => \pin_name8~input_o\);

-- Location: LCCOMB_X1_Y7_N10
\inst2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~3_combout\ = (\pin_name5~input_o\) # ((\pin_name6~input_o\) # ((\pin_name7~input_o\) # (\pin_name8~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name5~input_o\,
	datab => \pin_name6~input_o\,
	datac => \pin_name7~input_o\,
	datad => \pin_name8~input_o\,
	combout => \inst2~3_combout\);

-- Location: IOIBUF_X5_Y0_N15
\pin_name10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name10,
	o => \pin_name10~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\pin_name12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name12,
	o => \pin_name12~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\pin_name11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name11,
	o => \pin_name11~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\pin_name9~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name9,
	o => \pin_name9~input_o\);

-- Location: LCCOMB_X6_Y4_N24
\inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\pin_name10~input_o\) # ((\pin_name12~input_o\) # ((\pin_name11~input_o\) # (\pin_name9~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name10~input_o\,
	datab => \pin_name12~input_o\,
	datac => \pin_name11~input_o\,
	datad => \pin_name9~input_o\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X6_Y4_N28
\inst2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~4_combout\ = (\inst2~1_combout\) # ((\inst2~2_combout\) # ((\inst2~3_combout\) # (\inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~1_combout\,
	datab => \inst2~2_combout\,
	datac => \inst2~3_combout\,
	datad => \inst2~0_combout\,
	combout => \inst2~4_combout\);

\ww_out\ <= \out~output_o\;
END structure;


