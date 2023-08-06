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

-- DATE "08/06/2023 02:02:39"

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
	led : OUT std_logic_vector(2 DOWNTO 2);
	seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END projeto2;

-- Design Ports Information
-- dig[4]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_led : std_logic_vector(2 DOWNTO 2);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst4|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \dig[4]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
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
SIGNAL \inst3|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst3|_~0_combout\ : std_logic;
SIGNAL \inst2|_~0_combout\ : std_logic;
SIGNAL \inst2|_~1_combout\ : std_logic;
SIGNAL \inst2|_~2_combout\ : std_logic;
SIGNAL \inst2|_~3_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~4_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst4|divisor|_~0_combout\ : std_logic;
SIGNAL \inst4|divisor|count[2]~26_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~7_combout\ : std_logic;
SIGNAL \inst4|divisor|count[2]~27\ : std_logic;
SIGNAL \inst4|divisor|count[3]~28_combout\ : std_logic;
SIGNAL \inst4|divisor|count[3]~29\ : std_logic;
SIGNAL \inst4|divisor|count[4]~30_combout\ : std_logic;
SIGNAL \inst4|divisor|count[4]~31\ : std_logic;
SIGNAL \inst4|divisor|count[5]~32_combout\ : std_logic;
SIGNAL \inst4|divisor|count[5]~33\ : std_logic;
SIGNAL \inst4|divisor|count[6]~34_combout\ : std_logic;
SIGNAL \inst4|divisor|count[6]~35\ : std_logic;
SIGNAL \inst4|divisor|count[7]~36_combout\ : std_logic;
SIGNAL \inst4|divisor|count[7]~37\ : std_logic;
SIGNAL \inst4|divisor|count[8]~38_combout\ : std_logic;
SIGNAL \inst4|divisor|count[8]~39\ : std_logic;
SIGNAL \inst4|divisor|count[9]~40_combout\ : std_logic;
SIGNAL \inst4|divisor|count[9]~41\ : std_logic;
SIGNAL \inst4|divisor|count[10]~42_combout\ : std_logic;
SIGNAL \inst4|divisor|count[10]~43\ : std_logic;
SIGNAL \inst4|divisor|count[11]~44_combout\ : std_logic;
SIGNAL \inst4|divisor|count[11]~45\ : std_logic;
SIGNAL \inst4|divisor|count[12]~46_combout\ : std_logic;
SIGNAL \inst4|divisor|count[12]~47\ : std_logic;
SIGNAL \inst4|divisor|count[13]~48_combout\ : std_logic;
SIGNAL \inst4|divisor|count[13]~49\ : std_logic;
SIGNAL \inst4|divisor|count[14]~50_combout\ : std_logic;
SIGNAL \inst4|divisor|count[14]~51\ : std_logic;
SIGNAL \inst4|divisor|count[15]~52_combout\ : std_logic;
SIGNAL \inst4|divisor|count[15]~53\ : std_logic;
SIGNAL \inst4|divisor|count[16]~54_combout\ : std_logic;
SIGNAL \inst4|divisor|count[16]~55\ : std_logic;
SIGNAL \inst4|divisor|count[17]~56_combout\ : std_logic;
SIGNAL \inst4|divisor|count[17]~57\ : std_logic;
SIGNAL \inst4|divisor|count[18]~58_combout\ : std_logic;
SIGNAL \inst4|divisor|count[18]~59\ : std_logic;
SIGNAL \inst4|divisor|count[19]~60_combout\ : std_logic;
SIGNAL \inst4|divisor|count[19]~61\ : std_logic;
SIGNAL \inst4|divisor|count[20]~62_combout\ : std_logic;
SIGNAL \inst4|divisor|count[20]~63\ : std_logic;
SIGNAL \inst4|divisor|count[21]~64_combout\ : std_logic;
SIGNAL \inst4|divisor|count[21]~65\ : std_logic;
SIGNAL \inst4|divisor|count[22]~66_combout\ : std_logic;
SIGNAL \inst4|divisor|count[22]~67\ : std_logic;
SIGNAL \inst4|divisor|count[23]~68_combout\ : std_logic;
SIGNAL \inst4|divisor|count[23]~69\ : std_logic;
SIGNAL \inst4|divisor|count[24]~70_combout\ : std_logic;
SIGNAL \inst4|divisor|count[24]~71\ : std_logic;
SIGNAL \inst4|divisor|count[25]~72_combout\ : std_logic;
SIGNAL \inst4|divisor|count[25]~73\ : std_logic;
SIGNAL \inst4|divisor|count[26]~74_combout\ : std_logic;
SIGNAL \inst4|divisor|count[26]~75\ : std_logic;
SIGNAL \inst4|divisor|count[27]~76_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~5_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~6_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~q\ : std_logic;
SIGNAL \inst4|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|count|_~0_combout\ : std_logic;
SIGNAL \inst4|count|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst4|count|_~1_combout\ : std_logic;
SIGNAL \inst2|seg[6]~28_combout\ : std_logic;
SIGNAL \inst2|seg[6]~29_combout\ : std_logic;
SIGNAL \inst2|seg[5]~30_combout\ : std_logic;
SIGNAL \inst2|seg[5]~31_combout\ : std_logic;
SIGNAL \inst2|seg[4]~32_combout\ : std_logic;
SIGNAL \inst2|seg[4]~33_combout\ : std_logic;
SIGNAL \inst2|seg[3]~34_combout\ : std_logic;
SIGNAL \inst2|seg[3]~38_combout\ : std_logic;
SIGNAL \inst2|seg[2]~35_combout\ : std_logic;
SIGNAL \inst2|seg[1]~36_combout\ : std_logic;
SIGNAL \inst2|seg[0]~37_combout\ : std_logic;
SIGNAL \inst2|seg[0]~39_combout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \inst4|divisor|count\ : std_logic_vector(27 DOWNTO 1);
SIGNAL \inst3|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|count|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|ALT_INV__~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV__~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV__~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV__~0_combout\ : std_logic;

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

\inst4|divisor|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|divisor|alt~q\);

\inst|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|alt~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst2|ALT_INV__~3_combout\ <= NOT \inst2|_~3_combout\;
\inst2|ALT_INV__~2_combout\ <= NOT \inst2|_~2_combout\;
\inst2|ALT_INV__~1_combout\ <= NOT \inst2|_~1_combout\;
\inst2|ALT_INV__~0_combout\ <= NOT \inst2|_~0_combout\;
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
	i => \inst2|ALT_INV__~0_combout\,
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

-- Location: IOOBUF_X34_Y9_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[6]~29_combout\,
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
	i => \inst2|seg[5]~31_combout\,
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
	i => \inst2|seg[4]~33_combout\,
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
	i => \inst2|seg[3]~38_combout\,
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
	i => \inst2|seg[1]~36_combout\,
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
	i => \inst2|seg[0]~39_combout\,
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

-- Location: LCCOMB_X8_Y10_N30
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

-- Location: FF_X8_Y10_N31
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

-- Location: LCCOMB_X8_Y10_N4
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

-- Location: FF_X8_Y10_N5
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

-- Location: LCCOMB_X8_Y10_N6
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

-- Location: FF_X8_Y10_N7
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

-- Location: LCCOMB_X8_Y10_N8
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

-- Location: FF_X8_Y10_N9
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

-- Location: LCCOMB_X8_Y10_N10
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

-- Location: FF_X8_Y10_N11
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

-- Location: LCCOMB_X8_Y10_N12
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

-- Location: FF_X8_Y10_N13
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

-- Location: LCCOMB_X8_Y10_N14
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

-- Location: FF_X8_Y10_N15
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

-- Location: LCCOMB_X8_Y10_N16
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

-- Location: FF_X8_Y10_N17
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

-- Location: LCCOMB_X8_Y10_N18
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

-- Location: FF_X8_Y10_N19
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

-- Location: LCCOMB_X8_Y10_N20
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

-- Location: FF_X8_Y10_N21
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

-- Location: LCCOMB_X8_Y10_N22
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

-- Location: FF_X8_Y10_N23
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

-- Location: LCCOMB_X8_Y10_N24
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

-- Location: FF_X8_Y10_N25
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

-- Location: LCCOMB_X8_Y10_N26
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

-- Location: FF_X8_Y10_N27
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

-- Location: LCCOMB_X8_Y10_N28
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

-- Location: FF_X8_Y10_N29
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

-- Location: LCCOMB_X8_Y10_N0
\inst|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~0_combout\ = (((!\inst|count\(8) & !\inst|count\(9))) # (!\inst|count\(11))) # (!\inst|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(10),
	datab => \inst|count\(8),
	datac => \inst|count\(11),
	datad => \inst|count\(9),
	combout => \inst|op_1~0_combout\);

-- Location: LCCOMB_X8_Y10_N2
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

-- Location: LCCOMB_X7_Y10_N18
\inst|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alt~1_combout\ = \inst|alt~q\ $ (\inst|op_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alt~q\,
	datad => \inst|op_1~1_combout\,
	combout => \inst|alt~1_combout\);

-- Location: LCCOMB_X7_Y10_N0
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

-- Location: FF_X7_Y10_N1
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

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X13_Y22_N18
\inst3|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1]~0_combout\ = !\inst3|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	combout => \inst3|cnt[1]~0_combout\);

-- Location: FF_X13_Y22_N19
\inst3|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst3|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(1));

-- Location: LCCOMB_X13_Y22_N24
\inst3|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|_~0_combout\ = \inst3|cnt\(2) $ (\inst3|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(2),
	datad => \inst3|cnt\(1),
	combout => \inst3|_~0_combout\);

-- Location: FF_X13_Y22_N25
\inst3|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst3|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(2));

-- Location: LCCOMB_X13_Y22_N16
\inst2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~0_combout\ = (!\inst3|cnt\(1) & !\inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|_~0_combout\);

-- Location: LCCOMB_X13_Y22_N10
\inst2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~1_combout\ = (\inst3|cnt\(1) & !\inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|_~1_combout\);

-- Location: LCCOMB_X13_Y22_N8
\inst2|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~2_combout\ = (!\inst3|cnt\(1) & \inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|_~2_combout\);

-- Location: LCCOMB_X13_Y22_N2
\inst2|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~3_combout\ = (\inst3|cnt\(1) & \inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|_~3_combout\);

-- Location: LCCOMB_X2_Y9_N26
\inst4|divisor|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~4_combout\ = (!\inst4|divisor|count\(24) & (!\inst4|divisor|count\(19) & !\inst4|divisor|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(24),
	datac => \inst4|divisor|count\(19),
	datad => \inst4|divisor|count\(20),
	combout => \inst4|divisor|op_1~4_combout\);

-- Location: LCCOMB_X2_Y10_N4
\inst4|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~0_combout\ = (!\inst4|divisor|count\(10) & (((!\inst4|divisor|count\(7) & !\inst4|divisor|count\(8))) # (!\inst4|divisor|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(9),
	datab => \inst4|divisor|count\(7),
	datac => \inst4|divisor|count\(10),
	datad => \inst4|divisor|count\(8),
	combout => \inst4|divisor|op_1~0_combout\);

-- Location: LCCOMB_X1_Y10_N24
\inst4|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~1_combout\ = (\inst4|divisor|count\(12) & ((\inst4|divisor|count\(11)) # (!\inst4|divisor|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(11),
	datac => \inst4|divisor|count\(12),
	datad => \inst4|divisor|op_1~0_combout\,
	combout => \inst4|divisor|op_1~1_combout\);

-- Location: LCCOMB_X1_Y10_N10
\inst4|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~2_combout\ = (\inst4|divisor|count\(15) & ((\inst4|divisor|count\(14)) # ((\inst4|divisor|count\(13) & \inst4|divisor|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(14),
	datab => \inst4|divisor|count\(13),
	datac => \inst4|divisor|count\(15),
	datad => \inst4|divisor|op_1~1_combout\,
	combout => \inst4|divisor|op_1~2_combout\);

-- Location: LCCOMB_X1_Y10_N20
\inst4|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~3_combout\ = (((!\inst4|divisor|count\(16) & !\inst4|divisor|op_1~2_combout\)) # (!\inst4|divisor|count\(18))) # (!\inst4|divisor|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(16),
	datab => \inst4|divisor|count\(17),
	datac => \inst4|divisor|count\(18),
	datad => \inst4|divisor|op_1~2_combout\,
	combout => \inst4|divisor|op_1~3_combout\);

-- Location: LCCOMB_X2_Y10_N2
\inst4|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|_~0_combout\ = (!\inst4|divisor|count\(1) & ((\inst4|divisor|op_1~6_combout\) # ((\inst4|divisor|op_1~4_combout\ & \inst4|divisor|op_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|op_1~4_combout\,
	datab => \inst4|divisor|op_1~6_combout\,
	datac => \inst4|divisor|count\(1),
	datad => \inst4|divisor|op_1~3_combout\,
	combout => \inst4|divisor|_~0_combout\);

-- Location: FF_X2_Y10_N3
\inst4|divisor|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(1));

-- Location: LCCOMB_X2_Y10_N6
\inst4|divisor|count[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[2]~26_combout\ = (\inst4|divisor|count\(2) & (\inst4|divisor|count\(1) $ (VCC))) # (!\inst4|divisor|count\(2) & (\inst4|divisor|count\(1) & VCC))
-- \inst4|divisor|count[2]~27\ = CARRY((\inst4|divisor|count\(2) & \inst4|divisor|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(2),
	datab => \inst4|divisor|count\(1),
	datad => VCC,
	combout => \inst4|divisor|count[2]~26_combout\,
	cout => \inst4|divisor|count[2]~27\);

-- Location: LCCOMB_X2_Y10_N0
\inst4|divisor|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~7_combout\ = (!\inst4|divisor|op_1~6_combout\ & ((!\inst4|divisor|op_1~3_combout\) # (!\inst4|divisor|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|op_1~4_combout\,
	datac => \inst4|divisor|op_1~6_combout\,
	datad => \inst4|divisor|op_1~3_combout\,
	combout => \inst4|divisor|op_1~7_combout\);

-- Location: FF_X2_Y10_N7
\inst4|divisor|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[2]~26_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(2));

-- Location: LCCOMB_X2_Y10_N8
\inst4|divisor|count[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[3]~28_combout\ = (\inst4|divisor|count\(3) & (!\inst4|divisor|count[2]~27\)) # (!\inst4|divisor|count\(3) & ((\inst4|divisor|count[2]~27\) # (GND)))
-- \inst4|divisor|count[3]~29\ = CARRY((!\inst4|divisor|count[2]~27\) # (!\inst4|divisor|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(3),
	datad => VCC,
	cin => \inst4|divisor|count[2]~27\,
	combout => \inst4|divisor|count[3]~28_combout\,
	cout => \inst4|divisor|count[3]~29\);

-- Location: FF_X2_Y10_N9
\inst4|divisor|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[3]~28_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(3));

-- Location: LCCOMB_X2_Y10_N10
\inst4|divisor|count[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[4]~30_combout\ = (\inst4|divisor|count\(4) & (\inst4|divisor|count[3]~29\ $ (GND))) # (!\inst4|divisor|count\(4) & (!\inst4|divisor|count[3]~29\ & VCC))
-- \inst4|divisor|count[4]~31\ = CARRY((\inst4|divisor|count\(4) & !\inst4|divisor|count[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(4),
	datad => VCC,
	cin => \inst4|divisor|count[3]~29\,
	combout => \inst4|divisor|count[4]~30_combout\,
	cout => \inst4|divisor|count[4]~31\);

-- Location: FF_X2_Y10_N11
\inst4|divisor|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[4]~30_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(4));

-- Location: LCCOMB_X2_Y10_N12
\inst4|divisor|count[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[5]~32_combout\ = (\inst4|divisor|count\(5) & (!\inst4|divisor|count[4]~31\)) # (!\inst4|divisor|count\(5) & ((\inst4|divisor|count[4]~31\) # (GND)))
-- \inst4|divisor|count[5]~33\ = CARRY((!\inst4|divisor|count[4]~31\) # (!\inst4|divisor|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(5),
	datad => VCC,
	cin => \inst4|divisor|count[4]~31\,
	combout => \inst4|divisor|count[5]~32_combout\,
	cout => \inst4|divisor|count[5]~33\);

-- Location: FF_X2_Y10_N13
\inst4|divisor|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[5]~32_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(5));

-- Location: LCCOMB_X2_Y10_N14
\inst4|divisor|count[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[6]~34_combout\ = (\inst4|divisor|count\(6) & (\inst4|divisor|count[5]~33\ $ (GND))) # (!\inst4|divisor|count\(6) & (!\inst4|divisor|count[5]~33\ & VCC))
-- \inst4|divisor|count[6]~35\ = CARRY((\inst4|divisor|count\(6) & !\inst4|divisor|count[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(6),
	datad => VCC,
	cin => \inst4|divisor|count[5]~33\,
	combout => \inst4|divisor|count[6]~34_combout\,
	cout => \inst4|divisor|count[6]~35\);

-- Location: FF_X2_Y10_N15
\inst4|divisor|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[6]~34_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(6));

-- Location: LCCOMB_X2_Y10_N16
\inst4|divisor|count[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[7]~36_combout\ = (\inst4|divisor|count\(7) & (!\inst4|divisor|count[6]~35\)) # (!\inst4|divisor|count\(7) & ((\inst4|divisor|count[6]~35\) # (GND)))
-- \inst4|divisor|count[7]~37\ = CARRY((!\inst4|divisor|count[6]~35\) # (!\inst4|divisor|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(7),
	datad => VCC,
	cin => \inst4|divisor|count[6]~35\,
	combout => \inst4|divisor|count[7]~36_combout\,
	cout => \inst4|divisor|count[7]~37\);

-- Location: FF_X2_Y10_N17
\inst4|divisor|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[7]~36_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(7));

-- Location: LCCOMB_X2_Y10_N18
\inst4|divisor|count[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[8]~38_combout\ = (\inst4|divisor|count\(8) & (\inst4|divisor|count[7]~37\ $ (GND))) # (!\inst4|divisor|count\(8) & (!\inst4|divisor|count[7]~37\ & VCC))
-- \inst4|divisor|count[8]~39\ = CARRY((\inst4|divisor|count\(8) & !\inst4|divisor|count[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(8),
	datad => VCC,
	cin => \inst4|divisor|count[7]~37\,
	combout => \inst4|divisor|count[8]~38_combout\,
	cout => \inst4|divisor|count[8]~39\);

-- Location: FF_X2_Y10_N19
\inst4|divisor|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[8]~38_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(8));

-- Location: LCCOMB_X2_Y10_N20
\inst4|divisor|count[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[9]~40_combout\ = (\inst4|divisor|count\(9) & (!\inst4|divisor|count[8]~39\)) # (!\inst4|divisor|count\(9) & ((\inst4|divisor|count[8]~39\) # (GND)))
-- \inst4|divisor|count[9]~41\ = CARRY((!\inst4|divisor|count[8]~39\) # (!\inst4|divisor|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(9),
	datad => VCC,
	cin => \inst4|divisor|count[8]~39\,
	combout => \inst4|divisor|count[9]~40_combout\,
	cout => \inst4|divisor|count[9]~41\);

-- Location: FF_X2_Y10_N21
\inst4|divisor|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[9]~40_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(9));

-- Location: LCCOMB_X2_Y10_N22
\inst4|divisor|count[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[10]~42_combout\ = (\inst4|divisor|count\(10) & (\inst4|divisor|count[9]~41\ $ (GND))) # (!\inst4|divisor|count\(10) & (!\inst4|divisor|count[9]~41\ & VCC))
-- \inst4|divisor|count[10]~43\ = CARRY((\inst4|divisor|count\(10) & !\inst4|divisor|count[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(10),
	datad => VCC,
	cin => \inst4|divisor|count[9]~41\,
	combout => \inst4|divisor|count[10]~42_combout\,
	cout => \inst4|divisor|count[10]~43\);

-- Location: FF_X2_Y10_N23
\inst4|divisor|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[10]~42_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(10));

-- Location: LCCOMB_X2_Y10_N24
\inst4|divisor|count[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[11]~44_combout\ = (\inst4|divisor|count\(11) & (!\inst4|divisor|count[10]~43\)) # (!\inst4|divisor|count\(11) & ((\inst4|divisor|count[10]~43\) # (GND)))
-- \inst4|divisor|count[11]~45\ = CARRY((!\inst4|divisor|count[10]~43\) # (!\inst4|divisor|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(11),
	datad => VCC,
	cin => \inst4|divisor|count[10]~43\,
	combout => \inst4|divisor|count[11]~44_combout\,
	cout => \inst4|divisor|count[11]~45\);

-- Location: FF_X2_Y10_N25
\inst4|divisor|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[11]~44_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(11));

-- Location: LCCOMB_X2_Y10_N26
\inst4|divisor|count[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[12]~46_combout\ = (\inst4|divisor|count\(12) & (\inst4|divisor|count[11]~45\ $ (GND))) # (!\inst4|divisor|count\(12) & (!\inst4|divisor|count[11]~45\ & VCC))
-- \inst4|divisor|count[12]~47\ = CARRY((\inst4|divisor|count\(12) & !\inst4|divisor|count[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(12),
	datad => VCC,
	cin => \inst4|divisor|count[11]~45\,
	combout => \inst4|divisor|count[12]~46_combout\,
	cout => \inst4|divisor|count[12]~47\);

-- Location: FF_X2_Y10_N27
\inst4|divisor|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[12]~46_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(12));

-- Location: LCCOMB_X2_Y10_N28
\inst4|divisor|count[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[13]~48_combout\ = (\inst4|divisor|count\(13) & (!\inst4|divisor|count[12]~47\)) # (!\inst4|divisor|count\(13) & ((\inst4|divisor|count[12]~47\) # (GND)))
-- \inst4|divisor|count[13]~49\ = CARRY((!\inst4|divisor|count[12]~47\) # (!\inst4|divisor|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(13),
	datad => VCC,
	cin => \inst4|divisor|count[12]~47\,
	combout => \inst4|divisor|count[13]~48_combout\,
	cout => \inst4|divisor|count[13]~49\);

-- Location: FF_X2_Y10_N29
\inst4|divisor|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[13]~48_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(13));

-- Location: LCCOMB_X2_Y10_N30
\inst4|divisor|count[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[14]~50_combout\ = (\inst4|divisor|count\(14) & (\inst4|divisor|count[13]~49\ $ (GND))) # (!\inst4|divisor|count\(14) & (!\inst4|divisor|count[13]~49\ & VCC))
-- \inst4|divisor|count[14]~51\ = CARRY((\inst4|divisor|count\(14) & !\inst4|divisor|count[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(14),
	datad => VCC,
	cin => \inst4|divisor|count[13]~49\,
	combout => \inst4|divisor|count[14]~50_combout\,
	cout => \inst4|divisor|count[14]~51\);

-- Location: FF_X2_Y10_N31
\inst4|divisor|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[14]~50_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(14));

-- Location: LCCOMB_X2_Y9_N0
\inst4|divisor|count[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[15]~52_combout\ = (\inst4|divisor|count\(15) & (!\inst4|divisor|count[14]~51\)) # (!\inst4|divisor|count\(15) & ((\inst4|divisor|count[14]~51\) # (GND)))
-- \inst4|divisor|count[15]~53\ = CARRY((!\inst4|divisor|count[14]~51\) # (!\inst4|divisor|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(15),
	datad => VCC,
	cin => \inst4|divisor|count[14]~51\,
	combout => \inst4|divisor|count[15]~52_combout\,
	cout => \inst4|divisor|count[15]~53\);

-- Location: FF_X2_Y9_N1
\inst4|divisor|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[15]~52_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(15));

-- Location: LCCOMB_X2_Y9_N2
\inst4|divisor|count[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[16]~54_combout\ = (\inst4|divisor|count\(16) & (\inst4|divisor|count[15]~53\ $ (GND))) # (!\inst4|divisor|count\(16) & (!\inst4|divisor|count[15]~53\ & VCC))
-- \inst4|divisor|count[16]~55\ = CARRY((\inst4|divisor|count\(16) & !\inst4|divisor|count[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(16),
	datad => VCC,
	cin => \inst4|divisor|count[15]~53\,
	combout => \inst4|divisor|count[16]~54_combout\,
	cout => \inst4|divisor|count[16]~55\);

-- Location: FF_X1_Y10_N19
\inst4|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst4|divisor|count[16]~54_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(16));

-- Location: LCCOMB_X2_Y9_N4
\inst4|divisor|count[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[17]~56_combout\ = (\inst4|divisor|count\(17) & (!\inst4|divisor|count[16]~55\)) # (!\inst4|divisor|count\(17) & ((\inst4|divisor|count[16]~55\) # (GND)))
-- \inst4|divisor|count[17]~57\ = CARRY((!\inst4|divisor|count[16]~55\) # (!\inst4|divisor|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(17),
	datad => VCC,
	cin => \inst4|divisor|count[16]~55\,
	combout => \inst4|divisor|count[17]~56_combout\,
	cout => \inst4|divisor|count[17]~57\);

-- Location: FF_X1_Y10_N29
\inst4|divisor|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst4|divisor|count[17]~56_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(17));

-- Location: LCCOMB_X2_Y9_N6
\inst4|divisor|count[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[18]~58_combout\ = (\inst4|divisor|count\(18) & (\inst4|divisor|count[17]~57\ $ (GND))) # (!\inst4|divisor|count\(18) & (!\inst4|divisor|count[17]~57\ & VCC))
-- \inst4|divisor|count[18]~59\ = CARRY((\inst4|divisor|count\(18) & !\inst4|divisor|count[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(18),
	datad => VCC,
	cin => \inst4|divisor|count[17]~57\,
	combout => \inst4|divisor|count[18]~58_combout\,
	cout => \inst4|divisor|count[18]~59\);

-- Location: FF_X1_Y10_N31
\inst4|divisor|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst4|divisor|count[18]~58_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(18));

-- Location: LCCOMB_X2_Y9_N8
\inst4|divisor|count[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[19]~60_combout\ = (\inst4|divisor|count\(19) & (!\inst4|divisor|count[18]~59\)) # (!\inst4|divisor|count\(19) & ((\inst4|divisor|count[18]~59\) # (GND)))
-- \inst4|divisor|count[19]~61\ = CARRY((!\inst4|divisor|count[18]~59\) # (!\inst4|divisor|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(19),
	datad => VCC,
	cin => \inst4|divisor|count[18]~59\,
	combout => \inst4|divisor|count[19]~60_combout\,
	cout => \inst4|divisor|count[19]~61\);

-- Location: FF_X2_Y9_N9
\inst4|divisor|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[19]~60_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(19));

-- Location: LCCOMB_X2_Y9_N10
\inst4|divisor|count[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[20]~62_combout\ = (\inst4|divisor|count\(20) & (\inst4|divisor|count[19]~61\ $ (GND))) # (!\inst4|divisor|count\(20) & (!\inst4|divisor|count[19]~61\ & VCC))
-- \inst4|divisor|count[20]~63\ = CARRY((\inst4|divisor|count\(20) & !\inst4|divisor|count[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(20),
	datad => VCC,
	cin => \inst4|divisor|count[19]~61\,
	combout => \inst4|divisor|count[20]~62_combout\,
	cout => \inst4|divisor|count[20]~63\);

-- Location: FF_X2_Y9_N11
\inst4|divisor|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[20]~62_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(20));

-- Location: LCCOMB_X2_Y9_N12
\inst4|divisor|count[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[21]~64_combout\ = (\inst4|divisor|count\(21) & (!\inst4|divisor|count[20]~63\)) # (!\inst4|divisor|count\(21) & ((\inst4|divisor|count[20]~63\) # (GND)))
-- \inst4|divisor|count[21]~65\ = CARRY((!\inst4|divisor|count[20]~63\) # (!\inst4|divisor|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(21),
	datad => VCC,
	cin => \inst4|divisor|count[20]~63\,
	combout => \inst4|divisor|count[21]~64_combout\,
	cout => \inst4|divisor|count[21]~65\);

-- Location: FF_X2_Y9_N13
\inst4|divisor|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[21]~64_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(21));

-- Location: LCCOMB_X2_Y9_N14
\inst4|divisor|count[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[22]~66_combout\ = (\inst4|divisor|count\(22) & (\inst4|divisor|count[21]~65\ $ (GND))) # (!\inst4|divisor|count\(22) & (!\inst4|divisor|count[21]~65\ & VCC))
-- \inst4|divisor|count[22]~67\ = CARRY((\inst4|divisor|count\(22) & !\inst4|divisor|count[21]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(22),
	datad => VCC,
	cin => \inst4|divisor|count[21]~65\,
	combout => \inst4|divisor|count[22]~66_combout\,
	cout => \inst4|divisor|count[22]~67\);

-- Location: FF_X2_Y9_N15
\inst4|divisor|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[22]~66_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(22));

-- Location: LCCOMB_X2_Y9_N16
\inst4|divisor|count[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[23]~68_combout\ = (\inst4|divisor|count\(23) & (!\inst4|divisor|count[22]~67\)) # (!\inst4|divisor|count\(23) & ((\inst4|divisor|count[22]~67\) # (GND)))
-- \inst4|divisor|count[23]~69\ = CARRY((!\inst4|divisor|count[22]~67\) # (!\inst4|divisor|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(23),
	datad => VCC,
	cin => \inst4|divisor|count[22]~67\,
	combout => \inst4|divisor|count[23]~68_combout\,
	cout => \inst4|divisor|count[23]~69\);

-- Location: FF_X2_Y9_N17
\inst4|divisor|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[23]~68_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(23));

-- Location: LCCOMB_X2_Y9_N18
\inst4|divisor|count[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[24]~70_combout\ = (\inst4|divisor|count\(24) & (\inst4|divisor|count[23]~69\ $ (GND))) # (!\inst4|divisor|count\(24) & (!\inst4|divisor|count[23]~69\ & VCC))
-- \inst4|divisor|count[24]~71\ = CARRY((\inst4|divisor|count\(24) & !\inst4|divisor|count[23]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(24),
	datad => VCC,
	cin => \inst4|divisor|count[23]~69\,
	combout => \inst4|divisor|count[24]~70_combout\,
	cout => \inst4|divisor|count[24]~71\);

-- Location: FF_X2_Y9_N19
\inst4|divisor|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[24]~70_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(24));

-- Location: LCCOMB_X2_Y9_N20
\inst4|divisor|count[25]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[25]~72_combout\ = (\inst4|divisor|count\(25) & (!\inst4|divisor|count[24]~71\)) # (!\inst4|divisor|count\(25) & ((\inst4|divisor|count[24]~71\) # (GND)))
-- \inst4|divisor|count[25]~73\ = CARRY((!\inst4|divisor|count[24]~71\) # (!\inst4|divisor|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(25),
	datad => VCC,
	cin => \inst4|divisor|count[24]~71\,
	combout => \inst4|divisor|count[25]~72_combout\,
	cout => \inst4|divisor|count[25]~73\);

-- Location: FF_X2_Y9_N21
\inst4|divisor|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[25]~72_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(25));

-- Location: LCCOMB_X2_Y9_N22
\inst4|divisor|count[26]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[26]~74_combout\ = (\inst4|divisor|count\(26) & (\inst4|divisor|count[25]~73\ $ (GND))) # (!\inst4|divisor|count\(26) & (!\inst4|divisor|count[25]~73\ & VCC))
-- \inst4|divisor|count[26]~75\ = CARRY((\inst4|divisor|count\(26) & !\inst4|divisor|count[25]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(26),
	datad => VCC,
	cin => \inst4|divisor|count[25]~73\,
	combout => \inst4|divisor|count[26]~74_combout\,
	cout => \inst4|divisor|count[26]~75\);

-- Location: FF_X2_Y9_N23
\inst4|divisor|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[26]~74_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(26));

-- Location: LCCOMB_X2_Y9_N24
\inst4|divisor|count[27]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[27]~76_combout\ = \inst4|divisor|count[26]~75\ $ (\inst4|divisor|count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|divisor|count\(27),
	cin => \inst4|divisor|count[26]~75\,
	combout => \inst4|divisor|count[27]~76_combout\);

-- Location: FF_X2_Y9_N25
\inst4|divisor|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[27]~76_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(27));

-- Location: LCCOMB_X2_Y9_N28
\inst4|divisor|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~5_combout\ = (!\inst4|divisor|count\(24) & (((!\inst4|divisor|count\(22)) # (!\inst4|divisor|count\(23))) # (!\inst4|divisor|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(21),
	datab => \inst4|divisor|count\(23),
	datac => \inst4|divisor|count\(22),
	datad => \inst4|divisor|count\(24),
	combout => \inst4|divisor|op_1~5_combout\);

-- Location: LCCOMB_X2_Y9_N30
\inst4|divisor|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~6_combout\ = (((\inst4|divisor|op_1~5_combout\) # (!\inst4|divisor|count\(26))) # (!\inst4|divisor|count\(25))) # (!\inst4|divisor|count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(27),
	datab => \inst4|divisor|count\(25),
	datac => \inst4|divisor|count\(26),
	datad => \inst4|divisor|op_1~5_combout\,
	combout => \inst4|divisor|op_1~6_combout\);

-- Location: LCCOMB_X1_Y10_N26
\inst4|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|alt~1_combout\ = \inst4|divisor|alt~q\ $ (((!\inst4|divisor|op_1~6_combout\ & ((!\inst4|divisor|op_1~3_combout\) # (!\inst4|divisor|op_1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|op_1~6_combout\,
	datab => \inst4|divisor|op_1~4_combout\,
	datac => \inst4|divisor|alt~q\,
	datad => \inst4|divisor|op_1~3_combout\,
	combout => \inst4|divisor|alt~1_combout\);

-- Location: LCCOMB_X1_Y10_N12
\inst4|divisor|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|alt~feeder_combout\ = \inst4|divisor|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|divisor|alt~1_combout\,
	combout => \inst4|divisor|alt~feeder_combout\);

-- Location: FF_X1_Y10_N13
\inst4|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|alt~q\);

-- Location: CLKCTRL_G4
\inst4|divisor|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|divisor|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|divisor|alt~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y22_N28
\inst4|count|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|_~0_combout\ = (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(3) & \inst4|count|cnt\(2))) # (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) & !\inst4|count|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(3),
	datad => \inst4|count|cnt\(2),
	combout => \inst4|count|_~0_combout\);

-- Location: FF_X17_Y22_N29
\inst4|count|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|divisor|alt~clkctrl_outclk\,
	d => \inst4|count|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count|cnt\(3));

-- Location: LCCOMB_X17_Y22_N12
\inst4|count|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|cnt[1]~0_combout\ = (!\inst4|count|cnt\(1) & ((!\inst4|count|cnt\(2)) # (!\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(2),
	combout => \inst4|count|cnt[1]~0_combout\);

-- Location: FF_X17_Y22_N13
\inst4|count|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|divisor|alt~clkctrl_outclk\,
	d => \inst4|count|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count|cnt\(1));

-- Location: LCCOMB_X17_Y22_N2
\inst4|count|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|_~1_combout\ = (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) $ (\inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|count|_~1_combout\);

-- Location: FF_X17_Y22_N3
\inst4|count|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|divisor|alt~clkctrl_outclk\,
	d => \inst4|count|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count|cnt\(2));

-- Location: LCCOMB_X17_Y22_N6
\inst2|seg[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~28_combout\ = (!\inst4|count|cnt\(1) & (!\inst3|cnt\(1) & (\inst4|count|cnt\(2) $ (!\inst4|count|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst3|cnt\(1),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[6]~28_combout\);

-- Location: LCCOMB_X17_Y22_N0
\inst2|seg[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~29_combout\ = (\inst3|cnt\(2)) # (\inst2|seg[6]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(2),
	datad => \inst2|seg[6]~28_combout\,
	combout => \inst2|seg[6]~29_combout\);

-- Location: LCCOMB_X17_Y22_N18
\inst2|seg[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~30_combout\ = (\inst3|cnt\(1)) # ((\inst4|count|cnt\(2) & (!\inst4|count|cnt\(1))) # (!\inst4|count|cnt\(2) & ((!\inst4|count|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst3|cnt\(1),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[5]~30_combout\);

-- Location: LCCOMB_X17_Y22_N8
\inst2|seg[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~31_combout\ = (!\inst3|cnt\(2) & \inst2|seg[5]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(2),
	datad => \inst2|seg[5]~30_combout\,
	combout => \inst2|seg[5]~31_combout\);

-- Location: LCCOMB_X17_Y22_N30
\inst2|seg[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~32_combout\ = ((\inst3|cnt\(1)) # ((\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))) # (!\inst4|count|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst3|cnt\(1),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[4]~32_combout\);

-- Location: LCCOMB_X17_Y22_N4
\inst2|seg[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~33_combout\ = (\inst2|seg[4]~32_combout\ & !\inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~32_combout\,
	datac => \inst3|cnt\(2),
	combout => \inst2|seg[4]~33_combout\);

-- Location: LCCOMB_X17_Y22_N14
\inst2|seg[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~34_combout\ = (\inst2|_~0_combout\ & ((\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(3))) # (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) $ (!\inst4|count|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~0_combout\,
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[3]~34_combout\);

-- Location: LCCOMB_X17_Y22_N10
\inst2|seg[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~38_combout\ = (\inst2|seg[3]~34_combout\) # ((!\inst3|cnt\(2) & \inst3|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datab => \inst2|seg[3]~34_combout\,
	datac => \inst3|cnt\(1),
	combout => \inst2|seg[3]~38_combout\);

-- Location: LCCOMB_X17_Y22_N16
\inst2|seg[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~35_combout\ = (\inst2|_~0_combout\ & (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & !\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~0_combout\,
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[2]~35_combout\);

-- Location: LCCOMB_X17_Y22_N24
\inst2|seg[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg\(2) = (\inst2|seg[2]~35_combout\) # ((!\inst3|cnt\(2) & \inst3|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datac => \inst3|cnt\(1),
	datad => \inst2|seg[2]~35_combout\,
	combout => \inst2|seg\(2));

-- Location: LCCOMB_X17_Y22_N26
\inst2|seg[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~36_combout\ = (!\inst3|cnt\(2) & ((\inst3|cnt\(1)) # ((!\inst4|count|cnt\(2) & \inst4|count|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datab => \inst3|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[1]~36_combout\);

-- Location: LCCOMB_X17_Y22_N20
\inst2|seg[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~37_combout\ = (\inst2|_~0_combout\ & (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) $ (!\inst4|count|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~0_combout\,
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[0]~37_combout\);

-- Location: LCCOMB_X17_Y22_N22
\inst2|seg[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~39_combout\ = (\inst2|seg[0]~37_combout\) # ((!\inst3|cnt\(2) & \inst3|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datac => \inst3|cnt\(1),
	datad => \inst2|seg[0]~37_combout\,
	combout => \inst2|seg[0]~39_combout\);

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

ww_dig(4) <= \dig[4]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;
END structure;


