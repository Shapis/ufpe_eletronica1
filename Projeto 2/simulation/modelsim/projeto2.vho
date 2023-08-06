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

-- DATE "08/06/2023 10:08:35"

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
-- led[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_led : std_logic_vector(2 DOWNTO 2);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst4|deb|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|div_sorteio|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst|alt~1_combout\ : std_logic;
SIGNAL \inst|alt~feeder_combout\ : std_logic;
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
SIGNAL \inst|alt~q\ : std_logic;
SIGNAL \inst|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst3|_~0_combout\ : std_logic;
SIGNAL \inst2|_~0_combout\ : std_logic;
SIGNAL \inst2|_~1_combout\ : std_logic;
SIGNAL \inst2|_~2_combout\ : std_logic;
SIGNAL \inst2|_~3_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|_~0_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[2]~15_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[2]~16\ : std_logic;
SIGNAL \inst4|deb|divisor|count[3]~17_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[3]~18\ : std_logic;
SIGNAL \inst4|deb|divisor|count[4]~19_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[4]~20\ : std_logic;
SIGNAL \inst4|deb|divisor|count[5]~21_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[5]~22\ : std_logic;
SIGNAL \inst4|deb|divisor|count[6]~23_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[6]~24\ : std_logic;
SIGNAL \inst4|deb|divisor|count[7]~25_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[7]~26\ : std_logic;
SIGNAL \inst4|deb|divisor|count[8]~27_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[8]~28\ : std_logic;
SIGNAL \inst4|deb|divisor|count[9]~29_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[9]~30\ : std_logic;
SIGNAL \inst4|deb|divisor|count[10]~31_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[10]~32\ : std_logic;
SIGNAL \inst4|deb|divisor|count[11]~33_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[11]~34\ : std_logic;
SIGNAL \inst4|deb|divisor|count[12]~35_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[12]~36\ : std_logic;
SIGNAL \inst4|deb|divisor|count[13]~37_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[13]~38\ : std_logic;
SIGNAL \inst4|deb|divisor|count[14]~39_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[14]~40\ : std_logic;
SIGNAL \inst4|deb|divisor|count[15]~41_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|count[15]~42\ : std_logic;
SIGNAL \inst4|deb|divisor|count[16]~43_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~q\ : std_logic;
SIGNAL \inst4|deb|ff[2]~0_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst4|deb|ff[0]~1_combout\ : std_logic;
SIGNAL \inst4|deb|ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~4_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~0_combout\ : std_logic;
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
SIGNAL \inst4|divisor|alt~q\ : std_logic;
SIGNAL \inst4|temp~0_combout\ : std_logic;
SIGNAL \inst4|temp~2_combout\ : std_logic;
SIGNAL \inst4|temp~q\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~1_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~feeder_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~q\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|sorteio|unidade[1]~3_combout\ : std_logic;
SIGNAL \inst4|sorteio|unidade[2]~2_combout\ : std_logic;
SIGNAL \inst4|sorteio|unidade[3]~1_combout\ : std_logic;
SIGNAL \inst4|sorteio|unidade[4]~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|op_3~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[1]~3_combout\ : std_logic;
SIGNAL \inst4|sorteio|op_5~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[3]~1_combout\ : std_logic;
SIGNAL \inst4|sorteio|_~1_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[4]~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|_~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|_~2_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[2]~2_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|count|_~0_combout\ : std_logic;
SIGNAL \inst4|count|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst4|count|_~1_combout\ : std_logic;
SIGNAL \inst4|_~57_combout\ : std_logic;
SIGNAL \inst4|_~1_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~6_combout\ : std_logic;
SIGNAL \inst4|_~71_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~7_combout\ : std_logic;
SIGNAL \inst4|_~51_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~18_combout\ : std_logic;
SIGNAL \inst4|_~5_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~98_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~113_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~112_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~110_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~111_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~114_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~q\ : std_logic;
SIGNAL \inst4|u[5][4]~28_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~26_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~27_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~25_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~29_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~q\ : std_logic;
SIGNAL \inst4|_~8_combout\ : std_logic;
SIGNAL \inst4|_~60_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~86_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~88_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~87_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~85_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~89_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~q\ : std_logic;
SIGNAL \inst4|u[5][1]~53_combout\ : std_logic;
SIGNAL \inst4|_~47_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~50_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~52_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~51_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~54_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~q\ : std_logic;
SIGNAL \inst4|_~9_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~26_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~25_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~27_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~24_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~28_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~q\ : std_logic;
SIGNAL \inst4|_~7_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~119_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~120_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~121_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~118_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~122_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~q\ : std_logic;
SIGNAL \inst4|_~6_combout\ : std_logic;
SIGNAL \inst4|_~10_combout\ : std_logic;
SIGNAL \inst4|_~41_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~76_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~75_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~30_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~32_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~31_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~29_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~33_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~q\ : std_logic;
SIGNAL \inst4|d[4][2]~48_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~50_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~47_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~49_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~51_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~q\ : std_logic;
SIGNAL \inst4|_~22_combout\ : std_logic;
SIGNAL \inst4|_~59_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~116_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~117_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~119_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~118_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~115_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~120_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~q\ : std_logic;
SIGNAL \inst4|_~23_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~77_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~75_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~76_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~78_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~79_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~q\ : std_logic;
SIGNAL \inst4|u[4][1]~55_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~57_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~56_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~58_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~59_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~q\ : std_logic;
SIGNAL \inst4|_~24_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~88_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~89_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~123_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~90_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~91_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~92_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~q\ : std_logic;
SIGNAL \inst4|d[4][4]~111_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~110_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~108_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~109_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~112_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~q\ : std_logic;
SIGNAL \inst4|_~21_combout\ : std_logic;
SIGNAL \inst4|_~25_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~41_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~40_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~39_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~42_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~q\ : std_logic;
SIGNAL \inst4|_~12_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~99_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~98_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~100_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~101_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~102_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~q\ : std_logic;
SIGNAL \inst4|d[6][3]~65_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~62_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~63_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~64_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~66_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~q\ : std_logic;
SIGNAL \inst4|_~11_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~5_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~7_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~8_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~6_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~9_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~q\ : std_logic;
SIGNAL \inst4|u[6][3]~92_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~93_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~91_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~90_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~94_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~q\ : std_logic;
SIGNAL \inst4|_~13_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~68_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~67_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~66_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~65_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~69_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~q\ : std_logic;
SIGNAL \inst4|u[6][1]~31_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~33_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~32_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~30_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~34_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~q\ : std_logic;
SIGNAL \inst4|_~14_combout\ : std_logic;
SIGNAL \inst4|_~15_combout\ : std_logic;
SIGNAL \inst4|_~26_combout\ : std_logic;
SIGNAL \inst4|_~56_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~74_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~72_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~73_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~77_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~q\ : std_logic;
SIGNAL \inst4|d[3][1]~14_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~17_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~15_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~16_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~18_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~q\ : std_logic;
SIGNAL \inst4|d[3][2]~43_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~44_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~45_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~46_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~q\ : std_logic;
SIGNAL \inst4|_~52_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~70_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~73_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~71_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~72_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~74_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~q\ : std_logic;
SIGNAL \inst4|u[3][4]~13_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~12_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~11_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~10_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~14_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~q\ : std_logic;
SIGNAL \inst4|u[3][3]~101_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~103_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~102_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~100_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~104_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~q\ : std_logic;
SIGNAL \inst4|u[3][1]~43_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~42_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~41_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~40_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~44_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~q\ : std_logic;
SIGNAL \inst4|_~53_combout\ : std_logic;
SIGNAL \inst4|_~54_combout\ : std_logic;
SIGNAL \inst4|_~55_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~81_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~83_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~80_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~82_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~84_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~q\ : std_logic;
SIGNAL \inst4|u[1][3]~107_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~108_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~105_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~106_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~109_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~q\ : std_logic;
SIGNAL \inst4|u[1][1]~47_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~48_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~45_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~46_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~49_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~q\ : std_logic;
SIGNAL \inst4|u[1][4]~21_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~23_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~20_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~22_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~24_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~q\ : std_logic;
SIGNAL \inst4|_~43_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~116_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~114_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~115_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~113_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~117_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~q\ : std_logic;
SIGNAL \inst4|d[1][3]~79_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~81_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~80_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~78_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~82_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~q\ : std_logic;
SIGNAL \inst4|d[1][1]~22_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~20_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~21_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~19_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~23_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~q\ : std_logic;
SIGNAL \inst4|_~42_combout\ : std_logic;
SIGNAL \inst4|_~44_combout\ : std_logic;
SIGNAL \inst4|_~45_combout\ : std_logic;
SIGNAL \inst4|_~46_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~52_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~53_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~54_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~55_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~56_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~q\ : std_logic;
SIGNAL \inst4|_~17_combout\ : std_logic;
SIGNAL \inst4|_~18_combout\ : std_logic;
SIGNAL \inst4|_~19_combout\ : std_logic;
SIGNAL \inst4|_~16_combout\ : std_logic;
SIGNAL \inst4|_~20_combout\ : std_logic;
SIGNAL \inst4|_~58_combout\ : std_logic;
SIGNAL \inst4|_~65_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~97_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~12_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~11_combout\ : std_logic;
SIGNAL \inst4|_~80_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~9_combout\ : std_logic;
SIGNAL \inst4|_~50_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~10_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~13_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~q\ : std_logic;
SIGNAL \inst4|d[2][4]~96_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~95_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~94_combout\ : std_logic;
SIGNAL \inst4|_~83_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~93_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~97_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~q\ : std_logic;
SIGNAL \inst4|d[2][3]~68_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~69_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~70_combout\ : std_logic;
SIGNAL \inst4|_~82_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~67_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~71_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~q\ : std_logic;
SIGNAL \inst4|d[2][2]~37_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~36_combout\ : std_logic;
SIGNAL \inst4|_~81_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~34_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~35_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~38_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~q\ : std_logic;
SIGNAL \inst4|_~32_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~37_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~38_combout\ : std_logic;
SIGNAL \inst4|_~77_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~35_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~36_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~39_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~q\ : std_logic;
SIGNAL \inst4|u[2][2]~63_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~62_combout\ : std_logic;
SIGNAL \inst4|_~78_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~60_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~61_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~64_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~q\ : std_logic;
SIGNAL \inst4|u[2][4]~2_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~3_combout\ : std_logic;
SIGNAL \inst4|_~35_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~0_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~1_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~4_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~q\ : std_logic;
SIGNAL \inst4|_~33_combout\ : std_logic;
SIGNAL \inst4|_~34_combout\ : std_logic;
SIGNAL \inst4|_~79_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~95_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~96_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~99_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~q\ : std_logic;
SIGNAL \inst4|_~38_combout\ : std_logic;
SIGNAL \inst4|_~37_combout\ : std_logic;
SIGNAL \inst4|_~36_combout\ : std_logic;
SIGNAL \inst4|_~39_combout\ : std_logic;
SIGNAL \inst4|_~40_combout\ : std_logic;
SIGNAL \inst4|_~48_combout\ : std_logic;
SIGNAL \inst4|_~49_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~15_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~16_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~17_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~19_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~q\ : std_logic;
SIGNAL \inst4|_~62_combout\ : std_logic;
SIGNAL \inst4|_~61_combout\ : std_logic;
SIGNAL \inst4|_~63_combout\ : std_logic;
SIGNAL \inst4|_~64_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~5_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~4_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~8_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~q\ : std_logic;
SIGNAL \inst4|_~67_combout\ : std_logic;
SIGNAL \inst4|_~68_combout\ : std_logic;
SIGNAL \inst4|_~69_combout\ : std_logic;
SIGNAL \inst4|_~70_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~106_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~105_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~104_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~103_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~107_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~q\ : std_logic;
SIGNAL \inst4|_~27_combout\ : std_logic;
SIGNAL \inst4|_~30_combout\ : std_logic;
SIGNAL \inst4|_~28_combout\ : std_logic;
SIGNAL \inst4|_~29_combout\ : std_logic;
SIGNAL \inst4|_~31_combout\ : std_logic;
SIGNAL \inst4|_~66_combout\ : std_logic;
SIGNAL \inst4|_~75_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~85_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~84_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~86_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~83_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~87_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~q\ : std_logic;
SIGNAL \inst4|_~72_combout\ : std_logic;
SIGNAL \inst4|_~73_combout\ : std_logic;
SIGNAL \inst4|_~74_combout\ : std_logic;
SIGNAL \inst4|_~76_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~59_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~58_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~57_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~60_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~61_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~q\ : std_logic;
SIGNAL \inst8|segmentos[6]~9_combout\ : std_logic;
SIGNAL \inst4|_~4_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~29_combout\ : std_logic;
SIGNAL \inst4|_~2_combout\ : std_logic;
SIGNAL \inst4|_~3_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~28_combout\ : std_logic;
SIGNAL \inst4|_~0_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~27_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~30_combout\ : std_logic;
SIGNAL \inst4|d_atual[3]~31_combout\ : std_logic;
SIGNAL \inst4|d_atual[3]~33_combout\ : std_logic;
SIGNAL \inst4|d_atual[3]~32_combout\ : std_logic;
SIGNAL \inst4|d_atual[1]~24_combout\ : std_logic;
SIGNAL \inst4|d_atual[1]~25_combout\ : std_logic;
SIGNAL \inst4|d_atual[1]~26_combout\ : std_logic;
SIGNAL \inst2|seg[6]~37_combout\ : std_logic;
SIGNAL \inst4|d_atual[4]~35_combout\ : std_logic;
SIGNAL \inst4|d_atual[4]~36_combout\ : std_logic;
SIGNAL \inst4|d_atual[4]~34_combout\ : std_logic;
SIGNAL \inst2|seg[2]~38_combout\ : std_logic;
SIGNAL \inst4|u_atual[1]~28_combout\ : std_logic;
SIGNAL \inst4|u_atual[1]~29_combout\ : std_logic;
SIGNAL \inst4|u_atual[1]~27_combout\ : std_logic;
SIGNAL \inst4|u_atual[3]~36_combout\ : std_logic;
SIGNAL \inst4|u_atual[3]~35_combout\ : std_logic;
SIGNAL \inst4|u_atual[3]~34_combout\ : std_logic;
SIGNAL \inst4|u_atual[2]~30_combout\ : std_logic;
SIGNAL \inst4|u_atual[2]~31_combout\ : std_logic;
SIGNAL \inst4|u_atual[2]~32_combout\ : std_logic;
SIGNAL \inst4|u_atual[2]~33_combout\ : std_logic;
SIGNAL \inst4|u_atual[4]~24_combout\ : std_logic;
SIGNAL \inst4|u_atual[4]~26_combout\ : std_logic;
SIGNAL \inst4|u_atual[4]~25_combout\ : std_logic;
SIGNAL \inst2|seg[6]~35_combout\ : std_logic;
SIGNAL \inst2|seg[6]~36_combout\ : std_logic;
SIGNAL \inst2|seg[6]~34_combout\ : std_logic;
SIGNAL \inst2|seg[6]~39_combout\ : std_logic;
SIGNAL \inst2|seg[5]~40_combout\ : std_logic;
SIGNAL \inst2|seg[5]~41_combout\ : std_logic;
SIGNAL \inst2|seg[5]~42_combout\ : std_logic;
SIGNAL \inst2|seg[5]~43_combout\ : std_logic;
SIGNAL \inst2|seg[4]~44_combout\ : std_logic;
SIGNAL \inst4|u_atual[4]~37_combout\ : std_logic;
SIGNAL \inst2|seg[6]~64_combout\ : std_logic;
SIGNAL \inst2|seg[4]~45_combout\ : std_logic;
SIGNAL \inst4|d_atual[4]~37_combout\ : std_logic;
SIGNAL \inst2|seg[4]~46_combout\ : std_logic;
SIGNAL \inst2|seg[4]~47_combout\ : std_logic;
SIGNAL \inst2|seg[4]~48_combout\ : std_logic;
SIGNAL \inst2|seg[4]~49_combout\ : std_logic;
SIGNAL \inst2|seg[1]~65_combout\ : std_logic;
SIGNAL \inst2|seg[4]~50_combout\ : std_logic;
SIGNAL \inst2|seg[3]~51_combout\ : std_logic;
SIGNAL \inst2|seg[3]~53_combout\ : std_logic;
SIGNAL \inst2|seg[3]~52_combout\ : std_logic;
SIGNAL \inst2|seg[3]~54_combout\ : std_logic;
SIGNAL \inst2|seg[2]~55_combout\ : std_logic;
SIGNAL \inst2|seg[2]~66_combout\ : std_logic;
SIGNAL \inst2|seg[2]~56_combout\ : std_logic;
SIGNAL \inst2|seg[1]~57_combout\ : std_logic;
SIGNAL \inst2|seg[1]~58_combout\ : std_logic;
SIGNAL \inst2|seg[1]~59_combout\ : std_logic;
SIGNAL \inst2|seg[0]~62_combout\ : std_logic;
SIGNAL \inst2|seg[0]~61_combout\ : std_logic;
SIGNAL \inst2|seg[0]~60_combout\ : std_logic;
SIGNAL \inst2|seg[0]~63_combout\ : std_logic;
SIGNAL \inst4|count|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst|count\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \inst4|d_atual\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|divisor|count\ : std_logic_vector(27 DOWNTO 1);
SIGNAL \inst4|sorteio|unidade\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|deb|divisor|count\ : std_logic_vector(16 DOWNTO 1);
SIGNAL \inst3|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|u_atual\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst4|sorteio|dezena\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|deb|ff\ : std_logic_vector(2 DOWNTO 0);
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

\inst4|deb|divisor|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|deb|divisor|alt~q\);

\inst4|div_sorteio|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|div_sorteio|alt~q\);

\inst|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|alt~q\);

\inst4|divisor|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|divisor|alt~q\);

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
	i => \inst4|temp~q\,
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
	i => \inst2|seg[6]~39_combout\,
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
	i => \inst2|seg[5]~43_combout\,
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
	i => \inst2|seg[4]~50_combout\,
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
	i => \inst2|seg[3]~54_combout\,
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
	i => \inst2|seg[1]~59_combout\,
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
	i => \inst2|seg[0]~63_combout\,
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

-- Location: LCCOMB_X1_Y11_N12
\inst|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alt~1_combout\ = !\inst|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alt~q\,
	combout => \inst|alt~1_combout\);

-- Location: LCCOMB_X1_Y11_N14
\inst|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alt~feeder_combout\ = \inst|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alt~1_combout\,
	combout => \inst|alt~feeder_combout\);

-- Location: LCCOMB_X2_Y11_N26
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

-- Location: FF_X2_Y11_N27
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

-- Location: LCCOMB_X2_Y11_N0
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

-- Location: FF_X2_Y11_N1
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

-- Location: LCCOMB_X2_Y11_N2
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

-- Location: FF_X2_Y11_N3
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

-- Location: LCCOMB_X2_Y11_N4
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

-- Location: FF_X2_Y11_N5
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

-- Location: LCCOMB_X2_Y11_N6
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

-- Location: FF_X2_Y11_N7
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

-- Location: LCCOMB_X2_Y11_N8
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

-- Location: FF_X2_Y11_N9
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

-- Location: LCCOMB_X2_Y11_N10
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

-- Location: FF_X2_Y11_N11
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

-- Location: LCCOMB_X2_Y11_N12
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

-- Location: FF_X2_Y11_N13
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

-- Location: LCCOMB_X2_Y11_N14
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

-- Location: FF_X2_Y11_N15
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

-- Location: LCCOMB_X2_Y11_N16
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

-- Location: FF_X2_Y11_N17
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

-- Location: LCCOMB_X2_Y11_N18
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

-- Location: FF_X2_Y11_N19
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

-- Location: LCCOMB_X2_Y11_N20
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

-- Location: FF_X2_Y11_N21
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

-- Location: LCCOMB_X2_Y11_N22
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

-- Location: FF_X2_Y11_N23
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

-- Location: LCCOMB_X2_Y11_N30
\inst|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~0_combout\ = (((!\inst|count\(8) & !\inst|count\(9))) # (!\inst|count\(10))) # (!\inst|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(8),
	datab => \inst|count\(11),
	datac => \inst|count\(9),
	datad => \inst|count\(10),
	combout => \inst|op_1~0_combout\);

-- Location: LCCOMB_X2_Y11_N24
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

-- Location: FF_X2_Y11_N25
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

-- Location: LCCOMB_X2_Y11_N28
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

-- Location: FF_X1_Y11_N15
\inst|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|alt~feeder_combout\,
	ena => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alt~q\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X22_Y20_N10
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

-- Location: FF_X22_Y20_N11
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

-- Location: LCCOMB_X22_Y20_N8
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

-- Location: FF_X22_Y20_N9
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

-- Location: LCCOMB_X24_Y20_N24
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

-- Location: LCCOMB_X24_Y20_N26
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

-- Location: LCCOMB_X25_Y20_N16
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

-- Location: LCCOMB_X25_Y20_N2
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

-- Location: LCCOMB_X6_Y11_N30
\inst4|deb|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~1_combout\ = (!\inst4|deb|divisor|count\(8) & (((!\inst4|deb|divisor|count\(6) & !\inst4|deb|divisor|count\(5))) # (!\inst4|deb|divisor|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(6),
	datab => \inst4|deb|divisor|count\(7),
	datac => \inst4|deb|divisor|count\(8),
	datad => \inst4|deb|divisor|count\(5),
	combout => \inst4|deb|divisor|op_1~1_combout\);

-- Location: LCCOMB_X6_Y11_N28
\inst4|deb|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~0_combout\ = (!\inst4|deb|divisor|count\(14) & (!\inst4|deb|divisor|count\(13) & (!\inst4|deb|divisor|count\(11) & !\inst4|deb|divisor|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(14),
	datab => \inst4|deb|divisor|count\(13),
	datac => \inst4|deb|divisor|count\(11),
	datad => \inst4|deb|divisor|count\(12),
	combout => \inst4|deb|divisor|op_1~0_combout\);

-- Location: LCCOMB_X6_Y11_N14
\inst4|deb|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~2_combout\ = (\inst4|deb|divisor|op_1~0_combout\ & (((\inst4|deb|divisor|op_1~1_combout\) # (!\inst4|deb|divisor|count\(10))) # (!\inst4|deb|divisor|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(9),
	datab => \inst4|deb|divisor|count\(10),
	datac => \inst4|deb|divisor|op_1~1_combout\,
	datad => \inst4|deb|divisor|op_1~0_combout\,
	combout => \inst4|deb|divisor|op_1~2_combout\);

-- Location: LCCOMB_X6_Y11_N16
\inst4|deb|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|_~0_combout\ = (!\inst4|deb|divisor|count\(1) & (((\inst4|deb|divisor|op_1~2_combout\) # (!\inst4|deb|divisor|count\(15))) # (!\inst4|deb|divisor|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(16),
	datab => \inst4|deb|divisor|op_1~2_combout\,
	datac => \inst4|deb|divisor|count\(1),
	datad => \inst4|deb|divisor|count\(15),
	combout => \inst4|deb|divisor|_~0_combout\);

-- Location: FF_X6_Y11_N17
\inst4|deb|divisor|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(1));

-- Location: LCCOMB_X7_Y11_N2
\inst4|deb|divisor|count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[2]~15_combout\ = (\inst4|deb|divisor|count\(1) & (\inst4|deb|divisor|count\(2) $ (VCC))) # (!\inst4|deb|divisor|count\(1) & (\inst4|deb|divisor|count\(2) & VCC))
-- \inst4|deb|divisor|count[2]~16\ = CARRY((\inst4|deb|divisor|count\(1) & \inst4|deb|divisor|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(1),
	datab => \inst4|deb|divisor|count\(2),
	datad => VCC,
	combout => \inst4|deb|divisor|count[2]~15_combout\,
	cout => \inst4|deb|divisor|count[2]~16\);

-- Location: LCCOMB_X7_Y11_N0
\inst4|deb|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~3_combout\ = (\inst4|deb|divisor|count\(15) & (\inst4|deb|divisor|count\(16) & !\inst4|deb|divisor|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|count\(15),
	datac => \inst4|deb|divisor|count\(16),
	datad => \inst4|deb|divisor|op_1~2_combout\,
	combout => \inst4|deb|divisor|op_1~3_combout\);

-- Location: FF_X7_Y11_N3
\inst4|deb|divisor|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[2]~15_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(2));

-- Location: LCCOMB_X7_Y11_N4
\inst4|deb|divisor|count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[3]~17_combout\ = (\inst4|deb|divisor|count\(3) & (!\inst4|deb|divisor|count[2]~16\)) # (!\inst4|deb|divisor|count\(3) & ((\inst4|deb|divisor|count[2]~16\) # (GND)))
-- \inst4|deb|divisor|count[3]~18\ = CARRY((!\inst4|deb|divisor|count[2]~16\) # (!\inst4|deb|divisor|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|count\(3),
	datad => VCC,
	cin => \inst4|deb|divisor|count[2]~16\,
	combout => \inst4|deb|divisor|count[3]~17_combout\,
	cout => \inst4|deb|divisor|count[3]~18\);

-- Location: FF_X7_Y11_N5
\inst4|deb|divisor|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[3]~17_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(3));

-- Location: LCCOMB_X7_Y11_N6
\inst4|deb|divisor|count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[4]~19_combout\ = (\inst4|deb|divisor|count\(4) & (\inst4|deb|divisor|count[3]~18\ $ (GND))) # (!\inst4|deb|divisor|count\(4) & (!\inst4|deb|divisor|count[3]~18\ & VCC))
-- \inst4|deb|divisor|count[4]~20\ = CARRY((\inst4|deb|divisor|count\(4) & !\inst4|deb|divisor|count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(4),
	datad => VCC,
	cin => \inst4|deb|divisor|count[3]~18\,
	combout => \inst4|deb|divisor|count[4]~19_combout\,
	cout => \inst4|deb|divisor|count[4]~20\);

-- Location: FF_X7_Y11_N7
\inst4|deb|divisor|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[4]~19_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(4));

-- Location: LCCOMB_X7_Y11_N8
\inst4|deb|divisor|count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[5]~21_combout\ = (\inst4|deb|divisor|count\(5) & (!\inst4|deb|divisor|count[4]~20\)) # (!\inst4|deb|divisor|count\(5) & ((\inst4|deb|divisor|count[4]~20\) # (GND)))
-- \inst4|deb|divisor|count[5]~22\ = CARRY((!\inst4|deb|divisor|count[4]~20\) # (!\inst4|deb|divisor|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|count\(5),
	datad => VCC,
	cin => \inst4|deb|divisor|count[4]~20\,
	combout => \inst4|deb|divisor|count[5]~21_combout\,
	cout => \inst4|deb|divisor|count[5]~22\);

-- Location: FF_X7_Y11_N9
\inst4|deb|divisor|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[5]~21_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(5));

-- Location: LCCOMB_X7_Y11_N10
\inst4|deb|divisor|count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[6]~23_combout\ = (\inst4|deb|divisor|count\(6) & (\inst4|deb|divisor|count[5]~22\ $ (GND))) # (!\inst4|deb|divisor|count\(6) & (!\inst4|deb|divisor|count[5]~22\ & VCC))
-- \inst4|deb|divisor|count[6]~24\ = CARRY((\inst4|deb|divisor|count\(6) & !\inst4|deb|divisor|count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(6),
	datad => VCC,
	cin => \inst4|deb|divisor|count[5]~22\,
	combout => \inst4|deb|divisor|count[6]~23_combout\,
	cout => \inst4|deb|divisor|count[6]~24\);

-- Location: FF_X7_Y11_N11
\inst4|deb|divisor|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[6]~23_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(6));

-- Location: LCCOMB_X7_Y11_N12
\inst4|deb|divisor|count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[7]~25_combout\ = (\inst4|deb|divisor|count\(7) & (!\inst4|deb|divisor|count[6]~24\)) # (!\inst4|deb|divisor|count\(7) & ((\inst4|deb|divisor|count[6]~24\) # (GND)))
-- \inst4|deb|divisor|count[7]~26\ = CARRY((!\inst4|deb|divisor|count[6]~24\) # (!\inst4|deb|divisor|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(7),
	datad => VCC,
	cin => \inst4|deb|divisor|count[6]~24\,
	combout => \inst4|deb|divisor|count[7]~25_combout\,
	cout => \inst4|deb|divisor|count[7]~26\);

-- Location: FF_X7_Y11_N13
\inst4|deb|divisor|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[7]~25_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(7));

-- Location: LCCOMB_X7_Y11_N14
\inst4|deb|divisor|count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[8]~27_combout\ = (\inst4|deb|divisor|count\(8) & (\inst4|deb|divisor|count[7]~26\ $ (GND))) # (!\inst4|deb|divisor|count\(8) & (!\inst4|deb|divisor|count[7]~26\ & VCC))
-- \inst4|deb|divisor|count[8]~28\ = CARRY((\inst4|deb|divisor|count\(8) & !\inst4|deb|divisor|count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|count\(8),
	datad => VCC,
	cin => \inst4|deb|divisor|count[7]~26\,
	combout => \inst4|deb|divisor|count[8]~27_combout\,
	cout => \inst4|deb|divisor|count[8]~28\);

-- Location: FF_X7_Y11_N15
\inst4|deb|divisor|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[8]~27_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(8));

-- Location: LCCOMB_X7_Y11_N16
\inst4|deb|divisor|count[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[9]~29_combout\ = (\inst4|deb|divisor|count\(9) & (!\inst4|deb|divisor|count[8]~28\)) # (!\inst4|deb|divisor|count\(9) & ((\inst4|deb|divisor|count[8]~28\) # (GND)))
-- \inst4|deb|divisor|count[9]~30\ = CARRY((!\inst4|deb|divisor|count[8]~28\) # (!\inst4|deb|divisor|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|count\(9),
	datad => VCC,
	cin => \inst4|deb|divisor|count[8]~28\,
	combout => \inst4|deb|divisor|count[9]~29_combout\,
	cout => \inst4|deb|divisor|count[9]~30\);

-- Location: FF_X7_Y11_N17
\inst4|deb|divisor|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[9]~29_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(9));

-- Location: LCCOMB_X7_Y11_N18
\inst4|deb|divisor|count[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[10]~31_combout\ = (\inst4|deb|divisor|count\(10) & (\inst4|deb|divisor|count[9]~30\ $ (GND))) # (!\inst4|deb|divisor|count\(10) & (!\inst4|deb|divisor|count[9]~30\ & VCC))
-- \inst4|deb|divisor|count[10]~32\ = CARRY((\inst4|deb|divisor|count\(10) & !\inst4|deb|divisor|count[9]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|count\(10),
	datad => VCC,
	cin => \inst4|deb|divisor|count[9]~30\,
	combout => \inst4|deb|divisor|count[10]~31_combout\,
	cout => \inst4|deb|divisor|count[10]~32\);

-- Location: FF_X7_Y11_N19
\inst4|deb|divisor|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[10]~31_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(10));

-- Location: LCCOMB_X7_Y11_N20
\inst4|deb|divisor|count[11]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[11]~33_combout\ = (\inst4|deb|divisor|count\(11) & (!\inst4|deb|divisor|count[10]~32\)) # (!\inst4|deb|divisor|count\(11) & ((\inst4|deb|divisor|count[10]~32\) # (GND)))
-- \inst4|deb|divisor|count[11]~34\ = CARRY((!\inst4|deb|divisor|count[10]~32\) # (!\inst4|deb|divisor|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|count\(11),
	datad => VCC,
	cin => \inst4|deb|divisor|count[10]~32\,
	combout => \inst4|deb|divisor|count[11]~33_combout\,
	cout => \inst4|deb|divisor|count[11]~34\);

-- Location: FF_X7_Y11_N21
\inst4|deb|divisor|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[11]~33_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(11));

-- Location: LCCOMB_X7_Y11_N22
\inst4|deb|divisor|count[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[12]~35_combout\ = (\inst4|deb|divisor|count\(12) & (\inst4|deb|divisor|count[11]~34\ $ (GND))) # (!\inst4|deb|divisor|count\(12) & (!\inst4|deb|divisor|count[11]~34\ & VCC))
-- \inst4|deb|divisor|count[12]~36\ = CARRY((\inst4|deb|divisor|count\(12) & !\inst4|deb|divisor|count[11]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(12),
	datad => VCC,
	cin => \inst4|deb|divisor|count[11]~34\,
	combout => \inst4|deb|divisor|count[12]~35_combout\,
	cout => \inst4|deb|divisor|count[12]~36\);

-- Location: FF_X7_Y11_N23
\inst4|deb|divisor|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[12]~35_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(12));

-- Location: LCCOMB_X7_Y11_N24
\inst4|deb|divisor|count[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[13]~37_combout\ = (\inst4|deb|divisor|count\(13) & (!\inst4|deb|divisor|count[12]~36\)) # (!\inst4|deb|divisor|count\(13) & ((\inst4|deb|divisor|count[12]~36\) # (GND)))
-- \inst4|deb|divisor|count[13]~38\ = CARRY((!\inst4|deb|divisor|count[12]~36\) # (!\inst4|deb|divisor|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|count\(13),
	datad => VCC,
	cin => \inst4|deb|divisor|count[12]~36\,
	combout => \inst4|deb|divisor|count[13]~37_combout\,
	cout => \inst4|deb|divisor|count[13]~38\);

-- Location: FF_X7_Y11_N25
\inst4|deb|divisor|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[13]~37_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(13));

-- Location: LCCOMB_X7_Y11_N26
\inst4|deb|divisor|count[14]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[14]~39_combout\ = (\inst4|deb|divisor|count\(14) & (\inst4|deb|divisor|count[13]~38\ $ (GND))) # (!\inst4|deb|divisor|count\(14) & (!\inst4|deb|divisor|count[13]~38\ & VCC))
-- \inst4|deb|divisor|count[14]~40\ = CARRY((\inst4|deb|divisor|count\(14) & !\inst4|deb|divisor|count[13]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(14),
	datad => VCC,
	cin => \inst4|deb|divisor|count[13]~38\,
	combout => \inst4|deb|divisor|count[14]~39_combout\,
	cout => \inst4|deb|divisor|count[14]~40\);

-- Location: FF_X7_Y11_N27
\inst4|deb|divisor|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[14]~39_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(14));

-- Location: LCCOMB_X7_Y11_N28
\inst4|deb|divisor|count[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[15]~41_combout\ = (\inst4|deb|divisor|count\(15) & (!\inst4|deb|divisor|count[14]~40\)) # (!\inst4|deb|divisor|count\(15) & ((\inst4|deb|divisor|count[14]~40\) # (GND)))
-- \inst4|deb|divisor|count[15]~42\ = CARRY((!\inst4|deb|divisor|count[14]~40\) # (!\inst4|deb|divisor|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|count\(15),
	datad => VCC,
	cin => \inst4|deb|divisor|count[14]~40\,
	combout => \inst4|deb|divisor|count[15]~41_combout\,
	cout => \inst4|deb|divisor|count[15]~42\);

-- Location: FF_X7_Y11_N29
\inst4|deb|divisor|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[15]~41_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(15));

-- Location: LCCOMB_X7_Y11_N30
\inst4|deb|divisor|count[16]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|count[16]~43_combout\ = \inst4|deb|divisor|count\(16) $ (!\inst4|deb|divisor|count[15]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(16),
	cin => \inst4|deb|divisor|count[15]~42\,
	combout => \inst4|deb|divisor|count[16]~43_combout\);

-- Location: FF_X7_Y11_N31
\inst4|deb|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|count[16]~43_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|count\(16));

-- Location: LCCOMB_X6_Y11_N26
\inst4|deb|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|alt~1_combout\ = \inst4|deb|divisor|alt~q\ $ (((\inst4|deb|divisor|count\(16) & (\inst4|deb|divisor|count\(15) & !\inst4|deb|divisor|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|count\(16),
	datab => \inst4|deb|divisor|count\(15),
	datac => \inst4|deb|divisor|op_1~2_combout\,
	datad => \inst4|deb|divisor|alt~q\,
	combout => \inst4|deb|divisor|alt~1_combout\);

-- Location: LCCOMB_X6_Y11_N18
\inst4|deb|divisor|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|alt~feeder_combout\ = \inst4|deb|divisor|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|alt~1_combout\,
	combout => \inst4|deb|divisor|alt~feeder_combout\);

-- Location: FF_X6_Y11_N19
\inst4|deb|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|alt~q\);

-- Location: LCCOMB_X6_Y11_N24
\inst4|deb|ff[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|ff[2]~0_combout\ = LCELL(\inst4|deb|divisor|alt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|deb|divisor|alt~q\,
	combout => \inst4|deb|ff[2]~0_combout\);

-- Location: CLKCTRL_G4
\inst4|deb|divisor|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|deb|divisor|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|deb|divisor|alt~clkctrl_outclk\);

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

-- Location: LCCOMB_X30_Y13_N18
\inst4|deb|ff[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|ff[0]~1_combout\ = !\key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[1]~input_o\,
	combout => \inst4|deb|ff[0]~1_combout\);

-- Location: FF_X30_Y13_N19
\inst4|deb|ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|deb|divisor|alt~clkctrl_outclk\,
	d => \inst4|deb|ff[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|ff\(0));

-- Location: LCCOMB_X30_Y13_N22
\inst4|deb|ff[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|ff[1]~feeder_combout\ = \inst4|deb|ff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|deb|ff\(0),
	combout => \inst4|deb|ff[1]~feeder_combout\);

-- Location: FF_X30_Y13_N23
\inst4|deb|ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|deb|divisor|alt~clkctrl_outclk\,
	d => \inst4|deb|ff[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|ff\(1));

-- Location: FF_X30_Y13_N25
\inst4|deb|ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|deb|ff[2]~0_combout\,
	asdata => \inst4|deb|ff\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|ff\(2));

-- Location: LCCOMB_X17_Y13_N28
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

-- Location: LCCOMB_X17_Y14_N0
\inst4|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~1_combout\ = (!\inst4|divisor|count\(10) & (((!\inst4|divisor|count\(8) & !\inst4|divisor|count\(7))) # (!\inst4|divisor|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(9),
	datab => \inst4|divisor|count\(8),
	datac => \inst4|divisor|count\(10),
	datad => \inst4|divisor|count\(7),
	combout => \inst4|divisor|op_1~1_combout\);

-- Location: LCCOMB_X17_Y14_N2
\inst4|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~2_combout\ = (((!\inst4|divisor|count\(11) & \inst4|divisor|op_1~1_combout\)) # (!\inst4|divisor|count\(12))) # (!\inst4|divisor|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(11),
	datab => \inst4|divisor|count\(13),
	datac => \inst4|divisor|count\(12),
	datad => \inst4|divisor|op_1~1_combout\,
	combout => \inst4|divisor|op_1~2_combout\);

-- Location: LCCOMB_X17_Y13_N26
\inst4|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~0_combout\ = (((!\inst4|divisor|count\(15) & !\inst4|divisor|count\(16))) # (!\inst4|divisor|count\(18))) # (!\inst4|divisor|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(15),
	datab => \inst4|divisor|count\(16),
	datac => \inst4|divisor|count\(17),
	datad => \inst4|divisor|count\(18),
	combout => \inst4|divisor|op_1~0_combout\);

-- Location: LCCOMB_X18_Y14_N16
\inst4|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~3_combout\ = (\inst4|divisor|op_1~0_combout\) # ((\inst4|divisor|op_1~2_combout\ & (!\inst4|divisor|count\(14) & !\inst4|divisor|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|op_1~2_combout\,
	datab => \inst4|divisor|count\(14),
	datac => \inst4|divisor|count\(16),
	datad => \inst4|divisor|op_1~0_combout\,
	combout => \inst4|divisor|op_1~3_combout\);

-- Location: LCCOMB_X17_Y14_N4
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

-- Location: FF_X17_Y14_N5
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

-- Location: LCCOMB_X17_Y14_N6
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

-- Location: LCCOMB_X18_Y14_N30
\inst4|divisor|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~7_combout\ = (!\inst4|divisor|op_1~6_combout\ & ((!\inst4|divisor|op_1~3_combout\) # (!\inst4|divisor|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|op_1~4_combout\,
	datac => \inst4|divisor|op_1~6_combout\,
	datad => \inst4|divisor|op_1~3_combout\,
	combout => \inst4|divisor|op_1~7_combout\);

-- Location: FF_X17_Y14_N7
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

-- Location: LCCOMB_X17_Y14_N8
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

-- Location: FF_X17_Y14_N9
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

-- Location: LCCOMB_X17_Y14_N10
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

-- Location: FF_X17_Y14_N11
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

-- Location: LCCOMB_X17_Y14_N12
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

-- Location: FF_X17_Y14_N13
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

-- Location: LCCOMB_X17_Y14_N14
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

-- Location: FF_X17_Y14_N15
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

-- Location: LCCOMB_X17_Y14_N16
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

-- Location: FF_X17_Y14_N17
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

-- Location: LCCOMB_X17_Y14_N18
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

-- Location: FF_X17_Y14_N19
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

-- Location: LCCOMB_X17_Y14_N20
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

-- Location: FF_X17_Y14_N21
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

-- Location: LCCOMB_X17_Y14_N22
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

-- Location: FF_X17_Y14_N23
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

-- Location: LCCOMB_X17_Y14_N24
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

-- Location: FF_X17_Y14_N25
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

-- Location: LCCOMB_X17_Y14_N26
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

-- Location: FF_X17_Y14_N27
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

-- Location: LCCOMB_X17_Y14_N28
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

-- Location: FF_X17_Y14_N29
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

-- Location: LCCOMB_X17_Y14_N30
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

-- Location: FF_X17_Y14_N31
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

-- Location: LCCOMB_X17_Y13_N0
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

-- Location: FF_X17_Y13_N1
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

-- Location: LCCOMB_X17_Y13_N2
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

-- Location: FF_X17_Y13_N3
\inst4|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[16]~54_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(16));

-- Location: LCCOMB_X17_Y13_N4
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

-- Location: FF_X17_Y13_N5
\inst4|divisor|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[17]~56_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(17));

-- Location: LCCOMB_X17_Y13_N6
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

-- Location: FF_X17_Y13_N7
\inst4|divisor|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[18]~58_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(18));

-- Location: LCCOMB_X17_Y13_N8
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

-- Location: FF_X17_Y13_N9
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

-- Location: LCCOMB_X17_Y13_N10
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

-- Location: FF_X17_Y13_N11
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

-- Location: LCCOMB_X17_Y13_N12
\inst4|divisor|count[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[21]~64_combout\ = (\inst4|divisor|count\(21) & (!\inst4|divisor|count[20]~63\)) # (!\inst4|divisor|count\(21) & ((\inst4|divisor|count[20]~63\) # (GND)))
-- \inst4|divisor|count[21]~65\ = CARRY((!\inst4|divisor|count[20]~63\) # (!\inst4|divisor|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(21),
	datad => VCC,
	cin => \inst4|divisor|count[20]~63\,
	combout => \inst4|divisor|count[21]~64_combout\,
	cout => \inst4|divisor|count[21]~65\);

-- Location: FF_X17_Y13_N13
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

-- Location: LCCOMB_X17_Y13_N14
\inst4|divisor|count[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[22]~66_combout\ = (\inst4|divisor|count\(22) & (\inst4|divisor|count[21]~65\ $ (GND))) # (!\inst4|divisor|count\(22) & (!\inst4|divisor|count[21]~65\ & VCC))
-- \inst4|divisor|count[22]~67\ = CARRY((\inst4|divisor|count\(22) & !\inst4|divisor|count[21]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(22),
	datad => VCC,
	cin => \inst4|divisor|count[21]~65\,
	combout => \inst4|divisor|count[22]~66_combout\,
	cout => \inst4|divisor|count[22]~67\);

-- Location: FF_X17_Y13_N15
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

-- Location: LCCOMB_X17_Y13_N16
\inst4|divisor|count[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[23]~68_combout\ = (\inst4|divisor|count\(23) & (!\inst4|divisor|count[22]~67\)) # (!\inst4|divisor|count\(23) & ((\inst4|divisor|count[22]~67\) # (GND)))
-- \inst4|divisor|count[23]~69\ = CARRY((!\inst4|divisor|count[22]~67\) # (!\inst4|divisor|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(23),
	datad => VCC,
	cin => \inst4|divisor|count[22]~67\,
	combout => \inst4|divisor|count[23]~68_combout\,
	cout => \inst4|divisor|count[23]~69\);

-- Location: FF_X17_Y13_N17
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

-- Location: LCCOMB_X17_Y13_N18
\inst4|divisor|count[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[24]~70_combout\ = (\inst4|divisor|count\(24) & (\inst4|divisor|count[23]~69\ $ (GND))) # (!\inst4|divisor|count\(24) & (!\inst4|divisor|count[23]~69\ & VCC))
-- \inst4|divisor|count[24]~71\ = CARRY((\inst4|divisor|count\(24) & !\inst4|divisor|count[23]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(24),
	datad => VCC,
	cin => \inst4|divisor|count[23]~69\,
	combout => \inst4|divisor|count[24]~70_combout\,
	cout => \inst4|divisor|count[24]~71\);

-- Location: FF_X17_Y13_N19
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

-- Location: LCCOMB_X17_Y13_N20
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

-- Location: FF_X17_Y13_N21
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

-- Location: LCCOMB_X17_Y13_N22
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

-- Location: FF_X17_Y13_N23
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

-- Location: LCCOMB_X17_Y13_N24
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

-- Location: FF_X17_Y13_N25
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

-- Location: LCCOMB_X17_Y13_N30
\inst4|divisor|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~5_combout\ = (!\inst4|divisor|count\(24) & (((!\inst4|divisor|count\(23)) # (!\inst4|divisor|count\(22))) # (!\inst4|divisor|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(21),
	datab => \inst4|divisor|count\(24),
	datac => \inst4|divisor|count\(22),
	datad => \inst4|divisor|count\(23),
	combout => \inst4|divisor|op_1~5_combout\);

-- Location: LCCOMB_X18_Y14_N26
\inst4|divisor|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~6_combout\ = (((\inst4|divisor|op_1~5_combout\) # (!\inst4|divisor|count\(27))) # (!\inst4|divisor|count\(26))) # (!\inst4|divisor|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(25),
	datab => \inst4|divisor|count\(26),
	datac => \inst4|divisor|count\(27),
	datad => \inst4|divisor|op_1~5_combout\,
	combout => \inst4|divisor|op_1~6_combout\);

-- Location: LCCOMB_X18_Y14_N28
\inst4|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|alt~1_combout\ = \inst4|divisor|alt~q\ $ (((!\inst4|divisor|op_1~6_combout\ & ((!\inst4|divisor|op_1~3_combout\) # (!\inst4|divisor|op_1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|op_1~6_combout\,
	datab => \inst4|divisor|alt~q\,
	datac => \inst4|divisor|op_1~4_combout\,
	datad => \inst4|divisor|op_1~3_combout\,
	combout => \inst4|divisor|alt~1_combout\);

-- Location: FF_X18_Y14_N25
\inst4|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst4|divisor|alt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|alt~q\);

-- Location: LCCOMB_X30_Y13_N24
\inst4|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|temp~0_combout\ = LCELL((\inst4|temp~q\ & ((\inst4|divisor|alt~q\))) # (!\inst4|temp~q\ & (!\inst4|deb|ff\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|temp~q\,
	datac => \inst4|deb|ff\(2),
	datad => \inst4|divisor|alt~q\,
	combout => \inst4|temp~0_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst4|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|temp~2_combout\ = !\inst4|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|temp~q\,
	combout => \inst4|temp~2_combout\);

-- Location: FF_X30_Y15_N1
\inst4|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|temp~0_combout\,
	d => \inst4|temp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|temp~q\);

-- Location: LCCOMB_X1_Y11_N18
\inst4|div_sorteio|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|alt~1_combout\ = !\inst4|div_sorteio|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|div_sorteio|alt~q\,
	combout => \inst4|div_sorteio|alt~1_combout\);

-- Location: LCCOMB_X1_Y11_N26
\inst4|div_sorteio|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|alt~feeder_combout\ = \inst4|div_sorteio|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|div_sorteio|alt~1_combout\,
	combout => \inst4|div_sorteio|alt~feeder_combout\);

-- Location: FF_X1_Y11_N27
\inst4|div_sorteio|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|alt~feeder_combout\,
	ena => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|alt~q\);

-- Location: CLKCTRL_G1
\inst4|div_sorteio|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|div_sorteio|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|div_sorteio|alt~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y14_N30
\inst4|sorteio|unidade[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[1]~3_combout\ = (!\inst4|sorteio|unidade\(1) & (((!\inst4|sorteio|unidade\(2) & !\inst4|sorteio|unidade\(3))) # (!\inst4|sorteio|unidade\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|sorteio|unidade\(1),
	datad => \inst4|sorteio|unidade\(3),
	combout => \inst4|sorteio|unidade[1]~3_combout\);

-- Location: FF_X29_Y14_N31
\inst4|sorteio|unidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|unidade[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|unidade\(1));

-- Location: LCCOMB_X29_Y14_N24
\inst4|sorteio|unidade[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[2]~2_combout\ = (!\inst4|sorteio|unidade\(4) & (\inst4|sorteio|unidade\(1) $ (\inst4|sorteio|unidade\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|sorteio|unidade[2]~2_combout\);

-- Location: FF_X29_Y14_N25
\inst4|sorteio|unidade[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|unidade[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|unidade\(2));

-- Location: LCCOMB_X28_Y16_N30
\inst4|sorteio|unidade[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[3]~1_combout\ = (!\inst4|sorteio|unidade\(4) & (\inst4|sorteio|unidade\(3) $ (((\inst4|sorteio|unidade\(2) & \inst4|sorteio|unidade\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|sorteio|unidade[3]~1_combout\);

-- Location: FF_X28_Y16_N31
\inst4|sorteio|unidade[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|unidade[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|unidade\(3));

-- Location: LCCOMB_X28_Y16_N12
\inst4|sorteio|unidade[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[4]~0_combout\ = (\inst4|sorteio|unidade\(3) & (\inst4|sorteio|unidade\(2) & (!\inst4|sorteio|unidade\(4) & \inst4|sorteio|unidade\(1)))) # (!\inst4|sorteio|unidade\(3) & (!\inst4|sorteio|unidade\(2) & (\inst4|sorteio|unidade\(4) & 
-- !\inst4|sorteio|unidade\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|sorteio|unidade\(4),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|sorteio|unidade[4]~0_combout\);

-- Location: FF_X28_Y16_N13
\inst4|sorteio|unidade[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|unidade[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|unidade\(4));

-- Location: LCCOMB_X32_Y16_N28
\inst4|sorteio|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|op_3~0_combout\ = ((!\inst4|sorteio|unidade\(2) & (!\inst4|sorteio|unidade\(3) & !\inst4|sorteio|unidade\(1)))) # (!\inst4|sorteio|unidade\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|sorteio|op_3~0_combout\);

-- Location: LCCOMB_X32_Y16_N14
\inst4|sorteio|dezena[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[1]~3_combout\ = \inst4|sorteio|dezena\(1) $ (!\inst4|sorteio|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sorteio|dezena\(1),
	datad => \inst4|sorteio|op_3~0_combout\,
	combout => \inst4|sorteio|dezena[1]~3_combout\);

-- Location: FF_X32_Y16_N15
\inst4|sorteio|dezena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|dezena[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|dezena\(1));

-- Location: LCCOMB_X33_Y16_N4
\inst4|sorteio|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|op_5~0_combout\ = (\inst4|sorteio|dezena\(2) & \inst4|sorteio|dezena\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|sorteio|op_5~0_combout\);

-- Location: LCCOMB_X32_Y16_N26
\inst4|sorteio|dezena[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[3]~1_combout\ = (!\inst4|sorteio|_~2_combout\ & (\inst4|sorteio|dezena\(3) $ (((\inst4|sorteio|op_5~0_combout\ & !\inst4|sorteio|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|op_5~0_combout\,
	datab => \inst4|sorteio|op_3~0_combout\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|sorteio|_~2_combout\,
	combout => \inst4|sorteio|dezena[3]~1_combout\);

-- Location: FF_X32_Y16_N27
\inst4|sorteio|dezena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|dezena[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|dezena\(3));

-- Location: LCCOMB_X32_Y16_N12
\inst4|sorteio|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|_~1_combout\ = (\inst4|sorteio|dezena\(3) & (\inst4|sorteio|dezena\(2) & (!\inst4|sorteio|dezena\(1) & !\inst4|sorteio|unidade\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|sorteio|dezena\(1),
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|sorteio|_~1_combout\);

-- Location: LCCOMB_X32_Y16_N8
\inst4|sorteio|dezena[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[4]~0_combout\ = \inst4|sorteio|dezena\(4) $ (((\inst4|sorteio|dezena\(3) & (!\inst4|sorteio|op_3~0_combout\ & \inst4|sorteio|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|sorteio|op_3~0_combout\,
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|sorteio|op_5~0_combout\,
	combout => \inst4|sorteio|dezena[4]~0_combout\);

-- Location: FF_X32_Y16_N9
\inst4|sorteio|dezena[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|dezena[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|dezena\(4));

-- Location: LCCOMB_X32_Y16_N2
\inst4|sorteio|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|_~0_combout\ = (!\inst4|sorteio|unidade\(3) & (!\inst4|sorteio|dezena\(4) & (!\inst4|sorteio|unidade\(2) & !\inst4|sorteio|unidade\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|sorteio|_~0_combout\);

-- Location: LCCOMB_X32_Y16_N10
\inst4|sorteio|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|_~2_combout\ = (\inst4|sorteio|_~1_combout\ & \inst4|sorteio|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|_~1_combout\,
	datad => \inst4|sorteio|_~0_combout\,
	combout => \inst4|sorteio|_~2_combout\);

-- Location: LCCOMB_X32_Y16_N16
\inst4|sorteio|dezena[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[2]~2_combout\ = (!\inst4|sorteio|_~2_combout\ & (\inst4|sorteio|dezena\(2) $ (((\inst4|sorteio|dezena\(1) & !\inst4|sorteio|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|sorteio|op_3~0_combout\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|_~2_combout\,
	combout => \inst4|sorteio|dezena[2]~2_combout\);

-- Location: FF_X32_Y16_N17
\inst4|sorteio|dezena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|dezena[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|dezena\(2));

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X30_Y16_N24
\inst4|count|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|_~0_combout\ = (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & \inst4|count|cnt\(1))) # (!\inst4|count|cnt\(2) & (\inst4|count|cnt\(3) & !\inst4|count|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	datad => \inst4|count|cnt\(1),
	combout => \inst4|count|_~0_combout\);

-- Location: FF_X30_Y16_N25
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

-- Location: LCCOMB_X30_Y16_N4
\inst4|count|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|cnt[1]~0_combout\ = (!\inst4|count|cnt\(1) & ((!\inst4|count|cnt\(3)) # (!\inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|count|cnt[1]~0_combout\);

-- Location: FF_X30_Y16_N5
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

-- Location: LCCOMB_X30_Y16_N10
\inst4|count|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|_~1_combout\ = (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) $ (\inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|count|_~1_combout\);

-- Location: FF_X30_Y16_N11
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

-- Location: LCCOMB_X30_Y16_N6
\inst4|_~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~57_combout\ = (!\inst4|count|cnt\(2) & (\inst4|count|cnt\(3) & (!\inst4|count|cnt\(1) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|temp~q\,
	combout => \inst4|_~57_combout\);

-- Location: LCCOMB_X30_Y16_N30
\inst4|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~1_combout\ = (\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) & !\inst4|count|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(2),
	combout => \inst4|_~1_combout\);

-- Location: LCCOMB_X29_Y19_N12
\inst4|d[6][1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~6_combout\ = (\inst4|d[6][1]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~70_combout\ & \inst4|sorteio|dezena\(1))))) # (!\inst4|d[6][1]~q\ & (((\inst4|_~70_combout\ & \inst4|sorteio|dezena\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][1]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|d[6][1]~6_combout\);

-- Location: LCCOMB_X30_Y16_N18
\inst4|_~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~71_combout\ = (\inst4|_~1_combout\ & (\inst4|temp~q\ & ((!\inst4|_~66_combout\) # (!\inst4|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~1_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|_~71_combout\);

-- Location: LCCOMB_X30_Y19_N16
\inst4|d[6][1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~7_combout\ = (\inst4|d[6][1]~q\ & ((\inst4|_~71_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[6][1]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[6][1]~7_combout\);

-- Location: LCCOMB_X30_Y16_N12
\inst4|_~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~51_combout\ = (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & (!\inst4|count|cnt\(1) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|temp~q\,
	combout => \inst4|_~51_combout\);

-- Location: LCCOMB_X30_Y15_N6
\inst4|u[4][4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~18_combout\ = (\inst4|u[4][4]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[4][4]~18_combout\);

-- Location: LCCOMB_X29_Y16_N20
\inst4|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~5_combout\ = (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(3) & (!\inst4|count|cnt\(2) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|temp~q\,
	combout => \inst4|_~5_combout\);

-- Location: LCCOMB_X28_Y18_N30
\inst4|u[2][3]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~98_combout\ = (\inst4|u[2][3]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[2][3]~98_combout\);

-- Location: LCCOMB_X29_Y14_N10
\inst4|u[5][3]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~113_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~71_combout\) # ((\inst4|_~70_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~71_combout\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[5][3]~113_combout\);

-- Location: LCCOMB_X29_Y14_N20
\inst4|u[5][3]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~112_combout\ = (\inst4|sorteio|unidade\(3) & ((\inst4|_~75_combout\) # ((\inst4|u[5][3]~q\ & \inst4|_~76_combout\)))) # (!\inst4|sorteio|unidade\(3) & (\inst4|u[5][3]~q\ & ((\inst4|_~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|_~75_combout\,
	datad => \inst4|_~76_combout\,
	combout => \inst4|u[5][3]~112_combout\);

-- Location: LCCOMB_X29_Y14_N14
\inst4|u[5][3]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~110_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~49_combout\) # ((\inst4|_~5_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~49_combout\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|u[5][3]~q\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|u[5][3]~110_combout\);

-- Location: LCCOMB_X30_Y14_N22
\inst4|u[5][3]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~111_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[5][3]~111_combout\);

-- Location: LCCOMB_X29_Y14_N6
\inst4|u[5][3]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~114_combout\ = (\inst4|u[5][3]~113_combout\) # ((\inst4|u[5][3]~112_combout\) # ((\inst4|u[5][3]~110_combout\) # (\inst4|u[5][3]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~113_combout\,
	datab => \inst4|u[5][3]~112_combout\,
	datac => \inst4|u[5][3]~110_combout\,
	datad => \inst4|u[5][3]~111_combout\,
	combout => \inst4|u[5][3]~114_combout\);

-- Location: FF_X29_Y14_N7
\inst4|u[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[5][3]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][3]~q\);

-- Location: LCCOMB_X33_Y16_N12
\inst4|u[5][4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~28_combout\ = (\inst4|u[5][4]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[5][4]~28_combout\);

-- Location: LCCOMB_X33_Y16_N8
\inst4|u[5][4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~26_combout\ = (\inst4|u[5][4]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[5][4]~26_combout\);

-- Location: LCCOMB_X33_Y16_N26
\inst4|u[5][4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~27_combout\ = (\inst4|sorteio|unidade\(4) & ((\inst4|_~75_combout\) # ((\inst4|u[5][4]~q\ & \inst4|_~76_combout\)))) # (!\inst4|sorteio|unidade\(4) & (\inst4|u[5][4]~q\ & (\inst4|_~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~76_combout\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|u[5][4]~27_combout\);

-- Location: LCCOMB_X33_Y16_N2
\inst4|u[5][4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~25_combout\ = (\inst4|u[5][4]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[5][4]~25_combout\);

-- Location: LCCOMB_X33_Y16_N16
\inst4|u[5][4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~29_combout\ = (\inst4|u[5][4]~28_combout\) # ((\inst4|u[5][4]~26_combout\) # ((\inst4|u[5][4]~27_combout\) # (\inst4|u[5][4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~28_combout\,
	datab => \inst4|u[5][4]~26_combout\,
	datac => \inst4|u[5][4]~27_combout\,
	datad => \inst4|u[5][4]~25_combout\,
	combout => \inst4|u[5][4]~29_combout\);

-- Location: FF_X33_Y16_N17
\inst4|u[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[5][4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][4]~q\);

-- Location: LCCOMB_X28_Y16_N0
\inst4|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~8_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|u[5][4]~q\ & (\inst4|u[5][3]~q\ $ (!\inst4|sorteio|unidade\(3))))) # (!\inst4|sorteio|unidade\(4) & (!\inst4|u[5][4]~q\ & (\inst4|u[5][3]~q\ $ (!\inst4|sorteio|unidade\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|u[5][4]~q\,
	combout => \inst4|_~8_combout\);

-- Location: LCCOMB_X31_Y16_N4
\inst4|_~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~60_combout\ = (\inst4|count|cnt\(2) & (\inst4|count|cnt\(1) & (\inst4|temp~q\ & !\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst4|temp~q\,
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~60_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst4|u[5][2]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~86_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|_~51_combout\) # (\inst4|_~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|u[5][2]~q\,
	datad => \inst4|_~60_combout\,
	combout => \inst4|u[5][2]~86_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst4|u[5][2]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~88_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|_~71_combout\) # ((\inst4|_~70_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~71_combout\,
	datab => \inst4|u[5][2]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[5][2]~88_combout\);

-- Location: LCCOMB_X29_Y14_N26
\inst4|u[5][2]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~87_combout\ = (\inst4|sorteio|unidade\(2) & ((\inst4|_~75_combout\) # ((\inst4|u[5][2]~q\ & \inst4|_~76_combout\)))) # (!\inst4|sorteio|unidade\(2) & (\inst4|u[5][2]~q\ & ((\inst4|_~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|u[5][2]~q\,
	datac => \inst4|_~75_combout\,
	datad => \inst4|_~76_combout\,
	combout => \inst4|u[5][2]~87_combout\);

-- Location: LCCOMB_X29_Y14_N18
\inst4|u[5][2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~85_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|_~49_combout\) # ((\inst4|_~5_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~49_combout\,
	datab => \inst4|u[5][2]~q\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|u[5][2]~85_combout\);

-- Location: LCCOMB_X29_Y14_N28
\inst4|u[5][2]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~89_combout\ = (\inst4|u[5][2]~86_combout\) # ((\inst4|u[5][2]~88_combout\) # ((\inst4|u[5][2]~87_combout\) # (\inst4|u[5][2]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~86_combout\,
	datab => \inst4|u[5][2]~88_combout\,
	datac => \inst4|u[5][2]~87_combout\,
	datad => \inst4|u[5][2]~85_combout\,
	combout => \inst4|u[5][2]~89_combout\);

-- Location: FF_X29_Y14_N29
\inst4|u[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[5][2]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][2]~q\);

-- Location: LCCOMB_X29_Y17_N22
\inst4|u[5][1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~53_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~70_combout\) # ((\inst4|_~71_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~70_combout\,
	datab => \inst4|u[5][1]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[5][1]~53_combout\);

-- Location: LCCOMB_X29_Y16_N8
\inst4|_~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~47_combout\ = (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(3) & (!\inst4|count|cnt\(2) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|temp~q\,
	combout => \inst4|_~47_combout\);

-- Location: LCCOMB_X29_Y17_N16
\inst4|u[5][1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~50_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~47_combout\) # (\inst4|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~47_combout\,
	datab => \inst4|u[5][1]~q\,
	datad => \inst4|_~5_combout\,
	combout => \inst4|u[5][1]~50_combout\);

-- Location: LCCOMB_X29_Y17_N8
\inst4|u[5][1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~52_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~76_combout\) # ((\inst4|sorteio|unidade\(1) & \inst4|_~75_combout\)))) # (!\inst4|u[5][1]~q\ & (((\inst4|sorteio|unidade\(1) & \inst4|_~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~q\,
	datab => \inst4|_~76_combout\,
	datac => \inst4|sorteio|unidade\(1),
	datad => \inst4|_~75_combout\,
	combout => \inst4|u[5][1]~52_combout\);

-- Location: LCCOMB_X29_Y17_N10
\inst4|u[5][1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~51_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~64_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~q\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[5][1]~51_combout\);

-- Location: LCCOMB_X29_Y17_N28
\inst4|u[5][1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~54_combout\ = (\inst4|u[5][1]~53_combout\) # ((\inst4|u[5][1]~50_combout\) # ((\inst4|u[5][1]~52_combout\) # (\inst4|u[5][1]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~53_combout\,
	datab => \inst4|u[5][1]~50_combout\,
	datac => \inst4|u[5][1]~52_combout\,
	datad => \inst4|u[5][1]~51_combout\,
	combout => \inst4|u[5][1]~54_combout\);

-- Location: FF_X29_Y17_N29
\inst4|u[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[5][1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][1]~q\);

-- Location: LCCOMB_X29_Y14_N16
\inst4|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~9_combout\ = (\inst4|sorteio|unidade\(1) & (\inst4|u[5][1]~q\ & (\inst4|u[5][2]~q\ $ (!\inst4|sorteio|unidade\(2))))) # (!\inst4|sorteio|unidade\(1) & (!\inst4|u[5][1]~q\ & (\inst4|u[5][2]~q\ $ (!\inst4|sorteio|unidade\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|u[5][2]~q\,
	datac => \inst4|u[5][1]~q\,
	datad => \inst4|sorteio|unidade\(2),
	combout => \inst4|_~9_combout\);

-- Location: LCCOMB_X28_Y17_N12
\inst4|d[5][1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~26_combout\ = (\inst4|sorteio|dezena\(1) & ((\inst4|_~75_combout\) # ((\inst4|d[5][1]~q\ & \inst4|_~76_combout\)))) # (!\inst4|sorteio|dezena\(1) & (\inst4|d[5][1]~q\ & (\inst4|_~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|d[5][1]~q\,
	datac => \inst4|_~76_combout\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|d[5][1]~26_combout\);

-- Location: LCCOMB_X28_Y17_N2
\inst4|d[5][1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~25_combout\ = (\inst4|d[5][1]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[5][1]~25_combout\);

-- Location: LCCOMB_X28_Y17_N22
\inst4|d[5][1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~27_combout\ = (\inst4|d[5][1]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[5][1]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[5][1]~27_combout\);

-- Location: LCCOMB_X28_Y17_N24
\inst4|d[5][1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~24_combout\ = (\inst4|d[5][1]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|d[5][1]~24_combout\);

-- Location: LCCOMB_X28_Y17_N4
\inst4|d[5][1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~28_combout\ = (\inst4|d[5][1]~26_combout\) # ((\inst4|d[5][1]~25_combout\) # ((\inst4|d[5][1]~27_combout\) # (\inst4|d[5][1]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~26_combout\,
	datab => \inst4|d[5][1]~25_combout\,
	datac => \inst4|d[5][1]~27_combout\,
	datad => \inst4|d[5][1]~24_combout\,
	combout => \inst4|d[5][1]~28_combout\);

-- Location: FF_X28_Y17_N5
\inst4|d[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[5][1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][1]~q\);

-- Location: LCCOMB_X31_Y16_N30
\inst4|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~7_combout\ = (\inst4|d[5][1]~q\ & (\inst4|sorteio|dezena\(1) & (\inst4|d[5][2]~q\ $ (!\inst4|sorteio|dezena\(2))))) # (!\inst4|d[5][1]~q\ & (!\inst4|sorteio|dezena\(1) & (\inst4|d[5][2]~q\ $ (!\inst4|sorteio|dezena\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|sorteio|dezena\(1),
	datad => \inst4|sorteio|dezena\(2),
	combout => \inst4|_~7_combout\);

-- Location: LCCOMB_X30_Y17_N30
\inst4|d[5][4]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~119_combout\ = (\inst4|d[5][4]~q\ & ((\inst4|_~60_combout\) # (\inst4|_~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|_~60_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[5][4]~119_combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst4|d[5][4]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~120_combout\ = (\inst4|sorteio|dezena\(4) & ((\inst4|_~75_combout\) # ((\inst4|_~76_combout\ & \inst4|d[5][4]~q\)))) # (!\inst4|sorteio|dezena\(4) & (\inst4|_~76_combout\ & (\inst4|d[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(4),
	datab => \inst4|_~76_combout\,
	datac => \inst4|d[5][4]~q\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|d[5][4]~120_combout\);

-- Location: LCCOMB_X30_Y17_N22
\inst4|d[5][4]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~121_combout\ = (\inst4|d[5][4]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[5][4]~121_combout\);

-- Location: LCCOMB_X30_Y17_N20
\inst4|d[5][4]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~118_combout\ = (\inst4|d[5][4]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|d[5][4]~q\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|d[5][4]~118_combout\);

-- Location: LCCOMB_X30_Y17_N6
\inst4|d[5][4]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~122_combout\ = (\inst4|d[5][4]~119_combout\) # ((\inst4|d[5][4]~120_combout\) # ((\inst4|d[5][4]~121_combout\) # (\inst4|d[5][4]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~119_combout\,
	datab => \inst4|d[5][4]~120_combout\,
	datac => \inst4|d[5][4]~121_combout\,
	datad => \inst4|d[5][4]~118_combout\,
	combout => \inst4|d[5][4]~122_combout\);

-- Location: FF_X30_Y17_N7
\inst4|d[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[5][4]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][4]~q\);

-- Location: LCCOMB_X29_Y16_N14
\inst4|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~6_combout\ = (\inst4|d[5][3]~q\ & (\inst4|sorteio|dezena\(3) & (\inst4|d[5][4]~q\ $ (!\inst4|sorteio|dezena\(4))))) # (!\inst4|d[5][3]~q\ & (!\inst4|sorteio|dezena\(3) & (\inst4|d[5][4]~q\ $ (!\inst4|sorteio|dezena\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~q\,
	datab => \inst4|d[5][4]~q\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|sorteio|dezena\(4),
	combout => \inst4|_~6_combout\);

-- Location: LCCOMB_X30_Y16_N16
\inst4|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~10_combout\ = (\inst4|_~8_combout\ & (!\inst4|_~9_combout\ & ((!\inst4|_~6_combout\) # (!\inst4|_~7_combout\)))) # (!\inst4|_~8_combout\ & (((!\inst4|_~6_combout\) # (!\inst4|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~8_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~7_combout\,
	datad => \inst4|_~6_combout\,
	combout => \inst4|_~10_combout\);

-- Location: LCCOMB_X30_Y16_N26
\inst4|_~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~41_combout\ = (!\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & (!\inst4|count|cnt\(1) & \inst4|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|_~10_combout\,
	combout => \inst4|_~41_combout\);

-- Location: LCCOMB_X26_Y16_N26
\inst4|d[3][3]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~76_combout\ = (\inst4|d[3][3]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[3][3]~76_combout\);

-- Location: LCCOMB_X26_Y16_N4
\inst4|d[3][3]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~75_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[3][3]~75_combout\);

-- Location: LCCOMB_X28_Y17_N6
\inst4|d[4][1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~30_combout\ = (\inst4|sorteio|dezena\(1) & ((\inst4|_~64_combout\) # ((\inst4|d[4][1]~q\ & \inst4|_~51_combout\)))) # (!\inst4|sorteio|dezena\(1) & (\inst4|d[4][1]~q\ & (\inst4|_~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[4][1]~30_combout\);

-- Location: LCCOMB_X28_Y17_N0
\inst4|d[4][1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~32_combout\ = (\inst4|d[4][1]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[4][1]~32_combout\);

-- Location: LCCOMB_X29_Y17_N20
\inst4|d[4][1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~31_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|_~76_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~q\,
	datab => \inst4|_~76_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|d[4][1]~31_combout\);

-- Location: LCCOMB_X28_Y17_N16
\inst4|d[4][1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~29_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|d[4][1]~29_combout\);

-- Location: LCCOMB_X28_Y17_N14
\inst4|d[4][1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~33_combout\ = (\inst4|d[4][1]~30_combout\) # ((\inst4|d[4][1]~32_combout\) # ((\inst4|d[4][1]~31_combout\) # (\inst4|d[4][1]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~30_combout\,
	datab => \inst4|d[4][1]~32_combout\,
	datac => \inst4|d[4][1]~31_combout\,
	datad => \inst4|d[4][1]~29_combout\,
	combout => \inst4|d[4][1]~33_combout\);

-- Location: FF_X28_Y17_N15
\inst4|d[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[4][1]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][1]~q\);

-- Location: LCCOMB_X29_Y19_N22
\inst4|d[4][2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~48_combout\ = (\inst4|sorteio|dezena\(2) & ((\inst4|_~64_combout\) # ((\inst4|d[4][2]~q\ & \inst4|_~51_combout\)))) # (!\inst4|sorteio|dezena\(2) & (\inst4|d[4][2]~q\ & ((\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(2),
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[4][2]~48_combout\);

-- Location: LCCOMB_X29_Y19_N18
\inst4|d[4][2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~50_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|_~70_combout\) # ((\inst4|_~71_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[4][2]~50_combout\);

-- Location: LCCOMB_X29_Y19_N8
\inst4|d[4][2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~47_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|_~47_combout\) # (\inst4|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|_~47_combout\,
	datad => \inst4|_~5_combout\,
	combout => \inst4|d[4][2]~47_combout\);

-- Location: LCCOMB_X29_Y19_N20
\inst4|d[4][2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~49_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|_~65_combout\) # ((\inst4|_~76_combout\) # (\inst4|_~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~q\,
	datab => \inst4|_~65_combout\,
	datac => \inst4|_~76_combout\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|d[4][2]~49_combout\);

-- Location: LCCOMB_X29_Y19_N2
\inst4|d[4][2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~51_combout\ = (\inst4|d[4][2]~48_combout\) # ((\inst4|d[4][2]~50_combout\) # ((\inst4|d[4][2]~47_combout\) # (\inst4|d[4][2]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~48_combout\,
	datab => \inst4|d[4][2]~50_combout\,
	datac => \inst4|d[4][2]~47_combout\,
	datad => \inst4|d[4][2]~49_combout\,
	combout => \inst4|d[4][2]~51_combout\);

-- Location: FF_X29_Y19_N3
\inst4|d[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[4][2]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][2]~q\);

-- Location: LCCOMB_X29_Y16_N12
\inst4|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~22_combout\ = (\inst4|d[4][1]~q\ & (\inst4|sorteio|dezena\(1) & (\inst4|d[4][2]~q\ $ (!\inst4|sorteio|dezena\(2))))) # (!\inst4|d[4][1]~q\ & (!\inst4|sorteio|dezena\(1) & (\inst4|d[4][2]~q\ $ (!\inst4|sorteio|dezena\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~q\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|_~22_combout\);

-- Location: LCCOMB_X31_Y16_N10
\inst4|_~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~59_combout\ = (\inst4|_~40_combout\ & \inst4|_~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~40_combout\,
	datad => \inst4|_~31_combout\,
	combout => \inst4|_~59_combout\);

-- Location: LCCOMB_X31_Y16_N12
\inst4|u[4][3]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~116_combout\ = (\inst4|_~59_combout\ & (\inst4|sorteio|unidade\(3) & (\inst4|_~63_combout\ & \inst4|_~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|_~63_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[4][3]~116_combout\);

-- Location: LCCOMB_X31_Y16_N26
\inst4|u[4][3]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~117_combout\ = (\inst4|u[4][3]~116_combout\ & ((\inst4|_~60_combout\) # ((\inst4|u[4][3]~q\ & \inst4|_~51_combout\)))) # (!\inst4|u[4][3]~116_combout\ & (\inst4|u[4][3]~q\ & (\inst4|_~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~116_combout\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~60_combout\,
	combout => \inst4|u[4][3]~117_combout\);

-- Location: LCCOMB_X31_Y16_N24
\inst4|u[4][3]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~119_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|_~70_combout\) # ((\inst4|_~71_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~70_combout\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|u[4][3]~119_combout\);

-- Location: LCCOMB_X30_Y17_N14
\inst4|u[4][3]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~118_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|_~75_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~q\,
	datab => \inst4|_~75_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~76_combout\,
	combout => \inst4|u[4][3]~118_combout\);

-- Location: LCCOMB_X31_Y16_N2
\inst4|u[4][3]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~115_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[4][3]~115_combout\);

-- Location: LCCOMB_X31_Y16_N16
\inst4|u[4][3]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~120_combout\ = (\inst4|u[4][3]~117_combout\) # ((\inst4|u[4][3]~119_combout\) # ((\inst4|u[4][3]~118_combout\) # (\inst4|u[4][3]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~117_combout\,
	datab => \inst4|u[4][3]~119_combout\,
	datac => \inst4|u[4][3]~118_combout\,
	datad => \inst4|u[4][3]~115_combout\,
	combout => \inst4|u[4][3]~120_combout\);

-- Location: FF_X31_Y16_N17
\inst4|u[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[4][3]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][3]~q\);

-- Location: LCCOMB_X28_Y16_N4
\inst4|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~23_combout\ = (\inst4|sorteio|unidade\(3) & (\inst4|u[4][3]~q\ & (\inst4|u[4][4]~q\ $ (!\inst4|sorteio|unidade\(4))))) # (!\inst4|sorteio|unidade\(3) & (!\inst4|u[4][3]~q\ & (\inst4|u[4][4]~q\ $ (!\inst4|sorteio|unidade\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|u[4][4]~q\,
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|_~23_combout\);

-- Location: LCCOMB_X31_Y17_N26
\inst4|u[4][2]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~77_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|_~75_combout\) # ((\inst4|_~76_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst4|_~75_combout\,
	datac => \inst4|_~76_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[4][2]~77_combout\);

-- Location: LCCOMB_X31_Y17_N2
\inst4|u[4][2]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~75_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|_~47_combout\) # (\inst4|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datac => \inst4|_~47_combout\,
	datad => \inst4|_~5_combout\,
	combout => \inst4|u[4][2]~75_combout\);

-- Location: LCCOMB_X31_Y17_N8
\inst4|u[4][2]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~76_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|_~51_combout\) # ((\inst4|sorteio|unidade\(2) & \inst4|_~64_combout\)))) # (!\inst4|u[4][2]~q\ & (\inst4|sorteio|unidade\(2) & (\inst4|_~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[4][2]~76_combout\);

-- Location: LCCOMB_X31_Y17_N20
\inst4|u[4][2]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~78_combout\ = (\inst4|u[4][2]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[4][2]~78_combout\);

-- Location: LCCOMB_X31_Y17_N22
\inst4|u[4][2]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~79_combout\ = (\inst4|u[4][2]~77_combout\) # ((\inst4|u[4][2]~75_combout\) # ((\inst4|u[4][2]~76_combout\) # (\inst4|u[4][2]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~77_combout\,
	datab => \inst4|u[4][2]~75_combout\,
	datac => \inst4|u[4][2]~76_combout\,
	datad => \inst4|u[4][2]~78_combout\,
	combout => \inst4|u[4][2]~79_combout\);

-- Location: FF_X31_Y17_N23
\inst4|u[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[4][2]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][2]~q\);

-- Location: LCCOMB_X31_Y17_N12
\inst4|u[4][1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~55_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|_~46_combout\) # ((\inst4|_~5_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|u[4][1]~q\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[4][1]~55_combout\);

-- Location: LCCOMB_X31_Y17_N24
\inst4|u[4][1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~57_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|_~76_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~76_combout\,
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|u[4][1]~57_combout\);

-- Location: LCCOMB_X31_Y17_N18
\inst4|u[4][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~56_combout\ = (\inst4|sorteio|unidade\(1) & ((\inst4|_~64_combout\) # ((\inst4|u[4][1]~q\ & \inst4|_~51_combout\)))) # (!\inst4|sorteio|unidade\(1) & (\inst4|u[4][1]~q\ & ((\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[4][1]~56_combout\);

-- Location: LCCOMB_X31_Y14_N16
\inst4|u[4][1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~58_combout\ = (\inst4|u[4][1]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[4][1]~58_combout\);

-- Location: LCCOMB_X31_Y17_N0
\inst4|u[4][1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~59_combout\ = (\inst4|u[4][1]~55_combout\) # ((\inst4|u[4][1]~57_combout\) # ((\inst4|u[4][1]~56_combout\) # (\inst4|u[4][1]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~55_combout\,
	datab => \inst4|u[4][1]~57_combout\,
	datac => \inst4|u[4][1]~56_combout\,
	datad => \inst4|u[4][1]~58_combout\,
	combout => \inst4|u[4][1]~59_combout\);

-- Location: FF_X31_Y17_N1
\inst4|u[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[4][1]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][1]~q\);

-- Location: LCCOMB_X29_Y16_N10
\inst4|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~24_combout\ = (\inst4|u[4][2]~q\ & (\inst4|sorteio|unidade\(2) & (\inst4|u[4][1]~q\ $ (!\inst4|sorteio|unidade\(1))))) # (!\inst4|u[4][2]~q\ & (!\inst4|sorteio|unidade\(2) & (\inst4|u[4][1]~q\ $ (!\inst4|sorteio|unidade\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|u[4][1]~q\,
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|_~24_combout\);

-- Location: LCCOMB_X29_Y17_N6
\inst4|d[4][3]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~88_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~5_combout\) # (\inst4|_~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~q\,
	datab => \inst4|_~5_combout\,
	datad => \inst4|_~47_combout\,
	combout => \inst4|d[4][3]~88_combout\);

-- Location: LCCOMB_X29_Y17_N4
\inst4|d[4][3]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~89_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~51_combout\) # ((\inst4|sorteio|dezena\(3) & \inst4|_~64_combout\)))) # (!\inst4|d[4][3]~q\ & (\inst4|sorteio|dezena\(3) & ((\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~q\,
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[4][3]~89_combout\);

-- Location: LCCOMB_X31_Y16_N22
\inst4|d[4][3]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~123_combout\ = (((!\inst4|_~58_combout\) # (!\inst4|_~63_combout\)) # (!\inst4|_~31_combout\)) # (!\inst4|_~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~40_combout\,
	datab => \inst4|_~31_combout\,
	datac => \inst4|_~63_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[4][3]~123_combout\);

-- Location: LCCOMB_X31_Y16_N0
\inst4|d[4][3]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~90_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~57_combout\) # ((\inst4|d[4][3]~123_combout\ & \inst4|_~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|d[4][3]~123_combout\,
	datad => \inst4|_~60_combout\,
	combout => \inst4|d[4][3]~90_combout\);

-- Location: LCCOMB_X29_Y17_N18
\inst4|d[4][3]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~91_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~70_combout\) # ((\inst4|_~71_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~70_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|d[4][3]~q\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[4][3]~91_combout\);

-- Location: LCCOMB_X29_Y17_N30
\inst4|d[4][3]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~92_combout\ = (\inst4|d[4][3]~88_combout\) # ((\inst4|d[4][3]~89_combout\) # ((\inst4|d[4][3]~90_combout\) # (\inst4|d[4][3]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~88_combout\,
	datab => \inst4|d[4][3]~89_combout\,
	datac => \inst4|d[4][3]~90_combout\,
	datad => \inst4|d[4][3]~91_combout\,
	combout => \inst4|d[4][3]~92_combout\);

-- Location: FF_X29_Y17_N31
\inst4|d[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[4][3]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][3]~q\);

-- Location: LCCOMB_X31_Y17_N6
\inst4|d[4][4]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~111_combout\ = (\inst4|d[4][4]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[4][4]~111_combout\);

-- Location: LCCOMB_X31_Y17_N16
\inst4|d[4][4]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~110_combout\ = (\inst4|d[4][4]~q\ & ((\inst4|_~75_combout\) # ((\inst4|_~76_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datab => \inst4|_~75_combout\,
	datac => \inst4|_~76_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[4][4]~110_combout\);

-- Location: LCCOMB_X31_Y17_N14
\inst4|d[4][4]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~108_combout\ = (\inst4|d[4][4]~q\ & ((\inst4|_~46_combout\) # ((\inst4|_~5_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|d[4][4]~q\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|d[4][4]~108_combout\);

-- Location: LCCOMB_X31_Y14_N22
\inst4|d[4][4]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~109_combout\ = (\inst4|sorteio|dezena\(4) & ((\inst4|_~64_combout\) # ((\inst4|d[4][4]~q\ & \inst4|_~51_combout\)))) # (!\inst4|sorteio|dezena\(4) & (\inst4|d[4][4]~q\ & (\inst4|_~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(4),
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[4][4]~109_combout\);

-- Location: LCCOMB_X31_Y17_N28
\inst4|d[4][4]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~112_combout\ = (\inst4|d[4][4]~111_combout\) # ((\inst4|d[4][4]~110_combout\) # ((\inst4|d[4][4]~108_combout\) # (\inst4|d[4][4]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~111_combout\,
	datab => \inst4|d[4][4]~110_combout\,
	datac => \inst4|d[4][4]~108_combout\,
	datad => \inst4|d[4][4]~109_combout\,
	combout => \inst4|d[4][4]~112_combout\);

-- Location: FF_X31_Y17_N29
\inst4|d[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[4][4]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][4]~q\);

-- Location: LCCOMB_X29_Y16_N18
\inst4|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~21_combout\ = (\inst4|d[4][3]~q\ & (\inst4|sorteio|dezena\(3) & (\inst4|d[4][4]~q\ $ (!\inst4|sorteio|dezena\(4))))) # (!\inst4|d[4][3]~q\ & (!\inst4|sorteio|dezena\(3) & (\inst4|d[4][4]~q\ $ (!\inst4|sorteio|dezena\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~q\,
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|sorteio|dezena\(4),
	combout => \inst4|_~21_combout\);

-- Location: LCCOMB_X29_Y16_N4
\inst4|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~25_combout\ = (\inst4|_~22_combout\ & (!\inst4|_~21_combout\ & ((!\inst4|_~24_combout\) # (!\inst4|_~23_combout\)))) # (!\inst4|_~22_combout\ & (((!\inst4|_~24_combout\)) # (!\inst4|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~22_combout\,
	datab => \inst4|_~23_combout\,
	datac => \inst4|_~24_combout\,
	datad => \inst4|_~21_combout\,
	combout => \inst4|_~25_combout\);

-- Location: LCCOMB_X29_Y19_N6
\inst4|d[6][2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~41_combout\ = (!\inst4|_~47_combout\ & (\inst4|temp~q\ & (!\inst4|_~71_combout\ & !\inst4|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~47_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~5_combout\,
	combout => \inst4|d[6][2]~41_combout\);

-- Location: LCCOMB_X29_Y19_N0
\inst4|d[6][2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~40_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~70_combout\ & \inst4|sorteio|dezena\(2))))) # (!\inst4|d[6][2]~q\ & (((\inst4|_~70_combout\ & \inst4|sorteio|dezena\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|sorteio|dezena\(2),
	combout => \inst4|d[6][2]~40_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst4|d[6][2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~39_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|d[6][2]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[6][2]~39_combout\);

-- Location: LCCOMB_X29_Y19_N4
\inst4|d[6][2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~42_combout\ = (\inst4|d[6][2]~40_combout\) # ((\inst4|d[6][2]~39_combout\) # ((!\inst4|d[6][2]~41_combout\ & \inst4|d[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~41_combout\,
	datab => \inst4|d[6][2]~40_combout\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst4|d[6][2]~39_combout\,
	combout => \inst4|d[6][2]~42_combout\);

-- Location: FF_X29_Y19_N5
\inst4|d[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[6][2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][2]~q\);

-- Location: LCCOMB_X32_Y16_N22
\inst4|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~12_combout\ = (\inst4|d[6][2]~q\ & (\inst4|sorteio|dezena\(2) & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[6][1]~q\)))) # (!\inst4|d[6][2]~q\ & (!\inst4|sorteio|dezena\(2) & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|sorteio|dezena\(1),
	datad => \inst4|d[6][1]~q\,
	combout => \inst4|_~12_combout\);

-- Location: LCCOMB_X29_Y15_N6
\inst4|d[6][4]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~99_combout\ = (\inst4|_~64_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|d[6][4]~99_combout\);

-- Location: LCCOMB_X29_Y15_N28
\inst4|d[6][4]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~98_combout\ = (\inst4|temp~q\ & (\inst4|sorteio|dezena\(4) & ((\inst4|_~70_combout\)))) # (!\inst4|temp~q\ & ((\inst4|d[6][4]~q\) # ((\inst4|sorteio|dezena\(4) & \inst4|_~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|d[6][4]~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[6][4]~98_combout\);

-- Location: LCCOMB_X29_Y15_N24
\inst4|d[6][4]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~100_combout\ = (\inst4|_~5_combout\) # ((\inst4|_~57_combout\) # (\inst4|_~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datac => \inst4|_~57_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[6][4]~100_combout\);

-- Location: LCCOMB_X29_Y15_N18
\inst4|d[6][4]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~101_combout\ = (\inst4|_~71_combout\) # ((\inst4|d[6][4]~100_combout\) # (\inst4|_~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~71_combout\,
	datab => \inst4|d[6][4]~100_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[6][4]~101_combout\);

-- Location: LCCOMB_X29_Y15_N30
\inst4|d[6][4]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~102_combout\ = (\inst4|d[6][4]~98_combout\) # ((\inst4|d[6][4]~q\ & ((\inst4|d[6][4]~99_combout\) # (\inst4|d[6][4]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][4]~99_combout\,
	datab => \inst4|d[6][4]~98_combout\,
	datac => \inst4|d[6][4]~q\,
	datad => \inst4|d[6][4]~101_combout\,
	combout => \inst4|d[6][4]~102_combout\);

-- Location: FF_X29_Y15_N31
\inst4|d[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[6][4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][4]~q\);

-- Location: LCCOMB_X29_Y15_N10
\inst4|d[6][3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~65_combout\ = (\inst4|_~71_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~71_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|d[6][3]~65_combout\);

-- Location: LCCOMB_X29_Y15_N4
\inst4|d[6][3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~62_combout\ = (\inst4|d[6][3]~q\ & (((\inst4|sorteio|dezena\(3) & \inst4|_~70_combout\)) # (!\inst4|temp~q\))) # (!\inst4|d[6][3]~q\ & (((\inst4|sorteio|dezena\(3) & \inst4|_~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[6][3]~62_combout\);

-- Location: LCCOMB_X29_Y15_N2
\inst4|d[6][3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~63_combout\ = (\inst4|_~5_combout\) # ((\inst4|_~57_combout\) # (\inst4|_~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datac => \inst4|_~57_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[6][3]~63_combout\);

-- Location: LCCOMB_X29_Y15_N20
\inst4|d[6][3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~64_combout\ = (\inst4|d[6][3]~63_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[6][3]~63_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[6][3]~64_combout\);

-- Location: LCCOMB_X29_Y15_N16
\inst4|d[6][3]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~66_combout\ = (\inst4|d[6][3]~62_combout\) # ((\inst4|d[6][3]~q\ & ((\inst4|d[6][3]~65_combout\) # (\inst4|d[6][3]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~65_combout\,
	datab => \inst4|d[6][3]~62_combout\,
	datac => \inst4|d[6][3]~q\,
	datad => \inst4|d[6][3]~64_combout\,
	combout => \inst4|d[6][3]~66_combout\);

-- Location: FF_X29_Y15_N17
\inst4|d[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[6][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][3]~q\);

-- Location: LCCOMB_X32_Y16_N20
\inst4|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~11_combout\ = (\inst4|d[6][4]~q\ & (\inst4|sorteio|dezena\(4) & (\inst4|sorteio|dezena\(3) $ (!\inst4|d[6][3]~q\)))) # (!\inst4|d[6][4]~q\ & (!\inst4|sorteio|dezena\(4) & (\inst4|sorteio|dezena\(3) $ (!\inst4|d[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][4]~q\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|d[6][3]~q\,
	combout => \inst4|_~11_combout\);

-- Location: LCCOMB_X31_Y15_N24
\inst4|u[6][4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~5_combout\ = (\inst4|temp~q\ & (\inst4|sorteio|unidade\(4) & (\inst4|_~1_combout\ & \inst4|_~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|_~1_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[6][4]~5_combout\);

-- Location: LCCOMB_X31_Y15_N12
\inst4|u[6][4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~7_combout\ = (\inst4|_~57_combout\) # ((\inst4|_~5_combout\) # (\inst4|_~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~47_combout\,
	combout => \inst4|u[6][4]~7_combout\);

-- Location: LCCOMB_X31_Y15_N14
\inst4|u[6][4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~8_combout\ = (\inst4|u[6][4]~q\ & (((\inst4|_~71_combout\) # (\inst4|u[6][4]~7_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|u[6][4]~7_combout\,
	combout => \inst4|u[6][4]~8_combout\);

-- Location: LCCOMB_X31_Y15_N10
\inst4|u[6][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~6_combout\ = (\inst4|u[6][4]~q\ & ((\inst4|_~64_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[6][4]~6_combout\);

-- Location: LCCOMB_X31_Y15_N0
\inst4|u[6][4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~9_combout\ = (\inst4|u[6][4]~8_combout\) # ((\inst4|u[6][4]~6_combout\) # ((\inst4|_~66_combout\ & \inst4|u[6][4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~66_combout\,
	datab => \inst4|u[6][4]~5_combout\,
	datac => \inst4|u[6][4]~8_combout\,
	datad => \inst4|u[6][4]~6_combout\,
	combout => \inst4|u[6][4]~9_combout\);

-- Location: FF_X31_Y15_N1
\inst4|u[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[6][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][4]~q\);

-- Location: LCCOMB_X29_Y17_N12
\inst4|u[6][3]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~92_combout\ = (\inst4|u[6][3]~q\ & ((\inst4|_~57_combout\) # ((\inst4|sorteio|unidade\(3) & \inst4|_~70_combout\)))) # (!\inst4|u[6][3]~q\ & (((\inst4|sorteio|unidade\(3) & \inst4|_~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[6][3]~92_combout\);

-- Location: LCCOMB_X29_Y17_N14
\inst4|u[6][3]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~93_combout\ = (\inst4|u[6][3]~q\ & ((\inst4|_~71_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|temp~q\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[6][3]~93_combout\);

-- Location: LCCOMB_X29_Y17_N26
\inst4|u[6][3]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~91_combout\ = (\inst4|u[6][3]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[6][3]~91_combout\);

-- Location: LCCOMB_X29_Y17_N24
\inst4|u[6][3]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~90_combout\ = (\inst4|u[6][3]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[6][3]~90_combout\);

-- Location: LCCOMB_X29_Y17_N2
\inst4|u[6][3]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~94_combout\ = (\inst4|u[6][3]~92_combout\) # ((\inst4|u[6][3]~93_combout\) # ((\inst4|u[6][3]~91_combout\) # (\inst4|u[6][3]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~92_combout\,
	datab => \inst4|u[6][3]~93_combout\,
	datac => \inst4|u[6][3]~91_combout\,
	datad => \inst4|u[6][3]~90_combout\,
	combout => \inst4|u[6][3]~94_combout\);

-- Location: FF_X29_Y17_N3
\inst4|u[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[6][3]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][3]~q\);

-- Location: LCCOMB_X32_Y16_N0
\inst4|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~13_combout\ = (\inst4|sorteio|unidade\(3) & (\inst4|u[6][3]~q\ & (\inst4|u[6][4]~q\ $ (!\inst4|sorteio|unidade\(4))))) # (!\inst4|sorteio|unidade\(3) & (!\inst4|u[6][3]~q\ & (\inst4|u[6][4]~q\ $ (!\inst4|sorteio|unidade\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|_~13_combout\);

-- Location: LCCOMB_X31_Y15_N6
\inst4|u[6][2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~68_combout\ = (\inst4|u[6][2]~q\ & ((\inst4|_~71_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[6][2]~q\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[6][2]~68_combout\);

-- Location: LCCOMB_X31_Y15_N4
\inst4|u[6][2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~67_combout\ = (\inst4|sorteio|unidade\(2) & ((\inst4|_~70_combout\) # ((\inst4|u[6][2]~q\ & \inst4|_~57_combout\)))) # (!\inst4|sorteio|unidade\(2) & (\inst4|u[6][2]~q\ & ((\inst4|_~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|u[6][2]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~57_combout\,
	combout => \inst4|u[6][2]~67_combout\);

-- Location: LCCOMB_X31_Y15_N26
\inst4|u[6][2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~66_combout\ = (\inst4|u[6][2]~q\ & ((\inst4|_~64_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datab => \inst4|u[6][2]~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[6][2]~66_combout\);

-- Location: LCCOMB_X31_Y15_N20
\inst4|u[6][2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~65_combout\ = (\inst4|u[6][2]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|_~46_combout\,
	datac => \inst4|u[6][2]~q\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[6][2]~65_combout\);

-- Location: LCCOMB_X31_Y15_N16
\inst4|u[6][2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~69_combout\ = (\inst4|u[6][2]~68_combout\) # ((\inst4|u[6][2]~67_combout\) # ((\inst4|u[6][2]~66_combout\) # (\inst4|u[6][2]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~68_combout\,
	datab => \inst4|u[6][2]~67_combout\,
	datac => \inst4|u[6][2]~66_combout\,
	datad => \inst4|u[6][2]~65_combout\,
	combout => \inst4|u[6][2]~69_combout\);

-- Location: FF_X31_Y15_N17
\inst4|u[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[6][2]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][2]~q\);

-- Location: LCCOMB_X31_Y15_N30
\inst4|u[6][1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~31_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~64_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datab => \inst4|u[6][1]~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[6][1]~31_combout\);

-- Location: LCCOMB_X31_Y15_N18
\inst4|u[6][1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~33_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~71_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[6][1]~q\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[6][1]~33_combout\);

-- Location: LCCOMB_X31_Y15_N8
\inst4|u[6][1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~32_combout\ = (\inst4|sorteio|unidade\(1) & ((\inst4|_~70_combout\) # ((\inst4|u[6][1]~q\ & \inst4|_~57_combout\)))) # (!\inst4|sorteio|unidade\(1) & (\inst4|u[6][1]~q\ & ((\inst4|_~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|u[6][1]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~57_combout\,
	combout => \inst4|u[6][1]~32_combout\);

-- Location: LCCOMB_X31_Y15_N28
\inst4|u[6][1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~30_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|_~46_combout\,
	datac => \inst4|u[6][1]~q\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[6][1]~30_combout\);

-- Location: LCCOMB_X31_Y15_N2
\inst4|u[6][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~34_combout\ = (\inst4|u[6][1]~31_combout\) # ((\inst4|u[6][1]~33_combout\) # ((\inst4|u[6][1]~32_combout\) # (\inst4|u[6][1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~31_combout\,
	datab => \inst4|u[6][1]~33_combout\,
	datac => \inst4|u[6][1]~32_combout\,
	datad => \inst4|u[6][1]~30_combout\,
	combout => \inst4|u[6][1]~34_combout\);

-- Location: FF_X31_Y15_N3
\inst4|u[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[6][1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][1]~q\);

-- Location: LCCOMB_X32_Y16_N6
\inst4|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~14_combout\ = (\inst4|u[6][2]~q\ & (\inst4|sorteio|unidade\(2) & (\inst4|u[6][1]~q\ $ (!\inst4|sorteio|unidade\(1))))) # (!\inst4|u[6][2]~q\ & (!\inst4|sorteio|unidade\(2) & (\inst4|u[6][1]~q\ $ (!\inst4|sorteio|unidade\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~q\,
	datab => \inst4|u[6][1]~q\,
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|_~14_combout\);

-- Location: LCCOMB_X32_Y16_N4
\inst4|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~15_combout\ = (\inst4|_~12_combout\ & (!\inst4|_~11_combout\ & ((!\inst4|_~14_combout\) # (!\inst4|_~13_combout\)))) # (!\inst4|_~12_combout\ & (((!\inst4|_~14_combout\) # (!\inst4|_~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~12_combout\,
	datab => \inst4|_~11_combout\,
	datac => \inst4|_~13_combout\,
	datad => \inst4|_~14_combout\,
	combout => \inst4|_~15_combout\);

-- Location: LCCOMB_X29_Y16_N6
\inst4|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~26_combout\ = (\inst4|_~20_combout\ & (\inst4|_~25_combout\ & (\inst4|_~15_combout\ & \inst4|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~20_combout\,
	datab => \inst4|_~25_combout\,
	datac => \inst4|_~15_combout\,
	datad => \inst4|_~10_combout\,
	combout => \inst4|_~26_combout\);

-- Location: LCCOMB_X29_Y16_N26
\inst4|_~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~56_combout\ = (\inst4|_~51_combout\ & ((!\inst4|_~26_combout\) # (!\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~54_combout\,
	datad => \inst4|_~26_combout\,
	combout => \inst4|_~56_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst4|d[3][3]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~74_combout\ = (\inst4|sorteio|dezena\(3) & ((\inst4|_~55_combout\) # ((\inst4|d[3][3]~q\ & \inst4|_~56_combout\)))) # (!\inst4|sorteio|dezena\(3) & (\inst4|d[3][3]~q\ & (\inst4|_~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|d[3][3]~q\,
	datac => \inst4|_~56_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|d[3][3]~74_combout\);

-- Location: LCCOMB_X31_Y16_N14
\inst4|d[3][3]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~72_combout\ = (!\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|temp~q\,
	combout => \inst4|d[3][3]~72_combout\);

-- Location: LCCOMB_X26_Y16_N0
\inst4|d[3][3]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~73_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~49_combout\) # ((\inst4|_~46_combout\) # (\inst4|d[3][3]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|d[3][3]~72_combout\,
	combout => \inst4|d[3][3]~73_combout\);

-- Location: LCCOMB_X26_Y16_N24
\inst4|d[3][3]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~77_combout\ = (\inst4|d[3][3]~76_combout\) # ((\inst4|d[3][3]~75_combout\) # ((\inst4|d[3][3]~74_combout\) # (\inst4|d[3][3]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~76_combout\,
	datab => \inst4|d[3][3]~75_combout\,
	datac => \inst4|d[3][3]~74_combout\,
	datad => \inst4|d[3][3]~73_combout\,
	combout => \inst4|d[3][3]~77_combout\);

-- Location: FF_X26_Y16_N25
\inst4|d[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[3][3]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][3]~q\);

-- Location: LCCOMB_X28_Y19_N16
\inst4|d[3][1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~14_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|_~5_combout\) # (\inst4|_~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~q\,
	datab => \inst4|_~5_combout\,
	datad => \inst4|_~47_combout\,
	combout => \inst4|d[3][1]~14_combout\);

-- Location: LCCOMB_X29_Y19_N28
\inst4|d[3][1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~17_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|_~70_combout\) # ((\inst4|_~71_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[3][1]~17_combout\);

-- Location: LCCOMB_X29_Y19_N14
\inst4|d[3][1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~15_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|_~56_combout\) # ((\inst4|sorteio|dezena\(1) & \inst4|_~55_combout\)))) # (!\inst4|d[3][1]~q\ & (\inst4|sorteio|dezena\(1) & (\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~q\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|d[3][1]~15_combout\);

-- Location: LCCOMB_X30_Y19_N24
\inst4|d[3][1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~16_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|_~64_combout\) # ((\inst4|_~57_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datab => \inst4|d[3][1]~q\,
	datac => \inst4|_~57_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[3][1]~16_combout\);

-- Location: LCCOMB_X29_Y19_N30
\inst4|d[3][1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~18_combout\ = (\inst4|d[3][1]~14_combout\) # ((\inst4|d[3][1]~17_combout\) # ((\inst4|d[3][1]~15_combout\) # (\inst4|d[3][1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~14_combout\,
	datab => \inst4|d[3][1]~17_combout\,
	datac => \inst4|d[3][1]~15_combout\,
	datad => \inst4|d[3][1]~16_combout\,
	combout => \inst4|d[3][1]~18_combout\);

-- Location: FF_X29_Y19_N31
\inst4|d[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[3][1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][1]~q\);

-- Location: LCCOMB_X26_Y16_N18
\inst4|d[3][2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~43_combout\ = (\inst4|_~57_combout\) # ((\inst4|_~5_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[3][2]~43_combout\);

-- Location: LCCOMB_X26_Y16_N28
\inst4|d[3][2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~44_combout\ = ((\inst4|_~71_combout\) # ((\inst4|_~56_combout\) # (\inst4|d[3][2]~43_combout\))) # (!\inst4|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~71_combout\,
	datac => \inst4|_~56_combout\,
	datad => \inst4|d[3][2]~43_combout\,
	combout => \inst4|d[3][2]~44_combout\);

-- Location: LCCOMB_X26_Y16_N2
\inst4|d[3][2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~45_combout\ = (\inst4|_~65_combout\) # ((\inst4|_~46_combout\) # ((\inst4|_~49_combout\) # (\inst4|d[3][2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~65_combout\,
	datab => \inst4|_~46_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|d[3][2]~44_combout\,
	combout => \inst4|d[3][2]~45_combout\);

-- Location: LCCOMB_X26_Y16_N12
\inst4|d[3][2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~46_combout\ = (\inst4|_~55_combout\ & ((\inst4|sorteio|dezena\(2)) # ((\inst4|d[3][2]~q\ & \inst4|d[3][2]~45_combout\)))) # (!\inst4|_~55_combout\ & (((\inst4|d[3][2]~q\ & \inst4|d[3][2]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~55_combout\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|d[3][2]~q\,
	datad => \inst4|d[3][2]~45_combout\,
	combout => \inst4|d[3][2]~46_combout\);

-- Location: FF_X26_Y16_N13
\inst4|d[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[3][2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][2]~q\);

-- Location: LCCOMB_X28_Y16_N2
\inst4|_~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~52_combout\ = (!\inst4|d[3][4]~q\ & (!\inst4|d[3][3]~q\ & (!\inst4|d[3][1]~q\ & !\inst4|d[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|d[3][3]~q\,
	datac => \inst4|d[3][1]~q\,
	datad => \inst4|d[3][2]~q\,
	combout => \inst4|_~52_combout\);

-- Location: LCCOMB_X29_Y18_N20
\inst4|u[3][2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~70_combout\ = (\inst4|u[3][2]~q\ & ((\inst4|_~5_combout\) # (\inst4|_~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~q\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~47_combout\,
	combout => \inst4|u[3][2]~70_combout\);

-- Location: LCCOMB_X29_Y18_N18
\inst4|u[3][2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~73_combout\ = (\inst4|u[3][2]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[3][2]~73_combout\);

-- Location: LCCOMB_X29_Y18_N14
\inst4|u[3][2]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~71_combout\ = (\inst4|u[3][2]~q\ & ((\inst4|_~56_combout\) # ((\inst4|sorteio|unidade\(2) & \inst4|_~55_combout\)))) # (!\inst4|u[3][2]~q\ & (\inst4|sorteio|unidade\(2) & (\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~q\,
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|u[3][2]~71_combout\);

-- Location: LCCOMB_X29_Y18_N0
\inst4|u[3][2]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~72_combout\ = (\inst4|u[3][2]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[3][2]~72_combout\);

-- Location: LCCOMB_X29_Y18_N12
\inst4|u[3][2]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~74_combout\ = (\inst4|u[3][2]~70_combout\) # ((\inst4|u[3][2]~73_combout\) # ((\inst4|u[3][2]~71_combout\) # (\inst4|u[3][2]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~70_combout\,
	datab => \inst4|u[3][2]~73_combout\,
	datac => \inst4|u[3][2]~71_combout\,
	datad => \inst4|u[3][2]~72_combout\,
	combout => \inst4|u[3][2]~74_combout\);

-- Location: FF_X29_Y18_N13
\inst4|u[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[3][2]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][2]~q\);

-- Location: LCCOMB_X30_Y15_N10
\inst4|u[3][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~13_combout\ = (\inst4|u[3][4]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[3][4]~13_combout\);

-- Location: LCCOMB_X30_Y15_N8
\inst4|u[3][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~12_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[3][4]~12_combout\);

-- Location: LCCOMB_X30_Y15_N26
\inst4|u[3][4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~11_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|_~56_combout\) # ((\inst4|sorteio|unidade\(4) & \inst4|_~55_combout\)))) # (!\inst4|u[3][4]~q\ & (\inst4|sorteio|unidade\(4) & ((\inst4|_~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|_~56_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|u[3][4]~11_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst4|u[3][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~10_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|u[3][4]~10_combout\);

-- Location: LCCOMB_X30_Y15_N30
\inst4|u[3][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~14_combout\ = (\inst4|u[3][4]~13_combout\) # ((\inst4|u[3][4]~12_combout\) # ((\inst4|u[3][4]~11_combout\) # (\inst4|u[3][4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~13_combout\,
	datab => \inst4|u[3][4]~12_combout\,
	datac => \inst4|u[3][4]~11_combout\,
	datad => \inst4|u[3][4]~10_combout\,
	combout => \inst4|u[3][4]~14_combout\);

-- Location: FF_X30_Y15_N31
\inst4|u[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[3][4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][4]~q\);

-- Location: LCCOMB_X30_Y14_N12
\inst4|u[3][3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~101_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~56_combout\) # ((\inst4|sorteio|unidade\(3) & \inst4|_~55_combout\)))) # (!\inst4|u[3][3]~q\ & (\inst4|sorteio|unidade\(3) & ((\inst4|_~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|_~56_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|u[3][3]~101_combout\);

-- Location: LCCOMB_X30_Y14_N16
\inst4|u[3][3]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~103_combout\ = (\inst4|u[3][3]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[3][3]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[3][3]~103_combout\);

-- Location: LCCOMB_X30_Y14_N2
\inst4|u[3][3]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~102_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|u[3][3]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[3][3]~102_combout\);

-- Location: LCCOMB_X30_Y14_N18
\inst4|u[3][3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~100_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|u[3][3]~q\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[3][3]~100_combout\);

-- Location: LCCOMB_X30_Y14_N4
\inst4|u[3][3]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~104_combout\ = (\inst4|u[3][3]~101_combout\) # ((\inst4|u[3][3]~103_combout\) # ((\inst4|u[3][3]~102_combout\) # (\inst4|u[3][3]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~101_combout\,
	datab => \inst4|u[3][3]~103_combout\,
	datac => \inst4|u[3][3]~102_combout\,
	datad => \inst4|u[3][3]~100_combout\,
	combout => \inst4|u[3][3]~104_combout\);

-- Location: FF_X30_Y14_N5
\inst4|u[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[3][3]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][3]~q\);

-- Location: LCCOMB_X28_Y16_N22
\inst4|u[3][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~43_combout\ = (\inst4|u[3][1]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[3][1]~43_combout\);

-- Location: LCCOMB_X28_Y16_N20
\inst4|u[3][1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~42_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~64_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~57_combout\,
	combout => \inst4|u[3][1]~42_combout\);

-- Location: LCCOMB_X28_Y16_N14
\inst4|u[3][1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~41_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~56_combout\) # ((\inst4|_~55_combout\ & \inst4|sorteio|unidade\(1))))) # (!\inst4|u[3][1]~q\ & (((\inst4|_~55_combout\ & \inst4|sorteio|unidade\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|_~56_combout\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|u[3][1]~41_combout\);

-- Location: LCCOMB_X33_Y16_N10
\inst4|u[3][1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~40_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[3][1]~40_combout\);

-- Location: LCCOMB_X28_Y16_N26
\inst4|u[3][1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~44_combout\ = (\inst4|u[3][1]~43_combout\) # ((\inst4|u[3][1]~42_combout\) # ((\inst4|u[3][1]~41_combout\) # (\inst4|u[3][1]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~43_combout\,
	datab => \inst4|u[3][1]~42_combout\,
	datac => \inst4|u[3][1]~41_combout\,
	datad => \inst4|u[3][1]~40_combout\,
	combout => \inst4|u[3][1]~44_combout\);

-- Location: FF_X28_Y16_N27
\inst4|u[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[3][1]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][1]~q\);

-- Location: LCCOMB_X29_Y18_N28
\inst4|_~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~53_combout\ = (!\inst4|u[3][2]~q\ & (!\inst4|u[3][4]~q\ & (!\inst4|u[3][3]~q\ & !\inst4|u[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|u[3][1]~q\,
	combout => \inst4|_~53_combout\);

-- Location: LCCOMB_X29_Y16_N30
\inst4|_~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~54_combout\ = (\inst4|_~52_combout\ & (\inst4|_~53_combout\ & \inst4|_~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~52_combout\,
	datac => \inst4|_~53_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|_~54_combout\);

-- Location: LCCOMB_X29_Y16_N16
\inst4|_~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~55_combout\ = (\inst4|_~51_combout\ & (\inst4|_~54_combout\ & \inst4|_~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~54_combout\,
	datad => \inst4|_~26_combout\,
	combout => \inst4|_~55_combout\);

-- Location: LCCOMB_X29_Y18_N30
\inst4|u[1][2]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~81_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|u[1][2]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|u[1][2]~81_combout\);

-- Location: LCCOMB_X29_Y18_N24
\inst4|u[1][2]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~83_combout\ = (\inst4|u[1][2]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~71_combout\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst4|u[1][2]~83_combout\);

-- Location: LCCOMB_X29_Y18_N8
\inst4|u[1][2]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~80_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~49_combout\) # ((\inst4|sorteio|unidade\(2) & \inst4|_~46_combout\)))) # (!\inst4|u[1][2]~q\ & (\inst4|sorteio|unidade\(2) & (\inst4|_~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[1][2]~80_combout\);

-- Location: LCCOMB_X30_Y18_N18
\inst4|u[1][2]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~82_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|u[1][2]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[1][2]~82_combout\);

-- Location: LCCOMB_X29_Y18_N6
\inst4|u[1][2]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~84_combout\ = (\inst4|u[1][2]~81_combout\) # ((\inst4|u[1][2]~83_combout\) # ((\inst4|u[1][2]~80_combout\) # (\inst4|u[1][2]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~81_combout\,
	datab => \inst4|u[1][2]~83_combout\,
	datac => \inst4|u[1][2]~80_combout\,
	datad => \inst4|u[1][2]~82_combout\,
	combout => \inst4|u[1][2]~84_combout\);

-- Location: FF_X29_Y18_N7
\inst4|u[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[1][2]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][2]~q\);

-- Location: LCCOMB_X31_Y18_N6
\inst4|u[1][3]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~107_combout\ = (\inst4|u[1][3]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[1][3]~107_combout\);

-- Location: LCCOMB_X31_Y18_N0
\inst4|u[1][3]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~108_combout\ = (\inst4|u[1][3]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[1][3]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[1][3]~108_combout\);

-- Location: LCCOMB_X31_Y18_N8
\inst4|u[1][3]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~105_combout\ = (\inst4|u[1][3]~q\ & ((\inst4|_~49_combout\) # ((\inst4|sorteio|unidade\(3) & \inst4|_~46_combout\)))) # (!\inst4|u[1][3]~q\ & (\inst4|sorteio|unidade\(3) & ((\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|u[1][3]~105_combout\);

-- Location: LCCOMB_X30_Y18_N12
\inst4|u[1][3]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~106_combout\ = (\inst4|u[1][3]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|u[1][3]~106_combout\);

-- Location: LCCOMB_X31_Y18_N16
\inst4|u[1][3]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~109_combout\ = (\inst4|u[1][3]~107_combout\) # ((\inst4|u[1][3]~108_combout\) # ((\inst4|u[1][3]~105_combout\) # (\inst4|u[1][3]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~107_combout\,
	datab => \inst4|u[1][3]~108_combout\,
	datac => \inst4|u[1][3]~105_combout\,
	datad => \inst4|u[1][3]~106_combout\,
	combout => \inst4|u[1][3]~109_combout\);

-- Location: FF_X31_Y18_N17
\inst4|u[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[1][3]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][3]~q\);

-- Location: LCCOMB_X30_Y14_N26
\inst4|u[1][1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~47_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|u[1][1]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[1][1]~47_combout\);

-- Location: LCCOMB_X30_Y14_N20
\inst4|u[1][1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~48_combout\ = (\inst4|u[1][1]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[1][1]~48_combout\);

-- Location: LCCOMB_X30_Y14_N30
\inst4|u[1][1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~45_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|_~49_combout\) # ((\inst4|sorteio|unidade\(1) & \inst4|_~46_combout\)))) # (!\inst4|u[1][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|_~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~q\,
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[1][1]~45_combout\);

-- Location: LCCOMB_X30_Y14_N28
\inst4|u[1][1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~46_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|_~56_combout\) # ((\inst4|_~5_combout\) # (\inst4|_~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~q\,
	datab => \inst4|_~56_combout\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|u[1][1]~46_combout\);

-- Location: LCCOMB_X30_Y14_N10
\inst4|u[1][1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~49_combout\ = (\inst4|u[1][1]~47_combout\) # ((\inst4|u[1][1]~48_combout\) # ((\inst4|u[1][1]~45_combout\) # (\inst4|u[1][1]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~47_combout\,
	datab => \inst4|u[1][1]~48_combout\,
	datac => \inst4|u[1][1]~45_combout\,
	datad => \inst4|u[1][1]~46_combout\,
	combout => \inst4|u[1][1]~49_combout\);

-- Location: FF_X30_Y14_N11
\inst4|u[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[1][1]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][1]~q\);

-- Location: LCCOMB_X28_Y16_N10
\inst4|u[1][4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~21_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~5_combout\) # (\inst4|_~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~55_combout\,
	datab => \inst4|u[1][4]~q\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|u[1][4]~21_combout\);

-- Location: LCCOMB_X28_Y16_N16
\inst4|u[1][4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~23_combout\ = (\inst4|u[1][4]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[1][4]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[1][4]~23_combout\);

-- Location: LCCOMB_X28_Y16_N8
\inst4|u[1][4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~20_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|_~49_combout\) # ((\inst4|sorteio|unidade\(4) & \inst4|_~46_combout\)))) # (!\inst4|u[1][4]~q\ & (((\inst4|sorteio|unidade\(4) & \inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|sorteio|unidade\(4),
	datad => \inst4|_~46_combout\,
	combout => \inst4|u[1][4]~20_combout\);

-- Location: LCCOMB_X33_Y16_N20
\inst4|u[1][4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~22_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[1][4]~22_combout\);

-- Location: LCCOMB_X28_Y16_N24
\inst4|u[1][4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~24_combout\ = (\inst4|u[1][4]~21_combout\) # ((\inst4|u[1][4]~23_combout\) # ((\inst4|u[1][4]~20_combout\) # (\inst4|u[1][4]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~21_combout\,
	datab => \inst4|u[1][4]~23_combout\,
	datac => \inst4|u[1][4]~20_combout\,
	datad => \inst4|u[1][4]~22_combout\,
	combout => \inst4|u[1][4]~24_combout\);

-- Location: FF_X28_Y16_N25
\inst4|u[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[1][4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][4]~q\);

-- Location: LCCOMB_X29_Y18_N10
\inst4|_~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~43_combout\ = (!\inst4|u[1][2]~q\ & (!\inst4|u[1][3]~q\ & (!\inst4|u[1][1]~q\ & !\inst4|u[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|u[1][3]~q\,
	datac => \inst4|u[1][1]~q\,
	datad => \inst4|u[1][4]~q\,
	combout => \inst4|_~43_combout\);

-- Location: LCCOMB_X29_Y15_N26
\inst4|d[1][4]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~116_combout\ = (\inst4|d[1][4]~q\ & ((\inst4|_~70_combout\) # ((\inst4|_~71_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[1][4]~116_combout\);

-- Location: LCCOMB_X29_Y15_N14
\inst4|d[1][4]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~114_combout\ = (\inst4|d[1][4]~q\ & ((\inst4|_~5_combout\) # (\inst4|_~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|d[1][4]~q\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[1][4]~114_combout\);

-- Location: LCCOMB_X29_Y15_N8
\inst4|d[1][4]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~115_combout\ = (\inst4|d[1][4]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|d[1][4]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[1][4]~115_combout\);

-- Location: LCCOMB_X29_Y15_N12
\inst4|d[1][4]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~113_combout\ = (\inst4|d[1][4]~q\ & ((\inst4|_~49_combout\) # ((\inst4|sorteio|dezena\(4) & \inst4|_~46_combout\)))) # (!\inst4|d[1][4]~q\ & (\inst4|sorteio|dezena\(4) & ((\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~q\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|d[1][4]~113_combout\);

-- Location: LCCOMB_X29_Y15_N0
\inst4|d[1][4]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~117_combout\ = (\inst4|d[1][4]~116_combout\) # ((\inst4|d[1][4]~114_combout\) # ((\inst4|d[1][4]~115_combout\) # (\inst4|d[1][4]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~116_combout\,
	datab => \inst4|d[1][4]~114_combout\,
	datac => \inst4|d[1][4]~115_combout\,
	datad => \inst4|d[1][4]~113_combout\,
	combout => \inst4|d[1][4]~117_combout\);

-- Location: FF_X29_Y15_N1
\inst4|d[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[1][4]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][4]~q\);

-- Location: LCCOMB_X30_Y18_N26
\inst4|d[1][3]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~79_combout\ = (\inst4|d[1][3]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~5_combout\) # (\inst4|_~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|_~55_combout\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|d[1][3]~79_combout\);

-- Location: LCCOMB_X30_Y18_N14
\inst4|d[1][3]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~81_combout\ = (\inst4|d[1][3]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[1][3]~81_combout\);

-- Location: LCCOMB_X30_Y18_N4
\inst4|d[1][3]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~80_combout\ = (\inst4|d[1][3]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[1][3]~80_combout\);

-- Location: LCCOMB_X30_Y18_N16
\inst4|d[1][3]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~78_combout\ = (\inst4|sorteio|dezena\(3) & ((\inst4|_~46_combout\) # ((\inst4|d[1][3]~q\ & \inst4|_~49_combout\)))) # (!\inst4|sorteio|dezena\(3) & (\inst4|d[1][3]~q\ & ((\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|d[1][3]~78_combout\);

-- Location: LCCOMB_X30_Y18_N22
\inst4|d[1][3]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~82_combout\ = (\inst4|d[1][3]~79_combout\) # ((\inst4|d[1][3]~81_combout\) # ((\inst4|d[1][3]~80_combout\) # (\inst4|d[1][3]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~79_combout\,
	datab => \inst4|d[1][3]~81_combout\,
	datac => \inst4|d[1][3]~80_combout\,
	datad => \inst4|d[1][3]~78_combout\,
	combout => \inst4|d[1][3]~82_combout\);

-- Location: FF_X30_Y18_N23
\inst4|d[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[1][3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][3]~q\);

-- Location: LCCOMB_X30_Y15_N22
\inst4|d[1][1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~22_combout\ = (\inst4|d[1][1]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[1][1]~22_combout\);

-- Location: LCCOMB_X30_Y15_N2
\inst4|d[1][1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~20_combout\ = (\inst4|d[1][1]~q\ & ((\inst4|_~5_combout\) # (\inst4|_~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[1][1]~20_combout\);

-- Location: LCCOMB_X30_Y15_N4
\inst4|d[1][1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~21_combout\ = (\inst4|d[1][1]~q\ & ((\inst4|_~65_combout\) # ((\inst4|_~57_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~65_combout\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~57_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[1][1]~21_combout\);

-- Location: LCCOMB_X30_Y15_N16
\inst4|d[1][1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~19_combout\ = (\inst4|sorteio|dezena\(1) & ((\inst4|_~46_combout\) # ((\inst4|d[1][1]~q\ & \inst4|_~49_combout\)))) # (!\inst4|sorteio|dezena\(1) & (\inst4|d[1][1]~q\ & (\inst4|_~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|d[1][1]~19_combout\);

-- Location: LCCOMB_X30_Y15_N18
\inst4|d[1][1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~23_combout\ = (\inst4|d[1][1]~22_combout\) # ((\inst4|d[1][1]~20_combout\) # ((\inst4|d[1][1]~21_combout\) # (\inst4|d[1][1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~22_combout\,
	datab => \inst4|d[1][1]~20_combout\,
	datac => \inst4|d[1][1]~21_combout\,
	datad => \inst4|d[1][1]~19_combout\,
	combout => \inst4|d[1][1]~23_combout\);

-- Location: FF_X30_Y15_N19
\inst4|d[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[1][1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][1]~q\);

-- Location: LCCOMB_X29_Y14_N2
\inst4|_~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~42_combout\ = (!\inst4|d[1][4]~q\ & (!\inst4|d[1][3]~q\ & (!\inst4|d[1][2]~q\ & !\inst4|d[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~q\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|d[1][2]~q\,
	datad => \inst4|d[1][1]~q\,
	combout => \inst4|_~42_combout\);

-- Location: LCCOMB_X29_Y14_N4
\inst4|_~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~44_combout\ = (\inst4|_~43_combout\ & \inst4|_~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~43_combout\,
	datad => \inst4|_~42_combout\,
	combout => \inst4|_~44_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst4|_~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~45_combout\ = (\inst4|_~44_combout\ & (\inst4|_~31_combout\ & (\inst4|_~25_combout\ & \inst4|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~44_combout\,
	datab => \inst4|_~31_combout\,
	datac => \inst4|_~25_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst4|_~45_combout\);

-- Location: LCCOMB_X30_Y16_N14
\inst4|_~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~46_combout\ = (\inst4|_~41_combout\ & (\inst4|temp~q\ & (\inst4|_~40_combout\ & \inst4|_~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~45_combout\,
	combout => \inst4|_~46_combout\);

-- Location: LCCOMB_X26_Y16_N16
\inst4|d[1][2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~52_combout\ = (\inst4|count|cnt\(3) & (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|temp~q\,
	combout => \inst4|d[1][2]~52_combout\);

-- Location: LCCOMB_X26_Y16_N22
\inst4|d[1][2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~53_combout\ = (\inst4|d[1][2]~q\ & ((\inst4|d[1][2]~52_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|d[1][2]~52_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[1][2]~53_combout\);

-- Location: LCCOMB_X26_Y16_N20
\inst4|d[1][2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~54_combout\ = (!\inst4|_~5_combout\ & (\inst4|temp~q\ & (!\inst4|_~49_combout\ & !\inst4|_~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[1][2]~54_combout\);

-- Location: LCCOMB_X26_Y16_N6
\inst4|d[1][2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~55_combout\ = (\inst4|d[1][2]~q\ & ((\inst4|_~71_combout\) # ((\inst4|_~51_combout\) # (!\inst4|d[1][2]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|_~71_combout\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|d[1][2]~54_combout\,
	combout => \inst4|d[1][2]~55_combout\);

-- Location: LCCOMB_X26_Y16_N10
\inst4|d[1][2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~56_combout\ = (\inst4|d[1][2]~53_combout\) # ((\inst4|d[1][2]~55_combout\) # ((\inst4|sorteio|dezena\(2) & \inst4|_~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(2),
	datab => \inst4|_~46_combout\,
	datac => \inst4|d[1][2]~53_combout\,
	datad => \inst4|d[1][2]~55_combout\,
	combout => \inst4|d[1][2]~56_combout\);

-- Location: FF_X26_Y16_N11
\inst4|d[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[1][2]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][2]~q\);

-- Location: LCCOMB_X29_Y16_N22
\inst4|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~17_combout\ = (\inst4|d[1][2]~q\ & (\inst4|sorteio|dezena\(2) & (\inst4|d[1][1]~q\ $ (!\inst4|sorteio|dezena\(1))))) # (!\inst4|d[1][2]~q\ & (!\inst4|sorteio|dezena\(2) & (\inst4|d[1][1]~q\ $ (!\inst4|sorteio|dezena\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|_~17_combout\);

-- Location: LCCOMB_X28_Y16_N6
\inst4|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~18_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|u[1][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[1][3]~q\)))) # (!\inst4|sorteio|unidade\(4) & (!\inst4|u[1][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|u[1][4]~q\,
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|u[1][3]~q\,
	combout => \inst4|_~18_combout\);

-- Location: LCCOMB_X29_Y14_N22
\inst4|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~19_combout\ = (\inst4|sorteio|unidade\(1) & (\inst4|u[1][1]~q\ & (\inst4|u[1][2]~q\ $ (!\inst4|sorteio|unidade\(2))))) # (!\inst4|sorteio|unidade\(1) & (!\inst4|u[1][1]~q\ & (\inst4|u[1][2]~q\ $ (!\inst4|sorteio|unidade\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|u[1][1]~q\,
	datac => \inst4|u[1][2]~q\,
	datad => \inst4|sorteio|unidade\(2),
	combout => \inst4|_~19_combout\);

-- Location: LCCOMB_X29_Y16_N28
\inst4|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~16_combout\ = (\inst4|d[1][3]~q\ & (\inst4|sorteio|dezena\(3) & (\inst4|d[1][4]~q\ $ (!\inst4|sorteio|dezena\(4))))) # (!\inst4|d[1][3]~q\ & (!\inst4|sorteio|dezena\(3) & (\inst4|d[1][4]~q\ $ (!\inst4|sorteio|dezena\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|d[1][4]~q\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|sorteio|dezena\(4),
	combout => \inst4|_~16_combout\);

-- Location: LCCOMB_X29_Y16_N24
\inst4|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~20_combout\ = (\inst4|_~17_combout\ & (!\inst4|_~16_combout\ & ((!\inst4|_~19_combout\) # (!\inst4|_~18_combout\)))) # (!\inst4|_~17_combout\ & (((!\inst4|_~19_combout\)) # (!\inst4|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~17_combout\,
	datab => \inst4|_~18_combout\,
	datac => \inst4|_~19_combout\,
	datad => \inst4|_~16_combout\,
	combout => \inst4|_~20_combout\);

-- Location: LCCOMB_X31_Y16_N8
\inst4|_~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~58_combout\ = (\inst4|_~20_combout\ & (\inst4|_~10_combout\ & \inst4|_~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~20_combout\,
	datac => \inst4|_~10_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst4|_~58_combout\);

-- Location: LCCOMB_X31_Y16_N28
\inst4|_~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~65_combout\ = (\inst4|_~60_combout\ & (((!\inst4|_~59_combout\) # (!\inst4|_~58_combout\)) # (!\inst4|_~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~63_combout\,
	datab => \inst4|_~58_combout\,
	datac => \inst4|_~60_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|_~65_combout\);

-- Location: LCCOMB_X28_Y18_N28
\inst4|u[2][3]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~97_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[2][3]~97_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst4|d[2][1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~12_combout\ = (\inst4|d[2][1]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[2][1]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[2][1]~12_combout\);

-- Location: LCCOMB_X30_Y19_N28
\inst4|d[2][1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~11_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|_~65_combout\) # ((\inst4|_~57_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst4|_~65_combout\,
	datac => \inst4|_~57_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[2][1]~11_combout\);

-- Location: LCCOMB_X30_Y19_N10
\inst4|_~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~80_combout\ = (\inst4|_~5_combout\ & (\inst4|sorteio|dezena\(1) & (\inst4|_~26_combout\ & \inst4|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|_~26_combout\,
	datad => \inst4|_~34_combout\,
	combout => \inst4|_~80_combout\);

-- Location: LCCOMB_X30_Y19_N8
\inst4|d[2][1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~9_combout\ = (\inst4|_~80_combout\) # ((\inst4|d[2][1]~q\ & ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datab => \inst4|d[2][1]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~80_combout\,
	combout => \inst4|d[2][1]~9_combout\);

-- Location: LCCOMB_X30_Y18_N2
\inst4|_~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~50_combout\ = (\inst4|_~5_combout\ & ((!\inst4|_~26_combout\) # (!\inst4|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~34_combout\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~26_combout\,
	combout => \inst4|_~50_combout\);

-- Location: LCCOMB_X30_Y19_N18
\inst4|d[2][1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~10_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|_~56_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|d[2][1]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[2][1]~10_combout\);

-- Location: LCCOMB_X30_Y19_N0
\inst4|d[2][1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~13_combout\ = (\inst4|d[2][1]~12_combout\) # ((\inst4|d[2][1]~11_combout\) # ((\inst4|d[2][1]~9_combout\) # (\inst4|d[2][1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~12_combout\,
	datab => \inst4|d[2][1]~11_combout\,
	datac => \inst4|d[2][1]~9_combout\,
	datad => \inst4|d[2][1]~10_combout\,
	combout => \inst4|d[2][1]~13_combout\);

-- Location: FF_X30_Y19_N1
\inst4|d[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[2][1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][1]~q\);

-- Location: LCCOMB_X31_Y18_N26
\inst4|d[2][4]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~96_combout\ = (\inst4|d[2][4]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[2][4]~96_combout\);

-- Location: LCCOMB_X31_Y18_N28
\inst4|d[2][4]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~95_combout\ = (\inst4|d[2][4]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[2][4]~95_combout\);

-- Location: LCCOMB_X31_Y18_N30
\inst4|d[2][4]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~94_combout\ = (\inst4|d[2][4]~q\ & ((\inst4|_~56_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~q\,
	datab => \inst4|_~56_combout\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[2][4]~94_combout\);

-- Location: LCCOMB_X31_Y18_N18
\inst4|_~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~83_combout\ = (\inst4|_~5_combout\ & (\inst4|sorteio|dezena\(4) & (\inst4|_~34_combout\ & \inst4|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|_~34_combout\,
	datad => \inst4|_~26_combout\,
	combout => \inst4|_~83_combout\);

-- Location: LCCOMB_X31_Y18_N12
\inst4|d[2][4]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~93_combout\ = (\inst4|_~83_combout\) # ((\inst4|d[2][4]~q\ & ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~83_combout\,
	combout => \inst4|d[2][4]~93_combout\);

-- Location: LCCOMB_X31_Y18_N20
\inst4|d[2][4]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~97_combout\ = (\inst4|d[2][4]~96_combout\) # ((\inst4|d[2][4]~95_combout\) # ((\inst4|d[2][4]~94_combout\) # (\inst4|d[2][4]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~96_combout\,
	datab => \inst4|d[2][4]~95_combout\,
	datac => \inst4|d[2][4]~94_combout\,
	datad => \inst4|d[2][4]~93_combout\,
	combout => \inst4|d[2][4]~97_combout\);

-- Location: FF_X31_Y18_N21
\inst4|d[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[2][4]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][4]~q\);

-- Location: LCCOMB_X30_Y18_N10
\inst4|d[2][3]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~68_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~56_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|_~56_combout\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[2][3]~68_combout\);

-- Location: LCCOMB_X30_Y18_N24
\inst4|d[2][3]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~69_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|d[2][3]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[2][3]~69_combout\);

-- Location: LCCOMB_X30_Y18_N30
\inst4|d[2][3]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~70_combout\ = (\inst4|d[2][3]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[2][3]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[2][3]~70_combout\);

-- Location: LCCOMB_X30_Y18_N6
\inst4|_~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~82_combout\ = (\inst4|sorteio|dezena\(3) & (\inst4|_~34_combout\ & (\inst4|_~5_combout\ & \inst4|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|_~34_combout\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~26_combout\,
	combout => \inst4|_~82_combout\);

-- Location: LCCOMB_X30_Y18_N20
\inst4|d[2][3]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~67_combout\ = (\inst4|_~82_combout\) # ((\inst4|d[2][3]~q\ & ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|d[2][3]~67_combout\);

-- Location: LCCOMB_X30_Y18_N8
\inst4|d[2][3]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~71_combout\ = (\inst4|d[2][3]~68_combout\) # ((\inst4|d[2][3]~69_combout\) # ((\inst4|d[2][3]~70_combout\) # (\inst4|d[2][3]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~68_combout\,
	datab => \inst4|d[2][3]~69_combout\,
	datac => \inst4|d[2][3]~70_combout\,
	datad => \inst4|d[2][3]~67_combout\,
	combout => \inst4|d[2][3]~71_combout\);

-- Location: FF_X30_Y18_N9
\inst4|d[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[2][3]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][3]~q\);

-- Location: LCCOMB_X30_Y19_N22
\inst4|d[2][2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~37_combout\ = (\inst4|d[2][2]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[2][2]~37_combout\);

-- Location: LCCOMB_X30_Y19_N20
\inst4|d[2][2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~36_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|_~64_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datab => \inst4|_~65_combout\,
	datac => \inst4|d[2][2]~q\,
	datad => \inst4|_~57_combout\,
	combout => \inst4|d[2][2]~36_combout\);

-- Location: LCCOMB_X30_Y19_N6
\inst4|_~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~81_combout\ = (\inst4|_~5_combout\ & (\inst4|sorteio|dezena\(2) & (\inst4|_~26_combout\ & \inst4|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|_~26_combout\,
	datad => \inst4|_~34_combout\,
	combout => \inst4|_~81_combout\);

-- Location: LCCOMB_X30_Y19_N4
\inst4|d[2][2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~34_combout\ = (\inst4|_~81_combout\) # ((\inst4|d[2][2]~q\ & ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~81_combout\,
	datab => \inst4|_~46_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|d[2][2]~q\,
	combout => \inst4|d[2][2]~34_combout\);

-- Location: LCCOMB_X30_Y19_N2
\inst4|d[2][2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~35_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~56_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~55_combout\,
	datab => \inst4|d[2][2]~q\,
	datac => \inst4|_~56_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[2][2]~35_combout\);

-- Location: LCCOMB_X30_Y19_N12
\inst4|d[2][2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~38_combout\ = (\inst4|d[2][2]~37_combout\) # ((\inst4|d[2][2]~36_combout\) # ((\inst4|d[2][2]~34_combout\) # (\inst4|d[2][2]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~37_combout\,
	datab => \inst4|d[2][2]~36_combout\,
	datac => \inst4|d[2][2]~34_combout\,
	datad => \inst4|d[2][2]~35_combout\,
	combout => \inst4|d[2][2]~38_combout\);

-- Location: FF_X30_Y19_N13
\inst4|d[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[2][2]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][2]~q\);

-- Location: LCCOMB_X31_Y18_N4
\inst4|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~32_combout\ = (!\inst4|d[2][1]~q\ & (!\inst4|d[2][4]~q\ & (!\inst4|d[2][3]~q\ & !\inst4|d[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|d[2][3]~q\,
	datad => \inst4|d[2][2]~q\,
	combout => \inst4|_~32_combout\);

-- Location: LCCOMB_X30_Y14_N6
\inst4|u[2][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~37_combout\ = (\inst4|u[2][1]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[2][1]~37_combout\);

-- Location: LCCOMB_X30_Y14_N24
\inst4|u[2][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~38_combout\ = (\inst4|u[2][1]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[2][1]~38_combout\);

-- Location: LCCOMB_X30_Y14_N14
\inst4|_~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~77_combout\ = (\inst4|_~5_combout\ & (\inst4|sorteio|unidade\(1) & (\inst4|_~26_combout\ & \inst4|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|_~26_combout\,
	datad => \inst4|_~34_combout\,
	combout => \inst4|_~77_combout\);

-- Location: LCCOMB_X30_Y14_N8
\inst4|u[2][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~35_combout\ = (\inst4|_~77_combout\) # ((\inst4|u[2][1]~q\ & ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~49_combout\,
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|_~77_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|u[2][1]~35_combout\);

-- Location: LCCOMB_X30_Y18_N28
\inst4|u[2][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~36_combout\ = (\inst4|u[2][1]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~56_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|_~55_combout\,
	datac => \inst4|_~56_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|u[2][1]~36_combout\);

-- Location: LCCOMB_X30_Y14_N0
\inst4|u[2][1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~39_combout\ = (\inst4|u[2][1]~37_combout\) # ((\inst4|u[2][1]~38_combout\) # ((\inst4|u[2][1]~35_combout\) # (\inst4|u[2][1]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~37_combout\,
	datab => \inst4|u[2][1]~38_combout\,
	datac => \inst4|u[2][1]~35_combout\,
	datad => \inst4|u[2][1]~36_combout\,
	combout => \inst4|u[2][1]~39_combout\);

-- Location: FF_X30_Y14_N1
\inst4|u[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][1]~q\);

-- Location: LCCOMB_X28_Y18_N10
\inst4|u[2][2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~63_combout\ = (\inst4|u[2][2]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[2][2]~63_combout\);

-- Location: LCCOMB_X28_Y18_N0
\inst4|u[2][2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~62_combout\ = (\inst4|u[2][2]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[2][2]~62_combout\);

-- Location: LCCOMB_X28_Y18_N14
\inst4|_~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~78_combout\ = (\inst4|sorteio|unidade\(2) & (\inst4|_~5_combout\ & (\inst4|_~34_combout\ & \inst4|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~34_combout\,
	datad => \inst4|_~26_combout\,
	combout => \inst4|_~78_combout\);

-- Location: LCCOMB_X28_Y18_N4
\inst4|u[2][2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~60_combout\ = (\inst4|_~78_combout\) # ((\inst4|u[2][2]~q\ & ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~78_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|u[2][2]~60_combout\);

-- Location: LCCOMB_X28_Y18_N2
\inst4|u[2][2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~61_combout\ = (\inst4|u[2][2]~q\ & ((\inst4|_~56_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|u[2][2]~61_combout\);

-- Location: LCCOMB_X28_Y18_N6
\inst4|u[2][2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~64_combout\ = (\inst4|u[2][2]~63_combout\) # ((\inst4|u[2][2]~62_combout\) # ((\inst4|u[2][2]~60_combout\) # (\inst4|u[2][2]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~63_combout\,
	datab => \inst4|u[2][2]~62_combout\,
	datac => \inst4|u[2][2]~60_combout\,
	datad => \inst4|u[2][2]~61_combout\,
	combout => \inst4|u[2][2]~64_combout\);

-- Location: FF_X28_Y18_N7
\inst4|u[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[2][2]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][2]~q\);

-- Location: LCCOMB_X28_Y18_N12
\inst4|u[2][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~2_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[2][4]~2_combout\);

-- Location: LCCOMB_X29_Y18_N26
\inst4|u[2][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~3_combout\ = (\inst4|u[2][4]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[2][4]~3_combout\);

-- Location: LCCOMB_X28_Y18_N22
\inst4|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~35_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|_~5_combout\ & (\inst4|_~34_combout\ & \inst4|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~34_combout\,
	datad => \inst4|_~26_combout\,
	combout => \inst4|_~35_combout\);

-- Location: LCCOMB_X28_Y18_N8
\inst4|u[2][4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~0_combout\ = (\inst4|_~35_combout\) # ((\inst4|u[2][4]~q\ & ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~35_combout\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[2][4]~0_combout\);

-- Location: LCCOMB_X28_Y18_N18
\inst4|u[2][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~1_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|_~56_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|u[2][4]~1_combout\);

-- Location: LCCOMB_X28_Y18_N20
\inst4|u[2][4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~4_combout\ = (\inst4|u[2][4]~2_combout\) # ((\inst4|u[2][4]~3_combout\) # ((\inst4|u[2][4]~0_combout\) # (\inst4|u[2][4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~2_combout\,
	datab => \inst4|u[2][4]~3_combout\,
	datac => \inst4|u[2][4]~0_combout\,
	datad => \inst4|u[2][4]~1_combout\,
	combout => \inst4|u[2][4]~4_combout\);

-- Location: FF_X28_Y18_N21
\inst4|u[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[2][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][4]~q\);

-- Location: LCCOMB_X31_Y18_N22
\inst4|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~33_combout\ = (!\inst4|u[2][1]~q\ & (!\inst4|u[2][2]~q\ & (!\inst4|u[2][4]~q\ & !\inst4|u[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|u[2][4]~q\,
	datad => \inst4|u[2][3]~q\,
	combout => \inst4|_~33_combout\);

-- Location: LCCOMB_X30_Y18_N0
\inst4|_~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~34_combout\ = (\inst4|_~32_combout\ & (\inst4|_~33_combout\ & \inst4|_~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~32_combout\,
	datac => \inst4|_~33_combout\,
	datad => \inst4|_~31_combout\,
	combout => \inst4|_~34_combout\);

-- Location: LCCOMB_X28_Y18_N24
\inst4|_~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~79_combout\ = (\inst4|sorteio|unidade\(3) & (\inst4|_~5_combout\ & (\inst4|_~34_combout\ & \inst4|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~34_combout\,
	datad => \inst4|_~26_combout\,
	combout => \inst4|_~79_combout\);

-- Location: LCCOMB_X28_Y18_N26
\inst4|u[2][3]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~95_combout\ = (\inst4|_~79_combout\) # ((\inst4|u[2][3]~q\ & ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~79_combout\,
	combout => \inst4|u[2][3]~95_combout\);

-- Location: LCCOMB_X29_Y18_N22
\inst4|u[2][3]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~96_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|_~56_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|_~56_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|u[2][3]~96_combout\);

-- Location: LCCOMB_X28_Y18_N16
\inst4|u[2][3]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~99_combout\ = (\inst4|u[2][3]~98_combout\) # ((\inst4|u[2][3]~97_combout\) # ((\inst4|u[2][3]~95_combout\) # (\inst4|u[2][3]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~98_combout\,
	datab => \inst4|u[2][3]~97_combout\,
	datac => \inst4|u[2][3]~95_combout\,
	datad => \inst4|u[2][3]~96_combout\,
	combout => \inst4|u[2][3]~99_combout\);

-- Location: FF_X28_Y18_N17
\inst4|u[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[2][3]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][3]~q\);

-- Location: LCCOMB_X28_Y16_N28
\inst4|_~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~38_combout\ = (\inst4|u[2][3]~q\ & (\inst4|sorteio|unidade\(3) & (\inst4|u[2][4]~q\ $ (!\inst4|sorteio|unidade\(4))))) # (!\inst4|u[2][3]~q\ & (!\inst4|sorteio|unidade\(3) & (\inst4|u[2][4]~q\ $ (!\inst4|sorteio|unidade\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|_~38_combout\);

-- Location: LCCOMB_X31_Y16_N20
\inst4|_~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~37_combout\ = (\inst4|d[2][2]~q\ & (\inst4|sorteio|dezena\(2) & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[2][1]~q\)))) # (!\inst4|d[2][2]~q\ & (!\inst4|sorteio|dezena\(2) & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|sorteio|dezena\(2),
	combout => \inst4|_~37_combout\);

-- Location: LCCOMB_X32_Y16_N30
\inst4|_~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~36_combout\ = (\inst4|sorteio|dezena\(3) & (\inst4|d[2][3]~q\ & (\inst4|d[2][4]~q\ $ (!\inst4|sorteio|dezena\(4))))) # (!\inst4|sorteio|dezena\(3) & (!\inst4|d[2][3]~q\ & (\inst4|d[2][4]~q\ $ (!\inst4|sorteio|dezena\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|d[2][3]~q\,
	combout => \inst4|_~36_combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst4|_~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~39_combout\ = (\inst4|sorteio|unidade\(1) & (\inst4|u[2][1]~q\ & (\inst4|u[2][2]~q\ $ (!\inst4|sorteio|unidade\(2))))) # (!\inst4|sorteio|unidade\(1) & (!\inst4|u[2][1]~q\ & (\inst4|u[2][2]~q\ $ (!\inst4|sorteio|unidade\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|u[2][2]~q\,
	datad => \inst4|sorteio|unidade\(2),
	combout => \inst4|_~39_combout\);

-- Location: LCCOMB_X31_Y16_N18
\inst4|_~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~40_combout\ = (\inst4|_~38_combout\ & (!\inst4|_~39_combout\ & ((!\inst4|_~36_combout\) # (!\inst4|_~37_combout\)))) # (!\inst4|_~38_combout\ & (((!\inst4|_~36_combout\)) # (!\inst4|_~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~38_combout\,
	datab => \inst4|_~37_combout\,
	datac => \inst4|_~36_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|_~40_combout\);

-- Location: LCCOMB_X29_Y16_N2
\inst4|_~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~48_combout\ = (\inst4|_~31_combout\ & (\inst4|_~25_combout\ & (\inst4|_~15_combout\ & \inst4|_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~31_combout\,
	datab => \inst4|_~25_combout\,
	datac => \inst4|_~15_combout\,
	datad => \inst4|_~44_combout\,
	combout => \inst4|_~48_combout\);

-- Location: LCCOMB_X29_Y16_N0
\inst4|_~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~49_combout\ = (\inst4|_~47_combout\ & (((!\inst4|_~48_combout\) # (!\inst4|_~10_combout\)) # (!\inst4|_~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~40_combout\,
	datab => \inst4|_~10_combout\,
	datac => \inst4|_~47_combout\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|_~49_combout\);

-- Location: LCCOMB_X30_Y15_N12
\inst4|u[4][4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~15_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|u[4][4]~15_combout\);

-- Location: LCCOMB_X30_Y15_N14
\inst4|u[4][4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~16_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|_~51_combout\) # ((\inst4|sorteio|unidade\(4) & \inst4|_~64_combout\)))) # (!\inst4|u[4][4]~q\ & (\inst4|sorteio|unidade\(4) & (\inst4|_~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[4][4]~16_combout\);

-- Location: LCCOMB_X30_Y15_N28
\inst4|u[4][4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~17_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|_~65_combout\) # ((\inst4|_~75_combout\) # (\inst4|_~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~65_combout\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|_~75_combout\,
	datad => \inst4|_~76_combout\,
	combout => \inst4|u[4][4]~17_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst4|u[4][4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~19_combout\ = (\inst4|u[4][4]~18_combout\) # ((\inst4|u[4][4]~15_combout\) # ((\inst4|u[4][4]~16_combout\) # (\inst4|u[4][4]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~18_combout\,
	datab => \inst4|u[4][4]~15_combout\,
	datac => \inst4|u[4][4]~16_combout\,
	datad => \inst4|u[4][4]~17_combout\,
	combout => \inst4|u[4][4]~19_combout\);

-- Location: FF_X30_Y15_N25
\inst4|u[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[4][4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][4]~q\);

-- Location: LCCOMB_X31_Y17_N4
\inst4|_~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~62_combout\ = (!\inst4|u[4][4]~q\ & (!\inst4|u[4][1]~q\ & (!\inst4|u[4][2]~q\ & !\inst4|u[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|u[4][2]~q\,
	datad => \inst4|u[4][3]~q\,
	combout => \inst4|_~62_combout\);

-- Location: LCCOMB_X31_Y17_N10
\inst4|_~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~61_combout\ = (!\inst4|d[4][1]~q\ & (!\inst4|d[4][3]~q\ & (!\inst4|d[4][4]~q\ & !\inst4|d[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~q\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|d[4][4]~q\,
	datad => \inst4|d[4][2]~q\,
	combout => \inst4|_~61_combout\);

-- Location: LCCOMB_X31_Y17_N30
\inst4|_~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~63_combout\ = (\inst4|_~62_combout\ & \inst4|_~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|_~63_combout\);

-- Location: LCCOMB_X31_Y16_N6
\inst4|_~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~64_combout\ = (\inst4|_~63_combout\ & (\inst4|_~58_combout\ & (\inst4|_~60_combout\ & \inst4|_~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~63_combout\,
	datab => \inst4|_~58_combout\,
	datac => \inst4|_~60_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|_~64_combout\);

-- Location: LCCOMB_X29_Y19_N26
\inst4|d[6][1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~5_combout\ = (\inst4|d[6][1]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|d[6][1]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[6][1]~5_combout\);

-- Location: LCCOMB_X29_Y19_N16
\inst4|d[6][1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~4_combout\ = (\inst4|d[6][1]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][1]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|d[6][1]~4_combout\);

-- Location: LCCOMB_X29_Y19_N24
\inst4|d[6][1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~8_combout\ = (\inst4|d[6][1]~6_combout\) # ((\inst4|d[6][1]~7_combout\) # ((\inst4|d[6][1]~5_combout\) # (\inst4|d[6][1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][1]~6_combout\,
	datab => \inst4|d[6][1]~7_combout\,
	datac => \inst4|d[6][1]~5_combout\,
	datad => \inst4|d[6][1]~4_combout\,
	combout => \inst4|d[6][1]~8_combout\);

-- Location: FF_X29_Y19_N25
\inst4|d[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[6][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][1]~q\);

-- Location: LCCOMB_X29_Y15_N22
\inst4|_~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~67_combout\ = (!\inst4|d[6][1]~q\ & (!\inst4|d[6][3]~q\ & (!\inst4|d[6][4]~q\ & !\inst4|d[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][1]~q\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst4|d[6][4]~q\,
	datad => \inst4|d[6][2]~q\,
	combout => \inst4|_~67_combout\);

-- Location: LCCOMB_X31_Y15_N22
\inst4|_~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~68_combout\ = (!\inst4|u[6][3]~q\ & (!\inst4|u[6][2]~q\ & (!\inst4|u[6][1]~q\ & !\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datab => \inst4|u[6][2]~q\,
	datac => \inst4|u[6][1]~q\,
	datad => \inst4|u[6][4]~q\,
	combout => \inst4|_~68_combout\);

-- Location: LCCOMB_X30_Y16_N22
\inst4|_~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~69_combout\ = (\inst4|_~67_combout\ & (\inst4|_~68_combout\ & \inst4|_~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~67_combout\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~10_combout\,
	combout => \inst4|_~69_combout\);

-- Location: LCCOMB_X30_Y16_N8
\inst4|_~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~70_combout\ = (\inst4|_~1_combout\ & (\inst4|temp~q\ & (\inst4|_~69_combout\ & \inst4|_~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~1_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|_~70_combout\);

-- Location: LCCOMB_X33_Y16_N22
\inst4|d[3][4]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~106_combout\ = (\inst4|d[3][4]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[3][4]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[3][4]~106_combout\);

-- Location: LCCOMB_X33_Y16_N28
\inst4|d[3][4]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~105_combout\ = (\inst4|d[3][4]~q\ & ((\inst4|_~57_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[3][4]~105_combout\);

-- Location: LCCOMB_X33_Y16_N30
\inst4|d[3][4]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~104_combout\ = (\inst4|d[3][4]~q\ & ((\inst4|_~56_combout\) # ((\inst4|sorteio|dezena\(4) & \inst4|_~55_combout\)))) # (!\inst4|d[3][4]~q\ & (\inst4|sorteio|dezena\(4) & (\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|d[3][4]~104_combout\);

-- Location: LCCOMB_X33_Y16_N24
\inst4|d[3][4]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~103_combout\ = (\inst4|d[3][4]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|d[3][4]~103_combout\);

-- Location: LCCOMB_X33_Y16_N18
\inst4|d[3][4]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~107_combout\ = (\inst4|d[3][4]~106_combout\) # ((\inst4|d[3][4]~105_combout\) # ((\inst4|d[3][4]~104_combout\) # (\inst4|d[3][4]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~106_combout\,
	datab => \inst4|d[3][4]~105_combout\,
	datac => \inst4|d[3][4]~104_combout\,
	datad => \inst4|d[3][4]~103_combout\,
	combout => \inst4|d[3][4]~107_combout\);

-- Location: FF_X33_Y16_N19
\inst4|d[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[3][4]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][4]~q\);

-- Location: LCCOMB_X32_Y16_N18
\inst4|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~27_combout\ = (\inst4|d[3][4]~q\ & (\inst4|sorteio|dezena\(4) & (\inst4|sorteio|dezena\(3) $ (!\inst4|d[3][3]~q\)))) # (!\inst4|d[3][4]~q\ & (!\inst4|sorteio|dezena\(4) & (\inst4|sorteio|dezena\(3) $ (!\inst4|d[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|d[3][3]~q\,
	combout => \inst4|_~27_combout\);

-- Location: LCCOMB_X30_Y16_N2
\inst4|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~30_combout\ = (\inst4|u[3][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|u[3][2]~q\ $ (!\inst4|sorteio|unidade\(2))))) # (!\inst4|u[3][1]~q\ & (!\inst4|sorteio|unidade\(1) & (\inst4|u[3][2]~q\ $ (!\inst4|sorteio|unidade\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|sorteio|unidade\(1),
	datad => \inst4|sorteio|unidade\(2),
	combout => \inst4|_~30_combout\);

-- Location: LCCOMB_X32_Y16_N24
\inst4|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~28_combout\ = (\inst4|d[3][2]~q\ & (\inst4|sorteio|dezena\(2) & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[3][1]~q\)))) # (!\inst4|d[3][2]~q\ & (!\inst4|sorteio|dezena\(2) & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~q\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|sorteio|dezena\(1),
	datad => \inst4|d[3][1]~q\,
	combout => \inst4|_~28_combout\);

-- Location: LCCOMB_X28_Y16_N18
\inst4|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~29_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|u[3][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[3][3]~q\)))) # (!\inst4|sorteio|unidade\(4) & (!\inst4|u[3][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|u[3][3]~q\,
	combout => \inst4|_~29_combout\);

-- Location: LCCOMB_X30_Y16_N20
\inst4|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~31_combout\ = (\inst4|_~27_combout\ & (!\inst4|_~28_combout\ & ((!\inst4|_~29_combout\) # (!\inst4|_~30_combout\)))) # (!\inst4|_~27_combout\ & (((!\inst4|_~29_combout\)) # (!\inst4|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~27_combout\,
	datab => \inst4|_~30_combout\,
	datac => \inst4|_~28_combout\,
	datad => \inst4|_~29_combout\,
	combout => \inst4|_~31_combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst4|_~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~66_combout\ = (\inst4|_~31_combout\ & (\inst4|_~20_combout\ & (\inst4|_~25_combout\ & \inst4|_~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~31_combout\,
	datab => \inst4|_~20_combout\,
	datac => \inst4|_~25_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|_~66_combout\);

-- Location: LCCOMB_X30_Y17_N18
\inst4|_~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~75_combout\ = (\inst4|_~74_combout\ & (\inst4|_~57_combout\ & \inst4|_~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~74_combout\,
	datac => \inst4|_~57_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|_~75_combout\);

-- Location: LCCOMB_X28_Y17_N26
\inst4|d[5][3]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~85_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|_~76_combout\) # ((\inst4|sorteio|dezena\(3) & \inst4|_~75_combout\)))) # (!\inst4|d[5][3]~q\ & (\inst4|sorteio|dezena\(3) & ((\inst4|_~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~q\,
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|_~76_combout\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|d[5][3]~85_combout\);

-- Location: LCCOMB_X28_Y17_N20
\inst4|d[5][3]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~84_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[5][3]~84_combout\);

-- Location: LCCOMB_X28_Y17_N8
\inst4|d[5][3]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~86_combout\ = (\inst4|d[5][3]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~71_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[5][3]~86_combout\);

-- Location: LCCOMB_X28_Y17_N10
\inst4|d[5][3]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~83_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|d[5][3]~83_combout\);

-- Location: LCCOMB_X28_Y17_N30
\inst4|d[5][3]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~87_combout\ = (\inst4|d[5][3]~85_combout\) # ((\inst4|d[5][3]~84_combout\) # ((\inst4|d[5][3]~86_combout\) # (\inst4|d[5][3]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~85_combout\,
	datab => \inst4|d[5][3]~84_combout\,
	datac => \inst4|d[5][3]~86_combout\,
	datad => \inst4|d[5][3]~83_combout\,
	combout => \inst4|d[5][3]~87_combout\);

-- Location: FF_X28_Y17_N31
\inst4|d[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[5][3]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][3]~q\);

-- Location: LCCOMB_X30_Y17_N28
\inst4|_~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~72_combout\ = (!\inst4|d[5][3]~q\ & (!\inst4|d[5][2]~q\ & (!\inst4|d[5][1]~q\ & !\inst4|d[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~q\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|d[5][1]~q\,
	datad => \inst4|d[5][4]~q\,
	combout => \inst4|_~72_combout\);

-- Location: LCCOMB_X30_Y17_N26
\inst4|_~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~73_combout\ = (!\inst4|u[5][2]~q\ & (!\inst4|u[5][1]~q\ & (!\inst4|u[5][3]~q\ & !\inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|u[5][1]~q\,
	datac => \inst4|u[5][3]~q\,
	datad => \inst4|u[5][4]~q\,
	combout => \inst4|_~73_combout\);

-- Location: LCCOMB_X30_Y17_N0
\inst4|_~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~74_combout\ = (\inst4|_~72_combout\ & (\inst4|_~73_combout\ & \inst4|_~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~72_combout\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst4|_~74_combout\);

-- Location: LCCOMB_X30_Y17_N16
\inst4|_~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~76_combout\ = (\inst4|_~57_combout\ & ((!\inst4|_~66_combout\) # (!\inst4|_~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~74_combout\,
	datac => \inst4|_~57_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|_~76_combout\);

-- Location: LCCOMB_X30_Y17_N12
\inst4|d[5][2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~59_combout\ = (\inst4|sorteio|dezena\(2) & ((\inst4|_~75_combout\) # ((\inst4|d[5][2]~q\ & \inst4|_~76_combout\)))) # (!\inst4|sorteio|dezena\(2) & (\inst4|d[5][2]~q\ & (\inst4|_~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(2),
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|_~76_combout\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|d[5][2]~59_combout\);

-- Location: LCCOMB_X30_Y17_N2
\inst4|d[5][2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~58_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|_~51_combout\) # (\inst4|_~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~60_combout\,
	combout => \inst4|d[5][2]~58_combout\);

-- Location: LCCOMB_X30_Y17_N4
\inst4|d[5][2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~57_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|_~5_combout\) # ((\inst4|_~46_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|d[5][2]~57_combout\);

-- Location: LCCOMB_X30_Y17_N10
\inst4|d[5][2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~60_combout\ = (\inst4|d[5][2]~q\ & (((\inst4|_~71_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[5][2]~60_combout\);

-- Location: LCCOMB_X30_Y17_N8
\inst4|d[5][2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~61_combout\ = (\inst4|d[5][2]~59_combout\) # ((\inst4|d[5][2]~58_combout\) # ((\inst4|d[5][2]~57_combout\) # (\inst4|d[5][2]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~59_combout\,
	datab => \inst4|d[5][2]~58_combout\,
	datac => \inst4|d[5][2]~57_combout\,
	datad => \inst4|d[5][2]~60_combout\,
	combout => \inst4|d[5][2]~61_combout\);

-- Location: FF_X30_Y17_N9
\inst4|d[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[5][2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][2]~q\);

-- Location: LCCOMB_X25_Y18_N24
\inst8|segmentos[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|segmentos[6]~9_combout\ = (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	combout => \inst8|segmentos[6]~9_combout\);

-- Location: LCCOMB_X25_Y18_N22
\inst4|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~4_combout\ = (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & \inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	combout => \inst4|_~4_combout\);

-- Location: LCCOMB_X28_Y19_N26
\inst4|d_atual[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~29_combout\ = (\inst4|d[5][2]~q\ & (!\inst4|_~4_combout\ & ((!\inst4|d[1][2]~q\) # (!\inst8|segmentos[6]~9_combout\)))) # (!\inst4|d[5][2]~q\ & (((!\inst4|d[1][2]~q\)) # (!\inst8|segmentos[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~q\,
	datab => \inst8|segmentos[6]~9_combout\,
	datac => \inst4|d[1][2]~q\,
	datad => \inst4|_~4_combout\,
	combout => \inst4|d_atual[2]~29_combout\);

-- Location: LCCOMB_X25_Y18_N28
\inst4|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~2_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	combout => \inst4|_~2_combout\);

-- Location: LCCOMB_X25_Y18_N10
\inst4|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~3_combout\ = (\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	combout => \inst4|_~3_combout\);

-- Location: LCCOMB_X28_Y19_N8
\inst4|d_atual[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~28_combout\ = (\inst4|d[4][2]~q\ & (!\inst4|_~3_combout\ & ((!\inst4|d[3][2]~q\) # (!\inst4|_~2_combout\)))) # (!\inst4|d[4][2]~q\ & (((!\inst4|d[3][2]~q\)) # (!\inst4|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~q\,
	datab => \inst4|_~2_combout\,
	datac => \inst4|d[3][2]~q\,
	datad => \inst4|_~3_combout\,
	combout => \inst4|d_atual[2]~28_combout\);

-- Location: LCCOMB_X25_Y18_N0
\inst4|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~0_combout\ = (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	combout => \inst4|_~0_combout\);

-- Location: LCCOMB_X30_Y19_N14
\inst4|d_atual[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~27_combout\ = (\inst4|_~0_combout\ & (!\inst4|d[2][2]~q\ & ((!\inst4|d[6][2]~q\) # (!\inst4|_~1_combout\)))) # (!\inst4|_~0_combout\ & (((!\inst4|d[6][2]~q\)) # (!\inst4|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~0_combout\,
	datab => \inst4|_~1_combout\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst4|d[2][2]~q\,
	combout => \inst4|d_atual[2]~27_combout\);

-- Location: LCCOMB_X28_Y19_N28
\inst4|d_atual[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~30_combout\ = (\inst4|d_atual[2]~29_combout\ & (\inst4|d_atual[2]~28_combout\ & \inst4|d_atual[2]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~29_combout\,
	datac => \inst4|d_atual[2]~28_combout\,
	datad => \inst4|d_atual[2]~27_combout\,
	combout => \inst4|d_atual[2]~30_combout\);

-- Location: LCCOMB_X31_Y18_N10
\inst4|d_atual[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[3]~31_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~0_combout\) # ((\inst4|d[6][3]~q\ & \inst4|_~1_combout\)))) # (!\inst4|d[2][3]~q\ & (\inst4|d[6][3]~q\ & ((\inst4|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst4|_~0_combout\,
	datad => \inst4|_~1_combout\,
	combout => \inst4|d_atual[3]~31_combout\);

-- Location: LCCOMB_X29_Y18_N16
\inst4|d_atual[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[3]~33_combout\ = (\inst4|_~4_combout\ & ((\inst4|d[5][3]~q\) # ((\inst4|_~3_combout\ & \inst4|d[4][3]~q\)))) # (!\inst4|_~4_combout\ & (\inst4|_~3_combout\ & ((\inst4|d[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~4_combout\,
	datab => \inst4|_~3_combout\,
	datac => \inst4|d[5][3]~q\,
	datad => \inst4|d[4][3]~q\,
	combout => \inst4|d_atual[3]~33_combout\);

-- Location: LCCOMB_X31_Y18_N24
\inst4|d_atual[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[3]~32_combout\ = (\inst8|segmentos[6]~9_combout\ & ((\inst4|d[1][3]~q\) # ((\inst4|_~2_combout\ & \inst4|d[3][3]~q\)))) # (!\inst8|segmentos[6]~9_combout\ & (((\inst4|_~2_combout\ & \inst4|d[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|segmentos[6]~9_combout\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~2_combout\,
	datad => \inst4|d[3][3]~q\,
	combout => \inst4|d_atual[3]~32_combout\);

-- Location: LCCOMB_X31_Y18_N2
\inst4|d_atual[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual\(3) = (\inst4|d_atual[3]~31_combout\) # ((\inst4|d_atual[3]~33_combout\) # (\inst4|d_atual[3]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[3]~31_combout\,
	datac => \inst4|d_atual[3]~33_combout\,
	datad => \inst4|d_atual[3]~32_combout\,
	combout => \inst4|d_atual\(3));

-- Location: LCCOMB_X30_Y19_N26
\inst4|d_atual[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[1]~24_combout\ = (\inst4|_~0_combout\ & ((\inst4|d[2][1]~q\) # ((\inst4|_~1_combout\ & \inst4|d[6][1]~q\)))) # (!\inst4|_~0_combout\ & (\inst4|_~1_combout\ & (\inst4|d[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~0_combout\,
	datab => \inst4|_~1_combout\,
	datac => \inst4|d[6][1]~q\,
	datad => \inst4|d[2][1]~q\,
	combout => \inst4|d_atual[1]~24_combout\);

-- Location: LCCOMB_X29_Y18_N2
\inst4|d_atual[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[1]~25_combout\ = (\inst4|d[1][1]~q\ & ((\inst8|segmentos[6]~9_combout\) # ((\inst4|d[3][1]~q\ & \inst4|_~2_combout\)))) # (!\inst4|d[1][1]~q\ & (((\inst4|d[3][1]~q\ & \inst4|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~q\,
	datab => \inst8|segmentos[6]~9_combout\,
	datac => \inst4|d[3][1]~q\,
	datad => \inst4|_~2_combout\,
	combout => \inst4|d_atual[1]~25_combout\);

-- Location: LCCOMB_X28_Y17_N28
\inst4|d_atual[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[1]~26_combout\ = (\inst4|_~3_combout\ & ((\inst4|d[4][1]~q\) # ((\inst4|d[5][1]~q\ & \inst4|_~4_combout\)))) # (!\inst4|_~3_combout\ & (((\inst4|d[5][1]~q\ & \inst4|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~3_combout\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|d[5][1]~q\,
	datad => \inst4|_~4_combout\,
	combout => \inst4|d_atual[1]~26_combout\);

-- Location: LCCOMB_X25_Y20_N24
\inst4|d_atual[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual\(1) = (\inst4|d_atual[1]~24_combout\) # ((\inst4|d_atual[1]~25_combout\) # (\inst4|d_atual[1]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d_atual[1]~24_combout\,
	datac => \inst4|d_atual[1]~25_combout\,
	datad => \inst4|d_atual[1]~26_combout\,
	combout => \inst4|d_atual\(1));

-- Location: LCCOMB_X25_Y20_N10
\inst2|seg[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~37_combout\ = (\inst4|d_atual[2]~30_combout\ & (!\inst4|d_atual\(3))) # (!\inst4|d_atual[2]~30_combout\ & (\inst4|d_atual\(3) & \inst4|d_atual\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~30_combout\,
	datac => \inst4|d_atual\(3),
	datad => \inst4|d_atual\(1),
	combout => \inst2|seg[6]~37_combout\);

-- Location: LCCOMB_X28_Y19_N10
\inst4|d_atual[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[4]~35_combout\ = (\inst4|_~3_combout\ & (!\inst4|d[4][4]~q\ & ((!\inst4|d[3][4]~q\) # (!\inst4|_~2_combout\)))) # (!\inst4|_~3_combout\ & (((!\inst4|d[3][4]~q\)) # (!\inst4|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~3_combout\,
	datab => \inst4|_~2_combout\,
	datac => \inst4|d[3][4]~q\,
	datad => \inst4|d[4][4]~q\,
	combout => \inst4|d_atual[4]~35_combout\);

-- Location: LCCOMB_X28_Y19_N12
\inst4|d_atual[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[4]~36_combout\ = (\inst4|d[5][4]~q\ & (!\inst4|_~4_combout\ & ((!\inst4|d[1][4]~q\) # (!\inst8|segmentos[6]~9_combout\)))) # (!\inst4|d[5][4]~q\ & (((!\inst4|d[1][4]~q\)) # (!\inst8|segmentos[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst8|segmentos[6]~9_combout\,
	datac => \inst4|d[1][4]~q\,
	datad => \inst4|_~4_combout\,
	combout => \inst4|d_atual[4]~36_combout\);

-- Location: LCCOMB_X31_Y18_N14
\inst4|d_atual[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[4]~34_combout\ = (\inst4|d[2][4]~q\ & (!\inst4|_~0_combout\ & ((!\inst4|_~1_combout\) # (!\inst4|d[6][4]~q\)))) # (!\inst4|d[2][4]~q\ & (((!\inst4|_~1_combout\)) # (!\inst4|d[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~q\,
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|_~0_combout\,
	datad => \inst4|_~1_combout\,
	combout => \inst4|d_atual[4]~34_combout\);

-- Location: LCCOMB_X25_Y19_N0
\inst2|seg[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~38_combout\ = (\inst2|_~2_combout\ & (\inst4|d_atual[4]~35_combout\ & (\inst4|d_atual[4]~36_combout\ & \inst4|d_atual[4]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~2_combout\,
	datab => \inst4|d_atual[4]~35_combout\,
	datac => \inst4|d_atual[4]~36_combout\,
	datad => \inst4|d_atual[4]~34_combout\,
	combout => \inst2|seg[2]~38_combout\);

-- Location: LCCOMB_X25_Y18_N6
\inst4|u_atual[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[1]~28_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~2_combout\) # ((\inst4|u[1][1]~q\ & \inst8|segmentos[6]~9_combout\)))) # (!\inst4|u[3][1]~q\ & (((\inst4|u[1][1]~q\ & \inst8|segmentos[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|_~2_combout\,
	datac => \inst4|u[1][1]~q\,
	datad => \inst8|segmentos[6]~9_combout\,
	combout => \inst4|u_atual[1]~28_combout\);

-- Location: LCCOMB_X25_Y18_N4
\inst4|u_atual[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[1]~29_combout\ = (\inst4|_~3_combout\ & ((\inst4|u[4][1]~q\) # ((\inst4|u[5][1]~q\ & \inst4|_~4_combout\)))) # (!\inst4|_~3_combout\ & (\inst4|u[5][1]~q\ & (\inst4|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~3_combout\,
	datab => \inst4|u[5][1]~q\,
	datac => \inst4|_~4_combout\,
	datad => \inst4|u[4][1]~q\,
	combout => \inst4|u_atual[1]~29_combout\);

-- Location: LCCOMB_X25_Y18_N16
\inst4|u_atual[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[1]~27_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~1_combout\) # ((\inst4|u[2][1]~q\ & \inst4|_~0_combout\)))) # (!\inst4|u[6][1]~q\ & (\inst4|u[2][1]~q\ & ((\inst4|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|_~1_combout\,
	datad => \inst4|_~0_combout\,
	combout => \inst4|u_atual[1]~27_combout\);

-- Location: LCCOMB_X25_Y18_N14
\inst4|u_atual[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual\(1) = (\inst4|u_atual[1]~28_combout\) # ((\inst4|u_atual[1]~29_combout\) # (\inst4|u_atual[1]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[1]~28_combout\,
	datac => \inst4|u_atual[1]~29_combout\,
	datad => \inst4|u_atual[1]~27_combout\,
	combout => \inst4|u_atual\(1));

-- Location: LCCOMB_X28_Y19_N24
\inst4|u_atual[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[3]~36_combout\ = (\inst4|_~3_combout\ & ((\inst4|u[4][3]~q\) # ((\inst4|_~4_combout\ & \inst4|u[5][3]~q\)))) # (!\inst4|_~3_combout\ & (\inst4|_~4_combout\ & ((\inst4|u[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~3_combout\,
	datab => \inst4|_~4_combout\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|u[5][3]~q\,
	combout => \inst4|u_atual[3]~36_combout\);

-- Location: LCCOMB_X28_Y19_N22
\inst4|u_atual[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[3]~35_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~2_combout\) # ((\inst4|u[1][3]~q\ & \inst8|segmentos[6]~9_combout\)))) # (!\inst4|u[3][3]~q\ & (\inst4|u[1][3]~q\ & ((\inst8|segmentos[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|u[1][3]~q\,
	datac => \inst4|_~2_combout\,
	datad => \inst8|segmentos[6]~9_combout\,
	combout => \inst4|u_atual[3]~35_combout\);

-- Location: LCCOMB_X29_Y17_N0
\inst4|u_atual[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[3]~34_combout\ = (\inst4|_~1_combout\ & ((\inst4|u[6][3]~q\) # ((\inst4|u[2][3]~q\ & \inst4|_~0_combout\)))) # (!\inst4|_~1_combout\ & (\inst4|u[2][3]~q\ & ((\inst4|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~1_combout\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|_~0_combout\,
	combout => \inst4|u_atual[3]~34_combout\);

-- Location: LCCOMB_X28_Y19_N18
\inst4|u_atual[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual\(3) = (\inst4|u_atual[3]~36_combout\) # ((\inst4|u_atual[3]~35_combout\) # (\inst4|u_atual[3]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u_atual[3]~36_combout\,
	datac => \inst4|u_atual[3]~35_combout\,
	datad => \inst4|u_atual[3]~34_combout\,
	combout => \inst4|u_atual\(3));

-- Location: LCCOMB_X25_Y18_N12
\inst4|u_atual[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[2]~30_combout\ = (\inst4|u[6][2]~q\ & (!\inst4|_~1_combout\ & ((!\inst4|_~0_combout\) # (!\inst4|u[2][2]~q\)))) # (!\inst4|u[6][2]~q\ & (((!\inst4|_~0_combout\)) # (!\inst4|u[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~q\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|_~1_combout\,
	datad => \inst4|_~0_combout\,
	combout => \inst4|u_atual[2]~30_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst4|u_atual[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[2]~31_combout\ = (\inst4|_~3_combout\ & (!\inst4|u[4][2]~q\ & ((!\inst4|_~2_combout\) # (!\inst4|u[3][2]~q\)))) # (!\inst4|_~3_combout\ & (((!\inst4|_~2_combout\) # (!\inst4|u[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~3_combout\,
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst4|_~2_combout\,
	combout => \inst4|u_atual[2]~31_combout\);

-- Location: LCCOMB_X29_Y18_N4
\inst4|u_atual[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[2]~32_combout\ = (\inst4|u[5][2]~q\ & (!\inst4|_~4_combout\ & ((!\inst4|u[1][2]~q\) # (!\inst8|segmentos[6]~9_combout\)))) # (!\inst4|u[5][2]~q\ & (((!\inst4|u[1][2]~q\)) # (!\inst8|segmentos[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst8|segmentos[6]~9_combout\,
	datac => \inst4|_~4_combout\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst4|u_atual[2]~32_combout\);

-- Location: LCCOMB_X25_Y18_N18
\inst4|u_atual[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[2]~33_combout\ = (\inst4|u_atual[2]~30_combout\ & (\inst4|u_atual[2]~31_combout\ & \inst4|u_atual[2]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[2]~30_combout\,
	datab => \inst4|u_atual[2]~31_combout\,
	datac => \inst4|u_atual[2]~32_combout\,
	combout => \inst4|u_atual[2]~33_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst4|u_atual[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[4]~24_combout\ = (\inst4|u[2][4]~q\ & (!\inst4|_~0_combout\ & ((!\inst4|u[6][4]~q\) # (!\inst4|_~1_combout\)))) # (!\inst4|u[2][4]~q\ & (((!\inst4|u[6][4]~q\)) # (!\inst4|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|_~1_combout\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|_~0_combout\,
	combout => \inst4|u_atual[4]~24_combout\);

-- Location: LCCOMB_X28_Y19_N30
\inst4|u_atual[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[4]~26_combout\ = (\inst4|u[1][4]~q\ & (!\inst8|segmentos[6]~9_combout\ & ((!\inst4|_~4_combout\) # (!\inst4|u[5][4]~q\)))) # (!\inst4|u[1][4]~q\ & (((!\inst4|_~4_combout\) # (!\inst4|u[5][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst8|segmentos[6]~9_combout\,
	datac => \inst4|u[5][4]~q\,
	datad => \inst4|_~4_combout\,
	combout => \inst4|u_atual[4]~26_combout\);

-- Location: LCCOMB_X28_Y19_N20
\inst4|u_atual[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[4]~25_combout\ = (\inst4|_~3_combout\ & (!\inst4|u[4][4]~q\ & ((!\inst4|u[3][4]~q\) # (!\inst4|_~2_combout\)))) # (!\inst4|_~3_combout\ & (((!\inst4|u[3][4]~q\)) # (!\inst4|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~3_combout\,
	datab => \inst4|_~2_combout\,
	datac => \inst4|u[3][4]~q\,
	datad => \inst4|u[4][4]~q\,
	combout => \inst4|u_atual[4]~25_combout\);

-- Location: LCCOMB_X28_Y19_N0
\inst2|seg[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~35_combout\ = (\inst4|u_atual[4]~24_combout\ & (\inst2|_~3_combout\ & (\inst4|u_atual[4]~26_combout\ & \inst4|u_atual[4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[4]~24_combout\,
	datab => \inst2|_~3_combout\,
	datac => \inst4|u_atual[4]~26_combout\,
	datad => \inst4|u_atual[4]~25_combout\,
	combout => \inst2|seg[6]~35_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst2|seg[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~36_combout\ = (\inst2|seg[6]~35_combout\ & ((\inst4|u_atual\(3) & (\inst4|u_atual\(1) & !\inst4|u_atual[2]~33_combout\)) # (!\inst4|u_atual\(3) & ((\inst4|u_atual[2]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual\(1),
	datab => \inst4|u_atual\(3),
	datac => \inst4|u_atual[2]~33_combout\,
	datad => \inst2|seg[6]~35_combout\,
	combout => \inst2|seg[6]~36_combout\);

-- Location: LCCOMB_X28_Y20_N12
\inst2|seg[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~34_combout\ = (!\inst4|count|cnt\(1) & (\inst2|_~0_combout\ & (\inst4|count|cnt\(2) $ (!\inst4|count|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(3),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[6]~34_combout\);

-- Location: LCCOMB_X25_Y20_N0
\inst2|seg[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~39_combout\ = (\inst2|seg[6]~36_combout\) # ((\inst2|seg[6]~34_combout\) # ((\inst2|seg[6]~37_combout\ & \inst2|seg[2]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[6]~37_combout\,
	datab => \inst2|seg[2]~38_combout\,
	datac => \inst2|seg[6]~36_combout\,
	datad => \inst2|seg[6]~34_combout\,
	combout => \inst2|seg[6]~39_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst2|seg[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~40_combout\ = (\inst2|seg[6]~35_combout\ & ((\inst4|u_atual\(1) & ((!\inst4|u_atual[2]~33_combout\) # (!\inst4|u_atual\(3)))) # (!\inst4|u_atual\(1) & (!\inst4|u_atual\(3) & !\inst4|u_atual[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual\(1),
	datab => \inst4|u_atual\(3),
	datac => \inst4|u_atual[2]~33_combout\,
	datad => \inst2|seg[6]~35_combout\,
	combout => \inst2|seg[5]~40_combout\);

-- Location: LCCOMB_X24_Y20_N8
\inst2|seg[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~41_combout\ = (\inst2|_~0_combout\ & ((\inst4|count|cnt\(2) & ((!\inst4|count|cnt\(1)))) # (!\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datab => \inst4|count|cnt\(2),
	datac => \inst2|_~0_combout\,
	datad => \inst4|count|cnt\(1),
	combout => \inst2|seg[5]~41_combout\);

-- Location: LCCOMB_X25_Y20_N18
\inst2|seg[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~42_combout\ = (\inst2|seg[2]~38_combout\ & ((\inst4|d_atual[2]~30_combout\ & (!\inst4|d_atual\(3) & \inst4|d_atual\(1))) # (!\inst4|d_atual[2]~30_combout\ & ((\inst4|d_atual\(1)) # (!\inst4|d_atual\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~30_combout\,
	datab => \inst2|seg[2]~38_combout\,
	datac => \inst4|d_atual\(3),
	datad => \inst4|d_atual\(1),
	combout => \inst2|seg[5]~42_combout\);

-- Location: LCCOMB_X24_Y20_N18
\inst2|seg[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~43_combout\ = (\inst2|_~1_combout\) # ((\inst2|seg[5]~40_combout\) # ((\inst2|seg[5]~41_combout\) # (\inst2|seg[5]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~1_combout\,
	datab => \inst2|seg[5]~40_combout\,
	datac => \inst2|seg[5]~41_combout\,
	datad => \inst2|seg[5]~42_combout\,
	combout => \inst2|seg[5]~43_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst2|seg[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~44_combout\ = (\inst2|_~0_combout\ & (((!\inst4|count|cnt\(3) & \inst4|count|cnt\(2))) # (!\inst4|count|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datab => \inst4|count|cnt\(2),
	datac => \inst2|_~0_combout\,
	datad => \inst4|count|cnt\(1),
	combout => \inst2|seg[4]~44_combout\);

-- Location: LCCOMB_X28_Y19_N2
\inst4|u_atual[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[4]~37_combout\ = (\inst4|u_atual[4]~26_combout\ & (\inst4|u_atual[4]~24_combout\ & \inst4|u_atual[4]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[4]~26_combout\,
	datac => \inst4|u_atual[4]~24_combout\,
	datad => \inst4|u_atual[4]~25_combout\,
	combout => \inst4|u_atual[4]~37_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst2|seg[6]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~64_combout\ = (\inst3|cnt\(2) & (\inst4|u_atual\(3) & (\inst3|cnt\(1) & \inst4|u_atual[4]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datab => \inst4|u_atual\(3),
	datac => \inst3|cnt\(1),
	datad => \inst4|u_atual[4]~37_combout\,
	combout => \inst2|seg[6]~64_combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst2|seg[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~45_combout\ = (\inst2|_~1_combout\) # ((\inst2|seg[4]~44_combout\) # ((\inst4|u_atual[2]~33_combout\ & \inst2|seg[6]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~1_combout\,
	datab => \inst2|seg[4]~44_combout\,
	datac => \inst4|u_atual[2]~33_combout\,
	datad => \inst2|seg[6]~64_combout\,
	combout => \inst2|seg[4]~45_combout\);

-- Location: LCCOMB_X25_Y19_N2
\inst4|d_atual[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[4]~37_combout\ = (\inst4|d_atual[4]~35_combout\ & (\inst4|d_atual[4]~36_combout\ & \inst4|d_atual[4]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d_atual[4]~35_combout\,
	datac => \inst4|d_atual[4]~36_combout\,
	datad => \inst4|d_atual[4]~34_combout\,
	combout => \inst4|d_atual[4]~37_combout\);

-- Location: LCCOMB_X25_Y20_N20
\inst2|seg[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~46_combout\ = (\inst2|_~2_combout\ & ((\inst4|d_atual[1]~26_combout\) # ((\inst4|d_atual[1]~25_combout\) # (\inst4|d_atual[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~2_combout\,
	datab => \inst4|d_atual[1]~26_combout\,
	datac => \inst4|d_atual[1]~25_combout\,
	datad => \inst4|d_atual[1]~24_combout\,
	combout => \inst2|seg[4]~46_combout\);

-- Location: LCCOMB_X25_Y20_N6
\inst2|seg[4]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~47_combout\ = (\inst2|seg[4]~46_combout\ & ((\inst4|d_atual[4]~37_combout\) # ((\inst4|d_atual[2]~30_combout\ & !\inst4|d_atual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~30_combout\,
	datab => \inst4|d_atual[4]~37_combout\,
	datac => \inst4|d_atual\(3),
	datad => \inst2|seg[4]~46_combout\,
	combout => \inst2|seg[4]~47_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst2|seg[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~48_combout\ = (\inst4|u_atual[4]~37_combout\) # ((!\inst4|u_atual\(3) & \inst4|u_atual[2]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u_atual\(3),
	datac => \inst4|u_atual[2]~33_combout\,
	datad => \inst4|u_atual[4]~37_combout\,
	combout => \inst2|seg[4]~48_combout\);

-- Location: LCCOMB_X25_Y20_N8
\inst2|seg[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~49_combout\ = (\inst2|seg[4]~47_combout\) # ((\inst4|u_atual\(1) & (\inst2|seg[4]~48_combout\ & \inst2|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~47_combout\,
	datab => \inst4|u_atual\(1),
	datac => \inst2|seg[4]~48_combout\,
	datad => \inst2|_~3_combout\,
	combout => \inst2|seg[4]~49_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst2|seg[1]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~65_combout\ = (!\inst3|cnt\(1) & (\inst4|d_atual[4]~37_combout\ & (\inst4|d_atual\(3) & \inst3|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datab => \inst4|d_atual[4]~37_combout\,
	datac => \inst4|d_atual\(3),
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[1]~65_combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst2|seg[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~50_combout\ = (\inst2|seg[4]~45_combout\) # ((\inst2|seg[4]~49_combout\) # ((\inst2|seg[1]~65_combout\ & \inst4|d_atual[2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~45_combout\,
	datab => \inst2|seg[4]~49_combout\,
	datac => \inst2|seg[1]~65_combout\,
	datad => \inst4|d_atual[2]~30_combout\,
	combout => \inst2|seg[4]~50_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst2|seg[3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~51_combout\ = (\inst2|seg[2]~38_combout\ & ((\inst4|d_atual[2]~30_combout\ & (\inst4|d_atual\(3) $ (\inst4|d_atual\(1)))) # (!\inst4|d_atual[2]~30_combout\ & (\inst4|d_atual\(3) & \inst4|d_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~30_combout\,
	datab => \inst2|seg[2]~38_combout\,
	datac => \inst4|d_atual\(3),
	datad => \inst4|d_atual\(1),
	combout => \inst2|seg[3]~51_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst2|seg[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~53_combout\ = (\inst2|seg[6]~35_combout\ & ((\inst4|u_atual\(1) & (\inst4|u_atual\(3) $ (\inst4|u_atual[2]~33_combout\))) # (!\inst4|u_atual\(1) & (\inst4|u_atual\(3) & \inst4|u_atual[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual\(1),
	datab => \inst4|u_atual\(3),
	datac => \inst4|u_atual[2]~33_combout\,
	datad => \inst2|seg[6]~35_combout\,
	combout => \inst2|seg[3]~53_combout\);

-- Location: LCCOMB_X28_Y20_N6
\inst2|seg[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~52_combout\ = (\inst2|_~0_combout\ & ((\inst4|count|cnt\(2) & (\inst4|count|cnt\(1) $ (\inst4|count|cnt\(3)))) # (!\inst4|count|cnt\(2) & (!\inst4|count|cnt\(1) & !\inst4|count|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(3),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[3]~52_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst2|seg[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~54_combout\ = (\inst2|_~1_combout\) # ((\inst2|seg[3]~51_combout\) # ((\inst2|seg[3]~53_combout\) # (\inst2|seg[3]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~1_combout\,
	datab => \inst2|seg[3]~51_combout\,
	datac => \inst2|seg[3]~53_combout\,
	datad => \inst2|seg[3]~52_combout\,
	combout => \inst2|seg[3]~54_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst2|seg[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~55_combout\ = (!\inst4|u_atual\(1) & (!\inst4|u_atual\(3) & (!\inst4|u_atual[2]~33_combout\ & \inst2|seg[6]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual\(1),
	datab => \inst4|u_atual\(3),
	datac => \inst4|u_atual[2]~33_combout\,
	datad => \inst2|seg[6]~35_combout\,
	combout => \inst2|seg[2]~55_combout\);

-- Location: LCCOMB_X22_Y20_N26
\inst2|seg[2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~66_combout\ = (!\inst3|cnt\(2) & ((\inst3|cnt\(1)) # (\inst4|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(2),
	datac => \inst3|cnt\(1),
	datad => \inst4|_~0_combout\,
	combout => \inst2|seg[2]~66_combout\);

-- Location: LCCOMB_X25_Y20_N22
\inst2|seg[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~56_combout\ = (!\inst4|d_atual[2]~30_combout\ & (\inst2|seg[2]~38_combout\ & (!\inst4|d_atual\(3) & !\inst4|d_atual\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~30_combout\,
	datab => \inst2|seg[2]~38_combout\,
	datac => \inst4|d_atual\(3),
	datad => \inst4|d_atual\(1),
	combout => \inst2|seg[2]~56_combout\);

-- Location: LCCOMB_X22_Y20_N0
\inst2|seg[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg\(2) = (\inst2|seg[2]~55_combout\) # ((\inst2|seg[2]~66_combout\) # (\inst2|seg[2]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seg[2]~55_combout\,
	datac => \inst2|seg[2]~66_combout\,
	datad => \inst2|seg[2]~56_combout\,
	combout => \inst2|seg\(2));

-- Location: LCCOMB_X25_Y20_N12
\inst2|seg[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~57_combout\ = (!\inst3|cnt\(2) & ((\inst4|_~1_combout\) # ((\inst3|cnt\(1)) # (\inst4|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datab => \inst4|_~1_combout\,
	datac => \inst3|cnt\(1),
	datad => \inst4|_~4_combout\,
	combout => \inst2|seg[1]~57_combout\);

-- Location: LCCOMB_X25_Y20_N26
\inst2|seg[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~58_combout\ = (\inst2|seg[1]~57_combout\) # ((\inst2|seg[1]~65_combout\ & (\inst4|d_atual\(1) $ (!\inst4|d_atual[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[1]~57_combout\,
	datab => \inst4|d_atual\(1),
	datac => \inst2|seg[1]~65_combout\,
	datad => \inst4|d_atual[2]~30_combout\,
	combout => \inst2|seg[1]~58_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst2|seg[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~59_combout\ = (\inst2|seg[1]~58_combout\) # ((\inst2|seg[6]~64_combout\ & (\inst4|u_atual[2]~33_combout\ $ (!\inst4|u_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[6]~64_combout\,
	datab => \inst2|seg[1]~58_combout\,
	datac => \inst4|u_atual[2]~33_combout\,
	datad => \inst4|u_atual\(1),
	combout => \inst2|seg[1]~59_combout\);

-- Location: LCCOMB_X25_Y19_N8
\inst2|seg[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~62_combout\ = (\inst2|_~1_combout\) # ((\inst2|_~0_combout\ & ((\inst4|_~3_combout\) # (\inst8|segmentos[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~0_combout\,
	datab => \inst4|_~3_combout\,
	datac => \inst2|_~1_combout\,
	datad => \inst8|segmentos[6]~9_combout\,
	combout => \inst2|seg[0]~62_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst2|seg[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~61_combout\ = (\inst4|u_atual[2]~33_combout\ & (\inst2|seg[6]~35_combout\ & (\inst4|u_atual\(1) $ (\inst4|u_atual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual\(1),
	datab => \inst4|u_atual\(3),
	datac => \inst4|u_atual[2]~33_combout\,
	datad => \inst2|seg[6]~35_combout\,
	combout => \inst2|seg[0]~61_combout\);

-- Location: LCCOMB_X25_Y20_N4
\inst2|seg[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~60_combout\ = (\inst4|d_atual[2]~30_combout\ & (\inst2|seg[2]~38_combout\ & (\inst4|d_atual\(3) $ (\inst4|d_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~30_combout\,
	datab => \inst2|seg[2]~38_combout\,
	datac => \inst4|d_atual\(3),
	datad => \inst4|d_atual\(1),
	combout => \inst2|seg[0]~60_combout\);

-- Location: LCCOMB_X24_Y20_N12
\inst2|seg[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~63_combout\ = (\inst2|seg[0]~62_combout\) # ((\inst2|seg[0]~61_combout\) # (\inst2|seg[0]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seg[0]~62_combout\,
	datac => \inst2|seg[0]~61_combout\,
	datad => \inst2|seg[0]~60_combout\,
	combout => \inst2|seg[0]~63_combout\);

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


