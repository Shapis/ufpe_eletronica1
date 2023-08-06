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

-- DATE "08/06/2023 12:12:57"

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
	lcd_rw : OUT std_logic;
	clock : IN std_logic;
	key : IN std_logic_vector(1 DOWNTO 1);
	lcd_en : OUT std_logic;
	lcd_rs : OUT std_logic;
	dig : OUT std_logic_vector(4 DOWNTO 1);
	lcd_d : OUT std_logic_vector(7 DOWNTO 0);
	seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END projeto2;

-- Design Ports Information
-- lcd_rw	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[4]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[7]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[6]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_key : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_dig : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_lcd_d : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|debounc1|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|div_sorteio|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|deb|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \dig[4]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \lcd_d[7]~output_o\ : std_logic;
SIGNAL \lcd_d[6]~output_o\ : std_logic;
SIGNAL \lcd_d[5]~output_o\ : std_logic;
SIGNAL \lcd_d[4]~output_o\ : std_logic;
SIGNAL \lcd_d[3]~output_o\ : std_logic;
SIGNAL \lcd_d[2]~output_o\ : std_logic;
SIGNAL \lcd_d[1]~output_o\ : std_logic;
SIGNAL \lcd_d[0]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst15|clk_count[9]~36\ : std_logic;
SIGNAL \inst15|clk_count[10]~37_combout\ : std_logic;
SIGNAL \inst15|clk_count[10]~38\ : std_logic;
SIGNAL \inst15|clk_count[11]~39_combout\ : std_logic;
SIGNAL \inst15|clk_count[11]~40\ : std_logic;
SIGNAL \inst15|clk_count[12]~41_combout\ : std_logic;
SIGNAL \inst15|clk_count[12]~42\ : std_logic;
SIGNAL \inst15|clk_count[13]~43_combout\ : std_logic;
SIGNAL \inst15|clk_count[13]~44\ : std_logic;
SIGNAL \inst15|clk_count[14]~45_combout\ : std_logic;
SIGNAL \inst15|clk_count[14]~46\ : std_logic;
SIGNAL \inst15|clk_count[15]~47_combout\ : std_logic;
SIGNAL \inst15|clk_count[15]~48\ : std_logic;
SIGNAL \inst15|clk_count[16]~49_combout\ : std_logic;
SIGNAL \inst15|clk_count[16]~50\ : std_logic;
SIGNAL \inst15|clk_count[17]~51_combout\ : std_logic;
SIGNAL \inst15|clk_count[17]~52\ : std_logic;
SIGNAL \inst15|clk_count[18]~53_combout\ : std_logic;
SIGNAL \inst15|clk_count[18]~54\ : std_logic;
SIGNAL \inst15|clk_count[19]~55_combout\ : std_logic;
SIGNAL \inst15|clk_count[19]~56\ : std_logic;
SIGNAL \inst15|clk_count[20]~58_combout\ : std_logic;
SIGNAL \inst15|clk_count[20]~59\ : std_logic;
SIGNAL \inst15|clk_count[21]~60_combout\ : std_logic;
SIGNAL \inst15|clk_count[21]~61\ : std_logic;
SIGNAL \inst15|clk_count[22]~62_combout\ : std_logic;
SIGNAL \inst15|op_10~2_combout\ : std_logic;
SIGNAL \inst15|_~2_combout\ : std_logic;
SIGNAL \inst15|_~6_combout\ : std_logic;
SIGNAL \inst15|op_5~1_combout\ : std_logic;
SIGNAL \inst15|op_4~2_combout\ : std_logic;
SIGNAL \inst15|op_4~1_combout\ : std_logic;
SIGNAL \inst15|op_8~2_combout\ : std_logic;
SIGNAL \inst15|op_12~0_combout\ : std_logic;
SIGNAL \inst15|op_12~1_combout\ : std_logic;
SIGNAL \inst15|busy~q\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~8_combout\ : std_logic;
SIGNAL \inst14|lcd_enable~feeder_combout\ : std_logic;
SIGNAL \inst14|lcd_enable~q\ : std_logic;
SIGNAL \inst15|op_1~2_combout\ : std_logic;
SIGNAL \inst15|op_11~2_combout\ : std_logic;
SIGNAL \inst15|op_11~3_combout\ : std_logic;
SIGNAL \inst15|op_6~3_combout\ : std_logic;
SIGNAL \inst15|op_11~4_combout\ : std_logic;
SIGNAL \inst15|op_11~5_combout\ : std_logic;
SIGNAL \inst15|op_11~6_combout\ : std_logic;
SIGNAL \inst15|op_4~0_combout\ : std_logic;
SIGNAL \inst15|op_5~2_combout\ : std_logic;
SIGNAL \inst15|op_5~0_combout\ : std_logic;
SIGNAL \inst15|op_10~3_combout\ : std_logic;
SIGNAL \inst15|op_10~4_combout\ : std_logic;
SIGNAL \inst15|op_10~5_combout\ : std_logic;
SIGNAL \inst15|op_10~6_combout\ : std_logic;
SIGNAL \inst15|op_8~5_combout\ : std_logic;
SIGNAL \inst15|op_8~3_combout\ : std_logic;
SIGNAL \inst15|_~3_combout\ : std_logic;
SIGNAL \inst15|op_8~4_combout\ : std_logic;
SIGNAL \inst15|op_6~1_combout\ : std_logic;
SIGNAL \inst15|op_6~0_combout\ : std_logic;
SIGNAL \inst15|op_6~2_combout\ : std_logic;
SIGNAL \inst15|op_6~4_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~0_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~1_combout\ : std_logic;
SIGNAL \inst15|op_4~4_combout\ : std_logic;
SIGNAL \inst15|op_4~3_combout\ : std_logic;
SIGNAL \inst15|op_4~5_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~2_combout\ : std_logic;
SIGNAL \inst15|_~12_combout\ : std_logic;
SIGNAL \inst15|op_9~3_combout\ : std_logic;
SIGNAL \inst15|op_9~2_combout\ : std_logic;
SIGNAL \inst15|op_9~4_combout\ : std_logic;
SIGNAL \inst15|op_9~5_combout\ : std_logic;
SIGNAL \inst15|_~13_combout\ : std_logic;
SIGNAL \inst15|e~0_combout\ : std_logic;
SIGNAL \inst15|op_1~3_combout\ : std_logic;
SIGNAL \inst15|op_1~8_combout\ : std_logic;
SIGNAL \inst15|op_1~4_combout\ : std_logic;
SIGNAL \inst15|op_1~5_combout\ : std_logic;
SIGNAL \inst15|op_1~7_combout\ : std_logic;
SIGNAL \inst15|op_1~6_combout\ : std_logic;
SIGNAL \inst15|ENERGIZACAO~0_combout\ : std_logic;
SIGNAL \inst15|ENERGIZACAO~q\ : std_logic;
SIGNAL \inst15|_~16_combout\ : std_logic;
SIGNAL \inst15|op_7~2_combout\ : std_logic;
SIGNAL \inst15|op_7~0_combout\ : std_logic;
SIGNAL \inst15|op_7~1_combout\ : std_logic;
SIGNAL \inst15|op_7~3_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~3_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~6_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~7_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~4_combout\ : std_logic;
SIGNAL \inst15|_~20_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~5_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~q\ : std_logic;
SIGNAL \inst15|_~11_combout\ : std_logic;
SIGNAL \inst15|_~19_combout\ : std_logic;
SIGNAL \inst15|PRONTO~0_combout\ : std_logic;
SIGNAL \inst15|PRONTO~1_combout\ : std_logic;
SIGNAL \inst15|PRONTO~q\ : std_logic;
SIGNAL \inst15|ENVIAR~2_combout\ : std_logic;
SIGNAL \inst15|ENVIAR~q\ : std_logic;
SIGNAL \inst15|clk_count[22]~57_combout\ : std_logic;
SIGNAL \inst15|clk_count[1]~64_combout\ : std_logic;
SIGNAL \inst15|clk_count[2]~21_combout\ : std_logic;
SIGNAL \inst15|clk_count[2]~22\ : std_logic;
SIGNAL \inst15|clk_count[3]~23_combout\ : std_logic;
SIGNAL \inst15|clk_count[3]~24\ : std_logic;
SIGNAL \inst15|clk_count[4]~25_combout\ : std_logic;
SIGNAL \inst15|clk_count[4]~26\ : std_logic;
SIGNAL \inst15|clk_count[5]~27_combout\ : std_logic;
SIGNAL \inst15|clk_count[5]~28\ : std_logic;
SIGNAL \inst15|clk_count[6]~29_combout\ : std_logic;
SIGNAL \inst15|clk_count[6]~30\ : std_logic;
SIGNAL \inst15|clk_count[7]~31_combout\ : std_logic;
SIGNAL \inst15|clk_count[7]~32\ : std_logic;
SIGNAL \inst15|clk_count[8]~33_combout\ : std_logic;
SIGNAL \inst15|clk_count[8]~34\ : std_logic;
SIGNAL \inst15|clk_count[9]~35_combout\ : std_logic;
SIGNAL \inst15|_~7_combout\ : std_logic;
SIGNAL \inst15|_~8_combout\ : std_logic;
SIGNAL \inst15|_~9_combout\ : std_logic;
SIGNAL \inst15|_~10_combout\ : std_logic;
SIGNAL \inst15|_~5_combout\ : std_logic;
SIGNAL \inst15|_~4_combout\ : std_logic;
SIGNAL \inst15|e~1_combout\ : std_logic;
SIGNAL \inst15|e~q\ : std_logic;
SIGNAL \inst14|char_14~q\ : std_logic;
SIGNAL \inst14|char_15~q\ : std_logic;
SIGNAL \inst14|char_16~q\ : std_logic;
SIGNAL \inst14|char_17~feeder_combout\ : std_logic;
SIGNAL \inst14|char_17~q\ : std_logic;
SIGNAL \inst14|char_18~q\ : std_logic;
SIGNAL \inst14|char_19~feeder_combout\ : std_logic;
SIGNAL \inst14|char_19~q\ : std_logic;
SIGNAL \inst14|char_20~feeder_combout\ : std_logic;
SIGNAL \inst14|char_20~q\ : std_logic;
SIGNAL \inst14|char_21~q\ : std_logic;
SIGNAL \inst14|char_22~q\ : std_logic;
SIGNAL \inst14|char_23~q\ : std_logic;
SIGNAL \inst14|char_24~feeder_combout\ : std_logic;
SIGNAL \inst14|char_24~q\ : std_logic;
SIGNAL \inst14|char_25~q\ : std_logic;
SIGNAL \inst14|char_26~q\ : std_logic;
SIGNAL \inst14|char_27~feeder_combout\ : std_logic;
SIGNAL \inst14|char_27~q\ : std_logic;
SIGNAL \inst14|char_28~q\ : std_logic;
SIGNAL \inst14|char_29~q\ : std_logic;
SIGNAL \inst14|char_30~q\ : std_logic;
SIGNAL \inst14|char_31~feeder_combout\ : std_logic;
SIGNAL \inst14|char_31~q\ : std_logic;
SIGNAL \inst14|char_32~q\ : std_logic;
SIGNAL \inst14|char_33~feeder_combout\ : std_logic;
SIGNAL \inst14|char_33~q\ : std_logic;
SIGNAL \inst14|char_00~0_combout\ : std_logic;
SIGNAL \inst14|char_00~q\ : std_logic;
SIGNAL \inst14|char_01~0_combout\ : std_logic;
SIGNAL \inst14|char_01~q\ : std_logic;
SIGNAL \inst14|char_02~q\ : std_logic;
SIGNAL \inst14|char_03~feeder_combout\ : std_logic;
SIGNAL \inst14|char_03~q\ : std_logic;
SIGNAL \inst14|char_04~feeder_combout\ : std_logic;
SIGNAL \inst14|char_04~q\ : std_logic;
SIGNAL \inst14|char_05~q\ : std_logic;
SIGNAL \inst14|char_06~q\ : std_logic;
SIGNAL \inst14|char_07~q\ : std_logic;
SIGNAL \inst14|char_08~q\ : std_logic;
SIGNAL \inst14|char_09~q\ : std_logic;
SIGNAL \inst14|char_10~q\ : std_logic;
SIGNAL \inst14|char_11~q\ : std_logic;
SIGNAL \inst14|char_12~feeder_combout\ : std_logic;
SIGNAL \inst14|char_12~q\ : std_logic;
SIGNAL \inst14|char_13~q\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~15_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~16_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~17_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~14_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~12_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~13_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~18_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~9_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~11_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~19_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~92_combout\ : std_logic;
SIGNAL \inst15|_~14_combout\ : std_logic;
SIGNAL \inst15|rs~0_combout\ : std_logic;
SIGNAL \inst15|rs~q\ : std_logic;
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
SIGNAL \inst|count[13]~36\ : std_logic;
SIGNAL \inst|count[14]~37_combout\ : std_logic;
SIGNAL \inst|op_1~0_combout\ : std_logic;
SIGNAL \inst|op_1~1_combout\ : std_logic;
SIGNAL \inst|alt~q\ : std_logic;
SIGNAL \inst|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst3|_~0_combout\ : std_logic;
SIGNAL \inst2|_~0_combout\ : std_logic;
SIGNAL \inst2|_~1_combout\ : std_logic;
SIGNAL \inst2|_~2_combout\ : std_logic;
SIGNAL \inst2|_~3_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[7]~20_combout\ : std_logic;
SIGNAL \inst15|lcd_data[7]~0_combout\ : std_logic;
SIGNAL \inst14|_~0_combout\ : std_logic;
SIGNAL \inst15|lcd_data[6]~1_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|_~0_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[2]~15_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[2]~16\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[3]~17_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[3]~18\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[4]~19_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[4]~20\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[5]~21_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[5]~22\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[6]~23_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[6]~24\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[7]~25_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[7]~26\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[8]~27_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[8]~28\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[9]~29_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[9]~30\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[10]~31_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[10]~32\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[11]~33_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[11]~34\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[12]~35_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[12]~36\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[13]~37_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[13]~38\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[14]~39_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[14]~40\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[15]~41_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[15]~42\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[16]~43_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~q\ : std_logic;
SIGNAL \inst4|deb|ff[2]~0_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~q\ : std_logic;
SIGNAL \inst1|debounc1|ff[2]~0_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst1|debounc1|ff[0]~1_combout\ : std_logic;
SIGNAL \inst1|debounc1|ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|debounc1|ff[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|deb|ff[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|deb|ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|divisor|count[24]~71\ : std_logic;
SIGNAL \inst4|divisor|count[25]~72_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~4_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~5_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~7_combout\ : std_logic;
SIGNAL \inst4|divisor|count[25]~73\ : std_logic;
SIGNAL \inst4|divisor|count[26]~74_combout\ : std_logic;
SIGNAL \inst4|divisor|count[26]~75\ : std_logic;
SIGNAL \inst4|divisor|count[27]~76_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~6_combout\ : std_logic;
SIGNAL \inst4|divisor|_~0_combout\ : std_logic;
SIGNAL \inst4|divisor|count[2]~26_combout\ : std_logic;
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
SIGNAL \inst4|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~q\ : std_logic;
SIGNAL \inst4|temp~0_combout\ : std_logic;
SIGNAL \inst4|temp~2_combout\ : std_logic;
SIGNAL \inst4|temp~q\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~1_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~feeder_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~q\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|sorteio|unidade[3]~1_combout\ : std_logic;
SIGNAL \inst4|sorteio|unidade[4]~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|unidade[2]~2_combout\ : std_logic;
SIGNAL \inst4|sorteio|unidade[1]~3_combout\ : std_logic;
SIGNAL \inst4|sorteio|op_3~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[1]~3_combout\ : std_logic;
SIGNAL \inst4|sorteio|_~1_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[4]~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|_~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|_~2_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[2]~2_combout\ : std_logic;
SIGNAL \inst4|sorteio|op_5~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[3]~1_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|count|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst4|count|_~1_combout\ : std_logic;
SIGNAL \inst4|count|_~0_combout\ : std_logic;
SIGNAL \inst4|_~41_combout\ : std_logic;
SIGNAL \inst4|_~54_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~115_combout\ : std_logic;
SIGNAL \inst4|_~9_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~49_combout\ : std_logic;
SIGNAL \inst4|_~55_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~62_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~59_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~41_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~44_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~42_combout\ : std_logic;
SIGNAL \inst4|_~74_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~12_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~14_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~23_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~24_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~22_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~51_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~50_combout\ : std_logic;
SIGNAL \inst4|_~15_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~52_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~53_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~q\ : std_logic;
SIGNAL \inst4|d[6][2]~84_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~87_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~86_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~85_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~88_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~q\ : std_logic;
SIGNAL \inst4|_~22_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~52_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~51_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~53_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~54_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~55_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~q\ : std_logic;
SIGNAL \inst4|u[6][2]~88_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~87_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~86_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~89_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~q\ : std_logic;
SIGNAL \inst4|_~24_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~26_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~27_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~28_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~29_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~30_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~q\ : std_logic;
SIGNAL \inst4|_~23_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~110_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~109_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~112_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~111_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~113_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~q\ : std_logic;
SIGNAL \inst4|d[6][4]~25_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~28_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~27_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~26_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~29_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~q\ : std_logic;
SIGNAL \inst4|_~21_combout\ : std_logic;
SIGNAL \inst4|_~25_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~96_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~97_combout\ : std_logic;
SIGNAL \inst4|_~82_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~94_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~95_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~98_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~q\ : std_logic;
SIGNAL \inst4|d[1][2]~82_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~79_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~80_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~81_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~83_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~q\ : std_logic;
SIGNAL \inst4|u[1][3]~98_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~97_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~95_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~96_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~99_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~q\ : std_logic;
SIGNAL \inst4|u[1][2]~82_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~83_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~81_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~84_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~85_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~q\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~7_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~33_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~32_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~31_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~30_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~34_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~q\ : std_logic;
SIGNAL \inst4|d[1][4]~21_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~20_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~22_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~23_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~24_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~q\ : std_logic;
SIGNAL \inst4|u[1][1]~38_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~37_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~36_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~39_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~40_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~q\ : std_logic;
SIGNAL \inst4|_~78_combout\ : std_logic;
SIGNAL \inst4|_~79_combout\ : std_logic;
SIGNAL \inst4|_~80_combout\ : std_logic;
SIGNAL \inst4|_~81_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~21_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~25_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~q\ : std_logic;
SIGNAL \inst4|_~33_combout\ : std_logic;
SIGNAL \inst4|_~34_combout\ : std_logic;
SIGNAL \inst4|_~32_combout\ : std_logic;
SIGNAL \inst4|_~31_combout\ : std_logic;
SIGNAL \inst4|_~35_combout\ : std_logic;
SIGNAL \inst4|_~56_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~17_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~16_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~19_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~18_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~20_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~q\ : std_logic;
SIGNAL \inst4|d[5][4]~15_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~16_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~18_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~17_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~19_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~q\ : std_logic;
SIGNAL \inst4|d[5][1]~55_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~54_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~56_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~57_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~58_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~q\ : std_logic;
SIGNAL \inst4|u[5][1]~56_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~59_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~58_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~57_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~60_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~q\ : std_logic;
SIGNAL \inst4|_~71_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~76_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~77_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~78_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~79_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~80_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~q\ : std_logic;
SIGNAL \inst4|d[5][2]~74_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~75_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~76_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~77_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~78_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~q\ : std_logic;
SIGNAL \inst4|u[5][3]~115_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~116_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~118_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~117_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~119_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~q\ : std_logic;
SIGNAL \inst4|_~70_combout\ : std_logic;
SIGNAL \inst4|_~72_combout\ : std_logic;
SIGNAL \inst4|_~73_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~13_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~11_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~15_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~q\ : std_logic;
SIGNAL \inst4|u[4][3]~100_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~103_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~101_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~102_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~104_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~q\ : std_logic;
SIGNAL \inst4|_~28_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~13_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~10_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~11_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~12_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~14_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~q\ : std_logic;
SIGNAL \inst4|d[4][3]~102_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~99_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~100_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~101_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~103_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~q\ : std_logic;
SIGNAL \inst4|_~26_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~42_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~41_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~43_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~40_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~44_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~q\ : std_logic;
SIGNAL \inst4|_~27_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~71_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~72_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~73_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~74_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~75_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~q\ : std_logic;
SIGNAL \inst4|_~29_combout\ : std_logic;
SIGNAL \inst4|_~30_combout\ : std_logic;
SIGNAL \inst4|_~76_combout\ : std_logic;
SIGNAL \inst4|_~75_combout\ : std_logic;
SIGNAL \inst4|_~77_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~43_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~45_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~q\ : std_logic;
SIGNAL \inst4|_~66_combout\ : std_logic;
SIGNAL \inst4|_~65_combout\ : std_logic;
SIGNAL \inst4|_~67_combout\ : std_logic;
SIGNAL \inst4|_~64_combout\ : std_logic;
SIGNAL \inst4|_~69_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~61_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~106_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~104_combout\ : std_logic;
SIGNAL \inst4|_~51_combout\ : std_logic;
SIGNAL \inst4|_~52_combout\ : std_logic;
SIGNAL \inst4|_~53_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~105_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~107_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~108_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~q\ : std_logic;
SIGNAL \inst4|d[3][2]~66_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~64_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~65_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~67_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~68_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~q\ : std_logic;
SIGNAL \inst4|u[3][3]~108_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~107_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~106_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~105_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~109_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~q\ : std_logic;
SIGNAL \inst4|u[3][2]~68_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~66_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~67_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~69_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~70_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~q\ : std_logic;
SIGNAL \inst4|_~47_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~7_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~5_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~6_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~8_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~9_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~q\ : std_logic;
SIGNAL \inst4|d[3][1]~45_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~47_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~46_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~48_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~49_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~q\ : std_logic;
SIGNAL \inst4|u[3][4]~7_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~8_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~9_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~6_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~10_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~q\ : std_logic;
SIGNAL \inst4|_~48_combout\ : std_logic;
SIGNAL \inst4|_~49_combout\ : std_logic;
SIGNAL \inst4|_~36_combout\ : std_logic;
SIGNAL \inst4|_~50_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~60_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~63_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~q\ : std_logic;
SIGNAL \inst4|d[2][1]~37_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~38_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~35_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~36_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~39_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~q\ : std_logic;
SIGNAL \inst4|_~43_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~31_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~33_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~34_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~32_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~35_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~q\ : std_logic;
SIGNAL \inst4|_~45_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~2_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~0_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~3_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~1_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~4_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~q\ : std_logic;
SIGNAL \inst4|d[2][3]~92_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~89_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~91_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~90_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~93_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~q\ : std_logic;
SIGNAL \inst4|_~42_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~92_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~90_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~93_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~91_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~94_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~q\ : std_logic;
SIGNAL \inst4|u[2][4]~3_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~4_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~2_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~0_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~1_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~5_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~q\ : std_logic;
SIGNAL \inst4|_~44_combout\ : std_logic;
SIGNAL \inst4|_~46_combout\ : std_logic;
SIGNAL \inst4|_~63_combout\ : std_logic;
SIGNAL \inst4|_~68_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~48_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~47_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~46_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~50_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~q\ : std_logic;
SIGNAL \inst4|_~13_combout\ : std_logic;
SIGNAL \inst4|_~11_combout\ : std_logic;
SIGNAL \inst4|_~12_combout\ : std_logic;
SIGNAL \inst4|_~10_combout\ : std_logic;
SIGNAL \inst4|_~14_combout\ : std_logic;
SIGNAL \inst4|_~40_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~110_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~111_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~112_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~113_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~114_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~q\ : std_logic;
SIGNAL \inst4|_~58_combout\ : std_logic;
SIGNAL \inst4|_~59_combout\ : std_logic;
SIGNAL \inst4|_~60_combout\ : std_logic;
SIGNAL \inst4|_~57_combout\ : std_logic;
SIGNAL \inst4|_~62_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~64_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~63_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~61_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~62_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~65_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~q\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~6_combout\ : std_logic;
SIGNAL \inst4|_~37_combout\ : std_logic;
SIGNAL \inst4|_~38_combout\ : std_logic;
SIGNAL \inst4|_~39_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~114_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~117_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~116_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~118_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~q\ : std_logic;
SIGNAL \inst4|_~16_combout\ : std_logic;
SIGNAL \inst4|_~17_combout\ : std_logic;
SIGNAL \inst4|_~18_combout\ : std_logic;
SIGNAL \inst4|_~19_combout\ : std_logic;
SIGNAL \inst4|_~20_combout\ : std_logic;
SIGNAL \inst4|_~61_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~72_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~71_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~69_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~70_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~73_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~q\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~27_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~28_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~25_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~26_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~29_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~21_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~22_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~23_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~24_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~32_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~30_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~33_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~31_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~34_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~35_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~93_combout\ : std_logic;
SIGNAL \inst15|_~15_combout\ : std_logic;
SIGNAL \inst15|lcd_data[5]~2_combout\ : std_logic;
SIGNAL \inst15|lcd_data[5]~3_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~94_combout\ : std_logic;
SIGNAL \inst15|_~17_combout\ : std_logic;
SIGNAL \inst15|lcd_data[4]~4_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~46_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~47_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~49_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~48_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~50_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~38_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~43_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~42_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~40_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~41_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~44_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~39_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~36_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~37_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~45_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~51_combout\ : std_logic;
SIGNAL \inst15|lcd_data[3]~5_combout\ : std_logic;
SIGNAL \inst15|lcd_data[3]~6_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~62_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~64_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~63_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~61_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~65_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~60_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~57_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~58_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~52_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~53_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~54_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~55_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~56_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~59_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~66_combout\ : std_logic;
SIGNAL \inst15|lcd_data[2]~7_combout\ : std_logic;
SIGNAL \inst15|lcd_data[2]~8_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~69_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~70_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~67_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~68_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~73_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~74_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~75_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~76_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~77_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~78_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~71_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~72_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~79_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~80_combout\ : std_logic;
SIGNAL \inst15|_~18_combout\ : std_logic;
SIGNAL \inst15|lcd_data[1]~9_combout\ : std_logic;
SIGNAL \inst14|conv_d[6]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_u[6]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~81_combout\ : std_logic;
SIGNAL \inst14|conv_u[5]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_d[5]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~82_combout\ : std_logic;
SIGNAL \inst14|conv_d[2]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_u[2]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~87_combout\ : std_logic;
SIGNAL \inst14|conv_d[4]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_u[4]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~86_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~88_combout\ : std_logic;
SIGNAL \inst14|conv_d[1]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_u[1]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~83_combout\ : std_logic;
SIGNAL \inst14|conv_d[3]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_u[3]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~84_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~85_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~89_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~90_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~91_combout\ : std_logic;
SIGNAL \inst15|lcd_data[0]~10_combout\ : std_logic;
SIGNAL \inst15|lcd_data[0]~11_combout\ : std_logic;
SIGNAL \inst4|_~7_combout\ : std_logic;
SIGNAL \inst4|_~8_combout\ : std_logic;
SIGNAL \inst4|d_atual[1]~27_combout\ : std_logic;
SIGNAL \inst4|_~5_combout\ : std_logic;
SIGNAL \inst4|_~6_combout\ : std_logic;
SIGNAL \inst4|d_atual[1]~26_combout\ : std_logic;
SIGNAL \inst4|_~4_combout\ : std_logic;
SIGNAL \inst8|segmentos[6]~9_combout\ : std_logic;
SIGNAL \inst4|d_atual[1]~25_combout\ : std_logic;
SIGNAL \inst4|d_atual[3]~32_combout\ : std_logic;
SIGNAL \inst4|d_atual[3]~34_combout\ : std_logic;
SIGNAL \inst4|d_atual[3]~33_combout\ : std_logic;
SIGNAL \inst2|seg[2]~32_combout\ : std_logic;
SIGNAL \inst2|seg[2]~30_combout\ : std_logic;
SIGNAL \inst2|seg[2]~31_combout\ : std_logic;
SIGNAL \inst4|d_atual[4]~24_combout\ : std_logic;
SIGNAL \inst2|seg[2]~33_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~28_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~30_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~29_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~31_combout\ : std_logic;
SIGNAL \inst2|seg[6]~34_combout\ : std_logic;
SIGNAL \inst2|seg[6]~40_combout\ : std_logic;
SIGNAL \inst4|u_atual[2]~29_combout\ : std_logic;
SIGNAL \inst4|u_atual[2]~30_combout\ : std_logic;
SIGNAL \inst4|u_atual[2]~28_combout\ : std_logic;
SIGNAL \inst4|u_atual[2]~31_combout\ : std_logic;
SIGNAL \inst4|u_atual[3]~33_combout\ : std_logic;
SIGNAL \inst4|u_atual[3]~34_combout\ : std_logic;
SIGNAL \inst4|u_atual[3]~32_combout\ : std_logic;
SIGNAL \inst2|seg[6]~36_combout\ : std_logic;
SIGNAL \inst2|seg[6]~35_combout\ : std_logic;
SIGNAL \inst2|seg[6]~37_combout\ : std_logic;
SIGNAL \inst4|u_atual[4]~24_combout\ : std_logic;
SIGNAL \inst2|seg[6]~38_combout\ : std_logic;
SIGNAL \inst4|u_atual[1]~27_combout\ : std_logic;
SIGNAL \inst4|u_atual[1]~26_combout\ : std_logic;
SIGNAL \inst4|u_atual[1]~25_combout\ : std_logic;
SIGNAL \inst2|seg[6]~39_combout\ : std_logic;
SIGNAL \inst2|seg[6]~41_combout\ : std_logic;
SIGNAL \inst2|seg[5]~44_combout\ : std_logic;
SIGNAL \inst2|seg[5]~42_combout\ : std_logic;
SIGNAL \inst2|seg[5]~43_combout\ : std_logic;
SIGNAL \inst2|seg[5]~45_combout\ : std_logic;
SIGNAL \inst2|seg[4]~47_combout\ : std_logic;
SIGNAL \inst2|seg[4]~46_combout\ : std_logic;
SIGNAL \inst2|seg[4]~48_combout\ : std_logic;
SIGNAL \inst2|seg[4]~49_combout\ : std_logic;
SIGNAL \inst2|seg[4]~50_combout\ : std_logic;
SIGNAL \inst2|seg[4]~51_combout\ : std_logic;
SIGNAL \inst2|seg[4]~52_combout\ : std_logic;
SIGNAL \inst2|seg[3]~55_combout\ : std_logic;
SIGNAL \inst2|seg[3]~54_combout\ : std_logic;
SIGNAL \inst2|seg[3]~53_combout\ : std_logic;
SIGNAL \inst2|seg[3]~56_combout\ : std_logic;
SIGNAL \inst2|seg[2]~58_combout\ : std_logic;
SIGNAL \inst2|seg[2]~57_combout\ : std_logic;
SIGNAL \inst2|seg[2]~67_combout\ : std_logic;
SIGNAL \inst2|seg[1]~60_combout\ : std_logic;
SIGNAL \inst2|seg[1]~61_combout\ : std_logic;
SIGNAL \inst2|seg[1]~59_combout\ : std_logic;
SIGNAL \inst2|seg[1]~62_combout\ : std_logic;
SIGNAL \inst2|seg[0]~65_combout\ : std_logic;
SIGNAL \inst2|seg[0]~64_combout\ : std_logic;
SIGNAL \inst2|seg[0]~63_combout\ : std_logic;
SIGNAL \inst2|seg[0]~66_combout\ : std_logic;
SIGNAL \inst4|u_atual\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst15|clk_count\ : std_logic_vector(22 DOWNTO 1);
SIGNAL \inst3|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|divisor|count\ : std_logic_vector(27 DOWNTO 1);
SIGNAL \inst4|d_atual\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst|count\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \inst1|debounc1|divisor|count\ : std_logic_vector(16 DOWNTO 1);
SIGNAL \inst4|deb|ff\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|count|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst14|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|sorteio|dezena\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|sorteio|unidade\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst1|debounc1|ff\ : std_logic_vector(2 DOWNTO 0);
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

lcd_rw <= ww_lcd_rw;
ww_clock <= clock;
ww_key <= key;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
dig <= ww_dig;
lcd_d <= ww_lcd_d;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|debounc1|divisor|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|debounc1|divisor|alt~q\);

\inst4|div_sorteio|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|div_sorteio|alt~q\);

\inst|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|alt~q\);

\inst4|divisor|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|divisor|alt~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\inst4|deb|divisor|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|deb|divisor|alt~q\);
\inst2|ALT_INV__~3_combout\ <= NOT \inst2|_~3_combout\;
\inst2|ALT_INV__~2_combout\ <= NOT \inst2|_~2_combout\;
\inst2|ALT_INV__~1_combout\ <= NOT \inst2|_~1_combout\;
\inst2|ALT_INV__~0_combout\ <= NOT \inst2|_~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N9
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\lcd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|e~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|rs~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

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

-- Location: IOOBUF_X0_Y18_N23
\lcd_d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(7),
	devoe => ww_devoe,
	o => \lcd_d[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\lcd_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(6),
	devoe => ww_devoe,
	o => \lcd_d[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\lcd_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(5),
	devoe => ww_devoe,
	o => \lcd_d[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\lcd_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(4),
	devoe => ww_devoe,
	o => \lcd_d[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\lcd_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(3),
	devoe => ww_devoe,
	o => \lcd_d[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\lcd_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(2),
	devoe => ww_devoe,
	o => \lcd_d[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\lcd_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(1),
	devoe => ww_devoe,
	o => \lcd_d[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\lcd_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(0),
	devoe => ww_devoe,
	o => \lcd_d[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[6]~41_combout\,
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
	i => \inst2|seg[5]~45_combout\,
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
	i => \inst2|seg[4]~52_combout\,
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
	i => \inst2|seg[3]~56_combout\,
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
	i => \inst2|seg[1]~62_combout\,
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
	i => \inst2|seg[0]~66_combout\,
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

-- Location: LCCOMB_X10_Y19_N26
\inst15|clk_count[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[9]~35_combout\ = (\inst15|clk_count\(9) & (!\inst15|clk_count[8]~34\)) # (!\inst15|clk_count\(9) & ((\inst15|clk_count[8]~34\) # (GND)))
-- \inst15|clk_count[9]~36\ = CARRY((!\inst15|clk_count[8]~34\) # (!\inst15|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(9),
	datad => VCC,
	cin => \inst15|clk_count[8]~34\,
	combout => \inst15|clk_count[9]~35_combout\,
	cout => \inst15|clk_count[9]~36\);

-- Location: LCCOMB_X10_Y19_N28
\inst15|clk_count[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[10]~37_combout\ = (\inst15|clk_count\(10) & (\inst15|clk_count[9]~36\ $ (GND))) # (!\inst15|clk_count\(10) & (!\inst15|clk_count[9]~36\ & VCC))
-- \inst15|clk_count[10]~38\ = CARRY((\inst15|clk_count\(10) & !\inst15|clk_count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(10),
	datad => VCC,
	cin => \inst15|clk_count[9]~36\,
	combout => \inst15|clk_count[10]~37_combout\,
	cout => \inst15|clk_count[10]~38\);

-- Location: FF_X10_Y19_N29
\inst15|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[10]~37_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(10));

-- Location: LCCOMB_X10_Y19_N30
\inst15|clk_count[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[11]~39_combout\ = (\inst15|clk_count\(11) & (!\inst15|clk_count[10]~38\)) # (!\inst15|clk_count\(11) & ((\inst15|clk_count[10]~38\) # (GND)))
-- \inst15|clk_count[11]~40\ = CARRY((!\inst15|clk_count[10]~38\) # (!\inst15|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(11),
	datad => VCC,
	cin => \inst15|clk_count[10]~38\,
	combout => \inst15|clk_count[11]~39_combout\,
	cout => \inst15|clk_count[11]~40\);

-- Location: FF_X10_Y19_N31
\inst15|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[11]~39_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(11));

-- Location: LCCOMB_X10_Y18_N0
\inst15|clk_count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[12]~41_combout\ = (\inst15|clk_count\(12) & (\inst15|clk_count[11]~40\ $ (GND))) # (!\inst15|clk_count\(12) & (!\inst15|clk_count[11]~40\ & VCC))
-- \inst15|clk_count[12]~42\ = CARRY((\inst15|clk_count\(12) & !\inst15|clk_count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(12),
	datad => VCC,
	cin => \inst15|clk_count[11]~40\,
	combout => \inst15|clk_count[12]~41_combout\,
	cout => \inst15|clk_count[12]~42\);

-- Location: FF_X10_Y18_N1
\inst15|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[12]~41_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(12));

-- Location: LCCOMB_X10_Y18_N2
\inst15|clk_count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[13]~43_combout\ = (\inst15|clk_count\(13) & (!\inst15|clk_count[12]~42\)) # (!\inst15|clk_count\(13) & ((\inst15|clk_count[12]~42\) # (GND)))
-- \inst15|clk_count[13]~44\ = CARRY((!\inst15|clk_count[12]~42\) # (!\inst15|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(13),
	datad => VCC,
	cin => \inst15|clk_count[12]~42\,
	combout => \inst15|clk_count[13]~43_combout\,
	cout => \inst15|clk_count[13]~44\);

-- Location: FF_X10_Y18_N3
\inst15|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[13]~43_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(13));

-- Location: LCCOMB_X10_Y18_N4
\inst15|clk_count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[14]~45_combout\ = (\inst15|clk_count\(14) & (\inst15|clk_count[13]~44\ $ (GND))) # (!\inst15|clk_count\(14) & (!\inst15|clk_count[13]~44\ & VCC))
-- \inst15|clk_count[14]~46\ = CARRY((\inst15|clk_count\(14) & !\inst15|clk_count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(14),
	datad => VCC,
	cin => \inst15|clk_count[13]~44\,
	combout => \inst15|clk_count[14]~45_combout\,
	cout => \inst15|clk_count[14]~46\);

-- Location: FF_X10_Y18_N5
\inst15|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[14]~45_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(14));

-- Location: LCCOMB_X10_Y18_N6
\inst15|clk_count[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[15]~47_combout\ = (\inst15|clk_count\(15) & (!\inst15|clk_count[14]~46\)) # (!\inst15|clk_count\(15) & ((\inst15|clk_count[14]~46\) # (GND)))
-- \inst15|clk_count[15]~48\ = CARRY((!\inst15|clk_count[14]~46\) # (!\inst15|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(15),
	datad => VCC,
	cin => \inst15|clk_count[14]~46\,
	combout => \inst15|clk_count[15]~47_combout\,
	cout => \inst15|clk_count[15]~48\);

-- Location: FF_X10_Y18_N7
\inst15|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[15]~47_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(15));

-- Location: LCCOMB_X10_Y18_N8
\inst15|clk_count[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[16]~49_combout\ = (\inst15|clk_count\(16) & (\inst15|clk_count[15]~48\ $ (GND))) # (!\inst15|clk_count\(16) & (!\inst15|clk_count[15]~48\ & VCC))
-- \inst15|clk_count[16]~50\ = CARRY((\inst15|clk_count\(16) & !\inst15|clk_count[15]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(16),
	datad => VCC,
	cin => \inst15|clk_count[15]~48\,
	combout => \inst15|clk_count[16]~49_combout\,
	cout => \inst15|clk_count[16]~50\);

-- Location: FF_X10_Y18_N9
\inst15|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[16]~49_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(16));

-- Location: LCCOMB_X10_Y18_N10
\inst15|clk_count[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[17]~51_combout\ = (\inst15|clk_count\(17) & (!\inst15|clk_count[16]~50\)) # (!\inst15|clk_count\(17) & ((\inst15|clk_count[16]~50\) # (GND)))
-- \inst15|clk_count[17]~52\ = CARRY((!\inst15|clk_count[16]~50\) # (!\inst15|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(17),
	datad => VCC,
	cin => \inst15|clk_count[16]~50\,
	combout => \inst15|clk_count[17]~51_combout\,
	cout => \inst15|clk_count[17]~52\);

-- Location: FF_X10_Y18_N11
\inst15|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[17]~51_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(17));

-- Location: LCCOMB_X10_Y18_N12
\inst15|clk_count[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[18]~53_combout\ = (\inst15|clk_count\(18) & (\inst15|clk_count[17]~52\ $ (GND))) # (!\inst15|clk_count\(18) & (!\inst15|clk_count[17]~52\ & VCC))
-- \inst15|clk_count[18]~54\ = CARRY((\inst15|clk_count\(18) & !\inst15|clk_count[17]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(18),
	datad => VCC,
	cin => \inst15|clk_count[17]~52\,
	combout => \inst15|clk_count[18]~53_combout\,
	cout => \inst15|clk_count[18]~54\);

-- Location: FF_X10_Y18_N13
\inst15|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[18]~53_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(18));

-- Location: LCCOMB_X10_Y18_N14
\inst15|clk_count[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[19]~55_combout\ = (\inst15|clk_count\(19) & (!\inst15|clk_count[18]~54\)) # (!\inst15|clk_count\(19) & ((\inst15|clk_count[18]~54\) # (GND)))
-- \inst15|clk_count[19]~56\ = CARRY((!\inst15|clk_count[18]~54\) # (!\inst15|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(19),
	datad => VCC,
	cin => \inst15|clk_count[18]~54\,
	combout => \inst15|clk_count[19]~55_combout\,
	cout => \inst15|clk_count[19]~56\);

-- Location: FF_X10_Y18_N15
\inst15|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[19]~55_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(19));

-- Location: LCCOMB_X10_Y18_N16
\inst15|clk_count[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[20]~58_combout\ = (\inst15|clk_count\(20) & (\inst15|clk_count[19]~56\ $ (GND))) # (!\inst15|clk_count\(20) & (!\inst15|clk_count[19]~56\ & VCC))
-- \inst15|clk_count[20]~59\ = CARRY((\inst15|clk_count\(20) & !\inst15|clk_count[19]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(20),
	datad => VCC,
	cin => \inst15|clk_count[19]~56\,
	combout => \inst15|clk_count[20]~58_combout\,
	cout => \inst15|clk_count[20]~59\);

-- Location: FF_X10_Y18_N17
\inst15|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[20]~58_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(20));

-- Location: LCCOMB_X10_Y18_N18
\inst15|clk_count[21]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[21]~60_combout\ = (\inst15|clk_count\(21) & (!\inst15|clk_count[20]~59\)) # (!\inst15|clk_count\(21) & ((\inst15|clk_count[20]~59\) # (GND)))
-- \inst15|clk_count[21]~61\ = CARRY((!\inst15|clk_count[20]~59\) # (!\inst15|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(21),
	datad => VCC,
	cin => \inst15|clk_count[20]~59\,
	combout => \inst15|clk_count[21]~60_combout\,
	cout => \inst15|clk_count[21]~61\);

-- Location: FF_X10_Y18_N19
\inst15|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[21]~60_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(21));

-- Location: LCCOMB_X10_Y18_N20
\inst15|clk_count[22]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[22]~62_combout\ = \inst15|clk_count[21]~61\ $ (!\inst15|clk_count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst15|clk_count\(22),
	cin => \inst15|clk_count[21]~61\,
	combout => \inst15|clk_count[22]~62_combout\);

-- Location: FF_X10_Y18_N21
\inst15|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[22]~62_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(22));

-- Location: LCCOMB_X10_Y18_N30
\inst15|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~2_combout\ = (!\inst15|clk_count\(18) & (!\inst15|clk_count\(21) & (!\inst15|clk_count\(19) & !\inst15|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(18),
	datab => \inst15|clk_count\(21),
	datac => \inst15|clk_count\(19),
	datad => \inst15|clk_count\(20),
	combout => \inst15|op_10~2_combout\);

-- Location: LCCOMB_X10_Y18_N24
\inst15|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~2_combout\ = (!\inst15|clk_count\(15) & (!\inst15|clk_count\(16) & (!\inst15|clk_count\(14) & !\inst15|clk_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(15),
	datab => \inst15|clk_count\(16),
	datac => \inst15|clk_count\(14),
	datad => \inst15|clk_count\(17),
	combout => \inst15|_~2_combout\);

-- Location: LCCOMB_X9_Y19_N28
\inst15|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~6_combout\ = (!\inst15|clk_count\(13) & (!\inst15|clk_count\(22) & (\inst15|op_10~2_combout\ & \inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|clk_count\(22),
	datac => \inst15|op_10~2_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst15|_~6_combout\);

-- Location: LCCOMB_X11_Y19_N6
\inst15|op_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~1_combout\ = (!\inst15|clk_count\(11) & !\inst15|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_5~1_combout\);

-- Location: LCCOMB_X9_Y19_N22
\inst15|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~2_combout\ = (\inst15|clk_count\(8) & \inst15|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(8),
	datad => \inst15|clk_count\(9),
	combout => \inst15|op_4~2_combout\);

-- Location: LCCOMB_X10_Y19_N10
\inst15|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~1_combout\ = (!\inst15|clk_count\(3) & (!\inst15|clk_count\(4) & ((!\inst15|clk_count\(1)) # (!\inst15|clk_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(3),
	datac => \inst15|clk_count\(1),
	datad => \inst15|clk_count\(4),
	combout => \inst15|op_4~1_combout\);

-- Location: LCCOMB_X9_Y19_N2
\inst15|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~2_combout\ = (\inst15|op_4~1_combout\ & !\inst15|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|op_4~1_combout\,
	datad => \inst15|clk_count\(5),
	combout => \inst15|op_8~2_combout\);

-- Location: LCCOMB_X8_Y19_N18
\inst15|op_12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_12~0_combout\ = (((\inst15|op_8~2_combout\ & !\inst15|clk_count\(6))) # (!\inst15|op_4~2_combout\)) # (!\inst15|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datab => \inst15|op_4~2_combout\,
	datac => \inst15|op_8~2_combout\,
	datad => \inst15|clk_count\(6),
	combout => \inst15|op_12~0_combout\);

-- Location: LCCOMB_X8_Y19_N8
\inst15|op_12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_12~1_combout\ = (\inst15|_~6_combout\ & (((\inst15|op_5~1_combout\ & \inst15|op_12~0_combout\)) # (!\inst15|clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datab => \inst15|_~6_combout\,
	datac => \inst15|op_5~1_combout\,
	datad => \inst15|op_12~0_combout\,
	combout => \inst15|op_12~1_combout\);

-- Location: FF_X9_Y18_N13
\inst15|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|PRONTO~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|busy~q\);

-- Location: LCCOMB_X17_Y15_N14
\inst14|lcd_bus[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~8_combout\ = (!\inst14|lcd_enable~q\ & !\inst15|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_enable~q\,
	datad => \inst15|busy~q\,
	combout => \inst14|lcd_bus[2]~8_combout\);

-- Location: LCCOMB_X17_Y15_N2
\inst14|lcd_enable~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_enable~feeder_combout\ = \inst14|lcd_bus[2]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|lcd_bus[2]~8_combout\,
	combout => \inst14|lcd_enable~feeder_combout\);

-- Location: FF_X17_Y15_N3
\inst14|lcd_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_enable~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_enable~q\);

-- Location: LCCOMB_X10_Y19_N8
\inst15|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~2_combout\ = (\inst15|clk_count\(3) & (\inst15|clk_count\(4) & (\inst15|clk_count\(1) & \inst15|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(3),
	datab => \inst15|clk_count\(4),
	datac => \inst15|clk_count\(1),
	datad => \inst15|clk_count\(2),
	combout => \inst15|op_1~2_combout\);

-- Location: LCCOMB_X11_Y19_N18
\inst15|op_11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~2_combout\ = (!\inst15|clk_count\(7) & (((!\inst15|clk_count\(5) & !\inst15|op_1~2_combout\)) # (!\inst15|clk_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(6),
	datab => \inst15|clk_count\(7),
	datac => \inst15|clk_count\(5),
	datad => \inst15|op_1~2_combout\,
	combout => \inst15|op_11~2_combout\);

-- Location: LCCOMB_X11_Y19_N8
\inst15|op_11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~3_combout\ = (!\inst15|clk_count\(10) & (((\inst15|op_11~2_combout\) # (!\inst15|clk_count\(9))) # (!\inst15|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(10),
	datac => \inst15|clk_count\(9),
	datad => \inst15|op_11~2_combout\,
	combout => \inst15|op_11~3_combout\);

-- Location: LCCOMB_X11_Y18_N0
\inst15|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~3_combout\ = (\inst15|clk_count\(12) & \inst15|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datac => \inst15|clk_count\(11),
	combout => \inst15|op_6~3_combout\);

-- Location: LCCOMB_X11_Y19_N22
\inst15|op_11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~4_combout\ = ((!\inst15|clk_count\(13) & ((\inst15|op_11~3_combout\) # (!\inst15|op_6~3_combout\)))) # (!\inst15|clk_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(14),
	datab => \inst15|clk_count\(13),
	datac => \inst15|op_11~3_combout\,
	datad => \inst15|op_6~3_combout\,
	combout => \inst15|op_11~4_combout\);

-- Location: LCCOMB_X10_Y19_N2
\inst15|op_11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~5_combout\ = (((!\inst15|clk_count\(15) & \inst15|op_11~4_combout\)) # (!\inst15|clk_count\(17))) # (!\inst15|clk_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(15),
	datab => \inst15|clk_count\(16),
	datac => \inst15|clk_count\(17),
	datad => \inst15|op_11~4_combout\,
	combout => \inst15|op_11~5_combout\);

-- Location: LCCOMB_X9_Y18_N22
\inst15|op_11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~6_combout\ = (!\inst15|clk_count\(22) & (\inst15|op_10~2_combout\ & \inst15|op_11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(22),
	datac => \inst15|op_10~2_combout\,
	datad => \inst15|op_11~5_combout\,
	combout => \inst15|op_11~6_combout\);

-- Location: LCCOMB_X9_Y19_N12
\inst15|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~0_combout\ = (!\inst15|clk_count\(13) & (!\inst15|clk_count\(10) & (!\inst15|clk_count\(12) & !\inst15|clk_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|clk_count\(10),
	datac => \inst15|clk_count\(12),
	datad => \inst15|clk_count\(11),
	combout => \inst15|op_4~0_combout\);

-- Location: LCCOMB_X10_Y19_N6
\inst15|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~2_combout\ = (!\inst15|clk_count\(4) & (((!\inst15|clk_count\(1)) # (!\inst15|clk_count\(3))) # (!\inst15|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(3),
	datac => \inst15|clk_count\(1),
	datad => \inst15|clk_count\(4),
	combout => \inst15|op_5~2_combout\);

-- Location: LCCOMB_X9_Y19_N24
\inst15|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~0_combout\ = (\inst15|clk_count\(6) & \inst15|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(6),
	datad => \inst15|clk_count\(5),
	combout => \inst15|op_5~0_combout\);

-- Location: LCCOMB_X9_Y19_N8
\inst15|op_10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~3_combout\ = ((\inst15|op_5~2_combout\) # ((!\inst15|op_5~0_combout\) # (!\inst15|clk_count\(7)))) # (!\inst15|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_4~2_combout\,
	datab => \inst15|op_5~2_combout\,
	datac => \inst15|clk_count\(7),
	datad => \inst15|op_5~0_combout\,
	combout => \inst15|op_10~3_combout\);

-- Location: LCCOMB_X10_Y18_N28
\inst15|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~4_combout\ = (\inst15|clk_count\(16) & (\inst15|clk_count\(17) & ((\inst15|clk_count\(15)) # (\inst15|clk_count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(15),
	datab => \inst15|clk_count\(14),
	datac => \inst15|clk_count\(16),
	datad => \inst15|clk_count\(17),
	combout => \inst15|op_10~4_combout\);

-- Location: LCCOMB_X9_Y19_N26
\inst15|op_10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~5_combout\ = ((\inst15|op_4~0_combout\ & (!\inst15|clk_count\(15) & \inst15|op_10~3_combout\))) # (!\inst15|op_10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_4~0_combout\,
	datab => \inst15|clk_count\(15),
	datac => \inst15|op_10~3_combout\,
	datad => \inst15|op_10~4_combout\,
	combout => \inst15|op_10~5_combout\);

-- Location: LCCOMB_X9_Y18_N12
\inst15|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~6_combout\ = (\inst15|op_10~2_combout\ & (!\inst15|clk_count\(22) & \inst15|op_10~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~2_combout\,
	datab => \inst15|clk_count\(22),
	datad => \inst15|op_10~5_combout\,
	combout => \inst15|op_10~6_combout\);

-- Location: LCCOMB_X11_Y19_N4
\inst15|op_8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~5_combout\ = (\inst15|clk_count\(6) & (\inst15|clk_count\(7) & ((\inst15|clk_count\(5)) # (!\inst15|op_4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(6),
	datab => \inst15|clk_count\(7),
	datac => \inst15|clk_count\(5),
	datad => \inst15|op_4~1_combout\,
	combout => \inst15|op_8~5_combout\);

-- Location: LCCOMB_X11_Y19_N24
\inst15|op_8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~3_combout\ = (\inst15|op_5~1_combout\ & (((!\inst15|clk_count\(8) & !\inst15|op_8~5_combout\)) # (!\inst15|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(9),
	datab => \inst15|clk_count\(8),
	datac => \inst15|op_8~5_combout\,
	datad => \inst15|op_5~1_combout\,
	combout => \inst15|op_8~3_combout\);

-- Location: LCCOMB_X10_Y18_N26
\inst15|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~3_combout\ = (!\inst15|clk_count\(22) & (\inst15|op_10~2_combout\ & \inst15|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(22),
	datac => \inst15|op_10~2_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst15|_~3_combout\);

-- Location: LCCOMB_X9_Y18_N14
\inst15|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~4_combout\ = (\inst15|_~3_combout\ & (((\inst15|op_8~3_combout\) # (!\inst15|clk_count\(12))) # (!\inst15|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|clk_count\(12),
	datac => \inst15|op_8~3_combout\,
	datad => \inst15|_~3_combout\,
	combout => \inst15|op_8~4_combout\);

-- Location: LCCOMB_X8_Y19_N0
\inst15|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~1_combout\ = (!\inst15|clk_count\(10) & (((!\inst15|clk_count\(7) & !\inst15|clk_count\(6))) # (!\inst15|op_4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datab => \inst15|op_4~2_combout\,
	datac => \inst15|clk_count\(6),
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_6~1_combout\);

-- Location: LCCOMB_X10_Y19_N0
\inst15|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~0_combout\ = (\inst15|clk_count\(4) & ((\inst15|clk_count\(3)) # ((\inst15|clk_count\(2) & \inst15|clk_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(3),
	datac => \inst15|clk_count\(1),
	datad => \inst15|clk_count\(4),
	combout => \inst15|op_6~0_combout\);

-- Location: LCCOMB_X9_Y19_N14
\inst15|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~2_combout\ = (!\inst15|clk_count\(7) & (!\inst15|clk_count\(10) & (!\inst15|op_6~0_combout\ & !\inst15|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datab => \inst15|clk_count\(10),
	datac => \inst15|op_6~0_combout\,
	datad => \inst15|clk_count\(5),
	combout => \inst15|op_6~2_combout\);

-- Location: LCCOMB_X8_Y19_N26
\inst15|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~4_combout\ = (\inst15|_~6_combout\ & (((\inst15|op_6~1_combout\) # (\inst15|op_6~2_combout\)) # (!\inst15|op_6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~3_combout\,
	datab => \inst15|op_6~1_combout\,
	datac => \inst15|op_6~2_combout\,
	datad => \inst15|_~6_combout\,
	combout => \inst15|op_6~4_combout\);

-- Location: LCCOMB_X9_Y19_N4
\inst15|INICIALIZACAO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~0_combout\ = (\inst15|clk_count\(9) & ((\inst15|clk_count\(7)) # ((!\inst15|op_5~2_combout\ & \inst15|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datab => \inst15|clk_count\(9),
	datac => \inst15|op_5~2_combout\,
	datad => \inst15|op_5~0_combout\,
	combout => \inst15|INICIALIZACAO~0_combout\);

-- Location: LCCOMB_X8_Y19_N4
\inst15|INICIALIZACAO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~1_combout\ = (\inst15|clk_count\(11)) # ((\inst15|clk_count\(8) & (\inst15|clk_count\(10) & \inst15|INICIALIZACAO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(10),
	datac => \inst15|clk_count\(11),
	datad => \inst15|INICIALIZACAO~0_combout\,
	combout => \inst15|INICIALIZACAO~1_combout\);

-- Location: LCCOMB_X11_Y19_N2
\inst15|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~4_combout\ = (!\inst15|clk_count\(12) & (!\inst15|clk_count\(10) & !\inst15|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(12),
	datac => \inst15|clk_count\(10),
	datad => \inst15|clk_count\(13),
	combout => \inst15|op_4~4_combout\);

-- Location: LCCOMB_X9_Y19_N6
\inst15|op_4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~3_combout\ = ((\inst15|op_4~1_combout\) # ((!\inst15|op_5~0_combout\) # (!\inst15|op_4~2_combout\))) # (!\inst15|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datab => \inst15|op_4~1_combout\,
	datac => \inst15|op_4~2_combout\,
	datad => \inst15|op_5~0_combout\,
	combout => \inst15|op_4~3_combout\);

-- Location: LCCOMB_X8_Y19_N6
\inst15|op_4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~5_combout\ = (!\inst15|clk_count\(11) & (\inst15|op_4~4_combout\ & (\inst15|_~3_combout\ & \inst15|op_4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(11),
	datab => \inst15|op_4~4_combout\,
	datac => \inst15|_~3_combout\,
	datad => \inst15|op_4~3_combout\,
	combout => \inst15|op_4~5_combout\);

-- Location: LCCOMB_X8_Y19_N2
\inst15|INICIALIZACAO~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~2_combout\ = (!\inst15|op_4~5_combout\ & (((\inst15|clk_count\(12) & \inst15|INICIALIZACAO~1_combout\)) # (!\inst15|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datab => \inst15|_~6_combout\,
	datac => \inst15|INICIALIZACAO~1_combout\,
	datad => \inst15|op_4~5_combout\,
	combout => \inst15|INICIALIZACAO~2_combout\);

-- Location: LCCOMB_X8_Y18_N30
\inst15|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~12_combout\ = (\inst15|INICIALIZACAO~q\ & (\inst15|op_6~4_combout\ & \inst15|INICIALIZACAO~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|op_6~4_combout\,
	datad => \inst15|INICIALIZACAO~2_combout\,
	combout => \inst15|_~12_combout\);

-- Location: LCCOMB_X8_Y19_N10
\inst15|op_9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~3_combout\ = (!\inst15|clk_count\(11) & (!\inst15|clk_count\(9) & (!\inst15|clk_count\(5) & !\inst15|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(11),
	datab => \inst15|clk_count\(9),
	datac => \inst15|clk_count\(5),
	datad => \inst15|clk_count\(8),
	combout => \inst15|op_9~3_combout\);

-- Location: LCCOMB_X11_Y19_N12
\inst15|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~2_combout\ = (!\inst15|clk_count\(7) & (!\inst15|clk_count\(6) & \inst15|op_4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(7),
	datac => \inst15|clk_count\(6),
	datad => \inst15|op_4~4_combout\,
	combout => \inst15|op_9~2_combout\);

-- Location: LCCOMB_X9_Y19_N16
\inst15|op_9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~4_combout\ = (\inst15|op_9~3_combout\ & (!\inst15|clk_count\(15) & (\inst15|op_4~1_combout\ & \inst15|op_9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_9~3_combout\,
	datab => \inst15|clk_count\(15),
	datac => \inst15|op_4~1_combout\,
	datad => \inst15|op_9~2_combout\,
	combout => \inst15|op_9~4_combout\);

-- Location: LCCOMB_X9_Y18_N16
\inst15|op_9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~5_combout\ = (\inst15|op_10~2_combout\ & (!\inst15|clk_count\(22) & ((\inst15|op_9~4_combout\) # (!\inst15|op_10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~2_combout\,
	datab => \inst15|op_10~4_combout\,
	datac => \inst15|clk_count\(22),
	datad => \inst15|op_9~4_combout\,
	combout => \inst15|op_9~5_combout\);

-- Location: LCCOMB_X9_Y18_N24
\inst15|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~13_combout\ = (\inst15|op_10~6_combout\ & (!\inst15|op_8~4_combout\ & (\inst15|_~11_combout\ & !\inst15|op_9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~6_combout\,
	datab => \inst15|op_8~4_combout\,
	datac => \inst15|_~11_combout\,
	datad => \inst15|op_9~5_combout\,
	combout => \inst15|_~13_combout\);

-- Location: LCCOMB_X9_Y18_N6
\inst15|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|e~0_combout\ = (!\inst15|_~12_combout\ & (!\inst15|_~13_combout\ & ((!\inst15|_~11_combout\) # (!\inst15|op_8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_8~4_combout\,
	datab => \inst15|_~12_combout\,
	datac => \inst15|_~11_combout\,
	datad => \inst15|_~13_combout\,
	combout => \inst15|e~0_combout\);

-- Location: LCCOMB_X11_Y19_N10
\inst15|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~3_combout\ = ((!\inst15|clk_count\(12) & (!\inst15|clk_count\(11) & !\inst15|clk_count\(13)))) # (!\inst15|clk_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(14),
	datab => \inst15|clk_count\(12),
	datac => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(13),
	combout => \inst15|op_1~3_combout\);

-- Location: LCCOMB_X11_Y19_N26
\inst15|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~8_combout\ = (\inst15|op_1~3_combout\) # ((\inst15|op_4~4_combout\ & ((!\inst15|clk_count\(8)) # (!\inst15|clk_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(9),
	datab => \inst15|op_4~4_combout\,
	datac => \inst15|clk_count\(8),
	datad => \inst15|op_1~3_combout\,
	combout => \inst15|op_1~8_combout\);

-- Location: LCCOMB_X11_Y19_N16
\inst15|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~4_combout\ = (\inst15|op_1~8_combout\) # ((\inst15|op_9~2_combout\ & ((!\inst15|clk_count\(5)) # (!\inst15|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_1~2_combout\,
	datab => \inst15|clk_count\(5),
	datac => \inst15|op_1~8_combout\,
	datad => \inst15|op_9~2_combout\,
	combout => \inst15|op_1~4_combout\);

-- Location: LCCOMB_X10_Y18_N22
\inst15|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~5_combout\ = (!\inst15|clk_count\(21) & !\inst15|clk_count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(21),
	datad => \inst15|clk_count\(20),
	combout => \inst15|op_1~5_combout\);

-- Location: LCCOMB_X9_Y19_N20
\inst15|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~7_combout\ = ((\inst15|op_1~5_combout\ & ((!\inst15|clk_count\(18)) # (!\inst15|clk_count\(19))))) # (!\inst15|clk_count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(19),
	datab => \inst15|clk_count\(22),
	datac => \inst15|op_1~5_combout\,
	datad => \inst15|clk_count\(18),
	combout => \inst15|op_1~7_combout\);

-- Location: LCCOMB_X9_Y19_N18
\inst15|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~6_combout\ = (!\inst15|clk_count\(16) & (!\inst15|clk_count\(15) & (\inst15|op_1~5_combout\ & !\inst15|clk_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(16),
	datab => \inst15|clk_count\(15),
	datac => \inst15|op_1~5_combout\,
	datad => \inst15|clk_count\(17),
	combout => \inst15|op_1~6_combout\);

-- Location: LCCOMB_X8_Y19_N20
\inst15|ENERGIZACAO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|ENERGIZACAO~0_combout\ = (\inst15|ENERGIZACAO~q\) # ((!\inst15|op_1~7_combout\ & ((!\inst15|op_1~4_combout\) # (!\inst15|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_1~7_combout\,
	datab => \inst15|op_1~6_combout\,
	datac => \inst15|ENERGIZACAO~q\,
	datad => \inst15|op_1~4_combout\,
	combout => \inst15|ENERGIZACAO~0_combout\);

-- Location: FF_X8_Y19_N21
\inst15|ENERGIZACAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|ENERGIZACAO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|ENERGIZACAO~q\);

-- Location: LCCOMB_X8_Y19_N22
\inst15|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~16_combout\ = (!\inst15|ENERGIZACAO~q\ & (!\inst15|op_1~7_combout\ & ((!\inst15|op_1~6_combout\) # (!\inst15|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_1~4_combout\,
	datab => \inst15|ENERGIZACAO~q\,
	datac => \inst15|op_1~7_combout\,
	datad => \inst15|op_1~6_combout\,
	combout => \inst15|_~16_combout\);

-- Location: LCCOMB_X11_Y19_N28
\inst15|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~2_combout\ = (!\inst15|clk_count\(12) & (((!\inst15|clk_count\(11)) # (!\inst15|clk_count\(10))) # (!\inst15|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(9),
	datab => \inst15|clk_count\(10),
	datac => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(12),
	combout => \inst15|op_7~2_combout\);

-- Location: LCCOMB_X11_Y19_N0
\inst15|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~0_combout\ = (\inst15|clk_count\(7) & ((\inst15|clk_count\(5)) # (\inst15|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(7),
	datac => \inst15|clk_count\(5),
	datad => \inst15|op_1~2_combout\,
	combout => \inst15|op_7~0_combout\);

-- Location: LCCOMB_X11_Y19_N30
\inst15|op_7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~1_combout\ = (!\inst15|clk_count\(12) & (!\inst15|clk_count\(8) & ((!\inst15|op_7~0_combout\) # (!\inst15|clk_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(6),
	datab => \inst15|clk_count\(12),
	datac => \inst15|clk_count\(8),
	datad => \inst15|op_7~0_combout\,
	combout => \inst15|op_7~1_combout\);

-- Location: LCCOMB_X11_Y19_N14
\inst15|op_7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~3_combout\ = (\inst15|_~3_combout\ & (((\inst15|op_7~2_combout\) # (\inst15|op_7~1_combout\)) # (!\inst15|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|op_7~2_combout\,
	datac => \inst15|op_7~1_combout\,
	datad => \inst15|_~3_combout\,
	combout => \inst15|op_7~3_combout\);

-- Location: LCCOMB_X9_Y18_N26
\inst15|INICIALIZACAO~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~3_combout\ = (!\inst15|op_6~4_combout\ & ((\inst15|op_7~3_combout\) # ((!\inst15|op_8~4_combout\ & \inst15|op_9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_7~3_combout\,
	datab => \inst15|op_8~4_combout\,
	datac => \inst15|op_6~4_combout\,
	datad => \inst15|op_9~5_combout\,
	combout => \inst15|INICIALIZACAO~3_combout\);

-- Location: LCCOMB_X9_Y19_N30
\inst15|INICIALIZACAO~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~6_combout\ = ((\inst15|op_9~4_combout\) # ((\inst15|op_10~5_combout\) # (\inst15|op_11~5_combout\))) # (!\inst15|op_10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~4_combout\,
	datab => \inst15|op_9~4_combout\,
	datac => \inst15|op_10~5_combout\,
	datad => \inst15|op_11~5_combout\,
	combout => \inst15|INICIALIZACAO~6_combout\);

-- Location: LCCOMB_X9_Y18_N10
\inst15|INICIALIZACAO~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~7_combout\ = (!\inst15|clk_count\(22) & (\inst15|INICIALIZACAO~6_combout\ & \inst15|op_10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(22),
	datac => \inst15|INICIALIZACAO~6_combout\,
	datad => \inst15|op_10~2_combout\,
	combout => \inst15|INICIALIZACAO~7_combout\);

-- Location: LCCOMB_X9_Y18_N8
\inst15|INICIALIZACAO~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~4_combout\ = (\inst15|INICIALIZACAO~q\ & (((\inst15|INICIALIZACAO~3_combout\) # (\inst15|INICIALIZACAO~7_combout\)) # (!\inst15|INICIALIZACAO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|INICIALIZACAO~2_combout\,
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|INICIALIZACAO~3_combout\,
	datad => \inst15|INICIALIZACAO~7_combout\,
	combout => \inst15|INICIALIZACAO~4_combout\);

-- Location: LCCOMB_X9_Y18_N28
\inst15|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~20_combout\ = (!\inst15|clk_count\(22) & (\inst15|op_11~5_combout\ & (\inst15|op_10~2_combout\ & \inst15|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(22),
	datab => \inst15|op_11~5_combout\,
	datac => \inst15|op_10~2_combout\,
	datad => \inst15|_~19_combout\,
	combout => \inst15|_~20_combout\);

-- Location: LCCOMB_X9_Y18_N0
\inst15|INICIALIZACAO~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~5_combout\ = ((\inst15|_~16_combout\) # ((\inst15|INICIALIZACAO~4_combout\) # (\inst15|_~20_combout\))) # (!\inst15|e~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|e~0_combout\,
	datab => \inst15|_~16_combout\,
	datac => \inst15|INICIALIZACAO~4_combout\,
	datad => \inst15|_~20_combout\,
	combout => \inst15|INICIALIZACAO~5_combout\);

-- Location: FF_X9_Y18_N1
\inst15|INICIALIZACAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|INICIALIZACAO~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|INICIALIZACAO~q\);

-- Location: LCCOMB_X8_Y19_N16
\inst15|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~11_combout\ = (!\inst15|op_6~4_combout\ & (\inst15|INICIALIZACAO~q\ & (!\inst15|op_7~3_combout\ & \inst15|INICIALIZACAO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~4_combout\,
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|op_7~3_combout\,
	datad => \inst15|INICIALIZACAO~2_combout\,
	combout => \inst15|_~11_combout\);

-- Location: LCCOMB_X9_Y18_N2
\inst15|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~19_combout\ = (!\inst15|op_10~6_combout\ & (!\inst15|op_8~4_combout\ & (\inst15|_~11_combout\ & !\inst15|op_9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~6_combout\,
	datab => \inst15|op_8~4_combout\,
	datac => \inst15|_~11_combout\,
	datad => \inst15|op_9~5_combout\,
	combout => \inst15|_~19_combout\);

-- Location: LCCOMB_X9_Y18_N30
\inst15|PRONTO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|PRONTO~0_combout\ = (\inst14|lcd_enable~q\ & (((\inst15|op_11~6_combout\) # (!\inst15|_~19_combout\)))) # (!\inst14|lcd_enable~q\ & (!\inst15|PRONTO~q\ & ((\inst15|op_11~6_combout\) # (!\inst15|_~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_enable~q\,
	datab => \inst15|PRONTO~q\,
	datac => \inst15|op_11~6_combout\,
	datad => \inst15|_~19_combout\,
	combout => \inst15|PRONTO~0_combout\);

-- Location: LCCOMB_X9_Y18_N4
\inst15|PRONTO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|PRONTO~1_combout\ = ((\inst15|ENVIAR~q\ & !\inst15|op_12~1_combout\)) # (!\inst15|PRONTO~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|op_12~1_combout\,
	datac => \inst15|PRONTO~0_combout\,
	combout => \inst15|PRONTO~1_combout\);

-- Location: FF_X9_Y18_N5
\inst15|PRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|PRONTO~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PRONTO~q\);

-- Location: LCCOMB_X8_Y18_N2
\inst15|ENVIAR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|ENVIAR~2_combout\ = (\inst15|op_12~1_combout\ & ((\inst15|ENVIAR~q\) # ((\inst15|PRONTO~q\ & \inst14|lcd_enable~q\)))) # (!\inst15|op_12~1_combout\ & (\inst15|PRONTO~q\ & ((\inst14|lcd_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_12~1_combout\,
	datab => \inst15|PRONTO~q\,
	datac => \inst15|ENVIAR~q\,
	datad => \inst14|lcd_enable~q\,
	combout => \inst15|ENVIAR~2_combout\);

-- Location: FF_X8_Y18_N3
\inst15|ENVIAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|ENVIAR~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|ENVIAR~q\);

-- Location: LCCOMB_X8_Y19_N30
\inst15|clk_count[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[22]~57_combout\ = (!\inst15|INICIALIZACAO~q\ & (\inst15|ENERGIZACAO~0_combout\ & ((!\inst15|op_12~1_combout\) # (!\inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|op_12~1_combout\,
	datad => \inst15|ENERGIZACAO~0_combout\,
	combout => \inst15|clk_count[22]~57_combout\);

-- Location: LCCOMB_X10_Y19_N4
\inst15|clk_count[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[1]~64_combout\ = (!\inst15|clk_count\(1) & !\inst15|clk_count[22]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(1),
	datad => \inst15|clk_count[22]~57_combout\,
	combout => \inst15|clk_count[1]~64_combout\);

-- Location: FF_X10_Y19_N5
\inst15|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[1]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(1));

-- Location: LCCOMB_X10_Y19_N12
\inst15|clk_count[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[2]~21_combout\ = (\inst15|clk_count\(2) & (\inst15|clk_count\(1) $ (VCC))) # (!\inst15|clk_count\(2) & (\inst15|clk_count\(1) & VCC))
-- \inst15|clk_count[2]~22\ = CARRY((\inst15|clk_count\(2) & \inst15|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(1),
	datad => VCC,
	combout => \inst15|clk_count[2]~21_combout\,
	cout => \inst15|clk_count[2]~22\);

-- Location: FF_X10_Y19_N13
\inst15|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[2]~21_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(2));

-- Location: LCCOMB_X10_Y19_N14
\inst15|clk_count[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[3]~23_combout\ = (\inst15|clk_count\(3) & (!\inst15|clk_count[2]~22\)) # (!\inst15|clk_count\(3) & ((\inst15|clk_count[2]~22\) # (GND)))
-- \inst15|clk_count[3]~24\ = CARRY((!\inst15|clk_count[2]~22\) # (!\inst15|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(3),
	datad => VCC,
	cin => \inst15|clk_count[2]~22\,
	combout => \inst15|clk_count[3]~23_combout\,
	cout => \inst15|clk_count[3]~24\);

-- Location: FF_X10_Y19_N15
\inst15|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[3]~23_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(3));

-- Location: LCCOMB_X10_Y19_N16
\inst15|clk_count[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[4]~25_combout\ = (\inst15|clk_count\(4) & (\inst15|clk_count[3]~24\ $ (GND))) # (!\inst15|clk_count\(4) & (!\inst15|clk_count[3]~24\ & VCC))
-- \inst15|clk_count[4]~26\ = CARRY((\inst15|clk_count\(4) & !\inst15|clk_count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(4),
	datad => VCC,
	cin => \inst15|clk_count[3]~24\,
	combout => \inst15|clk_count[4]~25_combout\,
	cout => \inst15|clk_count[4]~26\);

-- Location: FF_X10_Y19_N17
\inst15|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[4]~25_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(4));

-- Location: LCCOMB_X10_Y19_N18
\inst15|clk_count[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[5]~27_combout\ = (\inst15|clk_count\(5) & (!\inst15|clk_count[4]~26\)) # (!\inst15|clk_count\(5) & ((\inst15|clk_count[4]~26\) # (GND)))
-- \inst15|clk_count[5]~28\ = CARRY((!\inst15|clk_count[4]~26\) # (!\inst15|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(5),
	datad => VCC,
	cin => \inst15|clk_count[4]~26\,
	combout => \inst15|clk_count[5]~27_combout\,
	cout => \inst15|clk_count[5]~28\);

-- Location: FF_X10_Y19_N19
\inst15|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[5]~27_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(5));

-- Location: LCCOMB_X10_Y19_N20
\inst15|clk_count[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[6]~29_combout\ = (\inst15|clk_count\(6) & (\inst15|clk_count[5]~28\ $ (GND))) # (!\inst15|clk_count\(6) & (!\inst15|clk_count[5]~28\ & VCC))
-- \inst15|clk_count[6]~30\ = CARRY((\inst15|clk_count\(6) & !\inst15|clk_count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(6),
	datad => VCC,
	cin => \inst15|clk_count[5]~28\,
	combout => \inst15|clk_count[6]~29_combout\,
	cout => \inst15|clk_count[6]~30\);

-- Location: FF_X10_Y19_N21
\inst15|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[6]~29_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(6));

-- Location: LCCOMB_X10_Y19_N22
\inst15|clk_count[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[7]~31_combout\ = (\inst15|clk_count\(7) & (!\inst15|clk_count[6]~30\)) # (!\inst15|clk_count\(7) & ((\inst15|clk_count[6]~30\) # (GND)))
-- \inst15|clk_count[7]~32\ = CARRY((!\inst15|clk_count[6]~30\) # (!\inst15|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datad => VCC,
	cin => \inst15|clk_count[6]~30\,
	combout => \inst15|clk_count[7]~31_combout\,
	cout => \inst15|clk_count[7]~32\);

-- Location: FF_X10_Y19_N23
\inst15|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[7]~31_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(7));

-- Location: LCCOMB_X10_Y19_N24
\inst15|clk_count[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[8]~33_combout\ = (\inst15|clk_count\(8) & (\inst15|clk_count[7]~32\ $ (GND))) # (!\inst15|clk_count\(8) & (!\inst15|clk_count[7]~32\ & VCC))
-- \inst15|clk_count[8]~34\ = CARRY((\inst15|clk_count\(8) & !\inst15|clk_count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(8),
	datad => VCC,
	cin => \inst15|clk_count[7]~32\,
	combout => \inst15|clk_count[8]~33_combout\,
	cout => \inst15|clk_count[8]~34\);

-- Location: FF_X10_Y19_N25
\inst15|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[8]~33_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(8));

-- Location: FF_X10_Y19_N27
\inst15|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[9]~35_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(9));

-- Location: LCCOMB_X11_Y19_N20
\inst15|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~7_combout\ = (\inst15|clk_count\(3)) # ((\inst15|clk_count\(4)) # (\inst15|clk_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(3),
	datac => \inst15|clk_count\(4),
	datad => \inst15|clk_count\(2),
	combout => \inst15|_~7_combout\);

-- Location: LCCOMB_X9_Y19_N10
\inst15|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~8_combout\ = (\inst15|op_5~0_combout\ & ((\inst15|clk_count\(8) & ((\inst15|op_6~0_combout\))) # (!\inst15|clk_count\(8) & (\inst15|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~7_combout\,
	datab => \inst15|clk_count\(8),
	datac => \inst15|op_6~0_combout\,
	datad => \inst15|op_5~0_combout\,
	combout => \inst15|_~8_combout\);

-- Location: LCCOMB_X9_Y19_N0
\inst15|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~9_combout\ = (\inst15|clk_count\(8) & (((\inst15|clk_count\(7)) # (\inst15|_~8_combout\)) # (!\inst15|clk_count\(10)))) # (!\inst15|clk_count\(8) & (!\inst15|clk_count\(10) & ((\inst15|clk_count\(7)) # (\inst15|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(10),
	datac => \inst15|clk_count\(7),
	datad => \inst15|_~8_combout\,
	combout => \inst15|_~9_combout\);

-- Location: LCCOMB_X8_Y19_N24
\inst15|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~10_combout\ = (\inst15|_~6_combout\ & (\inst15|clk_count\(10) $ (((\inst15|clk_count\(9)) # (\inst15|_~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(9),
	datab => \inst15|clk_count\(10),
	datac => \inst15|_~9_combout\,
	datad => \inst15|_~6_combout\,
	combout => \inst15|_~10_combout\);

-- Location: LCCOMB_X8_Y18_N24
\inst15|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~5_combout\ = (!\inst15|clk_count\(12) & (!\inst15|clk_count\(11) & \inst15|ENVIAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datac => \inst15|clk_count\(11),
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|_~5_combout\);

-- Location: LCCOMB_X8_Y19_N14
\inst15|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~4_combout\ = (\inst15|op_4~0_combout\ & (\inst15|INICIALIZACAO~q\ & (\inst15|_~3_combout\ & \inst15|op_4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_4~0_combout\,
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|_~3_combout\,
	datad => \inst15|op_4~3_combout\,
	combout => \inst15|_~4_combout\);

-- Location: LCCOMB_X9_Y18_N20
\inst15|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|e~1_combout\ = (\inst15|_~4_combout\) # (((\inst15|_~10_combout\ & \inst15|_~5_combout\)) # (!\inst15|e~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~10_combout\,
	datab => \inst15|_~5_combout\,
	datac => \inst15|_~4_combout\,
	datad => \inst15|e~0_combout\,
	combout => \inst15|e~1_combout\);

-- Location: FF_X9_Y18_N21
\inst15|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|e~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|e~q\);

-- Location: FF_X17_Y15_N7
\inst14|char_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_13~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_14~q\);

-- Location: FF_X17_Y15_N5
\inst14|char_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_14~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_15~q\);

-- Location: FF_X17_Y15_N9
\inst14|char_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_15~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_16~q\);

-- Location: LCCOMB_X17_Y15_N30
\inst14|char_17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_17~feeder_combout\ = \inst14|char_16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_16~q\,
	combout => \inst14|char_17~feeder_combout\);

-- Location: FF_X17_Y15_N31
\inst14|char_17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_17~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_17~q\);

-- Location: FF_X17_Y15_N21
\inst14|char_18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_17~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_18~q\);

-- Location: LCCOMB_X17_Y15_N28
\inst14|char_19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_19~feeder_combout\ = \inst14|char_18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_18~q\,
	combout => \inst14|char_19~feeder_combout\);

-- Location: FF_X17_Y15_N29
\inst14|char_19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_19~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_19~q\);

-- Location: LCCOMB_X17_Y15_N22
\inst14|char_20~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_20~feeder_combout\ = \inst14|char_19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_19~q\,
	combout => \inst14|char_20~feeder_combout\);

-- Location: FF_X17_Y15_N23
\inst14|char_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_20~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_20~q\);

-- Location: FF_X17_Y15_N17
\inst14|char_21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_20~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_21~q\);

-- Location: FF_X18_Y14_N15
\inst14|char_22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_21~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_22~q\);

-- Location: FF_X18_Y14_N23
\inst14|char_23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_22~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_23~q\);

-- Location: LCCOMB_X18_Y15_N8
\inst14|char_24~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_24~feeder_combout\ = \inst14|char_23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_23~q\,
	combout => \inst14|char_24~feeder_combout\);

-- Location: FF_X18_Y15_N9
\inst14|char_24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_24~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_24~q\);

-- Location: FF_X18_Y15_N11
\inst14|char_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_24~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_25~q\);

-- Location: FF_X18_Y13_N21
\inst14|char_26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_25~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_26~q\);

-- Location: LCCOMB_X18_Y15_N12
\inst14|char_27~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_27~feeder_combout\ = \inst14|char_26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|char_26~q\,
	combout => \inst14|char_27~feeder_combout\);

-- Location: FF_X18_Y15_N13
\inst14|char_27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_27~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_27~q\);

-- Location: FF_X21_Y12_N11
\inst14|char_28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_27~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_28~q\);

-- Location: FF_X23_Y15_N27
\inst14|char_29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_28~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_29~q\);

-- Location: FF_X18_Y15_N1
\inst14|char_30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_29~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_30~q\);

-- Location: LCCOMB_X18_Y15_N14
\inst14|char_31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_31~feeder_combout\ = \inst14|char_30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_30~q\,
	combout => \inst14|char_31~feeder_combout\);

-- Location: FF_X18_Y15_N15
\inst14|char_31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_31~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_31~q\);

-- Location: FF_X18_Y15_N31
\inst14|char_32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_31~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_32~q\);

-- Location: LCCOMB_X18_Y13_N2
\inst14|char_33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_33~feeder_combout\ = \inst14|char_32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|char_32~q\,
	combout => \inst14|char_33~feeder_combout\);

-- Location: FF_X18_Y13_N3
\inst14|char_33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_33~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_33~q\);

-- Location: LCCOMB_X18_Y15_N20
\inst14|char_00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_00~0_combout\ = !\inst14|char_33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_33~q\,
	combout => \inst14|char_00~0_combout\);

-- Location: FF_X18_Y15_N21
\inst14|char_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_00~0_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_00~q\);

-- Location: LCCOMB_X18_Y15_N22
\inst14|char_01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_01~0_combout\ = !\inst14|char_00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|char_00~q\,
	combout => \inst14|char_01~0_combout\);

-- Location: FF_X18_Y15_N23
\inst14|char_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_01~0_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_01~q\);

-- Location: FF_X18_Y15_N17
\inst14|char_02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_01~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_02~q\);

-- Location: LCCOMB_X18_Y15_N2
\inst14|char_03~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_03~feeder_combout\ = \inst14|char_02~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_02~q\,
	combout => \inst14|char_03~feeder_combout\);

-- Location: FF_X18_Y15_N3
\inst14|char_03\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_03~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_03~q\);

-- Location: LCCOMB_X18_Y15_N6
\inst14|char_04~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_04~feeder_combout\ = \inst14|char_03~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_03~q\,
	combout => \inst14|char_04~feeder_combout\);

-- Location: FF_X18_Y15_N7
\inst14|char_04\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_04~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_04~q\);

-- Location: FF_X19_Y15_N27
\inst14|char_05\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_04~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_05~q\);

-- Location: FF_X19_Y15_N31
\inst14|char_06\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_05~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_06~q\);

-- Location: FF_X18_Y15_N25
\inst14|char_07\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_06~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_07~q\);

-- Location: FF_X19_Y15_N13
\inst14|char_08\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_07~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_08~q\);

-- Location: FF_X19_Y14_N13
\inst14|char_09\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_08~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_09~q\);

-- Location: FF_X19_Y15_N3
\inst14|char_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_09~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_10~q\);

-- Location: FF_X23_Y16_N27
\inst14|char_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_10~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_11~q\);

-- Location: LCCOMB_X18_Y14_N26
\inst14|char_12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_12~feeder_combout\ = \inst14|char_11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|char_11~q\,
	combout => \inst14|char_12~feeder_combout\);

-- Location: FF_X18_Y14_N27
\inst14|char_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_12~feeder_combout\,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_12~q\);

-- Location: FF_X17_Y15_N15
\inst14|char_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_12~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_13~q\);

-- Location: LCCOMB_X17_Y15_N8
\inst14|lcd_bus[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~15_combout\ = (!\inst14|char_15~q\ & !\inst14|char_16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_15~q\,
	datac => \inst14|char_16~q\,
	combout => \inst14|lcd_bus[9]~15_combout\);

-- Location: LCCOMB_X17_Y15_N16
\inst14|lcd_bus[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~16_combout\ = (!\inst14|char_20~q\ & (!\inst14|char_18~q\ & (!\inst14|char_21~q\ & !\inst14|char_19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_20~q\,
	datab => \inst14|char_18~q\,
	datac => \inst14|char_21~q\,
	datad => \inst14|char_19~q\,
	combout => \inst14|lcd_bus[9]~16_combout\);

-- Location: LCCOMB_X17_Y15_N6
\inst14|lcd_bus[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~17_combout\ = (!\inst14|char_13~q\ & (\inst14|lcd_bus[9]~15_combout\ & (!\inst14|char_14~q\ & \inst14|lcd_bus[9]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_13~q\,
	datab => \inst14|lcd_bus[9]~15_combout\,
	datac => \inst14|char_14~q\,
	datad => \inst14|lcd_bus[9]~16_combout\,
	combout => \inst14|lcd_bus[9]~17_combout\);

-- Location: LCCOMB_X18_Y15_N16
\inst14|lcd_bus[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~14_combout\ = (!\inst14|char_01~q\ & (!\inst14|char_03~q\ & (!\inst14|char_02~q\ & !\inst14|char_04~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_01~q\,
	datab => \inst14|char_03~q\,
	datac => \inst14|char_02~q\,
	datad => \inst14|char_04~q\,
	combout => \inst14|lcd_bus[9]~14_combout\);

-- Location: LCCOMB_X18_Y15_N0
\inst14|lcd_bus[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~12_combout\ = (!\inst14|char_32~q\ & (!\inst14|char_31~q\ & (!\inst14|char_30~q\ & !\inst14|char_33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_32~q\,
	datab => \inst14|char_31~q\,
	datac => \inst14|char_30~q\,
	datad => \inst14|char_33~q\,
	combout => \inst14|lcd_bus[9]~12_combout\);

-- Location: LCCOMB_X18_Y15_N24
\inst14|lcd_bus[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~13_combout\ = (!\inst14|char_27~q\ & (!\inst14|char_24~q\ & (!\inst14|char_07~q\ & !\inst14|char_10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_27~q\,
	datab => \inst14|char_24~q\,
	datac => \inst14|char_07~q\,
	datad => \inst14|char_10~q\,
	combout => \inst14|lcd_bus[3]~13_combout\);

-- Location: LCCOMB_X17_Y15_N12
\inst14|lcd_bus[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~18_combout\ = (\inst14|lcd_bus[9]~17_combout\ & (\inst14|lcd_bus[9]~14_combout\ & (\inst14|lcd_bus[9]~12_combout\ & \inst14|lcd_bus[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[9]~17_combout\,
	datab => \inst14|lcd_bus[9]~14_combout\,
	datac => \inst14|lcd_bus[9]~12_combout\,
	datad => \inst14|lcd_bus[3]~13_combout\,
	combout => \inst14|lcd_bus[9]~18_combout\);

-- Location: LCCOMB_X19_Y15_N26
\inst14|lcd_bus[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~9_combout\ = (\inst14|char_08~q\) # ((\inst14|char_09~q\) # ((\inst14|char_05~q\) # (\inst14|char_06~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_08~q\,
	datab => \inst14|char_09~q\,
	datac => \inst14|char_05~q\,
	datad => \inst14|char_06~q\,
	combout => \inst14|lcd_bus[9]~9_combout\);

-- Location: LCCOMB_X18_Y15_N4
\inst14|lcd_bus[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~11_combout\ = (\inst14|char_29~q\) # ((\inst14|char_28~q\) # ((\inst14|char_26~q\) # (\inst14|char_25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_29~q\,
	datab => \inst14|char_28~q\,
	datac => \inst14|char_26~q\,
	datad => \inst14|char_25~q\,
	combout => \inst14|lcd_bus[9]~11_combout\);

-- Location: LCCOMB_X18_Y14_N0
\inst14|lcd_bus[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~10_combout\ = (\inst14|char_12~q\) # ((\inst14|char_22~q\) # ((\inst14|char_11~q\) # (\inst14|char_23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_12~q\,
	datab => \inst14|char_22~q\,
	datac => \inst14|char_11~q\,
	datad => \inst14|char_23~q\,
	combout => \inst14|lcd_bus[9]~10_combout\);

-- Location: LCCOMB_X18_Y15_N28
\inst14|lcd_bus[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~19_combout\ = ((\inst14|lcd_bus[9]~9_combout\) # ((\inst14|lcd_bus[9]~11_combout\) # (\inst14|lcd_bus[9]~10_combout\))) # (!\inst14|lcd_bus[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[9]~18_combout\,
	datab => \inst14|lcd_bus[9]~9_combout\,
	datac => \inst14|lcd_bus[9]~11_combout\,
	datad => \inst14|lcd_bus[9]~10_combout\,
	combout => \inst14|lcd_bus[9]~19_combout\);

-- Location: LCCOMB_X17_Y15_N10
\inst14|lcd_bus[9]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~92_combout\ = (!\inst15|busy~q\ & (!\inst14|lcd_enable~q\ & \inst14|lcd_bus[9]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|busy~q\,
	datac => \inst14|lcd_enable~q\,
	datad => \inst14|lcd_bus[9]~19_combout\,
	combout => \inst14|lcd_bus[9]~92_combout\);

-- Location: FF_X17_Y15_N11
\inst14|lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[9]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(9));

-- Location: LCCOMB_X8_Y18_N16
\inst15|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~14_combout\ = (\inst15|PRONTO~q\ & \inst14|lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|PRONTO~q\,
	datad => \inst14|lcd_enable~q\,
	combout => \inst15|_~14_combout\);

-- Location: LCCOMB_X8_Y18_N4
\inst15|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|rs~0_combout\ = (\inst14|lcd_bus\(9) & ((\inst15|_~14_combout\) # ((\inst15|ENVIAR~q\ & \inst15|rs~q\)))) # (!\inst14|lcd_bus\(9) & (\inst15|ENVIAR~q\ & (\inst15|rs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(9),
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|rs~q\,
	datad => \inst15|_~14_combout\,
	combout => \inst15|rs~0_combout\);

-- Location: FF_X8_Y18_N5
\inst15|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|rs~q\);

-- Location: LCCOMB_X1_Y11_N18
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
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alt~1_combout\,
	combout => \inst|alt~feeder_combout\);

-- Location: LCCOMB_X2_Y11_N30
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

-- Location: FF_X2_Y11_N31
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

-- Location: LCCOMB_X2_Y11_N4
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

-- Location: FF_X2_Y11_N5
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

-- Location: LCCOMB_X2_Y11_N6
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

-- Location: FF_X2_Y11_N7
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

-- Location: LCCOMB_X2_Y11_N8
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

-- Location: FF_X2_Y11_N9
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

-- Location: LCCOMB_X2_Y11_N10
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

-- Location: FF_X2_Y11_N11
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

-- Location: LCCOMB_X2_Y11_N12
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

-- Location: FF_X2_Y11_N13
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

-- Location: LCCOMB_X2_Y11_N14
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

-- Location: FF_X2_Y11_N15
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

-- Location: LCCOMB_X2_Y11_N16
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

-- Location: FF_X2_Y11_N17
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

-- Location: LCCOMB_X2_Y11_N18
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

-- Location: FF_X2_Y11_N19
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

-- Location: LCCOMB_X2_Y11_N20
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

-- Location: FF_X2_Y11_N21
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

-- Location: LCCOMB_X2_Y11_N22
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

-- Location: FF_X2_Y11_N23
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

-- Location: LCCOMB_X2_Y11_N24
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

-- Location: FF_X2_Y11_N25
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

-- Location: LCCOMB_X2_Y11_N26
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

-- Location: FF_X2_Y11_N27
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

-- Location: LCCOMB_X2_Y11_N28
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

-- Location: FF_X2_Y11_N29
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

-- Location: LCCOMB_X2_Y11_N0
\inst|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~0_combout\ = (((!\inst|count\(9) & !\inst|count\(8))) # (!\inst|count\(10))) # (!\inst|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(9),
	datab => \inst|count\(8),
	datac => \inst|count\(11),
	datad => \inst|count\(10),
	combout => \inst|op_1~0_combout\);

-- Location: LCCOMB_X2_Y11_N2
\inst|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~1_combout\ = (\inst|count\(14) & (\inst|count\(12) & (\inst|count\(13) & !\inst|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(14),
	datab => \inst|count\(12),
	datac => \inst|count\(13),
	datad => \inst|op_1~0_combout\,
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X19_Y20_N6
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

-- Location: FF_X19_Y20_N7
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

-- Location: LCCOMB_X19_Y20_N20
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

-- Location: FF_X19_Y20_N21
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

-- Location: LCCOMB_X19_Y20_N24
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

-- Location: LCCOMB_X19_Y20_N30
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

-- Location: LCCOMB_X19_Y20_N12
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

-- Location: LCCOMB_X19_Y20_N26
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

-- Location: LCCOMB_X17_Y15_N24
\inst14|lcd_bus[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[7]~20_combout\ = (!\inst14|lcd_enable~q\ & (!\inst15|busy~q\ & ((\inst14|char_17~q\) # (!\inst14|char_00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_00~q\,
	datab => \inst14|lcd_enable~q\,
	datac => \inst14|char_17~q\,
	datad => \inst15|busy~q\,
	combout => \inst14|lcd_bus[7]~20_combout\);

-- Location: FF_X17_Y15_N25
\inst14|lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(7));

-- Location: LCCOMB_X8_Y18_N6
\inst15|lcd_data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[7]~0_combout\ = (\inst14|lcd_bus\(7) & ((\inst15|_~14_combout\) # ((\inst15|lcd_data\(7) & \inst15|ENVIAR~q\)))) # (!\inst14|lcd_bus\(7) & (((\inst15|lcd_data\(7) & \inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(7),
	datab => \inst15|_~14_combout\,
	datac => \inst15|lcd_data\(7),
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|lcd_data[7]~0_combout\);

-- Location: FF_X8_Y18_N7
\inst15|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(7));

-- Location: LCCOMB_X17_Y15_N0
\inst14|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~0_combout\ = (!\inst14|lcd_enable~q\ & (\inst14|char_17~q\ & !\inst15|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_enable~q\,
	datac => \inst14|char_17~q\,
	datad => \inst15|busy~q\,
	combout => \inst14|_~0_combout\);

-- Location: FF_X17_Y15_N1
\inst14|lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(6));

-- Location: LCCOMB_X8_Y18_N8
\inst15|lcd_data[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[6]~1_combout\ = (\inst14|lcd_bus\(6) & ((\inst15|_~14_combout\) # ((\inst15|lcd_data\(6) & \inst15|ENVIAR~q\)))) # (!\inst14|lcd_bus\(6) & (((\inst15|lcd_data\(6) & \inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(6),
	datab => \inst15|_~14_combout\,
	datac => \inst15|lcd_data\(6),
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|lcd_data[6]~1_combout\);

-- Location: FF_X8_Y18_N9
\inst15|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(6));

-- Location: LCCOMB_X33_Y13_N30
\inst4|deb|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|alt~1_combout\ = !\inst4|deb|divisor|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|deb|divisor|alt~q\,
	combout => \inst4|deb|divisor|alt~1_combout\);

-- Location: LCCOMB_X32_Y13_N0
\inst1|debounc1|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|_~0_combout\ = (!\inst1|debounc1|divisor|count\(1) & !\inst4|deb|divisor|op_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|debounc1|divisor|count\(1),
	datad => \inst4|deb|divisor|op_1~3_combout\,
	combout => \inst1|debounc1|divisor|_~0_combout\);

-- Location: FF_X32_Y13_N1
\inst1|debounc1|divisor|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(1));

-- Location: LCCOMB_X32_Y13_N2
\inst1|debounc1|divisor|count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[2]~15_combout\ = (\inst1|debounc1|divisor|count\(2) & (\inst1|debounc1|divisor|count\(1) $ (VCC))) # (!\inst1|debounc1|divisor|count\(2) & (\inst1|debounc1|divisor|count\(1) & VCC))
-- \inst1|debounc1|divisor|count[2]~16\ = CARRY((\inst1|debounc1|divisor|count\(2) & \inst1|debounc1|divisor|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(2),
	datab => \inst1|debounc1|divisor|count\(1),
	datad => VCC,
	combout => \inst1|debounc1|divisor|count[2]~15_combout\,
	cout => \inst1|debounc1|divisor|count[2]~16\);

-- Location: FF_X32_Y13_N3
\inst1|debounc1|divisor|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[2]~15_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(2));

-- Location: LCCOMB_X32_Y13_N4
\inst1|debounc1|divisor|count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[3]~17_combout\ = (\inst1|debounc1|divisor|count\(3) & (!\inst1|debounc1|divisor|count[2]~16\)) # (!\inst1|debounc1|divisor|count\(3) & ((\inst1|debounc1|divisor|count[2]~16\) # (GND)))
-- \inst1|debounc1|divisor|count[3]~18\ = CARRY((!\inst1|debounc1|divisor|count[2]~16\) # (!\inst1|debounc1|divisor|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(3),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[2]~16\,
	combout => \inst1|debounc1|divisor|count[3]~17_combout\,
	cout => \inst1|debounc1|divisor|count[3]~18\);

-- Location: FF_X32_Y13_N5
\inst1|debounc1|divisor|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[3]~17_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(3));

-- Location: LCCOMB_X32_Y13_N6
\inst1|debounc1|divisor|count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[4]~19_combout\ = (\inst1|debounc1|divisor|count\(4) & (\inst1|debounc1|divisor|count[3]~18\ $ (GND))) # (!\inst1|debounc1|divisor|count\(4) & (!\inst1|debounc1|divisor|count[3]~18\ & VCC))
-- \inst1|debounc1|divisor|count[4]~20\ = CARRY((\inst1|debounc1|divisor|count\(4) & !\inst1|debounc1|divisor|count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(4),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[3]~18\,
	combout => \inst1|debounc1|divisor|count[4]~19_combout\,
	cout => \inst1|debounc1|divisor|count[4]~20\);

-- Location: FF_X32_Y13_N7
\inst1|debounc1|divisor|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[4]~19_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(4));

-- Location: LCCOMB_X32_Y13_N8
\inst1|debounc1|divisor|count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[5]~21_combout\ = (\inst1|debounc1|divisor|count\(5) & (!\inst1|debounc1|divisor|count[4]~20\)) # (!\inst1|debounc1|divisor|count\(5) & ((\inst1|debounc1|divisor|count[4]~20\) # (GND)))
-- \inst1|debounc1|divisor|count[5]~22\ = CARRY((!\inst1|debounc1|divisor|count[4]~20\) # (!\inst1|debounc1|divisor|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(5),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[4]~20\,
	combout => \inst1|debounc1|divisor|count[5]~21_combout\,
	cout => \inst1|debounc1|divisor|count[5]~22\);

-- Location: FF_X32_Y13_N9
\inst1|debounc1|divisor|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[5]~21_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(5));

-- Location: LCCOMB_X32_Y13_N10
\inst1|debounc1|divisor|count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[6]~23_combout\ = (\inst1|debounc1|divisor|count\(6) & (\inst1|debounc1|divisor|count[5]~22\ $ (GND))) # (!\inst1|debounc1|divisor|count\(6) & (!\inst1|debounc1|divisor|count[5]~22\ & VCC))
-- \inst1|debounc1|divisor|count[6]~24\ = CARRY((\inst1|debounc1|divisor|count\(6) & !\inst1|debounc1|divisor|count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(6),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[5]~22\,
	combout => \inst1|debounc1|divisor|count[6]~23_combout\,
	cout => \inst1|debounc1|divisor|count[6]~24\);

-- Location: FF_X32_Y13_N11
\inst1|debounc1|divisor|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[6]~23_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(6));

-- Location: LCCOMB_X32_Y13_N12
\inst1|debounc1|divisor|count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[7]~25_combout\ = (\inst1|debounc1|divisor|count\(7) & (!\inst1|debounc1|divisor|count[6]~24\)) # (!\inst1|debounc1|divisor|count\(7) & ((\inst1|debounc1|divisor|count[6]~24\) # (GND)))
-- \inst1|debounc1|divisor|count[7]~26\ = CARRY((!\inst1|debounc1|divisor|count[6]~24\) # (!\inst1|debounc1|divisor|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(7),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[6]~24\,
	combout => \inst1|debounc1|divisor|count[7]~25_combout\,
	cout => \inst1|debounc1|divisor|count[7]~26\);

-- Location: FF_X32_Y13_N13
\inst1|debounc1|divisor|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[7]~25_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(7));

-- Location: LCCOMB_X32_Y13_N14
\inst1|debounc1|divisor|count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[8]~27_combout\ = (\inst1|debounc1|divisor|count\(8) & (\inst1|debounc1|divisor|count[7]~26\ $ (GND))) # (!\inst1|debounc1|divisor|count\(8) & (!\inst1|debounc1|divisor|count[7]~26\ & VCC))
-- \inst1|debounc1|divisor|count[8]~28\ = CARRY((\inst1|debounc1|divisor|count\(8) & !\inst1|debounc1|divisor|count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(8),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[7]~26\,
	combout => \inst1|debounc1|divisor|count[8]~27_combout\,
	cout => \inst1|debounc1|divisor|count[8]~28\);

-- Location: FF_X32_Y13_N15
\inst1|debounc1|divisor|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[8]~27_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(8));

-- Location: LCCOMB_X32_Y13_N16
\inst1|debounc1|divisor|count[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[9]~29_combout\ = (\inst1|debounc1|divisor|count\(9) & (!\inst1|debounc1|divisor|count[8]~28\)) # (!\inst1|debounc1|divisor|count\(9) & ((\inst1|debounc1|divisor|count[8]~28\) # (GND)))
-- \inst1|debounc1|divisor|count[9]~30\ = CARRY((!\inst1|debounc1|divisor|count[8]~28\) # (!\inst1|debounc1|divisor|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(9),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[8]~28\,
	combout => \inst1|debounc1|divisor|count[9]~29_combout\,
	cout => \inst1|debounc1|divisor|count[9]~30\);

-- Location: FF_X32_Y13_N17
\inst1|debounc1|divisor|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[9]~29_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(9));

-- Location: LCCOMB_X32_Y13_N18
\inst1|debounc1|divisor|count[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[10]~31_combout\ = (\inst1|debounc1|divisor|count\(10) & (\inst1|debounc1|divisor|count[9]~30\ $ (GND))) # (!\inst1|debounc1|divisor|count\(10) & (!\inst1|debounc1|divisor|count[9]~30\ & VCC))
-- \inst1|debounc1|divisor|count[10]~32\ = CARRY((\inst1|debounc1|divisor|count\(10) & !\inst1|debounc1|divisor|count[9]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(10),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[9]~30\,
	combout => \inst1|debounc1|divisor|count[10]~31_combout\,
	cout => \inst1|debounc1|divisor|count[10]~32\);

-- Location: FF_X32_Y13_N19
\inst1|debounc1|divisor|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[10]~31_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(10));

-- Location: LCCOMB_X32_Y13_N20
\inst1|debounc1|divisor|count[11]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[11]~33_combout\ = (\inst1|debounc1|divisor|count\(11) & (!\inst1|debounc1|divisor|count[10]~32\)) # (!\inst1|debounc1|divisor|count\(11) & ((\inst1|debounc1|divisor|count[10]~32\) # (GND)))
-- \inst1|debounc1|divisor|count[11]~34\ = CARRY((!\inst1|debounc1|divisor|count[10]~32\) # (!\inst1|debounc1|divisor|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(11),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[10]~32\,
	combout => \inst1|debounc1|divisor|count[11]~33_combout\,
	cout => \inst1|debounc1|divisor|count[11]~34\);

-- Location: FF_X32_Y13_N21
\inst1|debounc1|divisor|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[11]~33_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(11));

-- Location: LCCOMB_X32_Y13_N22
\inst1|debounc1|divisor|count[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[12]~35_combout\ = (\inst1|debounc1|divisor|count\(12) & (\inst1|debounc1|divisor|count[11]~34\ $ (GND))) # (!\inst1|debounc1|divisor|count\(12) & (!\inst1|debounc1|divisor|count[11]~34\ & VCC))
-- \inst1|debounc1|divisor|count[12]~36\ = CARRY((\inst1|debounc1|divisor|count\(12) & !\inst1|debounc1|divisor|count[11]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(12),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[11]~34\,
	combout => \inst1|debounc1|divisor|count[12]~35_combout\,
	cout => \inst1|debounc1|divisor|count[12]~36\);

-- Location: FF_X32_Y13_N23
\inst1|debounc1|divisor|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[12]~35_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(12));

-- Location: LCCOMB_X32_Y13_N24
\inst1|debounc1|divisor|count[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[13]~37_combout\ = (\inst1|debounc1|divisor|count\(13) & (!\inst1|debounc1|divisor|count[12]~36\)) # (!\inst1|debounc1|divisor|count\(13) & ((\inst1|debounc1|divisor|count[12]~36\) # (GND)))
-- \inst1|debounc1|divisor|count[13]~38\ = CARRY((!\inst1|debounc1|divisor|count[12]~36\) # (!\inst1|debounc1|divisor|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(13),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[12]~36\,
	combout => \inst1|debounc1|divisor|count[13]~37_combout\,
	cout => \inst1|debounc1|divisor|count[13]~38\);

-- Location: FF_X32_Y13_N25
\inst1|debounc1|divisor|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[13]~37_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(13));

-- Location: LCCOMB_X32_Y13_N26
\inst1|debounc1|divisor|count[14]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[14]~39_combout\ = (\inst1|debounc1|divisor|count\(14) & (\inst1|debounc1|divisor|count[13]~38\ $ (GND))) # (!\inst1|debounc1|divisor|count\(14) & (!\inst1|debounc1|divisor|count[13]~38\ & VCC))
-- \inst1|debounc1|divisor|count[14]~40\ = CARRY((\inst1|debounc1|divisor|count\(14) & !\inst1|debounc1|divisor|count[13]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(14),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[13]~38\,
	combout => \inst1|debounc1|divisor|count[14]~39_combout\,
	cout => \inst1|debounc1|divisor|count[14]~40\);

-- Location: FF_X32_Y13_N27
\inst1|debounc1|divisor|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[14]~39_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(14));

-- Location: LCCOMB_X32_Y13_N28
\inst1|debounc1|divisor|count[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[15]~41_combout\ = (\inst1|debounc1|divisor|count\(15) & (!\inst1|debounc1|divisor|count[14]~40\)) # (!\inst1|debounc1|divisor|count\(15) & ((\inst1|debounc1|divisor|count[14]~40\) # (GND)))
-- \inst1|debounc1|divisor|count[15]~42\ = CARRY((!\inst1|debounc1|divisor|count[14]~40\) # (!\inst1|debounc1|divisor|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(15),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[14]~40\,
	combout => \inst1|debounc1|divisor|count[15]~41_combout\,
	cout => \inst1|debounc1|divisor|count[15]~42\);

-- Location: FF_X32_Y13_N29
\inst1|debounc1|divisor|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[15]~41_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(15));

-- Location: LCCOMB_X32_Y13_N30
\inst1|debounc1|divisor|count[16]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[16]~43_combout\ = \inst1|debounc1|divisor|count\(16) $ (!\inst1|debounc1|divisor|count[15]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(16),
	cin => \inst1|debounc1|divisor|count[15]~42\,
	combout => \inst1|debounc1|divisor|count[16]~43_combout\);

-- Location: FF_X32_Y13_N31
\inst1|debounc1|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[16]~43_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(16));

-- Location: LCCOMB_X33_Y13_N22
\inst4|deb|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~2_combout\ = (!\inst1|debounc1|divisor|count\(13) & (!\inst1|debounc1|divisor|count\(11) & (!\inst1|debounc1|divisor|count\(14) & !\inst1|debounc1|divisor|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(13),
	datab => \inst1|debounc1|divisor|count\(11),
	datac => \inst1|debounc1|divisor|count\(14),
	datad => \inst1|debounc1|divisor|count\(12),
	combout => \inst4|deb|divisor|op_1~2_combout\);

-- Location: LCCOMB_X33_Y13_N16
\inst4|deb|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~0_combout\ = (!\inst1|debounc1|divisor|count\(8) & (((!\inst1|debounc1|divisor|count\(6) & !\inst1|debounc1|divisor|count\(5))) # (!\inst1|debounc1|divisor|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(8),
	datab => \inst1|debounc1|divisor|count\(6),
	datac => \inst1|debounc1|divisor|count\(5),
	datad => \inst1|debounc1|divisor|count\(7),
	combout => \inst4|deb|divisor|op_1~0_combout\);

-- Location: LCCOMB_X33_Y13_N28
\inst4|deb|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~1_combout\ = ((\inst4|deb|divisor|op_1~0_combout\) # (!\inst1|debounc1|divisor|count\(9))) # (!\inst1|debounc1|divisor|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(10),
	datac => \inst1|debounc1|divisor|count\(9),
	datad => \inst4|deb|divisor|op_1~0_combout\,
	combout => \inst4|deb|divisor|op_1~1_combout\);

-- Location: LCCOMB_X33_Y13_N18
\inst4|deb|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~3_combout\ = (\inst1|debounc1|divisor|count\(15) & (\inst1|debounc1|divisor|count\(16) & ((!\inst4|deb|divisor|op_1~1_combout\) # (!\inst4|deb|divisor|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(15),
	datab => \inst1|debounc1|divisor|count\(16),
	datac => \inst4|deb|divisor|op_1~2_combout\,
	datad => \inst4|deb|divisor|op_1~1_combout\,
	combout => \inst4|deb|divisor|op_1~3_combout\);

-- Location: FF_X33_Y13_N27
\inst4|deb|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst4|deb|divisor|alt~1_combout\,
	sload => VCC,
	ena => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|alt~q\);

-- Location: LCCOMB_X33_Y13_N20
\inst4|deb|ff[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|ff[2]~0_combout\ = LCELL(\inst4|deb|divisor|alt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|deb|divisor|alt~q\,
	combout => \inst4|deb|ff[2]~0_combout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X33_Y13_N26
\inst1|debounc1|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|alt~1_combout\ = !\inst1|debounc1|divisor|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|alt~q\,
	combout => \inst1|debounc1|divisor|alt~1_combout\);

-- Location: FF_X33_Y13_N31
\inst1|debounc1|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|debounc1|divisor|alt~1_combout\,
	sload => VCC,
	ena => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|alt~q\);

-- Location: LCCOMB_X33_Y13_N24
\inst1|debounc1|ff[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|ff[2]~0_combout\ = LCELL(\inst1|debounc1|divisor|alt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|debounc1|divisor|alt~q\,
	combout => \inst1|debounc1|ff[2]~0_combout\);

-- Location: CLKCTRL_G5
\inst1|debounc1|divisor|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|debounc1|divisor|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|debounc1|divisor|alt~clkctrl_outclk\);

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

-- Location: LCCOMB_X30_Y13_N24
\inst1|debounc1|ff[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|ff[0]~1_combout\ = !\key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[1]~input_o\,
	combout => \inst1|debounc1|ff[0]~1_combout\);

-- Location: FF_X30_Y13_N25
\inst1|debounc1|ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|debounc1|divisor|alt~clkctrl_outclk\,
	d => \inst1|debounc1|ff[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|ff\(0));

-- Location: LCCOMB_X30_Y13_N18
\inst1|debounc1|ff[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|ff[1]~feeder_combout\ = \inst1|debounc1|ff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|debounc1|ff\(0),
	combout => \inst1|debounc1|ff[1]~feeder_combout\);

-- Location: FF_X30_Y13_N19
\inst1|debounc1|ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|debounc1|divisor|alt~clkctrl_outclk\,
	d => \inst1|debounc1|ff[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|ff\(1));

-- Location: LCCOMB_X30_Y13_N20
\inst1|debounc1|ff[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|ff[2]~feeder_combout\ = \inst1|debounc1|ff\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|debounc1|ff\(1),
	combout => \inst1|debounc1|ff[2]~feeder_combout\);

-- Location: FF_X30_Y13_N21
\inst1|debounc1|ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|debounc1|ff[2]~0_combout\,
	d => \inst1|debounc1|ff[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|ff\(2));

-- Location: LCCOMB_X29_Y13_N18
\inst4|deb|ff[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|ff[0]~feeder_combout\ = \inst1|debounc1|ff\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|ff\(2),
	combout => \inst4|deb|ff[0]~feeder_combout\);

-- Location: FF_X29_Y13_N19
\inst4|deb|ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|deb|divisor|alt~clkctrl_outclk\,
	d => \inst4|deb|ff[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|ff\(0));

-- Location: LCCOMB_X29_Y13_N22
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

-- Location: FF_X29_Y13_N23
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

-- Location: FF_X29_Y13_N3
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

-- Location: LCCOMB_X30_Y11_N18
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

-- Location: LCCOMB_X30_Y11_N20
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

-- Location: LCCOMB_X29_Y11_N28
\inst4|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~0_combout\ = ((!\inst4|divisor|count\(23)) # (!\inst4|divisor|count\(21))) # (!\inst4|divisor|count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(22),
	datac => \inst4|divisor|count\(21),
	datad => \inst4|divisor|count\(23),
	combout => \inst4|divisor|op_1~0_combout\);

-- Location: LCCOMB_X30_Y12_N0
\inst4|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~1_combout\ = (!\inst4|divisor|count\(10) & (((!\inst4|divisor|count\(7) & !\inst4|divisor|count\(8))) # (!\inst4|divisor|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(7),
	datab => \inst4|divisor|count\(8),
	datac => \inst4|divisor|count\(10),
	datad => \inst4|divisor|count\(9),
	combout => \inst4|divisor|op_1~1_combout\);

-- Location: LCCOMB_X30_Y11_N30
\inst4|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~2_combout\ = (((!\inst4|divisor|count\(11) & \inst4|divisor|op_1~1_combout\)) # (!\inst4|divisor|count\(13))) # (!\inst4|divisor|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(12),
	datab => \inst4|divisor|count\(13),
	datac => \inst4|divisor|count\(11),
	datad => \inst4|divisor|op_1~1_combout\,
	combout => \inst4|divisor|op_1~2_combout\);

-- Location: LCCOMB_X30_Y11_N28
\inst4|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~3_combout\ = (!\inst4|divisor|count\(16) & (((!\inst4|divisor|count\(14) & \inst4|divisor|op_1~2_combout\)) # (!\inst4|divisor|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(14),
	datab => \inst4|divisor|count\(15),
	datac => \inst4|divisor|op_1~2_combout\,
	datad => \inst4|divisor|count\(16),
	combout => \inst4|divisor|op_1~3_combout\);

-- Location: LCCOMB_X30_Y11_N26
\inst4|divisor|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~4_combout\ = ((\inst4|divisor|op_1~3_combout\) # (!\inst4|divisor|count\(17))) # (!\inst4|divisor|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(18),
	datac => \inst4|divisor|count\(17),
	datad => \inst4|divisor|op_1~3_combout\,
	combout => \inst4|divisor|op_1~4_combout\);

-- Location: LCCOMB_X30_Y12_N2
\inst4|divisor|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~5_combout\ = (\inst4|divisor|op_1~0_combout\) # ((!\inst4|divisor|count\(19) & (!\inst4|divisor|count\(20) & \inst4|divisor|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(19),
	datab => \inst4|divisor|count\(20),
	datac => \inst4|divisor|op_1~0_combout\,
	datad => \inst4|divisor|op_1~4_combout\,
	combout => \inst4|divisor|op_1~5_combout\);

-- Location: LCCOMB_X30_Y12_N4
\inst4|divisor|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~7_combout\ = (!\inst4|divisor|op_1~6_combout\ & ((\inst4|divisor|count\(24)) # (!\inst4|divisor|op_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(24),
	datac => \inst4|divisor|op_1~6_combout\,
	datad => \inst4|divisor|op_1~5_combout\,
	combout => \inst4|divisor|op_1~7_combout\);

-- Location: FF_X30_Y11_N21
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

-- Location: LCCOMB_X30_Y11_N22
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

-- Location: FF_X30_Y11_N23
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

-- Location: LCCOMB_X30_Y11_N24
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

-- Location: FF_X30_Y11_N25
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

-- Location: LCCOMB_X29_Y11_N2
\inst4|divisor|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~6_combout\ = ((!\inst4|divisor|count\(26)) # (!\inst4|divisor|count\(25))) # (!\inst4|divisor|count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(27),
	datac => \inst4|divisor|count\(25),
	datad => \inst4|divisor|count\(26),
	combout => \inst4|divisor|op_1~6_combout\);

-- Location: LCCOMB_X29_Y12_N28
\inst4|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|_~0_combout\ = (!\inst4|divisor|count\(1) & ((\inst4|divisor|op_1~6_combout\) # ((!\inst4|divisor|count\(24) & \inst4|divisor|op_1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(24),
	datab => \inst4|divisor|op_1~6_combout\,
	datac => \inst4|divisor|count\(1),
	datad => \inst4|divisor|op_1~5_combout\,
	combout => \inst4|divisor|_~0_combout\);

-- Location: FF_X29_Y12_N29
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

-- Location: LCCOMB_X30_Y12_N6
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

-- Location: FF_X30_Y12_N7
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

-- Location: LCCOMB_X30_Y12_N8
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

-- Location: FF_X30_Y12_N9
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

-- Location: LCCOMB_X30_Y12_N10
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

-- Location: FF_X30_Y12_N11
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

-- Location: LCCOMB_X30_Y12_N12
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

-- Location: FF_X30_Y12_N13
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

-- Location: LCCOMB_X30_Y12_N14
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

-- Location: FF_X30_Y12_N15
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

-- Location: LCCOMB_X30_Y12_N16
\inst4|divisor|count[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[7]~36_combout\ = (\inst4|divisor|count\(7) & (!\inst4|divisor|count[6]~35\)) # (!\inst4|divisor|count\(7) & ((\inst4|divisor|count[6]~35\) # (GND)))
-- \inst4|divisor|count[7]~37\ = CARRY((!\inst4|divisor|count[6]~35\) # (!\inst4|divisor|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(7),
	datad => VCC,
	cin => \inst4|divisor|count[6]~35\,
	combout => \inst4|divisor|count[7]~36_combout\,
	cout => \inst4|divisor|count[7]~37\);

-- Location: FF_X30_Y12_N17
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

-- Location: LCCOMB_X30_Y12_N18
\inst4|divisor|count[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[8]~38_combout\ = (\inst4|divisor|count\(8) & (\inst4|divisor|count[7]~37\ $ (GND))) # (!\inst4|divisor|count\(8) & (!\inst4|divisor|count[7]~37\ & VCC))
-- \inst4|divisor|count[8]~39\ = CARRY((\inst4|divisor|count\(8) & !\inst4|divisor|count[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(8),
	datad => VCC,
	cin => \inst4|divisor|count[7]~37\,
	combout => \inst4|divisor|count[8]~38_combout\,
	cout => \inst4|divisor|count[8]~39\);

-- Location: FF_X30_Y12_N19
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

-- Location: LCCOMB_X30_Y12_N20
\inst4|divisor|count[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[9]~40_combout\ = (\inst4|divisor|count\(9) & (!\inst4|divisor|count[8]~39\)) # (!\inst4|divisor|count\(9) & ((\inst4|divisor|count[8]~39\) # (GND)))
-- \inst4|divisor|count[9]~41\ = CARRY((!\inst4|divisor|count[8]~39\) # (!\inst4|divisor|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(9),
	datad => VCC,
	cin => \inst4|divisor|count[8]~39\,
	combout => \inst4|divisor|count[9]~40_combout\,
	cout => \inst4|divisor|count[9]~41\);

-- Location: FF_X30_Y12_N21
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

-- Location: LCCOMB_X30_Y12_N22
\inst4|divisor|count[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[10]~42_combout\ = (\inst4|divisor|count\(10) & (\inst4|divisor|count[9]~41\ $ (GND))) # (!\inst4|divisor|count\(10) & (!\inst4|divisor|count[9]~41\ & VCC))
-- \inst4|divisor|count[10]~43\ = CARRY((\inst4|divisor|count\(10) & !\inst4|divisor|count[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(10),
	datad => VCC,
	cin => \inst4|divisor|count[9]~41\,
	combout => \inst4|divisor|count[10]~42_combout\,
	cout => \inst4|divisor|count[10]~43\);

-- Location: FF_X30_Y12_N23
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

-- Location: LCCOMB_X30_Y12_N24
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

-- Location: FF_X30_Y12_N25
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

-- Location: LCCOMB_X30_Y12_N26
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

-- Location: FF_X30_Y12_N27
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

-- Location: LCCOMB_X30_Y12_N28
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

-- Location: FF_X30_Y12_N29
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

-- Location: LCCOMB_X30_Y12_N30
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

-- Location: FF_X30_Y12_N31
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

-- Location: LCCOMB_X30_Y11_N0
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

-- Location: FF_X30_Y11_N1
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

-- Location: LCCOMB_X30_Y11_N2
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

-- Location: FF_X30_Y11_N3
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

-- Location: LCCOMB_X30_Y11_N4
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

-- Location: FF_X30_Y11_N5
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

-- Location: LCCOMB_X30_Y11_N6
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

-- Location: FF_X30_Y11_N7
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

-- Location: LCCOMB_X30_Y11_N8
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

-- Location: FF_X30_Y11_N9
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

-- Location: LCCOMB_X30_Y11_N10
\inst4|divisor|count[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[20]~62_combout\ = (\inst4|divisor|count\(20) & (\inst4|divisor|count[19]~61\ $ (GND))) # (!\inst4|divisor|count\(20) & (!\inst4|divisor|count[19]~61\ & VCC))
-- \inst4|divisor|count[20]~63\ = CARRY((\inst4|divisor|count\(20) & !\inst4|divisor|count[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(20),
	datad => VCC,
	cin => \inst4|divisor|count[19]~61\,
	combout => \inst4|divisor|count[20]~62_combout\,
	cout => \inst4|divisor|count[20]~63\);

-- Location: FF_X30_Y11_N11
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

-- Location: LCCOMB_X30_Y11_N12
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

-- Location: FF_X30_Y11_N13
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

-- Location: LCCOMB_X30_Y11_N14
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

-- Location: FF_X30_Y11_N15
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

-- Location: LCCOMB_X30_Y11_N16
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

-- Location: FF_X30_Y11_N17
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

-- Location: FF_X30_Y11_N19
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

-- Location: LCCOMB_X29_Y12_N30
\inst4|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|alt~1_combout\ = \inst4|divisor|alt~q\ $ (((!\inst4|divisor|op_1~6_combout\ & ((\inst4|divisor|count\(24)) # (!\inst4|divisor|op_1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(24),
	datab => \inst4|divisor|alt~q\,
	datac => \inst4|divisor|op_1~6_combout\,
	datad => \inst4|divisor|op_1~5_combout\,
	combout => \inst4|divisor|alt~1_combout\);

-- Location: FF_X29_Y12_N1
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

-- Location: LCCOMB_X29_Y13_N2
\inst4|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|temp~0_combout\ = LCELL((\inst4|temp~q\ & ((\inst4|divisor|alt~q\))) # (!\inst4|temp~q\ & (!\inst4|deb|ff\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datac => \inst4|deb|ff\(2),
	datad => \inst4|divisor|alt~q\,
	combout => \inst4|temp~0_combout\);

-- Location: LCCOMB_X23_Y13_N22
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

-- Location: FF_X23_Y13_N23
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

-- Location: LCCOMB_X1_Y11_N12
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
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|div_sorteio|alt~1_combout\,
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

-- Location: LCCOMB_X22_Y14_N28
\inst4|sorteio|unidade[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[3]~1_combout\ = (!\inst4|sorteio|unidade\(4) & (\inst4|sorteio|unidade\(3) $ (((\inst4|sorteio|unidade\(1) & \inst4|sorteio|unidade\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|sorteio|unidade[3]~1_combout\);

-- Location: FF_X22_Y14_N29
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

-- Location: LCCOMB_X22_Y14_N10
\inst4|sorteio|unidade[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[4]~0_combout\ = (\inst4|sorteio|unidade\(1) & (\inst4|sorteio|unidade\(2) & (!\inst4|sorteio|unidade\(4) & \inst4|sorteio|unidade\(3)))) # (!\inst4|sorteio|unidade\(1) & (!\inst4|sorteio|unidade\(2) & (\inst4|sorteio|unidade\(4) & 
-- !\inst4|sorteio|unidade\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|sorteio|unidade\(4),
	datad => \inst4|sorteio|unidade\(3),
	combout => \inst4|sorteio|unidade[4]~0_combout\);

-- Location: FF_X22_Y14_N11
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

-- Location: LCCOMB_X21_Y13_N12
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

-- Location: FF_X21_Y13_N13
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

-- Location: LCCOMB_X21_Y13_N2
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

-- Location: FF_X21_Y13_N3
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

-- Location: LCCOMB_X22_Y14_N26
\inst4|sorteio|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|op_3~0_combout\ = ((!\inst4|sorteio|unidade\(1) & (!\inst4|sorteio|unidade\(2) & !\inst4|sorteio|unidade\(3)))) # (!\inst4|sorteio|unidade\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|unidade\(3),
	combout => \inst4|sorteio|op_3~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
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

-- Location: FF_X22_Y14_N15
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

-- Location: LCCOMB_X23_Y14_N30
\inst4|sorteio|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|_~1_combout\ = (!\inst4|sorteio|unidade\(4) & (\inst4|sorteio|dezena\(3) & (\inst4|sorteio|dezena\(2) & !\inst4|sorteio|dezena\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|sorteio|_~1_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst4|sorteio|dezena[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[4]~0_combout\ = \inst4|sorteio|dezena\(4) $ (((\inst4|sorteio|op_5~0_combout\ & (\inst4|sorteio|dezena\(3) & !\inst4|sorteio|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|op_5~0_combout\,
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|sorteio|op_3~0_combout\,
	combout => \inst4|sorteio|dezena[4]~0_combout\);

-- Location: FF_X22_Y14_N17
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

-- Location: LCCOMB_X22_Y14_N12
\inst4|sorteio|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|_~0_combout\ = (!\inst4|sorteio|unidade\(1) & (!\inst4|sorteio|unidade\(3) & (!\inst4|sorteio|unidade\(2) & !\inst4|sorteio|dezena\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|dezena\(4),
	combout => \inst4|sorteio|_~0_combout\);

-- Location: LCCOMB_X22_Y14_N2
\inst4|sorteio|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|_~2_combout\ = (\inst4|sorteio|_~1_combout\ & \inst4|sorteio|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sorteio|_~1_combout\,
	datad => \inst4|sorteio|_~0_combout\,
	combout => \inst4|sorteio|_~2_combout\);

-- Location: LCCOMB_X22_Y14_N0
\inst4|sorteio|dezena[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[2]~2_combout\ = (!\inst4|sorteio|_~2_combout\ & (\inst4|sorteio|dezena\(2) $ (((!\inst4|sorteio|op_3~0_combout\ & \inst4|sorteio|dezena\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|op_3~0_combout\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|_~2_combout\,
	combout => \inst4|sorteio|dezena[2]~2_combout\);

-- Location: FF_X22_Y14_N1
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

-- Location: LCCOMB_X23_Y14_N20
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

-- Location: LCCOMB_X22_Y14_N6
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

-- Location: FF_X22_Y14_N7
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X23_Y13_N0
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

-- Location: FF_X23_Y13_N1
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

-- Location: LCCOMB_X23_Y13_N16
\inst4|count|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|_~1_combout\ = (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(3) & \inst4|count|cnt\(2))) # (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) & !\inst4|count|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(3),
	datad => \inst4|count|cnt\(2),
	combout => \inst4|count|_~1_combout\);

-- Location: FF_X23_Y13_N17
\inst4|count|cnt[3]\ : dffeas
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
	q => \inst4|count|cnt\(3));

-- Location: LCCOMB_X23_Y13_N30
\inst4|count|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|_~0_combout\ = (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(2) $ (\inst4|count|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(1),
	combout => \inst4|count|_~0_combout\);

-- Location: FF_X23_Y13_N31
\inst4|count|cnt[2]\ : dffeas
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
	q => \inst4|count|cnt\(2));

-- Location: LCCOMB_X23_Y13_N26
\inst4|_~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~41_combout\ = (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(1) & (\inst4|temp~q\ & !\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst4|temp~q\,
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~41_combout\);

-- Location: LCCOMB_X22_Y13_N12
\inst4|_~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~54_combout\ = (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|temp~q\,
	combout => \inst4|_~54_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst4|d[5][3]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~115_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|_~41_combout\) # (\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|d[5][3]~115_combout\);

-- Location: LCCOMB_X23_Y13_N12
\inst4|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~9_combout\ = (!\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & (\inst4|temp~q\ & !\inst4|count|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|temp~q\,
	datad => \inst4|count|cnt\(1),
	combout => \inst4|_~9_combout\);

-- Location: LCCOMB_X25_Y13_N30
\inst4|u[3][1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~49_combout\ = (\inst4|u[3][1]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[3][1]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[3][1]~49_combout\);

-- Location: LCCOMB_X23_Y13_N18
\inst4|_~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~55_combout\ = (\inst4|temp~q\ & (\inst4|count|cnt\(3) & (!\inst4|count|cnt\(2) & !\inst4|count|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(1),
	combout => \inst4|_~55_combout\);

-- Location: LCCOMB_X23_Y12_N12
\inst4|d[2][2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~62_combout\ = (\inst4|d[2][2]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[2][2]~62_combout\);

-- Location: LCCOMB_X23_Y12_N18
\inst4|d[2][2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~59_combout\ = (\inst4|sorteio|dezena\(2) & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\ & \inst4|d[2][2]~q\)))) # (!\inst4|sorteio|dezena\(2) & (\inst4|_~9_combout\ & ((\inst4|d[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(2),
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|d[2][2]~q\,
	combout => \inst4|d[2][2]~59_combout\);

-- Location: LCCOMB_X19_Y13_N30
\inst4|u[4][1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~41_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|_~39_combout\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~9_combout\,
	combout => \inst4|u[4][1]~41_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst4|u[4][1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~44_combout\ = (\inst4|u[4][1]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[4][1]~44_combout\);

-- Location: LCCOMB_X19_Y13_N4
\inst4|u[4][1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~42_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|_~41_combout\) # ((\inst4|sorteio|unidade\(1) & \inst4|_~68_combout\)))) # (!\inst4|u[4][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|_~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~41_combout\,
	combout => \inst4|u[4][1]~42_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst4|_~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~74_combout\ = (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & \inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~74_combout\);

-- Location: LCCOMB_X21_Y15_N28
\inst4|u[4][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~12_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|_~41_combout\) # ((\inst4|sorteio|unidade\(4) & \inst4|_~68_combout\)))) # (!\inst4|u[4][4]~q\ & (\inst4|sorteio|unidade\(4) & ((\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[4][4]~12_combout\);

-- Location: LCCOMB_X21_Y15_N24
\inst4|u[4][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~14_combout\ = (\inst4|u[4][4]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[4][4]~14_combout\);

-- Location: LCCOMB_X21_Y17_N6
\inst4|u[1][4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~23_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|_~55_combout\) # (\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|u[1][4]~23_combout\);

-- Location: LCCOMB_X21_Y17_N28
\inst4|u[1][4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~24_combout\ = (\inst4|u[1][4]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[1][4]~24_combout\);

-- Location: LCCOMB_X21_Y17_N8
\inst4|u[1][4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~22_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~39_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[1][4]~22_combout\);

-- Location: LCCOMB_X22_Y16_N26
\inst4|d[6][1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~51_combout\ = (\inst4|sorteio|dezena\(1) & ((\inst4|_~61_combout\) # ((\inst4|d[6][1]~q\ & \inst4|_~55_combout\)))) # (!\inst4|sorteio|dezena\(1) & (\inst4|d[6][1]~q\ & ((\inst4|_~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|d[6][1]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|d[6][1]~51_combout\);

-- Location: LCCOMB_X22_Y16_N24
\inst4|d[6][1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~50_combout\ = (\inst4|d[6][1]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][1]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[6][1]~50_combout\);

-- Location: LCCOMB_X22_Y13_N30
\inst4|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~15_combout\ = (\inst4|temp~q\ & (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & !\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~15_combout\);

-- Location: LCCOMB_X22_Y16_N28
\inst4|d[6][1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~52_combout\ = (\inst4|temp~q\ & (!\inst4|_~9_combout\ & (!\inst4|_~15_combout\ & !\inst4|_~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~15_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[6][1]~52_combout\);

-- Location: LCCOMB_X22_Y16_N20
\inst4|d[6][1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~53_combout\ = (\inst4|d[6][1]~51_combout\) # ((\inst4|d[6][1]~50_combout\) # ((\inst4|d[6][1]~q\ & !\inst4|d[6][1]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][1]~51_combout\,
	datab => \inst4|d[6][1]~50_combout\,
	datac => \inst4|d[6][1]~q\,
	datad => \inst4|d[6][1]~52_combout\,
	combout => \inst4|d[6][1]~53_combout\);

-- Location: FF_X22_Y16_N21
\inst4|d[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[6][1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][1]~q\);

-- Location: LCCOMB_X23_Y12_N10
\inst4|d[6][2]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~84_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~39_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[6][2]~84_combout\);

-- Location: LCCOMB_X23_Y12_N4
\inst4|d[6][2]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~87_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~62_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[6][2]~87_combout\);

-- Location: LCCOMB_X23_Y12_N22
\inst4|d[6][2]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~86_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~55_combout\) # ((\inst4|sorteio|dezena\(2) & \inst4|_~61_combout\)))) # (!\inst4|d[6][2]~q\ & (\inst4|sorteio|dezena\(2) & ((\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[6][2]~86_combout\);

-- Location: LCCOMB_X23_Y12_N24
\inst4|d[6][2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~85_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[6][2]~85_combout\);

-- Location: LCCOMB_X23_Y12_N26
\inst4|d[6][2]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~88_combout\ = (\inst4|d[6][2]~84_combout\) # ((\inst4|d[6][2]~87_combout\) # ((\inst4|d[6][2]~86_combout\) # (\inst4|d[6][2]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~84_combout\,
	datab => \inst4|d[6][2]~87_combout\,
	datac => \inst4|d[6][2]~86_combout\,
	datad => \inst4|d[6][2]~85_combout\,
	combout => \inst4|d[6][2]~88_combout\);

-- Location: FF_X23_Y12_N27
\inst4|d[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[6][2]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][2]~q\);

-- Location: LCCOMB_X22_Y14_N30
\inst4|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~22_combout\ = (\inst4|sorteio|dezena\(2) & (\inst4|d[6][2]~q\ & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[6][1]~q\)))) # (!\inst4|sorteio|dezena\(2) & (!\inst4|d[6][2]~q\ & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(2),
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|d[6][1]~q\,
	datad => \inst4|d[6][2]~q\,
	combout => \inst4|_~22_combout\);

-- Location: LCCOMB_X21_Y17_N12
\inst4|u[6][1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~52_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|u[6][1]~q\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[6][1]~52_combout\);

-- Location: LCCOMB_X21_Y17_N18
\inst4|u[6][1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~51_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~39_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[6][1]~51_combout\);

-- Location: LCCOMB_X21_Y17_N14
\inst4|u[6][1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~53_combout\ = (\inst4|_~55_combout\ & ((\inst4|u[6][1]~q\) # ((\inst4|sorteio|unidade\(1) & \inst4|_~61_combout\)))) # (!\inst4|_~55_combout\ & (((\inst4|sorteio|unidade\(1) & \inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~55_combout\,
	datab => \inst4|u[6][1]~q\,
	datac => \inst4|sorteio|unidade\(1),
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[6][1]~53_combout\);

-- Location: LCCOMB_X21_Y17_N24
\inst4|u[6][1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~54_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~62_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[6][1]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[6][1]~54_combout\);

-- Location: LCCOMB_X21_Y17_N20
\inst4|u[6][1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~55_combout\ = (\inst4|u[6][1]~52_combout\) # ((\inst4|u[6][1]~51_combout\) # ((\inst4|u[6][1]~53_combout\) # (\inst4|u[6][1]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~52_combout\,
	datab => \inst4|u[6][1]~51_combout\,
	datac => \inst4|u[6][1]~53_combout\,
	datad => \inst4|u[6][1]~54_combout\,
	combout => \inst4|u[6][1]~55_combout\);

-- Location: FF_X21_Y17_N21
\inst4|u[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[6][1]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][1]~q\);

-- Location: LCCOMB_X24_Y14_N10
\inst4|u[6][2]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~88_combout\ = (!\inst4|_~41_combout\ & (\inst4|temp~q\ & (!\inst4|_~54_combout\ & !\inst4|_~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~54_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[6][2]~88_combout\);

-- Location: LCCOMB_X24_Y14_N16
\inst4|u[6][2]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~87_combout\ = (\inst4|_~55_combout\ & ((\inst4|u[6][2]~q\) # ((\inst4|sorteio|unidade\(2) & \inst4|_~61_combout\)))) # (!\inst4|_~55_combout\ & (((\inst4|sorteio|unidade\(2) & \inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~55_combout\,
	datab => \inst4|u[6][2]~q\,
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[6][2]~87_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst4|u[6][2]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~86_combout\ = (\inst4|u[6][2]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|u[6][2]~q\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[6][2]~86_combout\);

-- Location: LCCOMB_X24_Y14_N2
\inst4|u[6][2]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~89_combout\ = (\inst4|u[6][2]~87_combout\) # ((\inst4|u[6][2]~86_combout\) # ((!\inst4|u[6][2]~88_combout\ & \inst4|u[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~88_combout\,
	datab => \inst4|u[6][2]~87_combout\,
	datac => \inst4|u[6][2]~q\,
	datad => \inst4|u[6][2]~86_combout\,
	combout => \inst4|u[6][2]~89_combout\);

-- Location: FF_X24_Y14_N3
\inst4|u[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[6][2]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][2]~q\);

-- Location: LCCOMB_X21_Y13_N6
\inst4|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~24_combout\ = (\inst4|sorteio|unidade\(2) & (\inst4|u[6][2]~q\ & (\inst4|sorteio|unidade\(1) $ (!\inst4|u[6][1]~q\)))) # (!\inst4|sorteio|unidade\(2) & (!\inst4|u[6][2]~q\ & (\inst4|sorteio|unidade\(1) $ (!\inst4|u[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|u[6][1]~q\,
	datad => \inst4|u[6][2]~q\,
	combout => \inst4|_~24_combout\);

-- Location: LCCOMB_X24_Y15_N4
\inst4|u[6][4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~26_combout\ = (!\inst4|count|cnt\(1) & (\inst4|temp~q\ & (!\inst4|count|cnt\(2) & !\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|temp~q\,
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|u[6][4]~26_combout\);

-- Location: LCCOMB_X23_Y15_N22
\inst4|u[6][4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~27_combout\ = (\inst4|u[6][4]~q\ & ((\inst4|_~39_combout\) # ((\inst4|u[6][4]~26_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|u[6][4]~26_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[6][4]~27_combout\);

-- Location: LCCOMB_X23_Y15_N20
\inst4|u[6][4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~28_combout\ = (\inst4|_~55_combout\) # ((\inst4|_~41_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~55_combout\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[6][4]~28_combout\);

-- Location: LCCOMB_X23_Y15_N2
\inst4|u[6][4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~29_combout\ = (\inst4|u[6][4]~q\ & ((\inst4|_~68_combout\) # ((\inst4|u[6][4]~28_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~68_combout\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|u[6][4]~28_combout\,
	combout => \inst4|u[6][4]~29_combout\);

-- Location: LCCOMB_X23_Y15_N12
\inst4|u[6][4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~30_combout\ = (\inst4|u[6][4]~27_combout\) # ((\inst4|u[6][4]~29_combout\) # ((\inst4|sorteio|unidade\(4) & \inst4|_~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|_~61_combout\,
	datac => \inst4|u[6][4]~27_combout\,
	datad => \inst4|u[6][4]~29_combout\,
	combout => \inst4|u[6][4]~30_combout\);

-- Location: FF_X23_Y15_N13
\inst4|u[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[6][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][4]~q\);

-- Location: LCCOMB_X23_Y15_N18
\inst4|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~23_combout\ = (\inst4|u[6][3]~q\ & (\inst4|sorteio|unidade\(3) & (\inst4|u[6][4]~q\ $ (!\inst4|sorteio|unidade\(4))))) # (!\inst4|u[6][3]~q\ & (!\inst4|sorteio|unidade\(3) & (\inst4|u[6][4]~q\ $ (!\inst4|sorteio|unidade\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|_~23_combout\);

-- Location: LCCOMB_X21_Y12_N12
\inst4|d[6][3]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~110_combout\ = (\inst4|d[6][3]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~68_combout\) # (\inst4|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[6][3]~110_combout\);

-- Location: LCCOMB_X21_Y12_N2
\inst4|d[6][3]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~109_combout\ = (\inst4|d[6][3]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[6][3]~109_combout\);

-- Location: LCCOMB_X21_Y12_N8
\inst4|d[6][3]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~112_combout\ = (\inst4|d[6][3]~q\ & ((\inst4|_~62_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[6][3]~112_combout\);

-- Location: LCCOMB_X21_Y12_N18
\inst4|d[6][3]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~111_combout\ = (\inst4|d[6][3]~q\ & ((\inst4|_~55_combout\) # ((\inst4|sorteio|dezena\(3) & \inst4|_~61_combout\)))) # (!\inst4|d[6][3]~q\ & (\inst4|sorteio|dezena\(3) & ((\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[6][3]~111_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst4|d[6][3]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~113_combout\ = (\inst4|d[6][3]~110_combout\) # ((\inst4|d[6][3]~109_combout\) # ((\inst4|d[6][3]~112_combout\) # (\inst4|d[6][3]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~110_combout\,
	datab => \inst4|d[6][3]~109_combout\,
	datac => \inst4|d[6][3]~112_combout\,
	datad => \inst4|d[6][3]~111_combout\,
	combout => \inst4|d[6][3]~113_combout\);

-- Location: FF_X21_Y12_N27
\inst4|d[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[6][3]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][3]~q\);

-- Location: LCCOMB_X21_Y12_N30
\inst4|d[6][4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~25_combout\ = (\inst4|d[6][4]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[6][4]~25_combout\);

-- Location: LCCOMB_X21_Y12_N4
\inst4|d[6][4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~28_combout\ = (\inst4|d[6][4]~q\ & ((\inst4|_~62_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[6][4]~28_combout\);

-- Location: LCCOMB_X21_Y12_N14
\inst4|d[6][4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~27_combout\ = (\inst4|sorteio|dezena\(4) & ((\inst4|_~61_combout\) # ((\inst4|d[6][4]~q\ & \inst4|_~55_combout\)))) # (!\inst4|sorteio|dezena\(4) & (\inst4|d[6][4]~q\ & (\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(4),
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[6][4]~27_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst4|d[6][4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~26_combout\ = (\inst4|d[6][4]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~68_combout\) # (\inst4|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[6][4]~26_combout\);

-- Location: LCCOMB_X21_Y12_N20
\inst4|d[6][4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~29_combout\ = (\inst4|d[6][4]~25_combout\) # ((\inst4|d[6][4]~28_combout\) # ((\inst4|d[6][4]~27_combout\) # (\inst4|d[6][4]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][4]~25_combout\,
	datab => \inst4|d[6][4]~28_combout\,
	datac => \inst4|d[6][4]~27_combout\,
	datad => \inst4|d[6][4]~26_combout\,
	combout => \inst4|d[6][4]~29_combout\);

-- Location: FF_X21_Y12_N21
\inst4|d[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[6][4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][4]~q\);

-- Location: LCCOMB_X21_Y12_N0
\inst4|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~21_combout\ = (\inst4|d[6][3]~q\ & (\inst4|sorteio|dezena\(3) & (\inst4|d[6][4]~q\ $ (!\inst4|sorteio|dezena\(4))))) # (!\inst4|d[6][3]~q\ & (!\inst4|sorteio|dezena\(3) & (\inst4|d[6][4]~q\ $ (!\inst4|sorteio|dezena\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|sorteio|dezena\(4),
	combout => \inst4|_~21_combout\);

-- Location: LCCOMB_X22_Y13_N24
\inst4|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~25_combout\ = (\inst4|_~22_combout\ & (!\inst4|_~21_combout\ & ((!\inst4|_~23_combout\) # (!\inst4|_~24_combout\)))) # (!\inst4|_~22_combout\ & (((!\inst4|_~23_combout\)) # (!\inst4|_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~22_combout\,
	datab => \inst4|_~24_combout\,
	datac => \inst4|_~23_combout\,
	datad => \inst4|_~21_combout\,
	combout => \inst4|_~25_combout\);

-- Location: LCCOMB_X23_Y17_N20
\inst4|d[1][3]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~96_combout\ = (\inst4|d[1][3]~q\ & ((\inst4|_~55_combout\) # (\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|_~55_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|d[1][3]~96_combout\);

-- Location: LCCOMB_X24_Y14_N4
\inst4|d[1][3]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~97_combout\ = (\inst4|d[1][3]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[1][3]~97_combout\);

-- Location: LCCOMB_X22_Y15_N18
\inst4|_~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~82_combout\ = (\inst4|_~9_combout\ & (((!\inst4|_~80_combout\) # (!\inst4|_~20_combout\)) # (!\inst4|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~25_combout\,
	datab => \inst4|_~20_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~80_combout\,
	combout => \inst4|_~82_combout\);

-- Location: LCCOMB_X22_Y15_N30
\inst4|d[1][3]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~94_combout\ = (\inst4|d[1][3]~q\ & ((\inst4|_~82_combout\) # ((\inst4|sorteio|dezena\(3) & \inst4|_~81_combout\)))) # (!\inst4|d[1][3]~q\ & (\inst4|sorteio|dezena\(3) & (\inst4|_~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|_~81_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|d[1][3]~94_combout\);

-- Location: LCCOMB_X24_Y14_N18
\inst4|d[1][3]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~95_combout\ = (\inst4|d[1][3]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~41_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[1][3]~95_combout\);

-- Location: LCCOMB_X24_Y14_N20
\inst4|d[1][3]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~98_combout\ = (\inst4|d[1][3]~96_combout\) # ((\inst4|d[1][3]~97_combout\) # ((\inst4|d[1][3]~94_combout\) # (\inst4|d[1][3]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~96_combout\,
	datab => \inst4|d[1][3]~97_combout\,
	datac => \inst4|d[1][3]~94_combout\,
	datad => \inst4|d[1][3]~95_combout\,
	combout => \inst4|d[1][3]~98_combout\);

-- Location: FF_X24_Y14_N21
\inst4|d[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[1][3]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][3]~q\);

-- Location: LCCOMB_X22_Y15_N12
\inst4|d[1][2]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~82_combout\ = (\inst4|d[1][2]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[1][2]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[1][2]~82_combout\);

-- Location: LCCOMB_X22_Y15_N22
\inst4|d[1][2]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~79_combout\ = (\inst4|d[1][2]~q\ & ((\inst4|_~82_combout\) # ((\inst4|sorteio|dezena\(2) & \inst4|_~81_combout\)))) # (!\inst4|d[1][2]~q\ & (\inst4|sorteio|dezena\(2) & (\inst4|_~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|_~81_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|d[1][2]~79_combout\);

-- Location: LCCOMB_X23_Y15_N10
\inst4|d[1][2]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~80_combout\ = (\inst4|d[1][2]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[1][2]~80_combout\);

-- Location: LCCOMB_X23_Y15_N4
\inst4|d[1][2]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~81_combout\ = (\inst4|d[1][2]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~55_combout\,
	datab => \inst4|d[1][2]~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[1][2]~81_combout\);

-- Location: LCCOMB_X22_Y15_N8
\inst4|d[1][2]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~83_combout\ = (\inst4|d[1][2]~82_combout\) # ((\inst4|d[1][2]~79_combout\) # ((\inst4|d[1][2]~80_combout\) # (\inst4|d[1][2]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~82_combout\,
	datab => \inst4|d[1][2]~79_combout\,
	datac => \inst4|d[1][2]~80_combout\,
	datad => \inst4|d[1][2]~81_combout\,
	combout => \inst4|d[1][2]~83_combout\);

-- Location: FF_X22_Y15_N9
\inst4|d[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[1][2]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][2]~q\);

-- Location: LCCOMB_X23_Y12_N30
\inst4|u[1][3]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~98_combout\ = (\inst4|u[1][3]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[1][3]~98_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst4|u[1][3]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~97_combout\ = (\inst4|u[1][3]~q\ & ((\inst4|_~55_combout\) # (\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[1][3]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|u[1][3]~97_combout\);

-- Location: LCCOMB_X22_Y15_N14
\inst4|u[1][3]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~95_combout\ = (\inst4|u[1][3]~q\ & ((\inst4|_~82_combout\) # ((\inst4|sorteio|unidade\(3) & \inst4|_~81_combout\)))) # (!\inst4|u[1][3]~q\ & (\inst4|sorteio|unidade\(3) & (\inst4|_~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|_~81_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|u[1][3]~95_combout\);

-- Location: LCCOMB_X23_Y12_N6
\inst4|u[1][3]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~96_combout\ = (\inst4|u[1][3]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~39_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[1][3]~96_combout\);

-- Location: LCCOMB_X23_Y12_N8
\inst4|u[1][3]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~99_combout\ = (\inst4|u[1][3]~98_combout\) # ((\inst4|u[1][3]~97_combout\) # ((\inst4|u[1][3]~95_combout\) # (\inst4|u[1][3]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~98_combout\,
	datab => \inst4|u[1][3]~97_combout\,
	datac => \inst4|u[1][3]~95_combout\,
	datad => \inst4|u[1][3]~96_combout\,
	combout => \inst4|u[1][3]~99_combout\);

-- Location: FF_X23_Y12_N9
\inst4|u[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[1][3]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][3]~q\);

-- Location: LCCOMB_X21_Y16_N6
\inst4|u[1][2]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~82_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~41_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|u[1][2]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[1][2]~82_combout\);

-- Location: LCCOMB_X21_Y16_N24
\inst4|u[1][2]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~83_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[1][2]~83_combout\);

-- Location: LCCOMB_X22_Y15_N0
\inst4|u[1][2]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~81_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~82_combout\) # ((\inst4|sorteio|unidade\(2) & \inst4|_~81_combout\)))) # (!\inst4|u[1][2]~q\ & (\inst4|sorteio|unidade\(2) & (\inst4|_~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|_~81_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|u[1][2]~81_combout\);

-- Location: LCCOMB_X21_Y16_N18
\inst4|u[1][2]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~84_combout\ = (\inst4|u[1][2]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[1][2]~84_combout\);

-- Location: LCCOMB_X21_Y16_N2
\inst4|u[1][2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~85_combout\ = (\inst4|u[1][2]~82_combout\) # ((\inst4|u[1][2]~83_combout\) # ((\inst4|u[1][2]~81_combout\) # (\inst4|u[1][2]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~82_combout\,
	datab => \inst4|u[1][2]~83_combout\,
	datac => \inst4|u[1][2]~81_combout\,
	datad => \inst4|u[1][2]~84_combout\,
	combout => \inst4|u[1][2]~85_combout\);

-- Location: FF_X21_Y16_N3
\inst4|u[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[1][2]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][2]~q\);

-- Location: LCCOMB_X19_Y15_N10
\inst14|lcd_bus[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~7_combout\ = (!\inst4|u[1][3]~q\ & !\inst4|u[1][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|u[1][3]~q\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst14|lcd_bus[5]~7_combout\);

-- Location: LCCOMB_X24_Y14_N12
\inst4|d[1][1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~33_combout\ = (\inst4|d[1][1]~q\ & ((\inst4|_~61_combout\) # ((\inst4|_~62_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~61_combout\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[1][1]~33_combout\);

-- Location: LCCOMB_X24_Y14_N22
\inst4|d[1][1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~32_combout\ = (\inst4|d[1][1]~q\ & ((\inst4|_~54_combout\) # (\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~54_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|d[1][1]~32_combout\);

-- Location: LCCOMB_X24_Y14_N8
\inst4|d[1][1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~31_combout\ = (\inst4|d[1][1]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~41_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[1][1]~31_combout\);

-- Location: LCCOMB_X22_Y15_N24
\inst4|d[1][1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~30_combout\ = (\inst4|sorteio|dezena\(1) & ((\inst4|_~81_combout\) # ((\inst4|d[1][1]~q\ & \inst4|_~82_combout\)))) # (!\inst4|sorteio|dezena\(1) & (\inst4|d[1][1]~q\ & ((\inst4|_~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~81_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|d[1][1]~30_combout\);

-- Location: LCCOMB_X24_Y14_N0
\inst4|d[1][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~34_combout\ = (\inst4|d[1][1]~33_combout\) # ((\inst4|d[1][1]~32_combout\) # ((\inst4|d[1][1]~31_combout\) # (\inst4|d[1][1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~33_combout\,
	datab => \inst4|d[1][1]~32_combout\,
	datac => \inst4|d[1][1]~31_combout\,
	datad => \inst4|d[1][1]~30_combout\,
	combout => \inst4|d[1][1]~34_combout\);

-- Location: FF_X24_Y14_N1
\inst4|d[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[1][1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][1]~q\);

-- Location: LCCOMB_X21_Y17_N22
\inst4|d[1][4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~21_combout\ = (\inst4|d[1][4]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~41_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~40_combout\,
	datab => \inst4|d[1][4]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[1][4]~21_combout\);

-- Location: LCCOMB_X22_Y15_N2
\inst4|d[1][4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~20_combout\ = (\inst4|sorteio|dezena\(4) & ((\inst4|_~81_combout\) # ((\inst4|d[1][4]~q\ & \inst4|_~82_combout\)))) # (!\inst4|sorteio|dezena\(4) & (\inst4|d[1][4]~q\ & ((\inst4|_~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(4),
	datab => \inst4|d[1][4]~q\,
	datac => \inst4|_~81_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|d[1][4]~20_combout\);

-- Location: LCCOMB_X21_Y17_N4
\inst4|d[1][4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~22_combout\ = (\inst4|d[1][4]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~55_combout\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|d[1][4]~q\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[1][4]~22_combout\);

-- Location: LCCOMB_X21_Y17_N10
\inst4|d[1][4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~23_combout\ = (\inst4|d[1][4]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[1][4]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[1][4]~23_combout\);

-- Location: LCCOMB_X21_Y17_N16
\inst4|d[1][4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~24_combout\ = (\inst4|d[1][4]~21_combout\) # ((\inst4|d[1][4]~20_combout\) # ((\inst4|d[1][4]~22_combout\) # (\inst4|d[1][4]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~21_combout\,
	datab => \inst4|d[1][4]~20_combout\,
	datac => \inst4|d[1][4]~22_combout\,
	datad => \inst4|d[1][4]~23_combout\,
	combout => \inst4|d[1][4]~24_combout\);

-- Location: FF_X21_Y17_N17
\inst4|d[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[1][4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][4]~q\);

-- Location: LCCOMB_X21_Y16_N22
\inst4|u[1][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~38_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~q\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[1][1]~38_combout\);

-- Location: LCCOMB_X21_Y16_N4
\inst4|u[1][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~37_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~41_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|u[1][1]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[1][1]~37_combout\);

-- Location: LCCOMB_X22_Y15_N10
\inst4|u[1][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~36_combout\ = (\inst4|sorteio|unidade\(1) & ((\inst4|_~81_combout\) # ((\inst4|u[1][1]~q\ & \inst4|_~82_combout\)))) # (!\inst4|sorteio|unidade\(1) & (\inst4|u[1][1]~q\ & ((\inst4|_~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|u[1][1]~q\,
	datac => \inst4|_~81_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|u[1][1]~36_combout\);

-- Location: LCCOMB_X21_Y16_N20
\inst4|u[1][1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~39_combout\ = (\inst4|u[1][1]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[1][1]~39_combout\);

-- Location: LCCOMB_X21_Y16_N12
\inst4|u[1][1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~40_combout\ = (\inst4|u[1][1]~38_combout\) # ((\inst4|u[1][1]~37_combout\) # ((\inst4|u[1][1]~36_combout\) # (\inst4|u[1][1]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~38_combout\,
	datab => \inst4|u[1][1]~37_combout\,
	datac => \inst4|u[1][1]~36_combout\,
	datad => \inst4|u[1][1]~39_combout\,
	combout => \inst4|u[1][1]~40_combout\);

-- Location: FF_X21_Y16_N13
\inst4|u[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[1][1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][1]~q\);

-- Location: LCCOMB_X22_Y15_N20
\inst4|_~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~78_combout\ = (!\inst4|d[1][1]~q\ & (!\inst4|d[1][4]~q\ & (!\inst4|u[1][4]~q\ & !\inst4|u[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~q\,
	datab => \inst4|d[1][4]~q\,
	datac => \inst4|u[1][4]~q\,
	datad => \inst4|u[1][1]~q\,
	combout => \inst4|_~78_combout\);

-- Location: LCCOMB_X22_Y15_N26
\inst4|_~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~79_combout\ = (!\inst4|d[1][3]~q\ & (!\inst4|d[1][2]~q\ & (\inst14|lcd_bus[5]~7_combout\ & \inst4|_~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|d[1][2]~q\,
	datac => \inst14|lcd_bus[5]~7_combout\,
	datad => \inst4|_~78_combout\,
	combout => \inst4|_~79_combout\);

-- Location: LCCOMB_X22_Y15_N16
\inst4|_~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~80_combout\ = (\inst4|_~79_combout\ & (\inst4|_~46_combout\ & (\inst4|_~30_combout\ & \inst4|_~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~79_combout\,
	datab => \inst4|_~46_combout\,
	datac => \inst4|_~30_combout\,
	datad => \inst4|_~14_combout\,
	combout => \inst4|_~80_combout\);

-- Location: LCCOMB_X22_Y15_N4
\inst4|_~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~81_combout\ = (\inst4|_~25_combout\ & (\inst4|_~20_combout\ & (\inst4|_~9_combout\ & \inst4|_~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~25_combout\,
	datab => \inst4|_~20_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~80_combout\,
	combout => \inst4|_~81_combout\);

-- Location: LCCOMB_X22_Y15_N28
\inst4|u[1][4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~21_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|_~82_combout\) # ((\inst4|sorteio|unidade\(4) & \inst4|_~81_combout\)))) # (!\inst4|u[1][4]~q\ & (\inst4|sorteio|unidade\(4) & (\inst4|_~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|_~81_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|u[1][4]~21_combout\);

-- Location: LCCOMB_X21_Y17_N26
\inst4|u[1][4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~25_combout\ = (\inst4|u[1][4]~23_combout\) # ((\inst4|u[1][4]~24_combout\) # ((\inst4|u[1][4]~22_combout\) # (\inst4|u[1][4]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~23_combout\,
	datab => \inst4|u[1][4]~24_combout\,
	datac => \inst4|u[1][4]~22_combout\,
	datad => \inst4|u[1][4]~21_combout\,
	combout => \inst4|u[1][4]~25_combout\);

-- Location: FF_X21_Y17_N27
\inst4|u[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[1][4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][4]~q\);

-- Location: LCCOMB_X22_Y13_N6
\inst4|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~33_combout\ = (\inst4|sorteio|unidade\(3) & (\inst4|u[1][3]~q\ & (\inst4|u[1][4]~q\ $ (!\inst4|sorteio|unidade\(4))))) # (!\inst4|sorteio|unidade\(3) & (!\inst4|u[1][3]~q\ & (\inst4|u[1][4]~q\ $ (!\inst4|sorteio|unidade\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|u[1][4]~q\,
	datac => \inst4|u[1][3]~q\,
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|_~33_combout\);

-- Location: LCCOMB_X21_Y13_N20
\inst4|_~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~34_combout\ = (\inst4|sorteio|unidade\(2) & (\inst4|u[1][2]~q\ & (\inst4|sorteio|unidade\(1) $ (!\inst4|u[1][1]~q\)))) # (!\inst4|sorteio|unidade\(2) & (!\inst4|u[1][2]~q\ & (\inst4|sorteio|unidade\(1) $ (!\inst4|u[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|u[1][2]~q\,
	datad => \inst4|u[1][1]~q\,
	combout => \inst4|_~34_combout\);

-- Location: LCCOMB_X22_Y15_N6
\inst4|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~32_combout\ = (\inst4|d[1][1]~q\ & (\inst4|sorteio|dezena\(1) & (\inst4|sorteio|dezena\(2) $ (!\inst4|d[1][2]~q\)))) # (!\inst4|d[1][1]~q\ & (!\inst4|sorteio|dezena\(1) & (\inst4|sorteio|dezena\(2) $ (!\inst4|d[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~q\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|d[1][2]~q\,
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|_~32_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst4|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~31_combout\ = (\inst4|d[1][3]~q\ & (\inst4|sorteio|dezena\(3) & (\inst4|sorteio|dezena\(4) $ (!\inst4|d[1][4]~q\)))) # (!\inst4|d[1][3]~q\ & (!\inst4|sorteio|dezena\(3) & (\inst4|sorteio|dezena\(4) $ (!\inst4|d[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|d[1][4]~q\,
	combout => \inst4|_~31_combout\);

-- Location: LCCOMB_X22_Y13_N28
\inst4|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~35_combout\ = (\inst4|_~33_combout\ & (!\inst4|_~34_combout\ & ((!\inst4|_~31_combout\) # (!\inst4|_~32_combout\)))) # (!\inst4|_~33_combout\ & (((!\inst4|_~31_combout\) # (!\inst4|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~33_combout\,
	datab => \inst4|_~34_combout\,
	datac => \inst4|_~32_combout\,
	datad => \inst4|_~31_combout\,
	combout => \inst4|_~35_combout\);

-- Location: LCCOMB_X22_Y13_N14
\inst4|_~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~56_combout\ = (\inst4|_~35_combout\ & (\inst4|_~46_combout\ & (\inst4|_~14_combout\ & \inst4|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~35_combout\,
	datab => \inst4|_~46_combout\,
	datac => \inst4|_~14_combout\,
	datad => \inst4|_~30_combout\,
	combout => \inst4|_~56_combout\);

-- Location: LCCOMB_X18_Y13_N26
\inst4|u[5][4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~17_combout\ = (\inst4|u[5][4]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[5][4]~17_combout\);

-- Location: LCCOMB_X18_Y13_N28
\inst4|u[5][4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~16_combout\ = (\inst4|u[5][4]~q\ & ((\inst4|_~9_combout\) # (\inst4|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst4|u[5][4]~16_combout\);

-- Location: LCCOMB_X18_Y13_N22
\inst4|u[5][4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~19_combout\ = (\inst4|u[5][4]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[5][4]~19_combout\);

-- Location: LCCOMB_X18_Y13_N24
\inst4|u[5][4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~18_combout\ = (\inst4|sorteio|unidade\(4) & ((\inst4|_~73_combout\) # ((\inst4|u[5][4]~q\ & \inst4|_~77_combout\)))) # (!\inst4|sorteio|unidade\(4) & (\inst4|u[5][4]~q\ & (\inst4|_~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~77_combout\,
	datad => \inst4|_~73_combout\,
	combout => \inst4|u[5][4]~18_combout\);

-- Location: LCCOMB_X18_Y13_N0
\inst4|u[5][4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~20_combout\ = (\inst4|u[5][4]~17_combout\) # ((\inst4|u[5][4]~16_combout\) # ((\inst4|u[5][4]~19_combout\) # (\inst4|u[5][4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~17_combout\,
	datab => \inst4|u[5][4]~16_combout\,
	datac => \inst4|u[5][4]~19_combout\,
	datad => \inst4|u[5][4]~18_combout\,
	combout => \inst4|u[5][4]~20_combout\);

-- Location: FF_X18_Y13_N1
\inst4|u[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[5][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][4]~q\);

-- Location: LCCOMB_X22_Y11_N26
\inst4|d[5][4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~15_combout\ = (\inst4|d[5][4]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~39_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|d[5][4]~q\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[5][4]~15_combout\);

-- Location: LCCOMB_X22_Y11_N16
\inst4|d[5][4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~16_combout\ = (\inst4|d[5][4]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~68_combout\) # (\inst4|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[5][4]~16_combout\);

-- Location: LCCOMB_X22_Y11_N4
\inst4|d[5][4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~18_combout\ = (\inst4|d[5][4]~q\ & ((\inst4|_~61_combout\) # ((\inst4|_~62_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~61_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|d[5][4]~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[5][4]~18_combout\);

-- Location: LCCOMB_X22_Y11_N6
\inst4|d[5][4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~17_combout\ = (\inst4|d[5][4]~q\ & ((\inst4|_~77_combout\) # ((\inst4|sorteio|dezena\(4) & \inst4|_~73_combout\)))) # (!\inst4|d[5][4]~q\ & (\inst4|sorteio|dezena\(4) & (\inst4|_~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|d[5][4]~17_combout\);

-- Location: LCCOMB_X22_Y11_N12
\inst4|d[5][4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~19_combout\ = (\inst4|d[5][4]~15_combout\) # ((\inst4|d[5][4]~16_combout\) # ((\inst4|d[5][4]~18_combout\) # (\inst4|d[5][4]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~15_combout\,
	datab => \inst4|d[5][4]~16_combout\,
	datac => \inst4|d[5][4]~18_combout\,
	datad => \inst4|d[5][4]~17_combout\,
	combout => \inst4|d[5][4]~19_combout\);

-- Location: FF_X22_Y11_N13
\inst4|d[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[5][4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][4]~q\);

-- Location: LCCOMB_X23_Y14_N22
\inst4|d[5][1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~55_combout\ = (\inst4|d[5][1]~q\ & ((\inst4|_~41_combout\) # (\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[5][1]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|d[5][1]~55_combout\);

-- Location: LCCOMB_X21_Y14_N2
\inst4|d[5][1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~54_combout\ = (\inst4|d[5][1]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[5][1]~54_combout\);

-- Location: LCCOMB_X21_Y14_N4
\inst4|d[5][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~56_combout\ = (\inst4|sorteio|dezena\(1) & ((\inst4|_~73_combout\) # ((\inst4|d[5][1]~q\ & \inst4|_~77_combout\)))) # (!\inst4|sorteio|dezena\(1) & (\inst4|d[5][1]~q\ & ((\inst4|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|d[5][1]~q\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|d[5][1]~56_combout\);

-- Location: LCCOMB_X21_Y14_N10
\inst4|d[5][1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~57_combout\ = (\inst4|d[5][1]~q\ & ((\inst4|_~61_combout\) # ((\inst4|_~62_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|_~61_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[5][1]~57_combout\);

-- Location: LCCOMB_X21_Y14_N12
\inst4|d[5][1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~58_combout\ = (\inst4|d[5][1]~55_combout\) # ((\inst4|d[5][1]~54_combout\) # ((\inst4|d[5][1]~56_combout\) # (\inst4|d[5][1]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~55_combout\,
	datab => \inst4|d[5][1]~54_combout\,
	datac => \inst4|d[5][1]~56_combout\,
	datad => \inst4|d[5][1]~57_combout\,
	combout => \inst4|d[5][1]~58_combout\);

-- Location: FF_X21_Y14_N13
\inst4|d[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[5][1]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][1]~q\);

-- Location: LCCOMB_X23_Y13_N6
\inst4|u[5][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~56_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~40_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|u[5][1]~q\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|u[5][1]~56_combout\);

-- Location: LCCOMB_X22_Y16_N18
\inst4|u[5][1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~59_combout\ = (\inst4|u[5][1]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[5][1]~59_combout\);

-- Location: LCCOMB_X22_Y16_N8
\inst4|u[5][1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~58_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~77_combout\) # ((\inst4|sorteio|unidade\(1) & \inst4|_~73_combout\)))) # (!\inst4|u[5][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|_~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~q\,
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|u[5][1]~58_combout\);

-- Location: LCCOMB_X21_Y13_N14
\inst4|u[5][1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~57_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~68_combout\) # (\inst4|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[5][1]~57_combout\);

-- Location: LCCOMB_X22_Y16_N6
\inst4|u[5][1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~60_combout\ = (\inst4|u[5][1]~56_combout\) # ((\inst4|u[5][1]~59_combout\) # ((\inst4|u[5][1]~58_combout\) # (\inst4|u[5][1]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~56_combout\,
	datab => \inst4|u[5][1]~59_combout\,
	datac => \inst4|u[5][1]~58_combout\,
	datad => \inst4|u[5][1]~57_combout\,
	combout => \inst4|u[5][1]~60_combout\);

-- Location: FF_X22_Y16_N7
\inst4|u[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[5][1]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][1]~q\);

-- Location: LCCOMB_X21_Y13_N24
\inst4|_~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~71_combout\ = (!\inst4|u[5][4]~q\ & (!\inst4|d[5][4]~q\ & (!\inst4|d[5][1]~q\ & !\inst4|u[5][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst4|d[5][4]~q\,
	datac => \inst4|d[5][1]~q\,
	datad => \inst4|u[5][1]~q\,
	combout => \inst4|_~71_combout\);

-- Location: LCCOMB_X21_Y15_N10
\inst4|u[5][2]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~76_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|u[5][2]~q\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[5][2]~76_combout\);

-- Location: LCCOMB_X21_Y15_N4
\inst4|u[5][2]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~77_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|u[5][2]~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[5][2]~77_combout\);

-- Location: LCCOMB_X21_Y15_N22
\inst4|u[5][2]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~78_combout\ = (\inst4|sorteio|unidade\(2) & ((\inst4|_~73_combout\) # ((\inst4|u[5][2]~q\ & \inst4|_~77_combout\)))) # (!\inst4|sorteio|unidade\(2) & (\inst4|u[5][2]~q\ & ((\inst4|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|u[5][2]~q\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|u[5][2]~78_combout\);

-- Location: LCCOMB_X21_Y15_N16
\inst4|u[5][2]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~79_combout\ = (\inst4|u[5][2]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|u[5][2]~q\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[5][2]~79_combout\);

-- Location: LCCOMB_X21_Y15_N20
\inst4|u[5][2]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~80_combout\ = (\inst4|u[5][2]~76_combout\) # ((\inst4|u[5][2]~77_combout\) # ((\inst4|u[5][2]~78_combout\) # (\inst4|u[5][2]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~76_combout\,
	datab => \inst4|u[5][2]~77_combout\,
	datac => \inst4|u[5][2]~78_combout\,
	datad => \inst4|u[5][2]~79_combout\,
	combout => \inst4|u[5][2]~80_combout\);

-- Location: FF_X21_Y15_N21
\inst4|u[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[5][2]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][2]~q\);

-- Location: LCCOMB_X21_Y14_N16
\inst4|d[5][2]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~74_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[5][2]~74_combout\);

-- Location: LCCOMB_X21_Y14_N14
\inst4|d[5][2]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~75_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~68_combout\) # (\inst4|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[5][2]~75_combout\);

-- Location: LCCOMB_X21_Y14_N8
\inst4|d[5][2]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~76_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|_~77_combout\) # ((\inst4|sorteio|dezena\(2) & \inst4|_~73_combout\)))) # (!\inst4|d[5][2]~q\ & (\inst4|sorteio|dezena\(2) & (\inst4|_~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~q\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|d[5][2]~76_combout\);

-- Location: LCCOMB_X21_Y14_N18
\inst4|d[5][2]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~77_combout\ = (\inst4|d[5][2]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~61_combout\,
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[5][2]~77_combout\);

-- Location: LCCOMB_X21_Y14_N20
\inst4|d[5][2]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~78_combout\ = (\inst4|d[5][2]~74_combout\) # ((\inst4|d[5][2]~75_combout\) # ((\inst4|d[5][2]~76_combout\) # (\inst4|d[5][2]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~74_combout\,
	datab => \inst4|d[5][2]~75_combout\,
	datac => \inst4|d[5][2]~76_combout\,
	datad => \inst4|d[5][2]~77_combout\,
	combout => \inst4|d[5][2]~78_combout\);

-- Location: FF_X21_Y14_N21
\inst4|d[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[5][2]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][2]~q\);

-- Location: LCCOMB_X18_Y13_N12
\inst4|u[5][3]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~115_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|_~40_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|u[5][3]~q\,
	combout => \inst4|u[5][3]~115_combout\);

-- Location: LCCOMB_X18_Y13_N18
\inst4|u[5][3]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~116_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[5][3]~116_combout\);

-- Location: LCCOMB_X18_Y13_N14
\inst4|u[5][3]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~118_combout\ = (\inst4|u[5][3]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[5][3]~118_combout\);

-- Location: LCCOMB_X18_Y13_N16
\inst4|u[5][3]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~117_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~77_combout\) # ((\inst4|sorteio|unidade\(3) & \inst4|_~73_combout\)))) # (!\inst4|u[5][3]~q\ & (\inst4|sorteio|unidade\(3) & ((\inst4|_~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|_~77_combout\,
	datad => \inst4|_~73_combout\,
	combout => \inst4|u[5][3]~117_combout\);

-- Location: LCCOMB_X18_Y13_N6
\inst4|u[5][3]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~119_combout\ = (\inst4|u[5][3]~115_combout\) # ((\inst4|u[5][3]~116_combout\) # ((\inst4|u[5][3]~118_combout\) # (\inst4|u[5][3]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~115_combout\,
	datab => \inst4|u[5][3]~116_combout\,
	datac => \inst4|u[5][3]~118_combout\,
	datad => \inst4|u[5][3]~117_combout\,
	combout => \inst4|u[5][3]~119_combout\);

-- Location: FF_X18_Y13_N7
\inst4|u[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[5][3]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][3]~q\);

-- Location: LCCOMB_X22_Y11_N8
\inst4|_~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~70_combout\ = (!\inst4|u[5][2]~q\ & (!\inst4|d[5][3]~q\ & (!\inst4|d[5][2]~q\ & !\inst4|u[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|u[5][3]~q\,
	combout => \inst4|_~70_combout\);

-- Location: LCCOMB_X21_Y13_N10
\inst4|_~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~72_combout\ = (\inst4|_~71_combout\ & (\inst4|_~70_combout\ & \inst4|_~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~71_combout\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|_~72_combout\);

-- Location: LCCOMB_X22_Y13_N26
\inst4|_~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~73_combout\ = (\inst4|_~55_combout\ & (\inst4|_~56_combout\ & \inst4|_~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~55_combout\,
	datac => \inst4|_~56_combout\,
	datad => \inst4|_~72_combout\,
	combout => \inst4|_~73_combout\);

-- Location: LCCOMB_X21_Y15_N14
\inst4|u[4][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~13_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~73_combout\) # (\inst4|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|u[4][4]~13_combout\);

-- Location: LCCOMB_X21_Y15_N18
\inst4|u[4][4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~11_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~40_combout\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|u[4][4]~11_combout\);

-- Location: LCCOMB_X21_Y15_N0
\inst4|u[4][4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~15_combout\ = (\inst4|u[4][4]~12_combout\) # ((\inst4|u[4][4]~14_combout\) # ((\inst4|u[4][4]~13_combout\) # (\inst4|u[4][4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~12_combout\,
	datab => \inst4|u[4][4]~14_combout\,
	datac => \inst4|u[4][4]~13_combout\,
	datad => \inst4|u[4][4]~11_combout\,
	combout => \inst4|u[4][4]~15_combout\);

-- Location: FF_X21_Y15_N1
\inst4|u[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[4][4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][4]~q\);

-- Location: LCCOMB_X24_Y13_N12
\inst4|u[4][3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~100_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~9_combout\,
	combout => \inst4|u[4][3]~100_combout\);

-- Location: LCCOMB_X24_Y13_N18
\inst4|u[4][3]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~103_combout\ = (\inst4|u[4][3]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[4][3]~103_combout\);

-- Location: LCCOMB_X24_Y13_N26
\inst4|u[4][3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~101_combout\ = (\inst4|sorteio|unidade\(3) & ((\inst4|_~68_combout\) # ((\inst4|u[4][3]~q\ & \inst4|_~41_combout\)))) # (!\inst4|sorteio|unidade\(3) & (\inst4|u[4][3]~q\ & (\inst4|_~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[4][3]~101_combout\);

-- Location: LCCOMB_X24_Y13_N16
\inst4|u[4][3]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~102_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~73_combout\) # (\inst4|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|u[4][3]~102_combout\);

-- Location: LCCOMB_X24_Y13_N2
\inst4|u[4][3]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~104_combout\ = (\inst4|u[4][3]~100_combout\) # ((\inst4|u[4][3]~103_combout\) # ((\inst4|u[4][3]~101_combout\) # (\inst4|u[4][3]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~100_combout\,
	datab => \inst4|u[4][3]~103_combout\,
	datac => \inst4|u[4][3]~101_combout\,
	datad => \inst4|u[4][3]~102_combout\,
	combout => \inst4|u[4][3]~104_combout\);

-- Location: FF_X24_Y13_N3
\inst4|u[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[4][3]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][3]~q\);

-- Location: LCCOMB_X22_Y14_N8
\inst4|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~28_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|u[4][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[4][3]~q\)))) # (!\inst4|sorteio|unidade\(4) & (!\inst4|u[4][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|u[4][4]~q\,
	datad => \inst4|u[4][3]~q\,
	combout => \inst4|_~28_combout\);

-- Location: LCCOMB_X24_Y13_N6
\inst4|d[4][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~13_combout\ = (\inst4|d[4][4]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[4][4]~13_combout\);

-- Location: LCCOMB_X24_Y13_N8
\inst4|d[4][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~10_combout\ = (\inst4|d[4][4]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[4][4]~10_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst4|d[4][4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~11_combout\ = (\inst4|_~41_combout\ & ((\inst4|d[4][4]~q\) # ((\inst4|sorteio|dezena\(4) & \inst4|_~68_combout\)))) # (!\inst4|_~41_combout\ & (((\inst4|sorteio|dezena\(4) & \inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[4][4]~11_combout\);

-- Location: LCCOMB_X24_Y13_N24
\inst4|d[4][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~12_combout\ = (\inst4|d[4][4]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~73_combout\) # (\inst4|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|d[4][4]~12_combout\);

-- Location: LCCOMB_X24_Y13_N0
\inst4|d[4][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~14_combout\ = (\inst4|d[4][4]~13_combout\) # ((\inst4|d[4][4]~10_combout\) # ((\inst4|d[4][4]~11_combout\) # (\inst4|d[4][4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~13_combout\,
	datab => \inst4|d[4][4]~10_combout\,
	datac => \inst4|d[4][4]~11_combout\,
	datad => \inst4|d[4][4]~12_combout\,
	combout => \inst4|d[4][4]~14_combout\);

-- Location: FF_X24_Y13_N1
\inst4|d[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[4][4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][4]~q\);

-- Location: LCCOMB_X24_Y13_N22
\inst4|d[4][3]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~102_combout\ = (\inst4|d[4][3]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[4][3]~102_combout\);

-- Location: LCCOMB_X24_Y13_N4
\inst4|d[4][3]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~99_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[4][3]~99_combout\);

-- Location: LCCOMB_X24_Y13_N14
\inst4|d[4][3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~100_combout\ = (\inst4|sorteio|dezena\(3) & ((\inst4|_~68_combout\) # ((\inst4|d[4][3]~q\ & \inst4|_~41_combout\)))) # (!\inst4|sorteio|dezena\(3) & (\inst4|d[4][3]~q\ & (\inst4|_~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[4][3]~100_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst4|d[4][3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~101_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~73_combout\) # (\inst4|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|d[4][3]~101_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst4|d[4][3]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~103_combout\ = (\inst4|d[4][3]~102_combout\) # ((\inst4|d[4][3]~99_combout\) # ((\inst4|d[4][3]~100_combout\) # (\inst4|d[4][3]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~102_combout\,
	datab => \inst4|d[4][3]~99_combout\,
	datac => \inst4|d[4][3]~100_combout\,
	datad => \inst4|d[4][3]~101_combout\,
	combout => \inst4|d[4][3]~103_combout\);

-- Location: FF_X24_Y13_N29
\inst4|d[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[4][3]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][3]~q\);

-- Location: LCCOMB_X22_Y14_N4
\inst4|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~26_combout\ = (\inst4|sorteio|dezena\(3) & (\inst4|d[4][3]~q\ & (\inst4|sorteio|dezena\(4) $ (!\inst4|d[4][4]~q\)))) # (!\inst4|sorteio|dezena\(3) & (!\inst4|d[4][3]~q\ & (\inst4|sorteio|dezena\(4) $ (!\inst4|d[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|d[4][4]~q\,
	datad => \inst4|d[4][3]~q\,
	combout => \inst4|_~26_combout\);

-- Location: LCCOMB_X19_Y13_N6
\inst4|d[4][1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~42_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~77_combout\) # (\inst4|_~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|_~77_combout\,
	datad => \inst4|_~73_combout\,
	combout => \inst4|d[4][1]~42_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst4|d[4][1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~41_combout\ = (\inst4|sorteio|dezena\(1) & ((\inst4|_~68_combout\) # ((\inst4|d[4][1]~q\ & \inst4|_~41_combout\)))) # (!\inst4|sorteio|dezena\(1) & (\inst4|d[4][1]~q\ & ((\inst4|_~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~41_combout\,
	combout => \inst4|d[4][1]~41_combout\);

-- Location: LCCOMB_X19_Y13_N8
\inst4|d[4][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~43_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|_~61_combout\) # ((\inst4|_~62_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~61_combout\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[4][1]~43_combout\);

-- Location: LCCOMB_X19_Y13_N18
\inst4|d[4][1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~40_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[4][1]~40_combout\);

-- Location: LCCOMB_X19_Y13_N0
\inst4|d[4][1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~44_combout\ = (\inst4|d[4][1]~42_combout\) # ((\inst4|d[4][1]~41_combout\) # ((\inst4|d[4][1]~43_combout\) # (\inst4|d[4][1]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~42_combout\,
	datab => \inst4|d[4][1]~41_combout\,
	datac => \inst4|d[4][1]~43_combout\,
	datad => \inst4|d[4][1]~40_combout\,
	combout => \inst4|d[4][1]~44_combout\);

-- Location: FF_X19_Y13_N1
\inst4|d[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[4][1]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][1]~q\);

-- Location: LCCOMB_X22_Y14_N22
\inst4|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~27_combout\ = (\inst4|sorteio|dezena\(2) & (\inst4|d[4][2]~q\ & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[4][1]~q\)))) # (!\inst4|sorteio|dezena\(2) & (!\inst4|d[4][2]~q\ & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(2),
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|sorteio|dezena\(1),
	datad => \inst4|d[4][1]~q\,
	combout => \inst4|_~27_combout\);

-- Location: LCCOMB_X21_Y15_N6
\inst4|u[4][2]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~71_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[4][2]~71_combout\);

-- Location: LCCOMB_X21_Y15_N8
\inst4|u[4][2]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~72_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|_~41_combout\) # ((\inst4|sorteio|unidade\(2) & \inst4|_~68_combout\)))) # (!\inst4|u[4][2]~q\ & (\inst4|sorteio|unidade\(2) & ((\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[4][2]~72_combout\);

-- Location: LCCOMB_X21_Y15_N26
\inst4|u[4][2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~73_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~73_combout\) # (\inst4|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|u[4][2]~73_combout\);

-- Location: LCCOMB_X21_Y15_N12
\inst4|u[4][2]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~74_combout\ = (\inst4|u[4][2]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~61_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst4|u[4][2]~74_combout\);

-- Location: LCCOMB_X21_Y15_N30
\inst4|u[4][2]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~75_combout\ = (\inst4|u[4][2]~71_combout\) # ((\inst4|u[4][2]~72_combout\) # ((\inst4|u[4][2]~73_combout\) # (\inst4|u[4][2]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~71_combout\,
	datab => \inst4|u[4][2]~72_combout\,
	datac => \inst4|u[4][2]~73_combout\,
	datad => \inst4|u[4][2]~74_combout\,
	combout => \inst4|u[4][2]~75_combout\);

-- Location: FF_X21_Y15_N31
\inst4|u[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[4][2]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][2]~q\);

-- Location: LCCOMB_X22_Y14_N18
\inst4|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~29_combout\ = (\inst4|sorteio|unidade\(1) & (\inst4|u[4][1]~q\ & (\inst4|u[4][2]~q\ $ (!\inst4|sorteio|unidade\(2))))) # (!\inst4|sorteio|unidade\(1) & (!\inst4|u[4][1]~q\ & (\inst4|u[4][2]~q\ $ (!\inst4|sorteio|unidade\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|u[4][1]~q\,
	combout => \inst4|_~29_combout\);

-- Location: LCCOMB_X22_Y14_N20
\inst4|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~30_combout\ = (\inst4|_~28_combout\ & (!\inst4|_~29_combout\ & ((!\inst4|_~27_combout\) # (!\inst4|_~26_combout\)))) # (!\inst4|_~28_combout\ & (((!\inst4|_~27_combout\)) # (!\inst4|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~28_combout\,
	datab => \inst4|_~26_combout\,
	datac => \inst4|_~27_combout\,
	datad => \inst4|_~29_combout\,
	combout => \inst4|_~30_combout\);

-- Location: LCCOMB_X21_Y13_N26
\inst4|_~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~76_combout\ = ((!\inst4|_~14_combout\) # (!\inst4|_~30_combout\)) # (!\inst4|_~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datac => \inst4|_~30_combout\,
	datad => \inst4|_~14_combout\,
	combout => \inst4|_~76_combout\);

-- Location: LCCOMB_X21_Y13_N16
\inst4|_~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~75_combout\ = (((!\inst4|_~25_combout\) # (!\inst4|_~35_combout\)) # (!\inst4|_~70_combout\)) # (!\inst4|_~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~71_combout\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|_~35_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|_~75_combout\);

-- Location: LCCOMB_X21_Y13_N8
\inst4|_~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~77_combout\ = (\inst4|_~74_combout\ & (\inst4|temp~q\ & ((\inst4|_~76_combout\) # (\inst4|_~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~74_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~76_combout\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|_~77_combout\);

-- Location: LCCOMB_X19_Y13_N2
\inst4|u[4][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~43_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~77_combout\) # (\inst4|_~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|_~77_combout\,
	datad => \inst4|_~73_combout\,
	combout => \inst4|u[4][1]~43_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst4|u[4][1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~45_combout\ = (\inst4|u[4][1]~41_combout\) # ((\inst4|u[4][1]~44_combout\) # ((\inst4|u[4][1]~42_combout\) # (\inst4|u[4][1]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~41_combout\,
	datab => \inst4|u[4][1]~44_combout\,
	datac => \inst4|u[4][1]~42_combout\,
	datad => \inst4|u[4][1]~43_combout\,
	combout => \inst4|u[4][1]~45_combout\);

-- Location: FF_X19_Y13_N27
\inst4|u[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[4][1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][1]~q\);

-- Location: LCCOMB_X19_Y13_N22
\inst4|_~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~66_combout\ = (!\inst4|u[4][1]~q\ & (!\inst4|d[4][1]~q\ & (!\inst4|d[4][4]~q\ & !\inst4|u[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|d[4][4]~q\,
	datad => \inst4|u[4][4]~q\,
	combout => \inst4|_~66_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst4|_~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~65_combout\ = (!\inst4|d[4][3]~q\ & (!\inst4|d[4][2]~q\ & (!\inst4|u[4][3]~q\ & !\inst4|u[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~q\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst4|_~65_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst4|_~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~67_combout\ = (\inst4|_~66_combout\ & \inst4|_~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|_~67_combout\);

-- Location: LCCOMB_X22_Y13_N8
\inst4|_~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~64_combout\ = (\inst4|_~35_combout\ & (\inst4|_~20_combout\ & \inst4|_~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~35_combout\,
	datac => \inst4|_~20_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|_~64_combout\);

-- Location: LCCOMB_X22_Y13_N16
\inst4|_~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~69_combout\ = (\inst4|_~54_combout\ & (((!\inst4|_~64_combout\) # (!\inst4|_~67_combout\)) # (!\inst4|_~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~63_combout\,
	datab => \inst4|_~67_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|_~69_combout\);

-- Location: LCCOMB_X23_Y12_N14
\inst4|d[2][2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~61_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~55_combout\,
	datab => \inst4|d[2][2]~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[2][2]~61_combout\);

-- Location: LCCOMB_X23_Y16_N6
\inst4|d[3][3]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~106_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|_~55_combout\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[3][3]~106_combout\);

-- Location: LCCOMB_X23_Y16_N2
\inst4|d[3][3]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~104_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|_~39_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[3][3]~104_combout\);

-- Location: LCCOMB_X23_Y13_N20
\inst4|_~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~51_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~51_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst4|_~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~52_combout\ = (((!\inst4|_~35_combout\) # (!\inst4|_~25_combout\)) # (!\inst4|_~30_combout\)) # (!\inst4|_~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~20_combout\,
	datab => \inst4|_~30_combout\,
	datac => \inst4|_~25_combout\,
	datad => \inst4|_~35_combout\,
	combout => \inst4|_~52_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst4|_~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~53_combout\ = (\inst4|temp~q\ & (\inst4|_~51_combout\ & ((\inst4|_~52_combout\) # (!\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~52_combout\,
	combout => \inst4|_~53_combout\);

-- Location: LCCOMB_X23_Y16_N8
\inst4|d[3][3]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~105_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~53_combout\) # ((\inst4|sorteio|dezena\(3) & \inst4|_~50_combout\)))) # (!\inst4|d[3][3]~q\ & (\inst4|sorteio|dezena\(3) & ((\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|_~53_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[3][3]~105_combout\);

-- Location: LCCOMB_X23_Y16_N0
\inst4|d[3][3]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~107_combout\ = (\inst4|d[3][3]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[3][3]~107_combout\);

-- Location: LCCOMB_X23_Y16_N22
\inst4|d[3][3]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~108_combout\ = (\inst4|d[3][3]~106_combout\) # ((\inst4|d[3][3]~104_combout\) # ((\inst4|d[3][3]~105_combout\) # (\inst4|d[3][3]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~106_combout\,
	datab => \inst4|d[3][3]~104_combout\,
	datac => \inst4|d[3][3]~105_combout\,
	datad => \inst4|d[3][3]~107_combout\,
	combout => \inst4|d[3][3]~108_combout\);

-- Location: FF_X23_Y16_N23
\inst4|d[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[3][3]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][3]~q\);

-- Location: LCCOMB_X23_Y14_N12
\inst4|d[3][2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~66_combout\ = (\inst4|d[3][2]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|_~55_combout\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|d[3][2]~q\,
	combout => \inst4|d[3][2]~66_combout\);

-- Location: LCCOMB_X23_Y14_N28
\inst4|d[3][2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~64_combout\ = (\inst4|d[3][2]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~q\,
	datab => \inst4|_~39_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[3][2]~64_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst4|d[3][2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~65_combout\ = (\inst4|sorteio|dezena\(2) & ((\inst4|_~50_combout\) # ((\inst4|d[3][2]~q\ & \inst4|_~53_combout\)))) # (!\inst4|sorteio|dezena\(2) & (\inst4|d[3][2]~q\ & (\inst4|_~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(2),
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|_~53_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[3][2]~65_combout\);

-- Location: LCCOMB_X23_Y14_N6
\inst4|d[3][2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~67_combout\ = (\inst4|d[3][2]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[3][2]~67_combout\);

-- Location: LCCOMB_X23_Y14_N18
\inst4|d[3][2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~68_combout\ = (\inst4|d[3][2]~66_combout\) # ((\inst4|d[3][2]~64_combout\) # ((\inst4|d[3][2]~65_combout\) # (\inst4|d[3][2]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~66_combout\,
	datab => \inst4|d[3][2]~64_combout\,
	datac => \inst4|d[3][2]~65_combout\,
	datad => \inst4|d[3][2]~67_combout\,
	combout => \inst4|d[3][2]~68_combout\);

-- Location: FF_X23_Y14_N19
\inst4|d[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[3][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][2]~q\);

-- Location: LCCOMB_X22_Y17_N30
\inst4|u[3][3]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~108_combout\ = (\inst4|u[3][3]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[3][3]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[3][3]~108_combout\);

-- Location: LCCOMB_X22_Y17_N8
\inst4|u[3][3]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~107_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~54_combout\) # (\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datac => \inst4|_~54_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|u[3][3]~107_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst4|u[3][3]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~106_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~53_combout\) # ((\inst4|sorteio|unidade\(3) & \inst4|_~50_combout\)))) # (!\inst4|u[3][3]~q\ & (\inst4|sorteio|unidade\(3) & (\inst4|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|u[3][3]~106_combout\);

-- Location: LCCOMB_X22_Y17_N28
\inst4|u[3][3]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~105_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~40_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|u[3][3]~q\,
	combout => \inst4|u[3][3]~105_combout\);

-- Location: LCCOMB_X22_Y17_N12
\inst4|u[3][3]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~109_combout\ = (\inst4|u[3][3]~108_combout\) # ((\inst4|u[3][3]~107_combout\) # ((\inst4|u[3][3]~106_combout\) # (\inst4|u[3][3]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~108_combout\,
	datab => \inst4|u[3][3]~107_combout\,
	datac => \inst4|u[3][3]~106_combout\,
	datad => \inst4|u[3][3]~105_combout\,
	combout => \inst4|u[3][3]~109_combout\);

-- Location: FF_X22_Y17_N13
\inst4|u[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[3][3]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][3]~q\);

-- Location: LCCOMB_X25_Y13_N12
\inst4|u[3][2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~68_combout\ = (\inst4|u[3][2]~q\ & ((\inst4|_~55_combout\) # (\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|u[3][2]~68_combout\);

-- Location: LCCOMB_X25_Y13_N24
\inst4|u[3][2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~66_combout\ = (\inst4|u[3][2]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|u[3][2]~66_combout\);

-- Location: LCCOMB_X25_Y13_N14
\inst4|u[3][2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~67_combout\ = (\inst4|sorteio|unidade\(2) & ((\inst4|_~50_combout\) # ((\inst4|u[3][2]~q\ & \inst4|_~53_combout\)))) # (!\inst4|sorteio|unidade\(2) & (\inst4|u[3][2]~q\ & ((\inst4|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|u[3][2]~67_combout\);

-- Location: LCCOMB_X25_Y13_N18
\inst4|u[3][2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~69_combout\ = (\inst4|u[3][2]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[3][2]~69_combout\);

-- Location: LCCOMB_X25_Y13_N16
\inst4|u[3][2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~70_combout\ = (\inst4|u[3][2]~68_combout\) # ((\inst4|u[3][2]~66_combout\) # ((\inst4|u[3][2]~67_combout\) # (\inst4|u[3][2]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~68_combout\,
	datab => \inst4|u[3][2]~66_combout\,
	datac => \inst4|u[3][2]~67_combout\,
	datad => \inst4|u[3][2]~69_combout\,
	combout => \inst4|u[3][2]~70_combout\);

-- Location: FF_X25_Y13_N17
\inst4|u[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[3][2]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][2]~q\);

-- Location: LCCOMB_X23_Y14_N14
\inst4|_~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~47_combout\ = (!\inst4|d[3][3]~q\ & (!\inst4|d[3][2]~q\ & (!\inst4|u[3][3]~q\ & !\inst4|u[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|u[3][2]~q\,
	combout => \inst4|_~47_combout\);

-- Location: LCCOMB_X23_Y16_N10
\inst4|d[3][4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~7_combout\ = (\inst4|d[3][4]~q\ & ((\inst4|_~55_combout\) # (\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|d[3][4]~7_combout\);

-- Location: LCCOMB_X23_Y16_N14
\inst4|d[3][4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~5_combout\ = (\inst4|d[3][4]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|_~39_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[3][4]~5_combout\);

-- Location: LCCOMB_X23_Y16_N4
\inst4|d[3][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~6_combout\ = (\inst4|d[3][4]~q\ & ((\inst4|_~53_combout\) # ((\inst4|sorteio|dezena\(4) & \inst4|_~50_combout\)))) # (!\inst4|d[3][4]~q\ & (\inst4|sorteio|dezena\(4) & ((\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|_~53_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[3][4]~6_combout\);

-- Location: LCCOMB_X23_Y16_N24
\inst4|d[3][4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~8_combout\ = (\inst4|d[3][4]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[3][4]~8_combout\);

-- Location: LCCOMB_X23_Y16_N16
\inst4|d[3][4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~9_combout\ = (\inst4|d[3][4]~7_combout\) # ((\inst4|d[3][4]~5_combout\) # ((\inst4|d[3][4]~6_combout\) # (\inst4|d[3][4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~7_combout\,
	datab => \inst4|d[3][4]~5_combout\,
	datac => \inst4|d[3][4]~6_combout\,
	datad => \inst4|d[3][4]~8_combout\,
	combout => \inst4|d[3][4]~9_combout\);

-- Location: FF_X23_Y16_N17
\inst4|d[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[3][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][4]~q\);

-- Location: LCCOMB_X23_Y14_N10
\inst4|d[3][1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~45_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~q\,
	datab => \inst4|_~39_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[3][1]~45_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst4|d[3][1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~47_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|_~55_combout\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|d[3][1]~q\,
	combout => \inst4|d[3][1]~47_combout\);

-- Location: LCCOMB_X23_Y14_N8
\inst4|d[3][1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~46_combout\ = (\inst4|sorteio|dezena\(1) & ((\inst4|_~50_combout\) # ((\inst4|d[3][1]~q\ & \inst4|_~53_combout\)))) # (!\inst4|sorteio|dezena\(1) & (\inst4|d[3][1]~q\ & (\inst4|_~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|d[3][1]~q\,
	datac => \inst4|_~53_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[3][1]~46_combout\);

-- Location: LCCOMB_X23_Y14_N0
\inst4|d[3][1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~48_combout\ = (\inst4|d[3][1]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[3][1]~48_combout\);

-- Location: LCCOMB_X23_Y14_N4
\inst4|d[3][1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~49_combout\ = (\inst4|d[3][1]~45_combout\) # ((\inst4|d[3][1]~47_combout\) # ((\inst4|d[3][1]~46_combout\) # (\inst4|d[3][1]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~45_combout\,
	datab => \inst4|d[3][1]~47_combout\,
	datac => \inst4|d[3][1]~46_combout\,
	datad => \inst4|d[3][1]~48_combout\,
	combout => \inst4|d[3][1]~49_combout\);

-- Location: FF_X23_Y14_N5
\inst4|d[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[3][1]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][1]~q\);

-- Location: LCCOMB_X22_Y17_N26
\inst4|u[3][4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~7_combout\ = (\inst4|sorteio|unidade\(4) & ((\inst4|_~50_combout\) # ((\inst4|u[3][4]~q\ & \inst4|_~53_combout\)))) # (!\inst4|sorteio|unidade\(4) & (\inst4|u[3][4]~q\ & ((\inst4|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|u[3][4]~7_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst4|u[3][4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~8_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|_~54_combout\) # (\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~54_combout\,
	datab => \inst4|u[3][4]~q\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|u[3][4]~8_combout\);

-- Location: LCCOMB_X22_Y17_N14
\inst4|u[3][4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~9_combout\ = (\inst4|u[3][4]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[3][4]~9_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst4|u[3][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~6_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~39_combout\) # (\inst4|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~40_combout\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|_~9_combout\,
	combout => \inst4|u[3][4]~6_combout\);

-- Location: LCCOMB_X22_Y17_N20
\inst4|u[3][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~10_combout\ = (\inst4|u[3][4]~7_combout\) # ((\inst4|u[3][4]~8_combout\) # ((\inst4|u[3][4]~9_combout\) # (\inst4|u[3][4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~7_combout\,
	datab => \inst4|u[3][4]~8_combout\,
	datac => \inst4|u[3][4]~9_combout\,
	datad => \inst4|u[3][4]~6_combout\,
	combout => \inst4|u[3][4]~10_combout\);

-- Location: FF_X22_Y17_N21
\inst4|u[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[3][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][4]~q\);

-- Location: LCCOMB_X23_Y14_N16
\inst4|_~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~48_combout\ = (!\inst4|d[3][4]~q\ & (!\inst4|d[3][1]~q\ & (!\inst4|u[3][1]~q\ & !\inst4|u[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|d[3][1]~q\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|u[3][4]~q\,
	combout => \inst4|_~48_combout\);

-- Location: LCCOMB_X23_Y13_N4
\inst4|_~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~49_combout\ = (\inst4|_~47_combout\ & (\inst4|_~48_combout\ & \inst4|_~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~47_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|_~49_combout\);

-- Location: LCCOMB_X22_Y13_N18
\inst4|_~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~36_combout\ = (\inst4|_~30_combout\ & (\inst4|_~25_combout\ & (\inst4|_~35_combout\ & \inst4|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~30_combout\,
	datab => \inst4|_~25_combout\,
	datac => \inst4|_~35_combout\,
	datad => \inst4|_~20_combout\,
	combout => \inst4|_~36_combout\);

-- Location: LCCOMB_X23_Y13_N14
\inst4|_~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~50_combout\ = (\inst4|_~41_combout\ & (\inst4|_~49_combout\ & \inst4|_~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~36_combout\,
	combout => \inst4|_~50_combout\);

-- Location: LCCOMB_X23_Y12_N16
\inst4|d[2][2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~60_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~53_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|_~53_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[2][2]~60_combout\);

-- Location: LCCOMB_X23_Y12_N0
\inst4|d[2][2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~63_combout\ = (\inst4|d[2][2]~62_combout\) # ((\inst4|d[2][2]~59_combout\) # ((\inst4|d[2][2]~61_combout\) # (\inst4|d[2][2]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~62_combout\,
	datab => \inst4|d[2][2]~59_combout\,
	datac => \inst4|d[2][2]~61_combout\,
	datad => \inst4|d[2][2]~60_combout\,
	combout => \inst4|d[2][2]~63_combout\);

-- Location: FF_X23_Y12_N1
\inst4|d[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[2][2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][2]~q\);

-- Location: LCCOMB_X24_Y14_N26
\inst4|d[2][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~37_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|_~54_combout\) # (\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst4|_~54_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|d[2][1]~37_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst4|d[2][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~38_combout\ = (\inst4|d[2][1]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[2][1]~38_combout\);

-- Location: LCCOMB_X24_Y14_N14
\inst4|d[2][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~35_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|_~9_combout\) # ((\inst4|sorteio|dezena\(1) & \inst4|_~39_combout\)))) # (!\inst4|d[2][1]~q\ & (\inst4|sorteio|dezena\(1) & ((\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[2][1]~35_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst4|d[2][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~36_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|_~53_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst4|_~53_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[2][1]~36_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst4|d[2][1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~39_combout\ = (\inst4|d[2][1]~37_combout\) # ((\inst4|d[2][1]~38_combout\) # ((\inst4|d[2][1]~35_combout\) # (\inst4|d[2][1]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~37_combout\,
	datab => \inst4|d[2][1]~38_combout\,
	datac => \inst4|d[2][1]~35_combout\,
	datad => \inst4|d[2][1]~36_combout\,
	combout => \inst4|d[2][1]~39_combout\);

-- Location: FF_X24_Y14_N31
\inst4|d[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][1]~q\);

-- Location: LCCOMB_X21_Y13_N4
\inst4|_~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~43_combout\ = (\inst4|d[2][2]~q\ & (\inst4|sorteio|dezena\(2) & (\inst4|d[2][1]~q\ $ (!\inst4|sorteio|dezena\(1))))) # (!\inst4|d[2][2]~q\ & (!\inst4|sorteio|dezena\(2) & (\inst4|d[2][1]~q\ $ (!\inst4|sorteio|dezena\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|d[2][1]~q\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|_~43_combout\);

-- Location: LCCOMB_X22_Y12_N12
\inst4|u[2][1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~31_combout\ = (\inst4|sorteio|unidade\(1) & ((\inst4|_~39_combout\) # ((\inst4|u[2][1]~q\ & \inst4|_~9_combout\)))) # (!\inst4|sorteio|unidade\(1) & (\inst4|u[2][1]~q\ & (\inst4|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|u[2][1]~31_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst4|u[2][1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~33_combout\ = (\inst4|u[2][1]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[2][1]~33_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst4|u[2][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~34_combout\ = (\inst4|u[2][1]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[2][1]~34_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst4|u[2][1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~32_combout\ = (\inst4|u[2][1]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|_~40_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|u[2][1]~32_combout\);

-- Location: LCCOMB_X22_Y12_N0
\inst4|u[2][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~35_combout\ = (\inst4|u[2][1]~31_combout\) # ((\inst4|u[2][1]~33_combout\) # ((\inst4|u[2][1]~34_combout\) # (\inst4|u[2][1]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~31_combout\,
	datab => \inst4|u[2][1]~33_combout\,
	datac => \inst4|u[2][1]~34_combout\,
	datad => \inst4|u[2][1]~32_combout\,
	combout => \inst4|u[2][1]~35_combout\);

-- Location: FF_X22_Y12_N1
\inst4|u[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[2][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][1]~q\);

-- Location: LCCOMB_X21_Y13_N28
\inst4|_~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~45_combout\ = (\inst4|sorteio|unidade\(2) & (\inst4|u[2][2]~q\ & (\inst4|sorteio|unidade\(1) $ (!\inst4|u[2][1]~q\)))) # (!\inst4|sorteio|unidade\(2) & (!\inst4|u[2][2]~q\ & (\inst4|sorteio|unidade\(1) $ (!\inst4|u[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|u[2][2]~q\,
	datad => \inst4|u[2][1]~q\,
	combout => \inst4|_~45_combout\);

-- Location: LCCOMB_X22_Y12_N30
\inst4|d[2][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~2_combout\ = (\inst4|d[2][4]~q\ & ((\inst4|_~55_combout\) # (\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|d[2][4]~2_combout\);

-- Location: LCCOMB_X22_Y12_N18
\inst4|d[2][4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~0_combout\ = (\inst4|sorteio|dezena\(4) & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\ & \inst4|d[2][4]~q\)))) # (!\inst4|sorteio|dezena\(4) & (\inst4|_~9_combout\ & (\inst4|d[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(4),
	datab => \inst4|_~9_combout\,
	datac => \inst4|d[2][4]~q\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[2][4]~0_combout\);

-- Location: LCCOMB_X22_Y12_N8
\inst4|d[2][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~3_combout\ = (\inst4|d[2][4]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[2][4]~3_combout\);

-- Location: LCCOMB_X22_Y12_N16
\inst4|d[2][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~1_combout\ = (\inst4|d[2][4]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~q\,
	datab => \inst4|_~40_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|d[2][4]~1_combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst4|d[2][4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~4_combout\ = (\inst4|d[2][4]~2_combout\) # ((\inst4|d[2][4]~0_combout\) # ((\inst4|d[2][4]~3_combout\) # (\inst4|d[2][4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~2_combout\,
	datab => \inst4|d[2][4]~0_combout\,
	datac => \inst4|d[2][4]~3_combout\,
	datad => \inst4|d[2][4]~1_combout\,
	combout => \inst4|d[2][4]~4_combout\);

-- Location: FF_X22_Y12_N25
\inst4|d[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[2][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][4]~q\);

-- Location: LCCOMB_X22_Y12_N26
\inst4|d[2][3]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~92_combout\ = (\inst4|d[2][3]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[2][3]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[2][3]~92_combout\);

-- Location: LCCOMB_X22_Y12_N20
\inst4|d[2][3]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~89_combout\ = (\inst4|sorteio|dezena\(3) & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\ & \inst4|d[2][3]~q\)))) # (!\inst4|sorteio|dezena\(3) & (\inst4|_~9_combout\ & (\inst4|d[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|_~9_combout\,
	datac => \inst4|d[2][3]~q\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|d[2][3]~89_combout\);

-- Location: LCCOMB_X22_Y12_N4
\inst4|d[2][3]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~91_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|_~55_combout\,
	datac => \inst4|d[2][3]~q\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[2][3]~91_combout\);

-- Location: LCCOMB_X22_Y12_N10
\inst4|d[2][3]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~90_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|_~40_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|d[2][3]~90_combout\);

-- Location: LCCOMB_X22_Y12_N6
\inst4|d[2][3]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~93_combout\ = (\inst4|d[2][3]~92_combout\) # ((\inst4|d[2][3]~89_combout\) # ((\inst4|d[2][3]~91_combout\) # (\inst4|d[2][3]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~92_combout\,
	datab => \inst4|d[2][3]~89_combout\,
	datac => \inst4|d[2][3]~91_combout\,
	datad => \inst4|d[2][3]~90_combout\,
	combout => \inst4|d[2][3]~93_combout\);

-- Location: FF_X22_Y12_N7
\inst4|d[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[2][3]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][3]~q\);

-- Location: LCCOMB_X21_Y13_N30
\inst4|_~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~42_combout\ = (\inst4|d[2][4]~q\ & (\inst4|sorteio|dezena\(4) & (\inst4|d[2][3]~q\ $ (!\inst4|sorteio|dezena\(3))))) # (!\inst4|d[2][4]~q\ & (!\inst4|sorteio|dezena\(4) & (\inst4|d[2][3]~q\ $ (!\inst4|sorteio|dezena\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~q\,
	datab => \inst4|d[2][3]~q\,
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|sorteio|dezena\(3),
	combout => \inst4|_~42_combout\);

-- Location: LCCOMB_X21_Y16_N26
\inst4|u[2][3]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~92_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~55_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[2][3]~92_combout\);

-- Location: LCCOMB_X21_Y16_N0
\inst4|u[2][3]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~90_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|_~9_combout\) # ((\inst4|sorteio|unidade\(3) & \inst4|_~39_combout\)))) # (!\inst4|u[2][3]~q\ & (\inst4|sorteio|unidade\(3) & (\inst4|_~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|_~39_combout\,
	datad => \inst4|_~9_combout\,
	combout => \inst4|u[2][3]~90_combout\);

-- Location: LCCOMB_X21_Y16_N8
\inst4|u[2][3]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~93_combout\ = (\inst4|u[2][3]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[2][3]~93_combout\);

-- Location: LCCOMB_X22_Y16_N4
\inst4|u[2][3]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~91_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~40_combout\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|u[2][3]~91_combout\);

-- Location: LCCOMB_X21_Y16_N16
\inst4|u[2][3]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~94_combout\ = (\inst4|u[2][3]~92_combout\) # ((\inst4|u[2][3]~90_combout\) # ((\inst4|u[2][3]~93_combout\) # (\inst4|u[2][3]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~92_combout\,
	datab => \inst4|u[2][3]~90_combout\,
	datac => \inst4|u[2][3]~93_combout\,
	datad => \inst4|u[2][3]~91_combout\,
	combout => \inst4|u[2][3]~94_combout\);

-- Location: FF_X21_Y16_N17
\inst4|u[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[2][3]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][3]~q\);

-- Location: LCCOMB_X22_Y16_N0
\inst4|u[2][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~3_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|_~55_combout\) # (\inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|u[2][4]~3_combout\);

-- Location: LCCOMB_X22_Y16_N2
\inst4|u[2][4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~4_combout\ = (\inst4|u[2][4]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[2][4]~4_combout\);

-- Location: LCCOMB_X22_Y16_N22
\inst4|u[2][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~2_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~40_combout\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|u[2][4]~2_combout\);

-- Location: LCCOMB_X22_Y16_N10
\inst4|u[2][4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~0_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|_~38_combout\ & (\inst4|_~14_combout\ & \inst4|_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|_~38_combout\,
	datac => \inst4|_~14_combout\,
	datad => \inst4|_~36_combout\,
	combout => \inst4|u[2][4]~0_combout\);

-- Location: LCCOMB_X22_Y16_N16
\inst4|u[2][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~1_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~15_combout\ & \inst4|u[2][4]~0_combout\)))) # (!\inst4|u[2][4]~q\ & (((\inst4|_~15_combout\ & \inst4|u[2][4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~15_combout\,
	datad => \inst4|u[2][4]~0_combout\,
	combout => \inst4|u[2][4]~1_combout\);

-- Location: LCCOMB_X22_Y16_N14
\inst4|u[2][4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~5_combout\ = (\inst4|u[2][4]~3_combout\) # ((\inst4|u[2][4]~4_combout\) # ((\inst4|u[2][4]~2_combout\) # (\inst4|u[2][4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~3_combout\,
	datab => \inst4|u[2][4]~4_combout\,
	datac => \inst4|u[2][4]~2_combout\,
	datad => \inst4|u[2][4]~1_combout\,
	combout => \inst4|u[2][4]~5_combout\);

-- Location: FF_X22_Y16_N15
\inst4|u[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[2][4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][4]~q\);

-- Location: LCCOMB_X21_Y13_N18
\inst4|_~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~44_combout\ = (\inst4|u[2][3]~q\ & (\inst4|sorteio|unidade\(3) & (\inst4|sorteio|unidade\(4) $ (!\inst4|u[2][4]~q\)))) # (!\inst4|u[2][3]~q\ & (!\inst4|sorteio|unidade\(3) & (\inst4|sorteio|unidade\(4) $ (!\inst4|u[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|u[2][4]~q\,
	datad => \inst4|sorteio|unidade\(3),
	combout => \inst4|_~44_combout\);

-- Location: LCCOMB_X21_Y13_N22
\inst4|_~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~46_combout\ = (\inst4|_~43_combout\ & (!\inst4|_~42_combout\ & ((!\inst4|_~44_combout\) # (!\inst4|_~45_combout\)))) # (!\inst4|_~43_combout\ & (((!\inst4|_~44_combout\)) # (!\inst4|_~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~43_combout\,
	datab => \inst4|_~45_combout\,
	datac => \inst4|_~42_combout\,
	datad => \inst4|_~44_combout\,
	combout => \inst4|_~46_combout\);

-- Location: LCCOMB_X22_Y13_N22
\inst4|_~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~63_combout\ = (\inst4|_~14_combout\ & \inst4|_~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~14_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|_~63_combout\);

-- Location: LCCOMB_X22_Y13_N10
\inst4|_~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~68_combout\ = (\inst4|_~63_combout\ & (\inst4|_~67_combout\ & (\inst4|_~64_combout\ & \inst4|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~63_combout\,
	datab => \inst4|_~67_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|_~68_combout\);

-- Location: LCCOMB_X25_Y13_N20
\inst4|u[3][1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~48_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~68_combout\) # (\inst4|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|_~55_combout\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[3][1]~48_combout\);

-- Location: LCCOMB_X25_Y13_N26
\inst4|u[3][1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~47_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~53_combout\) # ((\inst4|sorteio|unidade\(1) & \inst4|_~50_combout\)))) # (!\inst4|u[3][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|u[3][1]~47_combout\);

-- Location: LCCOMB_X25_Y13_N28
\inst4|u[3][1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~46_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|_~40_combout\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|_~39_combout\,
	combout => \inst4|u[3][1]~46_combout\);

-- Location: LCCOMB_X25_Y13_N0
\inst4|u[3][1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~50_combout\ = (\inst4|u[3][1]~49_combout\) # ((\inst4|u[3][1]~48_combout\) # ((\inst4|u[3][1]~47_combout\) # (\inst4|u[3][1]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~49_combout\,
	datab => \inst4|u[3][1]~48_combout\,
	datac => \inst4|u[3][1]~47_combout\,
	datad => \inst4|u[3][1]~46_combout\,
	combout => \inst4|u[3][1]~50_combout\);

-- Location: FF_X25_Y13_N1
\inst4|u[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[3][1]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][1]~q\);

-- Location: LCCOMB_X25_Y13_N22
\inst4|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~13_combout\ = (\inst4|u[3][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|u[3][2]~q\ $ (!\inst4|sorteio|unidade\(2))))) # (!\inst4|u[3][1]~q\ & (!\inst4|sorteio|unidade\(1) & (\inst4|u[3][2]~q\ $ (!\inst4|sorteio|unidade\(2)))))

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
	combout => \inst4|_~13_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst4|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~11_combout\ = (\inst4|d[3][1]~q\ & (\inst4|sorteio|dezena\(1) & (\inst4|sorteio|dezena\(2) $ (!\inst4|d[3][2]~q\)))) # (!\inst4|d[3][1]~q\ & (!\inst4|sorteio|dezena\(1) & (\inst4|sorteio|dezena\(2) $ (!\inst4|d[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~q\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|sorteio|dezena\(1),
	datad => \inst4|d[3][2]~q\,
	combout => \inst4|_~11_combout\);

-- Location: LCCOMB_X22_Y17_N18
\inst4|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~12_combout\ = (\inst4|u[3][3]~q\ & (\inst4|sorteio|unidade\(3) & (\inst4|u[3][4]~q\ $ (!\inst4|sorteio|unidade\(4))))) # (!\inst4|u[3][3]~q\ & (!\inst4|sorteio|unidade\(3) & (\inst4|u[3][4]~q\ $ (!\inst4|sorteio|unidade\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|_~12_combout\);

-- Location: LCCOMB_X23_Y16_N28
\inst4|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~10_combout\ = (\inst4|d[3][3]~q\ & (\inst4|sorteio|dezena\(3) & (\inst4|d[3][4]~q\ $ (!\inst4|sorteio|dezena\(4))))) # (!\inst4|d[3][3]~q\ & (!\inst4|sorteio|dezena\(3) & (\inst4|d[3][4]~q\ $ (!\inst4|sorteio|dezena\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][4]~q\,
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|sorteio|dezena\(3),
	combout => \inst4|_~10_combout\);

-- Location: LCCOMB_X22_Y13_N4
\inst4|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~14_combout\ = (\inst4|_~13_combout\ & (!\inst4|_~12_combout\ & ((!\inst4|_~10_combout\) # (!\inst4|_~11_combout\)))) # (!\inst4|_~13_combout\ & (((!\inst4|_~10_combout\)) # (!\inst4|_~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~13_combout\,
	datab => \inst4|_~11_combout\,
	datac => \inst4|_~12_combout\,
	datad => \inst4|_~10_combout\,
	combout => \inst4|_~14_combout\);

-- Location: LCCOMB_X22_Y13_N2
\inst4|_~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~40_combout\ = (\inst4|_~15_combout\ & (((!\inst4|_~36_combout\) # (!\inst4|_~14_combout\)) # (!\inst4|_~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~38_combout\,
	datab => \inst4|_~14_combout\,
	datac => \inst4|_~15_combout\,
	datad => \inst4|_~36_combout\,
	combout => \inst4|_~40_combout\);

-- Location: LCCOMB_X21_Y16_N10
\inst4|u[6][3]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~110_combout\ = (\inst4|u[6][3]~q\ & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|u[6][3]~q\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|u[6][3]~110_combout\);

-- Location: LCCOMB_X21_Y16_N28
\inst4|u[6][3]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~111_combout\ = (\inst4|u[6][3]~q\ & ((\inst4|_~41_combout\) # ((\inst4|_~69_combout\) # (\inst4|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|u[6][3]~111_combout\);

-- Location: LCCOMB_X21_Y16_N14
\inst4|u[6][3]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~112_combout\ = (\inst4|u[6][3]~q\ & ((\inst4|_~55_combout\) # ((\inst4|sorteio|unidade\(3) & \inst4|_~61_combout\)))) # (!\inst4|u[6][3]~q\ & (\inst4|sorteio|unidade\(3) & ((\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|_~55_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[6][3]~112_combout\);

-- Location: LCCOMB_X23_Y15_N0
\inst4|u[6][3]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~113_combout\ = (\inst4|u[6][3]~q\ & ((\inst4|_~62_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[6][3]~113_combout\);

-- Location: LCCOMB_X21_Y16_N30
\inst4|u[6][3]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~114_combout\ = (\inst4|u[6][3]~110_combout\) # ((\inst4|u[6][3]~111_combout\) # ((\inst4|u[6][3]~112_combout\) # (\inst4|u[6][3]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~110_combout\,
	datab => \inst4|u[6][3]~111_combout\,
	datac => \inst4|u[6][3]~112_combout\,
	datad => \inst4|u[6][3]~113_combout\,
	combout => \inst4|u[6][3]~114_combout\);

-- Location: FF_X21_Y16_N31
\inst4|u[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[6][3]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][3]~q\);

-- Location: LCCOMB_X23_Y15_N8
\inst4|_~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~58_combout\ = (!\inst4|u[6][3]~q\ & (!\inst4|d[6][2]~q\ & (!\inst4|d[6][3]~q\ & !\inst4|u[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datab => \inst4|d[6][2]~q\,
	datac => \inst4|d[6][3]~q\,
	datad => \inst4|u[6][2]~q\,
	combout => \inst4|_~58_combout\);

-- Location: LCCOMB_X23_Y15_N6
\inst4|_~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~59_combout\ = (!\inst4|u[6][4]~q\ & (!\inst4|u[6][1]~q\ & (!\inst4|d[6][1]~q\ & !\inst4|d[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][4]~q\,
	datab => \inst4|u[6][1]~q\,
	datac => \inst4|d[6][1]~q\,
	datad => \inst4|d[6][4]~q\,
	combout => \inst4|_~59_combout\);

-- Location: LCCOMB_X23_Y15_N24
\inst4|_~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~60_combout\ = (\inst4|_~58_combout\ & \inst4|_~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~58_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|_~60_combout\);

-- Location: LCCOMB_X23_Y13_N24
\inst4|_~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~57_combout\ = (!\inst4|count|cnt\(2) & (\inst4|count|cnt\(1) & (\inst4|temp~q\ & \inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst4|temp~q\,
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~57_combout\);

-- Location: LCCOMB_X23_Y13_N10
\inst4|_~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~62_combout\ = (\inst4|_~57_combout\ & (((!\inst4|_~56_combout\) # (!\inst4|_~20_combout\)) # (!\inst4|_~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~60_combout\,
	datab => \inst4|_~57_combout\,
	datac => \inst4|_~20_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|_~62_combout\);

-- Location: LCCOMB_X25_Y13_N6
\inst4|u[2][2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~64_combout\ = (\inst4|u[2][2]~q\ & (((\inst4|_~62_combout\) # (\inst4|_~61_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[2][2]~64_combout\);

-- Location: LCCOMB_X25_Y13_N8
\inst4|u[2][2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~63_combout\ = (\inst4|u[2][2]~q\ & ((\inst4|_~55_combout\) # ((\inst4|_~68_combout\) # (\inst4|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|_~55_combout\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[2][2]~63_combout\);

-- Location: LCCOMB_X25_Y13_N4
\inst4|u[2][2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~61_combout\ = (\inst4|sorteio|unidade\(2) & ((\inst4|_~39_combout\) # ((\inst4|_~9_combout\ & \inst4|u[2][2]~q\)))) # (!\inst4|sorteio|unidade\(2) & (\inst4|_~9_combout\ & ((\inst4|u[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|u[2][2]~q\,
	combout => \inst4|u[2][2]~61_combout\);

-- Location: LCCOMB_X25_Y13_N2
\inst4|u[2][2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~62_combout\ = (\inst4|u[2][2]~q\ & ((\inst4|_~40_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|_~40_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~53_combout\,
	combout => \inst4|u[2][2]~62_combout\);

-- Location: LCCOMB_X25_Y13_N10
\inst4|u[2][2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~65_combout\ = (\inst4|u[2][2]~64_combout\) # ((\inst4|u[2][2]~63_combout\) # ((\inst4|u[2][2]~61_combout\) # (\inst4|u[2][2]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~64_combout\,
	datab => \inst4|u[2][2]~63_combout\,
	datac => \inst4|u[2][2]~61_combout\,
	datad => \inst4|u[2][2]~62_combout\,
	combout => \inst4|u[2][2]~65_combout\);

-- Location: FF_X25_Y13_N11
\inst4|u[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|u[2][2]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][2]~q\);

-- Location: LCCOMB_X19_Y14_N22
\inst14|lcd_bus[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~6_combout\ = (!\inst4|d[2][3]~q\ & !\inst4|d[2][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|d[2][3]~q\,
	datad => \inst4|d[2][2]~q\,
	combout => \inst14|lcd_bus[5]~6_combout\);

-- Location: LCCOMB_X19_Y14_N20
\inst4|_~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~37_combout\ = (!\inst4|d[2][1]~q\ & (!\inst4|d[2][4]~q\ & (!\inst4|u[2][1]~q\ & !\inst4|u[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|u[2][1]~q\,
	datad => \inst4|u[2][4]~q\,
	combout => \inst4|_~37_combout\);

-- Location: LCCOMB_X19_Y14_N30
\inst4|_~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~38_combout\ = (!\inst4|u[2][2]~q\ & (!\inst4|u[2][3]~q\ & (\inst14|lcd_bus[5]~6_combout\ & \inst4|_~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst14|lcd_bus[5]~6_combout\,
	datad => \inst4|_~37_combout\,
	combout => \inst4|_~38_combout\);

-- Location: LCCOMB_X22_Y13_N20
\inst4|_~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~39_combout\ = (\inst4|_~38_combout\ & (\inst4|_~14_combout\ & (\inst4|_~15_combout\ & \inst4|_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~38_combout\,
	datab => \inst4|_~14_combout\,
	datac => \inst4|_~15_combout\,
	datad => \inst4|_~36_combout\,
	combout => \inst4|_~39_combout\);

-- Location: LCCOMB_X22_Y11_N28
\inst4|d[5][3]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~114_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~39_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[5][3]~114_combout\);

-- Location: LCCOMB_X22_Y11_N22
\inst4|d[5][3]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~117_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|_~61_combout\) # ((\inst4|_~62_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~61_combout\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[5][3]~117_combout\);

-- Location: LCCOMB_X22_Y11_N20
\inst4|d[5][3]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~116_combout\ = (\inst4|sorteio|dezena\(3) & ((\inst4|_~73_combout\) # ((\inst4|d[5][3]~q\ & \inst4|_~77_combout\)))) # (!\inst4|sorteio|dezena\(3) & (\inst4|d[5][3]~q\ & ((\inst4|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|d[5][3]~116_combout\);

-- Location: LCCOMB_X22_Y11_N18
\inst4|d[5][3]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~118_combout\ = (\inst4|d[5][3]~115_combout\) # ((\inst4|d[5][3]~114_combout\) # ((\inst4|d[5][3]~117_combout\) # (\inst4|d[5][3]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~115_combout\,
	datab => \inst4|d[5][3]~114_combout\,
	datac => \inst4|d[5][3]~117_combout\,
	datad => \inst4|d[5][3]~116_combout\,
	combout => \inst4|d[5][3]~118_combout\);

-- Location: FF_X22_Y11_N19
\inst4|d[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[5][3]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][3]~q\);

-- Location: LCCOMB_X21_Y14_N6
\inst4|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~16_combout\ = (\inst4|sorteio|dezena\(3) & (\inst4|d[5][3]~q\ & (\inst4|sorteio|dezena\(4) $ (!\inst4|d[5][4]~q\)))) # (!\inst4|sorteio|dezena\(3) & (!\inst4|d[5][3]~q\ & (\inst4|sorteio|dezena\(4) $ (!\inst4|d[5][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|d[5][3]~q\,
	datad => \inst4|d[5][4]~q\,
	combout => \inst4|_~16_combout\);

-- Location: LCCOMB_X21_Y14_N0
\inst4|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~17_combout\ = (\inst4|d[5][1]~q\ & (\inst4|sorteio|dezena\(1) & (\inst4|d[5][2]~q\ $ (!\inst4|sorteio|dezena\(2))))) # (!\inst4|d[5][1]~q\ & (!\inst4|sorteio|dezena\(1) & (\inst4|d[5][2]~q\ $ (!\inst4|sorteio|dezena\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|_~17_combout\);

-- Location: LCCOMB_X21_Y14_N22
\inst4|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~18_combout\ = (\inst4|u[5][4]~q\ & (\inst4|sorteio|unidade\(4) & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[5][3]~q\)))) # (!\inst4|u[5][4]~q\ & (!\inst4|sorteio|unidade\(4) & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|sorteio|unidade\(4),
	datad => \inst4|u[5][3]~q\,
	combout => \inst4|_~18_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst4|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~19_combout\ = (\inst4|sorteio|unidade\(2) & (\inst4|u[5][2]~q\ & (\inst4|sorteio|unidade\(1) $ (!\inst4|u[5][1]~q\)))) # (!\inst4|sorteio|unidade\(2) & (!\inst4|u[5][2]~q\ & (\inst4|sorteio|unidade\(1) $ (!\inst4|u[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|u[5][2]~q\,
	datad => \inst4|u[5][1]~q\,
	combout => \inst4|_~19_combout\);

-- Location: LCCOMB_X21_Y14_N28
\inst4|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~20_combout\ = (\inst4|_~16_combout\ & (!\inst4|_~17_combout\ & ((!\inst4|_~19_combout\) # (!\inst4|_~18_combout\)))) # (!\inst4|_~16_combout\ & (((!\inst4|_~19_combout\) # (!\inst4|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~16_combout\,
	datab => \inst4|_~17_combout\,
	datac => \inst4|_~18_combout\,
	datad => \inst4|_~19_combout\,
	combout => \inst4|_~20_combout\);

-- Location: LCCOMB_X22_Y13_N0
\inst4|_~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~61_combout\ = (\inst4|_~20_combout\ & (\inst4|_~56_combout\ & (\inst4|_~60_combout\ & \inst4|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~20_combout\,
	datab => \inst4|_~56_combout\,
	datac => \inst4|_~60_combout\,
	datad => \inst4|_~57_combout\,
	combout => \inst4|_~61_combout\);

-- Location: LCCOMB_X21_Y14_N26
\inst4|d[4][2]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~72_combout\ = (\inst4|d[4][2]~q\ & (((\inst4|_~61_combout\) # (\inst4|_~62_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~61_combout\,
	datac => \inst4|d[4][2]~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[4][2]~72_combout\);

-- Location: LCCOMB_X21_Y14_N24
\inst4|d[4][2]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~71_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~73_combout\) # (\inst4|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~q\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|_~73_combout\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|d[4][2]~71_combout\);

-- Location: LCCOMB_X22_Y12_N22
\inst4|d[4][2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~69_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|_~9_combout\) # ((\inst4|_~39_combout\) # (\inst4|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|_~39_combout\,
	datad => \inst4|_~40_combout\,
	combout => \inst4|d[4][2]~69_combout\);

-- Location: LCCOMB_X22_Y11_N2
\inst4|d[4][2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~70_combout\ = (\inst4|sorteio|dezena\(2) & ((\inst4|_~68_combout\) # ((\inst4|d[4][2]~q\ & \inst4|_~41_combout\)))) # (!\inst4|sorteio|dezena\(2) & (\inst4|d[4][2]~q\ & (\inst4|_~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(2),
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~68_combout\,
	combout => \inst4|d[4][2]~70_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst4|d[4][2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~73_combout\ = (\inst4|d[4][2]~72_combout\) # ((\inst4|d[4][2]~71_combout\) # ((\inst4|d[4][2]~69_combout\) # (\inst4|d[4][2]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~72_combout\,
	datab => \inst4|d[4][2]~71_combout\,
	datac => \inst4|d[4][2]~69_combout\,
	datad => \inst4|d[4][2]~70_combout\,
	combout => \inst4|d[4][2]~73_combout\);

-- Location: FF_X21_Y14_N31
\inst4|d[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|d[4][2]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][2]~q\);

-- Location: LCCOMB_X17_Y14_N6
\inst14|lcd_bus[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~27_combout\ = (\inst14|char_22~q\ & (((!\inst4|d[4][2]~q\ & !\inst4|d[4][3]~q\)) # (!\inst4|d[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~q\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst14|char_22~q\,
	datad => \inst4|d[4][4]~q\,
	combout => \inst14|lcd_bus[4]~27_combout\);

-- Location: LCCOMB_X18_Y14_N28
\inst14|lcd_bus[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~28_combout\ = (\inst14|char_23~q\ & (((!\inst4|u[4][3]~q\ & !\inst4|u[4][2]~q\)) # (!\inst4|u[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|u[4][2]~q\,
	datad => \inst14|char_23~q\,
	combout => \inst14|lcd_bus[4]~28_combout\);

-- Location: LCCOMB_X23_Y16_N20
\inst14|lcd_bus[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~25_combout\ = (\inst14|char_11~q\ & (((!\inst4|d[3][2]~q\ & !\inst4|d[3][3]~q\)) # (!\inst4|d[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_11~q\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|d[3][3]~q\,
	datad => \inst4|d[3][4]~q\,
	combout => \inst14|lcd_bus[4]~25_combout\);

-- Location: LCCOMB_X17_Y14_N28
\inst14|lcd_bus[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~26_combout\ = (\inst14|char_12~q\ & (((!\inst4|u[3][3]~q\ & !\inst4|u[3][2]~q\)) # (!\inst4|u[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst14|char_12~q\,
	datac => \inst4|u[3][4]~q\,
	datad => \inst4|u[3][2]~q\,
	combout => \inst14|lcd_bus[4]~26_combout\);

-- Location: LCCOMB_X17_Y14_N12
\inst14|lcd_bus[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~29_combout\ = (!\inst14|lcd_bus[4]~27_combout\ & (!\inst14|lcd_bus[4]~28_combout\ & (!\inst14|lcd_bus[4]~25_combout\ & !\inst14|lcd_bus[4]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[4]~27_combout\,
	datab => \inst14|lcd_bus[4]~28_combout\,
	datac => \inst14|lcd_bus[4]~25_combout\,
	datad => \inst14|lcd_bus[4]~26_combout\,
	combout => \inst14|lcd_bus[4]~29_combout\);

-- Location: LCCOMB_X19_Y15_N14
\inst14|lcd_bus[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~21_combout\ = (\inst14|char_05~q\ & (((!\inst4|d[1][2]~q\ & !\inst4|d[1][3]~q\)) # (!\inst4|d[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~q\,
	datab => \inst4|d[1][2]~q\,
	datac => \inst14|char_05~q\,
	datad => \inst4|d[1][3]~q\,
	combout => \inst14|lcd_bus[4]~21_combout\);

-- Location: LCCOMB_X19_Y15_N28
\inst14|lcd_bus[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~22_combout\ = (!\inst14|lcd_bus[4]~21_combout\ & (((\inst4|u[1][4]~q\ & !\inst14|lcd_bus[5]~7_combout\)) # (!\inst14|char_06~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_06~q\,
	datab => \inst4|u[1][4]~q\,
	datac => \inst14|lcd_bus[4]~21_combout\,
	datad => \inst14|lcd_bus[5]~7_combout\,
	combout => \inst14|lcd_bus[4]~22_combout\);

-- Location: LCCOMB_X19_Y14_N26
\inst14|lcd_bus[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~23_combout\ = (\inst14|char_09~q\ & (((!\inst4|u[2][3]~q\ & !\inst4|u[2][2]~q\)) # (!\inst4|u[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_09~q\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst4|u[2][2]~q\,
	combout => \inst14|lcd_bus[4]~23_combout\);

-- Location: LCCOMB_X18_Y14_N20
\inst14|lcd_bus[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~24_combout\ = (!\inst14|lcd_bus[4]~23_combout\ & (((\inst4|d[2][4]~q\ & !\inst14|lcd_bus[5]~6_combout\)) # (!\inst14|char_08~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~q\,
	datab => \inst14|lcd_bus[5]~6_combout\,
	datac => \inst14|char_08~q\,
	datad => \inst14|lcd_bus[4]~23_combout\,
	combout => \inst14|lcd_bus[4]~24_combout\);

-- Location: LCCOMB_X21_Y12_N16
\inst14|lcd_bus[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~32_combout\ = (\inst14|char_28~q\ & (((!\inst4|d[6][3]~q\ & !\inst4|d[6][2]~q\)) # (!\inst4|d[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst14|char_28~q\,
	combout => \inst14|lcd_bus[4]~32_combout\);

-- Location: LCCOMB_X18_Y15_N10
\inst14|lcd_bus[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~30_combout\ = (\inst14|char_25~q\ & (((!\inst4|d[5][2]~q\ & !\inst4|d[5][3]~q\)) # (!\inst4|d[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~q\,
	datab => \inst4|d[5][4]~q\,
	datac => \inst14|char_25~q\,
	datad => \inst4|d[5][3]~q\,
	combout => \inst14|lcd_bus[4]~30_combout\);

-- Location: LCCOMB_X23_Y15_N28
\inst14|lcd_bus[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~33_combout\ = (\inst14|char_29~q\ & (((!\inst4|u[6][3]~q\ & !\inst4|u[6][2]~q\)) # (!\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_29~q\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|u[6][2]~q\,
	combout => \inst14|lcd_bus[4]~33_combout\);

-- Location: LCCOMB_X18_Y13_N20
\inst14|lcd_bus[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~31_combout\ = (\inst14|char_26~q\ & (((!\inst4|u[5][3]~q\ & !\inst4|u[5][2]~q\)) # (!\inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst14|char_26~q\,
	datad => \inst4|u[5][2]~q\,
	combout => \inst14|lcd_bus[4]~31_combout\);

-- Location: LCCOMB_X17_Y14_N10
\inst14|lcd_bus[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~34_combout\ = (!\inst14|lcd_bus[4]~32_combout\ & (!\inst14|lcd_bus[4]~30_combout\ & (!\inst14|lcd_bus[4]~33_combout\ & !\inst14|lcd_bus[4]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[4]~32_combout\,
	datab => \inst14|lcd_bus[4]~30_combout\,
	datac => \inst14|lcd_bus[4]~33_combout\,
	datad => \inst14|lcd_bus[4]~31_combout\,
	combout => \inst14|lcd_bus[4]~34_combout\);

-- Location: LCCOMB_X17_Y14_N0
\inst14|lcd_bus[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~35_combout\ = (\inst14|lcd_bus[4]~29_combout\ & (\inst14|lcd_bus[4]~22_combout\ & (\inst14|lcd_bus[4]~24_combout\ & \inst14|lcd_bus[4]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[4]~29_combout\,
	datab => \inst14|lcd_bus[4]~22_combout\,
	datac => \inst14|lcd_bus[4]~24_combout\,
	datad => \inst14|lcd_bus[4]~34_combout\,
	combout => \inst14|lcd_bus[4]~35_combout\);

-- Location: LCCOMB_X17_Y15_N18
\inst14|lcd_bus[5]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~93_combout\ = (!\inst15|busy~q\ & (!\inst14|lcd_enable~q\ & ((!\inst14|lcd_bus[4]~35_combout\) # (!\inst14|lcd_bus[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[9]~18_combout\,
	datab => \inst15|busy~q\,
	datac => \inst14|lcd_enable~q\,
	datad => \inst14|lcd_bus[4]~35_combout\,
	combout => \inst14|lcd_bus[5]~93_combout\);

-- Location: FF_X17_Y15_N19
\inst14|lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[5]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(5));

-- Location: LCCOMB_X8_Y18_N26
\inst15|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~15_combout\ = (\inst14|lcd_bus\(5) & (\inst15|PRONTO~q\ & \inst14|lcd_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_bus\(5),
	datac => \inst15|PRONTO~q\,
	datad => \inst14|lcd_enable~q\,
	combout => \inst15|_~15_combout\);

-- Location: LCCOMB_X8_Y18_N20
\inst15|lcd_data[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[5]~2_combout\ = (!\inst15|_~16_combout\ & ((!\inst15|op_4~5_combout\) # (!\inst15|INICIALIZACAO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|op_4~5_combout\,
	datad => \inst15|_~16_combout\,
	combout => \inst15|lcd_data[5]~2_combout\);

-- Location: LCCOMB_X8_Y18_N10
\inst15|lcd_data[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[5]~3_combout\ = (\inst15|_~15_combout\) # (((\inst15|ENVIAR~q\ & \inst15|lcd_data\(5))) # (!\inst15|lcd_data[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~15_combout\,
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|lcd_data\(5),
	datad => \inst15|lcd_data[5]~2_combout\,
	combout => \inst15|lcd_data[5]~3_combout\);

-- Location: FF_X8_Y18_N11
\inst15|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(5));

-- Location: LCCOMB_X17_Y15_N26
\inst14|lcd_bus[4]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~94_combout\ = (!\inst15|busy~q\ & (!\inst14|lcd_enable~q\ & !\inst14|lcd_bus[4]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|busy~q\,
	datac => \inst14|lcd_enable~q\,
	datad => \inst14|lcd_bus[4]~35_combout\,
	combout => \inst14|lcd_bus[4]~94_combout\);

-- Location: FF_X17_Y15_N27
\inst14|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[4]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(4));

-- Location: LCCOMB_X11_Y18_N30
\inst15|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~17_combout\ = (\inst14|lcd_enable~q\ & (\inst15|PRONTO~q\ & \inst14|lcd_bus\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_enable~q\,
	datac => \inst15|PRONTO~q\,
	datad => \inst14|lcd_bus\(4),
	combout => \inst15|_~17_combout\);

-- Location: LCCOMB_X8_Y18_N0
\inst15|lcd_data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[4]~4_combout\ = (\inst15|_~17_combout\) # (((\inst15|ENVIAR~q\ & \inst15|lcd_data\(4))) # (!\inst15|lcd_data[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~17_combout\,
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|lcd_data\(4),
	datad => \inst15|lcd_data[5]~2_combout\,
	combout => \inst15|lcd_data[4]~4_combout\);

-- Location: FF_X8_Y18_N1
\inst15|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(4));

-- Location: LCCOMB_X18_Y12_N12
\inst14|lcd_bus[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~46_combout\ = (!\inst4|d[5][2]~q\ & (!\inst4|d[5][3]~q\ & (\inst14|char_25~q\ & \inst4|d[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~q\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst14|char_25~q\,
	datad => \inst4|d[5][4]~q\,
	combout => \inst14|lcd_bus[3]~46_combout\);

-- Location: LCCOMB_X18_Y13_N4
\inst14|lcd_bus[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~47_combout\ = (!\inst4|u[5][3]~q\ & (\inst14|char_26~q\ & (!\inst4|u[5][2]~q\ & \inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst14|char_26~q\,
	datac => \inst4|u[5][2]~q\,
	datad => \inst4|u[5][4]~q\,
	combout => \inst14|lcd_bus[3]~47_combout\);

-- Location: LCCOMB_X23_Y15_N14
\inst14|lcd_bus[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~49_combout\ = (\inst14|char_29~q\ & (\inst4|u[6][4]~q\ & (!\inst4|u[6][3]~q\ & !\inst4|u[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_29~q\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|u[6][2]~q\,
	combout => \inst14|lcd_bus[3]~49_combout\);

-- Location: LCCOMB_X21_Y12_N6
\inst14|lcd_bus[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~48_combout\ = (!\inst4|d[6][3]~q\ & (\inst4|d[6][4]~q\ & (!\inst4|d[6][2]~q\ & \inst14|char_28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst14|char_28~q\,
	combout => \inst14|lcd_bus[3]~48_combout\);

-- Location: LCCOMB_X18_Y12_N10
\inst14|lcd_bus[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~50_combout\ = (\inst14|lcd_bus[3]~46_combout\) # ((\inst14|lcd_bus[3]~47_combout\) # ((\inst14|lcd_bus[3]~49_combout\) # (\inst14|lcd_bus[3]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~46_combout\,
	datab => \inst14|lcd_bus[3]~47_combout\,
	datac => \inst14|lcd_bus[3]~49_combout\,
	datad => \inst14|lcd_bus[3]~48_combout\,
	combout => \inst14|lcd_bus[3]~50_combout\);

-- Location: LCCOMB_X19_Y14_N12
\inst14|lcd_bus[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~38_combout\ = (!\inst4|d[2][3]~q\ & (\inst4|d[2][4]~q\ & (\inst14|char_08~q\ & !\inst4|d[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst14|char_08~q\,
	datad => \inst4|d[2][2]~q\,
	combout => \inst14|lcd_bus[3]~38_combout\);

-- Location: LCCOMB_X18_Y12_N22
\inst14|lcd_bus[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~43_combout\ = (\inst4|u[4][4]~q\ & (\inst14|char_23~q\ & (!\inst4|u[4][3]~q\ & !\inst4|u[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst14|char_23~q\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst14|lcd_bus[3]~43_combout\);

-- Location: LCCOMB_X18_Y14_N14
\inst14|lcd_bus[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~42_combout\ = (\inst4|d[4][4]~q\ & (!\inst4|d[4][2]~q\ & (\inst14|char_22~q\ & !\inst4|d[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst14|char_22~q\,
	datad => \inst4|d[4][3]~q\,
	combout => \inst14|lcd_bus[3]~42_combout\);

-- Location: LCCOMB_X23_Y16_N26
\inst14|lcd_bus[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~40_combout\ = (!\inst4|d[3][3]~q\ & (!\inst4|d[3][2]~q\ & (\inst14|char_11~q\ & \inst4|d[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst14|char_11~q\,
	datad => \inst4|d[3][4]~q\,
	combout => \inst14|lcd_bus[3]~40_combout\);

-- Location: LCCOMB_X19_Y16_N2
\inst14|lcd_bus[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~41_combout\ = (!\inst4|u[3][3]~q\ & (\inst4|u[3][4]~q\ & (\inst14|char_12~q\ & !\inst4|u[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst14|char_12~q\,
	datad => \inst4|u[3][2]~q\,
	combout => \inst14|lcd_bus[3]~41_combout\);

-- Location: LCCOMB_X18_Y12_N4
\inst14|lcd_bus[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~44_combout\ = (\inst14|lcd_bus[3]~43_combout\) # ((\inst14|lcd_bus[3]~42_combout\) # ((\inst14|lcd_bus[3]~40_combout\) # (\inst14|lcd_bus[3]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~43_combout\,
	datab => \inst14|lcd_bus[3]~42_combout\,
	datac => \inst14|lcd_bus[3]~40_combout\,
	datad => \inst14|lcd_bus[3]~41_combout\,
	combout => \inst14|lcd_bus[3]~44_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst14|lcd_bus[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~39_combout\ = (\inst14|char_09~q\ & (\inst4|u[2][4]~q\ & (!\inst4|u[2][3]~q\ & !\inst4|u[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_09~q\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst4|u[2][2]~q\,
	combout => \inst14|lcd_bus[3]~39_combout\);

-- Location: LCCOMB_X19_Y15_N8
\inst14|lcd_bus[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~36_combout\ = (\inst14|char_05~q\ & (!\inst4|d[1][3]~q\ & (!\inst4|d[1][2]~q\ & \inst4|d[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_05~q\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|d[1][2]~q\,
	datad => \inst4|d[1][4]~q\,
	combout => \inst14|lcd_bus[3]~36_combout\);

-- Location: LCCOMB_X19_Y15_N24
\inst14|lcd_bus[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~37_combout\ = (\inst14|lcd_bus[3]~36_combout\) # ((\inst14|char_06~q\ & (\inst4|u[1][4]~q\ & \inst14|lcd_bus[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_06~q\,
	datab => \inst4|u[1][4]~q\,
	datac => \inst14|lcd_bus[3]~36_combout\,
	datad => \inst14|lcd_bus[5]~7_combout\,
	combout => \inst14|lcd_bus[3]~37_combout\);

-- Location: LCCOMB_X18_Y12_N14
\inst14|lcd_bus[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~45_combout\ = (\inst14|lcd_bus[3]~38_combout\) # ((\inst14|lcd_bus[3]~44_combout\) # ((\inst14|lcd_bus[3]~39_combout\) # (\inst14|lcd_bus[3]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~38_combout\,
	datab => \inst14|lcd_bus[3]~44_combout\,
	datac => \inst14|lcd_bus[3]~39_combout\,
	datad => \inst14|lcd_bus[3]~37_combout\,
	combout => \inst14|lcd_bus[3]~45_combout\);

-- Location: LCCOMB_X18_Y12_N16
\inst14|lcd_bus[3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~51_combout\ = (\inst14|lcd_bus[2]~8_combout\ & ((\inst14|lcd_bus[3]~50_combout\) # ((\inst14|lcd_bus[3]~45_combout\) # (!\inst14|lcd_bus[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~50_combout\,
	datab => \inst14|lcd_bus[3]~13_combout\,
	datac => \inst14|lcd_bus[3]~45_combout\,
	datad => \inst14|lcd_bus[2]~8_combout\,
	combout => \inst14|lcd_bus[3]~51_combout\);

-- Location: FF_X18_Y12_N17
\inst14|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(3));

-- Location: LCCOMB_X8_Y18_N14
\inst15|lcd_data[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[3]~5_combout\ = (\inst15|lcd_data\(3) & ((\inst15|ENVIAR~q\) # ((\inst14|lcd_bus\(3) & \inst15|_~14_combout\)))) # (!\inst15|lcd_data\(3) & (((\inst14|lcd_bus\(3) & \inst15|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lcd_data\(3),
	datab => \inst15|ENVIAR~q\,
	datac => \inst14|lcd_bus\(3),
	datad => \inst15|_~14_combout\,
	combout => \inst15|lcd_data[3]~5_combout\);

-- Location: LCCOMB_X8_Y18_N22
\inst15|lcd_data[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[3]~6_combout\ = (\inst15|lcd_data[3]~5_combout\) # ((\inst15|_~12_combout\) # (\inst15|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|lcd_data[3]~5_combout\,
	datac => \inst15|_~12_combout\,
	datad => \inst15|_~4_combout\,
	combout => \inst15|lcd_data[3]~6_combout\);

-- Location: FF_X8_Y18_N23
\inst15|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(3));

-- Location: LCCOMB_X18_Y12_N6
\inst14|lcd_bus[2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~62_combout\ = (!\inst4|d[5][4]~q\ & (\inst14|char_25~q\ & \inst4|d[5][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[5][4]~q\,
	datac => \inst14|char_25~q\,
	datad => \inst4|d[5][3]~q\,
	combout => \inst14|lcd_bus[2]~62_combout\);

-- Location: LCCOMB_X21_Y12_N10
\inst14|lcd_bus[2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~64_combout\ = (\inst4|d[6][3]~q\ & (\inst14|char_28~q\ & !\inst4|d[6][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datac => \inst14|char_28~q\,
	datad => \inst4|d[6][4]~q\,
	combout => \inst14|lcd_bus[2]~64_combout\);

-- Location: LCCOMB_X18_Y13_N30
\inst14|lcd_bus[2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~63_combout\ = (\inst4|u[5][3]~q\ & (!\inst4|u[5][4]~q\ & \inst14|char_26~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|u[5][4]~q\,
	datad => \inst14|char_26~q\,
	combout => \inst14|lcd_bus[2]~63_combout\);

-- Location: LCCOMB_X18_Y12_N24
\inst14|lcd_bus[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~61_combout\ = (!\inst4|u[4][4]~q\ & (\inst4|u[4][3]~q\ & \inst14|char_23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst14|char_23~q\,
	combout => \inst14|lcd_bus[2]~61_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst14|lcd_bus[2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~65_combout\ = (\inst14|lcd_bus[2]~62_combout\) # ((\inst14|lcd_bus[2]~64_combout\) # ((\inst14|lcd_bus[2]~63_combout\) # (\inst14|lcd_bus[2]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~62_combout\,
	datab => \inst14|lcd_bus[2]~64_combout\,
	datac => \inst14|lcd_bus[2]~63_combout\,
	datad => \inst14|lcd_bus[2]~61_combout\,
	combout => \inst14|lcd_bus[2]~65_combout\);

-- Location: LCCOMB_X23_Y15_N26
\inst14|lcd_bus[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~60_combout\ = (\inst4|u[6][3]~q\ & (\inst14|char_29~q\ & !\inst4|u[6][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datac => \inst14|char_29~q\,
	datad => \inst4|u[6][4]~q\,
	combout => \inst14|lcd_bus[2]~60_combout\);

-- Location: LCCOMB_X18_Y14_N2
\inst14|lcd_bus[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~57_combout\ = (\inst14|char_12~q\ & (\inst4|u[3][3]~q\ & !\inst4|u[3][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_12~q\,
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|u[3][4]~q\,
	combout => \inst14|lcd_bus[2]~57_combout\);

-- Location: LCCOMB_X18_Y14_N6
\inst14|lcd_bus[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~58_combout\ = (\inst14|lcd_bus[2]~57_combout\) # ((!\inst4|d[4][4]~q\ & (\inst4|d[4][3]~q\ & \inst14|char_22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst14|char_22~q\,
	datad => \inst14|lcd_bus[2]~57_combout\,
	combout => \inst14|lcd_bus[2]~58_combout\);

-- Location: LCCOMB_X19_Y15_N22
\inst14|lcd_bus[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~52_combout\ = ((!\inst4|d[1][4]~q\ & (\inst4|d[1][3]~q\ & \inst14|char_05~q\))) # (!\inst14|lcd_bus[3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~q\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst14|char_05~q\,
	datad => \inst14|lcd_bus[3]~13_combout\,
	combout => \inst14|lcd_bus[2]~52_combout\);

-- Location: LCCOMB_X19_Y15_N20
\inst14|lcd_bus[2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~53_combout\ = (!\inst4|u[1][4]~q\ & (\inst4|u[1][3]~q\ & \inst14|char_06~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|u[1][3]~q\,
	datac => \inst14|char_06~q\,
	combout => \inst14|lcd_bus[2]~53_combout\);

-- Location: LCCOMB_X18_Y14_N30
\inst14|lcd_bus[2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~54_combout\ = (\inst14|lcd_bus[2]~53_combout\) # ((!\inst4|d[2][4]~q\ & (\inst4|d[2][3]~q\ & \inst14|char_08~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~q\,
	datab => \inst4|d[2][3]~q\,
	datac => \inst14|char_08~q\,
	datad => \inst14|lcd_bus[2]~53_combout\,
	combout => \inst14|lcd_bus[2]~54_combout\);

-- Location: LCCOMB_X22_Y16_N30
\inst14|lcd_bus[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~55_combout\ = (\inst4|u[2][3]~q\ & (!\inst4|u[2][4]~q\ & \inst14|char_09~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datac => \inst4|u[2][4]~q\,
	datad => \inst14|char_09~q\,
	combout => \inst14|lcd_bus[2]~55_combout\);

-- Location: LCCOMB_X23_Y16_N30
\inst14|lcd_bus[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~56_combout\ = (\inst14|lcd_bus[2]~55_combout\) # ((\inst4|d[3][3]~q\ & (!\inst4|d[3][4]~q\ & \inst14|char_11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][4]~q\,
	datac => \inst14|char_11~q\,
	datad => \inst14|lcd_bus[2]~55_combout\,
	combout => \inst14|lcd_bus[2]~56_combout\);

-- Location: LCCOMB_X18_Y14_N12
\inst14|lcd_bus[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~59_combout\ = (\inst14|lcd_bus[2]~58_combout\) # ((\inst14|lcd_bus[2]~52_combout\) # ((\inst14|lcd_bus[2]~54_combout\) # (\inst14|lcd_bus[2]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~58_combout\,
	datab => \inst14|lcd_bus[2]~52_combout\,
	datac => \inst14|lcd_bus[2]~54_combout\,
	datad => \inst14|lcd_bus[2]~56_combout\,
	combout => \inst14|lcd_bus[2]~59_combout\);

-- Location: LCCOMB_X18_Y14_N16
\inst14|lcd_bus[2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~66_combout\ = (\inst14|lcd_bus[2]~8_combout\ & ((\inst14|lcd_bus[2]~65_combout\) # ((\inst14|lcd_bus[2]~60_combout\) # (\inst14|lcd_bus[2]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~65_combout\,
	datab => \inst14|lcd_bus[2]~60_combout\,
	datac => \inst14|lcd_bus[2]~8_combout\,
	datad => \inst14|lcd_bus[2]~59_combout\,
	combout => \inst14|lcd_bus[2]~66_combout\);

-- Location: FF_X18_Y14_N17
\inst14|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[2]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(2));

-- Location: LCCOMB_X8_Y18_N12
\inst15|lcd_data[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[2]~7_combout\ = (\inst15|lcd_data\(2) & ((\inst15|ENVIAR~q\) # ((\inst15|_~14_combout\ & \inst14|lcd_bus\(2))))) # (!\inst15|lcd_data\(2) & (\inst15|_~14_combout\ & (\inst14|lcd_bus\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lcd_data\(2),
	datab => \inst15|_~14_combout\,
	datac => \inst14|lcd_bus\(2),
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|lcd_data[2]~7_combout\);

-- Location: LCCOMB_X8_Y18_N28
\inst15|lcd_data[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[2]~8_combout\ = (\inst15|lcd_data[2]~7_combout\) # ((\inst15|_~12_combout\) # (\inst15|_~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lcd_data[2]~7_combout\,
	datac => \inst15|_~12_combout\,
	datad => \inst15|_~13_combout\,
	combout => \inst15|lcd_data[2]~8_combout\);

-- Location: FF_X8_Y18_N29
\inst15|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(2));

-- Location: LCCOMB_X19_Y15_N12
\inst14|lcd_bus[1]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~69_combout\ = (\inst4|d[2][2]~q\ & (\inst14|char_08~q\ & !\inst4|d[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datac => \inst14|char_08~q\,
	datad => \inst4|d[2][4]~q\,
	combout => \inst14|lcd_bus[1]~69_combout\);

-- Location: LCCOMB_X19_Y15_N2
\inst14|lcd_bus[1]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~70_combout\ = (\inst14|lcd_bus[1]~69_combout\) # ((!\inst4|u[2][4]~q\ & (\inst4|u[2][2]~q\ & \inst14|char_09~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst14|char_09~q\,
	datad => \inst14|lcd_bus[1]~69_combout\,
	combout => \inst14|lcd_bus[1]~70_combout\);

-- Location: LCCOMB_X19_Y15_N16
\inst14|lcd_bus[1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~67_combout\ = (\inst4|d[1][2]~q\ & (\inst14|char_05~q\ & !\inst4|d[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[1][2]~q\,
	datac => \inst14|char_05~q\,
	datad => \inst4|d[1][4]~q\,
	combout => \inst14|lcd_bus[1]~67_combout\);

-- Location: LCCOMB_X19_Y15_N4
\inst14|lcd_bus[1]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~68_combout\ = (\inst14|lcd_bus[1]~67_combout\) # ((!\inst4|u[1][4]~q\ & (\inst4|u[1][2]~q\ & \inst14|char_06~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|u[1][2]~q\,
	datac => \inst14|char_06~q\,
	datad => \inst14|lcd_bus[1]~67_combout\,
	combout => \inst14|lcd_bus[1]~68_combout\);

-- Location: LCCOMB_X18_Y14_N4
\inst14|lcd_bus[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~73_combout\ = (!\inst4|d[4][4]~q\ & (\inst14|char_22~q\ & \inst4|d[4][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datac => \inst14|char_22~q\,
	datad => \inst4|d[4][2]~q\,
	combout => \inst14|lcd_bus[1]~73_combout\);

-- Location: LCCOMB_X18_Y14_N18
\inst14|lcd_bus[1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~74_combout\ = (\inst14|lcd_bus[1]~73_combout\) # ((!\inst4|u[4][4]~q\ & (\inst4|u[4][2]~q\ & \inst14|char_23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst14|lcd_bus[1]~73_combout\,
	datac => \inst4|u[4][2]~q\,
	datad => \inst14|char_23~q\,
	combout => \inst14|lcd_bus[1]~74_combout\);

-- Location: LCCOMB_X18_Y15_N26
\inst14|lcd_bus[1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~75_combout\ = (\inst4|d[5][2]~q\ & (!\inst4|d[5][4]~q\ & \inst14|char_25~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~q\,
	datab => \inst4|d[5][4]~q\,
	datad => \inst14|char_25~q\,
	combout => \inst14|lcd_bus[1]~75_combout\);

-- Location: LCCOMB_X18_Y15_N18
\inst14|lcd_bus[1]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~76_combout\ = (\inst14|lcd_bus[1]~75_combout\) # ((!\inst4|u[5][4]~q\ & (\inst14|char_26~q\ & \inst4|u[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst14|char_26~q\,
	datac => \inst14|lcd_bus[1]~75_combout\,
	datad => \inst4|u[5][2]~q\,
	combout => \inst14|lcd_bus[1]~76_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst14|lcd_bus[1]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~77_combout\ = (\inst14|char_28~q\ & (\inst4|d[6][2]~q\ & !\inst4|d[6][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_28~q\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst4|d[6][4]~q\,
	combout => \inst14|lcd_bus[1]~77_combout\);

-- Location: LCCOMB_X21_Y15_N2
\inst14|lcd_bus[1]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~78_combout\ = (\inst14|lcd_bus[1]~77_combout\) # ((\inst4|u[6][2]~q\ & (\inst14|char_29~q\ & !\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~q\,
	datab => \inst14|char_29~q\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst14|lcd_bus[1]~77_combout\,
	combout => \inst14|lcd_bus[1]~78_combout\);

-- Location: LCCOMB_X23_Y16_N12
\inst14|lcd_bus[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~71_combout\ = (\inst14|char_11~q\ & (!\inst4|d[3][4]~q\ & \inst4|d[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_11~q\,
	datab => \inst4|d[3][4]~q\,
	datac => \inst4|d[3][2]~q\,
	combout => \inst14|lcd_bus[1]~71_combout\);

-- Location: LCCOMB_X24_Y15_N26
\inst14|lcd_bus[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~72_combout\ = (\inst14|lcd_bus[1]~71_combout\) # ((\inst14|char_12~q\ & (!\inst4|u[3][4]~q\ & \inst4|u[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_12~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst14|lcd_bus[1]~71_combout\,
	combout => \inst14|lcd_bus[1]~72_combout\);

-- Location: LCCOMB_X19_Y15_N6
\inst14|lcd_bus[1]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~79_combout\ = (\inst14|lcd_bus[1]~74_combout\) # ((\inst14|lcd_bus[1]~76_combout\) # ((\inst14|lcd_bus[1]~78_combout\) # (\inst14|lcd_bus[1]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[1]~74_combout\,
	datab => \inst14|lcd_bus[1]~76_combout\,
	datac => \inst14|lcd_bus[1]~78_combout\,
	datad => \inst14|lcd_bus[1]~72_combout\,
	combout => \inst14|lcd_bus[1]~79_combout\);

-- Location: LCCOMB_X19_Y15_N0
\inst14|lcd_bus[1]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~80_combout\ = (\inst14|lcd_bus[2]~8_combout\ & ((\inst14|lcd_bus[1]~70_combout\) # ((\inst14|lcd_bus[1]~68_combout\) # (\inst14|lcd_bus[1]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~8_combout\,
	datab => \inst14|lcd_bus[1]~70_combout\,
	datac => \inst14|lcd_bus[1]~68_combout\,
	datad => \inst14|lcd_bus[1]~79_combout\,
	combout => \inst14|lcd_bus[1]~80_combout\);

-- Location: FF_X19_Y15_N1
\inst14|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[1]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(1));

-- Location: LCCOMB_X11_Y18_N16
\inst15|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~18_combout\ = (\inst14|lcd_enable~q\ & (\inst15|PRONTO~q\ & \inst14|lcd_bus\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_enable~q\,
	datac => \inst15|PRONTO~q\,
	datad => \inst14|lcd_bus\(1),
	combout => \inst15|_~18_combout\);

-- Location: LCCOMB_X9_Y18_N18
\inst15|lcd_data[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[1]~9_combout\ = (\inst15|_~18_combout\) # ((\inst15|_~13_combout\) # ((\inst15|ENVIAR~q\ & \inst15|lcd_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~18_combout\,
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|lcd_data\(1),
	datad => \inst15|_~13_combout\,
	combout => \inst15|lcd_data[1]~9_combout\);

-- Location: FF_X9_Y18_N19
\inst15|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(1));

-- Location: LCCOMB_X23_Y12_N20
\inst14|conv_d[6]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[6]|binario8[0]~10_combout\ = (\inst4|d[6][1]~q\ & (((!\inst4|d[6][2]~q\ & !\inst4|d[6][3]~q\)) # (!\inst4|d[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|d[6][1]~q\,
	datac => \inst4|d[6][3]~q\,
	datad => \inst4|d[6][4]~q\,
	combout => \inst14|conv_d[6]|binario8[0]~10_combout\);

-- Location: LCCOMB_X23_Y15_N16
\inst14|conv_u[6]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[6]|binario8[0]~10_combout\ = (\inst4|u[6][1]~q\ & (((!\inst4|u[6][3]~q\ & !\inst4|u[6][2]~q\)) # (!\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|u[6][2]~q\,
	combout => \inst14|conv_u[6]|binario8[0]~10_combout\);

-- Location: LCCOMB_X23_Y15_N30
\inst14|lcd_bus[0]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~81_combout\ = (\inst14|char_29~q\ & ((\inst14|conv_u[6]|binario8[0]~10_combout\) # ((\inst14|conv_d[6]|binario8[0]~10_combout\ & \inst14|char_28~q\)))) # (!\inst14|char_29~q\ & (\inst14|conv_d[6]|binario8[0]~10_combout\ & 
-- (\inst14|char_28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_29~q\,
	datab => \inst14|conv_d[6]|binario8[0]~10_combout\,
	datac => \inst14|char_28~q\,
	datad => \inst14|conv_u[6]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~81_combout\);

-- Location: LCCOMB_X18_Y13_N8
\inst14|conv_u[5]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[5]|binario8[0]~10_combout\ = (\inst4|u[5][1]~q\ & (((!\inst4|u[5][3]~q\ & !\inst4|u[5][2]~q\)) # (!\inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|u[5][1]~q\,
	datad => \inst4|u[5][2]~q\,
	combout => \inst14|conv_u[5]|binario8[0]~10_combout\);

-- Location: LCCOMB_X22_Y11_N24
\inst14|conv_d[5]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[5]|binario8[0]~10_combout\ = (\inst4|d[5][1]~q\ & (((!\inst4|d[5][2]~q\ & !\inst4|d[5][3]~q\)) # (!\inst4|d[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|d[5][1]~q\,
	datad => \inst4|d[5][3]~q\,
	combout => \inst14|conv_d[5]|binario8[0]~10_combout\);

-- Location: LCCOMB_X18_Y13_N10
\inst14|lcd_bus[0]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~82_combout\ = (\inst14|char_25~q\ & ((\inst14|conv_d[5]|binario8[0]~10_combout\) # ((\inst14|char_26~q\ & \inst14|conv_u[5]|binario8[0]~10_combout\)))) # (!\inst14|char_25~q\ & (\inst14|char_26~q\ & 
-- (\inst14|conv_u[5]|binario8[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_25~q\,
	datab => \inst14|char_26~q\,
	datac => \inst14|conv_u[5]|binario8[0]~10_combout\,
	datad => \inst14|conv_d[5]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~82_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst14|conv_d[2]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[2]|binario8[0]~10_combout\ = (\inst4|d[2][1]~q\ & (((!\inst4|d[2][3]~q\ & !\inst4|d[2][2]~q\)) # (!\inst4|d[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|d[2][2]~q\,
	combout => \inst14|conv_d[2]|binario8[0]~10_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst14|conv_u[2]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[2]|binario8[0]~10_combout\ = (\inst4|u[2][1]~q\ & (((!\inst4|u[2][3]~q\ & !\inst4|u[2][2]~q\)) # (!\inst4|u[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst4|u[2][2]~q\,
	combout => \inst14|conv_u[2]|binario8[0]~10_combout\);

-- Location: LCCOMB_X19_Y14_N8
\inst14|lcd_bus[0]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~87_combout\ = (\inst14|char_09~q\ & ((\inst14|conv_u[2]|binario8[0]~10_combout\) # ((\inst14|char_08~q\ & \inst14|conv_d[2]|binario8[0]~10_combout\)))) # (!\inst14|char_09~q\ & (\inst14|char_08~q\ & 
-- (\inst14|conv_d[2]|binario8[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_09~q\,
	datab => \inst14|char_08~q\,
	datac => \inst14|conv_d[2]|binario8[0]~10_combout\,
	datad => \inst14|conv_u[2]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~87_combout\);

-- Location: LCCOMB_X18_Y14_N10
\inst14|conv_d[4]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[4]|binario8[0]~10_combout\ = (\inst4|d[4][1]~q\ & (((!\inst4|d[4][2]~q\ & !\inst4|d[4][3]~q\)) # (!\inst4|d[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~q\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|d[4][4]~q\,
	datad => \inst4|d[4][3]~q\,
	combout => \inst14|conv_d[4]|binario8[0]~10_combout\);

-- Location: LCCOMB_X18_Y14_N24
\inst14|conv_u[4]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[4]|binario8[0]~10_combout\ = (\inst4|u[4][1]~q\ & (((!\inst4|u[4][2]~q\ & !\inst4|u[4][3]~q\)) # (!\inst4|u[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|u[4][2]~q\,
	datad => \inst4|u[4][3]~q\,
	combout => \inst14|conv_u[4]|binario8[0]~10_combout\);

-- Location: LCCOMB_X18_Y14_N22
\inst14|lcd_bus[0]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~86_combout\ = (\inst14|conv_d[4]|binario8[0]~10_combout\ & ((\inst14|char_22~q\) # ((\inst14|char_23~q\ & \inst14|conv_u[4]|binario8[0]~10_combout\)))) # (!\inst14|conv_d[4]|binario8[0]~10_combout\ & (((\inst14|char_23~q\ & 
-- \inst14|conv_u[4]|binario8[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|conv_d[4]|binario8[0]~10_combout\,
	datab => \inst14|char_22~q\,
	datac => \inst14|char_23~q\,
	datad => \inst14|conv_u[4]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~86_combout\);

-- Location: LCCOMB_X19_Y14_N18
\inst14|lcd_bus[0]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~88_combout\ = (\inst4|_~38_combout\ & (!\inst4|_~67_combout\ & ((\inst14|lcd_bus[0]~86_combout\)))) # (!\inst4|_~38_combout\ & ((\inst14|lcd_bus[0]~87_combout\) # ((!\inst4|_~67_combout\ & \inst14|lcd_bus[0]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~38_combout\,
	datab => \inst4|_~67_combout\,
	datac => \inst14|lcd_bus[0]~87_combout\,
	datad => \inst14|lcd_bus[0]~86_combout\,
	combout => \inst14|lcd_bus[0]~88_combout\);

-- Location: LCCOMB_X21_Y17_N30
\inst14|conv_d[1]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[1]|binario8[0]~10_combout\ = (\inst4|d[1][1]~q\ & (((!\inst4|d[1][3]~q\ & !\inst4|d[1][2]~q\)) # (!\inst4|d[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|d[1][4]~q\,
	datac => \inst4|d[1][2]~q\,
	datad => \inst4|d[1][1]~q\,
	combout => \inst14|conv_d[1]|binario8[0]~10_combout\);

-- Location: LCCOMB_X19_Y15_N18
\inst14|conv_u[1]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[1]|binario8[0]~10_combout\ = (\inst4|u[1][1]~q\ & (((!\inst4|u[1][2]~q\ & !\inst4|u[1][3]~q\)) # (!\inst4|u[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|u[1][2]~q\,
	datac => \inst4|u[1][3]~q\,
	datad => \inst4|u[1][1]~q\,
	combout => \inst14|conv_u[1]|binario8[0]~10_combout\);

-- Location: LCCOMB_X19_Y15_N30
\inst14|lcd_bus[0]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~83_combout\ = (\inst14|char_05~q\ & ((\inst14|conv_d[1]|binario8[0]~10_combout\) # ((\inst14|char_06~q\ & \inst14|conv_u[1]|binario8[0]~10_combout\)))) # (!\inst14|char_05~q\ & (((\inst14|char_06~q\ & 
-- \inst14|conv_u[1]|binario8[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_05~q\,
	datab => \inst14|conv_d[1]|binario8[0]~10_combout\,
	datac => \inst14|char_06~q\,
	datad => \inst14|conv_u[1]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~83_combout\);

-- Location: LCCOMB_X23_Y16_N18
\inst14|conv_d[3]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[3]|binario8[0]~10_combout\ = (\inst4|d[3][1]~q\ & (((!\inst4|d[3][3]~q\ & !\inst4|d[3][2]~q\)) # (!\inst4|d[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][1]~q\,
	datac => \inst4|d[3][2]~q\,
	datad => \inst4|d[3][4]~q\,
	combout => \inst14|conv_d[3]|binario8[0]~10_combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst14|conv_u[3]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[3]|binario8[0]~10_combout\ = (\inst4|u[3][1]~q\ & (((!\inst4|u[3][3]~q\ & !\inst4|u[3][2]~q\)) # (!\inst4|u[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|u[3][2]~q\,
	combout => \inst14|conv_u[3]|binario8[0]~10_combout\);

-- Location: LCCOMB_X18_Y14_N8
\inst14|lcd_bus[0]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~84_combout\ = (\inst14|char_12~q\ & ((\inst14|conv_u[3]|binario8[0]~10_combout\) # ((\inst14|conv_d[3]|binario8[0]~10_combout\ & \inst14|char_11~q\)))) # (!\inst14|char_12~q\ & (\inst14|conv_d[3]|binario8[0]~10_combout\ & 
-- (\inst14|char_11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_12~q\,
	datab => \inst14|conv_d[3]|binario8[0]~10_combout\,
	datac => \inst14|char_11~q\,
	datad => \inst14|conv_u[3]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~84_combout\);

-- Location: LCCOMB_X19_Y14_N2
\inst14|lcd_bus[0]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~85_combout\ = (\inst14|lcd_bus[3]~13_combout\ & (((\inst4|_~47_combout\ & \inst4|_~48_combout\)) # (!\inst14|lcd_bus[0]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~47_combout\,
	datab => \inst14|lcd_bus[3]~13_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst14|lcd_bus[0]~84_combout\,
	combout => \inst14|lcd_bus[0]~85_combout\);

-- Location: LCCOMB_X19_Y14_N16
\inst14|lcd_bus[0]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~89_combout\ = (\inst14|lcd_bus[0]~88_combout\) # (((!\inst4|_~79_combout\ & \inst14|lcd_bus[0]~83_combout\)) # (!\inst14|lcd_bus[0]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~79_combout\,
	datab => \inst14|lcd_bus[0]~88_combout\,
	datac => \inst14|lcd_bus[0]~83_combout\,
	datad => \inst14|lcd_bus[0]~85_combout\,
	combout => \inst14|lcd_bus[0]~89_combout\);

-- Location: LCCOMB_X19_Y14_N10
\inst14|lcd_bus[0]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~90_combout\ = (\inst14|lcd_bus[0]~89_combout\) # ((\inst14|lcd_bus[0]~82_combout\ & ((!\inst4|_~70_combout\) # (!\inst4|_~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[0]~82_combout\,
	datab => \inst4|_~71_combout\,
	datac => \inst4|_~70_combout\,
	datad => \inst14|lcd_bus[0]~89_combout\,
	combout => \inst14|lcd_bus[0]~90_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst14|lcd_bus[0]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~91_combout\ = (\inst14|lcd_bus[2]~8_combout\ & ((\inst14|lcd_bus[0]~90_combout\) # ((!\inst4|_~60_combout\ & \inst14|lcd_bus[0]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~60_combout\,
	datab => \inst14|lcd_bus[0]~81_combout\,
	datac => \inst14|lcd_bus[2]~8_combout\,
	datad => \inst14|lcd_bus[0]~90_combout\,
	combout => \inst14|lcd_bus[0]~91_combout\);

-- Location: FF_X19_Y14_N1
\inst14|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[0]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(0));

-- Location: LCCOMB_X8_Y19_N28
\inst15|lcd_data[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[0]~10_combout\ = (\inst15|ENVIAR~q\ & ((\inst15|lcd_data\(0)) # ((\inst15|_~11_combout\ & \inst15|op_8~4_combout\)))) # (!\inst15|ENVIAR~q\ & (\inst15|_~11_combout\ & (\inst15|op_8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|_~11_combout\,
	datac => \inst15|op_8~4_combout\,
	datad => \inst15|lcd_data\(0),
	combout => \inst15|lcd_data[0]~10_combout\);

-- Location: LCCOMB_X8_Y19_N12
\inst15|lcd_data[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[0]~11_combout\ = (\inst15|lcd_data[0]~10_combout\) # ((\inst14|lcd_enable~q\ & (\inst14|lcd_bus\(0) & \inst15|PRONTO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_enable~q\,
	datab => \inst14|lcd_bus\(0),
	datac => \inst15|PRONTO~q\,
	datad => \inst15|lcd_data[0]~10_combout\,
	combout => \inst15|lcd_data[0]~11_combout\);

-- Location: FF_X8_Y19_N13
\inst15|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(0));

-- Location: LCCOMB_X24_Y15_N16
\inst4|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~7_combout\ = (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & \inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~7_combout\);

-- Location: LCCOMB_X19_Y16_N24
\inst4|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~8_combout\ = (\inst4|count|cnt\(3) & (!\inst4|count|cnt\(2) & \inst4|count|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(1),
	combout => \inst4|_~8_combout\);

-- Location: LCCOMB_X16_Y20_N24
\inst4|d_atual[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[1]~27_combout\ = (\inst4|_~7_combout\ & ((\inst4|d[5][1]~q\) # ((\inst4|_~8_combout\ & \inst4|d[6][1]~q\)))) # (!\inst4|_~7_combout\ & (\inst4|_~8_combout\ & (\inst4|d[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~7_combout\,
	datab => \inst4|_~8_combout\,
	datac => \inst4|d[6][1]~q\,
	datad => \inst4|d[5][1]~q\,
	combout => \inst4|d_atual[1]~27_combout\);

-- Location: LCCOMB_X24_Y15_N6
\inst4|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~5_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~5_combout\);

-- Location: LCCOMB_X24_Y15_N22
\inst4|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~6_combout\ = (\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~6_combout\);

-- Location: LCCOMB_X24_Y15_N30
\inst4|d_atual[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[1]~26_combout\ = (\inst4|_~5_combout\ & ((\inst4|d[3][1]~q\) # ((\inst4|d[4][1]~q\ & \inst4|_~6_combout\)))) # (!\inst4|_~5_combout\ & (\inst4|d[4][1]~q\ & ((\inst4|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|d[3][1]~q\,
	datad => \inst4|_~6_combout\,
	combout => \inst4|d_atual[1]~26_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst4|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~4_combout\ = (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~4_combout\);

-- Location: LCCOMB_X24_Y15_N12
\inst8|segmentos[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|segmentos[6]~9_combout\ = (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst8|segmentos[6]~9_combout\);

-- Location: LCCOMB_X19_Y14_N24
\inst4|d_atual[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[1]~25_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|_~4_combout\) # ((\inst8|segmentos[6]~9_combout\ & \inst4|d[1][1]~q\)))) # (!\inst4|d[2][1]~q\ & (((\inst8|segmentos[6]~9_combout\ & \inst4|d[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst4|_~4_combout\,
	datac => \inst8|segmentos[6]~9_combout\,
	datad => \inst4|d[1][1]~q\,
	combout => \inst4|d_atual[1]~25_combout\);

-- Location: LCCOMB_X16_Y20_N10
\inst4|d_atual[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual\(1) = (\inst4|d_atual[1]~27_combout\) # ((\inst4|d_atual[1]~26_combout\) # (\inst4|d_atual[1]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d_atual[1]~27_combout\,
	datac => \inst4|d_atual[1]~26_combout\,
	datad => \inst4|d_atual[1]~25_combout\,
	combout => \inst4|d_atual\(1));

-- Location: LCCOMB_X19_Y14_N6
\inst4|d_atual[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[3]~32_combout\ = (\inst8|segmentos[6]~9_combout\ & ((\inst4|d[1][3]~q\) # ((\inst4|_~4_combout\ & \inst4|d[2][3]~q\)))) # (!\inst8|segmentos[6]~9_combout\ & (\inst4|_~4_combout\ & (\inst4|d[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|segmentos[6]~9_combout\,
	datab => \inst4|_~4_combout\,
	datac => \inst4|d[2][3]~q\,
	datad => \inst4|d[1][3]~q\,
	combout => \inst4|d_atual[3]~32_combout\);

-- Location: LCCOMB_X19_Y16_N30
\inst4|d_atual[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[3]~34_combout\ = (\inst4|_~7_combout\ & ((\inst4|d[5][3]~q\) # ((\inst4|_~8_combout\ & \inst4|d[6][3]~q\)))) # (!\inst4|_~7_combout\ & (\inst4|_~8_combout\ & ((\inst4|d[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~7_combout\,
	datab => \inst4|_~8_combout\,
	datac => \inst4|d[5][3]~q\,
	datad => \inst4|d[6][3]~q\,
	combout => \inst4|d_atual[3]~34_combout\);

-- Location: LCCOMB_X19_Y16_N0
\inst4|d_atual[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[3]~33_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~6_combout\) # ((\inst4|_~5_combout\ & \inst4|d[3][3]~q\)))) # (!\inst4|d[4][3]~q\ & (\inst4|_~5_combout\ & (\inst4|d[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|d[3][3]~q\,
	datad => \inst4|_~6_combout\,
	combout => \inst4|d_atual[3]~33_combout\);

-- Location: LCCOMB_X19_Y16_N28
\inst4|d_atual[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual\(3) = (\inst4|d_atual[3]~32_combout\) # ((\inst4|d_atual[3]~34_combout\) # (\inst4|d_atual[3]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[3]~32_combout\,
	datac => \inst4|d_atual[3]~34_combout\,
	datad => \inst4|d_atual[3]~33_combout\,
	combout => \inst4|d_atual\(3));

-- Location: LCCOMB_X19_Y20_N28
\inst2|seg[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~32_combout\ = (!\inst3|cnt\(1) & (\inst3|cnt\(2) & ((!\inst4|d[1][4]~q\) # (!\inst8|segmentos[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|segmentos[6]~9_combout\,
	datab => \inst3|cnt\(1),
	datac => \inst4|d[1][4]~q\,
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[2]~32_combout\);

-- Location: LCCOMB_X24_Y15_N28
\inst2|seg[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~30_combout\ = (\inst4|_~5_combout\ & (!\inst4|d[3][4]~q\ & ((!\inst4|_~4_combout\) # (!\inst4|d[2][4]~q\)))) # (!\inst4|_~5_combout\ & (((!\inst4|_~4_combout\)) # (!\inst4|d[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|_~4_combout\,
	datad => \inst4|d[3][4]~q\,
	combout => \inst2|seg[2]~30_combout\);

-- Location: LCCOMB_X24_Y15_N14
\inst2|seg[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~31_combout\ = (\inst4|_~6_combout\ & (!\inst4|d[4][4]~q\ & ((!\inst4|d[5][4]~q\) # (!\inst4|_~7_combout\)))) # (!\inst4|_~6_combout\ & (((!\inst4|d[5][4]~q\)) # (!\inst4|_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~6_combout\,
	datab => \inst4|_~7_combout\,
	datac => \inst4|d[5][4]~q\,
	datad => \inst4|d[4][4]~q\,
	combout => \inst2|seg[2]~31_combout\);

-- Location: LCCOMB_X24_Y15_N18
\inst4|d_atual[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[4]~24_combout\ = (\inst4|count|cnt\(3) & (\inst4|d[6][4]~q\ & (!\inst4|count|cnt\(2) & \inst4|count|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(1),
	combout => \inst4|d_atual[4]~24_combout\);

-- Location: LCCOMB_X24_Y15_N20
\inst2|seg[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~33_combout\ = (\inst2|seg[2]~32_combout\ & (\inst2|seg[2]~30_combout\ & (\inst2|seg[2]~31_combout\ & !\inst4|d_atual[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[2]~32_combout\,
	datab => \inst2|seg[2]~30_combout\,
	datac => \inst2|seg[2]~31_combout\,
	datad => \inst4|d_atual[4]~24_combout\,
	combout => \inst2|seg[2]~33_combout\);

-- Location: LCCOMB_X24_Y13_N10
\inst4|d_atual[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~28_combout\ = (\inst4|d[3][2]~q\ & (!\inst4|_~5_combout\ & ((!\inst4|_~4_combout\) # (!\inst4|d[2][2]~q\)))) # (!\inst4|d[3][2]~q\ & (((!\inst4|_~4_combout\) # (!\inst4|d[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|d[2][2]~q\,
	datad => \inst4|_~4_combout\,
	combout => \inst4|d_atual[2]~28_combout\);

-- Location: LCCOMB_X19_Y16_N8
\inst4|d_atual[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~30_combout\ = (\inst8|segmentos[6]~9_combout\ & (!\inst4|d[1][2]~q\ & ((!\inst4|_~8_combout\) # (!\inst4|d[6][2]~q\)))) # (!\inst8|segmentos[6]~9_combout\ & (((!\inst4|_~8_combout\) # (!\inst4|d[6][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|segmentos[6]~9_combout\,
	datab => \inst4|d[1][2]~q\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst4|_~8_combout\,
	combout => \inst4|d_atual[2]~30_combout\);

-- Location: LCCOMB_X19_Y16_N6
\inst4|d_atual[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~29_combout\ = (\inst4|_~7_combout\ & (!\inst4|d[5][2]~q\ & ((!\inst4|_~6_combout\) # (!\inst4|d[4][2]~q\)))) # (!\inst4|_~7_combout\ & (((!\inst4|_~6_combout\) # (!\inst4|d[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~7_combout\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|d[4][2]~q\,
	datad => \inst4|_~6_combout\,
	combout => \inst4|d_atual[2]~29_combout\);

-- Location: LCCOMB_X19_Y16_N22
\inst4|d_atual[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~31_combout\ = (\inst4|d_atual[2]~28_combout\ & (\inst4|d_atual[2]~30_combout\ & \inst4|d_atual[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~28_combout\,
	datac => \inst4|d_atual[2]~30_combout\,
	datad => \inst4|d_atual[2]~29_combout\,
	combout => \inst4|d_atual[2]~31_combout\);

-- Location: LCCOMB_X16_Y20_N12
\inst2|seg[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~34_combout\ = (\inst2|seg[2]~33_combout\ & ((\inst4|d_atual\(3) & (\inst4|d_atual\(1) & !\inst4|d_atual[2]~31_combout\)) # (!\inst4|d_atual\(3) & ((\inst4|d_atual[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst4|d_atual\(3),
	datac => \inst2|seg[2]~33_combout\,
	datad => \inst4|d_atual[2]~31_combout\,
	combout => \inst2|seg[6]~34_combout\);

-- Location: LCCOMB_X17_Y20_N14
\inst2|seg[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~40_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) $ (!\inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datad => \inst4|count|cnt\(2),
	combout => \inst2|seg[6]~40_combout\);

-- Location: LCCOMB_X22_Y17_N10
\inst4|u_atual[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[2]~29_combout\ = (\inst4|_~7_combout\ & (!\inst4|u[5][2]~q\ & ((!\inst4|u[4][2]~q\) # (!\inst4|_~6_combout\)))) # (!\inst4|_~7_combout\ & (((!\inst4|u[4][2]~q\)) # (!\inst4|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~7_combout\,
	datab => \inst4|_~6_combout\,
	datac => \inst4|u[5][2]~q\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst4|u_atual[2]~29_combout\);

-- Location: LCCOMB_X19_Y16_N14
\inst4|u_atual[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[2]~30_combout\ = (\inst4|u[1][2]~q\ & (!\inst8|segmentos[6]~9_combout\ & ((!\inst4|u[6][2]~q\) # (!\inst4|_~8_combout\)))) # (!\inst4|u[1][2]~q\ & (((!\inst4|u[6][2]~q\)) # (!\inst4|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|_~8_combout\,
	datac => \inst4|u[6][2]~q\,
	datad => \inst8|segmentos[6]~9_combout\,
	combout => \inst4|u_atual[2]~30_combout\);

-- Location: LCCOMB_X19_Y16_N16
\inst4|u_atual[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[2]~28_combout\ = (\inst4|_~4_combout\ & (!\inst4|u[2][2]~q\ & ((!\inst4|u[3][2]~q\) # (!\inst4|_~5_combout\)))) # (!\inst4|_~4_combout\ & (((!\inst4|u[3][2]~q\)) # (!\inst4|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~4_combout\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|u[2][2]~q\,
	datad => \inst4|u[3][2]~q\,
	combout => \inst4|u_atual[2]~28_combout\);

-- Location: LCCOMB_X19_Y16_N20
\inst4|u_atual[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[2]~31_combout\ = (\inst4|u_atual[2]~29_combout\ & (\inst4|u_atual[2]~30_combout\ & \inst4|u_atual[2]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u_atual[2]~29_combout\,
	datac => \inst4|u_atual[2]~30_combout\,
	datad => \inst4|u_atual[2]~28_combout\,
	combout => \inst4|u_atual[2]~31_combout\);

-- Location: LCCOMB_X19_Y16_N4
\inst4|u_atual[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[3]~33_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|_~6_combout\) # ((\inst4|_~5_combout\ & \inst4|u[3][3]~q\)))) # (!\inst4|u[4][3]~q\ & (\inst4|_~5_combout\ & (\inst4|u[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~q\,
	datab => \inst4|_~5_combout\,
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|_~6_combout\,
	combout => \inst4|u_atual[3]~33_combout\);

-- Location: LCCOMB_X18_Y19_N16
\inst4|u_atual[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[3]~34_combout\ = (\inst4|_~8_combout\ & ((\inst4|u[6][3]~q\) # ((\inst4|_~7_combout\ & \inst4|u[5][3]~q\)))) # (!\inst4|_~8_combout\ & (\inst4|_~7_combout\ & (\inst4|u[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~8_combout\,
	datab => \inst4|_~7_combout\,
	datac => \inst4|u[5][3]~q\,
	datad => \inst4|u[6][3]~q\,
	combout => \inst4|u_atual[3]~34_combout\);

-- Location: LCCOMB_X19_Y16_N26
\inst4|u_atual[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[3]~32_combout\ = (\inst4|u[1][3]~q\ & ((\inst8|segmentos[6]~9_combout\) # ((\inst4|u[2][3]~q\ & \inst4|_~4_combout\)))) # (!\inst4|u[1][3]~q\ & (\inst4|u[2][3]~q\ & (\inst4|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst4|_~4_combout\,
	datad => \inst8|segmentos[6]~9_combout\,
	combout => \inst4|u_atual[3]~32_combout\);

-- Location: LCCOMB_X18_Y16_N16
\inst4|u_atual[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual\(3) = (\inst4|u_atual[3]~33_combout\) # ((\inst4|u_atual[3]~34_combout\) # (\inst4|u_atual[3]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[3]~33_combout\,
	datab => \inst4|u_atual[3]~34_combout\,
	datad => \inst4|u_atual[3]~32_combout\,
	combout => \inst4|u_atual\(3));

-- Location: LCCOMB_X24_Y15_N10
\inst2|seg[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~36_combout\ = (\inst4|u[4][4]~q\ & (!\inst4|_~6_combout\ & ((!\inst4|_~7_combout\) # (!\inst4|u[5][4]~q\)))) # (!\inst4|u[4][4]~q\ & (((!\inst4|_~7_combout\)) # (!\inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~6_combout\,
	datad => \inst4|_~7_combout\,
	combout => \inst2|seg[6]~36_combout\);

-- Location: LCCOMB_X24_Y15_N24
\inst2|seg[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~35_combout\ = (\inst4|u[2][4]~q\ & (!\inst4|_~4_combout\ & ((!\inst4|_~5_combout\) # (!\inst4|u[3][4]~q\)))) # (!\inst4|u[2][4]~q\ & (((!\inst4|_~5_combout\)) # (!\inst4|u[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|_~4_combout\,
	datad => \inst4|_~5_combout\,
	combout => \inst2|seg[6]~35_combout\);

-- Location: LCCOMB_X19_Y20_N22
\inst2|seg[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~37_combout\ = (\inst3|cnt\(1) & (\inst3|cnt\(2) & ((!\inst4|u[1][4]~q\) # (!\inst8|segmentos[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|segmentos[6]~9_combout\,
	datab => \inst3|cnt\(1),
	datac => \inst4|u[1][4]~q\,
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[6]~37_combout\);

-- Location: LCCOMB_X24_Y15_N0
\inst4|u_atual[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[4]~24_combout\ = (\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & \inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|u[6][4]~q\,
	combout => \inst4|u_atual[4]~24_combout\);

-- Location: LCCOMB_X24_Y15_N2
\inst2|seg[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~38_combout\ = (\inst2|seg[6]~36_combout\ & (\inst2|seg[6]~35_combout\ & (\inst2|seg[6]~37_combout\ & !\inst4|u_atual[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[6]~36_combout\,
	datab => \inst2|seg[6]~35_combout\,
	datac => \inst2|seg[6]~37_combout\,
	datad => \inst4|u_atual[4]~24_combout\,
	combout => \inst2|seg[6]~38_combout\);

-- Location: LCCOMB_X19_Y16_N12
\inst4|u_atual[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[1]~27_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~7_combout\) # ((\inst4|_~8_combout\ & \inst4|u[6][1]~q\)))) # (!\inst4|u[5][1]~q\ & (\inst4|_~8_combout\ & (\inst4|u[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~q\,
	datab => \inst4|_~8_combout\,
	datac => \inst4|u[6][1]~q\,
	datad => \inst4|_~7_combout\,
	combout => \inst4|u_atual[1]~27_combout\);

-- Location: LCCOMB_X22_Y16_N12
\inst4|u_atual[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[1]~26_combout\ = (\inst4|_~5_combout\ & ((\inst4|u[3][1]~q\) # ((\inst4|_~6_combout\ & \inst4|u[4][1]~q\)))) # (!\inst4|_~5_combout\ & (\inst4|_~6_combout\ & (\inst4|u[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~5_combout\,
	datab => \inst4|_~6_combout\,
	datac => \inst4|u[4][1]~q\,
	datad => \inst4|u[3][1]~q\,
	combout => \inst4|u_atual[1]~26_combout\);

-- Location: LCCOMB_X19_Y16_N10
\inst4|u_atual[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[1]~25_combout\ = (\inst4|_~4_combout\ & ((\inst4|u[2][1]~q\) # ((\inst4|u[1][1]~q\ & \inst8|segmentos[6]~9_combout\)))) # (!\inst4|_~4_combout\ & (((\inst4|u[1][1]~q\ & \inst8|segmentos[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~4_combout\,
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|u[1][1]~q\,
	datad => \inst8|segmentos[6]~9_combout\,
	combout => \inst4|u_atual[1]~25_combout\);

-- Location: LCCOMB_X19_Y16_N18
\inst4|u_atual[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual\(1) = (\inst4|u_atual[1]~27_combout\) # ((\inst4|u_atual[1]~26_combout\) # (\inst4|u_atual[1]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[1]~27_combout\,
	datab => \inst4|u_atual[1]~26_combout\,
	datad => \inst4|u_atual[1]~25_combout\,
	combout => \inst4|u_atual\(1));

-- Location: LCCOMB_X17_Y20_N16
\inst2|seg[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~39_combout\ = (\inst2|seg[6]~38_combout\ & ((\inst4|u_atual[2]~31_combout\ & (!\inst4|u_atual\(3))) # (!\inst4|u_atual[2]~31_combout\ & (\inst4|u_atual\(3) & \inst4|u_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[2]~31_combout\,
	datab => \inst4|u_atual\(3),
	datac => \inst2|seg[6]~38_combout\,
	datad => \inst4|u_atual\(1),
	combout => \inst2|seg[6]~39_combout\);

-- Location: LCCOMB_X17_Y20_N0
\inst2|seg[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~41_combout\ = (\inst2|seg[6]~34_combout\) # ((\inst2|seg[6]~39_combout\) # ((\inst2|seg[6]~40_combout\ & \inst2|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[6]~34_combout\,
	datab => \inst2|seg[6]~40_combout\,
	datac => \inst2|_~0_combout\,
	datad => \inst2|seg[6]~39_combout\,
	combout => \inst2|seg[6]~41_combout\);

-- Location: LCCOMB_X16_Y20_N14
\inst2|seg[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~44_combout\ = (\inst2|seg[2]~33_combout\ & ((\inst4|d_atual\(1) & ((!\inst4|d_atual[2]~31_combout\) # (!\inst4|d_atual\(3)))) # (!\inst4|d_atual\(1) & (!\inst4|d_atual\(3) & !\inst4|d_atual[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst4|d_atual\(3),
	datac => \inst2|seg[2]~33_combout\,
	datad => \inst4|d_atual[2]~31_combout\,
	combout => \inst2|seg[5]~44_combout\);

-- Location: LCCOMB_X17_Y20_N2
\inst2|seg[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~42_combout\ = (\inst2|seg[6]~38_combout\ & ((\inst4|u_atual[2]~31_combout\ & (!\inst4|u_atual\(3) & \inst4|u_atual\(1))) # (!\inst4|u_atual[2]~31_combout\ & ((\inst4|u_atual\(1)) # (!\inst4|u_atual\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[2]~31_combout\,
	datab => \inst4|u_atual\(3),
	datac => \inst2|seg[6]~38_combout\,
	datad => \inst4|u_atual\(1),
	combout => \inst2|seg[5]~42_combout\);

-- Location: LCCOMB_X17_Y20_N8
\inst2|seg[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~43_combout\ = (\inst2|_~0_combout\ & ((\inst4|count|cnt\(2) & (!\inst4|count|cnt\(1))) # (!\inst4|count|cnt\(2) & ((!\inst4|count|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst2|_~0_combout\,
	datad => \inst4|count|cnt\(2),
	combout => \inst2|seg[5]~43_combout\);

-- Location: LCCOMB_X17_Y20_N6
\inst2|seg[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~45_combout\ = (\inst2|seg[5]~44_combout\) # ((\inst2|seg[5]~42_combout\) # ((\inst2|seg[5]~43_combout\) # (\inst2|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[5]~44_combout\,
	datab => \inst2|seg[5]~42_combout\,
	datac => \inst2|seg[5]~43_combout\,
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg[5]~45_combout\);

-- Location: LCCOMB_X17_Y20_N4
\inst2|seg[4]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~47_combout\ = (\inst4|u_atual[2]~31_combout\ & (!\inst4|u_atual\(3) & (\inst4|u_atual\(1) & \inst2|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[2]~31_combout\,
	datab => \inst4|u_atual\(3),
	datac => \inst4|u_atual\(1),
	datad => \inst2|_~3_combout\,
	combout => \inst2|seg[4]~47_combout\);

-- Location: LCCOMB_X16_Y20_N16
\inst2|seg[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~46_combout\ = (\inst4|d_atual\(1) & (\inst4|d_atual[2]~31_combout\ & (\inst2|_~2_combout\ & !\inst4|d_atual\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst4|d_atual[2]~31_combout\,
	datac => \inst2|_~2_combout\,
	datad => \inst4|d_atual\(3),
	combout => \inst2|seg[4]~46_combout\);

-- Location: LCCOMB_X16_Y20_N22
\inst2|seg[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~48_combout\ = (\inst2|seg[2]~33_combout\ & ((\inst4|d_atual\(1)) # ((\inst4|d_atual\(3) & \inst4|d_atual[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst4|d_atual\(3),
	datac => \inst2|seg[2]~33_combout\,
	datad => \inst4|d_atual[2]~31_combout\,
	combout => \inst2|seg[4]~48_combout\);

-- Location: LCCOMB_X17_Y20_N10
\inst2|seg[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~49_combout\ = (\inst2|_~0_combout\ & (((!\inst4|count|cnt\(3) & \inst4|count|cnt\(2))) # (!\inst4|count|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst2|_~0_combout\,
	datad => \inst4|count|cnt\(2),
	combout => \inst2|seg[4]~49_combout\);

-- Location: LCCOMB_X17_Y20_N20
\inst2|seg[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~50_combout\ = (\inst4|u_atual\(1)) # ((\inst4|u_atual[2]~31_combout\ & \inst4|u_atual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[2]~31_combout\,
	datab => \inst4|u_atual\(3),
	datad => \inst4|u_atual\(1),
	combout => \inst2|seg[4]~50_combout\);

-- Location: LCCOMB_X17_Y20_N22
\inst2|seg[4]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~51_combout\ = (\inst2|seg[4]~49_combout\) # ((\inst2|_~1_combout\) # ((\inst2|seg[4]~50_combout\ & \inst2|seg[6]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~49_combout\,
	datab => \inst2|seg[4]~50_combout\,
	datac => \inst2|seg[6]~38_combout\,
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg[4]~51_combout\);

-- Location: LCCOMB_X16_Y20_N8
\inst2|seg[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~52_combout\ = (\inst2|seg[4]~47_combout\) # ((\inst2|seg[4]~46_combout\) # ((\inst2|seg[4]~48_combout\) # (\inst2|seg[4]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~47_combout\,
	datab => \inst2|seg[4]~46_combout\,
	datac => \inst2|seg[4]~48_combout\,
	datad => \inst2|seg[4]~51_combout\,
	combout => \inst2|seg[4]~52_combout\);

-- Location: LCCOMB_X17_Y20_N18
\inst2|seg[3]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~55_combout\ = (\inst2|seg[6]~38_combout\ & ((\inst4|u_atual[2]~31_combout\ & (\inst4|u_atual\(3) $ (\inst4|u_atual\(1)))) # (!\inst4|u_atual[2]~31_combout\ & (\inst4|u_atual\(3) & \inst4|u_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[2]~31_combout\,
	datab => \inst4|u_atual\(3),
	datac => \inst2|seg[6]~38_combout\,
	datad => \inst4|u_atual\(1),
	combout => \inst2|seg[3]~55_combout\);

-- Location: LCCOMB_X17_Y20_N28
\inst2|seg[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~54_combout\ = (\inst2|_~0_combout\ & ((\inst4|count|cnt\(1) & (!\inst4|count|cnt\(3) & \inst4|count|cnt\(2))) # (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) $ (!\inst4|count|cnt\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst2|_~0_combout\,
	datad => \inst4|count|cnt\(2),
	combout => \inst2|seg[3]~54_combout\);

-- Location: LCCOMB_X16_Y20_N30
\inst2|seg[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~53_combout\ = (\inst2|seg[2]~33_combout\ & ((\inst4|d_atual\(1) & (\inst4|d_atual\(3) $ (\inst4|d_atual[2]~31_combout\))) # (!\inst4|d_atual\(1) & (\inst4|d_atual\(3) & \inst4|d_atual[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst4|d_atual\(3),
	datac => \inst2|seg[2]~33_combout\,
	datad => \inst4|d_atual[2]~31_combout\,
	combout => \inst2|seg[3]~53_combout\);

-- Location: LCCOMB_X16_Y20_N0
\inst2|seg[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~56_combout\ = (\inst2|seg[3]~55_combout\) # ((\inst2|seg[3]~54_combout\) # ((\inst2|seg[3]~53_combout\) # (\inst2|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[3]~55_combout\,
	datab => \inst2|seg[3]~54_combout\,
	datac => \inst2|seg[3]~53_combout\,
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg[3]~56_combout\);

-- Location: LCCOMB_X17_Y20_N12
\inst2|seg[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~58_combout\ = (!\inst4|u_atual[2]~31_combout\ & (!\inst4|u_atual\(3) & (\inst2|seg[6]~38_combout\ & !\inst4|u_atual\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[2]~31_combout\,
	datab => \inst4|u_atual\(3),
	datac => \inst2|seg[6]~38_combout\,
	datad => \inst4|u_atual\(1),
	combout => \inst2|seg[2]~58_combout\);

-- Location: LCCOMB_X16_Y20_N6
\inst2|seg[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~57_combout\ = (!\inst4|d_atual\(1) & (!\inst4|d_atual\(3) & (\inst2|seg[2]~33_combout\ & !\inst4|d_atual[2]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst4|d_atual\(3),
	datac => \inst2|seg[2]~33_combout\,
	datad => \inst4|d_atual[2]~31_combout\,
	combout => \inst2|seg[2]~57_combout\);

-- Location: LCCOMB_X19_Y20_N18
\inst2|seg[2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~67_combout\ = (!\inst3|cnt\(2) & ((\inst3|cnt\(1)) # (\inst4|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(1),
	datac => \inst4|_~4_combout\,
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[2]~67_combout\);

-- Location: LCCOMB_X18_Y20_N4
\inst2|seg[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg\(2) = (\inst2|seg[2]~58_combout\) # ((\inst2|seg[2]~57_combout\) # (\inst2|seg[2]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[2]~58_combout\,
	datac => \inst2|seg[2]~57_combout\,
	datad => \inst2|seg[2]~67_combout\,
	combout => \inst2|seg\(2));

-- Location: LCCOMB_X17_Y20_N30
\inst2|seg[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~60_combout\ = (\inst4|u_atual\(3) & (\inst2|seg[6]~38_combout\ & (\inst4|u_atual[2]~31_combout\ $ (!\inst4|u_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[2]~31_combout\,
	datab => \inst4|u_atual\(3),
	datac => \inst2|seg[6]~38_combout\,
	datad => \inst4|u_atual\(1),
	combout => \inst2|seg[1]~60_combout\);

-- Location: LCCOMB_X16_Y20_N2
\inst2|seg[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~61_combout\ = (\inst4|d_atual\(3) & (\inst2|seg[2]~33_combout\ & (\inst4|d_atual\(1) $ (!\inst4|d_atual[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst4|d_atual\(3),
	datac => \inst2|seg[2]~33_combout\,
	datad => \inst4|d_atual[2]~31_combout\,
	combout => \inst2|seg[1]~61_combout\);

-- Location: LCCOMB_X16_Y20_N20
\inst2|seg[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~59_combout\ = (\inst2|_~1_combout\) # ((\inst2|_~0_combout\ & ((\inst4|_~7_combout\) # (\inst4|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~7_combout\,
	datab => \inst4|_~8_combout\,
	datac => \inst2|_~0_combout\,
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg[1]~59_combout\);

-- Location: LCCOMB_X16_Y20_N4
\inst2|seg[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~62_combout\ = (\inst2|seg[1]~60_combout\) # ((\inst2|seg[1]~61_combout\) # (\inst2|seg[1]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[1]~60_combout\,
	datab => \inst2|seg[1]~61_combout\,
	datad => \inst2|seg[1]~59_combout\,
	combout => \inst2|seg[1]~62_combout\);

-- Location: LCCOMB_X17_Y20_N24
\inst2|seg[0]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~65_combout\ = (\inst4|u_atual[2]~31_combout\ & (\inst2|seg[6]~38_combout\ & (\inst4|u_atual\(3) $ (\inst4|u_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[2]~31_combout\,
	datab => \inst4|u_atual\(3),
	datac => \inst2|seg[6]~38_combout\,
	datad => \inst4|u_atual\(1),
	combout => \inst2|seg[0]~65_combout\);

-- Location: LCCOMB_X16_Y20_N26
\inst2|seg[0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~64_combout\ = (\inst2|seg[2]~33_combout\ & (\inst4|d_atual[2]~31_combout\ & (\inst4|d_atual\(1) $ (\inst4|d_atual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst4|d_atual\(3),
	datac => \inst2|seg[2]~33_combout\,
	datad => \inst4|d_atual[2]~31_combout\,
	combout => \inst2|seg[0]~64_combout\);

-- Location: LCCOMB_X19_Y20_N16
\inst2|seg[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~63_combout\ = (\inst2|_~1_combout\) # ((\inst2|_~0_combout\ & ((\inst8|segmentos[6]~9_combout\) # (\inst4|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|segmentos[6]~9_combout\,
	datab => \inst2|_~0_combout\,
	datac => \inst4|_~6_combout\,
	datad => \inst2|_~1_combout\,
	combout => \inst2|seg[0]~63_combout\);

-- Location: LCCOMB_X16_Y20_N28
\inst2|seg[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~66_combout\ = (\inst2|seg[0]~65_combout\) # ((\inst2|seg[0]~64_combout\) # (\inst2|seg[0]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seg[0]~65_combout\,
	datac => \inst2|seg[0]~64_combout\,
	datad => \inst2|seg[0]~63_combout\,
	combout => \inst2|seg[0]~66_combout\);

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_dig(4) <= \dig[4]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_lcd_d(7) <= \lcd_d[7]~output_o\;

ww_lcd_d(6) <= \lcd_d[6]~output_o\;

ww_lcd_d(5) <= \lcd_d[5]~output_o\;

ww_lcd_d(4) <= \lcd_d[4]~output_o\;

ww_lcd_d(3) <= \lcd_d[3]~output_o\;

ww_lcd_d(2) <= \lcd_d[2]~output_o\;

ww_lcd_d(1) <= \lcd_d[1]~output_o\;

ww_lcd_d(0) <= \lcd_d[0]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;
END structure;


