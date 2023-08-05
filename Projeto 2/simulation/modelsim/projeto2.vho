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

-- DATE "08/05/2023 15:15:47"

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

ENTITY 	projeto2 IS
    PORT (
	dig : OUT std_logic_vector(4 DOWNTO 1);
	clock : IN std_logic;
	key : IN std_logic_vector(1 DOWNTO 1);
	led : OUT std_logic_vector(1 DOWNTO 1);
	seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END projeto2;

-- Design Ports Information
-- dig[4]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dig : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_clock : std_logic;
SIGNAL ww_key : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_led : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig[4]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|_~0_combout\ : std_logic;
SIGNAL \inst|count[2]~13_combout\ : std_logic;
SIGNAL \inst|count[2]~14\ : std_logic;
SIGNAL \inst|count[3]~15_combout\ : std_logic;
SIGNAL \inst|count[3]~16\ : std_logic;
SIGNAL \inst|count[4]~17_combout\ : std_logic;
SIGNAL \inst|count[4]~18\ : std_logic;
SIGNAL \inst|count[5]~19_combout\ : std_logic;
SIGNAL \inst|count[5]~20\ : std_logic;
SIGNAL \inst|count[6]~21_combout\ : std_logic;
SIGNAL \inst|count[6]~22\ : std_logic;
SIGNAL \inst|count[7]~23_combout\ : std_logic;
SIGNAL \inst|count[7]~24\ : std_logic;
SIGNAL \inst|count[8]~25_combout\ : std_logic;
SIGNAL \inst|count[8]~26\ : std_logic;
SIGNAL \inst|count[9]~27_combout\ : std_logic;
SIGNAL \inst|count[9]~28\ : std_logic;
SIGNAL \inst|count[10]~29_combout\ : std_logic;
SIGNAL \inst|count[10]~30\ : std_logic;
SIGNAL \inst|count[11]~31_combout\ : std_logic;
SIGNAL \inst|count[11]~32\ : std_logic;
SIGNAL \inst|count[12]~33_combout\ : std_logic;
SIGNAL \inst|count[12]~34\ : std_logic;
SIGNAL \inst|count[13]~35_combout\ : std_logic;
SIGNAL \inst|count[13]~36\ : std_logic;
SIGNAL \inst|count[14]~37_combout\ : std_logic;
SIGNAL \inst|op_1~0_combout\ : std_logic;
SIGNAL \inst|op_1~1_combout\ : std_logic;
SIGNAL \inst|alt~1_combout\ : std_logic;
SIGNAL \inst|alt~feeder_combout\ : std_logic;
SIGNAL \inst|alt~q\ : std_logic;
SIGNAL \inst|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|count[1]~1_combout\ : std_logic;
SIGNAL \inst4|_~0_combout\ : std_logic;
SIGNAL \inst2|_~0_combout\ : std_logic;
SIGNAL \inst2|_~1_combout\ : std_logic;
SIGNAL \inst2|_~2_combout\ : std_logic;
SIGNAL \inst2|_~3_combout\ : std_logic;
SIGNAL \inst1|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst1|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst1|divisor|op_1~4_combout\ : std_logic;
SIGNAL \inst1|divisor|_~0_combout\ : std_logic;
SIGNAL \inst1|divisor|count[2]~15_combout\ : std_logic;
SIGNAL \inst1|divisor|count[15]~42\ : std_logic;
SIGNAL \inst1|divisor|count[16]~43_combout\ : std_logic;
SIGNAL \inst1|divisor|op_1~6_combout\ : std_logic;
SIGNAL \inst1|divisor|count[2]~16\ : std_logic;
SIGNAL \inst1|divisor|count[3]~17_combout\ : std_logic;
SIGNAL \inst1|divisor|count[3]~18\ : std_logic;
SIGNAL \inst1|divisor|count[4]~19_combout\ : std_logic;
SIGNAL \inst1|divisor|count[4]~20\ : std_logic;
SIGNAL \inst1|divisor|count[5]~21_combout\ : std_logic;
SIGNAL \inst1|divisor|count[5]~22\ : std_logic;
SIGNAL \inst1|divisor|count[6]~23_combout\ : std_logic;
SIGNAL \inst1|divisor|count[6]~24\ : std_logic;
SIGNAL \inst1|divisor|count[7]~25_combout\ : std_logic;
SIGNAL \inst1|divisor|count[7]~26\ : std_logic;
SIGNAL \inst1|divisor|count[8]~27_combout\ : std_logic;
SIGNAL \inst1|divisor|count[8]~28\ : std_logic;
SIGNAL \inst1|divisor|count[9]~29_combout\ : std_logic;
SIGNAL \inst1|divisor|count[9]~30\ : std_logic;
SIGNAL \inst1|divisor|count[10]~31_combout\ : std_logic;
SIGNAL \inst1|divisor|count[10]~32\ : std_logic;
SIGNAL \inst1|divisor|count[11]~33_combout\ : std_logic;
SIGNAL \inst1|divisor|count[11]~34\ : std_logic;
SIGNAL \inst1|divisor|count[12]~35_combout\ : std_logic;
SIGNAL \inst1|divisor|count[12]~36\ : std_logic;
SIGNAL \inst1|divisor|count[13]~37_combout\ : std_logic;
SIGNAL \inst1|divisor|count[13]~38\ : std_logic;
SIGNAL \inst1|divisor|count[14]~39_combout\ : std_logic;
SIGNAL \inst1|divisor|count[14]~40\ : std_logic;
SIGNAL \inst1|divisor|count[15]~41_combout\ : std_logic;
SIGNAL \inst1|divisor|op_1~5_combout\ : std_logic;
SIGNAL \inst1|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst1|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst1|divisor|alt~q\ : std_logic;
SIGNAL \inst1|ff[2]~0_combout\ : std_logic;
SIGNAL \inst1|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst1|ff[0]~1_combout\ : std_logic;
SIGNAL \inst1|ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ff[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|_~0_combout\ : std_logic;
SIGNAL \inst5|count[2]~9_combout\ : std_logic;
SIGNAL \inst5|count[2]~10\ : std_logic;
SIGNAL \inst5|count[3]~11_combout\ : std_logic;
SIGNAL \inst5|count[3]~12\ : std_logic;
SIGNAL \inst5|count[4]~13_combout\ : std_logic;
SIGNAL \inst5|count[4]~14\ : std_logic;
SIGNAL \inst5|count[5]~15_combout\ : std_logic;
SIGNAL \inst5|count[5]~16\ : std_logic;
SIGNAL \inst5|count[6]~17_combout\ : std_logic;
SIGNAL \inst5|count[6]~18\ : std_logic;
SIGNAL \inst5|count[7]~19_combout\ : std_logic;
SIGNAL \inst5|count[7]~20\ : std_logic;
SIGNAL \inst5|count[8]~21_combout\ : std_logic;
SIGNAL \inst5|count[8]~22\ : std_logic;
SIGNAL \inst5|count[9]~23_combout\ : std_logic;
SIGNAL \inst5|count[9]~24\ : std_logic;
SIGNAL \inst5|count[10]~25_combout\ : std_logic;
SIGNAL \inst5|op_1~1_combout\ : std_logic;
SIGNAL \inst5|op_1~0_combout\ : std_logic;
SIGNAL \inst5|op_1~2_combout\ : std_logic;
SIGNAL \inst5|alt~1_combout\ : std_logic;
SIGNAL \inst5|alt~feeder_combout\ : std_logic;
SIGNAL \inst5|alt~q\ : std_logic;
SIGNAL \inst5|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|_~2_combout\ : std_logic;
SIGNAL \inst6|_~1_combout\ : std_logic;
SIGNAL \inst6|_~3_combout\ : std_logic;
SIGNAL \inst6|_~0_combout\ : std_logic;
SIGNAL \inst2|seg[6]~22_combout\ : std_logic;
SIGNAL \inst2|seg[6]~23_combout\ : std_logic;
SIGNAL \inst2|seg[5]~24_combout\ : std_logic;
SIGNAL \inst2|seg[5]~25_combout\ : std_logic;
SIGNAL \inst2|seg[4]~26_combout\ : std_logic;
SIGNAL \inst2|seg[4]~27_combout\ : std_logic;
SIGNAL \inst2|seg[3]~28_combout\ : std_logic;
SIGNAL \inst2|seg[0]~29_combout\ : std_logic;
SIGNAL \inst2|seg[0]~30_combout\ : std_logic;
SIGNAL \inst2|seg[3]~31_combout\ : std_logic;
SIGNAL \inst2|seg[2]~32_combout\ : std_logic;
SIGNAL \inst2|seg[1]~33_combout\ : std_logic;
SIGNAL \inst1|ff\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \inst1|divisor|count\ : std_logic_vector(16 DOWNTO 1);
SIGNAL \inst5|count\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \inst6|count\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|count\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \inst2|seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|ALT_INV_seg[0]~30_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ff\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \inst2|ALT_INV__~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV__~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV__~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

dig <= ww_dig;
ww_clock <= clock;
ww_key <= key;
led <= ww_led;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|alt~q\);

\inst1|divisor|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|divisor|alt~q\);

\inst5|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|alt~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst2|ALT_INV_seg[0]~30_combout\ <= NOT \inst2|seg[0]~30_combout\;
\inst1|ALT_INV_ff\(2) <= NOT \inst1|ff\(2);
\inst2|ALT_INV__~3_combout\ <= NOT \inst2|_~3_combout\;
\inst2|ALT_INV__~2_combout\ <= NOT \inst2|_~2_combout\;
\inst2|ALT_INV__~1_combout\ <= NOT \inst2|_~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N2
\dig[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|_~0_combout\,
	devoe => ww_devoe,
	o => \dig[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV__~1_combout\,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV__~2_combout\,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV__~3_combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_ff\(2),
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[6]~23_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[5]~25_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[4]~27_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[3]~31_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg\(2),
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[1]~33_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_seg[0]~30_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y12_N30
\inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|_~0_combout\ = (!\inst|count\(1) & !\inst|op_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(1),
	datad => \inst|op_1~1_combout\,
	combout => \inst|_~0_combout\);

-- Location: FF_X30_Y12_N31
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X30_Y12_N4
\inst|count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[2]~13_combout\ = (\inst|count\(1) & (\inst|count\(2) $ (VCC))) # (!\inst|count\(1) & (\inst|count\(2) & VCC))
-- \inst|count[2]~14\ = CARRY((\inst|count\(1) & \inst|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datad => VCC,
	combout => \inst|count[2]~13_combout\,
	cout => \inst|count[2]~14\);

-- Location: FF_X30_Y12_N5
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[2]~13_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X30_Y12_N6
\inst|count[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~15_combout\ = (\inst|count\(3) & (!\inst|count[2]~14\)) # (!\inst|count\(3) & ((\inst|count[2]~14\) # (GND)))
-- \inst|count[3]~16\ = CARRY((!\inst|count[2]~14\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datad => VCC,
	cin => \inst|count[2]~14\,
	combout => \inst|count[3]~15_combout\,
	cout => \inst|count[3]~16\);

-- Location: FF_X30_Y12_N7
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[3]~15_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X30_Y12_N8
\inst|count[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[4]~17_combout\ = (\inst|count\(4) & (\inst|count[3]~16\ $ (GND))) # (!\inst|count\(4) & (!\inst|count[3]~16\ & VCC))
-- \inst|count[4]~18\ = CARRY((\inst|count\(4) & !\inst|count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(4),
	datad => VCC,
	cin => \inst|count[3]~16\,
	combout => \inst|count[4]~17_combout\,
	cout => \inst|count[4]~18\);

-- Location: FF_X30_Y12_N9
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[4]~17_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X30_Y12_N10
\inst|count[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[5]~19_combout\ = (\inst|count\(5) & (!\inst|count[4]~18\)) # (!\inst|count\(5) & ((\inst|count[4]~18\) # (GND)))
-- \inst|count[5]~20\ = CARRY((!\inst|count[4]~18\) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datad => VCC,
	cin => \inst|count[4]~18\,
	combout => \inst|count[5]~19_combout\,
	cout => \inst|count[5]~20\);

-- Location: FF_X30_Y12_N11
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[5]~19_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LCCOMB_X30_Y12_N12
\inst|count[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[6]~21_combout\ = (\inst|count\(6) & (\inst|count[5]~20\ $ (GND))) # (!\inst|count\(6) & (!\inst|count[5]~20\ & VCC))
-- \inst|count[6]~22\ = CARRY((\inst|count\(6) & !\inst|count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(6),
	datad => VCC,
	cin => \inst|count[5]~20\,
	combout => \inst|count[6]~21_combout\,
	cout => \inst|count[6]~22\);

-- Location: FF_X30_Y12_N13
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[6]~21_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LCCOMB_X30_Y12_N14
\inst|count[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[7]~23_combout\ = (\inst|count\(7) & (!\inst|count[6]~22\)) # (!\inst|count\(7) & ((\inst|count[6]~22\) # (GND)))
-- \inst|count[7]~24\ = CARRY((!\inst|count[6]~22\) # (!\inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(7),
	datad => VCC,
	cin => \inst|count[6]~22\,
	combout => \inst|count[7]~23_combout\,
	cout => \inst|count[7]~24\);

-- Location: FF_X30_Y12_N15
\inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[7]~23_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(7));

-- Location: LCCOMB_X30_Y12_N16
\inst|count[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[8]~25_combout\ = (\inst|count\(8) & (\inst|count[7]~24\ $ (GND))) # (!\inst|count\(8) & (!\inst|count[7]~24\ & VCC))
-- \inst|count[8]~26\ = CARRY((\inst|count\(8) & !\inst|count[7]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(8),
	datad => VCC,
	cin => \inst|count[7]~24\,
	combout => \inst|count[8]~25_combout\,
	cout => \inst|count[8]~26\);

-- Location: FF_X30_Y12_N17
\inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[8]~25_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(8));

-- Location: LCCOMB_X30_Y12_N18
\inst|count[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[9]~27_combout\ = (\inst|count\(9) & (!\inst|count[8]~26\)) # (!\inst|count\(9) & ((\inst|count[8]~26\) # (GND)))
-- \inst|count[9]~28\ = CARRY((!\inst|count[8]~26\) # (!\inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(9),
	datad => VCC,
	cin => \inst|count[8]~26\,
	combout => \inst|count[9]~27_combout\,
	cout => \inst|count[9]~28\);

-- Location: FF_X30_Y12_N19
\inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[9]~27_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(9));

-- Location: LCCOMB_X30_Y12_N20
\inst|count[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[10]~29_combout\ = (\inst|count\(10) & (\inst|count[9]~28\ $ (GND))) # (!\inst|count\(10) & (!\inst|count[9]~28\ & VCC))
-- \inst|count[10]~30\ = CARRY((\inst|count\(10) & !\inst|count[9]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(10),
	datad => VCC,
	cin => \inst|count[9]~28\,
	combout => \inst|count[10]~29_combout\,
	cout => \inst|count[10]~30\);

-- Location: FF_X30_Y12_N21
\inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[10]~29_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(10));

-- Location: LCCOMB_X30_Y12_N22
\inst|count[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[11]~31_combout\ = (\inst|count\(11) & (!\inst|count[10]~30\)) # (!\inst|count\(11) & ((\inst|count[10]~30\) # (GND)))
-- \inst|count[11]~32\ = CARRY((!\inst|count[10]~30\) # (!\inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(11),
	datad => VCC,
	cin => \inst|count[10]~30\,
	combout => \inst|count[11]~31_combout\,
	cout => \inst|count[11]~32\);

-- Location: FF_X30_Y12_N23
\inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[11]~31_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(11));

-- Location: LCCOMB_X30_Y12_N24
\inst|count[12]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[12]~33_combout\ = (\inst|count\(12) & (\inst|count[11]~32\ $ (GND))) # (!\inst|count\(12) & (!\inst|count[11]~32\ & VCC))
-- \inst|count[12]~34\ = CARRY((\inst|count\(12) & !\inst|count[11]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(12),
	datad => VCC,
	cin => \inst|count[11]~32\,
	combout => \inst|count[12]~33_combout\,
	cout => \inst|count[12]~34\);

-- Location: FF_X30_Y12_N25
\inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[12]~33_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(12));

-- Location: LCCOMB_X30_Y12_N26
\inst|count[13]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[13]~35_combout\ = (\inst|count\(13) & (!\inst|count[12]~34\)) # (!\inst|count\(13) & ((\inst|count[12]~34\) # (GND)))
-- \inst|count[13]~36\ = CARRY((!\inst|count[12]~34\) # (!\inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(13),
	datad => VCC,
	cin => \inst|count[12]~34\,
	combout => \inst|count[13]~35_combout\,
	cout => \inst|count[13]~36\);

-- Location: FF_X30_Y12_N27
\inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[13]~35_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(13));

-- Location: LCCOMB_X30_Y12_N28
\inst|count[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[14]~37_combout\ = \inst|count[13]~36\ $ (!\inst|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|count\(14),
	cin => \inst|count[13]~36\,
	combout => \inst|count[14]~37_combout\);

-- Location: FF_X30_Y12_N29
\inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[14]~37_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(14));

-- Location: LCCOMB_X30_Y12_N0
\inst|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~0_combout\ = (((!\inst|count\(8) & !\inst|count\(9))) # (!\inst|count\(10))) # (!\inst|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(11),
	datab => \inst|count\(8),
	datac => \inst|count\(9),
	datad => \inst|count\(10),
	combout => \inst|op_1~0_combout\);

-- Location: LCCOMB_X30_Y12_N2
\inst|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~1_combout\ = (\inst|count\(13) & (\inst|count\(14) & (\inst|count\(12) & !\inst|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(13),
	datab => \inst|count\(14),
	datac => \inst|count\(12),
	datad => \inst|op_1~0_combout\,
	combout => \inst|op_1~1_combout\);

-- Location: LCCOMB_X31_Y12_N18
\inst|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alt~1_combout\ = \inst|alt~q\ $ (\inst|op_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alt~q\,
	datad => \inst|op_1~1_combout\,
	combout => \inst|alt~1_combout\);

-- Location: LCCOMB_X31_Y12_N28
\inst|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alt~feeder_combout\ = \inst|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alt~1_combout\,
	combout => \inst|alt~feeder_combout\);

-- Location: FF_X31_Y12_N29
\inst|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alt~q\);

-- Location: CLKCTRL_G6
\inst|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|alt~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y22_N18
\inst4|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count[1]~1_combout\ = !\inst4|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(1),
	combout => \inst4|count[1]~1_combout\);

-- Location: FF_X12_Y22_N19
\inst4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst4|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(1));

-- Location: LCCOMB_X12_Y22_N16
\inst4|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~0_combout\ = \inst4|count\(2) $ (\inst4|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(2),
	datad => \inst4|count\(1),
	combout => \inst4|_~0_combout\);

-- Location: FF_X12_Y22_N17
\inst4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst4|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(2));

-- Location: LCCOMB_X12_Y22_N24
\inst2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~0_combout\ = (\inst4|count\(1)) # (\inst4|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(1),
	datad => \inst4|count\(2),
	combout => \inst2|_~0_combout\);

-- Location: LCCOMB_X12_Y22_N6
\inst2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~1_combout\ = (\inst4|count\(1) & !\inst4|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(1),
	datad => \inst4|count\(2),
	combout => \inst2|_~1_combout\);

-- Location: LCCOMB_X12_Y22_N0
\inst2|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~2_combout\ = (!\inst4|count\(1) & \inst4|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(1),
	datad => \inst4|count\(2),
	combout => \inst2|_~2_combout\);

-- Location: LCCOMB_X13_Y22_N4
\inst2|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~3_combout\ = (\inst4|count\(1) & \inst4|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(1),
	datac => \inst4|count\(2),
	combout => \inst2|_~3_combout\);

-- Location: LCCOMB_X33_Y12_N12
\inst1|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~2_combout\ = ((!\inst1|divisor|count\(6) & (!\inst1|divisor|count\(5) & !\inst1|divisor|count\(8)))) # (!\inst1|divisor|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(6),
	datab => \inst1|divisor|count\(5),
	datac => \inst1|divisor|count\(8),
	datad => \inst1|divisor|count\(9),
	combout => \inst1|divisor|op_1~2_combout\);

-- Location: LCCOMB_X33_Y12_N22
\inst1|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~3_combout\ = ((\inst1|divisor|op_1~2_combout\) # ((!\inst1|divisor|count\(7) & !\inst1|divisor|count\(8)))) # (!\inst1|divisor|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(7),
	datab => \inst1|divisor|count\(8),
	datac => \inst1|divisor|count\(10),
	datad => \inst1|divisor|op_1~2_combout\,
	combout => \inst1|divisor|op_1~3_combout\);

-- Location: LCCOMB_X33_Y12_N10
\inst1|divisor|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~4_combout\ = (!\inst1|divisor|count\(14) & (!\inst1|divisor|count\(13) & (!\inst1|divisor|count\(11) & !\inst1|divisor|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(14),
	datab => \inst1|divisor|count\(13),
	datac => \inst1|divisor|count\(11),
	datad => \inst1|divisor|count\(12),
	combout => \inst1|divisor|op_1~4_combout\);

-- Location: LCCOMB_X33_Y12_N20
\inst1|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|_~0_combout\ = (!\inst1|divisor|count\(1) & ((\inst1|divisor|op_1~5_combout\) # ((\inst1|divisor|op_1~3_combout\ & \inst1|divisor|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|op_1~3_combout\,
	datab => \inst1|divisor|op_1~5_combout\,
	datac => \inst1|divisor|count\(1),
	datad => \inst1|divisor|op_1~4_combout\,
	combout => \inst1|divisor|_~0_combout\);

-- Location: FF_X33_Y12_N21
\inst1|divisor|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(1));

-- Location: LCCOMB_X32_Y12_N0
\inst1|divisor|count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[2]~15_combout\ = (\inst1|divisor|count\(1) & (\inst1|divisor|count\(2) $ (VCC))) # (!\inst1|divisor|count\(1) & (\inst1|divisor|count\(2) & VCC))
-- \inst1|divisor|count[2]~16\ = CARRY((\inst1|divisor|count\(1) & \inst1|divisor|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(1),
	datab => \inst1|divisor|count\(2),
	datad => VCC,
	combout => \inst1|divisor|count[2]~15_combout\,
	cout => \inst1|divisor|count[2]~16\);

-- Location: LCCOMB_X32_Y12_N26
\inst1|divisor|count[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[15]~41_combout\ = (\inst1|divisor|count\(15) & (!\inst1|divisor|count[14]~40\)) # (!\inst1|divisor|count\(15) & ((\inst1|divisor|count[14]~40\) # (GND)))
-- \inst1|divisor|count[15]~42\ = CARRY((!\inst1|divisor|count[14]~40\) # (!\inst1|divisor|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(15),
	datad => VCC,
	cin => \inst1|divisor|count[14]~40\,
	combout => \inst1|divisor|count[15]~41_combout\,
	cout => \inst1|divisor|count[15]~42\);

-- Location: LCCOMB_X32_Y12_N28
\inst1|divisor|count[16]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[16]~43_combout\ = \inst1|divisor|count[15]~42\ $ (!\inst1|divisor|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|divisor|count\(16),
	cin => \inst1|divisor|count[15]~42\,
	combout => \inst1|divisor|count[16]~43_combout\);

-- Location: FF_X32_Y12_N29
\inst1|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[16]~43_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(16));

-- Location: LCCOMB_X32_Y12_N30
\inst1|divisor|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~6_combout\ = (\inst1|divisor|count\(15) & (\inst1|divisor|count\(16) & ((!\inst1|divisor|op_1~3_combout\) # (!\inst1|divisor|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(15),
	datab => \inst1|divisor|count\(16),
	datac => \inst1|divisor|op_1~4_combout\,
	datad => \inst1|divisor|op_1~3_combout\,
	combout => \inst1|divisor|op_1~6_combout\);

-- Location: FF_X32_Y12_N1
\inst1|divisor|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[2]~15_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(2));

-- Location: LCCOMB_X32_Y12_N2
\inst1|divisor|count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[3]~17_combout\ = (\inst1|divisor|count\(3) & (!\inst1|divisor|count[2]~16\)) # (!\inst1|divisor|count\(3) & ((\inst1|divisor|count[2]~16\) # (GND)))
-- \inst1|divisor|count[3]~18\ = CARRY((!\inst1|divisor|count[2]~16\) # (!\inst1|divisor|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|divisor|count\(3),
	datad => VCC,
	cin => \inst1|divisor|count[2]~16\,
	combout => \inst1|divisor|count[3]~17_combout\,
	cout => \inst1|divisor|count[3]~18\);

-- Location: FF_X32_Y12_N3
\inst1|divisor|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[3]~17_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(3));

-- Location: LCCOMB_X32_Y12_N4
\inst1|divisor|count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[4]~19_combout\ = (\inst1|divisor|count\(4) & (\inst1|divisor|count[3]~18\ $ (GND))) # (!\inst1|divisor|count\(4) & (!\inst1|divisor|count[3]~18\ & VCC))
-- \inst1|divisor|count[4]~20\ = CARRY((\inst1|divisor|count\(4) & !\inst1|divisor|count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|divisor|count\(4),
	datad => VCC,
	cin => \inst1|divisor|count[3]~18\,
	combout => \inst1|divisor|count[4]~19_combout\,
	cout => \inst1|divisor|count[4]~20\);

-- Location: FF_X32_Y12_N5
\inst1|divisor|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[4]~19_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(4));

-- Location: LCCOMB_X32_Y12_N6
\inst1|divisor|count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[5]~21_combout\ = (\inst1|divisor|count\(5) & (!\inst1|divisor|count[4]~20\)) # (!\inst1|divisor|count\(5) & ((\inst1|divisor|count[4]~20\) # (GND)))
-- \inst1|divisor|count[5]~22\ = CARRY((!\inst1|divisor|count[4]~20\) # (!\inst1|divisor|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(5),
	datad => VCC,
	cin => \inst1|divisor|count[4]~20\,
	combout => \inst1|divisor|count[5]~21_combout\,
	cout => \inst1|divisor|count[5]~22\);

-- Location: FF_X32_Y12_N7
\inst1|divisor|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[5]~21_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(5));

-- Location: LCCOMB_X32_Y12_N8
\inst1|divisor|count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[6]~23_combout\ = (\inst1|divisor|count\(6) & (\inst1|divisor|count[5]~22\ $ (GND))) # (!\inst1|divisor|count\(6) & (!\inst1|divisor|count[5]~22\ & VCC))
-- \inst1|divisor|count[6]~24\ = CARRY((\inst1|divisor|count\(6) & !\inst1|divisor|count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|divisor|count\(6),
	datad => VCC,
	cin => \inst1|divisor|count[5]~22\,
	combout => \inst1|divisor|count[6]~23_combout\,
	cout => \inst1|divisor|count[6]~24\);

-- Location: FF_X32_Y12_N9
\inst1|divisor|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[6]~23_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(6));

-- Location: LCCOMB_X32_Y12_N10
\inst1|divisor|count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[7]~25_combout\ = (\inst1|divisor|count\(7) & (!\inst1|divisor|count[6]~24\)) # (!\inst1|divisor|count\(7) & ((\inst1|divisor|count[6]~24\) # (GND)))
-- \inst1|divisor|count[7]~26\ = CARRY((!\inst1|divisor|count[6]~24\) # (!\inst1|divisor|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(7),
	datad => VCC,
	cin => \inst1|divisor|count[6]~24\,
	combout => \inst1|divisor|count[7]~25_combout\,
	cout => \inst1|divisor|count[7]~26\);

-- Location: FF_X32_Y12_N11
\inst1|divisor|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[7]~25_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(7));

-- Location: LCCOMB_X32_Y12_N12
\inst1|divisor|count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[8]~27_combout\ = (\inst1|divisor|count\(8) & (\inst1|divisor|count[7]~26\ $ (GND))) # (!\inst1|divisor|count\(8) & (!\inst1|divisor|count[7]~26\ & VCC))
-- \inst1|divisor|count[8]~28\ = CARRY((\inst1|divisor|count\(8) & !\inst1|divisor|count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(8),
	datad => VCC,
	cin => \inst1|divisor|count[7]~26\,
	combout => \inst1|divisor|count[8]~27_combout\,
	cout => \inst1|divisor|count[8]~28\);

-- Location: FF_X32_Y12_N13
\inst1|divisor|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[8]~27_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(8));

-- Location: LCCOMB_X32_Y12_N14
\inst1|divisor|count[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[9]~29_combout\ = (\inst1|divisor|count\(9) & (!\inst1|divisor|count[8]~28\)) # (!\inst1|divisor|count\(9) & ((\inst1|divisor|count[8]~28\) # (GND)))
-- \inst1|divisor|count[9]~30\ = CARRY((!\inst1|divisor|count[8]~28\) # (!\inst1|divisor|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|divisor|count\(9),
	datad => VCC,
	cin => \inst1|divisor|count[8]~28\,
	combout => \inst1|divisor|count[9]~29_combout\,
	cout => \inst1|divisor|count[9]~30\);

-- Location: FF_X32_Y12_N15
\inst1|divisor|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[9]~29_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(9));

-- Location: LCCOMB_X32_Y12_N16
\inst1|divisor|count[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[10]~31_combout\ = (\inst1|divisor|count\(10) & (\inst1|divisor|count[9]~30\ $ (GND))) # (!\inst1|divisor|count\(10) & (!\inst1|divisor|count[9]~30\ & VCC))
-- \inst1|divisor|count[10]~32\ = CARRY((\inst1|divisor|count\(10) & !\inst1|divisor|count[9]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|divisor|count\(10),
	datad => VCC,
	cin => \inst1|divisor|count[9]~30\,
	combout => \inst1|divisor|count[10]~31_combout\,
	cout => \inst1|divisor|count[10]~32\);

-- Location: FF_X32_Y12_N17
\inst1|divisor|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[10]~31_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(10));

-- Location: LCCOMB_X32_Y12_N18
\inst1|divisor|count[11]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[11]~33_combout\ = (\inst1|divisor|count\(11) & (!\inst1|divisor|count[10]~32\)) # (!\inst1|divisor|count\(11) & ((\inst1|divisor|count[10]~32\) # (GND)))
-- \inst1|divisor|count[11]~34\ = CARRY((!\inst1|divisor|count[10]~32\) # (!\inst1|divisor|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|divisor|count\(11),
	datad => VCC,
	cin => \inst1|divisor|count[10]~32\,
	combout => \inst1|divisor|count[11]~33_combout\,
	cout => \inst1|divisor|count[11]~34\);

-- Location: FF_X32_Y12_N19
\inst1|divisor|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[11]~33_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(11));

-- Location: LCCOMB_X32_Y12_N20
\inst1|divisor|count[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[12]~35_combout\ = (\inst1|divisor|count\(12) & (\inst1|divisor|count[11]~34\ $ (GND))) # (!\inst1|divisor|count\(12) & (!\inst1|divisor|count[11]~34\ & VCC))
-- \inst1|divisor|count[12]~36\ = CARRY((\inst1|divisor|count\(12) & !\inst1|divisor|count[11]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|divisor|count\(12),
	datad => VCC,
	cin => \inst1|divisor|count[11]~34\,
	combout => \inst1|divisor|count[12]~35_combout\,
	cout => \inst1|divisor|count[12]~36\);

-- Location: FF_X32_Y12_N21
\inst1|divisor|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[12]~35_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(12));

-- Location: LCCOMB_X32_Y12_N22
\inst1|divisor|count[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[13]~37_combout\ = (\inst1|divisor|count\(13) & (!\inst1|divisor|count[12]~36\)) # (!\inst1|divisor|count\(13) & ((\inst1|divisor|count[12]~36\) # (GND)))
-- \inst1|divisor|count[13]~38\ = CARRY((!\inst1|divisor|count[12]~36\) # (!\inst1|divisor|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(13),
	datad => VCC,
	cin => \inst1|divisor|count[12]~36\,
	combout => \inst1|divisor|count[13]~37_combout\,
	cout => \inst1|divisor|count[13]~38\);

-- Location: FF_X32_Y12_N23
\inst1|divisor|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[13]~37_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(13));

-- Location: LCCOMB_X32_Y12_N24
\inst1|divisor|count[14]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|count[14]~39_combout\ = (\inst1|divisor|count\(14) & (\inst1|divisor|count[13]~38\ $ (GND))) # (!\inst1|divisor|count\(14) & (!\inst1|divisor|count[13]~38\ & VCC))
-- \inst1|divisor|count[14]~40\ = CARRY((\inst1|divisor|count\(14) & !\inst1|divisor|count[13]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|divisor|count\(14),
	datad => VCC,
	cin => \inst1|divisor|count[13]~38\,
	combout => \inst1|divisor|count[14]~39_combout\,
	cout => \inst1|divisor|count[14]~40\);

-- Location: FF_X32_Y12_N25
\inst1|divisor|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[14]~39_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(14));

-- Location: FF_X32_Y12_N27
\inst1|divisor|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[15]~41_combout\,
	sclr => \inst1|divisor|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(15));

-- Location: LCCOMB_X33_Y12_N24
\inst1|divisor|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~5_combout\ = (!\inst1|divisor|count\(16)) # (!\inst1|divisor|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|divisor|count\(15),
	datad => \inst1|divisor|count\(16),
	combout => \inst1|divisor|op_1~5_combout\);

-- Location: LCCOMB_X33_Y12_N26
\inst1|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|alt~1_combout\ = \inst1|divisor|alt~q\ $ (((!\inst1|divisor|op_1~5_combout\ & ((!\inst1|divisor|op_1~4_combout\) # (!\inst1|divisor|op_1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|alt~q\,
	datab => \inst1|divisor|op_1~5_combout\,
	datac => \inst1|divisor|op_1~3_combout\,
	datad => \inst1|divisor|op_1~4_combout\,
	combout => \inst1|divisor|alt~1_combout\);

-- Location: LCCOMB_X33_Y12_N18
\inst1|divisor|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|alt~feeder_combout\ = \inst1|divisor|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|divisor|alt~1_combout\,
	combout => \inst1|divisor|alt~feeder_combout\);

-- Location: FF_X33_Y12_N19
\inst1|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|alt~q\);

-- Location: LCCOMB_X33_Y12_N28
\inst1|ff[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ff[2]~0_combout\ = LCELL(\inst1|divisor|alt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|divisor|alt~q\,
	combout => \inst1|ff[2]~0_combout\);

-- Location: CLKCTRL_G8
\inst1|divisor|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|divisor|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|divisor|alt~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N22
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: LCCOMB_X33_Y8_N28
\inst1|ff[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ff[0]~1_combout\ = !\key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[1]~input_o\,
	combout => \inst1|ff[0]~1_combout\);

-- Location: FF_X33_Y8_N29
\inst1|ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|divisor|alt~clkctrl_outclk\,
	d => \inst1|ff[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ff\(0));

-- Location: LCCOMB_X33_Y8_N18
\inst1|ff[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ff[1]~feeder_combout\ = \inst1|ff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ff\(0),
	combout => \inst1|ff[1]~feeder_combout\);

-- Location: FF_X33_Y8_N19
\inst1|ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|divisor|alt~clkctrl_outclk\,
	d => \inst1|ff[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ff\(1));

-- Location: LCCOMB_X33_Y8_N24
\inst1|ff[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ff[2]~feeder_combout\ = \inst1|ff\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ff\(1),
	combout => \inst1|ff[2]~feeder_combout\);

-- Location: FF_X33_Y8_N25
\inst1|ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ff[2]~0_combout\,
	d => \inst1|ff[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ff\(2));

-- Location: LCCOMB_X1_Y11_N22
\inst5|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~0_combout\ = (!\inst5|count\(1) & !\inst5|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|count\(1),
	datad => \inst5|op_1~2_combout\,
	combout => \inst5|_~0_combout\);

-- Location: FF_X1_Y11_N23
\inst5|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(1));

-- Location: LCCOMB_X1_Y11_N0
\inst5|count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[2]~9_combout\ = (\inst5|count\(1) & (\inst5|count\(2) $ (VCC))) # (!\inst5|count\(1) & (\inst5|count\(2) & VCC))
-- \inst5|count[2]~10\ = CARRY((\inst5|count\(1) & \inst5|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(1),
	datab => \inst5|count\(2),
	datad => VCC,
	combout => \inst5|count[2]~9_combout\,
	cout => \inst5|count[2]~10\);

-- Location: FF_X1_Y11_N1
\inst5|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[2]~9_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(2));

-- Location: LCCOMB_X1_Y11_N2
\inst5|count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[3]~11_combout\ = (\inst5|count\(3) & (!\inst5|count[2]~10\)) # (!\inst5|count\(3) & ((\inst5|count[2]~10\) # (GND)))
-- \inst5|count[3]~12\ = CARRY((!\inst5|count[2]~10\) # (!\inst5|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(3),
	datad => VCC,
	cin => \inst5|count[2]~10\,
	combout => \inst5|count[3]~11_combout\,
	cout => \inst5|count[3]~12\);

-- Location: FF_X1_Y11_N3
\inst5|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[3]~11_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(3));

-- Location: LCCOMB_X1_Y11_N4
\inst5|count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[4]~13_combout\ = (\inst5|count\(4) & (\inst5|count[3]~12\ $ (GND))) # (!\inst5|count\(4) & (!\inst5|count[3]~12\ & VCC))
-- \inst5|count[4]~14\ = CARRY((\inst5|count\(4) & !\inst5|count[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(4),
	datad => VCC,
	cin => \inst5|count[3]~12\,
	combout => \inst5|count[4]~13_combout\,
	cout => \inst5|count[4]~14\);

-- Location: FF_X1_Y11_N5
\inst5|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[4]~13_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(4));

-- Location: LCCOMB_X1_Y11_N6
\inst5|count[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[5]~15_combout\ = (\inst5|count\(5) & (!\inst5|count[4]~14\)) # (!\inst5|count\(5) & ((\inst5|count[4]~14\) # (GND)))
-- \inst5|count[5]~16\ = CARRY((!\inst5|count[4]~14\) # (!\inst5|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(5),
	datad => VCC,
	cin => \inst5|count[4]~14\,
	combout => \inst5|count[5]~15_combout\,
	cout => \inst5|count[5]~16\);

-- Location: FF_X1_Y11_N7
\inst5|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[5]~15_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(5));

-- Location: LCCOMB_X1_Y11_N8
\inst5|count[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[6]~17_combout\ = (\inst5|count\(6) & (\inst5|count[5]~16\ $ (GND))) # (!\inst5|count\(6) & (!\inst5|count[5]~16\ & VCC))
-- \inst5|count[6]~18\ = CARRY((\inst5|count\(6) & !\inst5|count[5]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(6),
	datad => VCC,
	cin => \inst5|count[5]~16\,
	combout => \inst5|count[6]~17_combout\,
	cout => \inst5|count[6]~18\);

-- Location: FF_X1_Y11_N9
\inst5|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[6]~17_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(6));

-- Location: LCCOMB_X1_Y11_N10
\inst5|count[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[7]~19_combout\ = (\inst5|count\(7) & (!\inst5|count[6]~18\)) # (!\inst5|count\(7) & ((\inst5|count[6]~18\) # (GND)))
-- \inst5|count[7]~20\ = CARRY((!\inst5|count[6]~18\) # (!\inst5|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(7),
	datad => VCC,
	cin => \inst5|count[6]~18\,
	combout => \inst5|count[7]~19_combout\,
	cout => \inst5|count[7]~20\);

-- Location: FF_X1_Y11_N11
\inst5|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[7]~19_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(7));

-- Location: LCCOMB_X1_Y11_N12
\inst5|count[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[8]~21_combout\ = (\inst5|count\(8) & (\inst5|count[7]~20\ $ (GND))) # (!\inst5|count\(8) & (!\inst5|count[7]~20\ & VCC))
-- \inst5|count[8]~22\ = CARRY((\inst5|count\(8) & !\inst5|count[7]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(8),
	datad => VCC,
	cin => \inst5|count[7]~20\,
	combout => \inst5|count[8]~21_combout\,
	cout => \inst5|count[8]~22\);

-- Location: FF_X1_Y11_N13
\inst5|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[8]~21_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(8));

-- Location: LCCOMB_X1_Y11_N14
\inst5|count[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[9]~23_combout\ = (\inst5|count\(9) & (!\inst5|count[8]~22\)) # (!\inst5|count\(9) & ((\inst5|count[8]~22\) # (GND)))
-- \inst5|count[9]~24\ = CARRY((!\inst5|count[8]~22\) # (!\inst5|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(9),
	datad => VCC,
	cin => \inst5|count[8]~22\,
	combout => \inst5|count[9]~23_combout\,
	cout => \inst5|count[9]~24\);

-- Location: FF_X1_Y11_N15
\inst5|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[9]~23_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(9));

-- Location: LCCOMB_X1_Y11_N16
\inst5|count[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[10]~25_combout\ = \inst5|count[9]~24\ $ (!\inst5|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|count\(10),
	cin => \inst5|count[9]~24\,
	combout => \inst5|count[10]~25_combout\);

-- Location: FF_X1_Y11_N17
\inst5|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[10]~25_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(10));

-- Location: LCCOMB_X1_Y11_N30
\inst5|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|op_1~1_combout\ = (!\inst5|count\(5) & (((!\inst5|count\(2)) # (!\inst5|count\(4))) # (!\inst5|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(5),
	datab => \inst5|count\(3),
	datac => \inst5|count\(4),
	datad => \inst5|count\(2),
	combout => \inst5|op_1~1_combout\);

-- Location: LCCOMB_X1_Y11_N28
\inst5|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|op_1~0_combout\ = (!\inst5|count\(9) & (((!\inst5|count\(7)) # (!\inst5|count\(6))) # (!\inst5|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(8),
	datab => \inst5|count\(6),
	datac => \inst5|count\(9),
	datad => \inst5|count\(7),
	combout => \inst5|op_1~0_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst5|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|op_1~2_combout\ = (\inst5|count\(10) & (!\inst5|op_1~0_combout\ & ((\inst5|count\(9)) # (!\inst5|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(9),
	datab => \inst5|count\(10),
	datac => \inst5|op_1~1_combout\,
	datad => \inst5|op_1~0_combout\,
	combout => \inst5|op_1~2_combout\);

-- Location: LCCOMB_X1_Y11_N20
\inst5|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|alt~1_combout\ = \inst5|alt~q\ $ (\inst5|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|alt~q\,
	datad => \inst5|op_1~2_combout\,
	combout => \inst5|alt~1_combout\);

-- Location: LCCOMB_X1_Y11_N26
\inst5|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|alt~feeder_combout\ = \inst5|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|alt~1_combout\,
	combout => \inst5|alt~feeder_combout\);

-- Location: FF_X1_Y11_N27
\inst5|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|alt~q\);

-- Location: CLKCTRL_G1
\inst5|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|alt~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y22_N20
\inst6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|_~2_combout\ = (!\inst6|count\(4) & (\inst6|count\(1) $ (\inst6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datac => \inst6|count\(2),
	datad => \inst6|count\(4),
	combout => \inst6|_~2_combout\);

-- Location: FF_X17_Y22_N21
\inst6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|alt~clkctrl_outclk\,
	d => \inst6|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(2));

-- Location: LCCOMB_X17_Y22_N10
\inst6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|_~1_combout\ = (!\inst6|count\(4) & (\inst6|count\(3) $ (((\inst6|count\(1) & \inst6|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datab => \inst6|count\(4),
	datac => \inst6|count\(3),
	datad => \inst6|count\(2),
	combout => \inst6|_~1_combout\);

-- Location: FF_X17_Y22_N11
\inst6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|alt~clkctrl_outclk\,
	d => \inst6|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(3));

-- Location: LCCOMB_X17_Y22_N22
\inst6|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|_~3_combout\ = (!\inst6|count\(1) & (((!\inst6|count\(3) & !\inst6|count\(2))) # (!\inst6|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(3),
	datab => \inst6|count\(2),
	datac => \inst6|count\(1),
	datad => \inst6|count\(4),
	combout => \inst6|_~3_combout\);

-- Location: FF_X17_Y22_N23
\inst6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|alt~clkctrl_outclk\,
	d => \inst6|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(1));

-- Location: LCCOMB_X17_Y22_N24
\inst6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|_~0_combout\ = (\inst6|count\(1) & (\inst6|count\(2) & (!\inst6|count\(4) & \inst6|count\(3)))) # (!\inst6|count\(1) & (!\inst6|count\(2) & (\inst6|count\(4) & !\inst6|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datab => \inst6|count\(2),
	datac => \inst6|count\(4),
	datad => \inst6|count\(3),
	combout => \inst6|_~0_combout\);

-- Location: FF_X17_Y22_N25
\inst6|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|alt~clkctrl_outclk\,
	d => \inst6|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(4));

-- Location: LCCOMB_X17_Y22_N0
\inst2|seg[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~22_combout\ = (\inst6|count\(2) & ((!\inst6|count\(3)) # (!\inst6|count\(1)))) # (!\inst6|count\(2) & ((\inst6|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(2),
	datac => \inst6|count\(1),
	datad => \inst6|count\(3),
	combout => \inst2|seg[6]~22_combout\);

-- Location: LCCOMB_X17_Y22_N14
\inst2|seg[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~23_combout\ = (\inst4|count\(2)) # ((!\inst4|count\(1) & (!\inst6|count\(4) & !\inst2|seg[6]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(2),
	datab => \inst4|count\(1),
	datac => \inst6|count\(4),
	datad => \inst2|seg[6]~22_combout\,
	combout => \inst2|seg[6]~23_combout\);

-- Location: LCCOMB_X17_Y22_N28
\inst2|seg[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~24_combout\ = (\inst6|count\(2) & ((\inst6|count\(1)) # (!\inst6|count\(3)))) # (!\inst6|count\(2) & (\inst6|count\(1) & !\inst6|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(2),
	datac => \inst6|count\(1),
	datad => \inst6|count\(3),
	combout => \inst2|seg[5]~24_combout\);

-- Location: LCCOMB_X17_Y22_N26
\inst2|seg[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~25_combout\ = (!\inst4|count\(2) & ((\inst4|count\(1)) # ((!\inst6|count\(4) & \inst2|seg[5]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count\(2),
	datab => \inst4|count\(1),
	datac => \inst6|count\(4),
	datad => \inst2|seg[5]~24_combout\,
	combout => \inst2|seg[5]~25_combout\);

-- Location: LCCOMB_X17_Y22_N12
\inst2|seg[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~26_combout\ = (\inst6|count\(2) & (!\inst6|count\(4) & ((\inst6|count\(1))))) # (!\inst6|count\(2) & ((\inst6|count\(3) & (!\inst6|count\(4))) # (!\inst6|count\(3) & ((\inst6|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(4),
	datab => \inst6|count\(3),
	datac => \inst6|count\(2),
	datad => \inst6|count\(1),
	combout => \inst2|seg[4]~26_combout\);

-- Location: LCCOMB_X13_Y22_N2
\inst2|seg[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~27_combout\ = (!\inst4|count\(2) & ((\inst4|count\(1)) # (\inst2|seg[4]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count\(1),
	datac => \inst4|count\(2),
	datad => \inst2|seg[4]~26_combout\,
	combout => \inst2|seg[4]~27_combout\);

-- Location: LCCOMB_X17_Y22_N2
\inst2|seg[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~28_combout\ = (!\inst6|count\(4) & (!\inst4|count\(1) & (\inst6|count\(3) & !\inst4|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(4),
	datab => \inst4|count\(1),
	datac => \inst6|count\(3),
	datad => \inst4|count\(2),
	combout => \inst2|seg[3]~28_combout\);

-- Location: LCCOMB_X17_Y22_N8
\inst2|seg[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~29_combout\ = (!\inst6|count\(2) & (!\inst4|count\(1) & (!\inst6|count\(4) & !\inst4|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(2),
	datab => \inst4|count\(1),
	datac => \inst6|count\(4),
	datad => \inst4|count\(2),
	combout => \inst2|seg[0]~29_combout\);

-- Location: LCCOMB_X17_Y22_N30
\inst2|seg[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~30_combout\ = (!\inst2|_~1_combout\ & ((\inst6|count\(1) $ (!\inst6|count\(3))) # (!\inst2|seg[0]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datab => \inst6|count\(3),
	datac => \inst2|seg[0]~29_combout\,
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg[0]~30_combout\);

-- Location: LCCOMB_X17_Y22_N4
\inst2|seg[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~31_combout\ = ((\inst6|count\(1) & (\inst6|count\(2) & \inst2|seg[3]~28_combout\))) # (!\inst2|seg[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datab => \inst6|count\(2),
	datac => \inst2|seg[3]~28_combout\,
	datad => \inst2|seg[0]~30_combout\,
	combout => \inst2|seg[3]~31_combout\);

-- Location: LCCOMB_X17_Y22_N18
\inst2|seg[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~32_combout\ = (!\inst6|count\(4) & (!\inst4|count\(1) & (!\inst6|count\(3) & !\inst4|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(4),
	datab => \inst4|count\(1),
	datac => \inst6|count\(3),
	datad => \inst4|count\(2),
	combout => \inst2|seg[2]~32_combout\);

-- Location: LCCOMB_X17_Y22_N16
\inst2|seg[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg\(2) = (\inst2|_~1_combout\) # ((!\inst6|count\(1) & (\inst2|seg[2]~32_combout\ & \inst6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datab => \inst2|seg[2]~32_combout\,
	datac => \inst6|count\(2),
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg\(2));

-- Location: LCCOMB_X17_Y22_N6
\inst2|seg[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~33_combout\ = (\inst2|_~1_combout\) # ((\inst2|seg[3]~28_combout\ & (\inst6|count\(1) $ (\inst6|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datab => \inst6|count\(2),
	datac => \inst2|seg[3]~28_combout\,
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg[1]~33_combout\);

ww_dig(4) <= \dig[4]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;
END structure;


