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

-- DATE "08/05/2023 17:14:54"

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
SIGNAL \inst1|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ff[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst|op_1~0_combout\ : std_logic;
SIGNAL \inst|count[13]~36\ : std_logic;
SIGNAL \inst|count[14]~37_combout\ : std_logic;
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
SIGNAL \inst1|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst1|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst1|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst1|divisor|_~0_combout\ : std_logic;
SIGNAL \inst1|divisor|count[2]~15_combout\ : std_logic;
SIGNAL \inst1|divisor|count[15]~42\ : std_logic;
SIGNAL \inst1|divisor|count[16]~43_combout\ : std_logic;
SIGNAL \inst1|divisor|op_1~4_combout\ : std_logic;
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
SIGNAL \inst1|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst1|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst1|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst1|divisor|alt~q\ : std_logic;
SIGNAL \inst1|ff[2]~0_combout\ : std_logic;
SIGNAL \inst1|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst1|ff[0]~1_combout\ : std_logic;
SIGNAL \inst1|ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|ff[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|ff[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|unidade[2]~2_combout\ : std_logic;
SIGNAL \inst8|unidade[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|unidade[4]~3_combout\ : std_logic;
SIGNAL \inst8|unidade[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|unidade[3]~1_combout\ : std_logic;
SIGNAL \inst8|unidade[1]~0_combout\ : std_logic;
SIGNAL \inst8|unidade[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|push2[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|seg[6]~25_combout\ : std_logic;
SIGNAL \inst8|op_3~0_combout\ : std_logic;
SIGNAL \inst8|dezena[1]~1_combout\ : std_logic;
SIGNAL \inst8|op_5~0_combout\ : std_logic;
SIGNAL \inst8|dezena[3]~2_combout\ : std_logic;
SIGNAL \inst8|dezena[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|_~1_combout\ : std_logic;
SIGNAL \inst8|dezena[4]~0_combout\ : std_logic;
SIGNAL \inst8|dezena[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|_~0_combout\ : std_logic;
SIGNAL \inst8|_~2_combout\ : std_logic;
SIGNAL \inst8|dezena[2]~3_combout\ : std_logic;
SIGNAL \inst8|dezena[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|push1[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|seg[2]~23_combout\ : std_logic;
SIGNAL \inst2|seg[6]~24_combout\ : std_logic;
SIGNAL \inst5|count[4]~13\ : std_logic;
SIGNAL \inst5|count[5]~14_combout\ : std_logic;
SIGNAL \inst5|count[7]~19\ : std_logic;
SIGNAL \inst5|count[8]~20_combout\ : std_logic;
SIGNAL \inst5|count[8]~21\ : std_logic;
SIGNAL \inst5|count[9]~22_combout\ : std_logic;
SIGNAL \inst5|op_1~2_combout\ : std_logic;
SIGNAL \inst5|count[5]~15\ : std_logic;
SIGNAL \inst5|count[6]~16_combout\ : std_logic;
SIGNAL \inst5|count[6]~17\ : std_logic;
SIGNAL \inst5|count[7]~18_combout\ : std_logic;
SIGNAL \inst5|op_1~1_combout\ : std_logic;
SIGNAL \inst5|_~0_combout\ : std_logic;
SIGNAL \inst5|count[2]~8_combout\ : std_logic;
SIGNAL \inst5|count[2]~9\ : std_logic;
SIGNAL \inst5|count[3]~10_combout\ : std_logic;
SIGNAL \inst5|count[3]~11\ : std_logic;
SIGNAL \inst5|count[4]~12_combout\ : std_logic;
SIGNAL \inst5|op_1~0_combout\ : std_logic;
SIGNAL \inst5|alt~1_combout\ : std_logic;
SIGNAL \inst5|alt~feeder_combout\ : std_logic;
SIGNAL \inst5|alt~q\ : std_logic;
SIGNAL \inst5|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|_~0_combout\ : std_logic;
SIGNAL \inst4|_~1_combout\ : std_logic;
SIGNAL \inst4|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst2|seg[6]~22_combout\ : std_logic;
SIGNAL \inst2|seg[2]~26_combout\ : std_logic;
SIGNAL \inst2|seg[6]~27_combout\ : std_logic;
SIGNAL \inst2|seg[5]~28_combout\ : std_logic;
SIGNAL \inst2|seg[5]~30_combout\ : std_logic;
SIGNAL \inst2|seg[5]~29_combout\ : std_logic;
SIGNAL \inst2|seg[5]~31_combout\ : std_logic;
SIGNAL \inst2|seg[4]~33_combout\ : std_logic;
SIGNAL \inst2|seg[4]~32_combout\ : std_logic;
SIGNAL \inst2|seg[4]~34_combout\ : std_logic;
SIGNAL \inst2|seg[4]~35_combout\ : std_logic;
SIGNAL \inst2|seg[4]~36_combout\ : std_logic;
SIGNAL \inst2|seg[4]~37_combout\ : std_logic;
SIGNAL \inst2|seg[4]~38_combout\ : std_logic;
SIGNAL \inst2|seg[3]~42_combout\ : std_logic;
SIGNAL \inst2|seg[3]~43_combout\ : std_logic;
SIGNAL \inst2|seg[3]~44_combout\ : std_logic;
SIGNAL \inst2|seg[3]~39_combout\ : std_logic;
SIGNAL \inst2|seg[3]~40_combout\ : std_logic;
SIGNAL \inst2|seg[3]~41_combout\ : std_logic;
SIGNAL \inst2|seg[3]~45_combout\ : std_logic;
SIGNAL \inst2|seg[2]~47_combout\ : std_logic;
SIGNAL \inst2|seg[2]~46_combout\ : std_logic;
SIGNAL \inst2|seg[2]~48_combout\ : std_logic;
SIGNAL \inst2|seg[1]~49_combout\ : std_logic;
SIGNAL \inst2|seg[1]~51_combout\ : std_logic;
SIGNAL \inst2|seg[1]~50_combout\ : std_logic;
SIGNAL \inst2|seg[1]~52_combout\ : std_logic;
SIGNAL \inst2|seg[0]~53_combout\ : std_logic;
SIGNAL \inst2|seg[0]~54_combout\ : std_logic;
SIGNAL \inst2|seg[0]~55_combout\ : std_logic;
SIGNAL \inst2|seg[0]~56_combout\ : std_logic;
SIGNAL \inst8|push1\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst|count\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \inst2|seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst5|count\ : std_logic_vector(9 DOWNTO 1);
SIGNAL \inst1|divisor|count\ : std_logic_vector(16 DOWNTO 1);
SIGNAL \inst3|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst1|ff\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst8|push2\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst8|dezena\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst8|unidade\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst1|ALT_INV_ff\ : std_logic_vector(2 DOWNTO 2);
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

\inst1|divisor|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|divisor|alt~q\);

\inst|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|alt~q\);

\inst5|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|alt~q\);

\inst1|ff[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|ff\(2));

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst1|ALT_INV_ff\(2) <= NOT \inst1|ff\(2);
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
	i => \inst2|seg[6]~27_combout\,
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
	i => \inst2|seg[4]~38_combout\,
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
	i => \inst2|seg[3]~45_combout\,
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
	i => \inst2|seg[1]~52_combout\,
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
	i => \inst2|seg[0]~56_combout\,
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

-- Location: LCCOMB_X32_Y12_N26
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

-- Location: FF_X32_Y12_N27
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

-- Location: LCCOMB_X32_Y12_N0
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

-- Location: FF_X32_Y12_N1
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

-- Location: LCCOMB_X32_Y12_N2
\inst|count[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~15_combout\ = (\inst|count\(3) & (!\inst|count[2]~14\)) # (!\inst|count\(3) & ((\inst|count[2]~14\) # (GND)))
-- \inst|count[3]~16\ = CARRY((!\inst|count[2]~14\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(3),
	datad => VCC,
	cin => \inst|count[2]~14\,
	combout => \inst|count[3]~15_combout\,
	cout => \inst|count[3]~16\);

-- Location: FF_X32_Y12_N3
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

-- Location: LCCOMB_X32_Y12_N4
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

-- Location: FF_X32_Y12_N5
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

-- Location: LCCOMB_X32_Y12_N6
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

-- Location: FF_X32_Y12_N7
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

-- Location: LCCOMB_X32_Y12_N8
\inst|count[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[6]~21_combout\ = (\inst|count\(6) & (\inst|count[5]~20\ $ (GND))) # (!\inst|count\(6) & (!\inst|count[5]~20\ & VCC))
-- \inst|count[6]~22\ = CARRY((\inst|count\(6) & !\inst|count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(6),
	datad => VCC,
	cin => \inst|count[5]~20\,
	combout => \inst|count[6]~21_combout\,
	cout => \inst|count[6]~22\);

-- Location: FF_X32_Y12_N9
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

-- Location: LCCOMB_X32_Y12_N10
\inst|count[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[7]~23_combout\ = (\inst|count\(7) & (!\inst|count[6]~22\)) # (!\inst|count\(7) & ((\inst|count[6]~22\) # (GND)))
-- \inst|count[7]~24\ = CARRY((!\inst|count[6]~22\) # (!\inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datad => VCC,
	cin => \inst|count[6]~22\,
	combout => \inst|count[7]~23_combout\,
	cout => \inst|count[7]~24\);

-- Location: FF_X32_Y12_N11
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

-- Location: LCCOMB_X32_Y12_N12
\inst|count[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[8]~25_combout\ = (\inst|count\(8) & (\inst|count[7]~24\ $ (GND))) # (!\inst|count\(8) & (!\inst|count[7]~24\ & VCC))
-- \inst|count[8]~26\ = CARRY((\inst|count\(8) & !\inst|count[7]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(8),
	datad => VCC,
	cin => \inst|count[7]~24\,
	combout => \inst|count[8]~25_combout\,
	cout => \inst|count[8]~26\);

-- Location: FF_X32_Y12_N13
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

-- Location: LCCOMB_X32_Y12_N14
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

-- Location: FF_X32_Y12_N15
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

-- Location: LCCOMB_X32_Y12_N16
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

-- Location: FF_X32_Y12_N17
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

-- Location: LCCOMB_X32_Y12_N18
\inst|count[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[11]~31_combout\ = (\inst|count\(11) & (!\inst|count[10]~30\)) # (!\inst|count\(11) & ((\inst|count[10]~30\) # (GND)))
-- \inst|count[11]~32\ = CARRY((!\inst|count[10]~30\) # (!\inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(11),
	datad => VCC,
	cin => \inst|count[10]~30\,
	combout => \inst|count[11]~31_combout\,
	cout => \inst|count[11]~32\);

-- Location: FF_X32_Y12_N19
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

-- Location: LCCOMB_X32_Y12_N20
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

-- Location: FF_X32_Y12_N21
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

-- Location: LCCOMB_X32_Y12_N22
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

-- Location: FF_X32_Y12_N23
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

-- Location: LCCOMB_X32_Y12_N30
\inst|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~0_combout\ = (((!\inst|count\(8) & !\inst|count\(9))) # (!\inst|count\(11))) # (!\inst|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(8),
	datab => \inst|count\(10),
	datac => \inst|count\(9),
	datad => \inst|count\(11),
	combout => \inst|op_1~0_combout\);

-- Location: LCCOMB_X32_Y12_N24
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

-- Location: FF_X32_Y12_N25
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

-- Location: LCCOMB_X32_Y12_N28
\inst|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~1_combout\ = (\inst|count\(13) & (\inst|count\(12) & (!\inst|op_1~0_combout\ & \inst|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(13),
	datab => \inst|count\(12),
	datac => \inst|op_1~0_combout\,
	datad => \inst|count\(14),
	combout => \inst|op_1~1_combout\);

-- Location: LCCOMB_X33_Y12_N18
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

-- Location: LCCOMB_X33_Y12_N2
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

-- Location: FF_X33_Y12_N3
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X18_Y21_N2
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

-- Location: FF_X18_Y21_N3
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

-- Location: LCCOMB_X18_Y21_N0
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

-- Location: FF_X18_Y21_N1
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

-- Location: LCCOMB_X14_Y21_N28
\inst2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~0_combout\ = (!\inst3|cnt\(2) & !\inst3|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(2),
	datac => \inst3|cnt\(1),
	combout => \inst2|_~0_combout\);

-- Location: LCCOMB_X18_Y21_N8
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

-- Location: LCCOMB_X14_Y22_N0
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

-- Location: LCCOMB_X18_Y21_N6
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

-- Location: LCCOMB_X33_Y10_N12
\inst1|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~2_combout\ = (!\inst1|divisor|count\(14) & (!\inst1|divisor|count\(12) & (!\inst1|divisor|count\(13) & !\inst1|divisor|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(14),
	datab => \inst1|divisor|count\(12),
	datac => \inst1|divisor|count\(13),
	datad => \inst1|divisor|count\(11),
	combout => \inst1|divisor|op_1~2_combout\);

-- Location: LCCOMB_X33_Y10_N28
\inst1|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~0_combout\ = ((!\inst1|divisor|count\(5) & (!\inst1|divisor|count\(6) & !\inst1|divisor|count\(8)))) # (!\inst1|divisor|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(9),
	datab => \inst1|divisor|count\(5),
	datac => \inst1|divisor|count\(6),
	datad => \inst1|divisor|count\(8),
	combout => \inst1|divisor|op_1~0_combout\);

-- Location: LCCOMB_X33_Y10_N26
\inst1|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~1_combout\ = ((\inst1|divisor|op_1~0_combout\) # ((!\inst1|divisor|count\(7) & !\inst1|divisor|count\(8)))) # (!\inst1|divisor|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(7),
	datab => \inst1|divisor|count\(8),
	datac => \inst1|divisor|count\(10),
	datad => \inst1|divisor|op_1~0_combout\,
	combout => \inst1|divisor|op_1~1_combout\);

-- Location: LCCOMB_X33_Y10_N6
\inst1|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|_~0_combout\ = (!\inst1|divisor|count\(1) & ((\inst1|divisor|op_1~3_combout\) # ((\inst1|divisor|op_1~2_combout\ & \inst1|divisor|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|op_1~2_combout\,
	datab => \inst1|divisor|op_1~1_combout\,
	datac => \inst1|divisor|count\(1),
	datad => \inst1|divisor|op_1~3_combout\,
	combout => \inst1|divisor|_~0_combout\);

-- Location: FF_X33_Y10_N7
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

-- Location: LCCOMB_X32_Y10_N0
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

-- Location: LCCOMB_X32_Y10_N26
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

-- Location: LCCOMB_X32_Y10_N28
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

-- Location: FF_X32_Y10_N29
\inst1|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[16]~43_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(16));

-- Location: LCCOMB_X32_Y10_N30
\inst1|divisor|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~4_combout\ = (\inst1|divisor|count\(15) & (\inst1|divisor|count\(16) & ((!\inst1|divisor|op_1~1_combout\) # (!\inst1|divisor|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|count\(15),
	datab => \inst1|divisor|count\(16),
	datac => \inst1|divisor|op_1~2_combout\,
	datad => \inst1|divisor|op_1~1_combout\,
	combout => \inst1|divisor|op_1~4_combout\);

-- Location: FF_X32_Y10_N1
\inst1|divisor|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[2]~15_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(2));

-- Location: LCCOMB_X32_Y10_N2
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

-- Location: FF_X32_Y10_N3
\inst1|divisor|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[3]~17_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(3));

-- Location: LCCOMB_X32_Y10_N4
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

-- Location: FF_X32_Y10_N5
\inst1|divisor|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[4]~19_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(4));

-- Location: LCCOMB_X32_Y10_N6
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

-- Location: FF_X32_Y10_N7
\inst1|divisor|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[5]~21_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(5));

-- Location: LCCOMB_X32_Y10_N8
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

-- Location: FF_X32_Y10_N9
\inst1|divisor|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[6]~23_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(6));

-- Location: LCCOMB_X32_Y10_N10
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

-- Location: FF_X32_Y10_N11
\inst1|divisor|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[7]~25_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(7));

-- Location: LCCOMB_X32_Y10_N12
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

-- Location: FF_X32_Y10_N13
\inst1|divisor|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[8]~27_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(8));

-- Location: LCCOMB_X32_Y10_N14
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

-- Location: FF_X32_Y10_N15
\inst1|divisor|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[9]~29_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(9));

-- Location: LCCOMB_X32_Y10_N16
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

-- Location: FF_X32_Y10_N17
\inst1|divisor|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[10]~31_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(10));

-- Location: LCCOMB_X32_Y10_N18
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

-- Location: FF_X32_Y10_N19
\inst1|divisor|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[11]~33_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(11));

-- Location: LCCOMB_X32_Y10_N20
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

-- Location: FF_X32_Y10_N21
\inst1|divisor|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[12]~35_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(12));

-- Location: LCCOMB_X32_Y10_N22
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

-- Location: FF_X32_Y10_N23
\inst1|divisor|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[13]~37_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(13));

-- Location: LCCOMB_X32_Y10_N24
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

-- Location: FF_X32_Y10_N25
\inst1|divisor|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[14]~39_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(14));

-- Location: FF_X32_Y10_N27
\inst1|divisor|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|divisor|count[15]~41_combout\,
	sclr => \inst1|divisor|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|divisor|count\(15));

-- Location: LCCOMB_X33_Y10_N20
\inst1|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|op_1~3_combout\ = (!\inst1|divisor|count\(16)) # (!\inst1|divisor|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|divisor|count\(15),
	datad => \inst1|divisor|count\(16),
	combout => \inst1|divisor|op_1~3_combout\);

-- Location: LCCOMB_X33_Y10_N30
\inst1|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|divisor|alt~1_combout\ = \inst1|divisor|alt~q\ $ (((!\inst1|divisor|op_1~3_combout\ & ((!\inst1|divisor|op_1~2_combout\) # (!\inst1|divisor|op_1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|divisor|alt~q\,
	datab => \inst1|divisor|op_1~3_combout\,
	datac => \inst1|divisor|op_1~1_combout\,
	datad => \inst1|divisor|op_1~2_combout\,
	combout => \inst1|divisor|alt~1_combout\);

-- Location: LCCOMB_X33_Y10_N2
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

-- Location: FF_X33_Y10_N3
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

-- Location: LCCOMB_X33_Y10_N4
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

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X31_Y10_N18
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

-- Location: FF_X31_Y10_N19
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

-- Location: LCCOMB_X31_Y10_N20
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

-- Location: FF_X31_Y10_N21
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

-- Location: LCCOMB_X31_Y10_N6
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

-- Location: FF_X31_Y10_N7
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

-- Location: CLKCTRL_G8
\inst1|ff[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|ff[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|ff[2]~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y21_N12
\inst8|unidade[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|unidade[2]~2_combout\ = (!\inst8|unidade\(4) & (\inst8|unidade\(1) $ (\inst8|unidade\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|unidade\(1),
	datac => \inst8|unidade\(2),
	datad => \inst8|unidade\(4),
	combout => \inst8|unidade[2]~2_combout\);

-- Location: LCCOMB_X16_Y21_N22
\inst8|unidade[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|unidade[2]~feeder_combout\ = \inst8|unidade[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|unidade[2]~2_combout\,
	combout => \inst8|unidade[2]~feeder_combout\);

-- Location: FF_X16_Y21_N23
\inst8|unidade[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst8|unidade[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|unidade\(2));

-- Location: LCCOMB_X17_Y21_N30
\inst8|unidade[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|unidade[4]~3_combout\ = (\inst8|unidade\(4) & (!\inst8|unidade\(2) & (!\inst8|unidade\(3) & !\inst8|unidade\(1)))) # (!\inst8|unidade\(4) & (\inst8|unidade\(2) & (\inst8|unidade\(3) & \inst8|unidade\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|unidade\(4),
	datab => \inst8|unidade\(2),
	datac => \inst8|unidade\(3),
	datad => \inst8|unidade\(1),
	combout => \inst8|unidade[4]~3_combout\);

-- Location: LCCOMB_X17_Y21_N26
\inst8|unidade[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|unidade[4]~feeder_combout\ = \inst8|unidade[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|unidade[4]~3_combout\,
	combout => \inst8|unidade[4]~feeder_combout\);

-- Location: FF_X17_Y21_N27
\inst8|unidade[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst8|unidade[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|unidade\(4));

-- Location: LCCOMB_X16_Y21_N4
\inst8|unidade[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|unidade[3]~1_combout\ = (!\inst8|unidade\(4) & (\inst8|unidade\(3) $ (((\inst8|unidade\(2) & \inst8|unidade\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|unidade\(3),
	datab => \inst8|unidade\(4),
	datac => \inst8|unidade\(2),
	datad => \inst8|unidade\(1),
	combout => \inst8|unidade[3]~1_combout\);

-- Location: FF_X16_Y21_N7
\inst8|unidade[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	asdata => \inst8|unidade[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|unidade\(3));

-- Location: LCCOMB_X16_Y21_N2
\inst8|unidade[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|unidade[1]~0_combout\ = (!\inst8|unidade\(1) & (((!\inst8|unidade\(3) & !\inst8|unidade\(2))) # (!\inst8|unidade\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|unidade\(3),
	datab => \inst8|unidade\(4),
	datac => \inst8|unidade\(2),
	datad => \inst8|unidade\(1),
	combout => \inst8|unidade[1]~0_combout\);

-- Location: LCCOMB_X16_Y21_N8
\inst8|unidade[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|unidade[1]~feeder_combout\ = \inst8|unidade[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|unidade[1]~0_combout\,
	combout => \inst8|unidade[1]~feeder_combout\);

-- Location: FF_X16_Y21_N9
\inst8|unidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst8|unidade[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|unidade\(1));

-- Location: FF_X16_Y21_N15
\inst8|push2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ff[2]~clkctrl_outclk\,
	asdata => \inst8|unidade\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|push2\(1));

-- Location: FF_X16_Y21_N3
\inst8|push2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ff[2]~clkctrl_outclk\,
	asdata => \inst8|unidade\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|push2\(2));

-- Location: LCCOMB_X16_Y21_N16
\inst8|push2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|push2[3]~feeder_combout\ = \inst8|unidade\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|unidade\(3),
	combout => \inst8|push2[3]~feeder_combout\);

-- Location: FF_X16_Y21_N17
\inst8|push2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ff[2]~clkctrl_outclk\,
	d => \inst8|push2[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|push2\(3));

-- Location: LCCOMB_X16_Y21_N6
\inst2|seg[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~25_combout\ = (\inst8|push2\(2) & (\inst8|push2\(1) & \inst8|push2\(3))) # (!\inst8|push2\(2) & ((!\inst8|push2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push2\(1),
	datab => \inst8|push2\(2),
	datad => \inst8|push2\(3),
	combout => \inst2|seg[6]~25_combout\);

-- Location: LCCOMB_X17_Y21_N10
\inst8|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|op_3~0_combout\ = ((!\inst8|unidade\(2) & (!\inst8|unidade\(3) & !\inst8|unidade\(1)))) # (!\inst8|unidade\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|unidade\(4),
	datab => \inst8|unidade\(2),
	datac => \inst8|unidade\(3),
	datad => \inst8|unidade\(1),
	combout => \inst8|op_3~0_combout\);

-- Location: LCCOMB_X17_Y21_N14
\inst8|dezena[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dezena[1]~1_combout\ = \inst8|dezena\(1) $ (!\inst8|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dezena\(1),
	datad => \inst8|op_3~0_combout\,
	combout => \inst8|dezena[1]~1_combout\);

-- Location: FF_X17_Y21_N17
\inst8|dezena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	asdata => \inst8|dezena[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dezena\(1));

-- Location: LCCOMB_X17_Y21_N8
\inst8|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|op_5~0_combout\ = (\inst8|dezena\(1) & \inst8|dezena\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dezena\(1),
	datad => \inst8|dezena\(2),
	combout => \inst8|op_5~0_combout\);

-- Location: LCCOMB_X17_Y21_N2
\inst8|dezena[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dezena[3]~2_combout\ = (!\inst8|_~2_combout\ & (\inst8|dezena\(3) $ (((!\inst8|op_3~0_combout\ & \inst8|op_5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|op_3~0_combout\,
	datab => \inst8|op_5~0_combout\,
	datac => \inst8|dezena\(3),
	datad => \inst8|_~2_combout\,
	combout => \inst8|dezena[3]~2_combout\);

-- Location: LCCOMB_X17_Y21_N18
\inst8|dezena[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dezena[3]~feeder_combout\ = \inst8|dezena[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dezena[3]~2_combout\,
	combout => \inst8|dezena[3]~feeder_combout\);

-- Location: FF_X17_Y21_N19
\inst8|dezena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst8|dezena[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dezena\(3));

-- Location: LCCOMB_X17_Y21_N4
\inst8|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|_~1_combout\ = (!\inst8|dezena\(1) & (\inst8|dezena\(3) & (!\inst8|unidade\(4) & \inst8|dezena\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dezena\(1),
	datab => \inst8|dezena\(3),
	datac => \inst8|unidade\(4),
	datad => \inst8|dezena\(2),
	combout => \inst8|_~1_combout\);

-- Location: LCCOMB_X17_Y21_N28
\inst8|dezena[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dezena[4]~0_combout\ = \inst8|dezena\(4) $ (((\inst8|op_5~0_combout\ & (\inst8|dezena\(3) & !\inst8|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dezena\(4),
	datab => \inst8|op_5~0_combout\,
	datac => \inst8|dezena\(3),
	datad => \inst8|op_3~0_combout\,
	combout => \inst8|dezena[4]~0_combout\);

-- Location: LCCOMB_X16_Y21_N0
\inst8|dezena[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dezena[4]~feeder_combout\ = \inst8|dezena[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dezena[4]~0_combout\,
	combout => \inst8|dezena[4]~feeder_combout\);

-- Location: FF_X16_Y21_N1
\inst8|dezena[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst8|dezena[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dezena\(4));

-- Location: LCCOMB_X16_Y21_N14
\inst8|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|_~0_combout\ = (!\inst8|unidade\(3) & (!\inst8|dezena\(4) & (!\inst8|unidade\(1) & !\inst8|unidade\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|unidade\(3),
	datab => \inst8|dezena\(4),
	datac => \inst8|unidade\(1),
	datad => \inst8|unidade\(2),
	combout => \inst8|_~0_combout\);

-- Location: LCCOMB_X17_Y21_N16
\inst8|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|_~2_combout\ = (\inst8|_~1_combout\ & \inst8|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|_~1_combout\,
	datad => \inst8|_~0_combout\,
	combout => \inst8|_~2_combout\);

-- Location: LCCOMB_X17_Y21_N0
\inst8|dezena[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dezena[2]~3_combout\ = (!\inst8|_~2_combout\ & (\inst8|dezena\(2) $ (((!\inst8|op_3~0_combout\ & \inst8|dezena\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|op_3~0_combout\,
	datab => \inst8|dezena\(2),
	datac => \inst8|dezena\(1),
	datad => \inst8|_~2_combout\,
	combout => \inst8|dezena[2]~3_combout\);

-- Location: LCCOMB_X17_Y21_N20
\inst8|dezena[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dezena[2]~feeder_combout\ = \inst8|dezena[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|dezena[2]~3_combout\,
	combout => \inst8|dezena[2]~feeder_combout\);

-- Location: FF_X17_Y21_N21
\inst8|dezena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst8|dezena[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dezena\(2));

-- Location: FF_X17_Y21_N15
\inst8|push1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ff[2]~clkctrl_outclk\,
	asdata => \inst8|dezena\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|push1\(2));

-- Location: LCCOMB_X16_Y21_N20
\inst8|push1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|push1[4]~feeder_combout\ = \inst8|dezena\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|dezena\(4),
	combout => \inst8|push1[4]~feeder_combout\);

-- Location: FF_X16_Y21_N21
\inst8|push1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ff[2]~clkctrl_outclk\,
	d => \inst8|push1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|push1\(4));

-- Location: LCCOMB_X18_Y21_N4
\inst2|seg[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~23_combout\ = (!\inst8|push1\(4) & (!\inst3|cnt\(1) & \inst3|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push1\(4),
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[2]~23_combout\);

-- Location: FF_X17_Y21_N9
\inst8|push1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ff[2]~clkctrl_outclk\,
	asdata => \inst8|dezena\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|push1\(1));

-- Location: FF_X17_Y21_N29
\inst8|push1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ff[2]~clkctrl_outclk\,
	asdata => \inst8|dezena\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|push1\(3));

-- Location: LCCOMB_X17_Y21_N12
\inst2|seg[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~24_combout\ = (\inst2|seg[2]~23_combout\ & ((\inst8|push1\(2) & (\inst8|push1\(1) & \inst8|push1\(3))) # (!\inst8|push1\(2) & ((!\inst8|push1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push1\(2),
	datab => \inst2|seg[2]~23_combout\,
	datac => \inst8|push1\(1),
	datad => \inst8|push1\(3),
	combout => \inst2|seg[6]~24_combout\);

-- Location: LCCOMB_X1_Y11_N6
\inst5|count[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[4]~12_combout\ = (\inst5|count\(4) & (\inst5|count[3]~11\ $ (GND))) # (!\inst5|count\(4) & (!\inst5|count[3]~11\ & VCC))
-- \inst5|count[4]~13\ = CARRY((\inst5|count\(4) & !\inst5|count[3]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(4),
	datad => VCC,
	cin => \inst5|count[3]~11\,
	combout => \inst5|count[4]~12_combout\,
	cout => \inst5|count[4]~13\);

-- Location: LCCOMB_X1_Y11_N8
\inst5|count[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[5]~14_combout\ = (\inst5|count\(5) & (!\inst5|count[4]~13\)) # (!\inst5|count\(5) & ((\inst5|count[4]~13\) # (GND)))
-- \inst5|count[5]~15\ = CARRY((!\inst5|count[4]~13\) # (!\inst5|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(5),
	datad => VCC,
	cin => \inst5|count[4]~13\,
	combout => \inst5|count[5]~14_combout\,
	cout => \inst5|count[5]~15\);

-- Location: LCCOMB_X1_Y11_N12
\inst5|count[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[7]~18_combout\ = (\inst5|count\(7) & (!\inst5|count[6]~17\)) # (!\inst5|count\(7) & ((\inst5|count[6]~17\) # (GND)))
-- \inst5|count[7]~19\ = CARRY((!\inst5|count[6]~17\) # (!\inst5|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(7),
	datad => VCC,
	cin => \inst5|count[6]~17\,
	combout => \inst5|count[7]~18_combout\,
	cout => \inst5|count[7]~19\);

-- Location: LCCOMB_X1_Y11_N14
\inst5|count[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[8]~20_combout\ = (\inst5|count\(8) & (\inst5|count[7]~19\ $ (GND))) # (!\inst5|count\(8) & (!\inst5|count[7]~19\ & VCC))
-- \inst5|count[8]~21\ = CARRY((\inst5|count\(8) & !\inst5|count[7]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(8),
	datad => VCC,
	cin => \inst5|count[7]~19\,
	combout => \inst5|count[8]~20_combout\,
	cout => \inst5|count[8]~21\);

-- Location: FF_X1_Y11_N15
\inst5|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[8]~20_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(8));

-- Location: LCCOMB_X1_Y11_N16
\inst5|count[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[9]~22_combout\ = \inst5|count[8]~21\ $ (\inst5|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|count\(9),
	cin => \inst5|count[8]~21\,
	combout => \inst5|count[9]~22_combout\);

-- Location: FF_X1_Y11_N17
\inst5|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[9]~22_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(9));

-- Location: LCCOMB_X1_Y11_N28
\inst5|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|op_1~2_combout\ = (\inst5|count\(7) & (\inst5|count\(9) & (!\inst5|op_1~0_combout\ & \inst5|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(7),
	datab => \inst5|count\(9),
	datac => \inst5|op_1~0_combout\,
	datad => \inst5|count\(8),
	combout => \inst5|op_1~2_combout\);

-- Location: FF_X1_Y11_N9
\inst5|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[5]~14_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(5));

-- Location: LCCOMB_X1_Y11_N10
\inst5|count[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[6]~16_combout\ = (\inst5|count\(6) & (\inst5|count[5]~15\ $ (GND))) # (!\inst5|count\(6) & (!\inst5|count[5]~15\ & VCC))
-- \inst5|count[6]~17\ = CARRY((\inst5|count\(6) & !\inst5|count[5]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(6),
	datad => VCC,
	cin => \inst5|count[5]~15\,
	combout => \inst5|count[6]~16_combout\,
	cout => \inst5|count[6]~17\);

-- Location: FF_X1_Y11_N11
\inst5|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[6]~16_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(6));

-- Location: FF_X1_Y11_N13
\inst5|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[7]~18_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(7));

-- Location: LCCOMB_X1_Y11_N0
\inst5|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|op_1~1_combout\ = ((!\inst5|count\(9)) # (!\inst5|count\(8))) # (!\inst5|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(7),
	datac => \inst5|count\(8),
	datad => \inst5|count\(9),
	combout => \inst5|op_1~1_combout\);

-- Location: LCCOMB_X1_Y11_N30
\inst5|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~0_combout\ = (!\inst5|count\(1) & ((\inst5|op_1~0_combout\) # (\inst5|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|op_1~0_combout\,
	datac => \inst5|count\(1),
	datad => \inst5|op_1~1_combout\,
	combout => \inst5|_~0_combout\);

-- Location: FF_X1_Y11_N31
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

-- Location: LCCOMB_X1_Y11_N2
\inst5|count[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[2]~8_combout\ = (\inst5|count\(1) & (\inst5|count\(2) $ (VCC))) # (!\inst5|count\(1) & (\inst5|count\(2) & VCC))
-- \inst5|count[2]~9\ = CARRY((\inst5|count\(1) & \inst5|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(1),
	datab => \inst5|count\(2),
	datad => VCC,
	combout => \inst5|count[2]~8_combout\,
	cout => \inst5|count[2]~9\);

-- Location: FF_X1_Y11_N3
\inst5|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[2]~8_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(2));

-- Location: LCCOMB_X1_Y11_N4
\inst5|count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count[3]~10_combout\ = (\inst5|count\(3) & (!\inst5|count[2]~9\)) # (!\inst5|count\(3) & ((\inst5|count[2]~9\) # (GND)))
-- \inst5|count[3]~11\ = CARRY((!\inst5|count[2]~9\) # (!\inst5|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count\(3),
	datad => VCC,
	cin => \inst5|count[2]~9\,
	combout => \inst5|count[3]~10_combout\,
	cout => \inst5|count[3]~11\);

-- Location: FF_X1_Y11_N5
\inst5|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[3]~10_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(3));

-- Location: FF_X1_Y11_N7
\inst5|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~clkctrl_outclk\,
	d => \inst5|count[4]~12_combout\,
	sclr => \inst5|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(4));

-- Location: LCCOMB_X1_Y11_N26
\inst5|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|op_1~0_combout\ = (((!\inst5|count\(4) & !\inst5|count\(3))) # (!\inst5|count\(6))) # (!\inst5|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count\(4),
	datab => \inst5|count\(3),
	datac => \inst5|count\(5),
	datad => \inst5|count\(6),
	combout => \inst5|op_1~0_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst5|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|alt~1_combout\ = \inst5|alt~q\ $ (((!\inst5|op_1~0_combout\ & !\inst5|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|alt~q\,
	datac => \inst5|op_1~0_combout\,
	datad => \inst5|op_1~1_combout\,
	combout => \inst5|alt~1_combout\);

-- Location: LCCOMB_X1_Y11_N22
\inst5|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|alt~feeder_combout\ = \inst5|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|alt~1_combout\,
	combout => \inst5|alt~feeder_combout\);

-- Location: FF_X1_Y11_N23
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

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X14_Y21_N24
\inst4|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~0_combout\ = (\inst4|cnt\(3) & ((!\inst4|cnt\(2)))) # (!\inst4|cnt\(3) & (\inst4|cnt\(1) & \inst4|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(1),
	datac => \inst4|cnt\(3),
	datad => \inst4|cnt\(2),
	combout => \inst4|_~0_combout\);

-- Location: FF_X14_Y21_N25
\inst4|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|alt~clkctrl_outclk\,
	d => \inst4|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(3));

-- Location: LCCOMB_X14_Y21_N6
\inst4|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~1_combout\ = (\inst4|cnt\(1) & (!\inst4|cnt\(2))) # (!\inst4|cnt\(1) & (\inst4|cnt\(2) & !\inst4|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(1),
	datac => \inst4|cnt\(2),
	datad => \inst4|cnt\(3),
	combout => \inst4|_~1_combout\);

-- Location: FF_X14_Y21_N7
\inst4|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|alt~clkctrl_outclk\,
	d => \inst4|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(2));

-- Location: LCCOMB_X14_Y21_N18
\inst4|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt[1]~0_combout\ = ((\inst4|cnt\(2) & \inst4|cnt\(3))) # (!\inst4|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(2),
	datac => \inst4|cnt\(1),
	datad => \inst4|cnt\(3),
	combout => \inst4|cnt[1]~0_combout\);

-- Location: FF_X14_Y21_N19
\inst4|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|alt~clkctrl_outclk\,
	d => \inst4|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(1));

-- Location: LCCOMB_X14_Y21_N20
\inst2|seg[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~22_combout\ = (\inst2|_~0_combout\ & ((\inst4|cnt\(2) & (\inst4|cnt\(1) & \inst4|cnt\(3))) # (!\inst4|cnt\(2) & ((!\inst4|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst4|cnt\(2),
	datac => \inst4|cnt\(3),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[6]~22_combout\);

-- Location: FF_X17_Y21_N7
\inst8|push2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ff[2]~clkctrl_outclk\,
	asdata => \inst8|unidade\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|push2\(4));

-- Location: LCCOMB_X18_Y21_N10
\inst2|seg[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~26_combout\ = (!\inst8|push2\(4) & (\inst3|cnt\(1) & \inst3|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|push2\(4),
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[2]~26_combout\);

-- Location: LCCOMB_X16_Y21_N18
\inst2|seg[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~27_combout\ = (\inst2|seg[6]~24_combout\) # ((\inst2|seg[6]~22_combout\) # ((\inst2|seg[6]~25_combout\ & \inst2|seg[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[6]~25_combout\,
	datab => \inst2|seg[6]~24_combout\,
	datac => \inst2|seg[6]~22_combout\,
	datad => \inst2|seg[2]~26_combout\,
	combout => \inst2|seg[6]~27_combout\);

-- Location: LCCOMB_X18_Y21_N12
\inst2|seg[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~28_combout\ = (\inst2|seg[2]~26_combout\ & ((\inst8|push2\(3) & (\inst8|push2\(2) & \inst8|push2\(1))) # (!\inst8|push2\(3) & ((\inst8|push2\(2)) # (\inst8|push2\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push2\(3),
	datab => \inst8|push2\(2),
	datac => \inst8|push2\(1),
	datad => \inst2|seg[2]~26_combout\,
	combout => \inst2|seg[5]~28_combout\);

-- Location: LCCOMB_X14_Y21_N30
\inst2|seg[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~30_combout\ = (\inst2|_~0_combout\ & ((\inst4|cnt\(1) & ((\inst4|cnt\(2)) # (!\inst4|cnt\(3)))) # (!\inst4|cnt\(1) & (\inst4|cnt\(2) & !\inst4|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst4|cnt\(2),
	datac => \inst4|cnt\(3),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[5]~30_combout\);

-- Location: LCCOMB_X16_Y21_N10
\inst2|seg[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~29_combout\ = (\inst2|seg[2]~23_combout\ & ((\inst8|push1\(2) & ((\inst8|push1\(1)) # (!\inst8|push1\(3)))) # (!\inst8|push1\(2) & (\inst8|push1\(1) & !\inst8|push1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[2]~23_combout\,
	datab => \inst8|push1\(2),
	datac => \inst8|push1\(1),
	datad => \inst8|push1\(3),
	combout => \inst2|seg[5]~29_combout\);

-- Location: LCCOMB_X14_Y21_N0
\inst2|seg[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~31_combout\ = (\inst2|_~1_combout\) # ((\inst2|seg[5]~28_combout\) # ((\inst2|seg[5]~30_combout\) # (\inst2|seg[5]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~1_combout\,
	datab => \inst2|seg[5]~28_combout\,
	datac => \inst2|seg[5]~30_combout\,
	datad => \inst2|seg[5]~29_combout\,
	combout => \inst2|seg[5]~31_combout\);

-- Location: LCCOMB_X14_Y21_N14
\inst2|seg[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~33_combout\ = (\inst4|cnt\(1)) # ((\inst4|cnt\(3) & !\inst4|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(3),
	datab => \inst4|cnt\(2),
	datac => \inst4|cnt\(1),
	combout => \inst2|seg[4]~33_combout\);

-- Location: LCCOMB_X17_Y21_N24
\inst2|seg[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~32_combout\ = (!\inst8|push1\(2) & ((\inst8|push1\(3) & (!\inst8|push1\(4))) # (!\inst8|push1\(3) & ((\inst8|push1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push1\(2),
	datab => \inst8|push1\(4),
	datac => \inst8|push1\(1),
	datad => \inst8|push1\(3),
	combout => \inst2|seg[4]~32_combout\);

-- Location: LCCOMB_X18_Y21_N30
\inst2|seg[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~34_combout\ = (!\inst3|cnt\(1) & ((\inst3|cnt\(2) & ((\inst2|seg[4]~32_combout\))) # (!\inst3|cnt\(2) & (\inst2|seg[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~33_combout\,
	datab => \inst2|seg[4]~32_combout\,
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[4]~34_combout\);

-- Location: LCCOMB_X18_Y21_N16
\inst2|seg[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~35_combout\ = (!\inst3|cnt\(1) & (\inst3|cnt\(2) & (!\inst8|push1\(4) & \inst8|push1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datab => \inst3|cnt\(2),
	datac => \inst8|push1\(4),
	datad => \inst8|push1\(1),
	combout => \inst2|seg[4]~35_combout\);

-- Location: LCCOMB_X18_Y21_N18
\inst2|seg[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~36_combout\ = (\inst2|_~1_combout\) # ((\inst2|seg[4]~35_combout\) # ((\inst8|push2\(1) & \inst2|seg[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~1_combout\,
	datab => \inst2|seg[4]~35_combout\,
	datac => \inst8|push2\(1),
	datad => \inst2|seg[2]~26_combout\,
	combout => \inst2|seg[4]~36_combout\);

-- Location: LCCOMB_X17_Y21_N6
\inst2|seg[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~37_combout\ = (!\inst8|push2\(2) & ((\inst8|push2\(3) & ((!\inst8|push2\(4)))) # (!\inst8|push2\(3) & (\inst8|push2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push2\(2),
	datab => \inst8|push2\(1),
	datac => \inst8|push2\(4),
	datad => \inst8|push2\(3),
	combout => \inst2|seg[4]~37_combout\);

-- Location: LCCOMB_X18_Y21_N24
\inst2|seg[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~38_combout\ = (\inst2|seg[4]~34_combout\) # ((\inst2|seg[4]~36_combout\) # ((\inst2|_~3_combout\ & \inst2|seg[4]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~34_combout\,
	datab => \inst2|seg[4]~36_combout\,
	datac => \inst2|_~3_combout\,
	datad => \inst2|seg[4]~37_combout\,
	combout => \inst2|seg[4]~38_combout\);

-- Location: LCCOMB_X14_Y21_N12
\inst2|seg[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~42_combout\ = (\inst3|cnt\(2)) # ((\inst3|cnt\(1)) # (\inst4|cnt\(1) $ (\inst4|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst3|cnt\(2),
	datac => \inst4|cnt\(2),
	datad => \inst3|cnt\(1),
	combout => \inst2|seg[3]~42_combout\);

-- Location: LCCOMB_X14_Y21_N22
\inst2|seg[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~43_combout\ = (\inst8|push1\(3) & (\inst2|seg[2]~23_combout\ & (\inst8|push1\(1) $ (!\inst8|push1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push1\(3),
	datab => \inst8|push1\(1),
	datac => \inst8|push1\(2),
	datad => \inst2|seg[2]~23_combout\,
	combout => \inst2|seg[3]~43_combout\);

-- Location: LCCOMB_X14_Y21_N4
\inst2|seg[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~44_combout\ = (\inst2|seg[3]~43_combout\) # ((\inst2|_~1_combout\) # ((!\inst2|seg[3]~42_combout\ & \inst4|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[3]~42_combout\,
	datab => \inst2|seg[3]~43_combout\,
	datac => \inst4|cnt\(3),
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg[3]~44_combout\);

-- Location: LCCOMB_X14_Y21_N16
\inst2|seg[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~39_combout\ = (\inst4|cnt\(1) & (!\inst4|cnt\(2) & (!\inst4|cnt\(3) & \inst2|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst4|cnt\(2),
	datac => \inst4|cnt\(3),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[3]~39_combout\);

-- Location: LCCOMB_X14_Y21_N10
\inst2|seg[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~40_combout\ = (!\inst8|push1\(3) & (\inst8|push1\(1) & (!\inst8|push1\(2) & \inst2|seg[2]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push1\(3),
	datab => \inst8|push1\(1),
	datac => \inst8|push1\(2),
	datad => \inst2|seg[2]~23_combout\,
	combout => \inst2|seg[3]~40_combout\);

-- Location: LCCOMB_X18_Y21_N22
\inst2|seg[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~41_combout\ = (\inst2|seg[2]~26_combout\ & ((\inst8|push2\(3) & (\inst8|push2\(2) $ (!\inst8|push2\(1)))) # (!\inst8|push2\(3) & (!\inst8|push2\(2) & \inst8|push2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push2\(3),
	datab => \inst8|push2\(2),
	datac => \inst8|push2\(1),
	datad => \inst2|seg[2]~26_combout\,
	combout => \inst2|seg[3]~41_combout\);

-- Location: LCCOMB_X13_Y21_N8
\inst2|seg[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~45_combout\ = (\inst2|seg[3]~44_combout\) # ((\inst2|seg[3]~39_combout\) # ((\inst2|seg[3]~40_combout\) # (\inst2|seg[3]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[3]~44_combout\,
	datab => \inst2|seg[3]~39_combout\,
	datac => \inst2|seg[3]~40_combout\,
	datad => \inst2|seg[3]~41_combout\,
	combout => \inst2|seg[3]~45_combout\);

-- Location: LCCOMB_X16_Y21_N24
\inst2|seg[2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~47_combout\ = (\inst2|seg[2]~23_combout\ & (\inst8|push1\(2) & (!\inst8|push1\(1) & !\inst8|push1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[2]~23_combout\,
	datab => \inst8|push1\(2),
	datac => \inst8|push1\(1),
	datad => \inst8|push1\(3),
	combout => \inst2|seg[2]~47_combout\);

-- Location: LCCOMB_X14_Y21_N26
\inst2|seg[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~46_combout\ = (!\inst4|cnt\(1) & (\inst4|cnt\(2) & (!\inst4|cnt\(3) & \inst2|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst4|cnt\(2),
	datac => \inst4|cnt\(3),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[2]~46_combout\);

-- Location: LCCOMB_X18_Y21_N28
\inst2|seg[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~48_combout\ = (!\inst8|push2\(3) & (\inst8|push2\(2) & (!\inst8|push2\(1) & \inst2|seg[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push2\(3),
	datab => \inst8|push2\(2),
	datac => \inst8|push2\(1),
	datad => \inst2|seg[2]~26_combout\,
	combout => \inst2|seg[2]~48_combout\);

-- Location: LCCOMB_X17_Y21_N22
\inst2|seg[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg\(2) = (\inst2|_~1_combout\) # ((\inst2|seg[2]~47_combout\) # ((\inst2|seg[2]~46_combout\) # (\inst2|seg[2]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~1_combout\,
	datab => \inst2|seg[2]~47_combout\,
	datac => \inst2|seg[2]~46_combout\,
	datad => \inst2|seg[2]~48_combout\,
	combout => \inst2|seg\(2));

-- Location: LCCOMB_X14_Y21_N8
\inst2|seg[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~49_combout\ = (\inst4|cnt\(3) & (\inst2|_~0_combout\ & (\inst4|cnt\(1) $ (\inst4|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst4|cnt\(2),
	datac => \inst4|cnt\(3),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[1]~49_combout\);

-- Location: LCCOMB_X18_Y21_N20
\inst2|seg[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~51_combout\ = (\inst8|push2\(3) & (\inst2|seg[2]~26_combout\ & (\inst8|push2\(2) $ (\inst8|push2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push2\(3),
	datab => \inst8|push2\(2),
	datac => \inst8|push2\(1),
	datad => \inst2|seg[2]~26_combout\,
	combout => \inst2|seg[1]~51_combout\);

-- Location: LCCOMB_X18_Y21_N14
\inst2|seg[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~50_combout\ = (\inst8|push1\(3) & (\inst2|seg[2]~23_combout\ & (\inst8|push1\(1) $ (\inst8|push1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|push1\(1),
	datab => \inst8|push1\(3),
	datac => \inst2|seg[2]~23_combout\,
	datad => \inst8|push1\(2),
	combout => \inst2|seg[1]~50_combout\);

-- Location: LCCOMB_X18_Y21_N26
\inst2|seg[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~52_combout\ = (\inst2|seg[1]~49_combout\) # ((\inst2|seg[1]~51_combout\) # ((\inst2|seg[1]~50_combout\) # (\inst2|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[1]~49_combout\,
	datab => \inst2|seg[1]~51_combout\,
	datac => \inst2|seg[1]~50_combout\,
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg[1]~52_combout\);

-- Location: LCCOMB_X14_Y21_N2
\inst2|seg[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~53_combout\ = (!\inst4|cnt\(2) & (\inst2|_~0_combout\ & (\inst4|cnt\(1) $ (\inst4|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datab => \inst4|cnt\(2),
	datac => \inst4|cnt\(3),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[0]~53_combout\);

-- Location: LCCOMB_X16_Y21_N30
\inst2|seg[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~54_combout\ = (\inst2|seg[2]~23_combout\ & (!\inst8|push1\(2) & (\inst8|push1\(1) $ (\inst8|push1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[2]~23_combout\,
	datab => \inst8|push1\(2),
	datac => \inst8|push1\(1),
	datad => \inst8|push1\(3),
	combout => \inst2|seg[0]~54_combout\);

-- Location: LCCOMB_X16_Y21_N28
\inst2|seg[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~55_combout\ = (\inst2|seg[2]~26_combout\ & (!\inst8|push2\(2) & (\inst8|push2\(1) $ (\inst8|push2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[2]~26_combout\,
	datab => \inst8|push2\(1),
	datac => \inst8|push2\(2),
	datad => \inst8|push2\(3),
	combout => \inst2|seg[0]~55_combout\);

-- Location: LCCOMB_X16_Y21_N26
\inst2|seg[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~56_combout\ = (\inst2|seg[0]~53_combout\) # ((\inst2|_~1_combout\) # ((\inst2|seg[0]~54_combout\) # (\inst2|seg[0]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[0]~53_combout\,
	datab => \inst2|_~1_combout\,
	datac => \inst2|seg[0]~54_combout\,
	datad => \inst2|seg[0]~55_combout\,
	combout => \inst2|seg[0]~56_combout\);

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


