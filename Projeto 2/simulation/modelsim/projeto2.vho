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

-- DATE "08/06/2023 17:06:31"

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
	buzzer : OUT std_logic;
	dig : OUT std_logic_vector(4 DOWNTO 1);
	lcd_d : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(1 TO 3);
	seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END projeto2;

-- Design Ports Information
-- lcd_rw	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buzzer	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- led[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_dig : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_lcd_d : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(1 TO 3);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|debounc1|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|_~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|control|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|deb|divisor|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \buzzer~output_o\ : std_logic;
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
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst15|clk_count[11]~40\ : std_logic;
SIGNAL \inst15|clk_count[12]~41_combout\ : std_logic;
SIGNAL \inst15|op_5~5_combout\ : std_logic;
SIGNAL \inst15|op_4~4_combout\ : std_logic;
SIGNAL \inst15|op_4~1_combout\ : std_logic;
SIGNAL \inst15|op_9~2_combout\ : std_logic;
SIGNAL \inst15|op_12~0_combout\ : std_logic;
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
SIGNAL \inst15|op_10~0_combout\ : std_logic;
SIGNAL \inst15|_~0_combout\ : std_logic;
SIGNAL \inst15|_~4_combout\ : std_logic;
SIGNAL \inst15|op_12~1_combout\ : std_logic;
SIGNAL \inst15|op_1~3_combout\ : std_logic;
SIGNAL \inst15|op_10~1_combout\ : std_logic;
SIGNAL \inst15|op_11~3_combout\ : std_logic;
SIGNAL \inst15|op_6~3_combout\ : std_logic;
SIGNAL \inst15|op_1~2_combout\ : std_logic;
SIGNAL \inst15|op_11~0_combout\ : std_logic;
SIGNAL \inst15|op_11~1_combout\ : std_logic;
SIGNAL \inst15|op_11~2_combout\ : std_logic;
SIGNAL \inst15|op_11~4_combout\ : std_logic;
SIGNAL \inst15|_~1_combout\ : std_logic;
SIGNAL \inst15|op_8~0_combout\ : std_logic;
SIGNAL \inst15|op_8~1_combout\ : std_logic;
SIGNAL \inst15|op_8~2_combout\ : std_logic;
SIGNAL \inst15|op_9~0_combout\ : std_logic;
SIGNAL \inst15|op_10~3_combout\ : std_logic;
SIGNAL \inst15|op_4~5_combout\ : std_logic;
SIGNAL \inst15|op_9~1_combout\ : std_logic;
SIGNAL \inst15|_~12_combout\ : std_logic;
SIGNAL \inst15|op_9~3_combout\ : std_logic;
SIGNAL \inst15|op_4~0_combout\ : std_logic;
SIGNAL \inst15|op_5~1_combout\ : std_logic;
SIGNAL \inst15|op_5~0_combout\ : std_logic;
SIGNAL \inst15|op_10~2_combout\ : std_logic;
SIGNAL \inst15|op_10~4_combout\ : std_logic;
SIGNAL \inst15|op_10~5_combout\ : std_logic;
SIGNAL \inst15|op_6~0_combout\ : std_logic;
SIGNAL \inst15|op_6~2_combout\ : std_logic;
SIGNAL \inst15|op_6~1_combout\ : std_logic;
SIGNAL \inst15|op_6~4_combout\ : std_logic;
SIGNAL \inst15|op_7~2_combout\ : std_logic;
SIGNAL \inst15|op_7~0_combout\ : std_logic;
SIGNAL \inst15|op_7~1_combout\ : std_logic;
SIGNAL \inst15|op_7~3_combout\ : std_logic;
SIGNAL \inst15|op_5~3_combout\ : std_logic;
SIGNAL \inst15|op_5~2_combout\ : std_logic;
SIGNAL \inst15|op_5~4_combout\ : std_logic;
SIGNAL \inst15|_~10_combout\ : std_logic;
SIGNAL \inst15|_~13_combout\ : std_logic;
SIGNAL \inst15|e~0_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~1_combout\ : std_logic;
SIGNAL \inst15|op_4~2_combout\ : std_logic;
SIGNAL \inst15|op_4~3_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~2_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~3_combout\ : std_logic;
SIGNAL \inst15|op_1~4_combout\ : std_logic;
SIGNAL \inst15|_~16_combout\ : std_logic;
SIGNAL \inst15|op_1~5_combout\ : std_logic;
SIGNAL \inst15|op_1~8_combout\ : std_logic;
SIGNAL \inst15|op_1~6_combout\ : std_logic;
SIGNAL \inst15|op_1~7_combout\ : std_logic;
SIGNAL \inst15|ENERGIZACAO~0_combout\ : std_logic;
SIGNAL \inst15|ENERGIZACAO~q\ : std_logic;
SIGNAL \inst15|_~20_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~0_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~4_combout\ : std_logic;
SIGNAL \inst15|op_11~5_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~5_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~q\ : std_logic;
SIGNAL \inst15|_~9_combout\ : std_logic;
SIGNAL \inst15|_~11_combout\ : std_logic;
SIGNAL \inst15|_~21_combout\ : std_logic;
SIGNAL \inst15|PRONTO~3_combout\ : std_logic;
SIGNAL \inst15|busy~q\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_enable~feeder_combout\ : std_logic;
SIGNAL \inst14|lcd_enable~q\ : std_logic;
SIGNAL \inst15|PRONTO~2_combout\ : std_logic;
SIGNAL \inst15|PRONTO~4_combout\ : std_logic;
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
SIGNAL \inst15|clk_count[9]~36\ : std_logic;
SIGNAL \inst15|clk_count[10]~37_combout\ : std_logic;
SIGNAL \inst15|clk_count[10]~38\ : std_logic;
SIGNAL \inst15|clk_count[11]~39_combout\ : std_logic;
SIGNAL \inst15|_~3_combout\ : std_logic;
SIGNAL \inst15|_~5_combout\ : std_logic;
SIGNAL \inst15|_~6_combout\ : std_logic;
SIGNAL \inst15|_~7_combout\ : std_logic;
SIGNAL \inst15|_~8_combout\ : std_logic;
SIGNAL \inst15|_~2_combout\ : std_logic;
SIGNAL \inst15|e~1_combout\ : std_logic;
SIGNAL \inst15|e~q\ : std_logic;
SIGNAL \inst15|_~14_combout\ : std_logic;
SIGNAL \inst14|char_06~q\ : std_logic;
SIGNAL \inst14|char_07~q\ : std_logic;
SIGNAL \inst14|char_08~q\ : std_logic;
SIGNAL \inst14|char_09~q\ : std_logic;
SIGNAL \inst14|char_10~feeder_combout\ : std_logic;
SIGNAL \inst14|char_10~q\ : std_logic;
SIGNAL \inst14|char_11~q\ : std_logic;
SIGNAL \inst14|char_12~q\ : std_logic;
SIGNAL \inst14|char_13~q\ : std_logic;
SIGNAL \inst14|char_14~feeder_combout\ : std_logic;
SIGNAL \inst14|char_14~q\ : std_logic;
SIGNAL \inst14|char_15~feeder_combout\ : std_logic;
SIGNAL \inst14|char_15~q\ : std_logic;
SIGNAL \inst14|char_16~q\ : std_logic;
SIGNAL \inst14|char_17~feeder_combout\ : std_logic;
SIGNAL \inst14|char_17~q\ : std_logic;
SIGNAL \inst14|char_18~feeder_combout\ : std_logic;
SIGNAL \inst14|char_18~q\ : std_logic;
SIGNAL \inst14|char_19~feeder_combout\ : std_logic;
SIGNAL \inst14|char_19~q\ : std_logic;
SIGNAL \inst14|char_20~q\ : std_logic;
SIGNAL \inst14|char_21~q\ : std_logic;
SIGNAL \inst14|char_22~q\ : std_logic;
SIGNAL \inst14|char_23~feeder_combout\ : std_logic;
SIGNAL \inst14|char_23~q\ : std_logic;
SIGNAL \inst14|char_24~q\ : std_logic;
SIGNAL \inst14|char_25~feeder_combout\ : std_logic;
SIGNAL \inst14|char_25~q\ : std_logic;
SIGNAL \inst14|char_26~q\ : std_logic;
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
SIGNAL \inst14|char_04~q\ : std_logic;
SIGNAL \inst14|char_05~q\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~11_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~19_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~18_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~14_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~16_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~15_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~17_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~20_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~13_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~12_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~21_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~93_combout\ : std_logic;
SIGNAL \inst15|rs~0_combout\ : std_logic;
SIGNAL \inst15|rs~q\ : std_logic;
SIGNAL \inst4|divisor|_~0_combout\ : std_logic;
SIGNAL \inst4|divisor|count[2]~33_combout\ : std_logic;
SIGNAL \inst4|divisor|count[2]~34\ : std_logic;
SIGNAL \inst4|divisor|count[3]~35_combout\ : std_logic;
SIGNAL \inst4|divisor|count[3]~36\ : std_logic;
SIGNAL \inst4|divisor|count[4]~37_combout\ : std_logic;
SIGNAL \inst4|divisor|count[4]~38\ : std_logic;
SIGNAL \inst4|divisor|count[5]~39_combout\ : std_logic;
SIGNAL \inst4|divisor|count[5]~40\ : std_logic;
SIGNAL \inst4|divisor|count[6]~41_combout\ : std_logic;
SIGNAL \inst4|divisor|count[6]~42\ : std_logic;
SIGNAL \inst4|divisor|count[7]~43_combout\ : std_logic;
SIGNAL \inst4|divisor|count[7]~44\ : std_logic;
SIGNAL \inst4|divisor|count[8]~45_combout\ : std_logic;
SIGNAL \inst4|divisor|count[8]~46\ : std_logic;
SIGNAL \inst4|divisor|count[9]~47_combout\ : std_logic;
SIGNAL \inst4|divisor|count[9]~48\ : std_logic;
SIGNAL \inst4|divisor|count[10]~49_combout\ : std_logic;
SIGNAL \inst4|divisor|count[10]~50\ : std_logic;
SIGNAL \inst4|divisor|count[11]~51_combout\ : std_logic;
SIGNAL \inst4|divisor|count[11]~52\ : std_logic;
SIGNAL \inst4|divisor|count[12]~53_combout\ : std_logic;
SIGNAL \inst4|divisor|count[12]~54\ : std_logic;
SIGNAL \inst4|divisor|count[13]~55_combout\ : std_logic;
SIGNAL \inst4|divisor|count[13]~56\ : std_logic;
SIGNAL \inst4|divisor|count[14]~57_combout\ : std_logic;
SIGNAL \inst4|divisor|count[14]~58\ : std_logic;
SIGNAL \inst4|divisor|count[15]~59_combout\ : std_logic;
SIGNAL \inst4|divisor|count[15]~60\ : std_logic;
SIGNAL \inst4|divisor|count[16]~61_combout\ : std_logic;
SIGNAL \inst4|divisor|count[16]~62\ : std_logic;
SIGNAL \inst4|divisor|count[17]~63_combout\ : std_logic;
SIGNAL \inst4|divisor|count[17]~64\ : std_logic;
SIGNAL \inst4|divisor|count[18]~65_combout\ : std_logic;
SIGNAL \inst4|divisor|count[18]~66\ : std_logic;
SIGNAL \inst4|divisor|count[19]~67_combout\ : std_logic;
SIGNAL \inst4|divisor|count[19]~68\ : std_logic;
SIGNAL \inst4|divisor|count[20]~69_combout\ : std_logic;
SIGNAL \inst4|divisor|count[20]~70\ : std_logic;
SIGNAL \inst4|divisor|count[21]~71_combout\ : std_logic;
SIGNAL \inst4|divisor|count[21]~72\ : std_logic;
SIGNAL \inst4|divisor|count[22]~73_combout\ : std_logic;
SIGNAL \inst4|divisor|count[22]~74\ : std_logic;
SIGNAL \inst4|divisor|count[23]~75_combout\ : std_logic;
SIGNAL \inst4|divisor|count[23]~76\ : std_logic;
SIGNAL \inst4|divisor|count[24]~77_combout\ : std_logic;
SIGNAL \inst4|divisor|count[24]~78\ : std_logic;
SIGNAL \inst4|divisor|count[25]~79_combout\ : std_logic;
SIGNAL \inst4|divisor|count[25]~80\ : std_logic;
SIGNAL \inst4|divisor|count[26]~81_combout\ : std_logic;
SIGNAL \inst4|divisor|count[26]~82\ : std_logic;
SIGNAL \inst4|divisor|count[27]~83_combout\ : std_logic;
SIGNAL \inst4|divisor|count[27]~84\ : std_logic;
SIGNAL \inst4|divisor|count[28]~85_combout\ : std_logic;
SIGNAL \inst4|divisor|count[28]~86\ : std_logic;
SIGNAL \inst4|divisor|count[29]~87_combout\ : std_logic;
SIGNAL \inst4|divisor|count[29]~88\ : std_logic;
SIGNAL \inst4|divisor|count[30]~89_combout\ : std_logic;
SIGNAL \inst4|divisor|count[30]~90\ : std_logic;
SIGNAL \inst4|divisor|count[31]~91_combout\ : std_logic;
SIGNAL \inst4|divisor|count[31]~92\ : std_logic;
SIGNAL \inst4|divisor|count[32]~93_combout\ : std_logic;
SIGNAL \inst4|divisor|count[32]~94\ : std_logic;
SIGNAL \inst4|divisor|count[33]~95_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~7_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~8_combout\ : std_logic;
SIGNAL \inst4|divisor|count[33]~96\ : std_logic;
SIGNAL \inst4|divisor|count[34]~97_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~4_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~5_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~6_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~9_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~q\ : std_logic;
SIGNAL \inst4|count|_~0_combout\ : std_logic;
SIGNAL \inst4|count|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst4|count|_~1_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[15]~42\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[16]~43_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~2_combout\ : std_logic;
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
SIGNAL \inst4|deb|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~q\ : std_logic;
SIGNAL \inst4|deb|ff[2]~0_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~q\ : std_logic;
SIGNAL \inst1|debounc1|ff[2]~0_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~clkctrl_outclk\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst1|debounc1|ff[0]~1_combout\ : std_logic;
SIGNAL \inst1|debounc1|ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|debounc1|ff[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|deb|ff[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|deb|ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|temp~0_combout\ : std_logic;
SIGNAL \inst4|temp~2_combout\ : std_logic;
SIGNAL \inst4|temp~q\ : std_logic;
SIGNAL \inst4|sort_realizado~2_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~7_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~78_combout\ : std_logic;
SIGNAL \inst2|convd1|segmentos[6]~9_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~0_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~5_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~1_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~feeder_combout\ : std_logic;
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
SIGNAL \inst4|div_sorteio|alt~q\ : std_logic;
SIGNAL \inst4|sorteio|unidade[2]~3_combout\ : std_logic;
SIGNAL \inst4|sorteio|unidade[1]~2_combout\ : std_logic;
SIGNAL \inst4|sorteio|unidade[3]~1_combout\ : std_logic;
SIGNAL \inst4|sorteio|unidade[4]~0_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~32_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~31_combout\ : std_logic;
SIGNAL \inst4|sorteio|op_3~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[1]~2_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[2]~3_combout\ : std_logic;
SIGNAL \inst4|sorteio|_~1_combout\ : std_logic;
SIGNAL \inst4|sorteio|_~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|_~2_combout\ : std_logic;
SIGNAL \inst4|sorteio|op_5~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[3]~1_combout\ : std_logic;
SIGNAL \inst4|sorteio|dezena[4]~0_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~1_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~30_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~105_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~103_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~97_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~98_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~100_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~12_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~11_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~13_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~99_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~101_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~102_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~q\ : std_logic;
SIGNAL \inst4|sort_realizado~8_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~88_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~98_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~99_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~100_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~q\ : std_logic;
SIGNAL \inst4|u[3][3]~95_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~96_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~97_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~q\ : std_logic;
SIGNAL \inst4|_~17_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~113_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~115_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~114_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~116_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~117_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~q\ : std_logic;
SIGNAL \inst4|u[3][4]~104_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~101_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~102_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~103_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~105_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~q\ : std_logic;
SIGNAL \inst4|d[3][4]~111_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~108_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~110_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~109_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~112_combout\ : std_logic;
SIGNAL \inst4|d[3][4]~q\ : std_logic;
SIGNAL \inst4|u[3][1]~106_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~107_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~108_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~109_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~110_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~q\ : std_logic;
SIGNAL \inst4|_~18_combout\ : std_logic;
SIGNAL \inst4|_~19_combout\ : std_logic;
SIGNAL \inst4|_~63_combout\ : std_logic;
SIGNAL \inst4|_~64_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~104_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~106_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~107_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~q\ : std_logic;
SIGNAL \inst4|_~41_combout\ : std_logic;
SIGNAL \inst4|_~42_combout\ : std_logic;
SIGNAL \inst4|_~40_combout\ : std_logic;
SIGNAL \inst4|_~43_combout\ : std_logic;
SIGNAL \inst4|_~44_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~68_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~69_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~70_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~71_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~q\ : std_logic;
SIGNAL \inst4|d[1][2]~73_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~72_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~74_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~75_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~76_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~q\ : std_logic;
SIGNAL \inst4|u[1][2]~62_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~63_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~64_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~61_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~65_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~q\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~8_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~64_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~66_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~63_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~65_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~67_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~q\ : std_logic;
SIGNAL \inst4|u[1][1]~72_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~73_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~74_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~71_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~75_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~q\ : std_logic;
SIGNAL \inst4|d[1][4]~59_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~60_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~61_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~58_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~62_combout\ : std_logic;
SIGNAL \inst4|d[1][4]~q\ : std_logic;
SIGNAL \inst4|u[1][4]~66_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~68_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~67_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~69_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~70_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~q\ : std_logic;
SIGNAL \inst4|_~13_combout\ : std_logic;
SIGNAL \inst4|_~14_combout\ : std_logic;
SIGNAL \inst4|_~61_combout\ : std_logic;
SIGNAL \inst4|_~62_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~29_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~33_combout\ : std_logic;
SIGNAL \inst4|d[4][4]~q\ : std_logic;
SIGNAL \inst4|u[4][4]~32_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~33_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~31_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~30_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~34_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~q\ : std_logic;
SIGNAL \inst4|u[4][1]~38_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~35_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~36_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~37_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~39_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~q\ : std_logic;
SIGNAL \inst4|_~8_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~19_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~20_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~21_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~22_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~23_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~q\ : std_logic;
SIGNAL \inst4|d[4][3]~19_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~20_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~21_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~22_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~23_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~q\ : std_logic;
SIGNAL \inst4|d[4][2]~25_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~27_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~24_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~26_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~28_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~q\ : std_logic;
SIGNAL \inst4|u[4][2]~28_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~24_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~27_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~25_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~26_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~29_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~q\ : std_logic;
SIGNAL \inst4|_~7_combout\ : std_logic;
SIGNAL \inst4|_~9_combout\ : std_logic;
SIGNAL \inst4|_~51_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~41_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~42_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~40_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~39_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~43_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~q\ : std_logic;
SIGNAL \inst4|_~30_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~44_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~45_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~46_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~47_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~48_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~q\ : std_logic;
SIGNAL \inst4|d[6][1]~53_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~54_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~55_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~56_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~57_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~q\ : std_logic;
SIGNAL \inst4|_~31_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~50_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~49_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~47_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~51_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~q\ : std_logic;
SIGNAL \inst4|u[6][3]~40_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~41_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~42_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~44_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~q\ : std_logic;
SIGNAL \inst4|_~32_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~54_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~52_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~53_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~55_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~56_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~q\ : std_logic;
SIGNAL \inst4|u[6][2]~46_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~45_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~48_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~q\ : std_logic;
SIGNAL \inst4|_~33_combout\ : std_logic;
SIGNAL \inst4|_~34_combout\ : std_logic;
SIGNAL \inst4|_~60_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~10_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~58_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~57_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~59_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~60_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~q\ : std_logic;
SIGNAL \inst4|_~37_combout\ : std_logic;
SIGNAL \inst4|_~36_combout\ : std_logic;
SIGNAL \inst4|_~38_combout\ : std_logic;
SIGNAL \inst4|_~35_combout\ : std_logic;
SIGNAL \inst4|_~39_combout\ : std_logic;
SIGNAL \inst4|_~45_combout\ : std_logic;
SIGNAL \inst4|_~75_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~78_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~80_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~79_combout\ : std_logic;
SIGNAL \inst4|_~65_combout\ : std_logic;
SIGNAL \inst4|_~66_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~77_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~81_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~q\ : std_logic;
SIGNAL \inst4|_~68_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~87_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~88_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~89_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~90_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~91_combout\ : std_logic;
SIGNAL \inst4|d[2][4]~q\ : std_logic;
SIGNAL \inst4|_~46_combout\ : std_logic;
SIGNAL \inst4|_~72_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~86_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~87_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~89_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~q\ : std_logic;
SIGNAL \inst4|_~48_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~83_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~84_combout\ : std_logic;
SIGNAL \inst4|_~71_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~81_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~82_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~85_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~q\ : std_logic;
SIGNAL \inst4|_~73_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~90_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~92_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~93_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~91_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~94_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~q\ : std_logic;
SIGNAL \inst4|_~49_combout\ : std_logic;
SIGNAL \inst4|_~67_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~82_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~84_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~85_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~83_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~86_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~q\ : std_logic;
SIGNAL \inst4|d[2][1]~94_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~95_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~93_combout\ : std_logic;
SIGNAL \inst4|_~69_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~92_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~96_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~q\ : std_logic;
SIGNAL \inst4|_~47_combout\ : std_logic;
SIGNAL \inst4|_~50_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~3_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~43_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~49_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~50_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~51_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~52_combout\ : std_logic;
SIGNAL \inst4|d[6][4]~q\ : std_logic;
SIGNAL \inst4|_~11_combout\ : std_logic;
SIGNAL \inst4|_~10_combout\ : std_logic;
SIGNAL \inst4|_~12_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~9_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~8_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~7_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~6_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~9_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~q\ : std_logic;
SIGNAL \inst4|u[5][3]~0_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~3_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~2_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~1_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~4_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~q\ : std_logic;
SIGNAL \inst4|d[5][2]~7_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~8_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~6_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~5_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~9_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~q\ : std_logic;
SIGNAL \inst4|d[5][3]~1_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~3_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~2_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~0_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~4_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~q\ : std_logic;
SIGNAL \inst4|_~4_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~15_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~16_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~17_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~18_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~q\ : std_logic;
SIGNAL \inst4|u[5][1]~17_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~15_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~16_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~18_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~q\ : std_logic;
SIGNAL \inst4|d[5][4]~12_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~11_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~10_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~13_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~14_combout\ : std_logic;
SIGNAL \inst4|d[5][4]~q\ : std_logic;
SIGNAL \inst4|_~5_combout\ : std_logic;
SIGNAL \inst4|_~74_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~5_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~4_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~6_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~36_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~34_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~35_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~37_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~38_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~q\ : std_logic;
SIGNAL \inst4|_~53_combout\ : std_logic;
SIGNAL \inst4|_~55_combout\ : std_logic;
SIGNAL \inst4|_~52_combout\ : std_logic;
SIGNAL \inst4|_~54_combout\ : std_logic;
SIGNAL \inst4|_~56_combout\ : std_logic;
SIGNAL \inst4|_~57_combout\ : std_logic;
SIGNAL \inst4|_~58_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~12_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~11_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~10_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~13_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~14_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~q\ : std_logic;
SIGNAL \inst4|_~27_combout\ : std_logic;
SIGNAL \inst4|_~26_combout\ : std_logic;
SIGNAL \inst4|_~28_combout\ : std_logic;
SIGNAL \inst4|_~25_combout\ : std_logic;
SIGNAL \inst4|_~29_combout\ : std_logic;
SIGNAL \inst4|_~59_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~79_combout\ : std_logic;
SIGNAL \inst4|_~70_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~76_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~77_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~80_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~q\ : std_logic;
SIGNAL \inst4|_~15_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~9_combout\ : std_logic;
SIGNAL \inst4|_~16_combout\ : std_logic;
SIGNAL \inst4|_~6_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~69_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~66_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~67_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~68_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~70_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[1]~72_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[1]~71_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[1]~73_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[3]~64_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[3]~63_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[3]~65_combout\ : std_logic;
SIGNAL \inst9|control|START~0_combout\ : std_logic;
SIGNAL \inst9|control|START~q\ : std_logic;
SIGNAL \inst14|song~combout\ : std_logic;
SIGNAL \inst9|control|s0~0_combout\ : std_logic;
SIGNAL \inst9|control|s0~q\ : std_logic;
SIGNAL \inst9|control|s77~0_combout\ : std_logic;
SIGNAL \inst9|control|s77~q\ : std_logic;
SIGNAL \inst9|control|s78~0_combout\ : std_logic;
SIGNAL \inst9|control|s78~q\ : std_logic;
SIGNAL \inst9|control|s79~0_combout\ : std_logic;
SIGNAL \inst9|control|s79~q\ : std_logic;
SIGNAL \inst9|control|s80~0_combout\ : std_logic;
SIGNAL \inst9|control|s80~q\ : std_logic;
SIGNAL \inst9|control|s81~0_combout\ : std_logic;
SIGNAL \inst9|control|s81~q\ : std_logic;
SIGNAL \inst9|control|s82~0_combout\ : std_logic;
SIGNAL \inst9|control|s82~q\ : std_logic;
SIGNAL \inst9|control|s83~0_combout\ : std_logic;
SIGNAL \inst9|control|s83~q\ : std_logic;
SIGNAL \inst9|control|s84~0_combout\ : std_logic;
SIGNAL \inst9|control|s84~q\ : std_logic;
SIGNAL \inst9|control|s85~0_combout\ : std_logic;
SIGNAL \inst9|control|s85~q\ : std_logic;
SIGNAL \inst9|control|s86~0_combout\ : std_logic;
SIGNAL \inst9|control|s86~q\ : std_logic;
SIGNAL \inst9|control|s87~0_combout\ : std_logic;
SIGNAL \inst9|control|s87~q\ : std_logic;
SIGNAL \inst9|control|s88~0_combout\ : std_logic;
SIGNAL \inst9|control|s88~q\ : std_logic;
SIGNAL \inst9|control|s89~0_combout\ : std_logic;
SIGNAL \inst9|control|s89~q\ : std_logic;
SIGNAL \inst9|control|s90~0_combout\ : std_logic;
SIGNAL \inst9|control|s90~q\ : std_logic;
SIGNAL \inst9|control|s91~0_combout\ : std_logic;
SIGNAL \inst9|control|s91~q\ : std_logic;
SIGNAL \inst9|control|s1~0_combout\ : std_logic;
SIGNAL \inst9|control|s1~1_combout\ : std_logic;
SIGNAL \inst9|control|s1~q\ : std_logic;
SIGNAL \inst9|control|s2~0_combout\ : std_logic;
SIGNAL \inst9|control|s2~q\ : std_logic;
SIGNAL \inst9|control|s3~0_combout\ : std_logic;
SIGNAL \inst9|control|s3~q\ : std_logic;
SIGNAL \inst9|control|s4~0_combout\ : std_logic;
SIGNAL \inst9|control|s4~q\ : std_logic;
SIGNAL \inst9|control|s5~0_combout\ : std_logic;
SIGNAL \inst9|control|s5~q\ : std_logic;
SIGNAL \inst9|control|s6~0_combout\ : std_logic;
SIGNAL \inst9|control|s6~q\ : std_logic;
SIGNAL \inst9|control|s7~0_combout\ : std_logic;
SIGNAL \inst9|control|s7~q\ : std_logic;
SIGNAL \inst9|control|s8~0_combout\ : std_logic;
SIGNAL \inst9|control|s8~q\ : std_logic;
SIGNAL \inst9|control|s9~0_combout\ : std_logic;
SIGNAL \inst9|control|s9~q\ : std_logic;
SIGNAL \inst9|control|s10~0_combout\ : std_logic;
SIGNAL \inst9|control|s10~q\ : std_logic;
SIGNAL \inst9|control|s11~0_combout\ : std_logic;
SIGNAL \inst9|control|s11~q\ : std_logic;
SIGNAL \inst9|control|s12~0_combout\ : std_logic;
SIGNAL \inst9|control|s12~q\ : std_logic;
SIGNAL \inst9|control|s13~0_combout\ : std_logic;
SIGNAL \inst9|control|s13~q\ : std_logic;
SIGNAL \inst9|control|s14~0_combout\ : std_logic;
SIGNAL \inst9|control|s14~q\ : std_logic;
SIGNAL \inst9|control|s15~0_combout\ : std_logic;
SIGNAL \inst9|control|s15~q\ : std_logic;
SIGNAL \inst9|control|s16~0_combout\ : std_logic;
SIGNAL \inst9|control|s16~q\ : std_logic;
SIGNAL \inst9|control|s17~0_combout\ : std_logic;
SIGNAL \inst9|control|s17~q\ : std_logic;
SIGNAL \inst9|control|s18~0_combout\ : std_logic;
SIGNAL \inst9|control|s18~q\ : std_logic;
SIGNAL \inst9|control|s19~0_combout\ : std_logic;
SIGNAL \inst9|control|s19~q\ : std_logic;
SIGNAL \inst9|control|s20~0_combout\ : std_logic;
SIGNAL \inst9|control|s20~q\ : std_logic;
SIGNAL \inst9|control|s21~0_combout\ : std_logic;
SIGNAL \inst9|control|s21~q\ : std_logic;
SIGNAL \inst9|control|s22~0_combout\ : std_logic;
SIGNAL \inst9|control|s22~q\ : std_logic;
SIGNAL \inst9|control|s23~0_combout\ : std_logic;
SIGNAL \inst9|control|s23~q\ : std_logic;
SIGNAL \inst9|control|s24~0_combout\ : std_logic;
SIGNAL \inst9|control|s24~q\ : std_logic;
SIGNAL \inst9|control|s25~0_combout\ : std_logic;
SIGNAL \inst9|control|s25~q\ : std_logic;
SIGNAL \inst9|control|s26~0_combout\ : std_logic;
SIGNAL \inst9|control|s26~q\ : std_logic;
SIGNAL \inst9|control|s27~0_combout\ : std_logic;
SIGNAL \inst9|control|s27~q\ : std_logic;
SIGNAL \inst9|control|s28~0_combout\ : std_logic;
SIGNAL \inst9|control|s28~q\ : std_logic;
SIGNAL \inst9|control|s29~0_combout\ : std_logic;
SIGNAL \inst9|control|s29~q\ : std_logic;
SIGNAL \inst9|control|s30~0_combout\ : std_logic;
SIGNAL \inst9|control|s30~q\ : std_logic;
SIGNAL \inst9|control|s31~0_combout\ : std_logic;
SIGNAL \inst9|control|s31~q\ : std_logic;
SIGNAL \inst9|control|s32~0_combout\ : std_logic;
SIGNAL \inst9|control|s32~q\ : std_logic;
SIGNAL \inst9|control|s33~0_combout\ : std_logic;
SIGNAL \inst9|control|s33~q\ : std_logic;
SIGNAL \inst9|control|s34~0_combout\ : std_logic;
SIGNAL \inst9|control|s34~q\ : std_logic;
SIGNAL \inst9|control|s35~0_combout\ : std_logic;
SIGNAL \inst9|control|s35~q\ : std_logic;
SIGNAL \inst9|control|s36~0_combout\ : std_logic;
SIGNAL \inst9|control|s36~q\ : std_logic;
SIGNAL \inst9|control|s37~0_combout\ : std_logic;
SIGNAL \inst9|control|s37~q\ : std_logic;
SIGNAL \inst9|control|s38~0_combout\ : std_logic;
SIGNAL \inst9|control|s38~q\ : std_logic;
SIGNAL \inst9|control|s39~0_combout\ : std_logic;
SIGNAL \inst9|control|s39~q\ : std_logic;
SIGNAL \inst9|control|s40~0_combout\ : std_logic;
SIGNAL \inst9|control|s40~q\ : std_logic;
SIGNAL \inst9|control|s41~0_combout\ : std_logic;
SIGNAL \inst9|control|s41~q\ : std_logic;
SIGNAL \inst9|control|s42~0_combout\ : std_logic;
SIGNAL \inst9|control|s42~q\ : std_logic;
SIGNAL \inst9|control|s43~0_combout\ : std_logic;
SIGNAL \inst9|control|s43~q\ : std_logic;
SIGNAL \inst9|control|s44~0_combout\ : std_logic;
SIGNAL \inst9|control|s44~q\ : std_logic;
SIGNAL \inst9|control|s45~0_combout\ : std_logic;
SIGNAL \inst9|control|s45~q\ : std_logic;
SIGNAL \inst9|control|s46~0_combout\ : std_logic;
SIGNAL \inst9|control|s46~q\ : std_logic;
SIGNAL \inst9|control|s47~0_combout\ : std_logic;
SIGNAL \inst9|control|s47~q\ : std_logic;
SIGNAL \inst9|control|s48~0_combout\ : std_logic;
SIGNAL \inst9|control|s48~q\ : std_logic;
SIGNAL \inst9|control|s49~0_combout\ : std_logic;
SIGNAL \inst9|control|s49~q\ : std_logic;
SIGNAL \inst9|control|s50~0_combout\ : std_logic;
SIGNAL \inst9|control|s50~q\ : std_logic;
SIGNAL \inst9|control|s51~0_combout\ : std_logic;
SIGNAL \inst9|control|s51~q\ : std_logic;
SIGNAL \inst9|control|s52~0_combout\ : std_logic;
SIGNAL \inst9|control|s52~q\ : std_logic;
SIGNAL \inst9|control|s53~0_combout\ : std_logic;
SIGNAL \inst9|control|s53~q\ : std_logic;
SIGNAL \inst9|control|s54~0_combout\ : std_logic;
SIGNAL \inst9|control|s54~q\ : std_logic;
SIGNAL \inst9|control|s55~0_combout\ : std_logic;
SIGNAL \inst9|control|s55~q\ : std_logic;
SIGNAL \inst9|control|s56~0_combout\ : std_logic;
SIGNAL \inst9|control|s56~q\ : std_logic;
SIGNAL \inst9|control|s57~0_combout\ : std_logic;
SIGNAL \inst9|control|s57~q\ : std_logic;
SIGNAL \inst9|control|s58~0_combout\ : std_logic;
SIGNAL \inst9|control|s58~q\ : std_logic;
SIGNAL \inst9|control|s59~0_combout\ : std_logic;
SIGNAL \inst9|control|s59~q\ : std_logic;
SIGNAL \inst9|control|s60~0_combout\ : std_logic;
SIGNAL \inst9|control|s60~q\ : std_logic;
SIGNAL \inst9|control|s61~0_combout\ : std_logic;
SIGNAL \inst9|control|s61~q\ : std_logic;
SIGNAL \inst9|temp|_~13_combout\ : std_logic;
SIGNAL \inst9|temp|_~6_combout\ : std_logic;
SIGNAL \inst9|control|s62~0_combout\ : std_logic;
SIGNAL \inst9|control|s62~q\ : std_logic;
SIGNAL \inst9|control|s63~0_combout\ : std_logic;
SIGNAL \inst9|control|s63~q\ : std_logic;
SIGNAL \inst9|control|s64~0_combout\ : std_logic;
SIGNAL \inst9|control|s64~q\ : std_logic;
SIGNAL \inst9|control|s65~0_combout\ : std_logic;
SIGNAL \inst9|control|s65~q\ : std_logic;
SIGNAL \inst9|control|s66~0_combout\ : std_logic;
SIGNAL \inst9|control|s66~q\ : std_logic;
SIGNAL \inst9|control|s67~0_combout\ : std_logic;
SIGNAL \inst9|control|s67~q\ : std_logic;
SIGNAL \inst9|control|s68~0_combout\ : std_logic;
SIGNAL \inst9|control|s68~q\ : std_logic;
SIGNAL \inst9|control|s69~0_combout\ : std_logic;
SIGNAL \inst9|control|s69~q\ : std_logic;
SIGNAL \inst9|control|s70~0_combout\ : std_logic;
SIGNAL \inst9|control|s70~q\ : std_logic;
SIGNAL \inst9|control|s71~0_combout\ : std_logic;
SIGNAL \inst9|control|s71~1_combout\ : std_logic;
SIGNAL \inst9|control|s71~q\ : std_logic;
SIGNAL \inst9|control|s72~0_combout\ : std_logic;
SIGNAL \inst9|control|s72~q\ : std_logic;
SIGNAL \inst9|control|s73~0_combout\ : std_logic;
SIGNAL \inst9|control|s73~q\ : std_logic;
SIGNAL \inst9|control|s74~0_combout\ : std_logic;
SIGNAL \inst9|control|s74~q\ : std_logic;
SIGNAL \inst9|temp|_~4_combout\ : std_logic;
SIGNAL \inst9|control|s75~0_combout\ : std_logic;
SIGNAL \inst9|control|s75~q\ : std_logic;
SIGNAL \inst9|control|freq_out[15]~10_combout\ : std_logic;
SIGNAL \inst9|temp|_~14_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[5]~13_combout\ : std_logic;
SIGNAL \inst9|temp|_~7_combout\ : std_logic;
SIGNAL \inst9|temp|_~11_combout\ : std_logic;
SIGNAL \inst9|temp|_~10_combout\ : std_logic;
SIGNAL \inst9|temp|_~9_combout\ : std_logic;
SIGNAL \inst9|temp|_~19_combout\ : std_logic;
SIGNAL \inst9|temp|_~12_combout\ : std_logic;
SIGNAL \inst9|temp|_~5_combout\ : std_logic;
SIGNAL \inst9|temp|_~16_combout\ : std_logic;
SIGNAL \inst9|temp|_~17_combout\ : std_logic;
SIGNAL \inst9|temp|_~18_combout\ : std_logic;
SIGNAL \inst9|temp|_~22_combout\ : std_logic;
SIGNAL \inst9|temp|_~21_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[0]~9_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~1_cout\ : std_logic;
SIGNAL \inst9|temp|op_1~2_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[1]~8_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~3\ : std_logic;
SIGNAL \inst9|temp|op_1~4_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~70_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~5\ : std_logic;
SIGNAL \inst9|temp|op_1~6_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[3]~7_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~7\ : std_logic;
SIGNAL \inst9|temp|op_1~8_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~69_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~9\ : std_logic;
SIGNAL \inst9|temp|op_1~10_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~11\ : std_logic;
SIGNAL \inst9|temp|op_1~12_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~68_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~13\ : std_logic;
SIGNAL \inst9|temp|op_1~14_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~67_combout\ : std_logic;
SIGNAL \inst9|temp|q~6_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[18]~11_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[13]~14_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[13]~feeder_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[11]~12_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[11]~feeder_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~15\ : std_logic;
SIGNAL \inst9|temp|op_1~16_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~66_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~17\ : std_logic;
SIGNAL \inst9|temp|op_1~18_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~65_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~19\ : std_logic;
SIGNAL \inst9|temp|op_1~20_combout\ : std_logic;
SIGNAL \inst9|temp|_~20_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[10]~6_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~21\ : std_logic;
SIGNAL \inst9|temp|op_1~22_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~23\ : std_logic;
SIGNAL \inst9|temp|op_1~24_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~64_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~25\ : std_logic;
SIGNAL \inst9|temp|op_1~26_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~27\ : std_logic;
SIGNAL \inst9|temp|op_1~28_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~63_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~29\ : std_logic;
SIGNAL \inst9|temp|op_1~30_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[15]~5_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~31\ : std_logic;
SIGNAL \inst9|temp|op_1~32_combout\ : std_logic;
SIGNAL \inst9|temp|_~15_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[16]~4_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~33\ : std_logic;
SIGNAL \inst9|temp|op_1~34_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[17]~3_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~35\ : std_logic;
SIGNAL \inst9|temp|op_1~36_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~37\ : std_logic;
SIGNAL \inst9|temp|op_1~38_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~62_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~39\ : std_logic;
SIGNAL \inst9|temp|op_1~40_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~61_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~41\ : std_logic;
SIGNAL \inst9|temp|op_1~42_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[21]~2_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~43\ : std_logic;
SIGNAL \inst9|temp|op_1~44_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~60_combout\ : std_logic;
SIGNAL \inst9|temp|q~2_combout\ : std_logic;
SIGNAL \inst9|temp|q~4_combout\ : std_logic;
SIGNAL \inst9|temp|q~3_combout\ : std_logic;
SIGNAL \inst9|temp|cnt[23]~10_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~45\ : std_logic;
SIGNAL \inst9|temp|op_1~46_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~47\ : std_logic;
SIGNAL \inst9|temp|op_1~48_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~59_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~49\ : std_logic;
SIGNAL \inst9|temp|op_1~50_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~58_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~51\ : std_logic;
SIGNAL \inst9|temp|op_1~52_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~57_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~53\ : std_logic;
SIGNAL \inst9|temp|op_1~54_combout\ : std_logic;
SIGNAL \inst9|temp|op_1~56_combout\ : std_logic;
SIGNAL \inst9|temp|q~1_combout\ : std_logic;
SIGNAL \inst9|temp|q~5_combout\ : std_logic;
SIGNAL \inst9|temp|q~7_combout\ : std_logic;
SIGNAL \inst9|temp|q~8_combout\ : std_logic;
SIGNAL \inst9|temp|q~9_combout\ : std_logic;
SIGNAL \inst9|control|s76~0_combout\ : std_logic;
SIGNAL \inst9|control|s76~q\ : std_logic;
SIGNAL \inst9|control|freq_out[6]~16_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[6]~15_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~95_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~102_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~108_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~100_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~99_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~98_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~101_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[1]~19_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~94_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~93_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~104_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~105_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~97_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~96_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[9]~23_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[9]~24_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~103_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~106_combout\ : std_logic;
SIGNAL \inst9|control|clk_out~combout\ : std_logic;
SIGNAL \inst9|control|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|control|freq_out[15]~9_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[7]~8_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[15]~11_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[15]~12_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[15]~13_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[14]~14_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[8]~21_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[6]~17_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[6]~18_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[13]~20_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[13]~22_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[9]~25_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[9]~26_combout\ : std_logic;
SIGNAL \inst9|temp|_~8_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[8]~27_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[12]~28_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[12]~29_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[11]~30_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[11]~31_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[10]~32_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[8]~33_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[7]~34_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[6]~35_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[5]~36_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[5]~37_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[2]~38_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[5]~39_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[4]~40_combout\ : std_logic;
SIGNAL \inst9|control|freq_out[3]~41_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[1]~18_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[16]~49\ : std_logic;
SIGNAL \inst9|div_clock|cnt[17]~51_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[17]~52\ : std_logic;
SIGNAL \inst9|div_clock|cnt[18]~53_combout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~35_combout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~3_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~5_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~7_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~9_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~11_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~13_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~15_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~17_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~19_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~21_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~23_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~25_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~27_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~29_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~31_cout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~32_combout\ : std_logic;
SIGNAL \inst9|div_clock|op_1~34_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[0]~50_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[1]~19\ : std_logic;
SIGNAL \inst9|div_clock|cnt[2]~20_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[2]~21\ : std_logic;
SIGNAL \inst9|div_clock|cnt[3]~22_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[3]~23\ : std_logic;
SIGNAL \inst9|div_clock|cnt[4]~24_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[4]~25\ : std_logic;
SIGNAL \inst9|div_clock|cnt[5]~26_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[5]~27\ : std_logic;
SIGNAL \inst9|div_clock|cnt[6]~28_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[6]~29\ : std_logic;
SIGNAL \inst9|div_clock|cnt[7]~30_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[7]~31\ : std_logic;
SIGNAL \inst9|div_clock|cnt[8]~32_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[8]~33\ : std_logic;
SIGNAL \inst9|div_clock|cnt[9]~34_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[9]~35\ : std_logic;
SIGNAL \inst9|div_clock|cnt[10]~36_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[10]~37\ : std_logic;
SIGNAL \inst9|div_clock|cnt[11]~38_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[11]~39\ : std_logic;
SIGNAL \inst9|div_clock|cnt[12]~40_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[12]~41\ : std_logic;
SIGNAL \inst9|div_clock|cnt[13]~42_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[13]~43\ : std_logic;
SIGNAL \inst9|div_clock|cnt[14]~44_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[14]~45\ : std_logic;
SIGNAL \inst9|div_clock|cnt[15]~46_combout\ : std_logic;
SIGNAL \inst9|div_clock|cnt[15]~47\ : std_logic;
SIGNAL \inst9|div_clock|cnt[16]~48_combout\ : std_logic;
SIGNAL \inst9|div_clock|alternador~1_combout\ : std_logic;
SIGNAL \inst9|div_clock|alternador~q\ : std_logic;
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
SIGNAL \inst14|lcd_bus[7]~22_combout\ : std_logic;
SIGNAL \inst15|lcd_data[7]~0_combout\ : std_logic;
SIGNAL \inst14|_~0_combout\ : std_logic;
SIGNAL \inst15|lcd_data[6]~1_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~25_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~26_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~29_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~27_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~30_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~28_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~31_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~35_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~32_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~34_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~33_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~36_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~23_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~24_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~37_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~94_combout\ : std_logic;
SIGNAL \inst15|_~15_combout\ : std_logic;
SIGNAL \inst15|lcd_data[5]~2_combout\ : std_logic;
SIGNAL \inst15|lcd_data[5]~3_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~95_combout\ : std_logic;
SIGNAL \inst15|_~17_combout\ : std_logic;
SIGNAL \inst15|lcd_data[4]~4_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~49_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~50_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~48_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~51_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~52_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~40_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~41_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~42_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~45_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~43_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~44_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~46_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~38_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~39_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~47_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~53_combout\ : std_logic;
SIGNAL \inst15|lcd_data[3]~5_combout\ : std_logic;
SIGNAL \inst15|lcd_data[3]~6_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~62_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~57_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~58_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~54_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~59_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~60_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~55_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~56_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~61_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~65_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~63_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~64_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~66_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~67_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~68_combout\ : std_logic;
SIGNAL \inst15|lcd_data[2]~7_combout\ : std_logic;
SIGNAL \inst15|lcd_data[2]~8_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~71_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~72_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~69_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~70_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~75_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~76_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~77_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~78_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~79_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~80_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~73_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~74_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~81_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~82_combout\ : std_logic;
SIGNAL \inst15|_~18_combout\ : std_logic;
SIGNAL \inst15|lcd_data[1]~9_combout\ : std_logic;
SIGNAL \inst14|conv_d[5]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_u[5]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~90_combout\ : std_logic;
SIGNAL \inst14|conv_d[6]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_u[6]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~91_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~92_combout\ : std_logic;
SIGNAL \inst14|conv_u[2]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_d[2]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~88_combout\ : std_logic;
SIGNAL \inst14|conv_d[1]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_u[1]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~83_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~84_combout\ : std_logic;
SIGNAL \inst14|conv_d[3]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_u[3]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~85_combout\ : std_logic;
SIGNAL \inst14|conv_u[4]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|conv_d[4]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~86_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~87_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~89_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~96_combout\ : std_logic;
SIGNAL \inst15|_~19_combout\ : std_logic;
SIGNAL \inst15|lcd_data[0]~10_combout\ : std_logic;
SIGNAL \inst4|_~20_combout\ : std_logic;
SIGNAL \inst4|_~21_combout\ : std_logic;
SIGNAL \inst4|u_atual[1]~28_combout\ : std_logic;
SIGNAL \inst4|_~22_combout\ : std_logic;
SIGNAL \inst4|u_atual[1]~29_combout\ : std_logic;
SIGNAL \inst7|_~1_combout\ : std_logic;
SIGNAL \inst7|_~1clkctrl_outclk\ : std_logic;
SIGNAL \inst7|divisor|_~0_combout\ : std_logic;
SIGNAL \inst7|divisor|count[2]~26_combout\ : std_logic;
SIGNAL \inst7|divisor|count[2]~27\ : std_logic;
SIGNAL \inst7|divisor|count[3]~28_combout\ : std_logic;
SIGNAL \inst7|divisor|count[3]~29\ : std_logic;
SIGNAL \inst7|divisor|count[4]~30_combout\ : std_logic;
SIGNAL \inst7|divisor|count[4]~31\ : std_logic;
SIGNAL \inst7|divisor|count[5]~32_combout\ : std_logic;
SIGNAL \inst7|divisor|count[5]~33\ : std_logic;
SIGNAL \inst7|divisor|count[6]~34_combout\ : std_logic;
SIGNAL \inst7|divisor|count[6]~35\ : std_logic;
SIGNAL \inst7|divisor|count[7]~36_combout\ : std_logic;
SIGNAL \inst7|divisor|count[7]~37\ : std_logic;
SIGNAL \inst7|divisor|count[8]~38_combout\ : std_logic;
SIGNAL \inst7|divisor|count[8]~39\ : std_logic;
SIGNAL \inst7|divisor|count[9]~40_combout\ : std_logic;
SIGNAL \inst7|divisor|count[9]~41\ : std_logic;
SIGNAL \inst7|divisor|count[10]~42_combout\ : std_logic;
SIGNAL \inst7|divisor|count[10]~43\ : std_logic;
SIGNAL \inst7|divisor|count[11]~44_combout\ : std_logic;
SIGNAL \inst7|divisor|count[11]~45\ : std_logic;
SIGNAL \inst7|divisor|count[12]~46_combout\ : std_logic;
SIGNAL \inst7|divisor|count[12]~47\ : std_logic;
SIGNAL \inst7|divisor|count[13]~48_combout\ : std_logic;
SIGNAL \inst7|divisor|count[13]~49\ : std_logic;
SIGNAL \inst7|divisor|count[14]~50_combout\ : std_logic;
SIGNAL \inst7|divisor|count[14]~51\ : std_logic;
SIGNAL \inst7|divisor|count[15]~52_combout\ : std_logic;
SIGNAL \inst7|divisor|count[15]~53\ : std_logic;
SIGNAL \inst7|divisor|count[16]~54_combout\ : std_logic;
SIGNAL \inst7|divisor|count[16]~55\ : std_logic;
SIGNAL \inst7|divisor|count[17]~56_combout\ : std_logic;
SIGNAL \inst7|divisor|count[17]~57\ : std_logic;
SIGNAL \inst7|divisor|count[18]~58_combout\ : std_logic;
SIGNAL \inst7|divisor|count[18]~59\ : std_logic;
SIGNAL \inst7|divisor|count[19]~60_combout\ : std_logic;
SIGNAL \inst7|divisor|count[19]~61\ : std_logic;
SIGNAL \inst7|divisor|count[20]~62_combout\ : std_logic;
SIGNAL \inst7|divisor|count[20]~63\ : std_logic;
SIGNAL \inst7|divisor|count[21]~64_combout\ : std_logic;
SIGNAL \inst7|divisor|count[21]~65\ : std_logic;
SIGNAL \inst7|divisor|count[22]~66_combout\ : std_logic;
SIGNAL \inst7|divisor|count[22]~67\ : std_logic;
SIGNAL \inst7|divisor|count[23]~68_combout\ : std_logic;
SIGNAL \inst7|divisor|count[23]~69\ : std_logic;
SIGNAL \inst7|divisor|count[24]~70_combout\ : std_logic;
SIGNAL \inst7|divisor|count[24]~71\ : std_logic;
SIGNAL \inst7|divisor|count[25]~72_combout\ : std_logic;
SIGNAL \inst7|divisor|count[25]~73\ : std_logic;
SIGNAL \inst7|divisor|count[26]~74_combout\ : std_logic;
SIGNAL \inst7|divisor|op_1~7_combout\ : std_logic;
SIGNAL \inst7|divisor|count[26]~75\ : std_logic;
SIGNAL \inst7|divisor|count[27]~76_combout\ : std_logic;
SIGNAL \inst7|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst7|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst7|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst7|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst7|divisor|op_1~4_combout\ : std_logic;
SIGNAL \inst7|divisor|op_1~5_combout\ : std_logic;
SIGNAL \inst7|divisor|op_1~6_combout\ : std_logic;
SIGNAL \inst7|divisor|op_1~8_combout\ : std_logic;
SIGNAL \inst7|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst7|divisor|alt~q\ : std_logic;
SIGNAL \inst4|sort_realizado~14_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~15_combout\ : std_logic;
SIGNAL \inst4|sort_realizado~combout\ : std_logic;
SIGNAL \inst7|_~0_combout\ : std_logic;
SIGNAL \inst7|count|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst4|_~23_combout\ : std_logic;
SIGNAL \inst4|_~24_combout\ : std_logic;
SIGNAL \inst4|u_atual[1]~30_combout\ : std_logic;
SIGNAL \inst7|u_display[1]~4_combout\ : std_logic;
SIGNAL \inst4|u_atual[4]~25_combout\ : std_logic;
SIGNAL \inst4|u_atual[4]~26_combout\ : std_logic;
SIGNAL \inst4|u_atual[4]~24_combout\ : std_logic;
SIGNAL \inst4|u_atual[4]~27_combout\ : std_logic;
SIGNAL \inst2|seg[1]~30_combout\ : std_logic;
SIGNAL \inst7|u_display[2]~8_combout\ : std_logic;
SIGNAL \inst7|u_display[2]~7_combout\ : std_logic;
SIGNAL \inst7|u_display[2]~6_combout\ : std_logic;
SIGNAL \inst7|u_display[2]~9_combout\ : std_logic;
SIGNAL \inst4|u_atual[3]~33_combout\ : std_logic;
SIGNAL \inst4|u_atual[3]~32_combout\ : std_logic;
SIGNAL \inst4|u_atual[3]~31_combout\ : std_logic;
SIGNAL \inst7|u_display[3]~5_combout\ : std_logic;
SIGNAL \inst2|seg[6]~31_combout\ : std_logic;
SIGNAL \inst2|seg[6]~32_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~35_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~34_combout\ : std_logic;
SIGNAL \inst4|d_atual[2]~33_combout\ : std_logic;
SIGNAL \inst7|d_display[2]~7_combout\ : std_logic;
SIGNAL \inst4|d_atual[4]~26_combout\ : std_logic;
SIGNAL \inst4|d_atual[4]~24_combout\ : std_logic;
SIGNAL \inst4|d_atual[4]~25_combout\ : std_logic;
SIGNAL \inst2|seg[2]~28_combout\ : std_logic;
SIGNAL \inst4|d_atual[3]~30_combout\ : std_logic;
SIGNAL \inst4|d_atual[3]~31_combout\ : std_logic;
SIGNAL \inst4|d_atual[3]~32_combout\ : std_logic;
SIGNAL \inst7|d_display[3]~6_combout\ : std_logic;
SIGNAL \inst4|d_atual[1]~29_combout\ : std_logic;
SIGNAL \inst4|d_atual[1]~28_combout\ : std_logic;
SIGNAL \inst4|d_atual[1]~27_combout\ : std_logic;
SIGNAL \inst7|d_display[1]~5_combout\ : std_logic;
SIGNAL \inst2|seg[6]~29_combout\ : std_logic;
SIGNAL \inst2|seg[6]~33_combout\ : std_logic;
SIGNAL \inst2|seg[5]~38_combout\ : std_logic;
SIGNAL \inst2|seg[5]~35_combout\ : std_logic;
SIGNAL \inst2|seg[5]~36_combout\ : std_logic;
SIGNAL \inst2|seg[3]~34_combout\ : std_logic;
SIGNAL \inst2|seg[5]~37_combout\ : std_logic;
SIGNAL \inst2|seg[5]~39_combout\ : std_logic;
SIGNAL \inst2|seg[1]~41_combout\ : std_logic;
SIGNAL \inst2|seg[4]~42_combout\ : std_logic;
SIGNAL \inst2|seg[4]~43_combout\ : std_logic;
SIGNAL \inst2|seg[4]~44_combout\ : std_logic;
SIGNAL \inst2|seg[4]~45_combout\ : std_logic;
SIGNAL \inst2|seg[4]~40_combout\ : std_logic;
SIGNAL \inst2|seg[4]~62_combout\ : std_logic;
SIGNAL \inst2|seg[4]~46_combout\ : std_logic;
SIGNAL \inst2|seg[3]~48_combout\ : std_logic;
SIGNAL \inst2|seg[0]~50_combout\ : std_logic;
SIGNAL \inst2|seg[0]~49_combout\ : std_logic;
SIGNAL \inst2|seg[0]~63_combout\ : std_logic;
SIGNAL \inst2|seg[3]~47_combout\ : std_logic;
SIGNAL \inst2|seg[3]~51_combout\ : std_logic;
SIGNAL \inst2|seg[2]~52_combout\ : std_logic;
SIGNAL \inst2|seg[2]~53_combout\ : std_logic;
SIGNAL \inst2|seg[1]~54_combout\ : std_logic;
SIGNAL \inst2|seg[2]~55_combout\ : std_logic;
SIGNAL \inst2|seg[3]~57_combout\ : std_logic;
SIGNAL \inst2|seg[1]~64_combout\ : std_logic;
SIGNAL \inst2|seg[1]~58_combout\ : std_logic;
SIGNAL \inst2|seg[1]~56_combout\ : std_logic;
SIGNAL \inst2|seg[1]~59_combout\ : std_logic;
SIGNAL \inst2|seg[1]~60_combout\ : std_logic;
SIGNAL \inst2|seg[0]~61_combout\ : std_logic;
SIGNAL \inst15|clk_count\ : std_logic_vector(22 DOWNTO 1);
SIGNAL \inst9|div_clock|cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst4|sorteio|dezena\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|d_atual\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst15|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|temp|cnt\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \inst4|divisor|count\ : std_logic_vector(34 DOWNTO 1);
SIGNAL \inst3|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst7|divisor|count\ : std_logic_vector(27 DOWNTO 1);
SIGNAL \inst1|debounc1|divisor|count\ : std_logic_vector(16 DOWNTO 1);
SIGNAL \inst7|count|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|count|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|u_atual\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst14|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst9|control|freq_out\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst4|sorteio|unidade\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst9|control|temp_out\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst4|deb|ff\ : std_logic_vector(2 DOWNTO 0);
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
buzzer <= ww_buzzer;
dig <= ww_dig;
lcd_d <= ww_lcd_d;
led <= ww_led;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|debounc1|divisor|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|debounc1|divisor|alt~q\);

\inst7|_~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|_~1_combout\);

\inst|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|alt~q\);

\inst9|control|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst9|control|clk_out~combout\);

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

-- Location: IOOBUF_X30_Y24_N2
\buzzer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|div_clock|alternador~q\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

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

-- Location: IOOBUF_X34_Y10_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|qnt_sorteio[3]~65_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|qnt_sorteio[2]~70_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|qnt_sorteio[1]~73_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[6]~33_combout\,
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
	i => \inst2|seg[5]~39_combout\,
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
	i => \inst2|seg[4]~46_combout\,
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
	i => \inst2|seg[3]~51_combout\,
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
	i => \inst2|seg[2]~55_combout\,
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
	i => \inst2|seg[1]~60_combout\,
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
	i => \inst2|seg[0]~61_combout\,
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

-- Location: LCCOMB_X7_Y19_N30
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

-- Location: LCCOMB_X7_Y18_N0
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

-- Location: FF_X7_Y18_N1
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

-- Location: LCCOMB_X7_Y20_N28
\inst15|op_5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~5_combout\ = (!\inst15|clk_count\(11) & !\inst15|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_5~5_combout\);

-- Location: LCCOMB_X7_Y19_N10
\inst15|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~4_combout\ = (\inst15|clk_count\(9) & \inst15|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(9),
	datad => \inst15|clk_count\(8),
	combout => \inst15|op_4~4_combout\);

-- Location: LCCOMB_X7_Y19_N2
\inst15|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~1_combout\ = (!\inst15|clk_count\(4) & (!\inst15|clk_count\(3) & ((!\inst15|clk_count\(1)) # (!\inst15|clk_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(4),
	datac => \inst15|clk_count\(3),
	datad => \inst15|clk_count\(1),
	combout => \inst15|op_4~1_combout\);

-- Location: LCCOMB_X7_Y20_N30
\inst15|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~2_combout\ = (!\inst15|clk_count\(5) & \inst15|op_4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(5),
	datad => \inst15|op_4~1_combout\,
	combout => \inst15|op_9~2_combout\);

-- Location: LCCOMB_X7_Y20_N4
\inst15|op_12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_12~0_combout\ = (((\inst15|op_9~2_combout\ & !\inst15|clk_count\(6))) # (!\inst15|clk_count\(7))) # (!\inst15|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_4~4_combout\,
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_9~2_combout\,
	datad => \inst15|clk_count\(6),
	combout => \inst15|op_12~0_combout\);

-- Location: LCCOMB_X7_Y18_N2
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

-- Location: FF_X7_Y18_N3
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

-- Location: LCCOMB_X7_Y18_N4
\inst15|clk_count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[14]~45_combout\ = (\inst15|clk_count\(14) & (\inst15|clk_count[13]~44\ $ (GND))) # (!\inst15|clk_count\(14) & (!\inst15|clk_count[13]~44\ & VCC))
-- \inst15|clk_count[14]~46\ = CARRY((\inst15|clk_count\(14) & !\inst15|clk_count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(14),
	datad => VCC,
	cin => \inst15|clk_count[13]~44\,
	combout => \inst15|clk_count[14]~45_combout\,
	cout => \inst15|clk_count[14]~46\);

-- Location: FF_X7_Y18_N5
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

-- Location: LCCOMB_X7_Y18_N6
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

-- Location: FF_X7_Y18_N7
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

-- Location: LCCOMB_X7_Y18_N8
\inst15|clk_count[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[16]~49_combout\ = (\inst15|clk_count\(16) & (\inst15|clk_count[15]~48\ $ (GND))) # (!\inst15|clk_count\(16) & (!\inst15|clk_count[15]~48\ & VCC))
-- \inst15|clk_count[16]~50\ = CARRY((\inst15|clk_count\(16) & !\inst15|clk_count[15]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(16),
	datad => VCC,
	cin => \inst15|clk_count[15]~48\,
	combout => \inst15|clk_count[16]~49_combout\,
	cout => \inst15|clk_count[16]~50\);

-- Location: FF_X7_Y18_N9
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

-- Location: LCCOMB_X7_Y18_N10
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

-- Location: FF_X7_Y18_N11
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

-- Location: LCCOMB_X7_Y18_N12
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

-- Location: FF_X7_Y18_N13
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

-- Location: LCCOMB_X7_Y18_N14
\inst15|clk_count[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[19]~55_combout\ = (\inst15|clk_count\(19) & (!\inst15|clk_count[18]~54\)) # (!\inst15|clk_count\(19) & ((\inst15|clk_count[18]~54\) # (GND)))
-- \inst15|clk_count[19]~56\ = CARRY((!\inst15|clk_count[18]~54\) # (!\inst15|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(19),
	datad => VCC,
	cin => \inst15|clk_count[18]~54\,
	combout => \inst15|clk_count[19]~55_combout\,
	cout => \inst15|clk_count[19]~56\);

-- Location: FF_X7_Y18_N15
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

-- Location: LCCOMB_X7_Y18_N16
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

-- Location: FF_X7_Y18_N17
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

-- Location: LCCOMB_X7_Y18_N18
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

-- Location: FF_X7_Y18_N19
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

-- Location: LCCOMB_X7_Y18_N20
\inst15|clk_count[22]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[22]~62_combout\ = \inst15|clk_count\(22) $ (!\inst15|clk_count[21]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(22),
	cin => \inst15|clk_count[21]~61\,
	combout => \inst15|clk_count[22]~62_combout\);

-- Location: FF_X7_Y18_N21
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

-- Location: LCCOMB_X7_Y18_N30
\inst15|op_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~0_combout\ = (!\inst15|clk_count\(18) & (!\inst15|clk_count\(20) & (!\inst15|clk_count\(19) & !\inst15|clk_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(18),
	datab => \inst15|clk_count\(20),
	datac => \inst15|clk_count\(19),
	datad => \inst15|clk_count\(21),
	combout => \inst15|op_10~0_combout\);

-- Location: LCCOMB_X7_Y18_N24
\inst15|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~0_combout\ = (!\inst15|clk_count\(17) & (!\inst15|clk_count\(14) & (!\inst15|clk_count\(16) & !\inst15|clk_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(17),
	datab => \inst15|clk_count\(14),
	datac => \inst15|clk_count\(16),
	datad => \inst15|clk_count\(15),
	combout => \inst15|_~0_combout\);

-- Location: LCCOMB_X8_Y18_N0
\inst15|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~4_combout\ = (!\inst15|clk_count\(13) & (!\inst15|clk_count\(22) & (\inst15|op_10~0_combout\ & \inst15|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|clk_count\(22),
	datac => \inst15|op_10~0_combout\,
	datad => \inst15|_~0_combout\,
	combout => \inst15|_~4_combout\);

-- Location: LCCOMB_X7_Y20_N26
\inst15|op_12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_12~1_combout\ = (\inst15|_~4_combout\ & (((\inst15|op_5~5_combout\ & \inst15|op_12~0_combout\)) # (!\inst15|clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datab => \inst15|op_5~5_combout\,
	datac => \inst15|op_12~0_combout\,
	datad => \inst15|_~4_combout\,
	combout => \inst15|op_12~1_combout\);

-- Location: LCCOMB_X7_Y18_N26
\inst15|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~3_combout\ = (!\inst15|clk_count\(21) & !\inst15|clk_count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(21),
	datad => \inst15|clk_count\(20),
	combout => \inst15|op_1~3_combout\);

-- Location: LCCOMB_X7_Y18_N28
\inst15|op_10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~1_combout\ = (!\inst15|clk_count\(18) & (!\inst15|clk_count\(19) & (\inst15|op_1~3_combout\ & !\inst15|clk_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(18),
	datab => \inst15|clk_count\(19),
	datac => \inst15|op_1~3_combout\,
	datad => \inst15|clk_count\(22),
	combout => \inst15|op_10~1_combout\);

-- Location: LCCOMB_X6_Y18_N14
\inst15|op_11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~3_combout\ = (\inst15|clk_count\(17) & \inst15|clk_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(17),
	datac => \inst15|clk_count\(16),
	combout => \inst15|op_11~3_combout\);

-- Location: LCCOMB_X8_Y19_N28
\inst15|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~3_combout\ = (\inst15|clk_count\(12) & \inst15|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(12),
	datad => \inst15|clk_count\(11),
	combout => \inst15|op_6~3_combout\);

-- Location: LCCOMB_X7_Y19_N6
\inst15|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~2_combout\ = (\inst15|clk_count\(2) & (\inst15|clk_count\(4) & (\inst15|clk_count\(3) & \inst15|clk_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(4),
	datac => \inst15|clk_count\(3),
	datad => \inst15|clk_count\(1),
	combout => \inst15|op_1~2_combout\);

-- Location: LCCOMB_X6_Y18_N28
\inst15|op_11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~0_combout\ = (!\inst15|clk_count\(5) & !\inst15|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(5),
	datad => \inst15|op_1~2_combout\,
	combout => \inst15|op_11~0_combout\);

-- Location: LCCOMB_X6_Y18_N18
\inst15|op_11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~1_combout\ = ((!\inst15|clk_count\(7) & ((\inst15|op_11~0_combout\) # (!\inst15|clk_count\(6))))) # (!\inst15|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_4~4_combout\,
	datab => \inst15|op_11~0_combout\,
	datac => \inst15|clk_count\(7),
	datad => \inst15|clk_count\(6),
	combout => \inst15|op_11~1_combout\);

-- Location: LCCOMB_X6_Y18_N4
\inst15|op_11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~2_combout\ = (!\inst15|clk_count\(13) & (((!\inst15|clk_count\(10) & \inst15|op_11~1_combout\)) # (!\inst15|op_6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|clk_count\(10),
	datac => \inst15|op_6~3_combout\,
	datad => \inst15|op_11~1_combout\,
	combout => \inst15|op_11~2_combout\);

-- Location: LCCOMB_X6_Y18_N20
\inst15|op_11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~4_combout\ = ((!\inst15|clk_count\(15) & ((\inst15|op_11~2_combout\) # (!\inst15|clk_count\(14))))) # (!\inst15|op_11~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(15),
	datab => \inst15|op_11~3_combout\,
	datac => \inst15|op_11~2_combout\,
	datad => \inst15|clk_count\(14),
	combout => \inst15|op_11~4_combout\);

-- Location: LCCOMB_X8_Y18_N24
\inst15|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~1_combout\ = (!\inst15|clk_count\(22) & (\inst15|op_10~0_combout\ & \inst15|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(22),
	datac => \inst15|op_10~0_combout\,
	datad => \inst15|_~0_combout\,
	combout => \inst15|_~1_combout\);

-- Location: LCCOMB_X8_Y18_N30
\inst15|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~0_combout\ = (((\inst15|op_4~1_combout\ & !\inst15|clk_count\(5))) # (!\inst15|clk_count\(7))) # (!\inst15|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(6),
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_4~1_combout\,
	datad => \inst15|clk_count\(5),
	combout => \inst15|op_8~0_combout\);

-- Location: LCCOMB_X8_Y18_N4
\inst15|op_8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~1_combout\ = (\inst15|op_5~5_combout\ & (((!\inst15|clk_count\(8) & \inst15|op_8~0_combout\)) # (!\inst15|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(9),
	datac => \inst15|op_8~0_combout\,
	datad => \inst15|op_5~5_combout\,
	combout => \inst15|op_8~1_combout\);

-- Location: LCCOMB_X8_Y18_N2
\inst15|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~2_combout\ = (\inst15|_~1_combout\ & (((\inst15|op_8~1_combout\) # (!\inst15|clk_count\(12))) # (!\inst15|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|_~1_combout\,
	datac => \inst15|op_8~1_combout\,
	datad => \inst15|clk_count\(12),
	combout => \inst15|op_8~2_combout\);

-- Location: LCCOMB_X6_Y18_N6
\inst15|op_9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~0_combout\ = (!\inst15|clk_count\(15) & (!\inst15|clk_count\(11) & (!\inst15|clk_count\(8) & !\inst15|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(15),
	datab => \inst15|clk_count\(11),
	datac => \inst15|clk_count\(8),
	datad => \inst15|clk_count\(9),
	combout => \inst15|op_9~0_combout\);

-- Location: LCCOMB_X6_Y18_N24
\inst15|op_10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~3_combout\ = (\inst15|clk_count\(17) & (\inst15|clk_count\(16) & ((\inst15|clk_count\(14)) # (\inst15|clk_count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(14),
	datab => \inst15|clk_count\(17),
	datac => \inst15|clk_count\(16),
	datad => \inst15|clk_count\(15),
	combout => \inst15|op_10~3_combout\);

-- Location: LCCOMB_X7_Y20_N10
\inst15|op_4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~5_combout\ = (!\inst15|clk_count\(10) & (!\inst15|clk_count\(13) & !\inst15|clk_count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(10),
	datac => \inst15|clk_count\(13),
	datad => \inst15|clk_count\(12),
	combout => \inst15|op_4~5_combout\);

-- Location: LCCOMB_X7_Y20_N24
\inst15|op_9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~1_combout\ = (!\inst15|clk_count\(6) & (!\inst15|clk_count\(7) & \inst15|op_4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(6),
	datac => \inst15|clk_count\(7),
	datad => \inst15|op_4~5_combout\,
	combout => \inst15|op_9~1_combout\);

-- Location: LCCOMB_X7_Y20_N12
\inst15|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~12_combout\ = (\inst15|op_10~3_combout\ & (((!\inst15|op_9~1_combout\) # (!\inst15|op_9~0_combout\)) # (!\inst15|op_9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_9~2_combout\,
	datab => \inst15|op_9~0_combout\,
	datac => \inst15|op_10~3_combout\,
	datad => \inst15|op_9~1_combout\,
	combout => \inst15|_~12_combout\);

-- Location: LCCOMB_X9_Y18_N24
\inst15|op_9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~3_combout\ = (\inst15|op_10~1_combout\ & !\inst15|_~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|op_10~1_combout\,
	datad => \inst15|_~12_combout\,
	combout => \inst15|op_9~3_combout\);

-- Location: LCCOMB_X6_Y18_N16
\inst15|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~0_combout\ = (!\inst15|clk_count\(13) & (!\inst15|clk_count\(12) & (!\inst15|clk_count\(11) & !\inst15|clk_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|clk_count\(12),
	datac => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_4~0_combout\);

-- Location: LCCOMB_X7_Y19_N8
\inst15|op_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~1_combout\ = (!\inst15|clk_count\(4) & (((!\inst15|clk_count\(3)) # (!\inst15|clk_count\(1))) # (!\inst15|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(1),
	datac => \inst15|clk_count\(3),
	datad => \inst15|clk_count\(4),
	combout => \inst15|op_5~1_combout\);

-- Location: LCCOMB_X8_Y18_N22
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

-- Location: LCCOMB_X6_Y18_N30
\inst15|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~2_combout\ = (((\inst15|op_5~1_combout\) # (!\inst15|op_5~0_combout\)) # (!\inst15|clk_count\(7))) # (!\inst15|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_4~4_combout\,
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_5~1_combout\,
	datad => \inst15|op_5~0_combout\,
	combout => \inst15|op_10~2_combout\);

-- Location: LCCOMB_X6_Y18_N10
\inst15|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~4_combout\ = ((!\inst15|clk_count\(15) & (\inst15|op_4~0_combout\ & \inst15|op_10~2_combout\))) # (!\inst15|op_10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(15),
	datab => \inst15|op_4~0_combout\,
	datac => \inst15|op_10~2_combout\,
	datad => \inst15|op_10~3_combout\,
	combout => \inst15|op_10~4_combout\);

-- Location: LCCOMB_X6_Y18_N12
\inst15|op_10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~5_combout\ = (\inst15|op_10~1_combout\ & \inst15|op_10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|op_10~1_combout\,
	datad => \inst15|op_10~4_combout\,
	combout => \inst15|op_10~5_combout\);

-- Location: LCCOMB_X7_Y19_N4
\inst15|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~0_combout\ = (\inst15|clk_count\(4) & ((\inst15|clk_count\(3)) # ((\inst15|clk_count\(2) & \inst15|clk_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(1),
	datac => \inst15|clk_count\(3),
	datad => \inst15|clk_count\(4),
	combout => \inst15|op_6~0_combout\);

-- Location: LCCOMB_X8_Y19_N22
\inst15|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~2_combout\ = (!\inst15|clk_count\(5) & (!\inst15|clk_count\(7) & (!\inst15|op_6~0_combout\ & !\inst15|clk_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(5),
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_6~0_combout\,
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_6~2_combout\);

-- Location: LCCOMB_X8_Y19_N8
\inst15|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~1_combout\ = (!\inst15|clk_count\(10) & (((!\inst15|clk_count\(6) & !\inst15|clk_count\(7))) # (!\inst15|op_4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(6),
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_4~4_combout\,
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_6~1_combout\);

-- Location: LCCOMB_X8_Y19_N14
\inst15|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~4_combout\ = (\inst15|_~4_combout\ & ((\inst15|op_6~2_combout\) # ((\inst15|op_6~1_combout\) # (!\inst15|op_6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~2_combout\,
	datab => \inst15|op_6~3_combout\,
	datac => \inst15|op_6~1_combout\,
	datad => \inst15|_~4_combout\,
	combout => \inst15|op_6~4_combout\);

-- Location: LCCOMB_X8_Y18_N12
\inst15|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~2_combout\ = (!\inst15|clk_count\(12) & (((!\inst15|clk_count\(10)) # (!\inst15|clk_count\(11))) # (!\inst15|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datab => \inst15|clk_count\(9),
	datac => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_7~2_combout\);

-- Location: LCCOMB_X8_Y18_N16
\inst15|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~0_combout\ = (\inst15|clk_count\(7) & ((\inst15|op_1~2_combout\) # (\inst15|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_1~2_combout\,
	datad => \inst15|clk_count\(5),
	combout => \inst15|op_7~0_combout\);

-- Location: LCCOMB_X8_Y18_N26
\inst15|op_7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~1_combout\ = (!\inst15|clk_count\(8) & (!\inst15|clk_count\(12) & ((!\inst15|clk_count\(6)) # (!\inst15|op_7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|op_7~0_combout\,
	datac => \inst15|clk_count\(6),
	datad => \inst15|clk_count\(12),
	combout => \inst15|op_7~1_combout\);

-- Location: LCCOMB_X9_Y18_N14
\inst15|op_7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~3_combout\ = (\inst15|_~1_combout\ & ((\inst15|op_7~2_combout\) # ((\inst15|op_7~1_combout\) # (!\inst15|clk_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_7~2_combout\,
	datab => \inst15|clk_count\(13),
	datac => \inst15|op_7~1_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst15|op_7~3_combout\);

-- Location: LCCOMB_X8_Y18_N20
\inst15|op_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~3_combout\ = (!\inst15|clk_count\(11) & (((!\inst15|clk_count\(9)) # (!\inst15|clk_count\(10))) # (!\inst15|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(10),
	datac => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(9),
	combout => \inst15|op_5~3_combout\);

-- Location: LCCOMB_X8_Y18_N18
\inst15|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~2_combout\ = (!\inst15|clk_count\(11) & (!\inst15|clk_count\(7) & ((\inst15|op_5~1_combout\) # (!\inst15|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_5~1_combout\,
	datab => \inst15|clk_count\(11),
	datac => \inst15|op_5~0_combout\,
	datad => \inst15|clk_count\(7),
	combout => \inst15|op_5~2_combout\);

-- Location: LCCOMB_X8_Y18_N10
\inst15|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~4_combout\ = ((\inst15|op_5~3_combout\) # (\inst15|op_5~2_combout\)) # (!\inst15|clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datab => \inst15|op_5~3_combout\,
	datad => \inst15|op_5~2_combout\,
	combout => \inst15|op_5~4_combout\);

-- Location: LCCOMB_X9_Y18_N4
\inst15|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~10_combout\ = (\inst15|op_8~2_combout\ & (!\inst15|op_7~3_combout\ & (!\inst15|op_6~4_combout\ & \inst15|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_8~2_combout\,
	datab => \inst15|op_7~3_combout\,
	datac => \inst15|op_6~4_combout\,
	datad => \inst15|_~9_combout\,
	combout => \inst15|_~10_combout\);

-- Location: LCCOMB_X9_Y18_N10
\inst15|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~13_combout\ = (!\inst15|op_8~2_combout\ & (\inst15|_~11_combout\ & (\inst15|op_10~5_combout\ & !\inst15|op_9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_8~2_combout\,
	datab => \inst15|_~11_combout\,
	datac => \inst15|op_10~5_combout\,
	datad => \inst15|op_9~3_combout\,
	combout => \inst15|_~13_combout\);

-- Location: LCCOMB_X9_Y18_N0
\inst15|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|e~0_combout\ = (!\inst15|_~10_combout\ & (!\inst15|_~13_combout\ & ((!\inst15|_~9_combout\) # (!\inst15|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~4_combout\,
	datab => \inst15|_~9_combout\,
	datac => \inst15|_~10_combout\,
	datad => \inst15|_~13_combout\,
	combout => \inst15|e~0_combout\);

-- Location: LCCOMB_X9_Y18_N26
\inst15|INICIALIZACAO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~1_combout\ = (\inst15|op_7~3_combout\) # ((\inst15|op_10~1_combout\ & (!\inst15|_~12_combout\ & !\inst15|op_8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~1_combout\,
	datab => \inst15|_~12_combout\,
	datac => \inst15|op_7~3_combout\,
	datad => \inst15|op_8~2_combout\,
	combout => \inst15|INICIALIZACAO~1_combout\);

-- Location: LCCOMB_X8_Y18_N8
\inst15|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~2_combout\ = (((!\inst15|clk_count\(7)) # (!\inst15|op_5~0_combout\)) # (!\inst15|clk_count\(9))) # (!\inst15|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(9),
	datac => \inst15|op_5~0_combout\,
	datad => \inst15|clk_count\(7),
	combout => \inst15|op_4~2_combout\);

-- Location: LCCOMB_X8_Y18_N6
\inst15|op_4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~3_combout\ = (\inst15|op_4~0_combout\ & (\inst15|_~1_combout\ & ((\inst15|op_4~1_combout\) # (\inst15|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_4~1_combout\,
	datab => \inst15|op_4~0_combout\,
	datac => \inst15|op_4~2_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst15|op_4~3_combout\);

-- Location: LCCOMB_X8_Y18_N14
\inst15|INICIALIZACAO~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~2_combout\ = (!\inst15|op_4~3_combout\ & ((!\inst15|_~4_combout\) # (!\inst15|op_5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_5~4_combout\,
	datab => \inst15|_~4_combout\,
	datad => \inst15|op_4~3_combout\,
	combout => \inst15|INICIALIZACAO~2_combout\);

-- Location: LCCOMB_X9_Y18_N12
\inst15|INICIALIZACAO~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~3_combout\ = ((!\inst15|op_6~4_combout\ & \inst15|INICIALIZACAO~1_combout\)) # (!\inst15|INICIALIZACAO~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~4_combout\,
	datac => \inst15|INICIALIZACAO~1_combout\,
	datad => \inst15|INICIALIZACAO~2_combout\,
	combout => \inst15|INICIALIZACAO~3_combout\);

-- Location: LCCOMB_X7_Y18_N22
\inst15|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~4_combout\ = ((\inst15|op_1~3_combout\ & ((!\inst15|clk_count\(18)) # (!\inst15|clk_count\(19))))) # (!\inst15|clk_count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_1~3_combout\,
	datab => \inst15|clk_count\(22),
	datac => \inst15|clk_count\(19),
	datad => \inst15|clk_count\(18),
	combout => \inst15|op_1~4_combout\);

-- Location: LCCOMB_X6_Y18_N8
\inst15|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~16_combout\ = (!\inst15|clk_count\(17) & (!\inst15|clk_count\(16) & !\inst15|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(17),
	datac => \inst15|clk_count\(16),
	datad => \inst15|clk_count\(15),
	combout => \inst15|_~16_combout\);

-- Location: LCCOMB_X6_Y18_N22
\inst15|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~5_combout\ = ((!\inst15|clk_count\(13) & (!\inst15|clk_count\(11) & !\inst15|clk_count\(12)))) # (!\inst15|clk_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|clk_count\(11),
	datac => \inst15|clk_count\(12),
	datad => \inst15|clk_count\(14),
	combout => \inst15|op_1~5_combout\);

-- Location: LCCOMB_X7_Y20_N14
\inst15|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~8_combout\ = (\inst15|op_1~5_combout\) # ((\inst15|op_4~5_combout\ & ((!\inst15|clk_count\(8)) # (!\inst15|clk_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_4~5_combout\,
	datab => \inst15|clk_count\(9),
	datac => \inst15|clk_count\(8),
	datad => \inst15|op_1~5_combout\,
	combout => \inst15|op_1~8_combout\);

-- Location: LCCOMB_X7_Y20_N20
\inst15|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~6_combout\ = (\inst15|op_1~8_combout\) # ((\inst15|op_9~1_combout\ & ((!\inst15|clk_count\(5)) # (!\inst15|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_1~2_combout\,
	datab => \inst15|clk_count\(5),
	datac => \inst15|op_1~8_combout\,
	datad => \inst15|op_9~1_combout\,
	combout => \inst15|op_1~6_combout\);

-- Location: LCCOMB_X7_Y20_N18
\inst15|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~7_combout\ = (\inst15|op_1~4_combout\) # ((\inst15|op_1~3_combout\ & (\inst15|_~16_combout\ & \inst15|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_1~3_combout\,
	datab => \inst15|op_1~4_combout\,
	datac => \inst15|_~16_combout\,
	datad => \inst15|op_1~6_combout\,
	combout => \inst15|op_1~7_combout\);

-- Location: LCCOMB_X7_Y20_N6
\inst15|ENERGIZACAO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|ENERGIZACAO~0_combout\ = (\inst15|ENERGIZACAO~q\) # (!\inst15|op_1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|ENERGIZACAO~q\,
	datad => \inst15|op_1~7_combout\,
	combout => \inst15|ENERGIZACAO~0_combout\);

-- Location: FF_X7_Y20_N7
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

-- Location: LCCOMB_X8_Y20_N18
\inst15|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~20_combout\ = (!\inst15|ENERGIZACAO~q\ & !\inst15|op_1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|ENERGIZACAO~q\,
	datad => \inst15|op_1~7_combout\,
	combout => \inst15|_~20_combout\);

-- Location: LCCOMB_X9_Y18_N16
\inst15|INICIALIZACAO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~0_combout\ = (\inst15|op_10~1_combout\ & (((\inst15|op_11~4_combout\) # (\inst15|op_10~4_combout\)) # (!\inst15|_~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~1_combout\,
	datab => \inst15|_~12_combout\,
	datac => \inst15|op_11~4_combout\,
	datad => \inst15|op_10~4_combout\,
	combout => \inst15|INICIALIZACAO~0_combout\);

-- Location: LCCOMB_X9_Y18_N22
\inst15|INICIALIZACAO~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~4_combout\ = (\inst15|_~20_combout\) # ((\inst15|INICIALIZACAO~q\ & ((\inst15|INICIALIZACAO~3_combout\) # (\inst15|INICIALIZACAO~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|INICIALIZACAO~3_combout\,
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|_~20_combout\,
	datad => \inst15|INICIALIZACAO~0_combout\,
	combout => \inst15|INICIALIZACAO~4_combout\);

-- Location: LCCOMB_X9_Y18_N28
\inst15|op_11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~5_combout\ = (\inst15|op_10~1_combout\ & \inst15|op_11~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~1_combout\,
	datac => \inst15|op_11~4_combout\,
	combout => \inst15|op_11~5_combout\);

-- Location: LCCOMB_X9_Y18_N20
\inst15|INICIALIZACAO~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~5_combout\ = ((\inst15|INICIALIZACAO~4_combout\) # ((\inst15|_~21_combout\ & \inst15|op_11~5_combout\))) # (!\inst15|e~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~21_combout\,
	datab => \inst15|e~0_combout\,
	datac => \inst15|INICIALIZACAO~4_combout\,
	datad => \inst15|op_11~5_combout\,
	combout => \inst15|INICIALIZACAO~5_combout\);

-- Location: FF_X9_Y18_N21
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

-- Location: LCCOMB_X8_Y18_N28
\inst15|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~9_combout\ = (\inst15|INICIALIZACAO~q\ & (!\inst15|op_4~3_combout\ & ((!\inst15|_~4_combout\) # (!\inst15|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_5~4_combout\,
	datab => \inst15|_~4_combout\,
	datac => \inst15|INICIALIZACAO~q\,
	datad => \inst15|op_4~3_combout\,
	combout => \inst15|_~9_combout\);

-- Location: LCCOMB_X9_Y18_N18
\inst15|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~11_combout\ = (!\inst15|op_6~4_combout\ & (!\inst15|op_7~3_combout\ & \inst15|_~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~4_combout\,
	datac => \inst15|op_7~3_combout\,
	datad => \inst15|_~9_combout\,
	combout => \inst15|_~11_combout\);

-- Location: LCCOMB_X9_Y18_N30
\inst15|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~21_combout\ = (!\inst15|op_8~2_combout\ & (!\inst15|op_9~3_combout\ & (!\inst15|op_10~5_combout\ & \inst15|_~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_8~2_combout\,
	datab => \inst15|op_9~3_combout\,
	datac => \inst15|op_10~5_combout\,
	datad => \inst15|_~11_combout\,
	combout => \inst15|_~21_combout\);

-- Location: LCCOMB_X9_Y18_N8
\inst15|PRONTO~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|PRONTO~3_combout\ = (\inst14|lcd_enable~q\ & (((\inst15|op_11~5_combout\) # (!\inst15|_~21_combout\)))) # (!\inst14|lcd_enable~q\ & (!\inst15|PRONTO~q\ & ((\inst15|op_11~5_combout\) # (!\inst15|_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_enable~q\,
	datab => \inst15|PRONTO~q\,
	datac => \inst15|_~21_combout\,
	datad => \inst15|op_11~5_combout\,
	combout => \inst15|PRONTO~3_combout\);

-- Location: FF_X9_Y18_N9
\inst15|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|PRONTO~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|busy~q\);

-- Location: LCCOMB_X10_Y17_N24
\inst14|lcd_bus[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~10_combout\ = (!\inst14|lcd_enable~q\ & !\inst15|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_enable~q\,
	datac => \inst15|busy~q\,
	combout => \inst14|lcd_bus[2]~10_combout\);

-- Location: LCCOMB_X10_Y17_N8
\inst14|lcd_enable~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_enable~feeder_combout\ = \inst14|lcd_bus[2]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|lcd_bus[2]~10_combout\,
	combout => \inst14|lcd_enable~feeder_combout\);

-- Location: FF_X10_Y17_N9
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

-- Location: LCCOMB_X8_Y20_N28
\inst15|PRONTO~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|PRONTO~2_combout\ = (\inst14|lcd_enable~q\ & (((!\inst15|op_12~1_combout\ & \inst15|ENVIAR~q\)))) # (!\inst14|lcd_enable~q\ & ((\inst15|PRONTO~q\) # ((!\inst15|op_12~1_combout\ & \inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_enable~q\,
	datab => \inst15|PRONTO~q\,
	datac => \inst15|op_12~1_combout\,
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|PRONTO~2_combout\);

-- Location: LCCOMB_X9_Y18_N6
\inst15|PRONTO~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|PRONTO~4_combout\ = (\inst15|PRONTO~2_combout\) # ((\inst15|_~21_combout\ & ((!\inst15|op_11~4_combout\) # (!\inst15|op_10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~1_combout\,
	datab => \inst15|op_11~4_combout\,
	datac => \inst15|_~21_combout\,
	datad => \inst15|PRONTO~2_combout\,
	combout => \inst15|PRONTO~4_combout\);

-- Location: FF_X9_Y18_N7
\inst15|PRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|PRONTO~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PRONTO~q\);

-- Location: LCCOMB_X8_Y20_N12
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

-- Location: FF_X8_Y20_N13
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

-- Location: LCCOMB_X7_Y20_N8
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

-- Location: LCCOMB_X7_Y19_N0
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

-- Location: FF_X7_Y19_N1
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

-- Location: LCCOMB_X7_Y19_N12
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

-- Location: FF_X7_Y19_N13
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

-- Location: LCCOMB_X7_Y19_N14
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

-- Location: FF_X7_Y19_N15
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

-- Location: LCCOMB_X7_Y19_N16
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

-- Location: FF_X7_Y19_N17
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

-- Location: LCCOMB_X7_Y19_N18
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

-- Location: FF_X7_Y19_N19
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

-- Location: LCCOMB_X7_Y19_N20
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

-- Location: FF_X7_Y19_N21
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

-- Location: LCCOMB_X7_Y19_N22
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

-- Location: FF_X7_Y19_N23
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

-- Location: LCCOMB_X7_Y19_N24
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

-- Location: FF_X7_Y19_N25
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

-- Location: LCCOMB_X7_Y19_N26
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

-- Location: FF_X7_Y19_N27
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

-- Location: LCCOMB_X7_Y19_N28
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

-- Location: FF_X7_Y19_N29
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

-- Location: FF_X7_Y19_N31
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

-- Location: LCCOMB_X8_Y19_N10
\inst15|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~3_combout\ = (!\inst15|clk_count\(11) & (!\inst15|clk_count\(12) & \inst15|ENVIAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(11),
	datac => \inst15|clk_count\(12),
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|_~3_combout\);

-- Location: LCCOMB_X8_Y19_N12
\inst15|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~5_combout\ = (\inst15|clk_count\(3)) # ((\inst15|clk_count\(4)) # (\inst15|clk_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(3),
	datac => \inst15|clk_count\(4),
	datad => \inst15|clk_count\(2),
	combout => \inst15|_~5_combout\);

-- Location: LCCOMB_X8_Y19_N26
\inst15|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~6_combout\ = (\inst15|op_5~0_combout\ & ((\inst15|clk_count\(8) & ((\inst15|op_6~0_combout\))) # (!\inst15|clk_count\(8) & (\inst15|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~5_combout\,
	datab => \inst15|op_6~0_combout\,
	datac => \inst15|op_5~0_combout\,
	datad => \inst15|clk_count\(8),
	combout => \inst15|_~6_combout\);

-- Location: LCCOMB_X8_Y19_N20
\inst15|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~7_combout\ = (\inst15|clk_count\(8) & (((\inst15|_~6_combout\) # (\inst15|clk_count\(7))) # (!\inst15|clk_count\(10)))) # (!\inst15|clk_count\(8) & (!\inst15|clk_count\(10) & ((\inst15|_~6_combout\) # (\inst15|clk_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(10),
	datac => \inst15|_~6_combout\,
	datad => \inst15|clk_count\(7),
	combout => \inst15|_~7_combout\);

-- Location: LCCOMB_X8_Y19_N18
\inst15|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~8_combout\ = (\inst15|_~4_combout\ & (\inst15|clk_count\(10) $ (((\inst15|clk_count\(9)) # (\inst15|_~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~4_combout\,
	datab => \inst15|clk_count\(10),
	datac => \inst15|clk_count\(9),
	datad => \inst15|_~7_combout\,
	combout => \inst15|_~8_combout\);

-- Location: LCCOMB_X8_Y19_N24
\inst15|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~2_combout\ = (\inst15|INICIALIZACAO~q\ & \inst15|op_4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|INICIALIZACAO~q\,
	datad => \inst15|op_4~3_combout\,
	combout => \inst15|_~2_combout\);

-- Location: LCCOMB_X8_Y19_N0
\inst15|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|e~1_combout\ = ((\inst15|_~2_combout\) # ((\inst15|_~3_combout\ & \inst15|_~8_combout\))) # (!\inst15|e~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~3_combout\,
	datab => \inst15|_~8_combout\,
	datac => \inst15|e~0_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst15|e~1_combout\);

-- Location: FF_X8_Y19_N1
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

-- Location: LCCOMB_X8_Y20_N30
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

-- Location: FF_X12_Y17_N15
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_06~q\);

-- Location: FF_X12_Y17_N19
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_07~q\);

-- Location: FF_X12_Y17_N23
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_08~q\);

-- Location: FF_X10_Y15_N15
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_09~q\);

-- Location: LCCOMB_X12_Y17_N2
\inst14|char_10~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_10~feeder_combout\ = \inst14|char_09~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_09~q\,
	combout => \inst14|char_10~feeder_combout\);

-- Location: FF_X12_Y17_N3
\inst14|char_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_10~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_10~q\);

-- Location: FF_X11_Y15_N15
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_11~q\);

-- Location: FF_X11_Y15_N1
\inst14|char_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_11~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_12~q\);

-- Location: FF_X11_Y17_N21
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_13~q\);

-- Location: LCCOMB_X11_Y18_N8
\inst14|char_14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_14~feeder_combout\ = \inst14|char_13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_13~q\,
	combout => \inst14|char_14~feeder_combout\);

-- Location: FF_X11_Y18_N9
\inst14|char_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_14~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_14~q\);

-- Location: LCCOMB_X11_Y17_N22
\inst14|char_15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_15~feeder_combout\ = \inst14|char_14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_14~q\,
	combout => \inst14|char_15~feeder_combout\);

-- Location: FF_X11_Y17_N23
\inst14|char_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_15~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_15~q\);

-- Location: FF_X11_Y17_N25
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_16~q\);

-- Location: LCCOMB_X11_Y17_N4
\inst14|char_17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_17~feeder_combout\ = \inst14|char_16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_16~q\,
	combout => \inst14|char_17~feeder_combout\);

-- Location: FF_X11_Y17_N5
\inst14|char_17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_17~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_17~q\);

-- Location: LCCOMB_X10_Y17_N26
\inst14|char_18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_18~feeder_combout\ = \inst14|char_17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_17~q\,
	combout => \inst14|char_18~feeder_combout\);

-- Location: FF_X10_Y17_N27
\inst14|char_18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_18~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_18~q\);

-- Location: LCCOMB_X11_Y17_N14
\inst14|char_19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_19~feeder_combout\ = \inst14|char_18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|char_18~q\,
	combout => \inst14|char_19~feeder_combout\);

-- Location: FF_X11_Y17_N15
\inst14|char_19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_19~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_19~q\);

-- Location: FF_X11_Y17_N17
\inst14|char_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_19~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_20~q\);

-- Location: FF_X11_Y17_N31
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_21~q\);

-- Location: FF_X10_Y15_N11
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_22~q\);

-- Location: LCCOMB_X14_Y12_N10
\inst14|char_23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_23~feeder_combout\ = \inst14|char_22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_22~q\,
	combout => \inst14|char_23~feeder_combout\);

-- Location: FF_X14_Y12_N11
\inst14|char_23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_23~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_23~q\);

-- Location: FF_X13_Y15_N23
\inst14|char_24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_23~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_24~q\);

-- Location: LCCOMB_X14_Y12_N4
\inst14|char_25~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_25~feeder_combout\ = \inst14|char_24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_24~q\,
	combout => \inst14|char_25~feeder_combout\);

-- Location: FF_X14_Y12_N5
\inst14|char_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_25~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_25~q\);

-- Location: FF_X14_Y12_N7
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_26~q\);

-- Location: FF_X12_Y15_N31
\inst14|char_27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_26~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_27~q\);

-- Location: FF_X12_Y15_N15
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_28~q\);

-- Location: FF_X12_Y15_N17
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_29~q\);

-- Location: FF_X11_Y17_N7
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_30~q\);

-- Location: LCCOMB_X11_Y17_N28
\inst14|char_31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_31~feeder_combout\ = \inst14|char_30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_30~q\,
	combout => \inst14|char_31~feeder_combout\);

-- Location: FF_X11_Y17_N29
\inst14|char_31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_31~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_31~q\);

-- Location: FF_X11_Y17_N19
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_32~q\);

-- Location: LCCOMB_X10_Y17_N14
\inst14|char_33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_33~feeder_combout\ = \inst14|char_32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_32~q\,
	combout => \inst14|char_33~feeder_combout\);

-- Location: FF_X10_Y17_N15
\inst14|char_33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_33~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_33~q\);

-- Location: LCCOMB_X10_Y17_N12
\inst14|char_00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_00~0_combout\ = !\inst14|char_33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_33~q\,
	combout => \inst14|char_00~0_combout\);

-- Location: FF_X10_Y17_N13
\inst14|char_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_00~0_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_00~q\);

-- Location: LCCOMB_X10_Y17_N16
\inst14|char_01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_01~0_combout\ = !\inst14|char_00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_00~q\,
	combout => \inst14|char_01~0_combout\);

-- Location: FF_X10_Y17_N17
\inst14|char_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_01~0_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_01~q\);

-- Location: FF_X11_Y17_N11
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_02~q\);

-- Location: LCCOMB_X11_Y17_N12
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

-- Location: FF_X11_Y17_N13
\inst14|char_03\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_03~feeder_combout\,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_03~q\);

-- Location: FF_X11_Y17_N3
\inst14|char_04\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_03~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_04~q\);

-- Location: FF_X12_Y17_N31
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
	ena => \inst14|lcd_bus[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_05~q\);

-- Location: LCCOMB_X12_Y17_N20
\inst14|lcd_bus[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~11_combout\ = (\inst14|char_05~q\) # ((\inst14|char_09~q\) # ((\inst14|char_08~q\) # (\inst14|char_06~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_05~q\,
	datab => \inst14|char_09~q\,
	datac => \inst14|char_08~q\,
	datad => \inst14|char_06~q\,
	combout => \inst14|lcd_bus[9]~11_combout\);

-- Location: LCCOMB_X11_Y17_N30
\inst14|lcd_bus[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~19_combout\ = (!\inst14|char_18~q\ & (!\inst14|char_19~q\ & (!\inst14|char_21~q\ & !\inst14|char_20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_18~q\,
	datab => \inst14|char_19~q\,
	datac => \inst14|char_21~q\,
	datad => \inst14|char_20~q\,
	combout => \inst14|lcd_bus[9]~19_combout\);

-- Location: LCCOMB_X11_Y17_N20
\inst14|lcd_bus[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~18_combout\ = (!\inst14|char_15~q\ & (!\inst14|char_16~q\ & (!\inst14|char_13~q\ & !\inst14|char_14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_15~q\,
	datab => \inst14|char_16~q\,
	datac => \inst14|char_13~q\,
	datad => \inst14|char_14~q\,
	combout => \inst14|lcd_bus[9]~18_combout\);

-- Location: LCCOMB_X11_Y17_N6
\inst14|lcd_bus[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~14_combout\ = (!\inst14|char_33~q\ & (!\inst14|char_31~q\ & (!\inst14|char_30~q\ & !\inst14|char_32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_33~q\,
	datab => \inst14|char_31~q\,
	datac => \inst14|char_30~q\,
	datad => \inst14|char_32~q\,
	combout => \inst14|lcd_bus[9]~14_combout\);

-- Location: LCCOMB_X11_Y17_N2
\inst14|lcd_bus[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~16_combout\ = (!\inst14|char_04~q\ & !\inst14|char_03~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|char_04~q\,
	datad => \inst14|char_03~q\,
	combout => \inst14|lcd_bus[9]~16_combout\);

-- Location: LCCOMB_X12_Y17_N18
\inst14|lcd_bus[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~15_combout\ = (!\inst14|char_27~q\ & (!\inst14|char_24~q\ & (!\inst14|char_07~q\ & !\inst14|char_10~q\)))

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
	combout => \inst14|lcd_bus[3]~15_combout\);

-- Location: LCCOMB_X11_Y17_N10
\inst14|lcd_bus[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~17_combout\ = (!\inst14|char_01~q\ & (\inst14|lcd_bus[9]~16_combout\ & (!\inst14|char_02~q\ & \inst14|lcd_bus[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_01~q\,
	datab => \inst14|lcd_bus[9]~16_combout\,
	datac => \inst14|char_02~q\,
	datad => \inst14|lcd_bus[3]~15_combout\,
	combout => \inst14|lcd_bus[9]~17_combout\);

-- Location: LCCOMB_X11_Y17_N0
\inst14|lcd_bus[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~20_combout\ = (\inst14|lcd_bus[9]~19_combout\ & (\inst14|lcd_bus[9]~18_combout\ & (\inst14|lcd_bus[9]~14_combout\ & \inst14|lcd_bus[9]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[9]~19_combout\,
	datab => \inst14|lcd_bus[9]~18_combout\,
	datac => \inst14|lcd_bus[9]~14_combout\,
	datad => \inst14|lcd_bus[9]~17_combout\,
	combout => \inst14|lcd_bus[9]~20_combout\);

-- Location: LCCOMB_X12_Y15_N4
\inst14|lcd_bus[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~13_combout\ = (\inst14|char_25~q\) # ((\inst14|char_26~q\) # ((\inst14|char_28~q\) # (\inst14|char_29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_25~q\,
	datab => \inst14|char_26~q\,
	datac => \inst14|char_28~q\,
	datad => \inst14|char_29~q\,
	combout => \inst14|lcd_bus[9]~13_combout\);

-- Location: LCCOMB_X11_Y15_N26
\inst14|lcd_bus[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~12_combout\ = (\inst14|char_22~q\) # ((\inst14|char_11~q\) # ((\inst14|char_12~q\) # (\inst14|char_23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_22~q\,
	datab => \inst14|char_11~q\,
	datac => \inst14|char_12~q\,
	datad => \inst14|char_23~q\,
	combout => \inst14|lcd_bus[9]~12_combout\);

-- Location: LCCOMB_X11_Y17_N26
\inst14|lcd_bus[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~21_combout\ = (\inst14|lcd_bus[9]~11_combout\) # (((\inst14|lcd_bus[9]~13_combout\) # (\inst14|lcd_bus[9]~12_combout\)) # (!\inst14|lcd_bus[9]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[9]~11_combout\,
	datab => \inst14|lcd_bus[9]~20_combout\,
	datac => \inst14|lcd_bus[9]~13_combout\,
	datad => \inst14|lcd_bus[9]~12_combout\,
	combout => \inst14|lcd_bus[9]~21_combout\);

-- Location: LCCOMB_X10_Y17_N18
\inst14|lcd_bus[9]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~93_combout\ = (!\inst14|lcd_enable~q\ & (!\inst15|busy~q\ & \inst14|lcd_bus[9]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_enable~q\,
	datac => \inst15|busy~q\,
	datad => \inst14|lcd_bus[9]~21_combout\,
	combout => \inst14|lcd_bus[9]~93_combout\);

-- Location: FF_X10_Y17_N19
\inst14|lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[9]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(9));

-- Location: LCCOMB_X8_Y20_N4
\inst15|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|rs~0_combout\ = (\inst15|_~14_combout\ & ((\inst14|lcd_bus\(9)) # ((\inst15|rs~q\ & \inst15|ENVIAR~q\)))) # (!\inst15|_~14_combout\ & (((\inst15|rs~q\ & \inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~14_combout\,
	datab => \inst14|lcd_bus\(9),
	datac => \inst15|rs~q\,
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|rs~0_combout\);

-- Location: FF_X8_Y20_N5
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

-- Location: LCCOMB_X12_Y20_N6
\inst4|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|_~0_combout\ = (!\inst4|divisor|count\(1) & !\inst4|divisor|op_1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|divisor|count\(1),
	datad => \inst4|divisor|op_1~9_combout\,
	combout => \inst4|divisor|_~0_combout\);

-- Location: FF_X12_Y20_N7
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

-- Location: LCCOMB_X12_Y20_N16
\inst4|divisor|count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[2]~33_combout\ = (\inst4|divisor|count\(1) & (\inst4|divisor|count\(2) $ (VCC))) # (!\inst4|divisor|count\(1) & (\inst4|divisor|count\(2) & VCC))
-- \inst4|divisor|count[2]~34\ = CARRY((\inst4|divisor|count\(1) & \inst4|divisor|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(1),
	datab => \inst4|divisor|count\(2),
	datad => VCC,
	combout => \inst4|divisor|count[2]~33_combout\,
	cout => \inst4|divisor|count[2]~34\);

-- Location: FF_X12_Y20_N17
\inst4|divisor|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[2]~33_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(2));

-- Location: LCCOMB_X12_Y20_N18
\inst4|divisor|count[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[3]~35_combout\ = (\inst4|divisor|count\(3) & (!\inst4|divisor|count[2]~34\)) # (!\inst4|divisor|count\(3) & ((\inst4|divisor|count[2]~34\) # (GND)))
-- \inst4|divisor|count[3]~36\ = CARRY((!\inst4|divisor|count[2]~34\) # (!\inst4|divisor|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(3),
	datad => VCC,
	cin => \inst4|divisor|count[2]~34\,
	combout => \inst4|divisor|count[3]~35_combout\,
	cout => \inst4|divisor|count[3]~36\);

-- Location: FF_X12_Y20_N19
\inst4|divisor|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[3]~35_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(3));

-- Location: LCCOMB_X12_Y20_N20
\inst4|divisor|count[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[4]~37_combout\ = (\inst4|divisor|count\(4) & (\inst4|divisor|count[3]~36\ $ (GND))) # (!\inst4|divisor|count\(4) & (!\inst4|divisor|count[3]~36\ & VCC))
-- \inst4|divisor|count[4]~38\ = CARRY((\inst4|divisor|count\(4) & !\inst4|divisor|count[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(4),
	datad => VCC,
	cin => \inst4|divisor|count[3]~36\,
	combout => \inst4|divisor|count[4]~37_combout\,
	cout => \inst4|divisor|count[4]~38\);

-- Location: FF_X12_Y20_N21
\inst4|divisor|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[4]~37_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(4));

-- Location: LCCOMB_X12_Y20_N22
\inst4|divisor|count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[5]~39_combout\ = (\inst4|divisor|count\(5) & (!\inst4|divisor|count[4]~38\)) # (!\inst4|divisor|count\(5) & ((\inst4|divisor|count[4]~38\) # (GND)))
-- \inst4|divisor|count[5]~40\ = CARRY((!\inst4|divisor|count[4]~38\) # (!\inst4|divisor|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(5),
	datad => VCC,
	cin => \inst4|divisor|count[4]~38\,
	combout => \inst4|divisor|count[5]~39_combout\,
	cout => \inst4|divisor|count[5]~40\);

-- Location: FF_X12_Y20_N23
\inst4|divisor|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[5]~39_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(5));

-- Location: LCCOMB_X12_Y20_N24
\inst4|divisor|count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[6]~41_combout\ = (\inst4|divisor|count\(6) & (\inst4|divisor|count[5]~40\ $ (GND))) # (!\inst4|divisor|count\(6) & (!\inst4|divisor|count[5]~40\ & VCC))
-- \inst4|divisor|count[6]~42\ = CARRY((\inst4|divisor|count\(6) & !\inst4|divisor|count[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(6),
	datad => VCC,
	cin => \inst4|divisor|count[5]~40\,
	combout => \inst4|divisor|count[6]~41_combout\,
	cout => \inst4|divisor|count[6]~42\);

-- Location: FF_X12_Y20_N25
\inst4|divisor|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[6]~41_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(6));

-- Location: LCCOMB_X12_Y20_N26
\inst4|divisor|count[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[7]~43_combout\ = (\inst4|divisor|count\(7) & (!\inst4|divisor|count[6]~42\)) # (!\inst4|divisor|count\(7) & ((\inst4|divisor|count[6]~42\) # (GND)))
-- \inst4|divisor|count[7]~44\ = CARRY((!\inst4|divisor|count[6]~42\) # (!\inst4|divisor|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(7),
	datad => VCC,
	cin => \inst4|divisor|count[6]~42\,
	combout => \inst4|divisor|count[7]~43_combout\,
	cout => \inst4|divisor|count[7]~44\);

-- Location: FF_X12_Y20_N27
\inst4|divisor|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[7]~43_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(7));

-- Location: LCCOMB_X12_Y20_N28
\inst4|divisor|count[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[8]~45_combout\ = (\inst4|divisor|count\(8) & (\inst4|divisor|count[7]~44\ $ (GND))) # (!\inst4|divisor|count\(8) & (!\inst4|divisor|count[7]~44\ & VCC))
-- \inst4|divisor|count[8]~46\ = CARRY((\inst4|divisor|count\(8) & !\inst4|divisor|count[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(8),
	datad => VCC,
	cin => \inst4|divisor|count[7]~44\,
	combout => \inst4|divisor|count[8]~45_combout\,
	cout => \inst4|divisor|count[8]~46\);

-- Location: FF_X12_Y20_N29
\inst4|divisor|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[8]~45_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(8));

-- Location: LCCOMB_X12_Y20_N30
\inst4|divisor|count[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[9]~47_combout\ = (\inst4|divisor|count\(9) & (!\inst4|divisor|count[8]~46\)) # (!\inst4|divisor|count\(9) & ((\inst4|divisor|count[8]~46\) # (GND)))
-- \inst4|divisor|count[9]~48\ = CARRY((!\inst4|divisor|count[8]~46\) # (!\inst4|divisor|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(9),
	datad => VCC,
	cin => \inst4|divisor|count[8]~46\,
	combout => \inst4|divisor|count[9]~47_combout\,
	cout => \inst4|divisor|count[9]~48\);

-- Location: FF_X12_Y20_N31
\inst4|divisor|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[9]~47_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(9));

-- Location: LCCOMB_X12_Y19_N0
\inst4|divisor|count[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[10]~49_combout\ = (\inst4|divisor|count\(10) & (\inst4|divisor|count[9]~48\ $ (GND))) # (!\inst4|divisor|count\(10) & (!\inst4|divisor|count[9]~48\ & VCC))
-- \inst4|divisor|count[10]~50\ = CARRY((\inst4|divisor|count\(10) & !\inst4|divisor|count[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(10),
	datad => VCC,
	cin => \inst4|divisor|count[9]~48\,
	combout => \inst4|divisor|count[10]~49_combout\,
	cout => \inst4|divisor|count[10]~50\);

-- Location: FF_X12_Y19_N1
\inst4|divisor|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[10]~49_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(10));

-- Location: LCCOMB_X12_Y19_N2
\inst4|divisor|count[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[11]~51_combout\ = (\inst4|divisor|count\(11) & (!\inst4|divisor|count[10]~50\)) # (!\inst4|divisor|count\(11) & ((\inst4|divisor|count[10]~50\) # (GND)))
-- \inst4|divisor|count[11]~52\ = CARRY((!\inst4|divisor|count[10]~50\) # (!\inst4|divisor|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(11),
	datad => VCC,
	cin => \inst4|divisor|count[10]~50\,
	combout => \inst4|divisor|count[11]~51_combout\,
	cout => \inst4|divisor|count[11]~52\);

-- Location: FF_X12_Y19_N3
\inst4|divisor|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[11]~51_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(11));

-- Location: LCCOMB_X12_Y19_N4
\inst4|divisor|count[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[12]~53_combout\ = (\inst4|divisor|count\(12) & (\inst4|divisor|count[11]~52\ $ (GND))) # (!\inst4|divisor|count\(12) & (!\inst4|divisor|count[11]~52\ & VCC))
-- \inst4|divisor|count[12]~54\ = CARRY((\inst4|divisor|count\(12) & !\inst4|divisor|count[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(12),
	datad => VCC,
	cin => \inst4|divisor|count[11]~52\,
	combout => \inst4|divisor|count[12]~53_combout\,
	cout => \inst4|divisor|count[12]~54\);

-- Location: FF_X12_Y19_N5
\inst4|divisor|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[12]~53_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(12));

-- Location: LCCOMB_X12_Y19_N6
\inst4|divisor|count[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[13]~55_combout\ = (\inst4|divisor|count\(13) & (!\inst4|divisor|count[12]~54\)) # (!\inst4|divisor|count\(13) & ((\inst4|divisor|count[12]~54\) # (GND)))
-- \inst4|divisor|count[13]~56\ = CARRY((!\inst4|divisor|count[12]~54\) # (!\inst4|divisor|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(13),
	datad => VCC,
	cin => \inst4|divisor|count[12]~54\,
	combout => \inst4|divisor|count[13]~55_combout\,
	cout => \inst4|divisor|count[13]~56\);

-- Location: FF_X12_Y19_N7
\inst4|divisor|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[13]~55_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(13));

-- Location: LCCOMB_X12_Y19_N8
\inst4|divisor|count[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[14]~57_combout\ = (\inst4|divisor|count\(14) & (\inst4|divisor|count[13]~56\ $ (GND))) # (!\inst4|divisor|count\(14) & (!\inst4|divisor|count[13]~56\ & VCC))
-- \inst4|divisor|count[14]~58\ = CARRY((\inst4|divisor|count\(14) & !\inst4|divisor|count[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(14),
	datad => VCC,
	cin => \inst4|divisor|count[13]~56\,
	combout => \inst4|divisor|count[14]~57_combout\,
	cout => \inst4|divisor|count[14]~58\);

-- Location: FF_X12_Y19_N9
\inst4|divisor|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[14]~57_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(14));

-- Location: LCCOMB_X12_Y19_N10
\inst4|divisor|count[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[15]~59_combout\ = (\inst4|divisor|count\(15) & (!\inst4|divisor|count[14]~58\)) # (!\inst4|divisor|count\(15) & ((\inst4|divisor|count[14]~58\) # (GND)))
-- \inst4|divisor|count[15]~60\ = CARRY((!\inst4|divisor|count[14]~58\) # (!\inst4|divisor|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(15),
	datad => VCC,
	cin => \inst4|divisor|count[14]~58\,
	combout => \inst4|divisor|count[15]~59_combout\,
	cout => \inst4|divisor|count[15]~60\);

-- Location: FF_X12_Y19_N11
\inst4|divisor|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[15]~59_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(15));

-- Location: LCCOMB_X12_Y19_N12
\inst4|divisor|count[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[16]~61_combout\ = (\inst4|divisor|count\(16) & (\inst4|divisor|count[15]~60\ $ (GND))) # (!\inst4|divisor|count\(16) & (!\inst4|divisor|count[15]~60\ & VCC))
-- \inst4|divisor|count[16]~62\ = CARRY((\inst4|divisor|count\(16) & !\inst4|divisor|count[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(16),
	datad => VCC,
	cin => \inst4|divisor|count[15]~60\,
	combout => \inst4|divisor|count[16]~61_combout\,
	cout => \inst4|divisor|count[16]~62\);

-- Location: FF_X12_Y19_N13
\inst4|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[16]~61_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(16));

-- Location: LCCOMB_X12_Y19_N14
\inst4|divisor|count[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[17]~63_combout\ = (\inst4|divisor|count\(17) & (!\inst4|divisor|count[16]~62\)) # (!\inst4|divisor|count\(17) & ((\inst4|divisor|count[16]~62\) # (GND)))
-- \inst4|divisor|count[17]~64\ = CARRY((!\inst4|divisor|count[16]~62\) # (!\inst4|divisor|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(17),
	datad => VCC,
	cin => \inst4|divisor|count[16]~62\,
	combout => \inst4|divisor|count[17]~63_combout\,
	cout => \inst4|divisor|count[17]~64\);

-- Location: FF_X12_Y19_N15
\inst4|divisor|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[17]~63_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(17));

-- Location: LCCOMB_X12_Y19_N16
\inst4|divisor|count[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[18]~65_combout\ = (\inst4|divisor|count\(18) & (\inst4|divisor|count[17]~64\ $ (GND))) # (!\inst4|divisor|count\(18) & (!\inst4|divisor|count[17]~64\ & VCC))
-- \inst4|divisor|count[18]~66\ = CARRY((\inst4|divisor|count\(18) & !\inst4|divisor|count[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(18),
	datad => VCC,
	cin => \inst4|divisor|count[17]~64\,
	combout => \inst4|divisor|count[18]~65_combout\,
	cout => \inst4|divisor|count[18]~66\);

-- Location: FF_X12_Y19_N17
\inst4|divisor|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[18]~65_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(18));

-- Location: LCCOMB_X12_Y19_N18
\inst4|divisor|count[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[19]~67_combout\ = (\inst4|divisor|count\(19) & (!\inst4|divisor|count[18]~66\)) # (!\inst4|divisor|count\(19) & ((\inst4|divisor|count[18]~66\) # (GND)))
-- \inst4|divisor|count[19]~68\ = CARRY((!\inst4|divisor|count[18]~66\) # (!\inst4|divisor|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(19),
	datad => VCC,
	cin => \inst4|divisor|count[18]~66\,
	combout => \inst4|divisor|count[19]~67_combout\,
	cout => \inst4|divisor|count[19]~68\);

-- Location: FF_X12_Y19_N19
\inst4|divisor|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[19]~67_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(19));

-- Location: LCCOMB_X12_Y19_N20
\inst4|divisor|count[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[20]~69_combout\ = (\inst4|divisor|count\(20) & (\inst4|divisor|count[19]~68\ $ (GND))) # (!\inst4|divisor|count\(20) & (!\inst4|divisor|count[19]~68\ & VCC))
-- \inst4|divisor|count[20]~70\ = CARRY((\inst4|divisor|count\(20) & !\inst4|divisor|count[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(20),
	datad => VCC,
	cin => \inst4|divisor|count[19]~68\,
	combout => \inst4|divisor|count[20]~69_combout\,
	cout => \inst4|divisor|count[20]~70\);

-- Location: FF_X12_Y19_N21
\inst4|divisor|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[20]~69_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(20));

-- Location: LCCOMB_X12_Y19_N22
\inst4|divisor|count[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[21]~71_combout\ = (\inst4|divisor|count\(21) & (!\inst4|divisor|count[20]~70\)) # (!\inst4|divisor|count\(21) & ((\inst4|divisor|count[20]~70\) # (GND)))
-- \inst4|divisor|count[21]~72\ = CARRY((!\inst4|divisor|count[20]~70\) # (!\inst4|divisor|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(21),
	datad => VCC,
	cin => \inst4|divisor|count[20]~70\,
	combout => \inst4|divisor|count[21]~71_combout\,
	cout => \inst4|divisor|count[21]~72\);

-- Location: FF_X12_Y19_N23
\inst4|divisor|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[21]~71_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(21));

-- Location: LCCOMB_X12_Y19_N24
\inst4|divisor|count[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[22]~73_combout\ = (\inst4|divisor|count\(22) & (\inst4|divisor|count[21]~72\ $ (GND))) # (!\inst4|divisor|count\(22) & (!\inst4|divisor|count[21]~72\ & VCC))
-- \inst4|divisor|count[22]~74\ = CARRY((\inst4|divisor|count\(22) & !\inst4|divisor|count[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(22),
	datad => VCC,
	cin => \inst4|divisor|count[21]~72\,
	combout => \inst4|divisor|count[22]~73_combout\,
	cout => \inst4|divisor|count[22]~74\);

-- Location: FF_X12_Y19_N25
\inst4|divisor|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[22]~73_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(22));

-- Location: LCCOMB_X12_Y19_N26
\inst4|divisor|count[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[23]~75_combout\ = (\inst4|divisor|count\(23) & (!\inst4|divisor|count[22]~74\)) # (!\inst4|divisor|count\(23) & ((\inst4|divisor|count[22]~74\) # (GND)))
-- \inst4|divisor|count[23]~76\ = CARRY((!\inst4|divisor|count[22]~74\) # (!\inst4|divisor|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(23),
	datad => VCC,
	cin => \inst4|divisor|count[22]~74\,
	combout => \inst4|divisor|count[23]~75_combout\,
	cout => \inst4|divisor|count[23]~76\);

-- Location: FF_X12_Y19_N27
\inst4|divisor|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[23]~75_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(23));

-- Location: LCCOMB_X12_Y19_N28
\inst4|divisor|count[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[24]~77_combout\ = (\inst4|divisor|count\(24) & (\inst4|divisor|count[23]~76\ $ (GND))) # (!\inst4|divisor|count\(24) & (!\inst4|divisor|count[23]~76\ & VCC))
-- \inst4|divisor|count[24]~78\ = CARRY((\inst4|divisor|count\(24) & !\inst4|divisor|count[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(24),
	datad => VCC,
	cin => \inst4|divisor|count[23]~76\,
	combout => \inst4|divisor|count[24]~77_combout\,
	cout => \inst4|divisor|count[24]~78\);

-- Location: FF_X12_Y19_N29
\inst4|divisor|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[24]~77_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(24));

-- Location: LCCOMB_X12_Y19_N30
\inst4|divisor|count[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[25]~79_combout\ = (\inst4|divisor|count\(25) & (!\inst4|divisor|count[24]~78\)) # (!\inst4|divisor|count\(25) & ((\inst4|divisor|count[24]~78\) # (GND)))
-- \inst4|divisor|count[25]~80\ = CARRY((!\inst4|divisor|count[24]~78\) # (!\inst4|divisor|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(25),
	datad => VCC,
	cin => \inst4|divisor|count[24]~78\,
	combout => \inst4|divisor|count[25]~79_combout\,
	cout => \inst4|divisor|count[25]~80\);

-- Location: FF_X12_Y19_N31
\inst4|divisor|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[25]~79_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(25));

-- Location: LCCOMB_X12_Y18_N0
\inst4|divisor|count[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[26]~81_combout\ = (\inst4|divisor|count\(26) & (\inst4|divisor|count[25]~80\ $ (GND))) # (!\inst4|divisor|count\(26) & (!\inst4|divisor|count[25]~80\ & VCC))
-- \inst4|divisor|count[26]~82\ = CARRY((\inst4|divisor|count\(26) & !\inst4|divisor|count[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(26),
	datad => VCC,
	cin => \inst4|divisor|count[25]~80\,
	combout => \inst4|divisor|count[26]~81_combout\,
	cout => \inst4|divisor|count[26]~82\);

-- Location: FF_X12_Y18_N1
\inst4|divisor|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[26]~81_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(26));

-- Location: LCCOMB_X12_Y18_N2
\inst4|divisor|count[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[27]~83_combout\ = (\inst4|divisor|count\(27) & (!\inst4|divisor|count[26]~82\)) # (!\inst4|divisor|count\(27) & ((\inst4|divisor|count[26]~82\) # (GND)))
-- \inst4|divisor|count[27]~84\ = CARRY((!\inst4|divisor|count[26]~82\) # (!\inst4|divisor|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(27),
	datad => VCC,
	cin => \inst4|divisor|count[26]~82\,
	combout => \inst4|divisor|count[27]~83_combout\,
	cout => \inst4|divisor|count[27]~84\);

-- Location: FF_X12_Y18_N3
\inst4|divisor|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[27]~83_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(27));

-- Location: LCCOMB_X12_Y18_N4
\inst4|divisor|count[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[28]~85_combout\ = (\inst4|divisor|count\(28) & (\inst4|divisor|count[27]~84\ $ (GND))) # (!\inst4|divisor|count\(28) & (!\inst4|divisor|count[27]~84\ & VCC))
-- \inst4|divisor|count[28]~86\ = CARRY((\inst4|divisor|count\(28) & !\inst4|divisor|count[27]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(28),
	datad => VCC,
	cin => \inst4|divisor|count[27]~84\,
	combout => \inst4|divisor|count[28]~85_combout\,
	cout => \inst4|divisor|count[28]~86\);

-- Location: FF_X12_Y18_N5
\inst4|divisor|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[28]~85_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(28));

-- Location: LCCOMB_X12_Y18_N6
\inst4|divisor|count[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[29]~87_combout\ = (\inst4|divisor|count\(29) & (!\inst4|divisor|count[28]~86\)) # (!\inst4|divisor|count\(29) & ((\inst4|divisor|count[28]~86\) # (GND)))
-- \inst4|divisor|count[29]~88\ = CARRY((!\inst4|divisor|count[28]~86\) # (!\inst4|divisor|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(29),
	datad => VCC,
	cin => \inst4|divisor|count[28]~86\,
	combout => \inst4|divisor|count[29]~87_combout\,
	cout => \inst4|divisor|count[29]~88\);

-- Location: FF_X12_Y18_N7
\inst4|divisor|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[29]~87_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(29));

-- Location: LCCOMB_X12_Y18_N8
\inst4|divisor|count[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[30]~89_combout\ = (\inst4|divisor|count\(30) & (\inst4|divisor|count[29]~88\ $ (GND))) # (!\inst4|divisor|count\(30) & (!\inst4|divisor|count[29]~88\ & VCC))
-- \inst4|divisor|count[30]~90\ = CARRY((\inst4|divisor|count\(30) & !\inst4|divisor|count[29]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(30),
	datad => VCC,
	cin => \inst4|divisor|count[29]~88\,
	combout => \inst4|divisor|count[30]~89_combout\,
	cout => \inst4|divisor|count[30]~90\);

-- Location: FF_X12_Y18_N9
\inst4|divisor|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[30]~89_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(30));

-- Location: LCCOMB_X12_Y18_N10
\inst4|divisor|count[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[31]~91_combout\ = (\inst4|divisor|count\(31) & (!\inst4|divisor|count[30]~90\)) # (!\inst4|divisor|count\(31) & ((\inst4|divisor|count[30]~90\) # (GND)))
-- \inst4|divisor|count[31]~92\ = CARRY((!\inst4|divisor|count[30]~90\) # (!\inst4|divisor|count\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(31),
	datad => VCC,
	cin => \inst4|divisor|count[30]~90\,
	combout => \inst4|divisor|count[31]~91_combout\,
	cout => \inst4|divisor|count[31]~92\);

-- Location: FF_X12_Y18_N11
\inst4|divisor|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[31]~91_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(31));

-- Location: LCCOMB_X12_Y18_N12
\inst4|divisor|count[32]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[32]~93_combout\ = (\inst4|divisor|count\(32) & (\inst4|divisor|count[31]~92\ $ (GND))) # (!\inst4|divisor|count\(32) & (!\inst4|divisor|count[31]~92\ & VCC))
-- \inst4|divisor|count[32]~94\ = CARRY((\inst4|divisor|count\(32) & !\inst4|divisor|count[31]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(32),
	datad => VCC,
	cin => \inst4|divisor|count[31]~92\,
	combout => \inst4|divisor|count[32]~93_combout\,
	cout => \inst4|divisor|count[32]~94\);

-- Location: FF_X12_Y18_N13
\inst4|divisor|count[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[32]~93_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(32));

-- Location: LCCOMB_X12_Y18_N14
\inst4|divisor|count[33]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[33]~95_combout\ = (\inst4|divisor|count\(33) & (!\inst4|divisor|count[32]~94\)) # (!\inst4|divisor|count\(33) & ((\inst4|divisor|count[32]~94\) # (GND)))
-- \inst4|divisor|count[33]~96\ = CARRY((!\inst4|divisor|count[32]~94\) # (!\inst4|divisor|count\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(33),
	datad => VCC,
	cin => \inst4|divisor|count[32]~94\,
	combout => \inst4|divisor|count[33]~95_combout\,
	cout => \inst4|divisor|count[33]~96\);

-- Location: FF_X12_Y18_N15
\inst4|divisor|count[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[33]~95_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(33));

-- Location: LCCOMB_X12_Y18_N26
\inst4|divisor|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~7_combout\ = (!\inst4|divisor|count\(29) & (!\inst4|divisor|count\(27) & (!\inst4|divisor|count\(33) & !\inst4|divisor|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(29),
	datab => \inst4|divisor|count\(27),
	datac => \inst4|divisor|count\(33),
	datad => \inst4|divisor|count\(26),
	combout => \inst4|divisor|op_1~7_combout\);

-- Location: LCCOMB_X13_Y19_N12
\inst4|divisor|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~8_combout\ = (!\inst4|divisor|count\(23) & (!\inst4|divisor|count\(22) & (!\inst4|divisor|count\(21) & !\inst4|divisor|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(23),
	datab => \inst4|divisor|count\(22),
	datac => \inst4|divisor|count\(21),
	datad => \inst4|divisor|count\(24),
	combout => \inst4|divisor|op_1~8_combout\);

-- Location: LCCOMB_X12_Y18_N16
\inst4|divisor|count[34]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[34]~97_combout\ = \inst4|divisor|count\(34) $ (!\inst4|divisor|count[33]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(34),
	cin => \inst4|divisor|count[33]~96\,
	combout => \inst4|divisor|count[34]~97_combout\);

-- Location: FF_X12_Y18_N17
\inst4|divisor|count[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[34]~97_combout\,
	sclr => \inst4|divisor|op_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(34));

-- Location: LCCOMB_X12_Y18_N22
\inst4|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~0_combout\ = (\inst4|divisor|count\(28) & ((\inst4|divisor|count\(25)) # ((\inst4|divisor|count\(26)) # (\inst4|divisor|count\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(25),
	datab => \inst4|divisor|count\(26),
	datac => \inst4|divisor|count\(28),
	datad => \inst4|divisor|count\(27),
	combout => \inst4|divisor|op_1~0_combout\);

-- Location: LCCOMB_X12_Y18_N28
\inst4|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~1_combout\ = (\inst4|divisor|count\(31) & (\inst4|divisor|count\(30) & ((\inst4|divisor|op_1~0_combout\) # (\inst4|divisor|count\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(31),
	datab => \inst4|divisor|count\(30),
	datac => \inst4|divisor|op_1~0_combout\,
	datad => \inst4|divisor|count\(29),
	combout => \inst4|divisor|op_1~1_combout\);

-- Location: LCCOMB_X12_Y18_N30
\inst4|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~2_combout\ = ((!\inst4|divisor|count\(33) & ((!\inst4|divisor|op_1~1_combout\) # (!\inst4|divisor|count\(32))))) # (!\inst4|divisor|count\(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(32),
	datab => \inst4|divisor|count\(34),
	datac => \inst4|divisor|count\(33),
	datad => \inst4|divisor|op_1~1_combout\,
	combout => \inst4|divisor|op_1~2_combout\);

-- Location: LCCOMB_X12_Y20_N12
\inst4|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~3_combout\ = (((!\inst4|divisor|count\(9) & !\inst4|divisor|count\(10))) # (!\inst4|divisor|count\(11))) # (!\inst4|divisor|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(9),
	datab => \inst4|divisor|count\(10),
	datac => \inst4|divisor|count\(12),
	datad => \inst4|divisor|count\(11),
	combout => \inst4|divisor|op_1~3_combout\);

-- Location: LCCOMB_X12_Y20_N10
\inst4|divisor|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~4_combout\ = (!\inst4|divisor|count\(14) & ((\inst4|divisor|op_1~3_combout\) # (!\inst4|divisor|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(14),
	datac => \inst4|divisor|count\(13),
	datad => \inst4|divisor|op_1~3_combout\,
	combout => \inst4|divisor|op_1~4_combout\);

-- Location: LCCOMB_X12_Y20_N4
\inst4|divisor|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~5_combout\ = (!\inst4|divisor|count\(17) & (((\inst4|divisor|op_1~4_combout\) # (!\inst4|divisor|count\(15))) # (!\inst4|divisor|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(16),
	datab => \inst4|divisor|count\(15),
	datac => \inst4|divisor|count\(17),
	datad => \inst4|divisor|op_1~4_combout\,
	combout => \inst4|divisor|op_1~5_combout\);

-- Location: LCCOMB_X12_Y18_N20
\inst4|divisor|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~6_combout\ = (((\inst4|divisor|op_1~5_combout\) # (!\inst4|divisor|count\(19))) # (!\inst4|divisor|count\(20))) # (!\inst4|divisor|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(18),
	datab => \inst4|divisor|count\(20),
	datac => \inst4|divisor|count\(19),
	datad => \inst4|divisor|op_1~5_combout\,
	combout => \inst4|divisor|op_1~6_combout\);

-- Location: LCCOMB_X12_Y18_N24
\inst4|divisor|op_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~9_combout\ = (!\inst4|divisor|op_1~2_combout\ & (((!\inst4|divisor|op_1~6_combout\) # (!\inst4|divisor|op_1~8_combout\)) # (!\inst4|divisor|op_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|op_1~7_combout\,
	datab => \inst4|divisor|op_1~8_combout\,
	datac => \inst4|divisor|op_1~2_combout\,
	datad => \inst4|divisor|op_1~6_combout\,
	combout => \inst4|divisor|op_1~9_combout\);

-- Location: LCCOMB_X11_Y17_N18
\inst4|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|alt~1_combout\ = \inst4|divisor|alt~q\ $ (\inst4|divisor|op_1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|alt~q\,
	datad => \inst4|divisor|op_1~9_combout\,
	combout => \inst4|divisor|alt~1_combout\);

-- Location: LCCOMB_X11_Y17_N8
\inst4|divisor|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|alt~feeder_combout\ = \inst4|divisor|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|alt~1_combout\,
	combout => \inst4|divisor|alt~feeder_combout\);

-- Location: FF_X11_Y17_N9
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

-- Location: LCCOMB_X11_Y13_N10
\inst4|count|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|_~0_combout\ = (\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(3))) # (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & \inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|count|_~0_combout\);

-- Location: FF_X11_Y13_N27
\inst4|count|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|divisor|alt~q\,
	asdata => \inst4|count|_~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count|cnt\(3));

-- Location: LCCOMB_X11_Y13_N26
\inst4|count|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|cnt[1]~0_combout\ = (!\inst4|count|cnt\(1) & ((!\inst4|count|cnt\(2)) # (!\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(3),
	datad => \inst4|count|cnt\(2),
	combout => \inst4|count|cnt[1]~0_combout\);

-- Location: FF_X11_Y13_N13
\inst4|count|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|divisor|alt~q\,
	asdata => \inst4|count|cnt[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count|cnt\(1));

-- Location: LCCOMB_X11_Y13_N30
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

-- Location: FF_X11_Y13_N31
\inst4|count|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|divisor|alt~q\,
	d => \inst4|count|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count|cnt\(2));

-- Location: LCCOMB_X22_Y12_N18
\inst4|deb|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|alt~1_combout\ = !\inst4|deb|divisor|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|alt~q\,
	combout => \inst4|deb|divisor|alt~1_combout\);

-- Location: LCCOMB_X22_Y12_N12
\inst4|deb|divisor|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|alt~feeder_combout\ = \inst4|deb|divisor|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|deb|divisor|alt~1_combout\,
	combout => \inst4|deb|divisor|alt~feeder_combout\);

-- Location: LCCOMB_X23_Y12_N28
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

-- Location: LCCOMB_X23_Y12_N30
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

-- Location: FF_X23_Y12_N31
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

-- Location: LCCOMB_X23_Y12_N0
\inst4|deb|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~0_combout\ = (!\inst1|debounc1|divisor|count\(14) & (!\inst1|debounc1|divisor|count\(11) & (!\inst1|debounc1|divisor|count\(12) & !\inst1|debounc1|divisor|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(14),
	datab => \inst1|debounc1|divisor|count\(11),
	datac => \inst1|debounc1|divisor|count\(12),
	datad => \inst1|debounc1|divisor|count\(13),
	combout => \inst4|deb|divisor|op_1~0_combout\);

-- Location: LCCOMB_X22_Y12_N16
\inst4|deb|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~1_combout\ = (!\inst1|debounc1|divisor|count\(8) & (((!\inst1|debounc1|divisor|count\(5) & !\inst1|debounc1|divisor|count\(6))) # (!\inst1|debounc1|divisor|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(8),
	datab => \inst1|debounc1|divisor|count\(5),
	datac => \inst1|debounc1|divisor|count\(7),
	datad => \inst1|debounc1|divisor|count\(6),
	combout => \inst4|deb|divisor|op_1~1_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst4|deb|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~2_combout\ = (\inst4|deb|divisor|op_1~0_combout\ & (((\inst4|deb|divisor|op_1~1_combout\) # (!\inst1|debounc1|divisor|count\(10))) # (!\inst1|debounc1|divisor|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(9),
	datab => \inst1|debounc1|divisor|count\(10),
	datac => \inst4|deb|divisor|op_1~0_combout\,
	datad => \inst4|deb|divisor|op_1~1_combout\,
	combout => \inst4|deb|divisor|op_1~2_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst1|debounc1|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|_~0_combout\ = (!\inst1|debounc1|divisor|count\(1) & (((\inst4|deb|divisor|op_1~2_combout\) # (!\inst1|debounc1|divisor|count\(16))) # (!\inst1|debounc1|divisor|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(15),
	datab => \inst1|debounc1|divisor|count\(16),
	datac => \inst1|debounc1|divisor|count\(1),
	datad => \inst4|deb|divisor|op_1~2_combout\,
	combout => \inst1|debounc1|divisor|_~0_combout\);

-- Location: FF_X22_Y12_N15
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

-- Location: LCCOMB_X23_Y12_N2
\inst1|debounc1|divisor|count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[2]~15_combout\ = (\inst1|debounc1|divisor|count\(1) & (\inst1|debounc1|divisor|count\(2) $ (VCC))) # (!\inst1|debounc1|divisor|count\(1) & (\inst1|debounc1|divisor|count\(2) & VCC))
-- \inst1|debounc1|divisor|count[2]~16\ = CARRY((\inst1|debounc1|divisor|count\(1) & \inst1|debounc1|divisor|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(1),
	datab => \inst1|debounc1|divisor|count\(2),
	datad => VCC,
	combout => \inst1|debounc1|divisor|count[2]~15_combout\,
	cout => \inst1|debounc1|divisor|count[2]~16\);

-- Location: FF_X23_Y12_N3
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

-- Location: LCCOMB_X23_Y12_N4
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

-- Location: FF_X23_Y12_N5
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

-- Location: LCCOMB_X23_Y12_N6
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

-- Location: FF_X23_Y12_N7
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

-- Location: LCCOMB_X23_Y12_N8
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

-- Location: FF_X23_Y12_N9
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

-- Location: LCCOMB_X23_Y12_N10
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

-- Location: FF_X23_Y12_N11
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

-- Location: LCCOMB_X23_Y12_N12
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

-- Location: FF_X23_Y12_N13
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

-- Location: LCCOMB_X23_Y12_N14
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

-- Location: FF_X23_Y12_N15
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

-- Location: LCCOMB_X23_Y12_N16
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

-- Location: FF_X23_Y12_N17
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

-- Location: LCCOMB_X23_Y12_N18
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

-- Location: FF_X23_Y12_N19
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

-- Location: LCCOMB_X23_Y12_N20
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

-- Location: FF_X23_Y12_N21
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

-- Location: LCCOMB_X23_Y12_N22
\inst1|debounc1|divisor|count[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[12]~35_combout\ = (\inst1|debounc1|divisor|count\(12) & (\inst1|debounc1|divisor|count[11]~34\ $ (GND))) # (!\inst1|debounc1|divisor|count\(12) & (!\inst1|debounc1|divisor|count[11]~34\ & VCC))
-- \inst1|debounc1|divisor|count[12]~36\ = CARRY((\inst1|debounc1|divisor|count\(12) & !\inst1|debounc1|divisor|count[11]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(12),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[11]~34\,
	combout => \inst1|debounc1|divisor|count[12]~35_combout\,
	cout => \inst1|debounc1|divisor|count[12]~36\);

-- Location: FF_X23_Y12_N23
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

-- Location: LCCOMB_X23_Y12_N24
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

-- Location: FF_X23_Y12_N25
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

-- Location: LCCOMB_X23_Y12_N26
\inst1|debounc1|divisor|count[14]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[14]~39_combout\ = (\inst1|debounc1|divisor|count\(14) & (\inst1|debounc1|divisor|count[13]~38\ $ (GND))) # (!\inst1|debounc1|divisor|count\(14) & (!\inst1|debounc1|divisor|count[13]~38\ & VCC))
-- \inst1|debounc1|divisor|count[14]~40\ = CARRY((\inst1|debounc1|divisor|count\(14) & !\inst1|debounc1|divisor|count[13]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(14),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[13]~38\,
	combout => \inst1|debounc1|divisor|count[14]~39_combout\,
	cout => \inst1|debounc1|divisor|count[14]~40\);

-- Location: FF_X23_Y12_N27
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

-- Location: FF_X23_Y12_N29
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

-- Location: LCCOMB_X22_Y12_N6
\inst4|deb|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~3_combout\ = (\inst1|debounc1|divisor|count\(15) & (\inst1|debounc1|divisor|count\(16) & !\inst4|deb|divisor|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(15),
	datac => \inst1|debounc1|divisor|count\(16),
	datad => \inst4|deb|divisor|op_1~2_combout\,
	combout => \inst4|deb|divisor|op_1~3_combout\);

-- Location: FF_X22_Y12_N13
\inst4|deb|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|alt~feeder_combout\,
	ena => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|alt~q\);

-- Location: LCCOMB_X22_Y12_N24
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X22_Y12_N20
\inst1|debounc1|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|alt~1_combout\ = !\inst1|debounc1|divisor|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|alt~q\,
	combout => \inst1|debounc1|divisor|alt~1_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst1|debounc1|divisor|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|alt~feeder_combout\ = \inst1|debounc1|divisor|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|alt~1_combout\,
	combout => \inst1|debounc1|divisor|alt~feeder_combout\);

-- Location: FF_X22_Y12_N3
\inst1|debounc1|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|alt~feeder_combout\,
	ena => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|alt~q\);

-- Location: LCCOMB_X22_Y12_N8
\inst1|debounc1|ff[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|ff[2]~0_combout\ = LCELL(\inst1|debounc1|divisor|alt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|debounc1|divisor|alt~q\,
	combout => \inst1|debounc1|ff[2]~0_combout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X18_Y12_N28
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

-- Location: FF_X18_Y12_N29
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

-- Location: LCCOMB_X18_Y12_N18
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

-- Location: FF_X18_Y12_N19
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

-- Location: LCCOMB_X18_Y12_N0
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

-- Location: FF_X18_Y12_N1
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

-- Location: LCCOMB_X17_Y13_N24
\inst4|deb|ff[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|ff[0]~feeder_combout\ = \inst1|debounc1|ff\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|ff\(2),
	combout => \inst4|deb|ff[0]~feeder_combout\);

-- Location: FF_X17_Y13_N25
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

-- Location: LCCOMB_X16_Y13_N22
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

-- Location: FF_X16_Y13_N23
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

-- Location: FF_X16_Y13_N25
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

-- Location: LCCOMB_X16_Y13_N24
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

-- Location: LCCOMB_X11_Y13_N0
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

-- Location: FF_X11_Y13_N1
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

-- Location: LCCOMB_X10_Y13_N10
\inst4|sort_realizado~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~2_combout\ = (\inst4|count|cnt\(2) & (\inst4|count|cnt\(1) & (\inst4|temp~q\ & !\inst4|count|cnt\(3))))

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
	combout => \inst4|sort_realizado~2_combout\);

-- Location: LCCOMB_X11_Y13_N16
\inst4|sort_realizado~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~7_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) & (!\inst4|count|cnt\(2) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|temp~q\,
	combout => \inst4|sort_realizado~7_combout\);

-- Location: LCCOMB_X12_Y11_N14
\inst4|u[2][4]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~78_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|sort_realizado~2_combout\) # (\inst4|sort_realizado~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sort_realizado~2_combout\,
	datac => \inst4|sort_realizado~7_combout\,
	datad => \inst4|u[2][4]~q\,
	combout => \inst4|u[2][4]~78_combout\);

-- Location: LCCOMB_X11_Y13_N28
\inst2|convd1|segmentos[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|convd1|segmentos[6]~9_combout\ = (!\inst4|count|cnt\(3) & (!\inst4|count|cnt\(2) & !\inst4|count|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(1),
	combout => \inst2|convd1|segmentos[6]~9_combout\);

-- Location: LCCOMB_X11_Y13_N2
\inst4|sort_realizado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~0_combout\ = (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(3) & (!\inst4|count|cnt\(2) & \inst4|temp~q\)))

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
	combout => \inst4|sort_realizado~0_combout\);

-- Location: LCCOMB_X14_Y14_N22
\inst4|u[5][2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~5_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst2|convd1|segmentos[6]~9_combout\ & \inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst2|convd1|segmentos[6]~9_combout\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|u[5][2]~5_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst4|div_sorteio|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|alt~1_combout\ = !\inst4|div_sorteio|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|div_sorteio|alt~q\,
	combout => \inst4|div_sorteio|alt~1_combout\);

-- Location: LCCOMB_X13_Y14_N12
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

-- Location: LCCOMB_X3_Y18_N26
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

-- Location: FF_X3_Y18_N27
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

-- Location: LCCOMB_X3_Y18_N0
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

-- Location: FF_X3_Y18_N1
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

-- Location: LCCOMB_X3_Y18_N2
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

-- Location: FF_X3_Y18_N3
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

-- Location: LCCOMB_X3_Y18_N4
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

-- Location: FF_X3_Y18_N5
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

-- Location: LCCOMB_X3_Y18_N6
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

-- Location: FF_X3_Y18_N7
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

-- Location: LCCOMB_X3_Y18_N8
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

-- Location: FF_X3_Y18_N9
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

-- Location: LCCOMB_X3_Y18_N10
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

-- Location: FF_X3_Y18_N11
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

-- Location: LCCOMB_X3_Y18_N12
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

-- Location: FF_X3_Y18_N13
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

-- Location: LCCOMB_X3_Y18_N14
\inst|count[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[9]~27_combout\ = (\inst|count\(9) & (!\inst|count[8]~26\)) # (!\inst|count\(9) & ((\inst|count[8]~26\) # (GND)))
-- \inst|count[9]~28\ = CARRY((!\inst|count[8]~26\) # (!\inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(9),
	datad => VCC,
	cin => \inst|count[8]~26\,
	combout => \inst|count[9]~27_combout\,
	cout => \inst|count[9]~28\);

-- Location: FF_X3_Y18_N15
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

-- Location: LCCOMB_X3_Y18_N16
\inst|count[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[10]~29_combout\ = (\inst|count\(10) & (\inst|count[9]~28\ $ (GND))) # (!\inst|count\(10) & (!\inst|count[9]~28\ & VCC))
-- \inst|count[10]~30\ = CARRY((\inst|count\(10) & !\inst|count[9]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(10),
	datad => VCC,
	cin => \inst|count[9]~28\,
	combout => \inst|count[10]~29_combout\,
	cout => \inst|count[10]~30\);

-- Location: FF_X3_Y18_N17
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

-- Location: LCCOMB_X3_Y18_N18
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

-- Location: FF_X3_Y18_N19
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

-- Location: LCCOMB_X3_Y18_N20
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

-- Location: FF_X3_Y18_N21
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

-- Location: LCCOMB_X3_Y18_N22
\inst|count[13]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[13]~35_combout\ = (\inst|count\(13) & (!\inst|count[12]~34\)) # (!\inst|count\(13) & ((\inst|count[12]~34\) # (GND)))
-- \inst|count[13]~36\ = CARRY((!\inst|count[12]~34\) # (!\inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(13),
	datad => VCC,
	cin => \inst|count[12]~34\,
	combout => \inst|count[13]~35_combout\,
	cout => \inst|count[13]~36\);

-- Location: FF_X3_Y18_N23
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

-- Location: LCCOMB_X3_Y18_N24
\inst|count[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[14]~37_combout\ = \inst|count\(14) $ (!\inst|count[13]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(14),
	cin => \inst|count[13]~36\,
	combout => \inst|count[14]~37_combout\);

-- Location: FF_X3_Y18_N25
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

-- Location: LCCOMB_X3_Y18_N30
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

-- Location: LCCOMB_X3_Y18_N28
\inst|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~1_combout\ = (\inst|count\(14) & (\inst|count\(12) & (!\inst|op_1~0_combout\ & \inst|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(14),
	datab => \inst|count\(12),
	datac => \inst|op_1~0_combout\,
	datad => \inst|count\(13),
	combout => \inst|op_1~1_combout\);

-- Location: FF_X13_Y14_N13
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

-- Location: LCCOMB_X13_Y13_N14
\inst4|sorteio|unidade[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[2]~3_combout\ = (!\inst4|sorteio|unidade\(4) & (\inst4|sorteio|unidade\(2) $ (\inst4|sorteio|unidade\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|sorteio|unidade[2]~3_combout\);

-- Location: FF_X13_Y13_N15
\inst4|sorteio|unidade[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~q\,
	d => \inst4|sorteio|unidade[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|unidade\(2));

-- Location: LCCOMB_X13_Y13_N24
\inst4|sorteio|unidade[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[1]~2_combout\ = (!\inst4|sorteio|unidade\(1) & (((!\inst4|sorteio|unidade\(3) & !\inst4|sorteio|unidade\(2))) # (!\inst4|sorteio|unidade\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|sorteio|unidade\(1),
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|sorteio|unidade[1]~2_combout\);

-- Location: FF_X13_Y13_N25
\inst4|sorteio|unidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~q\,
	d => \inst4|sorteio|unidade[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|unidade\(1));

-- Location: LCCOMB_X13_Y14_N16
\inst4|sorteio|unidade[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[3]~1_combout\ = (!\inst4|sorteio|unidade\(4) & (\inst4|sorteio|unidade\(3) $ (((\inst4|sorteio|unidade\(1) & \inst4|sorteio|unidade\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|sorteio|unidade\(3),
	datad => \inst4|sorteio|unidade\(2),
	combout => \inst4|sorteio|unidade[3]~1_combout\);

-- Location: FF_X13_Y14_N17
\inst4|sorteio|unidade[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~q\,
	d => \inst4|sorteio|unidade[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|unidade\(3));

-- Location: LCCOMB_X13_Y14_N10
\inst4|sorteio|unidade[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|unidade[4]~0_combout\ = (\inst4|sorteio|unidade\(3) & (\inst4|sorteio|unidade\(1) & (!\inst4|sorteio|unidade\(4) & \inst4|sorteio|unidade\(2)))) # (!\inst4|sorteio|unidade\(3) & (!\inst4|sorteio|unidade\(1) & (\inst4|sorteio|unidade\(4) & 
-- !\inst4|sorteio|unidade\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|sorteio|unidade\(4),
	datad => \inst4|sorteio|unidade\(2),
	combout => \inst4|sorteio|unidade[4]~0_combout\);

-- Location: FF_X13_Y14_N11
\inst4|sorteio|unidade[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~q\,
	d => \inst4|sorteio|unidade[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|unidade\(4));

-- Location: LCCOMB_X13_Y12_N4
\inst4|d[4][4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~32_combout\ = (\inst4|d[4][4]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|d[4][4]~32_combout\);

-- Location: LCCOMB_X13_Y12_N26
\inst4|d[4][4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~31_combout\ = (\inst4|d[4][4]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|d[4][4]~q\,
	combout => \inst4|d[4][4]~31_combout\);

-- Location: LCCOMB_X13_Y13_N26
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

-- Location: LCCOMB_X11_Y12_N0
\inst4|sorteio|dezena[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[1]~2_combout\ = \inst4|sorteio|dezena\(1) $ (!\inst4|sorteio|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sorteio|dezena\(1),
	datad => \inst4|sorteio|op_3~0_combout\,
	combout => \inst4|sorteio|dezena[1]~2_combout\);

-- Location: FF_X11_Y12_N1
\inst4|sorteio|dezena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~q\,
	d => \inst4|sorteio|dezena[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|dezena\(1));

-- Location: LCCOMB_X13_Y13_N30
\inst4|sorteio|dezena[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[2]~3_combout\ = (!\inst4|sorteio|_~2_combout\ & (\inst4|sorteio|dezena\(2) $ (((!\inst4|sorteio|op_3~0_combout\ & \inst4|sorteio|dezena\(1))))))

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
	combout => \inst4|sorteio|dezena[2]~3_combout\);

-- Location: FF_X13_Y13_N31
\inst4|sorteio|dezena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~q\,
	d => \inst4|sorteio|dezena[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|dezena\(2));

-- Location: LCCOMB_X13_Y13_N18
\inst4|sorteio|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|_~1_combout\ = (\inst4|sorteio|dezena\(2) & \inst4|sorteio|dezena\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|dezena\(3),
	combout => \inst4|sorteio|_~1_combout\);

-- Location: LCCOMB_X13_Y13_N4
\inst4|sorteio|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|_~0_combout\ = (!\inst4|sorteio|dezena\(4) & (!\inst4|sorteio|unidade\(3) & (!\inst4|sorteio|unidade\(2) & !\inst4|sorteio|unidade\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(4),
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|sorteio|_~0_combout\);

-- Location: LCCOMB_X13_Y13_N12
\inst4|sorteio|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|_~2_combout\ = (!\inst4|sorteio|unidade\(4) & (\inst4|sorteio|_~1_combout\ & (\inst4|sorteio|_~0_combout\ & !\inst4|sorteio|dezena\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|sorteio|_~1_combout\,
	datac => \inst4|sorteio|_~0_combout\,
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|sorteio|_~2_combout\);

-- Location: LCCOMB_X13_Y13_N20
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

-- Location: LCCOMB_X13_Y13_N0
\inst4|sorteio|dezena[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[3]~1_combout\ = (!\inst4|sorteio|_~2_combout\ & (\inst4|sorteio|dezena\(3) $ (((!\inst4|sorteio|op_3~0_combout\ & \inst4|sorteio|op_5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|_~2_combout\,
	datab => \inst4|sorteio|op_3~0_combout\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|sorteio|op_5~0_combout\,
	combout => \inst4|sorteio|dezena[3]~1_combout\);

-- Location: FF_X13_Y13_N1
\inst4|sorteio|dezena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~q\,
	d => \inst4|sorteio|dezena[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|dezena\(3));

-- Location: LCCOMB_X13_Y13_N10
\inst4|sorteio|dezena[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|dezena[4]~0_combout\ = \inst4|sorteio|dezena\(4) $ (((!\inst4|sorteio|op_3~0_combout\ & (\inst4|sorteio|dezena\(3) & \inst4|sorteio|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|op_3~0_combout\,
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|sorteio|op_5~0_combout\,
	combout => \inst4|sorteio|dezena[4]~0_combout\);

-- Location: FF_X13_Y13_N11
\inst4|sorteio|dezena[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~q\,
	d => \inst4|sorteio|dezena[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|dezena\(4));

-- Location: LCCOMB_X11_Y13_N24
\inst4|sort_realizado~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~1_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	datad => \inst4|temp~q\,
	combout => \inst4|sort_realizado~1_combout\);

-- Location: LCCOMB_X13_Y12_N2
\inst4|d[4][4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~30_combout\ = (\inst4|d[4][4]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sorteio|dezena\(4) & \inst4|sort_realizado~3_combout\)))) # (!\inst4|d[4][4]~q\ & (\inst4|sorteio|dezena\(4) & (\inst4|sort_realizado~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|d[4][4]~30_combout\);

-- Location: LCCOMB_X12_Y16_N16
\inst4|d[3][2]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~105_combout\ = (\inst4|d[3][2]~q\ & ((\inst4|_~58_combout\) # ((\inst4|sort_realizado~2_combout\) # (\inst4|sort_realizado~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~q\,
	datab => \inst4|_~58_combout\,
	datac => \inst4|sort_realizado~2_combout\,
	datad => \inst4|sort_realizado~6_combout\,
	combout => \inst4|d[3][2]~105_combout\);

-- Location: LCCOMB_X12_Y16_N22
\inst4|d[3][2]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~103_combout\ = (\inst4|d[3][2]~q\ & ((\inst4|_~62_combout\) # ((\inst4|sort_realizado~0_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|d[3][2]~103_combout\);

-- Location: LCCOMB_X12_Y14_N2
\inst4|d[3][3]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~97_combout\ = (!\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & (\inst4|temp~q\ & \inst4|count|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|temp~q\,
	datad => \inst4|count|cnt\(1),
	combout => \inst4|d[3][3]~97_combout\);

-- Location: LCCOMB_X12_Y14_N6
\inst4|d[3][3]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~98_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|d[3][3]~97_combout\) # ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~97_combout\,
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|d[3][3]~q\,
	combout => \inst4|d[3][3]~98_combout\);

-- Location: LCCOMB_X12_Y14_N4
\inst4|d[3][3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~100_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|sort_realizado~2_combout\) # ((\inst4|_~58_combout\) # (\inst4|sort_realizado~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~2_combout\,
	datab => \inst4|d[3][3]~q\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|sort_realizado~6_combout\,
	combout => \inst4|d[3][3]~100_combout\);

-- Location: LCCOMB_X11_Y13_N4
\inst4|sort_realizado~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~12_combout\ = (!\inst4|count|cnt\(1) & (\inst4|_~29_combout\ & (\inst4|_~34_combout\ & \inst4|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|_~29_combout\,
	datac => \inst4|_~34_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|sort_realizado~12_combout\);

-- Location: LCCOMB_X12_Y13_N2
\inst4|sort_realizado~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~11_combout\ = (\inst4|_~56_combout\ & (\inst4|_~19_combout\ & (!\inst4|count|cnt\(3) & \inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|_~19_combout\,
	datac => \inst4|count|cnt\(3),
	datad => \inst4|count|cnt\(2),
	combout => \inst4|sort_realizado~11_combout\);

-- Location: LCCOMB_X11_Y13_N18
\inst4|sort_realizado~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~13_combout\ = (\inst4|_~39_combout\ & (\inst4|temp~q\ & (\inst4|sort_realizado~12_combout\ & \inst4|sort_realizado~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|sort_realizado~12_combout\,
	datad => \inst4|sort_realizado~11_combout\,
	combout => \inst4|sort_realizado~13_combout\);

-- Location: LCCOMB_X12_Y14_N16
\inst4|d[3][3]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~99_combout\ = (\inst4|sorteio|dezena\(3) & ((\inst4|sort_realizado~13_combout\) # ((\inst4|d[3][3]~q\ & \inst4|_~64_combout\)))) # (!\inst4|sorteio|dezena\(3) & (\inst4|d[3][3]~q\ & (\inst4|_~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|d[3][3]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|sort_realizado~13_combout\,
	combout => \inst4|d[3][3]~99_combout\);

-- Location: LCCOMB_X12_Y14_N18
\inst4|d[3][3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~101_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datab => \inst4|d[3][3]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|d[3][3]~101_combout\);

-- Location: LCCOMB_X12_Y14_N0
\inst4|d[3][3]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~102_combout\ = (\inst4|d[3][3]~98_combout\) # ((\inst4|d[3][3]~100_combout\) # ((\inst4|d[3][3]~99_combout\) # (\inst4|d[3][3]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~98_combout\,
	datab => \inst4|d[3][3]~100_combout\,
	datac => \inst4|d[3][3]~99_combout\,
	datad => \inst4|d[3][3]~101_combout\,
	combout => \inst4|d[3][3]~102_combout\);

-- Location: FF_X12_Y14_N1
\inst4|d[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[3][3]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][3]~q\);

-- Location: LCCOMB_X11_Y13_N20
\inst4|sort_realizado~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~8_combout\ = (\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) & (!\inst4|count|cnt\(2) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|temp~q\,
	combout => \inst4|sort_realizado~8_combout\);

-- Location: LCCOMB_X10_Y14_N16
\inst4|u[2][3]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~88_combout\ = (!\inst4|sort_realizado~2_combout\ & (!\inst4|sort_realizado~7_combout\ & (\inst4|temp~q\ & !\inst4|sort_realizado~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~2_combout\,
	datab => \inst4|sort_realizado~7_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~8_combout\,
	combout => \inst4|u[2][3]~88_combout\);

-- Location: LCCOMB_X10_Y14_N0
\inst4|u[3][2]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~98_combout\ = (\inst4|u[3][2]~q\ & ((\inst4|_~62_combout\) # ((\inst4|sort_realizado~0_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[3][2]~98_combout\);

-- Location: LCCOMB_X10_Y14_N10
\inst4|u[3][2]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~99_combout\ = (\inst4|u[3][2]~q\ & ((\inst4|_~64_combout\) # ((\inst4|sorteio|unidade\(2) & \inst4|sort_realizado~13_combout\)))) # (!\inst4|u[3][2]~q\ & (\inst4|sorteio|unidade\(2) & ((\inst4|sort_realizado~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~q\,
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|_~64_combout\,
	datad => \inst4|sort_realizado~13_combout\,
	combout => \inst4|u[3][2]~99_combout\);

-- Location: LCCOMB_X10_Y14_N24
\inst4|u[3][2]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~100_combout\ = (\inst4|u[3][2]~98_combout\) # ((\inst4|u[3][2]~99_combout\) # ((!\inst4|u[2][3]~88_combout\ & \inst4|u[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~88_combout\,
	datab => \inst4|u[3][2]~98_combout\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst4|u[3][2]~99_combout\,
	combout => \inst4|u[3][2]~100_combout\);

-- Location: FF_X10_Y14_N25
\inst4|u[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[3][2]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][2]~q\);

-- Location: LCCOMB_X10_Y14_N14
\inst4|u[3][3]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~95_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~62_combout\) # ((\inst4|sort_realizado~0_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|u[3][3]~q\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[3][3]~95_combout\);

-- Location: LCCOMB_X10_Y14_N20
\inst4|u[3][3]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~96_combout\ = (\inst4|_~64_combout\ & ((\inst4|u[3][3]~q\) # ((\inst4|sorteio|unidade\(3) & \inst4|sort_realizado~13_combout\)))) # (!\inst4|_~64_combout\ & (\inst4|sorteio|unidade\(3) & ((\inst4|sort_realizado~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|sort_realizado~13_combout\,
	combout => \inst4|u[3][3]~96_combout\);

-- Location: LCCOMB_X10_Y14_N18
\inst4|u[3][3]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~97_combout\ = (\inst4|u[3][3]~95_combout\) # ((\inst4|u[3][3]~96_combout\) # ((!\inst4|u[2][3]~88_combout\ & \inst4|u[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~95_combout\,
	datab => \inst4|u[2][3]~88_combout\,
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|u[3][3]~96_combout\,
	combout => \inst4|u[3][3]~97_combout\);

-- Location: FF_X10_Y14_N19
\inst4|u[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[3][3]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][3]~q\);

-- Location: LCCOMB_X11_Y15_N30
\inst4|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~17_combout\ = (!\inst4|d[3][3]~q\ & (!\inst4|d[3][2]~q\ & (!\inst4|u[3][2]~q\ & !\inst4|u[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst4|u[3][3]~q\,
	combout => \inst4|_~17_combout\);

-- Location: LCCOMB_X12_Y16_N4
\inst4|d[3][1]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~113_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|_~62_combout\) # ((\inst4|sort_realizado~0_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|d[3][1]~q\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|d[3][1]~113_combout\);

-- Location: LCCOMB_X12_Y16_N8
\inst4|d[3][1]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~115_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|sort_realizado~7_combout\) # (\inst4|sort_realizado~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sort_realizado~7_combout\,
	datac => \inst4|sort_realizado~2_combout\,
	datad => \inst4|d[3][1]~q\,
	combout => \inst4|d[3][1]~115_combout\);

-- Location: LCCOMB_X12_Y16_N10
\inst4|d[3][1]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~114_combout\ = (\inst4|sorteio|dezena\(1) & ((\inst4|sort_realizado~13_combout\) # ((\inst4|_~64_combout\ & \inst4|d[3][1]~q\)))) # (!\inst4|sorteio|dezena\(1) & (\inst4|_~64_combout\ & ((\inst4|d[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|_~64_combout\,
	datac => \inst4|sort_realizado~13_combout\,
	datad => \inst4|d[3][1]~q\,
	combout => \inst4|d[3][1]~114_combout\);

-- Location: LCCOMB_X12_Y16_N26
\inst4|d[3][1]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~116_combout\ = (\inst4|d[3][1]~q\ & (((\inst4|sort_realizado~9_combout\) # (\inst4|_~59_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[3][1]~q\,
	datac => \inst4|sort_realizado~9_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|d[3][1]~116_combout\);

-- Location: LCCOMB_X12_Y16_N20
\inst4|d[3][1]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~117_combout\ = (\inst4|d[3][1]~113_combout\) # ((\inst4|d[3][1]~115_combout\) # ((\inst4|d[3][1]~114_combout\) # (\inst4|d[3][1]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~113_combout\,
	datab => \inst4|d[3][1]~115_combout\,
	datac => \inst4|d[3][1]~114_combout\,
	datad => \inst4|d[3][1]~116_combout\,
	combout => \inst4|d[3][1]~117_combout\);

-- Location: FF_X12_Y16_N21
\inst4|d[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[3][1]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][1]~q\);

-- Location: LCCOMB_X13_Y15_N28
\inst4|u[3][4]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~104_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|_~59_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[3][4]~104_combout\);

-- Location: LCCOMB_X13_Y15_N8
\inst4|u[3][4]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~101_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|temp~q\ & \inst2|convd1|segmentos[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst2|convd1|segmentos[6]~9_combout\,
	datad => \inst4|u[3][4]~q\,
	combout => \inst4|u[3][4]~101_combout\);

-- Location: LCCOMB_X13_Y15_N0
\inst4|u[3][4]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~102_combout\ = (\inst4|sort_realizado~13_combout\ & ((\inst4|sorteio|unidade\(4)) # ((\inst4|_~64_combout\ & \inst4|u[3][4]~q\)))) # (!\inst4|sort_realizado~13_combout\ & (((\inst4|_~64_combout\ & \inst4|u[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~13_combout\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|_~64_combout\,
	datad => \inst4|u[3][4]~q\,
	combout => \inst4|u[3][4]~102_combout\);

-- Location: LCCOMB_X13_Y15_N14
\inst4|u[3][4]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~103_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|_~58_combout\) # (\inst4|sort_realizado~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|_~58_combout\,
	datac => \inst4|sort_realizado~2_combout\,
	datad => \inst4|u[3][4]~q\,
	combout => \inst4|u[3][4]~103_combout\);

-- Location: LCCOMB_X13_Y15_N6
\inst4|u[3][4]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~105_combout\ = (\inst4|u[3][4]~104_combout\) # ((\inst4|u[3][4]~101_combout\) # ((\inst4|u[3][4]~102_combout\) # (\inst4|u[3][4]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~104_combout\,
	datab => \inst4|u[3][4]~101_combout\,
	datac => \inst4|u[3][4]~102_combout\,
	datad => \inst4|u[3][4]~103_combout\,
	combout => \inst4|u[3][4]~105_combout\);

-- Location: FF_X13_Y15_N7
\inst4|u[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[3][4]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][4]~q\);

-- Location: LCCOMB_X13_Y16_N2
\inst4|d[3][4]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~111_combout\ = (\inst4|d[3][4]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|_~59_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|d[3][4]~111_combout\);

-- Location: LCCOMB_X13_Y16_N6
\inst4|d[3][4]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~108_combout\ = (\inst4|d[3][4]~q\ & ((\inst4|_~62_combout\) # ((\inst4|sort_realizado~10_combout\) # (\inst4|sort_realizado~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|sort_realizado~10_combout\,
	datad => \inst4|sort_realizado~0_combout\,
	combout => \inst4|d[3][4]~108_combout\);

-- Location: LCCOMB_X13_Y16_N14
\inst4|d[3][4]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~110_combout\ = (\inst4|d[3][4]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|_~58_combout\) # (\inst4|sort_realizado~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|sort_realizado~6_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|sort_realizado~2_combout\,
	combout => \inst4|d[3][4]~110_combout\);

-- Location: LCCOMB_X12_Y16_N28
\inst4|d[3][4]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~109_combout\ = (\inst4|sorteio|dezena\(4) & ((\inst4|sort_realizado~13_combout\) # ((\inst4|d[3][4]~q\ & \inst4|_~64_combout\)))) # (!\inst4|sorteio|dezena\(4) & (\inst4|d[3][4]~q\ & ((\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(4),
	datab => \inst4|d[3][4]~q\,
	datac => \inst4|sort_realizado~13_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[3][4]~109_combout\);

-- Location: LCCOMB_X13_Y16_N30
\inst4|d[3][4]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][4]~112_combout\ = (\inst4|d[3][4]~111_combout\) # ((\inst4|d[3][4]~108_combout\) # ((\inst4|d[3][4]~110_combout\) # (\inst4|d[3][4]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~111_combout\,
	datab => \inst4|d[3][4]~108_combout\,
	datac => \inst4|d[3][4]~110_combout\,
	datad => \inst4|d[3][4]~109_combout\,
	combout => \inst4|d[3][4]~112_combout\);

-- Location: FF_X13_Y16_N31
\inst4|d[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[3][4]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][4]~q\);

-- Location: LCCOMB_X13_Y11_N28
\inst4|u[3][1]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~106_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~62_combout\) # ((\inst4|sort_realizado~0_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|u[3][1]~q\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[3][1]~106_combout\);

-- Location: LCCOMB_X12_Y11_N18
\inst4|u[3][1]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~107_combout\ = (\inst4|sorteio|unidade\(1) & ((\inst4|sort_realizado~13_combout\) # ((\inst4|u[3][1]~q\ & \inst4|_~64_combout\)))) # (!\inst4|sorteio|unidade\(1) & (((\inst4|u[3][1]~q\ & \inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|sort_realizado~13_combout\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[3][1]~107_combout\);

-- Location: LCCOMB_X13_Y11_N8
\inst4|u[3][1]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~108_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|sort_realizado~7_combout\) # (\inst4|sort_realizado~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sort_realizado~7_combout\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|sort_realizado~2_combout\,
	combout => \inst4|u[3][1]~108_combout\);

-- Location: LCCOMB_X13_Y11_N24
\inst4|u[3][1]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~109_combout\ = (\inst4|u[3][1]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~59_combout\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[3][1]~109_combout\);

-- Location: LCCOMB_X13_Y11_N16
\inst4|u[3][1]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~110_combout\ = (\inst4|u[3][1]~106_combout\) # ((\inst4|u[3][1]~107_combout\) # ((\inst4|u[3][1]~108_combout\) # (\inst4|u[3][1]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~106_combout\,
	datab => \inst4|u[3][1]~107_combout\,
	datac => \inst4|u[3][1]~108_combout\,
	datad => \inst4|u[3][1]~109_combout\,
	combout => \inst4|u[3][1]~110_combout\);

-- Location: FF_X13_Y11_N17
\inst4|u[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[3][1]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][1]~q\);

-- Location: LCCOMB_X11_Y15_N12
\inst4|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~18_combout\ = (!\inst4|d[3][1]~q\ & (!\inst4|u[3][4]~q\ & (!\inst4|d[3][4]~q\ & !\inst4|u[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|d[3][4]~q\,
	datad => \inst4|u[3][1]~q\,
	combout => \inst4|_~18_combout\);

-- Location: LCCOMB_X11_Y15_N28
\inst4|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~19_combout\ = (\inst4|_~17_combout\ & \inst4|_~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~17_combout\,
	datad => \inst4|_~18_combout\,
	combout => \inst4|_~19_combout\);

-- Location: LCCOMB_X11_Y13_N22
\inst4|_~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~63_combout\ = (\inst4|_~39_combout\ & (\inst4|_~19_combout\ & (\inst4|_~29_combout\ & \inst4|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|_~19_combout\,
	datac => \inst4|_~29_combout\,
	datad => \inst4|_~34_combout\,
	combout => \inst4|_~63_combout\);

-- Location: LCCOMB_X11_Y13_N14
\inst4|_~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~64_combout\ = (\inst4|sort_realizado~1_combout\ & (((!\inst4|_~63_combout\) # (!\inst4|_~50_combout\)) # (!\inst4|_~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|_~63_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|_~64_combout\);

-- Location: LCCOMB_X12_Y16_N24
\inst4|d[3][2]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~104_combout\ = (\inst4|d[3][2]~q\ & ((\inst4|_~64_combout\) # ((\inst4|sort_realizado~13_combout\ & \inst4|sorteio|dezena\(2))))) # (!\inst4|d[3][2]~q\ & (((\inst4|sort_realizado~13_combout\ & \inst4|sorteio|dezena\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~q\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|sort_realizado~13_combout\,
	datad => \inst4|sorteio|dezena\(2),
	combout => \inst4|d[3][2]~104_combout\);

-- Location: LCCOMB_X12_Y16_N14
\inst4|d[3][2]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~106_combout\ = (\inst4|d[3][2]~q\ & ((\inst4|sort_realizado~8_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|temp~q\,
	datac => \inst4|d[3][2]~q\,
	datad => \inst4|sort_realizado~8_combout\,
	combout => \inst4|d[3][2]~106_combout\);

-- Location: LCCOMB_X12_Y16_N30
\inst4|d[3][2]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~107_combout\ = (\inst4|d[3][2]~105_combout\) # ((\inst4|d[3][2]~103_combout\) # ((\inst4|d[3][2]~104_combout\) # (\inst4|d[3][2]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~105_combout\,
	datab => \inst4|d[3][2]~103_combout\,
	datac => \inst4|d[3][2]~104_combout\,
	datad => \inst4|d[3][2]~106_combout\,
	combout => \inst4|d[3][2]~107_combout\);

-- Location: FF_X12_Y16_N31
\inst4|d[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[3][2]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][2]~q\);

-- Location: LCCOMB_X12_Y16_N6
\inst4|_~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~41_combout\ = (\inst4|d[3][2]~q\ & (\inst4|sorteio|dezena\(2) & (\inst4|d[3][1]~q\ $ (!\inst4|sorteio|dezena\(1))))) # (!\inst4|d[3][2]~q\ & (!\inst4|sorteio|dezena\(2) & (\inst4|d[3][1]~q\ $ (!\inst4|sorteio|dezena\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~q\,
	datab => \inst4|d[3][1]~q\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|_~41_combout\);

-- Location: LCCOMB_X13_Y14_N18
\inst4|_~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~42_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|u[3][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[3][3]~q\)))) # (!\inst4|sorteio|unidade\(4) & (!\inst4|u[3][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|u[3][4]~q\,
	combout => \inst4|_~42_combout\);

-- Location: LCCOMB_X12_Y13_N22
\inst4|_~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~40_combout\ = (\inst4|d[3][4]~q\ & (\inst4|sorteio|dezena\(4) & (\inst4|d[3][3]~q\ $ (!\inst4|sorteio|dezena\(3))))) # (!\inst4|d[3][4]~q\ & (!\inst4|sorteio|dezena\(4) & (\inst4|d[3][3]~q\ $ (!\inst4|sorteio|dezena\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][4]~q\,
	datab => \inst4|d[3][3]~q\,
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|sorteio|dezena\(3),
	combout => \inst4|_~40_combout\);

-- Location: LCCOMB_X13_Y13_N28
\inst4|_~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~43_combout\ = (\inst4|u[3][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|sorteio|unidade\(2) $ (!\inst4|u[3][2]~q\)))) # (!\inst4|u[3][1]~q\ & (!\inst4|sorteio|unidade\(1) & (\inst4|sorteio|unidade\(2) $ (!\inst4|u[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|u[3][2]~q\,
	combout => \inst4|_~43_combout\);

-- Location: LCCOMB_X12_Y13_N4
\inst4|_~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~44_combout\ = (\inst4|_~41_combout\ & (!\inst4|_~40_combout\ & ((!\inst4|_~43_combout\) # (!\inst4|_~42_combout\)))) # (!\inst4|_~41_combout\ & (((!\inst4|_~43_combout\)) # (!\inst4|_~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|_~42_combout\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~43_combout\,
	combout => \inst4|_~44_combout\);

-- Location: LCCOMB_X11_Y14_N10
\inst4|d[1][3]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~68_combout\ = (\inst4|sort_realizado~13_combout\) # ((\inst4|_~64_combout\) # ((\inst4|_~58_combout\) # (\inst4|sort_realizado~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~13_combout\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|sort_realizado~6_combout\,
	combout => \inst4|d[1][3]~68_combout\);

-- Location: LCCOMB_X11_Y14_N28
\inst4|d[1][3]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~69_combout\ = (!\inst4|sort_realizado~9_combout\ & (!\inst4|sort_realizado~2_combout\ & (!\inst4|_~59_combout\ & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~9_combout\,
	datab => \inst4|sort_realizado~2_combout\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[1][3]~69_combout\);

-- Location: LCCOMB_X11_Y14_N20
\inst4|d[1][3]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~70_combout\ = (!\inst4|d[1][3]~68_combout\ & (\inst4|d[1][3]~69_combout\ & (!\inst4|_~62_combout\ & !\inst4|sort_realizado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~68_combout\,
	datab => \inst4|d[1][3]~69_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~0_combout\,
	combout => \inst4|d[1][3]~70_combout\);

-- Location: LCCOMB_X11_Y14_N30
\inst4|d[1][3]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~71_combout\ = (\inst4|sort_realizado~10_combout\ & ((\inst4|sorteio|dezena\(3)) # ((!\inst4|d[1][3]~70_combout\ & \inst4|d[1][3]~q\)))) # (!\inst4|sort_realizado~10_combout\ & (!\inst4|d[1][3]~70_combout\ & (\inst4|d[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~10_combout\,
	datab => \inst4|d[1][3]~70_combout\,
	datac => \inst4|d[1][3]~q\,
	datad => \inst4|sorteio|dezena\(3),
	combout => \inst4|d[1][3]~71_combout\);

-- Location: FF_X11_Y14_N31
\inst4|d[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[1][3]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][3]~q\);

-- Location: LCCOMB_X11_Y10_N16
\inst4|d[1][2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~73_combout\ = (\inst4|d[1][2]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|_~64_combout\) # (\inst4|sort_realizado~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|sort_realizado~13_combout\,
	combout => \inst4|d[1][2]~73_combout\);

-- Location: LCCOMB_X12_Y10_N16
\inst4|d[1][2]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~72_combout\ = (\inst4|sort_realizado~10_combout\ & ((\inst4|sorteio|dezena\(2)) # ((\inst4|d[1][2]~q\ & \inst4|_~62_combout\)))) # (!\inst4|sort_realizado~10_combout\ & (\inst4|d[1][2]~q\ & (\inst4|_~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~10_combout\,
	datab => \inst4|d[1][2]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sorteio|dezena\(2),
	combout => \inst4|d[1][2]~72_combout\);

-- Location: LCCOMB_X11_Y10_N20
\inst4|d[1][2]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~74_combout\ = (\inst4|d[1][2]~q\ & ((\inst4|sort_realizado~2_combout\) # ((\inst4|sort_realizado~6_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~2_combout\,
	datab => \inst4|sort_realizado~6_combout\,
	datac => \inst4|d[1][2]~q\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[1][2]~74_combout\);

-- Location: LCCOMB_X11_Y10_N14
\inst4|d[1][2]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~75_combout\ = (\inst4|d[1][2]~q\ & (((\inst4|sort_realizado~9_combout\) # (\inst4|_~59_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|sort_realizado~9_combout\,
	datac => \inst4|d[1][2]~q\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|d[1][2]~75_combout\);

-- Location: LCCOMB_X11_Y10_N4
\inst4|d[1][2]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~76_combout\ = (\inst4|d[1][2]~73_combout\) # ((\inst4|d[1][2]~72_combout\) # ((\inst4|d[1][2]~74_combout\) # (\inst4|d[1][2]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~73_combout\,
	datab => \inst4|d[1][2]~72_combout\,
	datac => \inst4|d[1][2]~74_combout\,
	datad => \inst4|d[1][2]~75_combout\,
	combout => \inst4|d[1][2]~76_combout\);

-- Location: FF_X11_Y10_N5
\inst4|d[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[1][2]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][2]~q\);

-- Location: LCCOMB_X13_Y16_N18
\inst4|u[1][2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~62_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~13_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|sort_realizado~13_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst4|u[1][2]~62_combout\);

-- Location: LCCOMB_X13_Y16_N24
\inst4|u[1][2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~63_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|sort_realizado~7_combout\) # (\inst4|sort_realizado~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datac => \inst4|sort_realizado~7_combout\,
	datad => \inst4|sort_realizado~2_combout\,
	combout => \inst4|u[1][2]~63_combout\);

-- Location: LCCOMB_X13_Y16_N28
\inst4|u[1][2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~64_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|_~59_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[1][2]~64_combout\);

-- Location: LCCOMB_X12_Y14_N30
\inst4|u[1][2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~61_combout\ = (\inst4|sorteio|unidade\(2) & ((\inst4|sort_realizado~10_combout\) # ((\inst4|u[1][2]~q\ & \inst4|_~62_combout\)))) # (!\inst4|sorteio|unidade\(2) & (\inst4|u[1][2]~q\ & (\inst4|_~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|u[1][2]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[1][2]~61_combout\);

-- Location: LCCOMB_X13_Y16_N10
\inst4|u[1][2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~65_combout\ = (\inst4|u[1][2]~62_combout\) # ((\inst4|u[1][2]~63_combout\) # ((\inst4|u[1][2]~64_combout\) # (\inst4|u[1][2]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~62_combout\,
	datab => \inst4|u[1][2]~63_combout\,
	datac => \inst4|u[1][2]~64_combout\,
	datad => \inst4|u[1][2]~61_combout\,
	combout => \inst4|u[1][2]~65_combout\);

-- Location: FF_X13_Y16_N11
\inst4|u[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[1][2]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][2]~q\);

-- Location: LCCOMB_X13_Y14_N14
\inst14|lcd_bus[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~8_combout\ = (!\inst4|u[1][3]~q\ & !\inst4|u[1][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|u[1][3]~q\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst14|lcd_bus[5]~8_combout\);

-- Location: LCCOMB_X12_Y16_N12
\inst4|d[1][1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~64_combout\ = (\inst4|d[1][1]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|_~64_combout\) # (\inst4|sort_realizado~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~q\,
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|sort_realizado~13_combout\,
	combout => \inst4|d[1][1]~64_combout\);

-- Location: LCCOMB_X12_Y16_N18
\inst4|d[1][1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~66_combout\ = (\inst4|d[1][1]~q\ & (((\inst4|sort_realizado~9_combout\) # (\inst4|_~59_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|sort_realizado~9_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|d[1][1]~66_combout\);

-- Location: LCCOMB_X13_Y16_N22
\inst4|d[1][1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~63_combout\ = (\inst4|sort_realizado~10_combout\ & ((\inst4|sorteio|dezena\(1)) # ((\inst4|_~62_combout\ & \inst4|d[1][1]~q\)))) # (!\inst4|sort_realizado~10_combout\ & (\inst4|_~62_combout\ & ((\inst4|d[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~10_combout\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|sorteio|dezena\(1),
	datad => \inst4|d[1][1]~q\,
	combout => \inst4|d[1][1]~63_combout\);

-- Location: LCCOMB_X13_Y16_N0
\inst4|d[1][1]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~65_combout\ = (\inst4|d[1][1]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|_~58_combout\) # (\inst4|sort_realizado~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~q\,
	datab => \inst4|sort_realizado~6_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|sort_realizado~2_combout\,
	combout => \inst4|d[1][1]~65_combout\);

-- Location: LCCOMB_X13_Y16_N26
\inst4|d[1][1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~67_combout\ = (\inst4|d[1][1]~64_combout\) # ((\inst4|d[1][1]~66_combout\) # ((\inst4|d[1][1]~63_combout\) # (\inst4|d[1][1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~64_combout\,
	datab => \inst4|d[1][1]~66_combout\,
	datac => \inst4|d[1][1]~63_combout\,
	datad => \inst4|d[1][1]~65_combout\,
	combout => \inst4|d[1][1]~67_combout\);

-- Location: FF_X13_Y16_N27
\inst4|d[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[1][1]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][1]~q\);

-- Location: LCCOMB_X10_Y14_N26
\inst4|u[1][1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~72_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|_~64_combout\) # (\inst4|sort_realizado~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~q\,
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|sort_realizado~13_combout\,
	combout => \inst4|u[1][1]~72_combout\);

-- Location: LCCOMB_X10_Y14_N28
\inst4|u[1][1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~73_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|sort_realizado~2_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|u[1][1]~q\,
	datac => \inst4|sort_realizado~2_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[1][1]~73_combout\);

-- Location: LCCOMB_X10_Y14_N12
\inst4|u[1][1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~74_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|sort_realizado~8_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~q\,
	datab => \inst4|temp~q\,
	datad => \inst4|sort_realizado~8_combout\,
	combout => \inst4|u[1][1]~74_combout\);

-- Location: LCCOMB_X10_Y14_N22
\inst4|u[1][1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~71_combout\ = (\inst4|_~62_combout\ & ((\inst4|u[1][1]~q\) # ((\inst4|sort_realizado~10_combout\ & \inst4|sorteio|unidade\(1))))) # (!\inst4|_~62_combout\ & (\inst4|sort_realizado~10_combout\ & ((\inst4|sorteio|unidade\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|u[1][1]~q\,
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|u[1][1]~71_combout\);

-- Location: LCCOMB_X10_Y14_N30
\inst4|u[1][1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~75_combout\ = (\inst4|u[1][1]~72_combout\) # ((\inst4|u[1][1]~73_combout\) # ((\inst4|u[1][1]~74_combout\) # (\inst4|u[1][1]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~72_combout\,
	datab => \inst4|u[1][1]~73_combout\,
	datac => \inst4|u[1][1]~74_combout\,
	datad => \inst4|u[1][1]~71_combout\,
	combout => \inst4|u[1][1]~75_combout\);

-- Location: FF_X10_Y14_N31
\inst4|u[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[1][1]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][1]~q\);

-- Location: LCCOMB_X13_Y16_N12
\inst4|d[1][4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~59_combout\ = (\inst4|d[1][4]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~13_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|sort_realizado~13_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|d[1][4]~q\,
	combout => \inst4|d[1][4]~59_combout\);

-- Location: LCCOMB_X13_Y16_N16
\inst4|d[1][4]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~60_combout\ = (\inst4|d[1][4]~q\ & ((\inst4|sort_realizado~7_combout\) # (\inst4|sort_realizado~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~7_combout\,
	datab => \inst4|d[1][4]~q\,
	datad => \inst4|sort_realizado~2_combout\,
	combout => \inst4|d[1][4]~60_combout\);

-- Location: LCCOMB_X13_Y16_N8
\inst4|d[1][4]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~61_combout\ = (\inst4|d[1][4]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~q\,
	datab => \inst4|_~59_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|d[1][4]~61_combout\);

-- Location: LCCOMB_X13_Y16_N4
\inst4|d[1][4]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~58_combout\ = (\inst4|sorteio|dezena\(4) & ((\inst4|sort_realizado~10_combout\) # ((\inst4|_~62_combout\ & \inst4|d[1][4]~q\)))) # (!\inst4|sorteio|dezena\(4) & (\inst4|_~62_combout\ & ((\inst4|d[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(4),
	datab => \inst4|_~62_combout\,
	datac => \inst4|sort_realizado~10_combout\,
	datad => \inst4|d[1][4]~q\,
	combout => \inst4|d[1][4]~58_combout\);

-- Location: LCCOMB_X13_Y16_N20
\inst4|d[1][4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][4]~62_combout\ = (\inst4|d[1][4]~59_combout\) # ((\inst4|d[1][4]~60_combout\) # ((\inst4|d[1][4]~61_combout\) # (\inst4|d[1][4]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~59_combout\,
	datab => \inst4|d[1][4]~60_combout\,
	datac => \inst4|d[1][4]~61_combout\,
	datad => \inst4|d[1][4]~58_combout\,
	combout => \inst4|d[1][4]~62_combout\);

-- Location: FF_X13_Y16_N21
\inst4|d[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[1][4]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][4]~q\);

-- Location: LCCOMB_X13_Y15_N24
\inst4|u[1][4]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~66_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|_~62_combout\) # ((\inst4|sorteio|unidade\(4) & \inst4|sort_realizado~10_combout\)))) # (!\inst4|u[1][4]~q\ & (\inst4|sorteio|unidade\(4) & ((\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[1][4]~66_combout\);

-- Location: LCCOMB_X13_Y15_N26
\inst4|u[1][4]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~68_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|_~58_combout\) # (\inst4|sort_realizado~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|u[1][4]~q\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|sort_realizado~2_combout\,
	combout => \inst4|u[1][4]~68_combout\);

-- Location: LCCOMB_X13_Y15_N10
\inst4|u[1][4]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~67_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|sort_realizado~13_combout\) # ((\inst4|sort_realizado~0_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~13_combout\,
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|u[1][4]~q\,
	combout => \inst4|u[1][4]~67_combout\);

-- Location: LCCOMB_X13_Y15_N2
\inst4|u[1][4]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~69_combout\ = (\inst4|u[1][4]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~59_combout\,
	datac => \inst4|u[1][4]~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[1][4]~69_combout\);

-- Location: LCCOMB_X13_Y15_N16
\inst4|u[1][4]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~70_combout\ = (\inst4|u[1][4]~66_combout\) # ((\inst4|u[1][4]~68_combout\) # ((\inst4|u[1][4]~67_combout\) # (\inst4|u[1][4]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~66_combout\,
	datab => \inst4|u[1][4]~68_combout\,
	datac => \inst4|u[1][4]~67_combout\,
	datad => \inst4|u[1][4]~69_combout\,
	combout => \inst4|u[1][4]~70_combout\);

-- Location: FF_X13_Y15_N17
\inst4|u[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[1][4]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][4]~q\);

-- Location: LCCOMB_X13_Y14_N2
\inst4|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~13_combout\ = (!\inst4|d[1][1]~q\ & (!\inst4|u[1][1]~q\ & (!\inst4|d[1][4]~q\ & !\inst4|u[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~q\,
	datab => \inst4|u[1][1]~q\,
	datac => \inst4|d[1][4]~q\,
	datad => \inst4|u[1][4]~q\,
	combout => \inst4|_~13_combout\);

-- Location: LCCOMB_X13_Y14_N4
\inst4|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~14_combout\ = (!\inst4|d[1][3]~q\ & (!\inst4|d[1][2]~q\ & (\inst14|lcd_bus[5]~8_combout\ & \inst4|_~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|d[1][2]~q\,
	datac => \inst14|lcd_bus[5]~8_combout\,
	datad => \inst4|_~13_combout\,
	combout => \inst4|_~14_combout\);

-- Location: LCCOMB_X12_Y13_N0
\inst4|_~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~61_combout\ = (\inst4|_~56_combout\ & (\inst4|_~50_combout\ & (\inst4|_~44_combout\ & \inst4|_~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|_~44_combout\,
	datad => \inst4|_~14_combout\,
	combout => \inst4|_~61_combout\);

-- Location: LCCOMB_X12_Y14_N14
\inst4|_~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~62_combout\ = (\inst4|temp~q\ & (\inst2|convd1|segmentos[6]~9_combout\ & ((!\inst4|_~60_combout\) # (!\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~61_combout\,
	datac => \inst2|convd1|segmentos[6]~9_combout\,
	datad => \inst4|_~60_combout\,
	combout => \inst4|_~62_combout\);

-- Location: LCCOMB_X13_Y12_N18
\inst4|d[4][4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~29_combout\ = (\inst4|d[4][4]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|_~62_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|d[4][4]~29_combout\);

-- Location: LCCOMB_X13_Y12_N24
\inst4|d[4][4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][4]~33_combout\ = (\inst4|d[4][4]~32_combout\) # ((\inst4|d[4][4]~31_combout\) # ((\inst4|d[4][4]~30_combout\) # (\inst4|d[4][4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~32_combout\,
	datab => \inst4|d[4][4]~31_combout\,
	datac => \inst4|d[4][4]~30_combout\,
	datad => \inst4|d[4][4]~29_combout\,
	combout => \inst4|d[4][4]~33_combout\);

-- Location: FF_X13_Y12_N25
\inst4|d[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[4][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][4]~q\);

-- Location: LCCOMB_X14_Y14_N18
\inst4|u[4][4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~32_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|u[4][4]~q\,
	combout => \inst4|u[4][4]~32_combout\);

-- Location: LCCOMB_X14_Y14_N2
\inst4|u[4][4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~33_combout\ = (\inst4|u[4][4]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[4][4]~33_combout\);

-- Location: LCCOMB_X14_Y14_N12
\inst4|u[4][4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~31_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sorteio|unidade\(4) & \inst4|sort_realizado~3_combout\)))) # (!\inst4|u[4][4]~q\ & (\inst4|sorteio|unidade\(4) & (\inst4|sort_realizado~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|u[4][4]~31_combout\);

-- Location: LCCOMB_X14_Y14_N16
\inst4|u[4][4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~30_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|_~62_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[4][4]~30_combout\);

-- Location: LCCOMB_X14_Y14_N0
\inst4|u[4][4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~34_combout\ = (\inst4|u[4][4]~32_combout\) # ((\inst4|u[4][4]~33_combout\) # ((\inst4|u[4][4]~31_combout\) # (\inst4|u[4][4]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~32_combout\,
	datab => \inst4|u[4][4]~33_combout\,
	datac => \inst4|u[4][4]~31_combout\,
	datad => \inst4|u[4][4]~30_combout\,
	combout => \inst4|u[4][4]~34_combout\);

-- Location: FF_X14_Y14_N1
\inst4|u[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[4][4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][4]~q\);

-- Location: LCCOMB_X13_Y12_N28
\inst4|u[4][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~38_combout\ = (\inst4|u[4][1]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[4][1]~38_combout\);

-- Location: LCCOMB_X13_Y12_N14
\inst4|u[4][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~35_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|_~62_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[4][1]~35_combout\);

-- Location: LCCOMB_X13_Y12_N16
\inst4|u[4][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~36_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sorteio|unidade\(1) & \inst4|sort_realizado~3_combout\)))) # (!\inst4|u[4][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|sort_realizado~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|u[4][1]~36_combout\);

-- Location: LCCOMB_X13_Y12_N6
\inst4|u[4][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~37_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|u[4][1]~q\,
	combout => \inst4|u[4][1]~37_combout\);

-- Location: LCCOMB_X13_Y12_N0
\inst4|u[4][1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~39_combout\ = (\inst4|u[4][1]~38_combout\) # ((\inst4|u[4][1]~35_combout\) # ((\inst4|u[4][1]~36_combout\) # (\inst4|u[4][1]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~38_combout\,
	datab => \inst4|u[4][1]~35_combout\,
	datac => \inst4|u[4][1]~36_combout\,
	datad => \inst4|u[4][1]~37_combout\,
	combout => \inst4|u[4][1]~39_combout\);

-- Location: FF_X13_Y12_N1
\inst4|u[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[4][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][1]~q\);

-- Location: LCCOMB_X13_Y12_N20
\inst4|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~8_combout\ = (!\inst4|d[4][1]~q\ & (!\inst4|d[4][4]~q\ & (!\inst4|u[4][4]~q\ & !\inst4|u[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~q\,
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|u[4][4]~q\,
	datad => \inst4|u[4][1]~q\,
	combout => \inst4|_~8_combout\);

-- Location: LCCOMB_X13_Y15_N12
\inst4|u[4][3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~19_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|_~62_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~q\,
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[4][3]~19_combout\);

-- Location: LCCOMB_X13_Y15_N4
\inst4|u[4][3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~20_combout\ = (\inst4|sort_realizado~3_combout\ & ((\inst4|sorteio|unidade\(3)) # ((\inst4|sort_realizado~1_combout\ & \inst4|u[4][3]~q\)))) # (!\inst4|sort_realizado~3_combout\ & (\inst4|sort_realizado~1_combout\ & (\inst4|u[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~3_combout\,
	datab => \inst4|sort_realizado~1_combout\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|sorteio|unidade\(3),
	combout => \inst4|u[4][3]~20_combout\);

-- Location: LCCOMB_X13_Y15_N18
\inst4|u[4][3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~21_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|_~58_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|_~58_combout\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[4][3]~21_combout\);

-- Location: LCCOMB_X13_Y15_N20
\inst4|u[4][3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~22_combout\ = (\inst4|u[4][3]~q\ & (((\inst4|sort_realizado~9_combout\) # (\inst4|_~59_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|sort_realizado~9_combout\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|u[4][3]~q\,
	combout => \inst4|u[4][3]~22_combout\);

-- Location: LCCOMB_X13_Y15_N30
\inst4|u[4][3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~23_combout\ = (\inst4|u[4][3]~19_combout\) # ((\inst4|u[4][3]~20_combout\) # ((\inst4|u[4][3]~21_combout\) # (\inst4|u[4][3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~19_combout\,
	datab => \inst4|u[4][3]~20_combout\,
	datac => \inst4|u[4][3]~21_combout\,
	datad => \inst4|u[4][3]~22_combout\,
	combout => \inst4|u[4][3]~23_combout\);

-- Location: FF_X13_Y15_N31
\inst4|u[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[4][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][3]~q\);

-- Location: LCCOMB_X10_Y12_N6
\inst4|d[4][3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~19_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|sort_realizado~10_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[4][3]~19_combout\);

-- Location: LCCOMB_X10_Y12_N22
\inst4|d[4][3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~20_combout\ = (\inst4|sort_realizado~1_combout\ & ((\inst4|d[4][3]~q\) # ((\inst4|sorteio|dezena\(3) & \inst4|sort_realizado~3_combout\)))) # (!\inst4|sort_realizado~1_combout\ & (((\inst4|sorteio|dezena\(3) & 
-- \inst4|sort_realizado~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~1_combout\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|sort_realizado~3_combout\,
	combout => \inst4|d[4][3]~20_combout\);

-- Location: LCCOMB_X10_Y12_N8
\inst4|d[4][3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~21_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~51_combout\) # ((\inst4|sort_realizado~6_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|sort_realizado~6_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[4][3]~21_combout\);

-- Location: LCCOMB_X10_Y12_N26
\inst4|d[4][3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~22_combout\ = (\inst4|d[4][3]~q\ & (((\inst4|sort_realizado~9_combout\) # (\inst4|_~59_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|sort_realizado~9_combout\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|d[4][3]~q\,
	combout => \inst4|d[4][3]~22_combout\);

-- Location: LCCOMB_X10_Y12_N24
\inst4|d[4][3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~23_combout\ = (\inst4|d[4][3]~19_combout\) # ((\inst4|d[4][3]~20_combout\) # ((\inst4|d[4][3]~21_combout\) # (\inst4|d[4][3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~19_combout\,
	datab => \inst4|d[4][3]~20_combout\,
	datac => \inst4|d[4][3]~21_combout\,
	datad => \inst4|d[4][3]~22_combout\,
	combout => \inst4|d[4][3]~23_combout\);

-- Location: FF_X10_Y12_N25
\inst4|d[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[4][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][3]~q\);

-- Location: LCCOMB_X11_Y12_N18
\inst4|d[4][2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~25_combout\ = (\inst4|sort_realizado~1_combout\ & ((\inst4|d[4][2]~q\) # ((\inst4|sort_realizado~3_combout\ & \inst4|sorteio|dezena\(2))))) # (!\inst4|sort_realizado~1_combout\ & (\inst4|sort_realizado~3_combout\ & 
-- (\inst4|sorteio|dezena\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~1_combout\,
	datab => \inst4|sort_realizado~3_combout\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|d[4][2]~q\,
	combout => \inst4|d[4][2]~25_combout\);

-- Location: LCCOMB_X11_Y12_N14
\inst4|d[4][2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~27_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|d[4][2]~27_combout\);

-- Location: LCCOMB_X11_Y12_N12
\inst4|d[4][2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~24_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|sort_realizado~10_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[4][2]~24_combout\);

-- Location: LCCOMB_X11_Y12_N28
\inst4|d[4][2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~26_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|_~58_combout\) # ((\inst4|sort_realizado~6_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~58_combout\,
	datab => \inst4|sort_realizado~6_combout\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|d[4][2]~q\,
	combout => \inst4|d[4][2]~26_combout\);

-- Location: LCCOMB_X11_Y12_N20
\inst4|d[4][2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~28_combout\ = (\inst4|d[4][2]~25_combout\) # ((\inst4|d[4][2]~27_combout\) # ((\inst4|d[4][2]~24_combout\) # (\inst4|d[4][2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~25_combout\,
	datab => \inst4|d[4][2]~27_combout\,
	datac => \inst4|d[4][2]~24_combout\,
	datad => \inst4|d[4][2]~26_combout\,
	combout => \inst4|d[4][2]~28_combout\);

-- Location: FF_X11_Y12_N21
\inst4|d[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[4][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][2]~q\);

-- Location: LCCOMB_X10_Y12_N14
\inst4|u[4][2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~28_combout\ = (\inst4|u[4][2]~q\ & (((\inst4|sort_realizado~9_combout\) # (\inst4|_~59_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|sort_realizado~9_combout\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst4|u[4][2]~28_combout\);

-- Location: LCCOMB_X10_Y12_N16
\inst4|u[4][2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~24_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|sort_realizado~10_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[4][2]~24_combout\);

-- Location: LCCOMB_X10_Y12_N4
\inst4|u[4][2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~27_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|_~51_combout\) # ((\inst4|sort_realizado~6_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|sort_realizado~6_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[4][2]~27_combout\);

-- Location: LCCOMB_X10_Y13_N12
\inst4|u[4][2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~25_combout\ = (\inst4|sort_realizado~2_combout\ & (\inst4|sorteio|unidade\(2) & (\inst4|_~9_combout\ & \inst4|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~2_combout\,
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|u[4][2]~25_combout\);

-- Location: LCCOMB_X10_Y13_N0
\inst4|u[4][2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~26_combout\ = (\inst4|u[4][2]~25_combout\ & ((\inst4|_~45_combout\) # ((\inst4|u[4][2]~q\ & \inst4|sort_realizado~1_combout\)))) # (!\inst4|u[4][2]~25_combout\ & (\inst4|u[4][2]~q\ & ((\inst4|sort_realizado~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~25_combout\,
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|_~45_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|u[4][2]~26_combout\);

-- Location: LCCOMB_X10_Y12_N0
\inst4|u[4][2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~29_combout\ = (\inst4|u[4][2]~28_combout\) # ((\inst4|u[4][2]~24_combout\) # ((\inst4|u[4][2]~27_combout\) # (\inst4|u[4][2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~28_combout\,
	datab => \inst4|u[4][2]~24_combout\,
	datac => \inst4|u[4][2]~27_combout\,
	datad => \inst4|u[4][2]~26_combout\,
	combout => \inst4|u[4][2]~29_combout\);

-- Location: FF_X10_Y12_N1
\inst4|u[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[4][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][2]~q\);

-- Location: LCCOMB_X10_Y12_N10
\inst4|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~7_combout\ = (!\inst4|u[4][3]~q\ & (!\inst4|d[4][3]~q\ & (!\inst4|d[4][2]~q\ & !\inst4|u[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~q\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|d[4][2]~q\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst4|_~7_combout\);

-- Location: LCCOMB_X10_Y11_N4
\inst4|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~9_combout\ = (\inst4|_~8_combout\ & \inst4|_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~8_combout\,
	datad => \inst4|_~7_combout\,
	combout => \inst4|_~9_combout\);

-- Location: LCCOMB_X10_Y13_N28
\inst4|_~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~51_combout\ = (\inst4|sort_realizado~2_combout\ & (((!\inst4|_~50_combout\) # (!\inst4|_~9_combout\)) # (!\inst4|_~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~45_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|sort_realizado~2_combout\,
	combout => \inst4|_~51_combout\);

-- Location: LCCOMB_X11_Y11_N20
\inst4|d[6][3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~41_combout\ = (\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~7_combout\) # (\inst4|sort_realizado~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datac => \inst4|sort_realizado~7_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|d[6][3]~41_combout\);

-- Location: LCCOMB_X11_Y11_N14
\inst4|d[6][3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~42_combout\ = (\inst4|sort_realizado~3_combout\) # ((\inst4|_~51_combout\) # (\inst4|d[6][3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sort_realizado~3_combout\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|d[6][3]~41_combout\,
	combout => \inst4|d[6][3]~42_combout\);

-- Location: LCCOMB_X11_Y11_N6
\inst4|d[6][3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~40_combout\ = (\inst4|sort_realizado~10_combout\) # ((\inst4|_~62_combout\) # (\inst4|_~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|d[6][3]~40_combout\);

-- Location: LCCOMB_X11_Y11_N30
\inst4|d[6][3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~39_combout\ = (\inst4|sort_realizado~9_combout\ & ((\inst4|sorteio|dezena\(3)) # ((\inst4|d[6][3]~q\ & !\inst4|temp~q\)))) # (!\inst4|sort_realizado~9_combout\ & (((\inst4|d[6][3]~q\ & !\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~9_combout\,
	datab => \inst4|sorteio|dezena\(3),
	datac => \inst4|d[6][3]~q\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[6][3]~39_combout\);

-- Location: LCCOMB_X11_Y11_N2
\inst4|d[6][3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~43_combout\ = (\inst4|d[6][3]~39_combout\) # ((\inst4|d[6][3]~q\ & ((\inst4|d[6][3]~42_combout\) # (\inst4|d[6][3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~42_combout\,
	datab => \inst4|d[6][3]~40_combout\,
	datac => \inst4|d[6][3]~q\,
	datad => \inst4|d[6][3]~39_combout\,
	combout => \inst4|d[6][3]~43_combout\);

-- Location: FF_X11_Y11_N3
\inst4|d[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[6][3]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][3]~q\);

-- Location: LCCOMB_X11_Y14_N12
\inst4|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~30_combout\ = (\inst4|d[6][4]~q\ & (\inst4|sorteio|dezena\(4) & (\inst4|d[6][3]~q\ $ (!\inst4|sorteio|dezena\(3))))) # (!\inst4|d[6][4]~q\ & (!\inst4|sorteio|dezena\(4) & (\inst4|d[6][3]~q\ $ (!\inst4|sorteio|dezena\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][4]~q\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|sorteio|dezena\(4),
	combout => \inst4|_~30_combout\);

-- Location: LCCOMB_X12_Y12_N10
\inst4|d[6][2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~44_combout\ = (\inst4|sort_realizado~9_combout\ & ((\inst4|sorteio|dezena\(2)) # ((!\inst4|temp~q\ & \inst4|d[6][2]~q\)))) # (!\inst4|sort_realizado~9_combout\ & (!\inst4|temp~q\ & ((\inst4|d[6][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~9_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|d[6][2]~q\,
	combout => \inst4|d[6][2]~44_combout\);

-- Location: LCCOMB_X12_Y12_N30
\inst4|d[6][2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~45_combout\ = (\inst4|sort_realizado~10_combout\) # ((\inst4|_~51_combout\) # (\inst4|sort_realizado~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~10_combout\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|d[6][2]~45_combout\);

-- Location: LCCOMB_X12_Y12_N16
\inst4|d[6][2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~46_combout\ = (\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~7_combout\) # (\inst4|_~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst4|sort_realizado~7_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[6][2]~46_combout\);

-- Location: LCCOMB_X12_Y12_N24
\inst4|d[6][2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~47_combout\ = (\inst4|sort_realizado~3_combout\) # ((\inst4|d[6][2]~46_combout\) # (\inst4|_~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~3_combout\,
	datab => \inst4|d[6][2]~46_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|d[6][2]~47_combout\);

-- Location: LCCOMB_X12_Y12_N6
\inst4|d[6][2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~48_combout\ = (\inst4|d[6][2]~44_combout\) # ((\inst4|d[6][2]~q\ & ((\inst4|d[6][2]~45_combout\) # (\inst4|d[6][2]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~44_combout\,
	datab => \inst4|d[6][2]~45_combout\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst4|d[6][2]~47_combout\,
	combout => \inst4|d[6][2]~48_combout\);

-- Location: FF_X12_Y12_N7
\inst4|d[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[6][2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][2]~q\);

-- Location: LCCOMB_X12_Y12_N22
\inst4|d[6][1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~53_combout\ = (\inst4|sort_realizado~9_combout\ & ((\inst4|sorteio|dezena\(1)) # ((!\inst4|temp~q\ & \inst4|d[6][1]~q\)))) # (!\inst4|sort_realizado~9_combout\ & (((!\inst4|temp~q\ & \inst4|d[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~9_combout\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|temp~q\,
	datad => \inst4|d[6][1]~q\,
	combout => \inst4|d[6][1]~53_combout\);

-- Location: LCCOMB_X12_Y12_N2
\inst4|d[6][1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~54_combout\ = (\inst4|sort_realizado~7_combout\) # ((\inst4|_~62_combout\) # (\inst4|_~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~7_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|d[6][1]~54_combout\);

-- Location: LCCOMB_X12_Y12_N20
\inst4|d[6][1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~55_combout\ = (\inst4|sort_realizado~1_combout\) # ((\inst4|sort_realizado~10_combout\) # (\inst4|sort_realizado~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sort_realizado~1_combout\,
	datac => \inst4|sort_realizado~10_combout\,
	datad => \inst4|sort_realizado~0_combout\,
	combout => \inst4|d[6][1]~55_combout\);

-- Location: LCCOMB_X12_Y12_N12
\inst4|d[6][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~56_combout\ = (\inst4|sort_realizado~3_combout\) # ((\inst4|d[6][1]~55_combout\) # (\inst4|_~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~3_combout\,
	datab => \inst4|d[6][1]~55_combout\,
	datac => \inst4|_~51_combout\,
	combout => \inst4|d[6][1]~56_combout\);

-- Location: LCCOMB_X12_Y12_N18
\inst4|d[6][1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~57_combout\ = (\inst4|d[6][1]~53_combout\) # ((\inst4|d[6][1]~q\ & ((\inst4|d[6][1]~54_combout\) # (\inst4|d[6][1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][1]~53_combout\,
	datab => \inst4|d[6][1]~54_combout\,
	datac => \inst4|d[6][1]~q\,
	datad => \inst4|d[6][1]~56_combout\,
	combout => \inst4|d[6][1]~57_combout\);

-- Location: FF_X12_Y12_N19
\inst4|d[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[6][1]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][1]~q\);

-- Location: LCCOMB_X11_Y12_N8
\inst4|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~31_combout\ = (\inst4|d[6][2]~q\ & (\inst4|sorteio|dezena\(2) & (\inst4|d[6][1]~q\ $ (!\inst4|sorteio|dezena\(1))))) # (!\inst4|d[6][2]~q\ & (!\inst4|sorteio|dezena\(2) & (\inst4|d[6][1]~q\ $ (!\inst4|sorteio|dezena\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|d[6][1]~q\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|_~31_combout\);

-- Location: LCCOMB_X11_Y12_N16
\inst4|u[6][4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~50_combout\ = (\inst4|sort_realizado~7_combout\ & ((\inst4|u[6][4]~q\) # ((\inst4|sorteio|unidade\(4) & \inst4|sort_realizado~9_combout\)))) # (!\inst4|sort_realizado~7_combout\ & (\inst4|sorteio|unidade\(4) & 
-- ((\inst4|sort_realizado~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~7_combout\,
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[6][4]~50_combout\);

-- Location: LCCOMB_X10_Y13_N30
\inst4|u[6][4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~49_combout\ = (\inst4|u[6][4]~q\ & ((\inst4|_~51_combout\) # ((\inst4|sort_realizado~3_combout\) # (\inst4|sort_realizado~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][4]~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|u[6][4]~49_combout\);

-- Location: LCCOMB_X12_Y14_N12
\inst4|u[6][2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~47_combout\ = (!\inst4|_~59_combout\ & (!\inst2|convd1|segmentos[6]~9_combout\ & (\inst4|temp~q\ & !\inst4|sort_realizado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datab => \inst2|convd1|segmentos[6]~9_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~0_combout\,
	combout => \inst4|u[6][2]~47_combout\);

-- Location: LCCOMB_X11_Y14_N14
\inst4|u[6][4]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~51_combout\ = (\inst4|u[6][4]~50_combout\) # ((\inst4|u[6][4]~49_combout\) # ((\inst4|u[6][4]~q\ & !\inst4|u[6][2]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][4]~50_combout\,
	datab => \inst4|u[6][4]~49_combout\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|u[6][2]~47_combout\,
	combout => \inst4|u[6][4]~51_combout\);

-- Location: FF_X11_Y14_N15
\inst4|u[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[6][4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][4]~q\);

-- Location: LCCOMB_X11_Y11_N18
\inst4|u[6][3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~40_combout\ = (\inst4|temp~q\ & (((\inst4|sort_realizado~9_combout\ & \inst4|sorteio|unidade\(3))))) # (!\inst4|temp~q\ & ((\inst4|u[6][3]~q\) # ((\inst4|sort_realizado~9_combout\ & \inst4|sorteio|unidade\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[6][3]~q\,
	datac => \inst4|sort_realizado~9_combout\,
	datad => \inst4|sorteio|unidade\(3),
	combout => \inst4|u[6][3]~40_combout\);

-- Location: LCCOMB_X11_Y11_N12
\inst4|u[6][3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~41_combout\ = (\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~7_combout\) # (\inst4|sort_realizado~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datac => \inst4|sort_realizado~7_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[6][3]~41_combout\);

-- Location: LCCOMB_X11_Y11_N10
\inst4|u[6][3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~42_combout\ = (\inst4|sort_realizado~1_combout\) # ((\inst4|u[6][3]~41_combout\) # (\inst4|_~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sort_realizado~1_combout\,
	datac => \inst4|u[6][3]~41_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[6][3]~42_combout\);

-- Location: LCCOMB_X11_Y11_N4
\inst4|u[6][3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~44_combout\ = (\inst4|u[6][3]~40_combout\) # ((\inst4|u[6][3]~q\ & ((\inst4|u[6][3]~43_combout\) # (\inst4|u[6][3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~43_combout\,
	datab => \inst4|u[6][3]~40_combout\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|u[6][3]~42_combout\,
	combout => \inst4|u[6][3]~44_combout\);

-- Location: FF_X11_Y11_N5
\inst4|u[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[6][3]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][3]~q\);

-- Location: LCCOMB_X11_Y14_N8
\inst4|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~32_combout\ = (\inst4|sorteio|unidade\(3) & (\inst4|u[6][3]~q\ & (\inst4|sorteio|unidade\(4) $ (!\inst4|u[6][4]~q\)))) # (!\inst4|sorteio|unidade\(3) & (!\inst4|u[6][3]~q\ & (\inst4|sorteio|unidade\(4) $ (!\inst4|u[6][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|u[6][3]~q\,
	combout => \inst4|_~32_combout\);

-- Location: LCCOMB_X10_Y14_N2
\inst4|u[6][1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~54_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|sort_realizado~7_combout\) # ((\inst4|sorteio|unidade\(1) & \inst4|sort_realizado~9_combout\)))) # (!\inst4|u[6][1]~q\ & (\inst4|sorteio|unidade\(1) & ((\inst4|sort_realizado~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst4|sorteio|unidade\(1),
	datac => \inst4|sort_realizado~7_combout\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[6][1]~54_combout\);

-- Location: LCCOMB_X10_Y14_N6
\inst4|u[6][1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~52_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~62_combout\) # ((\inst4|sort_realizado~0_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|u[6][1]~q\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|u[6][1]~52_combout\);

-- Location: LCCOMB_X10_Y12_N12
\inst4|u[6][1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~53_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sort_realizado~3_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst4|sort_realizado~1_combout\,
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[6][1]~53_combout\);

-- Location: LCCOMB_X10_Y14_N4
\inst4|u[6][1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~55_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~59_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datac => \inst4|u[6][1]~q\,
	datad => \inst4|temp~q\,
	combout => \inst4|u[6][1]~55_combout\);

-- Location: LCCOMB_X10_Y14_N8
\inst4|u[6][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~56_combout\ = (\inst4|u[6][1]~54_combout\) # ((\inst4|u[6][1]~52_combout\) # ((\inst4|u[6][1]~53_combout\) # (\inst4|u[6][1]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~54_combout\,
	datab => \inst4|u[6][1]~52_combout\,
	datac => \inst4|u[6][1]~53_combout\,
	datad => \inst4|u[6][1]~55_combout\,
	combout => \inst4|u[6][1]~56_combout\);

-- Location: FF_X10_Y14_N9
\inst4|u[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[6][1]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][1]~q\);

-- Location: LCCOMB_X12_Y14_N8
\inst4|u[6][2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~46_combout\ = (\inst4|sort_realizado~7_combout\ & ((\inst4|u[6][2]~q\) # ((\inst4|sorteio|unidade\(2) & \inst4|sort_realizado~9_combout\)))) # (!\inst4|sort_realizado~7_combout\ & (((\inst4|sorteio|unidade\(2) & 
-- \inst4|sort_realizado~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~7_combout\,
	datab => \inst4|u[6][2]~q\,
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[6][2]~46_combout\);

-- Location: LCCOMB_X12_Y14_N20
\inst4|u[6][2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~45_combout\ = (\inst4|u[6][2]~q\ & ((\inst4|sort_realizado~3_combout\) # ((\inst4|sort_realizado~1_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~3_combout\,
	datab => \inst4|u[6][2]~q\,
	datac => \inst4|sort_realizado~1_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[6][2]~45_combout\);

-- Location: LCCOMB_X12_Y14_N24
\inst4|u[6][2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~48_combout\ = (\inst4|u[6][2]~46_combout\) # ((\inst4|u[6][2]~45_combout\) # ((!\inst4|u[6][2]~47_combout\ & \inst4|u[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~47_combout\,
	datab => \inst4|u[6][2]~46_combout\,
	datac => \inst4|u[6][2]~q\,
	datad => \inst4|u[6][2]~45_combout\,
	combout => \inst4|u[6][2]~48_combout\);

-- Location: FF_X12_Y14_N25
\inst4|u[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[6][2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][2]~q\);

-- Location: LCCOMB_X12_Y14_N28
\inst4|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~33_combout\ = (\inst4|sorteio|unidade\(2) & (\inst4|u[6][2]~q\ & (\inst4|u[6][1]~q\ $ (!\inst4|sorteio|unidade\(1))))) # (!\inst4|sorteio|unidade\(2) & (!\inst4|u[6][2]~q\ & (\inst4|u[6][1]~q\ $ (!\inst4|sorteio|unidade\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|u[6][1]~q\,
	datac => \inst4|sorteio|unidade\(1),
	datad => \inst4|u[6][2]~q\,
	combout => \inst4|_~33_combout\);

-- Location: LCCOMB_X11_Y14_N16
\inst4|_~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~34_combout\ = (\inst4|_~30_combout\ & (!\inst4|_~31_combout\ & ((!\inst4|_~33_combout\) # (!\inst4|_~32_combout\)))) # (!\inst4|_~30_combout\ & (((!\inst4|_~33_combout\) # (!\inst4|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~30_combout\,
	datab => \inst4|_~31_combout\,
	datac => \inst4|_~32_combout\,
	datad => \inst4|_~33_combout\,
	combout => \inst4|_~34_combout\);

-- Location: LCCOMB_X12_Y14_N10
\inst4|_~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~60_combout\ = (\inst4|_~34_combout\ & \inst4|_~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~34_combout\,
	datad => \inst4|_~29_combout\,
	combout => \inst4|_~60_combout\);

-- Location: LCCOMB_X12_Y14_N22
\inst4|sort_realizado~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~10_combout\ = (\inst4|_~60_combout\ & (\inst2|convd1|segmentos[6]~9_combout\ & (\inst4|temp~q\ & \inst4|_~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~60_combout\,
	datab => \inst2|convd1|segmentos[6]~9_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|sort_realizado~10_combout\);

-- Location: LCCOMB_X11_Y14_N26
\inst4|u[1][3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~58_combout\ = (!\inst4|sort_realizado~13_combout\ & (!\inst4|sort_realizado~2_combout\ & (!\inst4|_~59_combout\ & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~13_combout\,
	datab => \inst4|sort_realizado~2_combout\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|u[1][3]~58_combout\);

-- Location: LCCOMB_X11_Y14_N2
\inst4|u[1][3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~57_combout\ = (\inst4|sort_realizado~9_combout\) # ((\inst4|_~64_combout\) # ((\inst4|_~58_combout\) # (\inst4|sort_realizado~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~9_combout\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|sort_realizado~6_combout\,
	combout => \inst4|u[1][3]~57_combout\);

-- Location: LCCOMB_X11_Y14_N4
\inst4|u[1][3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~59_combout\ = (\inst4|u[1][3]~58_combout\ & (!\inst4|u[1][3]~57_combout\ & (!\inst4|_~62_combout\ & !\inst4|sort_realizado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~58_combout\,
	datab => \inst4|u[1][3]~57_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~0_combout\,
	combout => \inst4|u[1][3]~59_combout\);

-- Location: LCCOMB_X11_Y14_N6
\inst4|u[1][3]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~60_combout\ = (\inst4|sort_realizado~10_combout\ & ((\inst4|sorteio|unidade\(3)) # ((!\inst4|u[1][3]~59_combout\ & \inst4|u[1][3]~q\)))) # (!\inst4|sort_realizado~10_combout\ & (!\inst4|u[1][3]~59_combout\ & (\inst4|u[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~10_combout\,
	datab => \inst4|u[1][3]~59_combout\,
	datac => \inst4|u[1][3]~q\,
	datad => \inst4|sorteio|unidade\(3),
	combout => \inst4|u[1][3]~60_combout\);

-- Location: FF_X11_Y14_N7
\inst4|u[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[1][3]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][3]~q\);

-- Location: LCCOMB_X13_Y14_N30
\inst4|_~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~37_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|u[1][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[1][3]~q\)))) # (!\inst4|sorteio|unidade\(4) & (!\inst4|u[1][4]~q\ & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|u[1][3]~q\,
	datad => \inst4|u[1][4]~q\,
	combout => \inst4|_~37_combout\);

-- Location: LCCOMB_X13_Y13_N2
\inst4|_~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~36_combout\ = (\inst4|sorteio|dezena\(2) & (\inst4|d[1][2]~q\ & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[1][1]~q\)))) # (!\inst4|sorteio|dezena\(2) & (!\inst4|d[1][2]~q\ & (\inst4|sorteio|dezena\(1) $ (!\inst4|d[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(2),
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|d[1][2]~q\,
	datad => \inst4|d[1][1]~q\,
	combout => \inst4|_~36_combout\);

-- Location: LCCOMB_X13_Y13_N8
\inst4|_~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~38_combout\ = (\inst4|u[1][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|u[1][2]~q\ $ (!\inst4|sorteio|unidade\(2))))) # (!\inst4|u[1][1]~q\ & (!\inst4|sorteio|unidade\(1) & (\inst4|u[1][2]~q\ $ (!\inst4|sorteio|unidade\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~q\,
	datab => \inst4|u[1][2]~q\,
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|_~38_combout\);

-- Location: LCCOMB_X13_Y13_N6
\inst4|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~35_combout\ = (\inst4|sorteio|dezena\(4) & (\inst4|d[1][4]~q\ & (\inst4|d[1][3]~q\ $ (!\inst4|sorteio|dezena\(3))))) # (!\inst4|sorteio|dezena\(4) & (!\inst4|d[1][4]~q\ & (\inst4|d[1][3]~q\ $ (!\inst4|sorteio|dezena\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(4),
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|d[1][4]~q\,
	datad => \inst4|sorteio|dezena\(3),
	combout => \inst4|_~35_combout\);

-- Location: LCCOMB_X13_Y13_N22
\inst4|_~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~39_combout\ = (\inst4|_~37_combout\ & (!\inst4|_~38_combout\ & ((!\inst4|_~35_combout\) # (!\inst4|_~36_combout\)))) # (!\inst4|_~37_combout\ & (((!\inst4|_~35_combout\)) # (!\inst4|_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~37_combout\,
	datab => \inst4|_~36_combout\,
	datac => \inst4|_~38_combout\,
	datad => \inst4|_~35_combout\,
	combout => \inst4|_~39_combout\);

-- Location: LCCOMB_X10_Y13_N22
\inst4|_~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~45_combout\ = (\inst4|_~39_combout\ & (\inst4|_~29_combout\ & (\inst4|_~34_combout\ & \inst4|_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|_~29_combout\,
	datac => \inst4|_~34_combout\,
	datad => \inst4|_~44_combout\,
	combout => \inst4|_~45_combout\);

-- Location: LCCOMB_X11_Y16_N18
\inst4|_~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~75_combout\ = (\inst4|sort_realizado~0_combout\ & (((!\inst4|_~45_combout\) # (!\inst4|_~56_combout\)) # (!\inst4|_~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|_~16_combout\,
	datac => \inst4|_~56_combout\,
	datad => \inst4|_~45_combout\,
	combout => \inst4|_~75_combout\);

-- Location: LCCOMB_X10_Y13_N6
\inst4|d[2][3]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~78_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~75_combout\) # ((\inst4|sort_realizado~13_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~75_combout\,
	datab => \inst4|sort_realizado~13_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|d[2][3]~q\,
	combout => \inst4|d[2][3]~78_combout\);

-- Location: LCCOMB_X10_Y13_N4
\inst4|d[2][3]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~80_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|sort_realizado~9_combout\) # ((\inst4|_~59_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~9_combout\,
	datab => \inst4|d[2][3]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|d[2][3]~80_combout\);

-- Location: LCCOMB_X10_Y13_N20
\inst4|d[2][3]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~79_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|sort_realizado~2_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|d[2][3]~q\,
	datac => \inst4|sort_realizado~2_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[2][3]~79_combout\);

-- Location: LCCOMB_X10_Y13_N14
\inst4|_~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~65_combout\ = (\inst4|_~16_combout\ & \inst4|_~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~16_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|_~65_combout\);

-- Location: LCCOMB_X11_Y10_N2
\inst4|_~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~66_combout\ = (\inst4|sorteio|dezena\(3) & (\inst4|sort_realizado~0_combout\ & (\inst4|_~45_combout\ & \inst4|_~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst4|_~45_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|_~66_combout\);

-- Location: LCCOMB_X11_Y10_N24
\inst4|d[2][3]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~77_combout\ = (\inst4|_~66_combout\) # ((\inst4|d[2][3]~q\ & ((\inst4|_~62_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|_~66_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|d[2][3]~77_combout\);

-- Location: LCCOMB_X10_Y13_N18
\inst4|d[2][3]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~81_combout\ = (\inst4|d[2][3]~78_combout\) # ((\inst4|d[2][3]~80_combout\) # ((\inst4|d[2][3]~79_combout\) # (\inst4|d[2][3]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~78_combout\,
	datab => \inst4|d[2][3]~80_combout\,
	datac => \inst4|d[2][3]~79_combout\,
	datad => \inst4|d[2][3]~77_combout\,
	combout => \inst4|d[2][3]~81_combout\);

-- Location: FF_X10_Y13_N19
\inst4|d[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[2][3]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][3]~q\);

-- Location: LCCOMB_X11_Y12_N30
\inst4|_~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~68_combout\ = (\inst4|sort_realizado~0_combout\ & (\inst4|sorteio|dezena\(4) & (\inst4|_~45_combout\ & \inst4|_~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|_~45_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|_~68_combout\);

-- Location: LCCOMB_X11_Y10_N10
\inst4|d[2][4]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~87_combout\ = (\inst4|_~68_combout\) # ((\inst4|d[2][4]~q\ & ((\inst4|_~62_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|_~68_combout\,
	datac => \inst4|sort_realizado~10_combout\,
	datad => \inst4|d[2][4]~q\,
	combout => \inst4|d[2][4]~87_combout\);

-- Location: LCCOMB_X11_Y10_N28
\inst4|d[2][4]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~88_combout\ = (\inst4|d[2][4]~q\ & ((\inst4|sort_realizado~13_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~13_combout\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|_~75_combout\,
	datad => \inst4|d[2][4]~q\,
	combout => \inst4|d[2][4]~88_combout\);

-- Location: LCCOMB_X11_Y10_N12
\inst4|d[2][4]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~89_combout\ = (\inst4|d[2][4]~q\ & ((\inst4|sort_realizado~2_combout\) # ((\inst4|sort_realizado~6_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~2_combout\,
	datab => \inst4|sort_realizado~6_combout\,
	datac => \inst4|d[2][4]~q\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[2][4]~89_combout\);

-- Location: LCCOMB_X11_Y10_N18
\inst4|d[2][4]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~90_combout\ = (\inst4|d[2][4]~q\ & ((\inst4|sort_realizado~9_combout\) # ((\inst4|_~59_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~q\,
	datab => \inst4|sort_realizado~9_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|d[2][4]~90_combout\);

-- Location: LCCOMB_X11_Y10_N6
\inst4|d[2][4]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][4]~91_combout\ = (\inst4|d[2][4]~87_combout\) # ((\inst4|d[2][4]~88_combout\) # ((\inst4|d[2][4]~89_combout\) # (\inst4|d[2][4]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~87_combout\,
	datab => \inst4|d[2][4]~88_combout\,
	datac => \inst4|d[2][4]~89_combout\,
	datad => \inst4|d[2][4]~90_combout\,
	combout => \inst4|d[2][4]~91_combout\);

-- Location: FF_X11_Y10_N7
\inst4|d[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[2][4]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][4]~q\);

-- Location: LCCOMB_X12_Y13_N10
\inst4|_~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~46_combout\ = (\inst4|d[2][3]~q\ & (\inst4|sorteio|dezena\(3) & (\inst4|d[2][4]~q\ $ (!\inst4|sorteio|dezena\(4))))) # (!\inst4|d[2][3]~q\ & (!\inst4|sorteio|dezena\(3) & (\inst4|d[2][4]~q\ $ (!\inst4|sorteio|dezena\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|sorteio|dezena\(4),
	datad => \inst4|sorteio|dezena\(3),
	combout => \inst4|_~46_combout\);

-- Location: LCCOMB_X11_Y14_N22
\inst4|_~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~72_combout\ = (\inst4|sorteio|unidade\(3) & (\inst4|_~45_combout\ & (\inst4|sort_realizado~0_combout\ & \inst4|_~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|_~45_combout\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|_~72_combout\);

-- Location: LCCOMB_X11_Y14_N24
\inst4|u[2][3]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~86_combout\ = (\inst4|_~72_combout\) # ((\inst4|u[2][3]~q\ & ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~72_combout\,
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|u[2][3]~q\,
	combout => \inst4|u[2][3]~86_combout\);

-- Location: LCCOMB_X11_Y16_N20
\inst4|u[2][3]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~87_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|sort_realizado~13_combout\) # ((\inst4|_~75_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~13_combout\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst4|_~75_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[2][3]~87_combout\);

-- Location: LCCOMB_X11_Y14_N0
\inst4|u[2][3]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~89_combout\ = (\inst4|u[2][3]~86_combout\) # ((\inst4|u[2][3]~87_combout\) # ((\inst4|u[2][3]~q\ & !\inst4|u[2][3]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~86_combout\,
	datab => \inst4|u[2][3]~87_combout\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst4|u[2][3]~88_combout\,
	combout => \inst4|u[2][3]~89_combout\);

-- Location: FF_X11_Y14_N1
\inst4|u[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[2][3]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][3]~q\);

-- Location: LCCOMB_X11_Y14_N18
\inst4|_~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~48_combout\ = (\inst4|sorteio|unidade\(3) & (\inst4|u[2][3]~q\ & (\inst4|sorteio|unidade\(4) $ (!\inst4|u[2][4]~q\)))) # (!\inst4|sorteio|unidade\(3) & (!\inst4|u[2][3]~q\ & (\inst4|sorteio|unidade\(4) $ (!\inst4|u[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(3),
	datab => \inst4|sorteio|unidade\(4),
	datac => \inst4|u[2][4]~q\,
	datad => \inst4|u[2][3]~q\,
	combout => \inst4|_~48_combout\);

-- Location: LCCOMB_X11_Y16_N22
\inst4|u[2][1]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~83_combout\ = (\inst4|u[2][1]~q\ & ((\inst4|_~58_combout\) # ((\inst4|sort_realizado~2_combout\) # (\inst4|sort_realizado~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~58_combout\,
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|sort_realizado~2_combout\,
	datad => \inst4|sort_realizado~6_combout\,
	combout => \inst4|u[2][1]~83_combout\);

-- Location: LCCOMB_X11_Y16_N4
\inst4|u[2][1]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~84_combout\ = (\inst4|u[2][1]~q\ & (((\inst4|sort_realizado~9_combout\) # (\inst4|_~59_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[2][1]~q\,
	datac => \inst4|sort_realizado~9_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|u[2][1]~84_combout\);

-- Location: LCCOMB_X10_Y13_N24
\inst4|_~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~71_combout\ = (\inst4|sorteio|unidade\(1) & (\inst4|_~65_combout\ & (\inst4|_~45_combout\ & \inst4|sort_realizado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(1),
	datab => \inst4|_~65_combout\,
	datac => \inst4|_~45_combout\,
	datad => \inst4|sort_realizado~0_combout\,
	combout => \inst4|_~71_combout\);

-- Location: LCCOMB_X11_Y16_N14
\inst4|u[2][1]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~81_combout\ = (\inst4|_~71_combout\) # ((\inst4|u[2][1]~q\ & ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~71_combout\,
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|u[2][1]~q\,
	combout => \inst4|u[2][1]~81_combout\);

-- Location: LCCOMB_X11_Y16_N16
\inst4|u[2][1]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~82_combout\ = (\inst4|u[2][1]~q\ & ((\inst4|sort_realizado~13_combout\) # ((\inst4|_~64_combout\) # (\inst4|_~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~13_combout\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|_~75_combout\,
	datad => \inst4|u[2][1]~q\,
	combout => \inst4|u[2][1]~82_combout\);

-- Location: LCCOMB_X11_Y16_N2
\inst4|u[2][1]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~85_combout\ = (\inst4|u[2][1]~83_combout\) # ((\inst4|u[2][1]~84_combout\) # ((\inst4|u[2][1]~81_combout\) # (\inst4|u[2][1]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~83_combout\,
	datab => \inst4|u[2][1]~84_combout\,
	datac => \inst4|u[2][1]~81_combout\,
	datad => \inst4|u[2][1]~82_combout\,
	combout => \inst4|u[2][1]~85_combout\);

-- Location: FF_X11_Y16_N3
\inst4|u[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[2][1]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][1]~q\);

-- Location: LCCOMB_X10_Y13_N26
\inst4|_~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~73_combout\ = (\inst4|_~45_combout\ & (\inst4|sorteio|unidade\(2) & (\inst4|_~65_combout\ & \inst4|sort_realizado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~45_combout\,
	datab => \inst4|sorteio|unidade\(2),
	datac => \inst4|_~65_combout\,
	datad => \inst4|sort_realizado~0_combout\,
	combout => \inst4|_~73_combout\);

-- Location: LCCOMB_X14_Y14_N8
\inst4|u[2][2]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~90_combout\ = (\inst4|_~73_combout\) # ((\inst4|u[2][2]~q\ & ((\inst4|_~62_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|u[2][2]~q\,
	datad => \inst4|_~73_combout\,
	combout => \inst4|u[2][2]~90_combout\);

-- Location: LCCOMB_X10_Y13_N2
\inst4|u[2][2]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~92_combout\ = (\inst4|u[2][2]~q\ & ((\inst4|sort_realizado~2_combout\) # (\inst4|sort_realizado~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~2_combout\,
	datab => \inst4|sort_realizado~7_combout\,
	datad => \inst4|u[2][2]~q\,
	combout => \inst4|u[2][2]~92_combout\);

-- Location: LCCOMB_X14_Y14_N28
\inst4|u[2][2]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~93_combout\ = (\inst4|u[2][2]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[2][2]~93_combout\);

-- Location: LCCOMB_X11_Y16_N28
\inst4|u[2][2]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~91_combout\ = (\inst4|u[2][2]~q\ & ((\inst4|_~75_combout\) # ((\inst4|sort_realizado~13_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|_~75_combout\,
	datac => \inst4|sort_realizado~13_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[2][2]~91_combout\);

-- Location: LCCOMB_X14_Y14_N30
\inst4|u[2][2]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~94_combout\ = (\inst4|u[2][2]~90_combout\) # ((\inst4|u[2][2]~92_combout\) # ((\inst4|u[2][2]~93_combout\) # (\inst4|u[2][2]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~90_combout\,
	datab => \inst4|u[2][2]~92_combout\,
	datac => \inst4|u[2][2]~93_combout\,
	datad => \inst4|u[2][2]~91_combout\,
	combout => \inst4|u[2][2]~94_combout\);

-- Location: FF_X14_Y14_N31
\inst4|u[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[2][2]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][2]~q\);

-- Location: LCCOMB_X12_Y13_N14
\inst4|_~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~49_combout\ = (\inst4|u[2][1]~q\ & (\inst4|sorteio|unidade\(1) & (\inst4|u[2][2]~q\ $ (!\inst4|sorteio|unidade\(2))))) # (!\inst4|u[2][1]~q\ & (!\inst4|sorteio|unidade\(1) & (\inst4|u[2][2]~q\ $ (!\inst4|sorteio|unidade\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|_~49_combout\);

-- Location: LCCOMB_X12_Y11_N28
\inst4|_~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~67_combout\ = (\inst4|sort_realizado~0_combout\ & (\inst4|sorteio|dezena\(2) & (\inst4|_~65_combout\ & \inst4|_~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~45_combout\,
	combout => \inst4|_~67_combout\);

-- Location: LCCOMB_X12_Y11_N20
\inst4|d[2][2]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~82_combout\ = (\inst4|_~67_combout\) # ((\inst4|d[2][2]~q\ & ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~67_combout\,
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|d[2][2]~q\,
	combout => \inst4|d[2][2]~82_combout\);

-- Location: LCCOMB_X12_Y11_N22
\inst4|d[2][2]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~84_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|sort_realizado~2_combout\) # ((\inst4|sort_realizado~6_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~2_combout\,
	datab => \inst4|d[2][2]~q\,
	datac => \inst4|sort_realizado~6_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[2][2]~84_combout\);

-- Location: LCCOMB_X12_Y11_N4
\inst4|d[2][2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~85_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|sort_realizado~9_combout\,
	datad => \inst4|d[2][2]~q\,
	combout => \inst4|d[2][2]~85_combout\);

-- Location: LCCOMB_X12_Y11_N26
\inst4|d[2][2]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~83_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|_~64_combout\) # ((\inst4|_~75_combout\) # (\inst4|sort_realizado~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|_~75_combout\,
	datad => \inst4|sort_realizado~13_combout\,
	combout => \inst4|d[2][2]~83_combout\);

-- Location: LCCOMB_X12_Y11_N24
\inst4|d[2][2]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~86_combout\ = (\inst4|d[2][2]~82_combout\) # ((\inst4|d[2][2]~84_combout\) # ((\inst4|d[2][2]~85_combout\) # (\inst4|d[2][2]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~82_combout\,
	datab => \inst4|d[2][2]~84_combout\,
	datac => \inst4|d[2][2]~85_combout\,
	datad => \inst4|d[2][2]~83_combout\,
	combout => \inst4|d[2][2]~86_combout\);

-- Location: FF_X12_Y11_N25
\inst4|d[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[2][2]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][2]~q\);

-- Location: LCCOMB_X11_Y16_N8
\inst4|d[2][1]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~94_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|sort_realizado~2_combout\) # ((\inst4|_~58_combout\) # (\inst4|sort_realizado~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst4|sort_realizado~2_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|sort_realizado~6_combout\,
	combout => \inst4|d[2][1]~94_combout\);

-- Location: LCCOMB_X11_Y16_N24
\inst4|d[2][1]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~95_combout\ = (\inst4|d[2][1]~q\ & (((\inst4|sort_realizado~9_combout\) # (\inst4|_~59_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|sort_realizado~9_combout\,
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|d[2][1]~95_combout\);

-- Location: LCCOMB_X11_Y16_N6
\inst4|d[2][1]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~93_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|sort_realizado~13_combout\) # ((\inst4|_~75_combout\) # (\inst4|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~13_combout\,
	datab => \inst4|_~75_combout\,
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[2][1]~93_combout\);

-- Location: LCCOMB_X11_Y12_N22
\inst4|_~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~69_combout\ = (\inst4|sort_realizado~0_combout\ & (\inst4|sorteio|dezena\(1) & (\inst4|_~45_combout\ & \inst4|_~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|_~45_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|_~69_combout\);

-- Location: LCCOMB_X11_Y12_N6
\inst4|d[2][1]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~92_combout\ = (\inst4|_~69_combout\) # ((\inst4|d[2][1]~q\ & ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|d[2][1]~q\,
	datac => \inst4|sort_realizado~10_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[2][1]~92_combout\);

-- Location: LCCOMB_X11_Y16_N30
\inst4|d[2][1]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~96_combout\ = (\inst4|d[2][1]~94_combout\) # ((\inst4|d[2][1]~95_combout\) # ((\inst4|d[2][1]~93_combout\) # (\inst4|d[2][1]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~94_combout\,
	datab => \inst4|d[2][1]~95_combout\,
	datac => \inst4|d[2][1]~93_combout\,
	datad => \inst4|d[2][1]~92_combout\,
	combout => \inst4|d[2][1]~96_combout\);

-- Location: FF_X11_Y16_N31
\inst4|d[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[2][1]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][1]~q\);

-- Location: LCCOMB_X11_Y12_N10
\inst4|_~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~47_combout\ = (\inst4|sorteio|dezena\(1) & (\inst4|d[2][1]~q\ & (\inst4|sorteio|dezena\(2) $ (!\inst4|d[2][2]~q\)))) # (!\inst4|sorteio|dezena\(1) & (!\inst4|d[2][1]~q\ & (\inst4|sorteio|dezena\(2) $ (!\inst4|d[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(1),
	datab => \inst4|sorteio|dezena\(2),
	datac => \inst4|d[2][2]~q\,
	datad => \inst4|d[2][1]~q\,
	combout => \inst4|_~47_combout\);

-- Location: LCCOMB_X12_Y13_N24
\inst4|_~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~50_combout\ = (\inst4|_~46_combout\ & (!\inst4|_~47_combout\ & ((!\inst4|_~49_combout\) # (!\inst4|_~48_combout\)))) # (!\inst4|_~46_combout\ & (((!\inst4|_~49_combout\)) # (!\inst4|_~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datab => \inst4|_~48_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~47_combout\,
	combout => \inst4|_~50_combout\);

-- Location: LCCOMB_X10_Y13_N16
\inst4|sort_realizado~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~3_combout\ = (\inst4|_~50_combout\ & (\inst4|_~9_combout\ & (\inst4|_~45_combout\ & \inst4|sort_realizado~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~50_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~45_combout\,
	datad => \inst4|sort_realizado~2_combout\,
	combout => \inst4|sort_realizado~3_combout\);

-- Location: LCCOMB_X11_Y11_N8
\inst4|u[6][3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~43_combout\ = (\inst4|sort_realizado~3_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sort_realizado~3_combout\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|u[6][3]~43_combout\);

-- Location: LCCOMB_X11_Y11_N22
\inst4|d[6][4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~49_combout\ = (\inst4|sort_realizado~9_combout\ & ((\inst4|sorteio|dezena\(4)) # ((\inst4|d[6][4]~q\ & !\inst4|temp~q\)))) # (!\inst4|sort_realizado~9_combout\ & (((\inst4|d[6][4]~q\ & !\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~9_combout\,
	datab => \inst4|sorteio|dezena\(4),
	datac => \inst4|d[6][4]~q\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[6][4]~49_combout\);

-- Location: LCCOMB_X11_Y11_N16
\inst4|d[6][4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~50_combout\ = (\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~7_combout\) # (\inst4|sort_realizado~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datac => \inst4|sort_realizado~7_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|d[6][4]~50_combout\);

-- Location: LCCOMB_X11_Y11_N24
\inst4|d[6][4]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~51_combout\ = (\inst4|d[6][4]~50_combout\) # ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][4]~50_combout\,
	datac => \inst4|sort_realizado~10_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[6][4]~51_combout\);

-- Location: LCCOMB_X11_Y11_N26
\inst4|d[6][4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][4]~52_combout\ = (\inst4|d[6][4]~49_combout\) # ((\inst4|d[6][4]~q\ & ((\inst4|u[6][3]~43_combout\) # (\inst4|d[6][4]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~43_combout\,
	datab => \inst4|d[6][4]~49_combout\,
	datac => \inst4|d[6][4]~q\,
	datad => \inst4|d[6][4]~51_combout\,
	combout => \inst4|d[6][4]~52_combout\);

-- Location: FF_X11_Y11_N27
\inst4|d[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[6][4]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][4]~q\);

-- Location: LCCOMB_X11_Y12_N24
\inst4|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~11_combout\ = (!\inst4|d[6][4]~q\ & (!\inst4|d[6][1]~q\ & (!\inst4|u[6][4]~q\ & !\inst4|u[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][4]~q\,
	datab => \inst4|d[6][1]~q\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|u[6][1]~q\,
	combout => \inst4|_~11_combout\);

-- Location: LCCOMB_X11_Y11_N28
\inst4|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~10_combout\ = (!\inst4|u[6][2]~q\ & (!\inst4|d[6][2]~q\ & (!\inst4|u[6][3]~q\ & !\inst4|d[6][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~q\,
	datab => \inst4|d[6][2]~q\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|d[6][3]~q\,
	combout => \inst4|_~10_combout\);

-- Location: LCCOMB_X10_Y11_N12
\inst4|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~12_combout\ = (\inst4|_~11_combout\ & \inst4|_~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~10_combout\,
	combout => \inst4|_~12_combout\);

-- Location: LCCOMB_X11_Y13_N6
\inst4|sort_realizado~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~9_combout\ = (\inst4|_~57_combout\ & (\inst4|_~12_combout\ & (\inst4|_~29_combout\ & \inst4|sort_realizado~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~57_combout\,
	datab => \inst4|_~12_combout\,
	datac => \inst4|_~29_combout\,
	datad => \inst4|sort_realizado~8_combout\,
	combout => \inst4|sort_realizado~9_combout\);

-- Location: LCCOMB_X14_Y14_N26
\inst4|u[5][2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~8_combout\ = (\inst4|u[5][2]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[5][2]~8_combout\);

-- Location: LCCOMB_X13_Y14_N26
\inst4|u[5][2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~7_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|_~58_combout\) # ((\inst4|sort_realizado~6_combout\ & \inst4|sorteio|unidade\(2))))) # (!\inst4|u[5][2]~q\ & (\inst4|sort_realizado~6_combout\ & ((\inst4|sorteio|unidade\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|sort_realizado~6_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|sorteio|unidade\(2),
	combout => \inst4|u[5][2]~7_combout\);

-- Location: LCCOMB_X14_Y14_N14
\inst4|u[5][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~6_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sort_realizado~3_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|sort_realizado~1_combout\,
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[5][2]~6_combout\);

-- Location: LCCOMB_X14_Y14_N6
\inst4|u[5][2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~9_combout\ = (\inst4|u[5][2]~5_combout\) # ((\inst4|u[5][2]~8_combout\) # ((\inst4|u[5][2]~7_combout\) # (\inst4|u[5][2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~5_combout\,
	datab => \inst4|u[5][2]~8_combout\,
	datac => \inst4|u[5][2]~7_combout\,
	datad => \inst4|u[5][2]~6_combout\,
	combout => \inst4|u[5][2]~9_combout\);

-- Location: FF_X14_Y14_N7
\inst4|u[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[5][2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][2]~q\);

-- Location: LCCOMB_X14_Y14_N10
\inst4|u[5][3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~0_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~62_combout\) # ((\inst4|sort_realizado~10_combout\) # (\inst4|sort_realizado~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|u[5][3]~q\,
	combout => \inst4|u[5][3]~0_combout\);

-- Location: LCCOMB_X14_Y14_N24
\inst4|u[5][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~3_combout\ = (\inst4|u[5][3]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[5][3]~3_combout\);

-- Location: LCCOMB_X13_Y14_N0
\inst4|u[5][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~2_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~58_combout\) # ((\inst4|sort_realizado~6_combout\ & \inst4|sorteio|unidade\(3))))) # (!\inst4|u[5][3]~q\ & (\inst4|sort_realizado~6_combout\ & ((\inst4|sorteio|unidade\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|sort_realizado~6_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|sorteio|unidade\(3),
	combout => \inst4|u[5][3]~2_combout\);

-- Location: LCCOMB_X14_Y14_N4
\inst4|u[5][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~1_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sort_realizado~3_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~1_combout\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[5][3]~1_combout\);

-- Location: LCCOMB_X14_Y14_N20
\inst4|u[5][3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~4_combout\ = (\inst4|u[5][3]~0_combout\) # ((\inst4|u[5][3]~3_combout\) # ((\inst4|u[5][3]~2_combout\) # (\inst4|u[5][3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~0_combout\,
	datab => \inst4|u[5][3]~3_combout\,
	datac => \inst4|u[5][3]~2_combout\,
	datad => \inst4|u[5][3]~1_combout\,
	combout => \inst4|u[5][3]~4_combout\);

-- Location: FF_X14_Y14_N21
\inst4|u[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[5][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][3]~q\);

-- Location: LCCOMB_X14_Y11_N12
\inst4|d[5][2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~7_combout\ = (\inst4|sort_realizado~6_combout\ & ((\inst4|sorteio|dezena\(2)) # ((\inst4|d[5][2]~q\ & \inst4|_~58_combout\)))) # (!\inst4|sort_realizado~6_combout\ & (\inst4|d[5][2]~q\ & ((\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[5][2]~7_combout\);

-- Location: LCCOMB_X14_Y11_N10
\inst4|d[5][2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~8_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|d[5][2]~8_combout\);

-- Location: LCCOMB_X14_Y11_N16
\inst4|d[5][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~6_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sort_realizado~3_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~1_combout\,
	datab => \inst4|sort_realizado~3_combout\,
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[5][2]~6_combout\);

-- Location: LCCOMB_X14_Y11_N2
\inst4|d[5][2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~5_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|_~62_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|d[5][2]~5_combout\);

-- Location: LCCOMB_X14_Y11_N22
\inst4|d[5][2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~9_combout\ = (\inst4|d[5][2]~7_combout\) # ((\inst4|d[5][2]~8_combout\) # ((\inst4|d[5][2]~6_combout\) # (\inst4|d[5][2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~7_combout\,
	datab => \inst4|d[5][2]~8_combout\,
	datac => \inst4|d[5][2]~6_combout\,
	datad => \inst4|d[5][2]~5_combout\,
	combout => \inst4|d[5][2]~9_combout\);

-- Location: FF_X14_Y11_N23
\inst4|d[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[5][2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][2]~q\);

-- Location: LCCOMB_X14_Y11_N20
\inst4|d[5][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~1_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sort_realizado~3_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~1_combout\,
	datab => \inst4|sort_realizado~3_combout\,
	datac => \inst4|d[5][3]~q\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[5][3]~1_combout\);

-- Location: LCCOMB_X14_Y11_N26
\inst4|d[5][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~3_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|d[5][3]~3_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst4|d[5][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~2_combout\ = (\inst4|sort_realizado~6_combout\ & ((\inst4|sorteio|dezena\(3)) # ((\inst4|d[5][3]~q\ & \inst4|_~58_combout\)))) # (!\inst4|sort_realizado~6_combout\ & (\inst4|d[5][3]~q\ & ((\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|sorteio|dezena\(3),
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[5][3]~2_combout\);

-- Location: LCCOMB_X14_Y11_N30
\inst4|d[5][3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~0_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|temp~q\ & \inst2|convd1|segmentos[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst2|convd1|segmentos[6]~9_combout\,
	datad => \inst4|d[5][3]~q\,
	combout => \inst4|d[5][3]~0_combout\);

-- Location: LCCOMB_X14_Y11_N24
\inst4|d[5][3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~4_combout\ = (\inst4|d[5][3]~1_combout\) # ((\inst4|d[5][3]~3_combout\) # ((\inst4|d[5][3]~2_combout\) # (\inst4|d[5][3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~1_combout\,
	datab => \inst4|d[5][3]~3_combout\,
	datac => \inst4|d[5][3]~2_combout\,
	datad => \inst4|d[5][3]~0_combout\,
	combout => \inst4|d[5][3]~4_combout\);

-- Location: FF_X14_Y11_N25
\inst4|d[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[5][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][3]~q\);

-- Location: LCCOMB_X14_Y11_N14
\inst4|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~4_combout\ = (!\inst4|u[5][2]~q\ & (!\inst4|u[5][3]~q\ & (!\inst4|d[5][2]~q\ & !\inst4|d[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|d[5][3]~q\,
	combout => \inst4|_~4_combout\);

-- Location: LCCOMB_X12_Y12_N14
\inst4|d[5][1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~15_combout\ = (\inst4|sort_realizado~0_combout\) # ((\inst4|sort_realizado~9_combout\) # ((\inst4|sort_realizado~1_combout\) # (\inst4|_~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|sort_realizado~9_combout\,
	datac => \inst4|sort_realizado~1_combout\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[5][1]~15_combout\);

-- Location: LCCOMB_X12_Y12_N4
\inst4|d[5][1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~16_combout\ = (\inst4|sort_realizado~10_combout\) # ((\inst4|sort_realizado~3_combout\) # ((\inst4|d[5][1]~15_combout\) # (\inst4|_~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~10_combout\,
	datab => \inst4|sort_realizado~3_combout\,
	datac => \inst4|d[5][1]~15_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[5][1]~16_combout\);

-- Location: LCCOMB_X12_Y12_N26
\inst4|d[5][1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~17_combout\ = (!\inst4|_~59_combout\ & (\inst4|temp~q\ & (!\inst4|_~51_combout\ & !\inst4|d[5][1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|d[5][1]~16_combout\,
	combout => \inst4|d[5][1]~17_combout\);

-- Location: LCCOMB_X12_Y12_N0
\inst4|d[5][1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~18_combout\ = (\inst4|d[5][1]~17_combout\ & (\inst4|sort_realizado~6_combout\ & ((\inst4|sorteio|dezena\(1))))) # (!\inst4|d[5][1]~17_combout\ & ((\inst4|d[5][1]~q\) # ((\inst4|sort_realizado~6_combout\ & \inst4|sorteio|dezena\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~17_combout\,
	datab => \inst4|sort_realizado~6_combout\,
	datac => \inst4|d[5][1]~q\,
	datad => \inst4|sorteio|dezena\(1),
	combout => \inst4|d[5][1]~18_combout\);

-- Location: FF_X12_Y12_N1
\inst4|d[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[5][1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][1]~q\);

-- Location: LCCOMB_X12_Y11_N12
\inst4|u[5][1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~17_combout\ = (\inst4|temp~q\ & (!\inst2|convd1|segmentos[6]~9_combout\ & (!\inst4|sort_realizado~8_combout\ & !\inst4|sort_realizado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst2|convd1|segmentos[6]~9_combout\,
	datac => \inst4|sort_realizado~8_combout\,
	datad => \inst4|sort_realizado~0_combout\,
	combout => \inst4|u[5][1]~17_combout\);

-- Location: LCCOMB_X13_Y11_N10
\inst4|u[5][1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~15_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sort_realizado~3_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~1_combout\,
	datab => \inst4|u[5][1]~q\,
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[5][1]~15_combout\);

-- Location: LCCOMB_X13_Y11_N4
\inst4|u[5][1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~16_combout\ = (\inst4|sort_realizado~6_combout\ & ((\inst4|sorteio|unidade\(1)) # ((\inst4|u[5][1]~q\ & \inst4|_~58_combout\)))) # (!\inst4|sort_realizado~6_combout\ & (\inst4|u[5][1]~q\ & ((\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|u[5][1]~q\,
	datac => \inst4|sorteio|unidade\(1),
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[5][1]~16_combout\);

-- Location: LCCOMB_X13_Y11_N20
\inst4|u[5][1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~18_combout\ = (\inst4|u[5][1]~15_combout\) # ((\inst4|u[5][1]~16_combout\) # ((!\inst4|u[5][1]~17_combout\ & \inst4|u[5][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~17_combout\,
	datab => \inst4|u[5][1]~15_combout\,
	datac => \inst4|u[5][1]~q\,
	datad => \inst4|u[5][1]~16_combout\,
	combout => \inst4|u[5][1]~18_combout\);

-- Location: FF_X13_Y11_N21
\inst4|u[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[5][1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][1]~q\);

-- Location: LCCOMB_X13_Y11_N22
\inst4|d[5][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~12_combout\ = (\inst4|sort_realizado~6_combout\ & ((\inst4|sorteio|dezena\(4)) # ((\inst4|_~58_combout\ & \inst4|d[5][4]~q\)))) # (!\inst4|sort_realizado~6_combout\ & (\inst4|_~58_combout\ & (\inst4|d[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|_~58_combout\,
	datac => \inst4|d[5][4]~q\,
	datad => \inst4|sorteio|dezena\(4),
	combout => \inst4|d[5][4]~12_combout\);

-- Location: LCCOMB_X13_Y11_N6
\inst4|d[5][4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~11_combout\ = (\inst4|d[5][4]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sort_realizado~3_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|sort_realizado~1_combout\,
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[5][4]~11_combout\);

-- Location: LCCOMB_X12_Y14_N26
\inst4|d[5][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~10_combout\ = (\inst4|d[5][4]~q\ & ((\inst4|sort_realizado~10_combout\) # ((\inst4|sort_realizado~0_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~10_combout\,
	datab => \inst4|sort_realizado~0_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|d[5][4]~q\,
	combout => \inst4|d[5][4]~10_combout\);

-- Location: LCCOMB_X13_Y11_N14
\inst4|d[5][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~13_combout\ = (\inst4|d[5][4]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~59_combout\,
	datac => \inst4|d[5][4]~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|d[5][4]~13_combout\);

-- Location: LCCOMB_X13_Y11_N26
\inst4|d[5][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][4]~14_combout\ = (\inst4|d[5][4]~12_combout\) # ((\inst4|d[5][4]~11_combout\) # ((\inst4|d[5][4]~10_combout\) # (\inst4|d[5][4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~12_combout\,
	datab => \inst4|d[5][4]~11_combout\,
	datac => \inst4|d[5][4]~10_combout\,
	datad => \inst4|d[5][4]~13_combout\,
	combout => \inst4|d[5][4]~14_combout\);

-- Location: FF_X13_Y11_N27
\inst4|d[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[5][4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][4]~q\);

-- Location: LCCOMB_X13_Y11_N18
\inst4|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~5_combout\ = (!\inst4|d[5][1]~q\ & (!\inst4|u[5][1]~q\ & (!\inst4|d[5][4]~q\ & !\inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|u[5][1]~q\,
	datac => \inst4|d[5][4]~q\,
	datad => \inst4|u[5][4]~q\,
	combout => \inst4|_~5_combout\);

-- Location: LCCOMB_X12_Y13_N6
\inst4|_~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~74_combout\ = (\inst4|_~4_combout\ & (\inst4|_~5_combout\ & \inst4|_~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~4_combout\,
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~34_combout\,
	combout => \inst4|_~74_combout\);

-- Location: LCCOMB_X12_Y13_N8
\inst4|sort_realizado~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~5_combout\ = (\inst4|_~39_combout\ & (\inst4|_~44_combout\ & !\inst4|count|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~39_combout\,
	datac => \inst4|_~44_combout\,
	datad => \inst4|count|cnt\(1),
	combout => \inst4|sort_realizado~5_combout\);

-- Location: LCCOMB_X12_Y13_N16
\inst4|sort_realizado~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~4_combout\ = (\inst4|_~56_combout\ & (!\inst4|count|cnt\(2) & (\inst4|count|cnt\(3) & \inst4|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	datad => \inst4|_~50_combout\,
	combout => \inst4|sort_realizado~4_combout\);

-- Location: LCCOMB_X12_Y13_N30
\inst4|sort_realizado~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~6_combout\ = (\inst4|_~74_combout\ & (\inst4|sort_realizado~5_combout\ & (\inst4|temp~q\ & \inst4|sort_realizado~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~74_combout\,
	datab => \inst4|sort_realizado~5_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|sort_realizado~4_combout\,
	combout => \inst4|sort_realizado~6_combout\);

-- Location: LCCOMB_X13_Y12_N8
\inst4|d[4][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~36_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|sort_realizado~6_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~6_combout\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|d[4][1]~q\,
	combout => \inst4|d[4][1]~36_combout\);

-- Location: LCCOMB_X13_Y12_N10
\inst4|d[4][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~34_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst4|_~62_combout\) # (\inst4|sort_realizado~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~0_combout\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|sort_realizado~10_combout\,
	combout => \inst4|d[4][1]~34_combout\);

-- Location: LCCOMB_X13_Y12_N22
\inst4|d[4][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~35_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sorteio|dezena\(1) & \inst4|sort_realizado~3_combout\)))) # (!\inst4|d[4][1]~q\ & (\inst4|sorteio|dezena\(1) & (\inst4|sort_realizado~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~q\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|sort_realizado~1_combout\,
	combout => \inst4|d[4][1]~35_combout\);

-- Location: LCCOMB_X13_Y12_N12
\inst4|d[4][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~37_combout\ = (\inst4|d[4][1]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~59_combout\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|d[4][1]~37_combout\);

-- Location: LCCOMB_X13_Y12_N30
\inst4|d[4][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~38_combout\ = (\inst4|d[4][1]~36_combout\) # ((\inst4|d[4][1]~34_combout\) # ((\inst4|d[4][1]~35_combout\) # (\inst4|d[4][1]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~36_combout\,
	datab => \inst4|d[4][1]~34_combout\,
	datac => \inst4|d[4][1]~35_combout\,
	datad => \inst4|d[4][1]~37_combout\,
	combout => \inst4|d[4][1]~38_combout\);

-- Location: FF_X13_Y12_N31
\inst4|d[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[4][1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][1]~q\);

-- Location: LCCOMB_X11_Y12_N2
\inst4|_~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~53_combout\ = (\inst4|d[4][1]~q\ & (\inst4|sorteio|dezena\(1) & (\inst4|sorteio|dezena\(2) $ (!\inst4|d[4][2]~q\)))) # (!\inst4|d[4][1]~q\ & (!\inst4|sorteio|dezena\(1) & (\inst4|sorteio|dezena\(2) $ (!\inst4|d[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~q\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|sorteio|dezena\(2),
	datad => \inst4|d[4][2]~q\,
	combout => \inst4|_~53_combout\);

-- Location: LCCOMB_X13_Y13_N16
\inst4|_~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~55_combout\ = (\inst4|u[4][2]~q\ & (\inst4|sorteio|unidade\(2) & (\inst4|u[4][1]~q\ $ (!\inst4|sorteio|unidade\(1))))) # (!\inst4|u[4][2]~q\ & (!\inst4|sorteio|unidade\(2) & (\inst4|u[4][1]~q\ $ (!\inst4|sorteio|unidade\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|sorteio|unidade\(2),
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|_~55_combout\);

-- Location: LCCOMB_X14_Y13_N26
\inst4|_~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~52_combout\ = (\inst4|sorteio|dezena\(3) & (\inst4|d[4][3]~q\ & (\inst4|d[4][4]~q\ $ (!\inst4|sorteio|dezena\(4))))) # (!\inst4|sorteio|dezena\(3) & (!\inst4|d[4][3]~q\ & (\inst4|d[4][4]~q\ $ (!\inst4|sorteio|dezena\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|dezena\(3),
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|d[4][3]~q\,
	datad => \inst4|sorteio|dezena\(4),
	combout => \inst4|_~52_combout\);

-- Location: LCCOMB_X13_Y14_N24
\inst4|_~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~54_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|u[4][4]~q\ & (\inst4|u[4][3]~q\ $ (!\inst4|sorteio|unidade\(3))))) # (!\inst4|sorteio|unidade\(4) & (!\inst4|u[4][4]~q\ & (\inst4|u[4][3]~q\ $ (!\inst4|sorteio|unidade\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|sorteio|unidade\(3),
	combout => \inst4|_~54_combout\);

-- Location: LCCOMB_X12_Y13_N26
\inst4|_~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~56_combout\ = (\inst4|_~53_combout\ & (!\inst4|_~52_combout\ & ((!\inst4|_~54_combout\) # (!\inst4|_~55_combout\)))) # (!\inst4|_~53_combout\ & (((!\inst4|_~54_combout\)) # (!\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~53_combout\,
	datab => \inst4|_~55_combout\,
	datac => \inst4|_~52_combout\,
	datad => \inst4|_~54_combout\,
	combout => \inst4|_~56_combout\);

-- Location: LCCOMB_X12_Y13_N20
\inst4|_~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~57_combout\ = (\inst4|_~56_combout\ & (\inst4|_~39_combout\ & (\inst4|_~44_combout\ & \inst4|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|_~39_combout\,
	datac => \inst4|_~44_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|_~57_combout\);

-- Location: LCCOMB_X12_Y13_N18
\inst4|_~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~58_combout\ = (\inst4|sort_realizado~7_combout\ & ((!\inst4|_~74_combout\) # (!\inst4|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~57_combout\,
	datac => \inst4|sort_realizado~7_combout\,
	datad => \inst4|_~74_combout\,
	combout => \inst4|_~58_combout\);

-- Location: LCCOMB_X12_Y13_N12
\inst4|u[5][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~12_combout\ = (\inst4|u[5][4]~q\ & ((\inst4|_~58_combout\) # ((\inst4|sorteio|unidade\(4) & \inst4|sort_realizado~6_combout\)))) # (!\inst4|u[5][4]~q\ & (((\inst4|sorteio|unidade\(4) & \inst4|sort_realizado~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst4|_~58_combout\,
	datac => \inst4|sorteio|unidade\(4),
	datad => \inst4|sort_realizado~6_combout\,
	combout => \inst4|u[5][4]~12_combout\);

-- Location: LCCOMB_X13_Y11_N2
\inst4|u[5][4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~11_combout\ = (\inst4|u[5][4]~q\ & ((\inst4|sort_realizado~1_combout\) # ((\inst4|sort_realizado~3_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst4|sort_realizado~1_combout\,
	datac => \inst4|sort_realizado~3_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[5][4]~11_combout\);

-- Location: LCCOMB_X13_Y11_N12
\inst4|u[5][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~10_combout\ = (\inst4|u[5][4]~q\ & ((\inst4|sort_realizado~0_combout\) # ((\inst2|convd1|segmentos[6]~9_combout\ & \inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|convd1|segmentos[6]~9_combout\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|u[5][4]~10_combout\);

-- Location: LCCOMB_X13_Y11_N30
\inst4|u[5][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~13_combout\ = (\inst4|u[5][4]~q\ & (((\inst4|_~59_combout\) # (\inst4|sort_realizado~9_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~59_combout\,
	datac => \inst4|u[5][4]~q\,
	datad => \inst4|sort_realizado~9_combout\,
	combout => \inst4|u[5][4]~13_combout\);

-- Location: LCCOMB_X13_Y11_N0
\inst4|u[5][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~14_combout\ = (\inst4|u[5][4]~12_combout\) # ((\inst4|u[5][4]~11_combout\) # ((\inst4|u[5][4]~10_combout\) # (\inst4|u[5][4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~12_combout\,
	datab => \inst4|u[5][4]~11_combout\,
	datac => \inst4|u[5][4]~10_combout\,
	datad => \inst4|u[5][4]~13_combout\,
	combout => \inst4|u[5][4]~14_combout\);

-- Location: FF_X13_Y11_N1
\inst4|u[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[5][4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][4]~q\);

-- Location: LCCOMB_X13_Y14_N8
\inst4|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~27_combout\ = (\inst4|u[5][4]~q\ & (\inst4|sorteio|unidade\(4) & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[5][3]~q\)))) # (!\inst4|u[5][4]~q\ & (!\inst4|sorteio|unidade\(4) & (\inst4|sorteio|unidade\(3) $ (!\inst4|u[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst4|sorteio|unidade\(3),
	datac => \inst4|u[5][3]~q\,
	datad => \inst4|sorteio|unidade\(4),
	combout => \inst4|_~27_combout\);

-- Location: LCCOMB_X14_Y13_N28
\inst4|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~26_combout\ = (\inst4|d[5][1]~q\ & (\inst4|sorteio|dezena\(1) & (\inst4|d[5][2]~q\ $ (!\inst4|sorteio|dezena\(2))))) # (!\inst4|d[5][1]~q\ & (!\inst4|sorteio|dezena\(1) & (\inst4|d[5][2]~q\ $ (!\inst4|sorteio|dezena\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|sorteio|dezena\(1),
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|sorteio|dezena\(2),
	combout => \inst4|_~26_combout\);

-- Location: LCCOMB_X14_Y13_N22
\inst4|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~28_combout\ = (\inst4|sorteio|unidade\(2) & (\inst4|u[5][2]~q\ & (\inst4|u[5][1]~q\ $ (!\inst4|sorteio|unidade\(1))))) # (!\inst4|sorteio|unidade\(2) & (!\inst4|u[5][2]~q\ & (\inst4|u[5][1]~q\ $ (!\inst4|sorteio|unidade\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(2),
	datab => \inst4|u[5][1]~q\,
	datac => \inst4|u[5][2]~q\,
	datad => \inst4|sorteio|unidade\(1),
	combout => \inst4|_~28_combout\);

-- Location: LCCOMB_X14_Y13_N24
\inst4|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~25_combout\ = (\inst4|d[5][3]~q\ & (\inst4|sorteio|dezena\(3) & (\inst4|d[5][4]~q\ $ (!\inst4|sorteio|dezena\(4))))) # (!\inst4|d[5][3]~q\ & (!\inst4|sorteio|dezena\(3) & (\inst4|d[5][4]~q\ $ (!\inst4|sorteio|dezena\(4)))))

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
	combout => \inst4|_~25_combout\);

-- Location: LCCOMB_X14_Y13_N4
\inst4|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~29_combout\ = (\inst4|_~27_combout\ & (!\inst4|_~28_combout\ & ((!\inst4|_~25_combout\) # (!\inst4|_~26_combout\)))) # (!\inst4|_~27_combout\ & (((!\inst4|_~25_combout\)) # (!\inst4|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~27_combout\,
	datab => \inst4|_~26_combout\,
	datac => \inst4|_~28_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|_~29_combout\);

-- Location: LCCOMB_X12_Y13_N28
\inst4|_~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~59_combout\ = (\inst4|sort_realizado~8_combout\ & (((!\inst4|_~57_combout\) # (!\inst4|_~12_combout\)) # (!\inst4|_~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~29_combout\,
	datab => \inst4|_~12_combout\,
	datac => \inst4|sort_realizado~8_combout\,
	datad => \inst4|_~57_combout\,
	combout => \inst4|_~59_combout\);

-- Location: LCCOMB_X12_Y11_N8
\inst4|u[2][4]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~79_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|_~59_combout\) # ((\inst4|sort_realizado~9_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~59_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|sort_realizado~9_combout\,
	datad => \inst4|u[2][4]~q\,
	combout => \inst4|u[2][4]~79_combout\);

-- Location: LCCOMB_X10_Y13_N8
\inst4|_~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~70_combout\ = (\inst4|sorteio|unidade\(4) & (\inst4|_~65_combout\ & (\inst4|_~45_combout\ & \inst4|sort_realizado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|unidade\(4),
	datab => \inst4|_~65_combout\,
	datac => \inst4|_~45_combout\,
	datad => \inst4|sort_realizado~0_combout\,
	combout => \inst4|_~70_combout\);

-- Location: LCCOMB_X12_Y11_N16
\inst4|u[2][4]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~76_combout\ = (\inst4|_~70_combout\) # ((\inst4|u[2][4]~q\ & ((\inst4|sort_realizado~10_combout\) # (\inst4|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[2][4]~76_combout\);

-- Location: LCCOMB_X12_Y11_N30
\inst4|u[2][4]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~77_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|_~64_combout\) # ((\inst4|_~75_combout\) # (\inst4|sort_realizado~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|_~75_combout\,
	datad => \inst4|sort_realizado~13_combout\,
	combout => \inst4|u[2][4]~77_combout\);

-- Location: LCCOMB_X12_Y11_N10
\inst4|u[2][4]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~80_combout\ = (\inst4|u[2][4]~78_combout\) # ((\inst4|u[2][4]~79_combout\) # ((\inst4|u[2][4]~76_combout\) # (\inst4|u[2][4]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~78_combout\,
	datab => \inst4|u[2][4]~79_combout\,
	datac => \inst4|u[2][4]~76_combout\,
	datad => \inst4|u[2][4]~77_combout\,
	combout => \inst4|u[2][4]~80_combout\);

-- Location: FF_X12_Y11_N11
\inst4|u[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[2][4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][4]~q\);

-- Location: LCCOMB_X10_Y15_N22
\inst4|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~15_combout\ = (!\inst4|u[2][4]~q\ & (!\inst4|d[2][1]~q\ & (!\inst4|u[2][1]~q\ & !\inst4|d[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|d[2][1]~q\,
	datac => \inst4|u[2][1]~q\,
	datad => \inst4|d[2][4]~q\,
	combout => \inst4|_~15_combout\);

-- Location: LCCOMB_X10_Y15_N26
\inst14|lcd_bus[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~9_combout\ = (!\inst4|d[2][2]~q\ & !\inst4|d[2][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|d[2][2]~q\,
	datad => \inst4|d[2][3]~q\,
	combout => \inst14|lcd_bus[5]~9_combout\);

-- Location: LCCOMB_X10_Y15_N30
\inst4|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~16_combout\ = (\inst4|_~15_combout\ & (!\inst4|u[2][3]~q\ & (\inst14|lcd_bus[5]~9_combout\ & !\inst4|u[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~15_combout\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst14|lcd_bus[5]~9_combout\,
	datad => \inst4|u[2][2]~q\,
	combout => \inst4|_~16_combout\);

-- Location: LCCOMB_X10_Y11_N20
\inst4|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~6_combout\ = (\inst4|_~5_combout\ & \inst4|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~5_combout\,
	datad => \inst4|_~4_combout\,
	combout => \inst4|_~6_combout\);

-- Location: LCCOMB_X10_Y11_N30
\inst14|qnt_sorteio[2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~69_combout\ = (\inst4|_~14_combout\ & ((\inst4|_~6_combout\ & (!\inst4|_~9_combout\ & !\inst4|_~12_combout\)) # (!\inst4|_~6_combout\ & ((!\inst4|_~12_combout\) # (!\inst4|_~9_combout\))))) # (!\inst4|_~14_combout\ & 
-- ((\inst4|_~6_combout\ & ((!\inst4|_~12_combout\) # (!\inst4|_~9_combout\))) # (!\inst4|_~6_combout\ & ((\inst4|_~9_combout\) # (\inst4|_~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~14_combout\,
	datab => \inst4|_~6_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~12_combout\,
	combout => \inst14|qnt_sorteio[2]~69_combout\);

-- Location: LCCOMB_X10_Y11_N8
\inst14|qnt_sorteio[2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~66_combout\ = (\inst4|_~12_combout\ & ((\inst4|_~6_combout\ & ((!\inst4|_~14_combout\) # (!\inst4|_~9_combout\))) # (!\inst4|_~6_combout\ & ((\inst4|_~9_combout\) # (\inst4|_~14_combout\))))) # (!\inst4|_~12_combout\ & 
-- ((\inst4|_~6_combout\ & ((\inst4|_~9_combout\) # (\inst4|_~14_combout\))) # (!\inst4|_~6_combout\ & (\inst4|_~9_combout\ & \inst4|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~12_combout\,
	datab => \inst4|_~6_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~14_combout\,
	combout => \inst14|qnt_sorteio[2]~66_combout\);

-- Location: LCCOMB_X10_Y11_N6
\inst14|qnt_sorteio[2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~67_combout\ = (\inst4|_~12_combout\ & ((\inst4|_~6_combout\ & (!\inst4|_~9_combout\ & !\inst4|_~14_combout\)) # (!\inst4|_~6_combout\ & ((!\inst4|_~14_combout\) # (!\inst4|_~9_combout\))))) # (!\inst4|_~12_combout\ & 
-- ((\inst4|_~6_combout\) # ((\inst4|_~9_combout\) # (\inst4|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~12_combout\,
	datab => \inst4|_~6_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~14_combout\,
	combout => \inst14|qnt_sorteio[2]~67_combout\);

-- Location: LCCOMB_X10_Y11_N0
\inst14|qnt_sorteio[2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~68_combout\ = (\inst4|_~16_combout\ & (!\inst4|_~19_combout\ & (\inst14|qnt_sorteio[2]~66_combout\))) # (!\inst4|_~16_combout\ & ((\inst4|_~19_combout\ & (\inst14|qnt_sorteio[2]~66_combout\)) # (!\inst4|_~19_combout\ & 
-- ((!\inst14|qnt_sorteio[2]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~16_combout\,
	datab => \inst4|_~19_combout\,
	datac => \inst14|qnt_sorteio[2]~66_combout\,
	datad => \inst14|qnt_sorteio[2]~67_combout\,
	combout => \inst14|qnt_sorteio[2]~68_combout\);

-- Location: LCCOMB_X10_Y11_N24
\inst14|qnt_sorteio[2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~70_combout\ = (\inst14|qnt_sorteio[2]~68_combout\) # ((\inst4|_~16_combout\ & (\inst4|_~19_combout\ & \inst14|qnt_sorteio[2]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~16_combout\,
	datab => \inst4|_~19_combout\,
	datac => \inst14|qnt_sorteio[2]~69_combout\,
	datad => \inst14|qnt_sorteio[2]~68_combout\,
	combout => \inst14|qnt_sorteio[2]~70_combout\);

-- Location: LCCOMB_X10_Y11_N22
\inst14|qnt_sorteio[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[1]~72_combout\ = (\inst4|_~12_combout\ & (\inst4|_~6_combout\ $ (\inst4|_~9_combout\ $ (!\inst4|_~19_combout\)))) # (!\inst4|_~12_combout\ & ((\inst4|_~6_combout\ & ((\inst4|_~9_combout\) # (!\inst4|_~19_combout\))) # 
-- (!\inst4|_~6_combout\ & (\inst4|_~9_combout\ $ (\inst4|_~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~12_combout\,
	datab => \inst4|_~6_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~19_combout\,
	combout => \inst14|qnt_sorteio[1]~72_combout\);

-- Location: LCCOMB_X10_Y11_N18
\inst14|qnt_sorteio[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[1]~71_combout\ = \inst4|_~12_combout\ $ (\inst4|_~6_combout\ $ (\inst4|_~9_combout\ $ (\inst4|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~12_combout\,
	datab => \inst4|_~6_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst4|_~19_combout\,
	combout => \inst14|qnt_sorteio[1]~71_combout\);

-- Location: LCCOMB_X10_Y11_N16
\inst14|qnt_sorteio[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[1]~73_combout\ = (\inst4|_~16_combout\ & (\inst4|_~14_combout\ $ (((!\inst14|qnt_sorteio[1]~71_combout\))))) # (!\inst4|_~16_combout\ & ((\inst4|_~14_combout\ & (!\inst14|qnt_sorteio[1]~72_combout\)) # (!\inst4|_~14_combout\ & 
-- ((\inst14|qnt_sorteio[1]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~16_combout\,
	datab => \inst4|_~14_combout\,
	datac => \inst14|qnt_sorteio[1]~72_combout\,
	datad => \inst14|qnt_sorteio[1]~71_combout\,
	combout => \inst14|qnt_sorteio[1]~73_combout\);

-- Location: LCCOMB_X10_Y11_N26
\inst14|qnt_sorteio[3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[3]~64_combout\ = (\inst4|_~16_combout\ & ((\inst4|_~19_combout\) # ((\inst4|_~14_combout\) # (\inst4|_~12_combout\)))) # (!\inst4|_~16_combout\ & ((\inst4|_~19_combout\ & ((\inst4|_~14_combout\) # (\inst4|_~12_combout\))) # 
-- (!\inst4|_~19_combout\ & (\inst4|_~14_combout\ & \inst4|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~16_combout\,
	datab => \inst4|_~19_combout\,
	datac => \inst4|_~14_combout\,
	datad => \inst4|_~12_combout\,
	combout => \inst14|qnt_sorteio[3]~64_combout\);

-- Location: LCCOMB_X10_Y11_N10
\inst14|qnt_sorteio[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[3]~63_combout\ = (\inst4|_~14_combout\ & ((\inst4|_~16_combout\ & ((\inst4|_~19_combout\) # (\inst4|_~12_combout\))) # (!\inst4|_~16_combout\ & (\inst4|_~19_combout\ & \inst4|_~12_combout\)))) # (!\inst4|_~14_combout\ & 
-- (\inst4|_~16_combout\ $ (\inst4|_~19_combout\ $ (\inst4|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~16_combout\,
	datab => \inst4|_~19_combout\,
	datac => \inst4|_~14_combout\,
	datad => \inst4|_~12_combout\,
	combout => \inst14|qnt_sorteio[3]~63_combout\);

-- Location: LCCOMB_X10_Y11_N14
\inst14|qnt_sorteio[3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[3]~65_combout\ = (\inst4|_~9_combout\ & (!\inst14|qnt_sorteio[3]~64_combout\ & ((!\inst14|qnt_sorteio[3]~63_combout\) # (!\inst4|_~6_combout\)))) # (!\inst4|_~9_combout\ & (((!\inst4|_~6_combout\ & !\inst14|qnt_sorteio[3]~63_combout\)) 
-- # (!\inst14|qnt_sorteio[3]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|_~6_combout\,
	datac => \inst14|qnt_sorteio[3]~64_combout\,
	datad => \inst14|qnt_sorteio[3]~63_combout\,
	combout => \inst14|qnt_sorteio[3]~65_combout\);

-- Location: LCCOMB_X7_Y9_N20
\inst9|control|START~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|START~0_combout\ = (\inst9|control|START~q\) # ((\inst14|qnt_sorteio[2]~70_combout\ & (!\inst14|qnt_sorteio[1]~73_combout\ & \inst14|qnt_sorteio[3]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|qnt_sorteio[2]~70_combout\,
	datab => \inst14|qnt_sorteio[1]~73_combout\,
	datac => \inst9|control|START~q\,
	datad => \inst14|qnt_sorteio[3]~65_combout\,
	combout => \inst9|control|START~0_combout\);

-- Location: FF_X7_Y9_N21
\inst9|control|START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|control|START~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|START~q\);

-- Location: LCCOMB_X10_Y11_N28
\inst14|song\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|song~combout\ = (!\inst14|qnt_sorteio[1]~73_combout\ & (\inst14|qnt_sorteio[3]~65_combout\ & \inst14|qnt_sorteio[2]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|qnt_sorteio[1]~73_combout\,
	datac => \inst14|qnt_sorteio[3]~65_combout\,
	datad => \inst14|qnt_sorteio[2]~70_combout\,
	combout => \inst14|song~combout\);

-- Location: LCCOMB_X5_Y9_N14
\inst9|control|s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s0~0_combout\ = (\inst14|song~combout\ & (((\inst9|temp|q~9_combout\ & \inst9|control|s0~q\)) # (!\inst9|control|START~q\))) # (!\inst14|song~combout\ & (((\inst9|control|s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s0~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s0~0_combout\);

-- Location: FF_X5_Y9_N15
\inst9|control|s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|control|s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s0~q\);

-- Location: LCCOMB_X7_Y11_N24
\inst9|control|s77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s77~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s77~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s76~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s77~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s76~q\,
	datac => \inst9|control|s77~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s77~0_combout\);

-- Location: FF_X7_Y11_N25
\inst9|control|s77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s77~q\);

-- Location: LCCOMB_X7_Y11_N16
\inst9|control|s78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s78~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s78~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s77~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s78~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s77~q\,
	datac => \inst9|control|s78~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s78~0_combout\);

-- Location: FF_X7_Y11_N17
\inst9|control|s78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s78~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s78~q\);

-- Location: LCCOMB_X5_Y11_N18
\inst9|control|s79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s79~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s79~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s78~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s79~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s78~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s79~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s79~0_combout\);

-- Location: FF_X5_Y11_N19
\inst9|control|s79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s79~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s79~q\);

-- Location: LCCOMB_X7_Y11_N10
\inst9|control|s80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s80~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s80~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s79~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s80~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s79~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s80~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s80~0_combout\);

-- Location: FF_X7_Y11_N11
\inst9|control|s80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s80~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s80~q\);

-- Location: LCCOMB_X7_Y11_N26
\inst9|control|s81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s81~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s81~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s80~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s81~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s80~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s81~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s81~0_combout\);

-- Location: FF_X7_Y11_N27
\inst9|control|s81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s81~q\);

-- Location: LCCOMB_X5_Y9_N26
\inst9|control|s82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s82~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s82~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s81~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s82~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s81~q\,
	datac => \inst9|control|s82~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s82~0_combout\);

-- Location: FF_X5_Y9_N27
\inst9|control|s82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s82~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s82~q\);

-- Location: LCCOMB_X7_Y11_N18
\inst9|control|s83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s83~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s83~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s82~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s83~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s82~q\,
	datac => \inst9|control|s83~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s83~0_combout\);

-- Location: FF_X7_Y11_N19
\inst9|control|s83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s83~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s83~q\);

-- Location: LCCOMB_X7_Y11_N30
\inst9|control|s84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s84~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s84~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s83~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s84~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s83~q\,
	datac => \inst9|control|s84~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s84~0_combout\);

-- Location: FF_X7_Y11_N31
\inst9|control|s84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s84~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s84~q\);

-- Location: LCCOMB_X7_Y11_N14
\inst9|control|s85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s85~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s85~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s84~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s85~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s84~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s85~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s85~0_combout\);

-- Location: FF_X7_Y11_N15
\inst9|control|s85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s85~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s85~q\);

-- Location: LCCOMB_X5_Y11_N12
\inst9|control|s86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s86~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s86~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s85~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s86~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s85~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s86~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s86~0_combout\);

-- Location: FF_X5_Y11_N13
\inst9|control|s86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s86~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s86~q\);

-- Location: LCCOMB_X5_Y11_N26
\inst9|control|s87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s87~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s87~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s86~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s87~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s86~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s87~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s87~0_combout\);

-- Location: FF_X5_Y11_N27
\inst9|control|s87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s87~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s87~q\);

-- Location: LCCOMB_X5_Y11_N0
\inst9|control|s88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s88~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s88~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s87~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s88~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s87~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s88~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s88~0_combout\);

-- Location: FF_X5_Y11_N1
\inst9|control|s88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s88~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s88~q\);

-- Location: LCCOMB_X7_Y8_N28
\inst9|control|s89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s89~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s89~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s88~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s89~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s88~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s89~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s89~0_combout\);

-- Location: FF_X7_Y8_N29
\inst9|control|s89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s89~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s89~q\);

-- Location: LCCOMB_X7_Y8_N2
\inst9|control|s90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s90~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s90~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s89~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s90~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s89~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s90~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s90~0_combout\);

-- Location: FF_X7_Y8_N3
\inst9|control|s90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s90~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s90~q\);

-- Location: LCCOMB_X7_Y8_N10
\inst9|control|s91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s91~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s91~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s90~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s91~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s90~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s91~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s91~0_combout\);

-- Location: FF_X7_Y8_N11
\inst9|control|s91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s91~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s91~q\);

-- Location: LCCOMB_X7_Y8_N30
\inst9|control|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s1~0_combout\ = (\inst9|control|s0~q\) # (\inst9|control|s91~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|control|s0~q\,
	datad => \inst9|control|s91~q\,
	combout => \inst9|control|s1~0_combout\);

-- Location: LCCOMB_X7_Y8_N6
\inst9|control|s1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s1~1_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s1~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s1~0_combout\)) # (!\inst14|song~combout\ & ((\inst9|control|s1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s1~0_combout\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s1~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s1~1_combout\);

-- Location: FF_X7_Y8_N7
\inst9|control|s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s1~q\);

-- Location: LCCOMB_X7_Y9_N18
\inst9|control|s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s2~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s2~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s1~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s1~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s2~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s2~0_combout\);

-- Location: FF_X7_Y9_N19
\inst9|control|s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s2~q\);

-- Location: LCCOMB_X7_Y9_N0
\inst9|control|s3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s3~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s3~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s2~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s2~q\,
	datac => \inst9|control|s3~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s3~0_combout\);

-- Location: FF_X7_Y9_N1
\inst9|control|s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s3~q\);

-- Location: LCCOMB_X6_Y8_N20
\inst9|control|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s4~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s4~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s3~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s3~q\,
	datac => \inst9|control|s4~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s4~0_combout\);

-- Location: FF_X6_Y8_N21
\inst9|control|s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s4~q\);

-- Location: LCCOMB_X6_Y9_N12
\inst9|control|s5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s5~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s5~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s4~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s4~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s5~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s5~0_combout\);

-- Location: FF_X6_Y9_N13
\inst9|control|s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s5~q\);

-- Location: LCCOMB_X6_Y9_N16
\inst9|control|s6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s6~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s6~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s5~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s5~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s6~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s6~0_combout\);

-- Location: FF_X6_Y9_N17
\inst9|control|s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s6~q\);

-- Location: LCCOMB_X6_Y10_N20
\inst9|control|s7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s7~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s7~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s6~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s6~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s7~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s7~0_combout\);

-- Location: FF_X6_Y10_N21
\inst9|control|s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s7~q\);

-- Location: LCCOMB_X6_Y11_N10
\inst9|control|s8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s8~0_combout\ = (\inst14|song~combout\ & ((\inst9|temp|q~9_combout\ & ((\inst9|control|s8~q\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|s7~q\)))) # (!\inst14|song~combout\ & (((\inst9|control|s8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|song~combout\,
	datab => \inst9|control|s7~q\,
	datac => \inst9|control|s8~q\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|control|s8~0_combout\);

-- Location: FF_X6_Y11_N11
\inst9|control|s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s8~q\);

-- Location: LCCOMB_X5_Y9_N12
\inst9|control|s9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s9~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s9~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s8~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s9~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s8~q\,
	datac => \inst9|control|s9~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s9~0_combout\);

-- Location: FF_X5_Y9_N13
\inst9|control|s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s9~q\);

-- Location: LCCOMB_X5_Y9_N20
\inst9|control|s10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s10~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s10~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s9~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s10~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s9~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s10~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s10~0_combout\);

-- Location: FF_X5_Y9_N21
\inst9|control|s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s10~q\);

-- Location: LCCOMB_X7_Y9_N4
\inst9|control|s11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s11~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s11~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s10~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s11~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s10~q\,
	datac => \inst9|control|s11~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s11~0_combout\);

-- Location: FF_X7_Y9_N5
\inst9|control|s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s11~q\);

-- Location: LCCOMB_X6_Y10_N16
\inst9|control|s12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s12~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s12~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s11~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s12~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s11~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s12~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s12~0_combout\);

-- Location: FF_X6_Y10_N17
\inst9|control|s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s12~q\);

-- Location: LCCOMB_X6_Y11_N8
\inst9|control|s13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s13~0_combout\ = (\inst14|song~combout\ & ((\inst9|temp|q~9_combout\ & ((\inst9|control|s13~q\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|s12~q\)))) # (!\inst14|song~combout\ & (((\inst9|control|s13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|song~combout\,
	datab => \inst9|control|s12~q\,
	datac => \inst9|control|s13~q\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|control|s13~0_combout\);

-- Location: FF_X6_Y11_N9
\inst9|control|s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s13~q\);

-- Location: LCCOMB_X5_Y9_N18
\inst9|control|s14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s14~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s14~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s13~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s13~q\,
	datac => \inst9|control|s14~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s14~0_combout\);

-- Location: FF_X5_Y9_N19
\inst9|control|s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s14~q\);

-- Location: LCCOMB_X5_Y9_N16
\inst9|control|s15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s15~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s15~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s14~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s15~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s14~q\,
	datac => \inst9|control|s15~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s15~0_combout\);

-- Location: FF_X5_Y9_N17
\inst9|control|s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s15~q\);

-- Location: LCCOMB_X5_Y11_N10
\inst9|control|s16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s16~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s16~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s15~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s16~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s15~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s16~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s16~0_combout\);

-- Location: FF_X5_Y11_N11
\inst9|control|s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s16~q\);

-- Location: LCCOMB_X5_Y11_N22
\inst9|control|s17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s17~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s17~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s16~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s17~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s16~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s17~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s17~0_combout\);

-- Location: FF_X5_Y11_N23
\inst9|control|s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s17~q\);

-- Location: LCCOMB_X6_Y8_N28
\inst9|control|s18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s18~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s18~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s17~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s18~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s17~q\,
	datac => \inst9|control|s18~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s18~0_combout\);

-- Location: FF_X6_Y8_N29
\inst9|control|s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s18~q\);

-- Location: LCCOMB_X7_Y8_N22
\inst9|control|s19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s19~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s19~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s18~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s19~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s18~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s19~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s19~0_combout\);

-- Location: FF_X7_Y8_N23
\inst9|control|s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s19~q\);

-- Location: LCCOMB_X9_Y11_N24
\inst9|control|s20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s20~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s20~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s19~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s20~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s19~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s20~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s20~0_combout\);

-- Location: FF_X9_Y11_N25
\inst9|control|s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s20~q\);

-- Location: LCCOMB_X7_Y9_N28
\inst9|control|s21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s21~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s21~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s20~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s21~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s20~q\,
	datac => \inst9|control|s21~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s21~0_combout\);

-- Location: FF_X7_Y9_N29
\inst9|control|s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s21~q\);

-- Location: LCCOMB_X7_Y9_N10
\inst9|control|s22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s22~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s22~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s21~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s22~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s21~q\,
	datac => \inst9|control|s22~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s22~0_combout\);

-- Location: FF_X7_Y9_N11
\inst9|control|s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s22~q\);

-- Location: LCCOMB_X7_Y9_N6
\inst9|control|s23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s23~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s23~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s22~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s23~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s22~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s23~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s23~0_combout\);

-- Location: FF_X7_Y9_N7
\inst9|control|s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s23~q\);

-- Location: LCCOMB_X6_Y8_N22
\inst9|control|s24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s24~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s24~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s23~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s24~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s23~q\,
	datac => \inst9|control|s24~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s24~0_combout\);

-- Location: FF_X6_Y8_N23
\inst9|control|s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s24~q\);

-- Location: LCCOMB_X5_Y11_N20
\inst9|control|s25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s25~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s25~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s24~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s25~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s24~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s25~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s25~0_combout\);

-- Location: FF_X5_Y11_N21
\inst9|control|s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s25~q\);

-- Location: LCCOMB_X5_Y11_N24
\inst9|control|s26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s26~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s26~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s25~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s26~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s25~q\,
	datac => \inst9|control|s26~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s26~0_combout\);

-- Location: FF_X5_Y11_N25
\inst9|control|s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s26~q\);

-- Location: LCCOMB_X6_Y10_N4
\inst9|control|s27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s27~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s27~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s26~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s27~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s26~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s27~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s27~0_combout\);

-- Location: FF_X6_Y10_N5
\inst9|control|s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s27~q\);

-- Location: LCCOMB_X5_Y11_N8
\inst9|control|s28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s28~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s28~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s27~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s28~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s27~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s28~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s28~0_combout\);

-- Location: FF_X5_Y11_N9
\inst9|control|s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s28~q\);

-- Location: LCCOMB_X5_Y9_N22
\inst9|control|s29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s29~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s29~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s28~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s29~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s28~q\,
	datac => \inst9|control|s29~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s29~0_combout\);

-- Location: FF_X5_Y9_N23
\inst9|control|s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s29~q\);

-- Location: LCCOMB_X5_Y9_N28
\inst9|control|s30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s30~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s30~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s29~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s30~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s29~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s30~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s30~0_combout\);

-- Location: FF_X5_Y9_N29
\inst9|control|s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s30~q\);

-- Location: LCCOMB_X7_Y9_N16
\inst9|control|s31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s31~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s31~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s30~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s31~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s30~q\,
	datac => \inst9|control|s31~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s31~0_combout\);

-- Location: FF_X7_Y9_N17
\inst9|control|s31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s31~q\);

-- Location: LCCOMB_X6_Y8_N24
\inst9|control|s32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s32~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s32~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s31~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s32~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s31~q\,
	datac => \inst9|control|s32~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s32~0_combout\);

-- Location: FF_X6_Y8_N25
\inst9|control|s32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s32~q\);

-- Location: LCCOMB_X6_Y11_N6
\inst9|control|s33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s33~0_combout\ = (\inst14|song~combout\ & ((\inst9|temp|q~9_combout\ & ((\inst9|control|s33~q\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|s32~q\)))) # (!\inst14|song~combout\ & (((\inst9|control|s33~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|song~combout\,
	datab => \inst9|control|s32~q\,
	datac => \inst9|control|s33~q\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|control|s33~0_combout\);

-- Location: FF_X6_Y11_N7
\inst9|control|s33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s33~q\);

-- Location: LCCOMB_X5_Y9_N24
\inst9|control|s34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s34~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s34~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s33~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s34~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s33~q\,
	datac => \inst9|control|s34~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s34~0_combout\);

-- Location: FF_X5_Y9_N25
\inst9|control|s34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s34~q\);

-- Location: LCCOMB_X5_Y9_N2
\inst9|control|s35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s35~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s35~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s34~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s35~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s34~q\,
	datac => \inst9|control|s35~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s35~0_combout\);

-- Location: FF_X5_Y9_N3
\inst9|control|s35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s35~q\);

-- Location: LCCOMB_X5_Y9_N10
\inst9|control|s36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s36~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s36~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s35~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s36~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s35~q\,
	datac => \inst9|control|s36~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s36~0_combout\);

-- Location: FF_X5_Y9_N11
\inst9|control|s36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s36~q\);

-- Location: LCCOMB_X6_Y8_N16
\inst9|control|s37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s37~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s37~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s36~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s37~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s36~q\,
	datac => \inst9|control|s37~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s37~0_combout\);

-- Location: FF_X6_Y8_N17
\inst9|control|s37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s37~q\);

-- Location: LCCOMB_X6_Y8_N14
\inst9|control|s38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s38~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s38~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s37~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s38~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s37~q\,
	datac => \inst9|control|s38~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s38~0_combout\);

-- Location: FF_X6_Y8_N15
\inst9|control|s38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s38~q\);

-- Location: LCCOMB_X7_Y11_N22
\inst9|control|s39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s39~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s39~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s38~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s39~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s38~q\,
	datac => \inst9|control|s39~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s39~0_combout\);

-- Location: FF_X7_Y11_N23
\inst9|control|s39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s39~q\);

-- Location: LCCOMB_X7_Y8_N16
\inst9|control|s40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s40~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s40~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s39~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s40~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s39~q\,
	datac => \inst9|control|s40~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s40~0_combout\);

-- Location: FF_X7_Y8_N17
\inst9|control|s40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s40~q\);

-- Location: LCCOMB_X7_Y9_N2
\inst9|control|s41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s41~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s41~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s40~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s41~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s40~q\,
	datac => \inst9|control|s41~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s41~0_combout\);

-- Location: FF_X7_Y9_N3
\inst9|control|s41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s41~q\);

-- Location: LCCOMB_X7_Y9_N12
\inst9|control|s42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s42~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s42~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s41~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s42~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s41~q\,
	datac => \inst9|control|s42~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s42~0_combout\);

-- Location: FF_X7_Y9_N13
\inst9|control|s42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s42~q\);

-- Location: LCCOMB_X7_Y9_N24
\inst9|control|s43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s43~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s43~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s42~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s43~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s42~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s43~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s43~0_combout\);

-- Location: FF_X7_Y9_N25
\inst9|control|s43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s43~q\);

-- Location: LCCOMB_X8_Y11_N18
\inst9|control|s44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s44~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s44~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s43~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s44~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s43~q\,
	datac => \inst9|control|s44~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s44~0_combout\);

-- Location: FF_X8_Y11_N19
\inst9|control|s44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s44~q\);

-- Location: LCCOMB_X8_Y11_N22
\inst9|control|s45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s45~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s45~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s44~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s45~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s44~q\,
	datac => \inst9|control|s45~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s45~0_combout\);

-- Location: FF_X8_Y11_N23
\inst9|control|s45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s45~q\);

-- Location: LCCOMB_X9_Y11_N12
\inst9|control|s46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s46~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s46~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s45~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s46~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s45~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s46~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s46~0_combout\);

-- Location: FF_X9_Y11_N13
\inst9|control|s46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s46~q\);

-- Location: LCCOMB_X9_Y11_N20
\inst9|control|s47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s47~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s47~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s46~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s47~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s46~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s47~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s47~0_combout\);

-- Location: FF_X9_Y11_N21
\inst9|control|s47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s47~q\);

-- Location: LCCOMB_X9_Y11_N22
\inst9|control|s48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s48~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s48~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s47~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s48~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s47~q\,
	datac => \inst9|control|s48~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s48~0_combout\);

-- Location: FF_X9_Y11_N23
\inst9|control|s48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s48~q\);

-- Location: LCCOMB_X9_Y11_N14
\inst9|control|s49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s49~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s49~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s48~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s49~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s48~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s49~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s49~0_combout\);

-- Location: FF_X9_Y11_N15
\inst9|control|s49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s49~q\);

-- Location: LCCOMB_X9_Y11_N6
\inst9|control|s50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s50~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s50~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s49~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s50~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s49~q\,
	datac => \inst9|control|s50~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s50~0_combout\);

-- Location: FF_X9_Y11_N7
\inst9|control|s50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s50~q\);

-- Location: LCCOMB_X6_Y8_N2
\inst9|control|s51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s51~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s51~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s50~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s51~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s50~q\,
	datac => \inst9|control|s51~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s51~0_combout\);

-- Location: FF_X6_Y8_N3
\inst9|control|s51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s51~q\);

-- Location: LCCOMB_X6_Y11_N0
\inst9|control|s52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s52~0_combout\ = (\inst14|song~combout\ & ((\inst9|temp|q~9_combout\ & ((\inst9|control|s52~q\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|s51~q\)))) # (!\inst14|song~combout\ & (((\inst9|control|s52~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|song~combout\,
	datab => \inst9|control|s51~q\,
	datac => \inst9|control|s52~q\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|control|s52~0_combout\);

-- Location: FF_X6_Y11_N1
\inst9|control|s52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s52~q\);

-- Location: LCCOMB_X6_Y11_N12
\inst9|control|s53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s53~0_combout\ = (\inst14|song~combout\ & ((\inst9|temp|q~9_combout\ & ((\inst9|control|s53~q\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|s52~q\)))) # (!\inst14|song~combout\ & (((\inst9|control|s53~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|song~combout\,
	datab => \inst9|control|s52~q\,
	datac => \inst9|control|s53~q\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|control|s53~0_combout\);

-- Location: FF_X6_Y11_N13
\inst9|control|s53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s53~q\);

-- Location: LCCOMB_X8_Y11_N20
\inst9|control|s54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s54~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s54~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s53~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s54~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s53~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s54~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s54~0_combout\);

-- Location: FF_X8_Y11_N21
\inst9|control|s54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s54~q\);

-- Location: LCCOMB_X6_Y8_N8
\inst9|control|s55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s55~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s55~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s54~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s55~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s54~q\,
	datac => \inst9|control|s55~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s55~0_combout\);

-- Location: FF_X6_Y8_N9
\inst9|control|s55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s55~q\);

-- Location: LCCOMB_X8_Y11_N26
\inst9|control|s56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s56~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s56~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s55~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s56~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s55~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s56~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s56~0_combout\);

-- Location: FF_X8_Y11_N27
\inst9|control|s56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s56~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s56~q\);

-- Location: LCCOMB_X8_Y11_N16
\inst9|control|s57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s57~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s57~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s56~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s57~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s56~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s57~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s57~0_combout\);

-- Location: FF_X8_Y11_N17
\inst9|control|s57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s57~q\);

-- Location: LCCOMB_X8_Y11_N4
\inst9|control|s58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s58~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s58~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s57~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s58~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s57~q\,
	datac => \inst9|control|s58~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s58~0_combout\);

-- Location: FF_X8_Y11_N5
\inst9|control|s58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s58~q\);

-- Location: LCCOMB_X9_Y11_N16
\inst9|control|s59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s59~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s59~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s58~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s59~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s58~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s59~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s59~0_combout\);

-- Location: FF_X9_Y11_N17
\inst9|control|s59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s59~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s59~q\);

-- Location: LCCOMB_X9_Y11_N26
\inst9|control|s60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s60~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s60~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s59~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s60~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s59~q\,
	datac => \inst9|control|s60~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s60~0_combout\);

-- Location: FF_X9_Y11_N27
\inst9|control|s60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s60~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s60~q\);

-- Location: LCCOMB_X7_Y8_N12
\inst9|control|s61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s61~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s61~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s60~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s61~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s60~q\,
	datac => \inst9|control|s61~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s61~0_combout\);

-- Location: FF_X7_Y8_N13
\inst9|control|s61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s61~q\);

-- Location: LCCOMB_X7_Y8_N26
\inst9|temp|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~13_combout\ = (!\inst9|control|s39~q\ & (!\inst9|control|s90~q\ & (!\inst9|control|s61~q\ & !\inst9|control|s19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s39~q\,
	datab => \inst9|control|s90~q\,
	datac => \inst9|control|s61~q\,
	datad => \inst9|control|s19~q\,
	combout => \inst9|temp|_~13_combout\);

-- Location: LCCOMB_X5_Y9_N6
\inst9|temp|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~6_combout\ = (!\inst9|control|s34~q\ & (!\inst9|control|s14~q\ & (!\inst9|control|s9~q\ & !\inst9|control|s29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s34~q\,
	datab => \inst9|control|s14~q\,
	datac => \inst9|control|s9~q\,
	datad => \inst9|control|s29~q\,
	combout => \inst9|temp|_~6_combout\);

-- Location: LCCOMB_X7_Y8_N4
\inst9|control|s62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s62~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s62~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s61~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s62~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s61~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s62~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s62~0_combout\);

-- Location: FF_X7_Y8_N5
\inst9|control|s62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s62~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s62~q\);

-- Location: LCCOMB_X7_Y8_N18
\inst9|control|s63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s63~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s63~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s62~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s63~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s62~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s63~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s63~0_combout\);

-- Location: FF_X7_Y8_N19
\inst9|control|s63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s63~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s63~q\);

-- Location: LCCOMB_X8_Y11_N10
\inst9|control|s64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s64~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s64~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s63~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s64~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s63~q\,
	datac => \inst9|control|s64~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s64~0_combout\);

-- Location: FF_X8_Y11_N11
\inst9|control|s64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s64~q\);

-- Location: LCCOMB_X8_Y11_N14
\inst9|control|s65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s65~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s65~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s64~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s65~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s64~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s65~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s65~0_combout\);

-- Location: FF_X8_Y11_N15
\inst9|control|s65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s65~q\);

-- Location: LCCOMB_X9_Y11_N10
\inst9|control|s66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s66~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s66~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s65~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s66~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s65~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s66~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s66~0_combout\);

-- Location: FF_X9_Y11_N11
\inst9|control|s66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s66~q\);

-- Location: LCCOMB_X9_Y11_N2
\inst9|control|s67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s67~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s67~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s66~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s67~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s66~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|control|s67~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s67~0_combout\);

-- Location: FF_X9_Y11_N3
\inst9|control|s67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s67~q\);

-- Location: LCCOMB_X9_Y11_N30
\inst9|control|s68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s68~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s68~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s67~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s68~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s67~q\,
	datac => \inst9|control|s68~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s68~0_combout\);

-- Location: FF_X9_Y11_N31
\inst9|control|s68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s68~q\);

-- Location: LCCOMB_X9_Y11_N8
\inst9|control|s69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s69~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s69~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s68~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s69~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s68~q\,
	datac => \inst9|control|s69~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s69~0_combout\);

-- Location: FF_X9_Y11_N9
\inst9|control|s69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s69~q\);

-- Location: LCCOMB_X7_Y11_N4
\inst9|control|s70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s70~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s70~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s69~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s70~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s69~q\,
	datac => \inst9|control|s70~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s70~0_combout\);

-- Location: FF_X7_Y11_N5
\inst9|control|s70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s70~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s70~q\);

-- Location: LCCOMB_X6_Y8_N6
\inst9|control|s71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s71~0_combout\ = (!\inst9|temp|q~9_combout\ & (\inst9|control|s71~q\ $ (\inst9|control|s70~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s71~q\,
	datac => \inst9|control|s70~q\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|control|s71~0_combout\);

-- Location: LCCOMB_X6_Y8_N18
\inst9|control|s71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s71~1_combout\ = (\inst14|song~combout\ & (\inst9|control|s71~0_combout\ $ (((\inst9|control|s71~q\))))) # (!\inst14|song~combout\ & (((\inst9|control|s74~q\) # (\inst9|control|s71~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s71~0_combout\,
	datab => \inst9|control|s74~q\,
	datac => \inst9|control|s71~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s71~1_combout\);

-- Location: FF_X6_Y8_N19
\inst9|control|s71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s71~q\);

-- Location: LCCOMB_X6_Y11_N18
\inst9|control|s72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s72~0_combout\ = (\inst14|song~combout\ & ((\inst9|temp|q~9_combout\ & ((\inst9|control|s72~q\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|s71~q\)))) # (!\inst14|song~combout\ & (((\inst9|control|s72~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|song~combout\,
	datab => \inst9|control|s71~q\,
	datac => \inst9|control|s72~q\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|control|s72~0_combout\);

-- Location: FF_X6_Y11_N19
\inst9|control|s72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s72~q\);

-- Location: LCCOMB_X6_Y11_N4
\inst9|control|s73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s73~0_combout\ = (\inst14|song~combout\ & ((\inst9|temp|q~9_combout\ & ((\inst9|control|s73~q\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|s72~q\)))) # (!\inst14|song~combout\ & (((\inst9|control|s73~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|song~combout\,
	datab => \inst9|control|s72~q\,
	datac => \inst9|control|s73~q\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|control|s73~0_combout\);

-- Location: FF_X6_Y11_N5
\inst9|control|s73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s73~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s73~q\);

-- Location: LCCOMB_X8_Y11_N6
\inst9|control|s74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s74~0_combout\ = (\inst14|song~combout\ & ((\inst9|temp|q~9_combout\ & ((\inst9|control|s74~q\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|s73~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s73~q\,
	datac => \inst9|control|s74~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s74~0_combout\);

-- Location: FF_X8_Y11_N7
\inst9|control|s74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s74~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s74~q\);

-- Location: LCCOMB_X8_Y11_N2
\inst9|temp|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~4_combout\ = (!\inst9|control|s54~q\ & !\inst9|control|s74~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s54~q\,
	datac => \inst9|control|s74~q\,
	combout => \inst9|temp|_~4_combout\);

-- Location: LCCOMB_X6_Y8_N12
\inst9|control|s75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s75~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s75~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s74~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s75~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s74~q\,
	datac => \inst9|control|s75~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s75~0_combout\);

-- Location: FF_X6_Y8_N13
\inst9|control|s75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s75~q\);

-- Location: LCCOMB_X6_Y8_N30
\inst9|control|freq_out[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[15]~10_combout\ = (!\inst9|control|s55~q\ & !\inst9|control|s75~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s55~q\,
	datac => \inst9|control|s75~q\,
	combout => \inst9|control|freq_out[15]~10_combout\);

-- Location: LCCOMB_X7_Y11_N0
\inst9|temp|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~14_combout\ = (\inst9|temp|_~13_combout\ & (\inst9|temp|_~6_combout\ & (\inst9|temp|_~4_combout\ & \inst9|control|freq_out[15]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|_~13_combout\,
	datab => \inst9|temp|_~6_combout\,
	datac => \inst9|temp|_~4_combout\,
	datad => \inst9|control|freq_out[15]~10_combout\,
	combout => \inst9|temp|_~14_combout\);

-- Location: LCCOMB_X4_Y11_N24
\inst9|temp|cnt[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[5]~13_combout\ = (\inst9|control|START~q\ & !\inst9|temp|_~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|_~14_combout\,
	combout => \inst9|temp|cnt[5]~13_combout\);

-- Location: LCCOMB_X9_Y11_N18
\inst9|temp|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~7_combout\ = (!\inst9|control|s66~q\ & (!\inst9|control|s59~q\ & !\inst9|control|s46~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s66~q\,
	datab => \inst9|control|s59~q\,
	datac => \inst9|control|s46~q\,
	combout => \inst9|temp|_~7_combout\);

-- Location: LCCOMB_X9_Y11_N28
\inst9|temp|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~11_combout\ = (!\inst9|control|s60~q\ & (!\inst9|control|s67~q\ & !\inst9|control|s47~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s60~q\,
	datab => \inst9|control|s67~q\,
	datac => \inst9|control|s47~q\,
	combout => \inst9|temp|_~11_combout\);

-- Location: LCCOMB_X8_Y11_N12
\inst9|temp|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~10_combout\ = (!\inst9|control|s64~q\ & (!\inst9|control|s57~q\ & !\inst9|control|s44~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s64~q\,
	datab => \inst9|control|s57~q\,
	datac => \inst9|control|s44~q\,
	combout => \inst9|temp|_~10_combout\);

-- Location: LCCOMB_X8_Y11_N30
\inst9|temp|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~9_combout\ = (!\inst9|control|s65~q\ & (!\inst9|control|s45~q\ & !\inst9|control|s58~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s65~q\,
	datac => \inst9|control|s45~q\,
	datad => \inst9|control|s58~q\,
	combout => \inst9|temp|_~9_combout\);

-- Location: LCCOMB_X8_Y11_N28
\inst9|temp|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~19_combout\ = (\inst9|temp|_~7_combout\ & (\inst9|temp|_~11_combout\ & (\inst9|temp|_~10_combout\ & \inst9|temp|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|_~7_combout\,
	datab => \inst9|temp|_~11_combout\,
	datac => \inst9|temp|_~10_combout\,
	datad => \inst9|temp|_~9_combout\,
	combout => \inst9|temp|_~19_combout\);

-- Location: LCCOMB_X6_Y11_N14
\inst9|temp|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~12_combout\ = (!\inst9|control|s8~q\ & (!\inst9|control|s13~q\ & (!\inst9|control|s33~q\ & !\inst9|control|s28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s8~q\,
	datab => \inst9|control|s13~q\,
	datac => \inst9|control|s33~q\,
	datad => \inst9|control|s28~q\,
	combout => \inst9|temp|_~12_combout\);

-- Location: LCCOMB_X7_Y9_N8
\inst9|temp|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~5_combout\ = (!\inst9|control|s23~q\ & (!\inst9|control|s3~q\ & (!\inst9|control|s43~q\ & !\inst9|control|s56~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s23~q\,
	datab => \inst9|control|s3~q\,
	datac => \inst9|control|s43~q\,
	datad => \inst9|control|s56~q\,
	combout => \inst9|temp|_~5_combout\);

-- Location: LCCOMB_X6_Y8_N10
\inst9|temp|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~16_combout\ = (!\inst9|control|s24~q\ & (!\inst9|control|s4~q\ & (!\inst9|control|s18~q\ & !\inst9|control|s38~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s24~q\,
	datab => \inst9|control|s4~q\,
	datac => \inst9|control|s18~q\,
	datad => \inst9|control|s38~q\,
	combout => \inst9|temp|_~16_combout\);

-- Location: LCCOMB_X7_Y8_N14
\inst9|temp|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~17_combout\ = (\inst9|temp|_~12_combout\ & (!\inst9|control|s63~q\ & (\inst9|temp|_~5_combout\ & \inst9|temp|_~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|_~12_combout\,
	datab => \inst9|control|s63~q\,
	datac => \inst9|temp|_~5_combout\,
	datad => \inst9|temp|_~16_combout\,
	combout => \inst9|temp|_~17_combout\);

-- Location: LCCOMB_X7_Y8_N24
\inst9|temp|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~18_combout\ = (!\inst9|control|s62~q\ & (\inst9|temp|_~17_combout\ & !\inst9|control|s89~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s62~q\,
	datab => \inst9|temp|_~17_combout\,
	datad => \inst9|control|s89~q\,
	combout => \inst9|temp|_~18_combout\);

-- Location: LCCOMB_X4_Y11_N10
\inst9|temp|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~22_combout\ = (!\inst9|control|s88~q\ & (\inst9|temp|_~14_combout\ & \inst9|temp|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s88~q\,
	datac => \inst9|temp|_~14_combout\,
	datad => \inst9|temp|_~18_combout\,
	combout => \inst9|temp|_~22_combout\);

-- Location: LCCOMB_X4_Y11_N6
\inst9|temp|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~21_combout\ = (\inst9|control|START~q\ & (\inst9|temp|_~19_combout\ & (!\inst9|temp|q~9_combout\ & \inst9|temp|_~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|_~19_combout\,
	datac => \inst9|temp|q~9_combout\,
	datad => \inst9|temp|_~22_combout\,
	combout => \inst9|temp|_~21_combout\);

-- Location: LCCOMB_X4_Y11_N8
\inst9|temp|cnt[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[0]~9_combout\ = (\inst9|temp|_~21_combout\) # ((\inst9|temp|q~9_combout\ & !\inst9|temp|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|temp|cnt\(0),
	datad => \inst9|temp|_~21_combout\,
	combout => \inst9|temp|cnt[0]~9_combout\);

-- Location: FF_X4_Y11_N9
\inst9|temp|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(0));

-- Location: LCCOMB_X3_Y11_N4
\inst9|temp|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~1_cout\ = CARRY(\inst9|temp|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(0),
	datad => VCC,
	cout => \inst9|temp|op_1~1_cout\);

-- Location: LCCOMB_X3_Y11_N6
\inst9|temp|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~2_combout\ = (\inst9|temp|cnt\(1) & (\inst9|temp|op_1~1_cout\ & VCC)) # (!\inst9|temp|cnt\(1) & (!\inst9|temp|op_1~1_cout\))
-- \inst9|temp|op_1~3\ = CARRY((!\inst9|temp|cnt\(1) & !\inst9|temp|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(1),
	datad => VCC,
	cin => \inst9|temp|op_1~1_cout\,
	combout => \inst9|temp|op_1~2_combout\,
	cout => \inst9|temp|op_1~3\);

-- Location: LCCOMB_X4_Y11_N22
\inst9|temp|cnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[1]~8_combout\ = (\inst9|temp|_~21_combout\) # ((\inst9|temp|op_1~2_combout\ & \inst9|temp|q~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|op_1~2_combout\,
	datac => \inst9|temp|q~9_combout\,
	datad => \inst9|temp|_~21_combout\,
	combout => \inst9|temp|cnt[1]~8_combout\);

-- Location: FF_X4_Y11_N23
\inst9|temp|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(1));

-- Location: LCCOMB_X3_Y11_N8
\inst9|temp|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~4_combout\ = (\inst9|temp|cnt\(2) & ((GND) # (!\inst9|temp|op_1~3\))) # (!\inst9|temp|cnt\(2) & (\inst9|temp|op_1~3\ $ (GND)))
-- \inst9|temp|op_1~5\ = CARRY((\inst9|temp|cnt\(2)) # (!\inst9|temp|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(2),
	datad => VCC,
	cin => \inst9|temp|op_1~3\,
	combout => \inst9|temp|op_1~4_combout\,
	cout => \inst9|temp|op_1~5\);

-- Location: LCCOMB_X3_Y11_N0
\inst9|temp|op_1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~70_combout\ = (\inst9|temp|op_1~4_combout\ & \inst9|temp|q~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|temp|op_1~4_combout\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|temp|op_1~70_combout\);

-- Location: FF_X3_Y11_N1
\inst9|temp|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(2));

-- Location: LCCOMB_X3_Y11_N10
\inst9|temp|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~6_combout\ = (\inst9|temp|cnt\(3) & (\inst9|temp|op_1~5\ & VCC)) # (!\inst9|temp|cnt\(3) & (!\inst9|temp|op_1~5\))
-- \inst9|temp|op_1~7\ = CARRY((!\inst9|temp|cnt\(3) & !\inst9|temp|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(3),
	datad => VCC,
	cin => \inst9|temp|op_1~5\,
	combout => \inst9|temp|op_1~6_combout\,
	cout => \inst9|temp|op_1~7\);

-- Location: LCCOMB_X4_Y11_N26
\inst9|temp|cnt[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[3]~7_combout\ = (\inst9|temp|_~21_combout\) # ((\inst9|temp|op_1~6_combout\ & \inst9|temp|q~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|op_1~6_combout\,
	datac => \inst9|temp|q~9_combout\,
	datad => \inst9|temp|_~21_combout\,
	combout => \inst9|temp|cnt[3]~7_combout\);

-- Location: FF_X4_Y11_N27
\inst9|temp|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(3));

-- Location: LCCOMB_X3_Y11_N12
\inst9|temp|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~8_combout\ = (\inst9|temp|cnt\(4) & ((GND) # (!\inst9|temp|op_1~7\))) # (!\inst9|temp|cnt\(4) & (\inst9|temp|op_1~7\ $ (GND)))
-- \inst9|temp|op_1~9\ = CARRY((\inst9|temp|cnt\(4)) # (!\inst9|temp|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(4),
	datad => VCC,
	cin => \inst9|temp|op_1~7\,
	combout => \inst9|temp|op_1~8_combout\,
	cout => \inst9|temp|op_1~9\);

-- Location: LCCOMB_X4_Y11_N18
\inst9|temp|op_1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~69_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|temp|op_1~8_combout\)))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|START~q\ & (!\inst9|temp|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|_~19_combout\,
	datac => \inst9|temp|q~9_combout\,
	datad => \inst9|temp|op_1~8_combout\,
	combout => \inst9|temp|op_1~69_combout\);

-- Location: FF_X4_Y11_N19
\inst9|temp|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(4));

-- Location: LCCOMB_X3_Y11_N14
\inst9|temp|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~10_combout\ = (\inst9|temp|cnt\(5) & (\inst9|temp|op_1~9\ & VCC)) # (!\inst9|temp|cnt\(5) & (!\inst9|temp|op_1~9\))
-- \inst9|temp|op_1~11\ = CARRY((!\inst9|temp|cnt\(5) & !\inst9|temp|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(5),
	datad => VCC,
	cin => \inst9|temp|op_1~9\,
	combout => \inst9|temp|op_1~10_combout\,
	cout => \inst9|temp|op_1~11\);

-- Location: FF_X4_Y11_N25
\inst9|temp|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[5]~13_combout\,
	asdata => \inst9|temp|op_1~10_combout\,
	sload => \inst9|temp|q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(5));

-- Location: LCCOMB_X3_Y11_N16
\inst9|temp|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~12_combout\ = (\inst9|temp|cnt\(6) & ((GND) # (!\inst9|temp|op_1~11\))) # (!\inst9|temp|cnt\(6) & (\inst9|temp|op_1~11\ $ (GND)))
-- \inst9|temp|op_1~13\ = CARRY((\inst9|temp|cnt\(6)) # (!\inst9|temp|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(6),
	datad => VCC,
	cin => \inst9|temp|op_1~11\,
	combout => \inst9|temp|op_1~12_combout\,
	cout => \inst9|temp|op_1~13\);

-- Location: LCCOMB_X4_Y11_N30
\inst9|temp|op_1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~68_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|temp|op_1~12_combout\)))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|START~q\ & ((!\inst9|temp|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|q~9_combout\,
	datac => \inst9|temp|op_1~12_combout\,
	datad => \inst9|temp|_~18_combout\,
	combout => \inst9|temp|op_1~68_combout\);

-- Location: FF_X4_Y11_N31
\inst9|temp|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(6));

-- Location: LCCOMB_X3_Y11_N18
\inst9|temp|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~14_combout\ = (\inst9|temp|cnt\(7) & (\inst9|temp|op_1~13\ & VCC)) # (!\inst9|temp|cnt\(7) & (!\inst9|temp|op_1~13\))
-- \inst9|temp|op_1~15\ = CARRY((!\inst9|temp|cnt\(7) & !\inst9|temp|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(7),
	datad => VCC,
	cin => \inst9|temp|op_1~13\,
	combout => \inst9|temp|op_1~14_combout\,
	cout => \inst9|temp|op_1~15\);

-- Location: LCCOMB_X4_Y11_N0
\inst9|temp|op_1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~67_combout\ = (\inst9|temp|q~9_combout\ & (\inst9|temp|op_1~14_combout\)) # (!\inst9|temp|q~9_combout\ & ((\inst9|control|s88~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|op_1~14_combout\,
	datac => \inst9|temp|q~9_combout\,
	datad => \inst9|control|s88~q\,
	combout => \inst9|temp|op_1~67_combout\);

-- Location: FF_X4_Y11_N1
\inst9|temp|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(7));

-- Location: LCCOMB_X4_Y11_N14
\inst9|temp|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|q~6_combout\ = (!\inst9|temp|cnt\(7) & (!\inst9|temp|cnt\(3) & (!\inst9|temp|cnt\(4) & !\inst9|temp|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(7),
	datab => \inst9|temp|cnt\(3),
	datac => \inst9|temp|cnt\(4),
	datad => \inst9|temp|cnt\(6),
	combout => \inst9|temp|q~6_combout\);

-- Location: LCCOMB_X4_Y11_N16
\inst9|temp|cnt[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[18]~11_combout\ = (!\inst9|control|s88~q\ & \inst9|control|START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s88~q\,
	datad => \inst9|control|START~q\,
	combout => \inst9|temp|cnt[18]~11_combout\);

-- Location: LCCOMB_X3_Y11_N2
\inst9|temp|cnt[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[13]~14_combout\ = (\inst9|control|START~q\ & ((\inst9|control|s88~q\) # ((!\inst9|temp|_~14_combout\) # (!\inst9|temp|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s88~q\,
	datab => \inst9|control|START~q\,
	datac => \inst9|temp|_~18_combout\,
	datad => \inst9|temp|_~14_combout\,
	combout => \inst9|temp|cnt[13]~14_combout\);

-- Location: LCCOMB_X4_Y11_N28
\inst9|temp|cnt[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[13]~feeder_combout\ = \inst9|temp|cnt[13]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|temp|cnt[13]~14_combout\,
	combout => \inst9|temp|cnt[13]~feeder_combout\);

-- Location: LCCOMB_X5_Y11_N28
\inst9|temp|cnt[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[11]~12_combout\ = (\inst9|control|START~q\ & (((!\inst9|temp|_~19_combout\) # (!\inst9|temp|_~18_combout\)) # (!\inst9|temp|_~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|_~14_combout\,
	datab => \inst9|control|START~q\,
	datac => \inst9|temp|_~18_combout\,
	datad => \inst9|temp|_~19_combout\,
	combout => \inst9|temp|cnt[11]~12_combout\);

-- Location: LCCOMB_X5_Y11_N16
\inst9|temp|cnt[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[11]~feeder_combout\ = \inst9|temp|cnt[11]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|temp|cnt[11]~12_combout\,
	combout => \inst9|temp|cnt[11]~feeder_combout\);

-- Location: LCCOMB_X3_Y11_N20
\inst9|temp|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~16_combout\ = (\inst9|temp|cnt\(8) & ((GND) # (!\inst9|temp|op_1~15\))) # (!\inst9|temp|cnt\(8) & (\inst9|temp|op_1~15\ $ (GND)))
-- \inst9|temp|op_1~17\ = CARRY((\inst9|temp|cnt\(8)) # (!\inst9|temp|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(8),
	datad => VCC,
	cin => \inst9|temp|op_1~15\,
	combout => \inst9|temp|op_1~16_combout\,
	cout => \inst9|temp|op_1~17\);

-- Location: LCCOMB_X2_Y11_N14
\inst9|temp|op_1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~66_combout\ = (\inst9|temp|op_1~16_combout\ & \inst9|temp|q~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|temp|op_1~16_combout\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|temp|op_1~66_combout\);

-- Location: FF_X2_Y11_N15
\inst9|temp|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(8));

-- Location: LCCOMB_X3_Y11_N22
\inst9|temp|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~18_combout\ = (\inst9|temp|cnt\(9) & (\inst9|temp|op_1~17\ & VCC)) # (!\inst9|temp|cnt\(9) & (!\inst9|temp|op_1~17\))
-- \inst9|temp|op_1~19\ = CARRY((!\inst9|temp|cnt\(9) & !\inst9|temp|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(9),
	datad => VCC,
	cin => \inst9|temp|op_1~17\,
	combout => \inst9|temp|op_1~18_combout\,
	cout => \inst9|temp|op_1~19\);

-- Location: LCCOMB_X2_Y11_N30
\inst9|temp|op_1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~65_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|temp|op_1~18_combout\)))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|START~q\ & ((!\inst9|temp|_~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|op_1~18_combout\,
	datac => \inst9|temp|_~19_combout\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|temp|op_1~65_combout\);

-- Location: FF_X2_Y11_N31
\inst9|temp|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(9));

-- Location: LCCOMB_X3_Y11_N24
\inst9|temp|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~20_combout\ = (\inst9|temp|cnt\(10) & ((GND) # (!\inst9|temp|op_1~19\))) # (!\inst9|temp|cnt\(10) & (\inst9|temp|op_1~19\ $ (GND)))
-- \inst9|temp|op_1~21\ = CARRY((\inst9|temp|cnt\(10)) # (!\inst9|temp|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(10),
	datad => VCC,
	cin => \inst9|temp|op_1~19\,
	combout => \inst9|temp|op_1~20_combout\,
	cout => \inst9|temp|op_1~21\);

-- Location: LCCOMB_X2_Y11_N18
\inst9|temp|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~20_combout\ = (\inst9|control|START~q\ & (\inst9|temp|_~18_combout\ & !\inst9|temp|q~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|_~18_combout\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|temp|_~20_combout\);

-- Location: LCCOMB_X2_Y11_N2
\inst9|temp|cnt[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[10]~6_combout\ = (\inst9|temp|q~9_combout\ & ((\inst9|temp|op_1~20_combout\) # ((!\inst9|control|s88~q\ & \inst9|temp|_~20_combout\)))) # (!\inst9|temp|q~9_combout\ & (((!\inst9|control|s88~q\ & \inst9|temp|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|temp|op_1~20_combout\,
	datac => \inst9|control|s88~q\,
	datad => \inst9|temp|_~20_combout\,
	combout => \inst9|temp|cnt[10]~6_combout\);

-- Location: FF_X2_Y11_N3
\inst9|temp|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(10));

-- Location: LCCOMB_X3_Y11_N26
\inst9|temp|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~22_combout\ = (\inst9|temp|cnt\(11) & (\inst9|temp|op_1~21\ & VCC)) # (!\inst9|temp|cnt\(11) & (!\inst9|temp|op_1~21\))
-- \inst9|temp|op_1~23\ = CARRY((!\inst9|temp|cnt\(11) & !\inst9|temp|op_1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(11),
	datad => VCC,
	cin => \inst9|temp|op_1~21\,
	combout => \inst9|temp|op_1~22_combout\,
	cout => \inst9|temp|op_1~23\);

-- Location: FF_X5_Y11_N17
\inst9|temp|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[11]~feeder_combout\,
	asdata => \inst9|temp|op_1~22_combout\,
	sload => \inst9|temp|q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(11));

-- Location: LCCOMB_X3_Y11_N28
\inst9|temp|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~24_combout\ = (\inst9|temp|cnt\(12) & ((GND) # (!\inst9|temp|op_1~23\))) # (!\inst9|temp|cnt\(12) & (\inst9|temp|op_1~23\ $ (GND)))
-- \inst9|temp|op_1~25\ = CARRY((\inst9|temp|cnt\(12)) # (!\inst9|temp|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(12),
	datad => VCC,
	cin => \inst9|temp|op_1~23\,
	combout => \inst9|temp|op_1~24_combout\,
	cout => \inst9|temp|op_1~25\);

-- Location: LCCOMB_X2_Y11_N24
\inst9|temp|op_1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~64_combout\ = (\inst9|temp|q~9_combout\ & (\inst9|temp|op_1~24_combout\)) # (!\inst9|temp|q~9_combout\ & ((\inst9|control|START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|temp|op_1~24_combout\,
	datad => \inst9|control|START~q\,
	combout => \inst9|temp|op_1~64_combout\);

-- Location: FF_X2_Y11_N25
\inst9|temp|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(12));

-- Location: LCCOMB_X3_Y11_N30
\inst9|temp|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~26_combout\ = (\inst9|temp|cnt\(13) & (\inst9|temp|op_1~25\ & VCC)) # (!\inst9|temp|cnt\(13) & (!\inst9|temp|op_1~25\))
-- \inst9|temp|op_1~27\ = CARRY((!\inst9|temp|cnt\(13) & !\inst9|temp|op_1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(13),
	datad => VCC,
	cin => \inst9|temp|op_1~25\,
	combout => \inst9|temp|op_1~26_combout\,
	cout => \inst9|temp|op_1~27\);

-- Location: FF_X4_Y11_N29
\inst9|temp|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[13]~feeder_combout\,
	asdata => \inst9|temp|op_1~26_combout\,
	sload => \inst9|temp|q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(13));

-- Location: LCCOMB_X3_Y10_N0
\inst9|temp|op_1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~28_combout\ = (\inst9|temp|cnt\(14) & ((GND) # (!\inst9|temp|op_1~27\))) # (!\inst9|temp|cnt\(14) & (\inst9|temp|op_1~27\ $ (GND)))
-- \inst9|temp|op_1~29\ = CARRY((\inst9|temp|cnt\(14)) # (!\inst9|temp|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(14),
	datad => VCC,
	cin => \inst9|temp|op_1~27\,
	combout => \inst9|temp|op_1~28_combout\,
	cout => \inst9|temp|op_1~29\);

-- Location: LCCOMB_X8_Y11_N8
\inst9|control|temp_out[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|temp_out\(22) = (\inst9|control|s88~q\) # ((!\inst9|temp|_~19_combout\) # (!\inst9|temp|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s88~q\,
	datac => \inst9|temp|_~18_combout\,
	datad => \inst9|temp|_~19_combout\,
	combout => \inst9|control|temp_out\(22));

-- Location: LCCOMB_X2_Y11_N22
\inst9|temp|op_1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~63_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|temp|op_1~28_combout\)))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|START~q\ & ((\inst9|control|temp_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|START~q\,
	datac => \inst9|temp|op_1~28_combout\,
	datad => \inst9|control|temp_out\(22),
	combout => \inst9|temp|op_1~63_combout\);

-- Location: FF_X2_Y11_N23
\inst9|temp|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(14));

-- Location: LCCOMB_X3_Y10_N2
\inst9|temp|op_1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~30_combout\ = (\inst9|temp|cnt\(15) & (\inst9|temp|op_1~29\ & VCC)) # (!\inst9|temp|cnt\(15) & (!\inst9|temp|op_1~29\))
-- \inst9|temp|op_1~31\ = CARRY((!\inst9|temp|cnt\(15) & !\inst9|temp|op_1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(15),
	datad => VCC,
	cin => \inst9|temp|op_1~29\,
	combout => \inst9|temp|op_1~30_combout\,
	cout => \inst9|temp|op_1~31\);

-- Location: LCCOMB_X2_Y11_N8
\inst9|temp|cnt[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[15]~5_combout\ = (\inst9|temp|q~9_combout\ & ((\inst9|temp|op_1~30_combout\) # ((\inst9|temp|_~19_combout\ & \inst9|temp|_~20_combout\)))) # (!\inst9|temp|q~9_combout\ & (((\inst9|temp|_~19_combout\ & \inst9|temp|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|temp|op_1~30_combout\,
	datac => \inst9|temp|_~19_combout\,
	datad => \inst9|temp|_~20_combout\,
	combout => \inst9|temp|cnt[15]~5_combout\);

-- Location: FF_X2_Y11_N9
\inst9|temp|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(15));

-- Location: LCCOMB_X3_Y10_N4
\inst9|temp|op_1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~32_combout\ = (\inst9|temp|cnt\(16) & ((GND) # (!\inst9|temp|op_1~31\))) # (!\inst9|temp|cnt\(16) & (\inst9|temp|op_1~31\ $ (GND)))
-- \inst9|temp|op_1~33\ = CARRY((\inst9|temp|cnt\(16)) # (!\inst9|temp|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(16),
	datad => VCC,
	cin => \inst9|temp|op_1~31\,
	combout => \inst9|temp|op_1~32_combout\,
	cout => \inst9|temp|op_1~33\);

-- Location: LCCOMB_X5_Y11_N6
\inst9|temp|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~15_combout\ = (!\inst9|control|s88~q\ & \inst9|temp|_~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s88~q\,
	datad => \inst9|temp|_~14_combout\,
	combout => \inst9|temp|_~15_combout\);

-- Location: LCCOMB_X1_Y11_N6
\inst9|temp|cnt[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[16]~4_combout\ = (\inst9|temp|q~9_combout\ & (\inst9|temp|op_1~32_combout\)) # (!\inst9|temp|q~9_combout\ & (((\inst9|control|START~q\ & \inst9|temp|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|op_1~32_combout\,
	datab => \inst9|control|START~q\,
	datac => \inst9|temp|q~9_combout\,
	datad => \inst9|temp|_~15_combout\,
	combout => \inst9|temp|cnt[16]~4_combout\);

-- Location: FF_X1_Y11_N7
\inst9|temp|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(16));

-- Location: LCCOMB_X3_Y10_N6
\inst9|temp|op_1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~34_combout\ = (\inst9|temp|cnt\(17) & (\inst9|temp|op_1~33\ & VCC)) # (!\inst9|temp|cnt\(17) & (!\inst9|temp|op_1~33\))
-- \inst9|temp|op_1~35\ = CARRY((!\inst9|temp|cnt\(17) & !\inst9|temp|op_1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(17),
	datad => VCC,
	cin => \inst9|temp|op_1~33\,
	combout => \inst9|temp|op_1~34_combout\,
	cout => \inst9|temp|op_1~35\);

-- Location: LCCOMB_X2_Y11_N6
\inst9|temp|cnt[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[17]~3_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|temp|op_1~34_combout\)))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|START~q\ & (\inst9|temp|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|_~18_combout\,
	datac => \inst9|temp|op_1~34_combout\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|temp|cnt[17]~3_combout\);

-- Location: FF_X2_Y11_N7
\inst9|temp|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(17));

-- Location: LCCOMB_X3_Y10_N8
\inst9|temp|op_1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~36_combout\ = (\inst9|temp|cnt\(18) & ((GND) # (!\inst9|temp|op_1~35\))) # (!\inst9|temp|cnt\(18) & (\inst9|temp|op_1~35\ $ (GND)))
-- \inst9|temp|op_1~37\ = CARRY((\inst9|temp|cnt\(18)) # (!\inst9|temp|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(18),
	datad => VCC,
	cin => \inst9|temp|op_1~35\,
	combout => \inst9|temp|op_1~36_combout\,
	cout => \inst9|temp|op_1~37\);

-- Location: FF_X4_Y11_N17
\inst9|temp|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[18]~11_combout\,
	asdata => \inst9|temp|op_1~36_combout\,
	sload => \inst9|temp|q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(18));

-- Location: LCCOMB_X3_Y10_N10
\inst9|temp|op_1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~38_combout\ = (\inst9|temp|cnt\(19) & (\inst9|temp|op_1~37\ & VCC)) # (!\inst9|temp|cnt\(19) & (!\inst9|temp|op_1~37\))
-- \inst9|temp|op_1~39\ = CARRY((!\inst9|temp|cnt\(19) & !\inst9|temp|op_1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(19),
	datad => VCC,
	cin => \inst9|temp|op_1~37\,
	combout => \inst9|temp|op_1~38_combout\,
	cout => \inst9|temp|op_1~39\);

-- Location: LCCOMB_X2_Y11_N26
\inst9|temp|op_1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~62_combout\ = (\inst9|temp|q~9_combout\ & (\inst9|temp|op_1~38_combout\)) # (!\inst9|temp|q~9_combout\ & ((\inst9|control|START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|op_1~38_combout\,
	datab => \inst9|control|START~q\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|temp|op_1~62_combout\);

-- Location: FF_X2_Y11_N27
\inst9|temp|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(19));

-- Location: LCCOMB_X3_Y10_N12
\inst9|temp|op_1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~40_combout\ = (\inst9|temp|cnt\(20) & ((GND) # (!\inst9|temp|op_1~39\))) # (!\inst9|temp|cnt\(20) & (\inst9|temp|op_1~39\ $ (GND)))
-- \inst9|temp|op_1~41\ = CARRY((\inst9|temp|cnt\(20)) # (!\inst9|temp|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(20),
	datad => VCC,
	cin => \inst9|temp|op_1~39\,
	combout => \inst9|temp|op_1~40_combout\,
	cout => \inst9|temp|op_1~41\);

-- Location: LCCOMB_X2_Y11_N10
\inst9|temp|op_1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~61_combout\ = (\inst9|temp|q~9_combout\ & ((\inst9|temp|op_1~40_combout\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|op_1~40_combout\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|temp|op_1~61_combout\);

-- Location: FF_X2_Y11_N11
\inst9|temp|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(20));

-- Location: LCCOMB_X3_Y10_N14
\inst9|temp|op_1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~42_combout\ = (\inst9|temp|cnt\(21) & (\inst9|temp|op_1~41\ & VCC)) # (!\inst9|temp|cnt\(21) & (!\inst9|temp|op_1~41\))
-- \inst9|temp|op_1~43\ = CARRY((!\inst9|temp|cnt\(21) & !\inst9|temp|op_1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(21),
	datad => VCC,
	cin => \inst9|temp|op_1~41\,
	combout => \inst9|temp|op_1~42_combout\,
	cout => \inst9|temp|op_1~43\);

-- Location: LCCOMB_X2_Y11_N28
\inst9|temp|cnt[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[21]~2_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|temp|op_1~42_combout\)))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|START~q\ & ((\inst9|temp|_~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|op_1~42_combout\,
	datac => \inst9|temp|_~19_combout\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|temp|cnt[21]~2_combout\);

-- Location: FF_X2_Y11_N29
\inst9|temp|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[21]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(21));

-- Location: LCCOMB_X3_Y10_N16
\inst9|temp|op_1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~44_combout\ = (\inst9|temp|cnt\(22) & ((GND) # (!\inst9|temp|op_1~43\))) # (!\inst9|temp|cnt\(22) & (\inst9|temp|op_1~43\ $ (GND)))
-- \inst9|temp|op_1~45\ = CARRY((\inst9|temp|cnt\(22)) # (!\inst9|temp|op_1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|cnt\(22),
	datad => VCC,
	cin => \inst9|temp|op_1~43\,
	combout => \inst9|temp|op_1~44_combout\,
	cout => \inst9|temp|op_1~45\);

-- Location: LCCOMB_X2_Y11_N16
\inst9|temp|op_1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~60_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|temp|op_1~44_combout\)))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|START~q\ & ((\inst9|control|temp_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|START~q\,
	datac => \inst9|temp|op_1~44_combout\,
	datad => \inst9|control|temp_out\(22),
	combout => \inst9|temp|op_1~60_combout\);

-- Location: FF_X2_Y11_N17
\inst9|temp|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(22));

-- Location: LCCOMB_X2_Y11_N20
\inst9|temp|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|q~2_combout\ = (!\inst9|temp|cnt\(21) & (!\inst9|temp|cnt\(19) & (!\inst9|temp|cnt\(22) & !\inst9|temp|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(21),
	datab => \inst9|temp|cnt\(19),
	datac => \inst9|temp|cnt\(22),
	datad => \inst9|temp|cnt\(20),
	combout => \inst9|temp|q~2_combout\);

-- Location: LCCOMB_X2_Y11_N4
\inst9|temp|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|q~4_combout\ = (!\inst9|temp|cnt\(12) & (!\inst9|temp|cnt\(10) & (!\inst9|temp|cnt\(8) & !\inst9|temp|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(12),
	datab => \inst9|temp|cnt\(10),
	datac => \inst9|temp|cnt\(8),
	datad => \inst9|temp|cnt\(9),
	combout => \inst9|temp|q~4_combout\);

-- Location: LCCOMB_X2_Y11_N0
\inst9|temp|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|q~3_combout\ = (!\inst9|temp|cnt\(15) & (!\inst9|temp|cnt\(14) & (!\inst9|temp|cnt\(16) & !\inst9|temp|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(15),
	datab => \inst9|temp|cnt\(14),
	datac => \inst9|temp|cnt\(16),
	datad => \inst9|temp|cnt\(17),
	combout => \inst9|temp|q~3_combout\);

-- Location: LCCOMB_X4_Y11_N2
\inst9|temp|cnt[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|cnt[23]~10_combout\ = (\inst9|control|START~q\ & ((\inst9|control|s88~q\) # (!\inst9|temp|_~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|START~q\,
	datab => \inst9|temp|_~14_combout\,
	datad => \inst9|control|s88~q\,
	combout => \inst9|temp|cnt[23]~10_combout\);

-- Location: LCCOMB_X3_Y10_N18
\inst9|temp|op_1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~46_combout\ = (\inst9|temp|cnt\(23) & (\inst9|temp|op_1~45\ & VCC)) # (!\inst9|temp|cnt\(23) & (!\inst9|temp|op_1~45\))
-- \inst9|temp|op_1~47\ = CARRY((!\inst9|temp|cnt\(23) & !\inst9|temp|op_1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(23),
	datad => VCC,
	cin => \inst9|temp|op_1~45\,
	combout => \inst9|temp|op_1~46_combout\,
	cout => \inst9|temp|op_1~47\);

-- Location: FF_X4_Y11_N3
\inst9|temp|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|cnt[23]~10_combout\,
	asdata => \inst9|temp|op_1~46_combout\,
	sload => \inst9|temp|q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(23));

-- Location: LCCOMB_X3_Y10_N20
\inst9|temp|op_1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~48_combout\ = (\inst9|temp|cnt\(24) & ((GND) # (!\inst9|temp|op_1~47\))) # (!\inst9|temp|cnt\(24) & (\inst9|temp|op_1~47\ $ (GND)))
-- \inst9|temp|op_1~49\ = CARRY((\inst9|temp|cnt\(24)) # (!\inst9|temp|op_1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(24),
	datad => VCC,
	cin => \inst9|temp|op_1~47\,
	combout => \inst9|temp|op_1~48_combout\,
	cout => \inst9|temp|op_1~49\);

-- Location: LCCOMB_X5_Y11_N2
\inst9|temp|op_1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~59_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|temp|op_1~48_combout\)))) # (!\inst9|temp|q~9_combout\ & (!\inst9|temp|_~18_combout\ & (\inst9|control|START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|_~18_combout\,
	datab => \inst9|control|START~q\,
	datac => \inst9|temp|q~9_combout\,
	datad => \inst9|temp|op_1~48_combout\,
	combout => \inst9|temp|op_1~59_combout\);

-- Location: FF_X5_Y11_N3
\inst9|temp|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(24));

-- Location: LCCOMB_X3_Y10_N22
\inst9|temp|op_1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~50_combout\ = (\inst9|temp|cnt\(25) & (\inst9|temp|op_1~49\ & VCC)) # (!\inst9|temp|cnt\(25) & (!\inst9|temp|op_1~49\))
-- \inst9|temp|op_1~51\ = CARRY((!\inst9|temp|cnt\(25) & !\inst9|temp|op_1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(25),
	datad => VCC,
	cin => \inst9|temp|op_1~49\,
	combout => \inst9|temp|op_1~50_combout\,
	cout => \inst9|temp|op_1~51\);

-- Location: LCCOMB_X5_Y11_N4
\inst9|temp|op_1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~58_combout\ = (\inst9|temp|q~9_combout\ & ((\inst9|temp|op_1~50_combout\))) # (!\inst9|temp|q~9_combout\ & (\inst9|control|s88~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s88~q\,
	datac => \inst9|temp|q~9_combout\,
	datad => \inst9|temp|op_1~50_combout\,
	combout => \inst9|temp|op_1~58_combout\);

-- Location: FF_X5_Y11_N5
\inst9|temp|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(25));

-- Location: LCCOMB_X3_Y10_N24
\inst9|temp|op_1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~52_combout\ = (\inst9|temp|cnt\(26) & ((GND) # (!\inst9|temp|op_1~51\))) # (!\inst9|temp|cnt\(26) & (\inst9|temp|op_1~51\ $ (GND)))
-- \inst9|temp|op_1~53\ = CARRY((\inst9|temp|cnt\(26)) # (!\inst9|temp|op_1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(26),
	datad => VCC,
	cin => \inst9|temp|op_1~51\,
	combout => \inst9|temp|op_1~52_combout\,
	cout => \inst9|temp|op_1~53\);

-- Location: LCCOMB_X4_Y10_N2
\inst9|temp|op_1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~57_combout\ = (\inst9|temp|q~9_combout\ & \inst9|temp|op_1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|temp|q~9_combout\,
	datad => \inst9|temp|op_1~52_combout\,
	combout => \inst9|temp|op_1~57_combout\);

-- Location: FF_X4_Y10_N3
\inst9|temp|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(26));

-- Location: LCCOMB_X3_Y10_N26
\inst9|temp|op_1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~54_combout\ = \inst9|temp|cnt\(27) $ (!\inst9|temp|op_1~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(27),
	cin => \inst9|temp|op_1~53\,
	combout => \inst9|temp|op_1~54_combout\);

-- Location: LCCOMB_X3_Y10_N30
\inst9|temp|op_1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|op_1~56_combout\ = (\inst9|temp|op_1~54_combout\ & \inst9|temp|q~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|temp|op_1~54_combout\,
	datad => \inst9|temp|q~9_combout\,
	combout => \inst9|temp|op_1~56_combout\);

-- Location: FF_X3_Y10_N31
\inst9|temp|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|temp|op_1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|temp|cnt\(27));

-- Location: LCCOMB_X5_Y11_N14
\inst9|temp|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|q~1_combout\ = (!\inst9|temp|cnt\(26) & (!\inst9|temp|cnt\(24) & (!\inst9|temp|cnt\(25) & !\inst9|temp|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(26),
	datab => \inst9|temp|cnt\(24),
	datac => \inst9|temp|cnt\(25),
	datad => \inst9|temp|cnt\(27),
	combout => \inst9|temp|q~1_combout\);

-- Location: LCCOMB_X2_Y11_N12
\inst9|temp|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|q~5_combout\ = (\inst9|temp|q~2_combout\ & (\inst9|temp|q~4_combout\ & (\inst9|temp|q~3_combout\ & \inst9|temp|q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~2_combout\,
	datab => \inst9|temp|q~4_combout\,
	datac => \inst9|temp|q~3_combout\,
	datad => \inst9|temp|q~1_combout\,
	combout => \inst9|temp|q~5_combout\);

-- Location: LCCOMB_X4_Y11_N12
\inst9|temp|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|q~7_combout\ = (!\inst9|temp|cnt\(0) & (!\inst9|temp|cnt\(1) & (!\inst9|temp|cnt\(23) & !\inst9|temp|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(0),
	datab => \inst9|temp|cnt\(1),
	datac => \inst9|temp|cnt\(23),
	datad => \inst9|temp|cnt\(2),
	combout => \inst9|temp|q~7_combout\);

-- Location: LCCOMB_X4_Y11_N20
\inst9|temp|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|q~8_combout\ = (!\inst9|temp|cnt\(18) & (!\inst9|temp|cnt\(13) & (!\inst9|temp|cnt\(11) & !\inst9|temp|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|cnt\(18),
	datab => \inst9|temp|cnt\(13),
	datac => \inst9|temp|cnt\(11),
	datad => \inst9|temp|cnt\(5),
	combout => \inst9|temp|q~8_combout\);

-- Location: LCCOMB_X4_Y11_N4
\inst9|temp|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|q~9_combout\ = (((!\inst9|temp|q~8_combout\) # (!\inst9|temp|q~7_combout\)) # (!\inst9|temp|q~5_combout\)) # (!\inst9|temp|q~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~6_combout\,
	datab => \inst9|temp|q~5_combout\,
	datac => \inst9|temp|q~7_combout\,
	datad => \inst9|temp|q~8_combout\,
	combout => \inst9|temp|q~9_combout\);

-- Location: LCCOMB_X5_Y9_N30
\inst9|control|s76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|s76~0_combout\ = (\inst9|temp|q~9_combout\ & (((\inst9|control|s76~q\)))) # (!\inst9|temp|q~9_combout\ & ((\inst14|song~combout\ & (\inst9|control|s75~q\)) # (!\inst14|song~combout\ & ((\inst9|control|s76~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|q~9_combout\,
	datab => \inst9|control|s75~q\,
	datac => \inst9|control|s76~q\,
	datad => \inst14|song~combout\,
	combout => \inst9|control|s76~0_combout\);

-- Location: FF_X5_Y9_N31
\inst9|control|s76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst9|control|s76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|control|s76~q\);

-- Location: LCCOMB_X5_Y9_N4
\inst9|control|freq_out[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[6]~16_combout\ = (!\inst9|control|s76~q\ & (!\inst9|control|s35~q\ & (!\inst9|control|s30~q\ & !\inst9|control|s82~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s76~q\,
	datab => \inst9|control|s35~q\,
	datac => \inst9|control|s30~q\,
	datad => \inst9|control|s82~q\,
	combout => \inst9|control|freq_out[6]~16_combout\);

-- Location: LCCOMB_X6_Y9_N18
\inst9|control|freq_out[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[6]~15_combout\ = (!\inst9|control|s15~q\ & (!\inst9|control|s10~q\ & (!\inst9|control|s5~q\ & !\inst9|control|s25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s15~q\,
	datab => \inst9|control|s10~q\,
	datac => \inst9|control|s5~q\,
	datad => \inst9|control|s25~q\,
	combout => \inst9|control|freq_out[6]~15_combout\);

-- Location: LCCOMB_X9_Y11_N4
\inst9|control|clk_out~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~95_combout\ = (!\inst9|control|s68~q\ & (!\inst9|control|s69~q\ & (!\inst9|control|s49~q\ & !\inst9|control|s48~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s68~q\,
	datab => \inst9|control|s69~q\,
	datac => \inst9|control|s49~q\,
	datad => \inst9|control|s48~q\,
	combout => \inst9|control|clk_out~95_combout\);

-- Location: LCCOMB_X7_Y11_N28
\inst9|control|clk_out~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~102_combout\ = ((\inst9|control|s91~q\) # ((!\inst9|control|clk_out~95_combout\) # (!\inst9|control|freq_out[6]~15_combout\))) # (!\inst9|control|freq_out[6]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[6]~16_combout\,
	datab => \inst9|control|s91~q\,
	datac => \inst9|control|freq_out[6]~15_combout\,
	datad => \inst9|control|clk_out~95_combout\,
	combout => \inst9|control|clk_out~102_combout\);

-- Location: LCCOMB_X7_Y11_N20
\inst9|control|clk_out~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~108_combout\ = (\inst9|control|s88~q\) # (((!\inst9|temp|_~19_combout\) # (!\inst9|temp|_~14_combout\)) # (!\inst9|temp|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s88~q\,
	datab => \inst9|temp|_~18_combout\,
	datac => \inst9|temp|_~14_combout\,
	datad => \inst9|temp|_~19_combout\,
	combout => \inst9|control|clk_out~108_combout\);

-- Location: LCCOMB_X5_Y11_N30
\inst9|control|clk_out~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~100_combout\ = (!\inst9|control|s86~q\ & (!\inst9|control|s87~q\ & !\inst9|control|s79~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s86~q\,
	datab => \inst9|control|s87~q\,
	datac => \inst9|control|s79~q\,
	combout => \inst9|control|clk_out~100_combout\);

-- Location: LCCOMB_X6_Y11_N2
\inst9|control|clk_out~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~99_combout\ = (!\inst9|control|s70~q\ & (!\inst9|control|s73~q\ & (!\inst9|control|s53~q\ & !\inst9|control|s72~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s70~q\,
	datab => \inst9|control|s73~q\,
	datac => \inst9|control|s53~q\,
	datad => \inst9|control|s72~q\,
	combout => \inst9|control|clk_out~99_combout\);

-- Location: LCCOMB_X6_Y11_N22
\inst9|control|clk_out~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~98_combout\ = (!\inst9|control|s50~q\ & (!\inst9|control|s20~q\ & (!\inst9|control|s52~q\ & !\inst9|control|s40~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s50~q\,
	datab => \inst9|control|s20~q\,
	datac => \inst9|control|s52~q\,
	datad => \inst9|control|s40~q\,
	combout => \inst9|control|clk_out~98_combout\);

-- Location: LCCOMB_X6_Y11_N16
\inst9|control|clk_out~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~101_combout\ = (\inst9|control|clk_out~100_combout\ & (\inst9|control|clk_out~99_combout\ & \inst9|control|clk_out~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|clk_out~100_combout\,
	datac => \inst9|control|clk_out~99_combout\,
	datad => \inst9|control|clk_out~98_combout\,
	combout => \inst9|control|clk_out~101_combout\);

-- Location: LCCOMB_X7_Y11_N2
\inst9|control|freq_out[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[1]~19_combout\ = (!\inst9|control|s81~q\ & !\inst9|control|s80~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s81~q\,
	datad => \inst9|control|s80~q\,
	combout => \inst9|control|freq_out[1]~19_combout\);

-- Location: LCCOMB_X7_Y9_N26
\inst9|control|clk_out~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~94_combout\ = (!\inst9|control|s41~q\ & !\inst9|control|s42~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s41~q\,
	datac => \inst9|control|s42~q\,
	combout => \inst9|control|clk_out~94_combout\);

-- Location: LCCOMB_X7_Y9_N22
\inst9|control|clk_out~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~93_combout\ = (!\inst9|control|s22~q\ & (!\inst9|control|s21~q\ & (!\inst9|control|s2~q\ & !\inst9|control|s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s22~q\,
	datab => \inst9|control|s21~q\,
	datac => \inst9|control|s2~q\,
	datad => \inst9|control|s1~q\,
	combout => \inst9|control|clk_out~93_combout\);

-- Location: LCCOMB_X7_Y11_N12
\inst9|control|clk_out~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~104_combout\ = (\inst9|control|s77~q\) # (((\inst9|control|s78~q\) # (!\inst9|control|clk_out~93_combout\)) # (!\inst9|control|clk_out~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s77~q\,
	datab => \inst9|control|clk_out~94_combout\,
	datac => \inst9|control|s78~q\,
	datad => \inst9|control|clk_out~93_combout\,
	combout => \inst9|control|clk_out~104_combout\);

-- Location: LCCOMB_X7_Y11_N6
\inst9|control|clk_out~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~105_combout\ = (((\inst9|control|clk_out~104_combout\) # (\inst9|control|s85~q\)) # (!\inst9|control|freq_out[1]~19_combout\)) # (!\inst9|control|clk_out~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|clk_out~101_combout\,
	datab => \inst9|control|freq_out[1]~19_combout\,
	datac => \inst9|control|clk_out~104_combout\,
	datad => \inst9|control|s85~q\,
	combout => \inst9|control|clk_out~105_combout\);

-- Location: LCCOMB_X6_Y9_N24
\inst9|control|clk_out~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~97_combout\ = (!\inst9|control|s36~q\ & (!\inst9|control|s31~q\ & (!\inst9|control|s84~q\ & !\inst9|control|s83~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s36~q\,
	datab => \inst9|control|s31~q\,
	datac => \inst9|control|s84~q\,
	datad => \inst9|control|s83~q\,
	combout => \inst9|control|clk_out~97_combout\);

-- Location: LCCOMB_X6_Y9_N14
\inst9|control|clk_out~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~96_combout\ = (!\inst9|control|s11~q\ & (!\inst9|control|s26~q\ & (!\inst9|control|s6~q\ & !\inst9|control|s16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s11~q\,
	datab => \inst9|control|s26~q\,
	datac => \inst9|control|s6~q\,
	datad => \inst9|control|s16~q\,
	combout => \inst9|control|clk_out~96_combout\);

-- Location: LCCOMB_X6_Y10_N30
\inst9|control|freq_out[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[9]~23_combout\ = (!\inst9|control|s7~q\ & (!\inst9|control|s17~q\ & (!\inst9|control|s12~q\ & !\inst9|control|s27~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s7~q\,
	datab => \inst9|control|s17~q\,
	datac => \inst9|control|s12~q\,
	datad => \inst9|control|s27~q\,
	combout => \inst9|control|freq_out[9]~23_combout\);

-- Location: LCCOMB_X6_Y8_N26
\inst9|control|freq_out[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[9]~24_combout\ = (!\inst9|control|s32~q\ & (!\inst9|control|s51~q\ & (!\inst9|control|s37~q\ & !\inst9|control|s71~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s32~q\,
	datab => \inst9|control|s51~q\,
	datac => \inst9|control|s37~q\,
	datad => \inst9|control|s71~q\,
	combout => \inst9|control|freq_out[9]~24_combout\);

-- Location: LCCOMB_X7_Y9_N30
\inst9|control|clk_out~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~103_combout\ = (((!\inst9|control|freq_out[9]~24_combout\) # (!\inst9|control|freq_out[9]~23_combout\)) # (!\inst9|control|clk_out~96_combout\)) # (!\inst9|control|clk_out~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|clk_out~97_combout\,
	datab => \inst9|control|clk_out~96_combout\,
	datac => \inst9|control|freq_out[9]~23_combout\,
	datad => \inst9|control|freq_out[9]~24_combout\,
	combout => \inst9|control|clk_out~103_combout\);

-- Location: LCCOMB_X7_Y11_N8
\inst9|control|clk_out~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~106_combout\ = (\inst9|control|clk_out~102_combout\) # ((\inst9|control|clk_out~108_combout\) # ((\inst9|control|clk_out~105_combout\) # (\inst9|control|clk_out~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|clk_out~102_combout\,
	datab => \inst9|control|clk_out~108_combout\,
	datac => \inst9|control|clk_out~105_combout\,
	datad => \inst9|control|clk_out~103_combout\,
	combout => \inst9|control|clk_out~106_combout\);

-- Location: LCCOMB_X1_Y11_N20
\inst9|control|clk_out\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|clk_out~combout\ = LCELL((\clock~input_o\ & (\inst9|control|clk_out~106_combout\ & \inst9|temp|q~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~input_o\,
	datab => \inst9|control|clk_out~106_combout\,
	datac => \inst9|temp|q~9_combout\,
	combout => \inst9|control|clk_out~combout\);

-- Location: CLKCTRL_G3
\inst9|control|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst9|control|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst9|control|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y9_N14
\inst9|control|freq_out[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[15]~9_combout\ = (\inst9|control|clk_out~94_combout\ & (\inst9|control|START~q\ & (\inst9|temp|_~5_combout\ & \inst9|control|clk_out~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|clk_out~94_combout\,
	datab => \inst9|control|START~q\,
	datac => \inst9|temp|_~5_combout\,
	datad => \inst9|control|clk_out~93_combout\,
	combout => \inst9|control|freq_out[15]~9_combout\);

-- Location: LCCOMB_X8_Y11_N24
\inst9|control|freq_out[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[7]~8_combout\ = (!\inst9|control|s64~q\ & (!\inst9|control|s44~q\ & (!\inst9|control|s57~q\ & \inst9|temp|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s64~q\,
	datab => \inst9|control|s44~q\,
	datac => \inst9|control|s57~q\,
	datad => \inst9|temp|_~4_combout\,
	combout => \inst9|control|freq_out[7]~8_combout\);

-- Location: LCCOMB_X6_Y9_N30
\inst9|control|freq_out[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[15]~11_combout\ = (!\inst9|control|s88~q\ & (!\inst9|control|s24~q\ & (!\inst9|control|s4~q\ & !\inst9|control|s61~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s88~q\,
	datab => \inst9|control|s24~q\,
	datac => \inst9|control|s4~q\,
	datad => \inst9|control|s61~q\,
	combout => \inst9|control|freq_out[15]~11_combout\);

-- Location: LCCOMB_X6_Y9_N26
\inst9|control|freq_out[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[15]~12_combout\ = (\inst9|control|freq_out[15]~11_combout\ & \inst9|control|clk_out~95_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|control|freq_out[15]~11_combout\,
	datad => \inst9|control|clk_out~95_combout\,
	combout => \inst9|control|freq_out[15]~12_combout\);

-- Location: LCCOMB_X6_Y10_N8
\inst9|control|freq_out[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[15]~13_combout\ = (\inst9|control|freq_out[15]~9_combout\ & (\inst9|control|freq_out[15]~10_combout\ & (\inst9|control|freq_out[7]~8_combout\ & \inst9|control|freq_out[15]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[15]~9_combout\,
	datab => \inst9|control|freq_out[15]~10_combout\,
	datac => \inst9|control|freq_out[7]~8_combout\,
	datad => \inst9|control|freq_out[15]~12_combout\,
	combout => \inst9|control|freq_out[15]~13_combout\);

-- Location: LCCOMB_X6_Y10_N28
\inst9|control|freq_out[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[14]~14_combout\ = (\inst9|control|s0~q\) # (!\inst9|control|freq_out[15]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|control|freq_out[15]~13_combout\,
	datad => \inst9|control|s0~q\,
	combout => \inst9|control|freq_out[14]~14_combout\);

-- Location: LCCOMB_X6_Y9_N20
\inst9|control|freq_out[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[8]~21_combout\ = (\inst9|temp|_~6_combout\ & (!\inst9|control|s78~q\ & !\inst9|control|s77~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|temp|_~6_combout\,
	datac => \inst9|control|s78~q\,
	datad => \inst9|control|s77~q\,
	combout => \inst9|control|freq_out[8]~21_combout\);

-- Location: LCCOMB_X7_Y8_N0
\inst9|control|freq_out[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[6]~17_combout\ = (!\inst9|control|s90~q\ & (!\inst9|control|s62~q\ & !\inst9|control|s89~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s90~q\,
	datac => \inst9|control|s62~q\,
	datad => \inst9|control|s89~q\,
	combout => \inst9|control|freq_out[6]~17_combout\);

-- Location: LCCOMB_X6_Y9_N10
\inst9|control|freq_out[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[6]~18_combout\ = (\inst9|control|freq_out[6]~15_combout\ & (\inst9|control|freq_out[6]~16_combout\ & (!\inst9|control|s91~q\ & \inst9|control|freq_out[6]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[6]~15_combout\,
	datab => \inst9|control|freq_out[6]~16_combout\,
	datac => \inst9|control|s91~q\,
	datad => \inst9|control|freq_out[6]~17_combout\,
	combout => \inst9|control|freq_out[6]~18_combout\);

-- Location: LCCOMB_X6_Y10_N18
\inst9|control|freq_out[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[13]~20_combout\ = (!\inst9|control|s0~q\ & (\inst9|control|freq_out[15]~10_combout\ & (\inst9|control|freq_out[6]~18_combout\ & \inst9|control|freq_out[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s0~q\,
	datab => \inst9|control|freq_out[15]~10_combout\,
	datac => \inst9|control|freq_out[6]~18_combout\,
	datad => \inst9|control|freq_out[1]~19_combout\,
	combout => \inst9|control|freq_out[13]~20_combout\);

-- Location: LCCOMB_X6_Y10_N22
\inst9|control|freq_out[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[13]~22_combout\ = ((\inst9|control|s79~q\) # ((!\inst9|control|freq_out[13]~20_combout\) # (!\inst9|control|freq_out[8]~21_combout\))) # (!\inst9|control|freq_out[15]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[15]~12_combout\,
	datab => \inst9|control|s79~q\,
	datac => \inst9|control|freq_out[8]~21_combout\,
	datad => \inst9|control|freq_out[13]~20_combout\,
	combout => \inst9|control|freq_out[13]~22_combout\);

-- Location: LCCOMB_X6_Y10_N24
\inst9|control|freq_out[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[9]~25_combout\ = (\inst9|control|freq_out[9]~23_combout\ & (\inst9|temp|_~7_combout\ & \inst9|control|freq_out[9]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[9]~23_combout\,
	datac => \inst9|temp|_~7_combout\,
	datad => \inst9|control|freq_out[9]~24_combout\,
	combout => \inst9|control|freq_out[9]~25_combout\);

-- Location: LCCOMB_X6_Y9_N8
\inst9|control|freq_out[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[9]~26_combout\ = (!\inst9|control|s79~q\ & (\inst9|control|freq_out[15]~11_combout\ & \inst9|control|clk_out~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|s79~q\,
	datac => \inst9|control|freq_out[15]~11_combout\,
	datad => \inst9|control|clk_out~95_combout\,
	combout => \inst9|control|freq_out[9]~26_combout\);

-- Location: LCCOMB_X6_Y8_N0
\inst9|temp|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|temp|_~8_combout\ = (!\inst9|control|s38~q\ & !\inst9|control|s18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|control|s38~q\,
	datad => \inst9|control|s18~q\,
	combout => \inst9|temp|_~8_combout\);

-- Location: LCCOMB_X6_Y9_N6
\inst9|control|freq_out[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[8]~27_combout\ = (\inst9|temp|_~8_combout\ & (\inst9|control|clk_out~97_combout\ & (\inst9|control|clk_out~96_combout\ & \inst9|temp|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|_~8_combout\,
	datab => \inst9|control|clk_out~97_combout\,
	datac => \inst9|control|clk_out~96_combout\,
	datad => \inst9|temp|_~9_combout\,
	combout => \inst9|control|freq_out[8]~27_combout\);

-- Location: LCCOMB_X6_Y9_N0
\inst9|control|freq_out[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[12]~28_combout\ = (!\inst9|control|s0~q\ & (\inst9|control|freq_out[8]~21_combout\ & (\inst9|control|freq_out[9]~26_combout\ & \inst9|control|freq_out[8]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s0~q\,
	datab => \inst9|control|freq_out[8]~21_combout\,
	datac => \inst9|control|freq_out[9]~26_combout\,
	datad => \inst9|control|freq_out[8]~27_combout\,
	combout => \inst9|control|freq_out[12]~28_combout\);

-- Location: LCCOMB_X6_Y10_N10
\inst9|control|freq_out[12]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[12]~29_combout\ = ((!\inst9|control|freq_out[12]~28_combout\) # (!\inst9|control|freq_out[7]~8_combout\)) # (!\inst9|control|freq_out[9]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|freq_out[9]~25_combout\,
	datac => \inst9|control|freq_out[7]~8_combout\,
	datad => \inst9|control|freq_out[12]~28_combout\,
	combout => \inst9|control|freq_out[12]~29_combout\);

-- Location: LCCOMB_X7_Y8_N20
\inst9|control|freq_out[11]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[11]~30_combout\ = (\inst9|control|s85~q\) # (((!\inst9|control|freq_out[15]~10_combout\) # (!\inst9|temp|_~10_combout\)) # (!\inst9|temp|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s85~q\,
	datab => \inst9|temp|_~4_combout\,
	datac => \inst9|temp|_~10_combout\,
	datad => \inst9|control|freq_out[15]~10_combout\,
	combout => \inst9|control|freq_out[11]~30_combout\);

-- Location: LCCOMB_X7_Y8_N8
\inst9|control|freq_out[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[11]~31_combout\ = (\inst9|control|s0~q\) # ((\inst9|control|freq_out[11]~30_combout\) # ((!\inst9|control|freq_out[8]~27_combout\) # (!\inst9|control|freq_out[8]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s0~q\,
	datab => \inst9|control|freq_out[11]~30_combout\,
	datac => \inst9|control|freq_out[8]~21_combout\,
	datad => \inst9|control|freq_out[8]~27_combout\,
	combout => \inst9|control|freq_out[11]~31_combout\);

-- Location: LCCOMB_X6_Y10_N14
\inst9|control|freq_out[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[10]~32_combout\ = (((\inst9|control|s0~q\) # (!\inst9|control|freq_out[15]~12_combout\)) # (!\inst9|control|freq_out[1]~19_combout\)) # (!\inst9|control|freq_out[15]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[15]~9_combout\,
	datab => \inst9|control|freq_out[1]~19_combout\,
	datac => \inst9|control|s0~q\,
	datad => \inst9|control|freq_out[15]~12_combout\,
	combout => \inst9|control|freq_out[10]~32_combout\);

-- Location: LCCOMB_X6_Y10_N26
\inst9|control|freq_out[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out\(9) = (((!\inst9|control|freq_out[9]~26_combout\) # (!\inst9|control|freq_out[7]~8_combout\)) # (!\inst9|control|freq_out[9]~25_combout\)) # (!\inst9|control|freq_out[15]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[15]~9_combout\,
	datab => \inst9|control|freq_out[9]~25_combout\,
	datac => \inst9|control|freq_out[7]~8_combout\,
	datad => \inst9|control|freq_out[9]~26_combout\,
	combout => \inst9|control|freq_out\(9));

-- Location: LCCOMB_X6_Y9_N28
\inst9|control|freq_out[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[8]~33_combout\ = (\inst9|control|freq_out[6]~18_combout\ & (!\inst9|control|s85~q\ & (\inst9|control|freq_out[15]~12_combout\ & \inst9|control|freq_out[8]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[6]~18_combout\,
	datab => \inst9|control|s85~q\,
	datac => \inst9|control|freq_out[15]~12_combout\,
	datad => \inst9|control|freq_out[8]~27_combout\,
	combout => \inst9|control|freq_out[8]~33_combout\);

-- Location: LCCOMB_X6_Y9_N22
\inst9|control|freq_out[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out\(8) = (\inst9|control|s77~q\) # (((\inst9|control|s78~q\) # (!\inst9|control|freq_out[8]~33_combout\)) # (!\inst9|temp|_~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s77~q\,
	datab => \inst9|temp|_~6_combout\,
	datac => \inst9|control|s78~q\,
	datad => \inst9|control|freq_out[8]~33_combout\,
	combout => \inst9|control|freq_out\(8));

-- Location: LCCOMB_X6_Y10_N6
\inst9|control|freq_out[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[7]~34_combout\ = (!\inst9|control|freq_out[13]~20_combout\) # (!\inst9|control|freq_out[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|control|freq_out[7]~8_combout\,
	datad => \inst9|control|freq_out[13]~20_combout\,
	combout => \inst9|control|freq_out[7]~34_combout\);

-- Location: LCCOMB_X6_Y10_N2
\inst9|control|freq_out[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[6]~35_combout\ = (((!\inst9|control|freq_out[15]~12_combout\) # (!\inst9|control|freq_out[6]~18_combout\)) # (!\inst9|control|freq_out[9]~25_combout\)) # (!\inst9|control|freq_out[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[7]~8_combout\,
	datab => \inst9|control|freq_out[9]~25_combout\,
	datac => \inst9|control|freq_out[6]~18_combout\,
	datad => \inst9|control|freq_out[15]~12_combout\,
	combout => \inst9|control|freq_out[6]~35_combout\);

-- Location: LCCOMB_X6_Y10_N12
\inst9|control|freq_out[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out\(6) = (\inst9|control|s78~q\) # (((\inst9|control|s77~q\) # (\inst9|control|freq_out[6]~35_combout\)) # (!\inst9|temp|_~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s78~q\,
	datab => \inst9|temp|_~6_combout\,
	datac => \inst9|control|s77~q\,
	datad => \inst9|control|freq_out[6]~35_combout\,
	combout => \inst9|control|freq_out\(6));

-- Location: LCCOMB_X6_Y11_N26
\inst9|control|freq_out[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[5]~36_combout\ = (!\inst9|control|s39~q\ & (!\inst9|control|s63~q\ & (\inst9|temp|_~12_combout\ & !\inst9|control|s19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s39~q\,
	datab => \inst9|control|s63~q\,
	datac => \inst9|temp|_~12_combout\,
	datad => \inst9|control|s19~q\,
	combout => \inst9|control|freq_out[5]~36_combout\);

-- Location: LCCOMB_X6_Y11_N20
\inst9|control|freq_out[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[5]~37_combout\ = (\inst9|temp|_~11_combout\ & (!\inst9|control|s0~q\ & (\inst9|control|freq_out[5]~36_combout\ & \inst9|control|clk_out~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|temp|_~11_combout\,
	datab => \inst9|control|s0~q\,
	datac => \inst9|control|freq_out[5]~36_combout\,
	datad => \inst9|control|clk_out~101_combout\,
	combout => \inst9|control|freq_out[5]~37_combout\);

-- Location: LCCOMB_X6_Y11_N28
\inst9|control|freq_out[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[2]~38_combout\ = (\inst9|control|freq_out[1]~19_combout\ & (!\inst9|control|s85~q\ & (\inst9|control|freq_out[7]~8_combout\ & \inst9|control|freq_out[6]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[1]~19_combout\,
	datab => \inst9|control|s85~q\,
	datac => \inst9|control|freq_out[7]~8_combout\,
	datad => \inst9|control|freq_out[6]~18_combout\,
	combout => \inst9|control|freq_out[2]~38_combout\);

-- Location: LCCOMB_X6_Y11_N30
\inst9|control|freq_out[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[5]~39_combout\ = (!\inst9|control|freq_out[2]~38_combout\) # (!\inst9|control|freq_out[5]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|freq_out[5]~37_combout\,
	datad => \inst9|control|freq_out[2]~38_combout\,
	combout => \inst9|control|freq_out[5]~39_combout\);

-- Location: LCCOMB_X6_Y9_N2
\inst9|control|freq_out[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[4]~40_combout\ = (\inst9|control|s81~q\) # ((\inst9|control|s80~q\) # ((\inst9|control|s85~q\) # (!\inst9|control|freq_out[12]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s81~q\,
	datab => \inst9|control|s80~q\,
	datac => \inst9|control|s85~q\,
	datad => \inst9|control|freq_out[12]~28_combout\,
	combout => \inst9|control|freq_out[4]~40_combout\);

-- Location: LCCOMB_X6_Y11_N24
\inst9|control|freq_out[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out[3]~41_combout\ = (\inst9|control|s75~q\) # ((\inst9|control|s85~q\) # ((\inst9|control|s55~q\) # (!\inst9|control|freq_out[5]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|s75~q\,
	datab => \inst9|control|s85~q\,
	datac => \inst9|control|s55~q\,
	datad => \inst9|control|freq_out[5]~37_combout\,
	combout => \inst9|control|freq_out[3]~41_combout\);

-- Location: LCCOMB_X6_Y10_N0
\inst9|control|freq_out[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out\(1) = (((!\inst9|control|freq_out[9]~25_combout\) # (!\inst9|control|freq_out[7]~8_combout\)) # (!\inst9|control|freq_out[1]~19_combout\)) # (!\inst9|control|freq_out[15]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[15]~9_combout\,
	datab => \inst9|control|freq_out[1]~19_combout\,
	datac => \inst9|control|freq_out[7]~8_combout\,
	datad => \inst9|control|freq_out[9]~25_combout\,
	combout => \inst9|control|freq_out\(1));

-- Location: LCCOMB_X8_Y10_N14
\inst9|div_clock|cnt[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[1]~18_combout\ = (\inst9|div_clock|cnt\(0) & (\inst9|div_clock|cnt\(1) $ (VCC))) # (!\inst9|div_clock|cnt\(0) & (\inst9|div_clock|cnt\(1) & VCC))
-- \inst9|div_clock|cnt[1]~19\ = CARRY((\inst9|div_clock|cnt\(0) & \inst9|div_clock|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(0),
	datab => \inst9|div_clock|cnt\(1),
	datad => VCC,
	combout => \inst9|div_clock|cnt[1]~18_combout\,
	cout => \inst9|div_clock|cnt[1]~19\);

-- Location: LCCOMB_X8_Y9_N12
\inst9|div_clock|cnt[16]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[16]~48_combout\ = (\inst9|div_clock|cnt\(16) & (!\inst9|div_clock|cnt[15]~47\)) # (!\inst9|div_clock|cnt\(16) & ((\inst9|div_clock|cnt[15]~47\) # (GND)))
-- \inst9|div_clock|cnt[16]~49\ = CARRY((!\inst9|div_clock|cnt[15]~47\) # (!\inst9|div_clock|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(16),
	datad => VCC,
	cin => \inst9|div_clock|cnt[15]~47\,
	combout => \inst9|div_clock|cnt[16]~48_combout\,
	cout => \inst9|div_clock|cnt[16]~49\);

-- Location: LCCOMB_X8_Y9_N14
\inst9|div_clock|cnt[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[17]~51_combout\ = (\inst9|div_clock|cnt\(17) & (\inst9|div_clock|cnt[16]~49\ $ (GND))) # (!\inst9|div_clock|cnt\(17) & (!\inst9|div_clock|cnt[16]~49\ & VCC))
-- \inst9|div_clock|cnt[17]~52\ = CARRY((\inst9|div_clock|cnt\(17) & !\inst9|div_clock|cnt[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(17),
	datad => VCC,
	cin => \inst9|div_clock|cnt[16]~49\,
	combout => \inst9|div_clock|cnt[17]~51_combout\,
	cout => \inst9|div_clock|cnt[17]~52\);

-- Location: FF_X8_Y9_N15
\inst9|div_clock|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[17]~51_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(17));

-- Location: LCCOMB_X8_Y9_N16
\inst9|div_clock|cnt[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[18]~53_combout\ = \inst9|div_clock|cnt\(18) $ (\inst9|div_clock|cnt[17]~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(18),
	cin => \inst9|div_clock|cnt[17]~52\,
	combout => \inst9|div_clock|cnt[18]~53_combout\);

-- Location: FF_X8_Y9_N17
\inst9|div_clock|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[18]~53_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(18));

-- Location: LCCOMB_X8_Y10_N10
\inst9|div_clock|op_1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~35_combout\ = (\inst9|div_clock|cnt\(17)) # ((\inst9|div_clock|cnt\(18)) # ((\inst9|div_clock|cnt\(16)) # (!\inst9|div_clock|op_1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(17),
	datab => \inst9|div_clock|cnt\(18),
	datac => \inst9|div_clock|cnt\(16),
	datad => \inst9|div_clock|op_1~32_combout\,
	combout => \inst9|div_clock|op_1~35_combout\);

-- Location: FF_X8_Y10_N15
\inst9|div_clock|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[1]~18_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(1));

-- Location: LCCOMB_X6_Y9_N4
\inst9|control|freq_out[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|control|freq_out\(0) = ((\inst9|control|s79~q\) # ((!\inst9|control|freq_out[8]~33_combout\) # (!\inst9|control|freq_out[15]~10_combout\))) # (!\inst9|control|freq_out[1]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[1]~19_combout\,
	datab => \inst9|control|s79~q\,
	datac => \inst9|control|freq_out[15]~10_combout\,
	datad => \inst9|control|freq_out[8]~33_combout\,
	combout => \inst9|control|freq_out\(0));

-- Location: LCCOMB_X7_Y10_N0
\inst9|div_clock|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~3_cout\ = CARRY((\inst9|control|freq_out\(0) & !\inst9|div_clock|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out\(0),
	datab => \inst9|div_clock|cnt\(0),
	datad => VCC,
	cout => \inst9|div_clock|op_1~3_cout\);

-- Location: LCCOMB_X7_Y10_N2
\inst9|div_clock|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~5_cout\ = CARRY((\inst9|control|freq_out\(1) & (\inst9|div_clock|cnt\(1) & !\inst9|div_clock|op_1~3_cout\)) # (!\inst9|control|freq_out\(1) & ((\inst9|div_clock|cnt\(1)) # (!\inst9|div_clock|op_1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out\(1),
	datab => \inst9|div_clock|cnt\(1),
	datad => VCC,
	cin => \inst9|div_clock|op_1~3_cout\,
	cout => \inst9|div_clock|op_1~5_cout\);

-- Location: LCCOMB_X7_Y10_N4
\inst9|div_clock|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~7_cout\ = CARRY((\inst9|div_clock|cnt\(2) & (!\inst9|control|freq_out[2]~38_combout\ & !\inst9|div_clock|op_1~5_cout\)) # (!\inst9|div_clock|cnt\(2) & ((!\inst9|div_clock|op_1~5_cout\) # (!\inst9|control|freq_out[2]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(2),
	datab => \inst9|control|freq_out[2]~38_combout\,
	datad => VCC,
	cin => \inst9|div_clock|op_1~5_cout\,
	cout => \inst9|div_clock|op_1~7_cout\);

-- Location: LCCOMB_X7_Y10_N6
\inst9|div_clock|op_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~9_cout\ = CARRY((\inst9|control|freq_out[3]~41_combout\ & ((\inst9|div_clock|cnt\(3)) # (!\inst9|div_clock|op_1~7_cout\))) # (!\inst9|control|freq_out[3]~41_combout\ & (\inst9|div_clock|cnt\(3) & !\inst9|div_clock|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[3]~41_combout\,
	datab => \inst9|div_clock|cnt\(3),
	datad => VCC,
	cin => \inst9|div_clock|op_1~7_cout\,
	cout => \inst9|div_clock|op_1~9_cout\);

-- Location: LCCOMB_X7_Y10_N8
\inst9|div_clock|op_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~11_cout\ = CARRY((\inst9|control|freq_out[4]~40_combout\ & (!\inst9|div_clock|cnt\(4) & !\inst9|div_clock|op_1~9_cout\)) # (!\inst9|control|freq_out[4]~40_combout\ & ((!\inst9|div_clock|op_1~9_cout\) # (!\inst9|div_clock|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[4]~40_combout\,
	datab => \inst9|div_clock|cnt\(4),
	datad => VCC,
	cin => \inst9|div_clock|op_1~9_cout\,
	cout => \inst9|div_clock|op_1~11_cout\);

-- Location: LCCOMB_X7_Y10_N10
\inst9|div_clock|op_1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~13_cout\ = CARRY((\inst9|control|freq_out[5]~39_combout\ & ((\inst9|div_clock|cnt\(5)) # (!\inst9|div_clock|op_1~11_cout\))) # (!\inst9|control|freq_out[5]~39_combout\ & (\inst9|div_clock|cnt\(5) & !\inst9|div_clock|op_1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[5]~39_combout\,
	datab => \inst9|div_clock|cnt\(5),
	datad => VCC,
	cin => \inst9|div_clock|op_1~11_cout\,
	cout => \inst9|div_clock|op_1~13_cout\);

-- Location: LCCOMB_X7_Y10_N12
\inst9|div_clock|op_1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~15_cout\ = CARRY((\inst9|control|freq_out\(6) & ((!\inst9|div_clock|op_1~13_cout\) # (!\inst9|div_clock|cnt\(6)))) # (!\inst9|control|freq_out\(6) & (!\inst9|div_clock|cnt\(6) & !\inst9|div_clock|op_1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out\(6),
	datab => \inst9|div_clock|cnt\(6),
	datad => VCC,
	cin => \inst9|div_clock|op_1~13_cout\,
	cout => \inst9|div_clock|op_1~15_cout\);

-- Location: LCCOMB_X7_Y10_N14
\inst9|div_clock|op_1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~17_cout\ = CARRY((\inst9|div_clock|cnt\(7) & ((\inst9|control|freq_out[7]~34_combout\) # (!\inst9|div_clock|op_1~15_cout\))) # (!\inst9|div_clock|cnt\(7) & (\inst9|control|freq_out[7]~34_combout\ & !\inst9|div_clock|op_1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(7),
	datab => \inst9|control|freq_out[7]~34_combout\,
	datad => VCC,
	cin => \inst9|div_clock|op_1~15_cout\,
	cout => \inst9|div_clock|op_1~17_cout\);

-- Location: LCCOMB_X7_Y10_N16
\inst9|div_clock|op_1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~19_cout\ = CARRY((\inst9|div_clock|cnt\(8) & (\inst9|control|freq_out\(8) & !\inst9|div_clock|op_1~17_cout\)) # (!\inst9|div_clock|cnt\(8) & ((\inst9|control|freq_out\(8)) # (!\inst9|div_clock|op_1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(8),
	datab => \inst9|control|freq_out\(8),
	datad => VCC,
	cin => \inst9|div_clock|op_1~17_cout\,
	cout => \inst9|div_clock|op_1~19_cout\);

-- Location: LCCOMB_X7_Y10_N18
\inst9|div_clock|op_1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~21_cout\ = CARRY((\inst9|control|freq_out\(9) & (\inst9|div_clock|cnt\(9) & !\inst9|div_clock|op_1~19_cout\)) # (!\inst9|control|freq_out\(9) & ((\inst9|div_clock|cnt\(9)) # (!\inst9|div_clock|op_1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out\(9),
	datab => \inst9|div_clock|cnt\(9),
	datad => VCC,
	cin => \inst9|div_clock|op_1~19_cout\,
	cout => \inst9|div_clock|op_1~21_cout\);

-- Location: LCCOMB_X7_Y10_N20
\inst9|div_clock|op_1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~23_cout\ = CARRY((\inst9|control|freq_out[10]~32_combout\ & (!\inst9|div_clock|cnt\(10) & !\inst9|div_clock|op_1~21_cout\)) # (!\inst9|control|freq_out[10]~32_combout\ & ((!\inst9|div_clock|op_1~21_cout\) # 
-- (!\inst9|div_clock|cnt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[10]~32_combout\,
	datab => \inst9|div_clock|cnt\(10),
	datad => VCC,
	cin => \inst9|div_clock|op_1~21_cout\,
	cout => \inst9|div_clock|op_1~23_cout\);

-- Location: LCCOMB_X7_Y10_N22
\inst9|div_clock|op_1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~25_cout\ = CARRY((\inst9|div_clock|cnt\(11) & ((\inst9|control|freq_out[11]~31_combout\) # (!\inst9|div_clock|op_1~23_cout\))) # (!\inst9|div_clock|cnt\(11) & (\inst9|control|freq_out[11]~31_combout\ & 
-- !\inst9|div_clock|op_1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(11),
	datab => \inst9|control|freq_out[11]~31_combout\,
	datad => VCC,
	cin => \inst9|div_clock|op_1~23_cout\,
	cout => \inst9|div_clock|op_1~25_cout\);

-- Location: LCCOMB_X7_Y10_N24
\inst9|div_clock|op_1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~27_cout\ = CARRY((\inst9|control|freq_out[12]~29_combout\ & (!\inst9|div_clock|cnt\(12) & !\inst9|div_clock|op_1~25_cout\)) # (!\inst9|control|freq_out[12]~29_combout\ & ((!\inst9|div_clock|op_1~25_cout\) # 
-- (!\inst9|div_clock|cnt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[12]~29_combout\,
	datab => \inst9|div_clock|cnt\(12),
	datad => VCC,
	cin => \inst9|div_clock|op_1~25_cout\,
	cout => \inst9|div_clock|op_1~27_cout\);

-- Location: LCCOMB_X7_Y10_N26
\inst9|div_clock|op_1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~29_cout\ = CARRY((\inst9|control|freq_out[13]~22_combout\ & ((\inst9|div_clock|cnt\(13)) # (!\inst9|div_clock|op_1~27_cout\))) # (!\inst9|control|freq_out[13]~22_combout\ & (\inst9|div_clock|cnt\(13) & 
-- !\inst9|div_clock|op_1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|control|freq_out[13]~22_combout\,
	datab => \inst9|div_clock|cnt\(13),
	datad => VCC,
	cin => \inst9|div_clock|op_1~27_cout\,
	cout => \inst9|div_clock|op_1~29_cout\);

-- Location: LCCOMB_X7_Y10_N28
\inst9|div_clock|op_1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~31_cout\ = CARRY((\inst9|div_clock|cnt\(14) & (!\inst9|control|freq_out[14]~14_combout\ & !\inst9|div_clock|op_1~29_cout\)) # (!\inst9|div_clock|cnt\(14) & ((!\inst9|div_clock|op_1~29_cout\) # 
-- (!\inst9|control|freq_out[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(14),
	datab => \inst9|control|freq_out[14]~14_combout\,
	datad => VCC,
	cin => \inst9|div_clock|op_1~29_cout\,
	cout => \inst9|div_clock|op_1~31_cout\);

-- Location: LCCOMB_X7_Y10_N30
\inst9|div_clock|op_1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~32_combout\ = (\inst9|control|freq_out[15]~13_combout\ & (\inst9|div_clock|op_1~31_cout\ & !\inst9|div_clock|cnt\(15))) # (!\inst9|control|freq_out[15]~13_combout\ & ((\inst9|div_clock|op_1~31_cout\) # (!\inst9|div_clock|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|control|freq_out[15]~13_combout\,
	datad => \inst9|div_clock|cnt\(15),
	cin => \inst9|div_clock|op_1~31_cout\,
	combout => \inst9|div_clock|op_1~32_combout\);

-- Location: LCCOMB_X8_Y10_N12
\inst9|div_clock|op_1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|op_1~34_combout\ = (!\inst9|div_clock|cnt\(18) & !\inst9|div_clock|cnt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(18),
	datad => \inst9|div_clock|cnt\(17),
	combout => \inst9|div_clock|op_1~34_combout\);

-- Location: LCCOMB_X8_Y10_N6
\inst9|div_clock|cnt[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[0]~50_combout\ = (!\inst9|div_clock|cnt\(16) & (\inst9|div_clock|op_1~32_combout\ & (!\inst9|div_clock|cnt\(0) & \inst9|div_clock|op_1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(16),
	datab => \inst9|div_clock|op_1~32_combout\,
	datac => \inst9|div_clock|cnt\(0),
	datad => \inst9|div_clock|op_1~34_combout\,
	combout => \inst9|div_clock|cnt[0]~50_combout\);

-- Location: FF_X8_Y10_N7
\inst9|div_clock|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(0));

-- Location: LCCOMB_X8_Y10_N16
\inst9|div_clock|cnt[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[2]~20_combout\ = (\inst9|div_clock|cnt\(2) & (!\inst9|div_clock|cnt[1]~19\)) # (!\inst9|div_clock|cnt\(2) & ((\inst9|div_clock|cnt[1]~19\) # (GND)))
-- \inst9|div_clock|cnt[2]~21\ = CARRY((!\inst9|div_clock|cnt[1]~19\) # (!\inst9|div_clock|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(2),
	datad => VCC,
	cin => \inst9|div_clock|cnt[1]~19\,
	combout => \inst9|div_clock|cnt[2]~20_combout\,
	cout => \inst9|div_clock|cnt[2]~21\);

-- Location: FF_X8_Y10_N17
\inst9|div_clock|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[2]~20_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(2));

-- Location: LCCOMB_X8_Y10_N18
\inst9|div_clock|cnt[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[3]~22_combout\ = (\inst9|div_clock|cnt\(3) & (\inst9|div_clock|cnt[2]~21\ $ (GND))) # (!\inst9|div_clock|cnt\(3) & (!\inst9|div_clock|cnt[2]~21\ & VCC))
-- \inst9|div_clock|cnt[3]~23\ = CARRY((\inst9|div_clock|cnt\(3) & !\inst9|div_clock|cnt[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(3),
	datad => VCC,
	cin => \inst9|div_clock|cnt[2]~21\,
	combout => \inst9|div_clock|cnt[3]~22_combout\,
	cout => \inst9|div_clock|cnt[3]~23\);

-- Location: FF_X8_Y10_N19
\inst9|div_clock|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[3]~22_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(3));

-- Location: LCCOMB_X8_Y10_N20
\inst9|div_clock|cnt[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[4]~24_combout\ = (\inst9|div_clock|cnt\(4) & (!\inst9|div_clock|cnt[3]~23\)) # (!\inst9|div_clock|cnt\(4) & ((\inst9|div_clock|cnt[3]~23\) # (GND)))
-- \inst9|div_clock|cnt[4]~25\ = CARRY((!\inst9|div_clock|cnt[3]~23\) # (!\inst9|div_clock|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(4),
	datad => VCC,
	cin => \inst9|div_clock|cnt[3]~23\,
	combout => \inst9|div_clock|cnt[4]~24_combout\,
	cout => \inst9|div_clock|cnt[4]~25\);

-- Location: FF_X8_Y10_N21
\inst9|div_clock|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[4]~24_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(4));

-- Location: LCCOMB_X8_Y10_N22
\inst9|div_clock|cnt[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[5]~26_combout\ = (\inst9|div_clock|cnt\(5) & (\inst9|div_clock|cnt[4]~25\ $ (GND))) # (!\inst9|div_clock|cnt\(5) & (!\inst9|div_clock|cnt[4]~25\ & VCC))
-- \inst9|div_clock|cnt[5]~27\ = CARRY((\inst9|div_clock|cnt\(5) & !\inst9|div_clock|cnt[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(5),
	datad => VCC,
	cin => \inst9|div_clock|cnt[4]~25\,
	combout => \inst9|div_clock|cnt[5]~26_combout\,
	cout => \inst9|div_clock|cnt[5]~27\);

-- Location: FF_X8_Y10_N23
\inst9|div_clock|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[5]~26_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(5));

-- Location: LCCOMB_X8_Y10_N24
\inst9|div_clock|cnt[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[6]~28_combout\ = (\inst9|div_clock|cnt\(6) & (!\inst9|div_clock|cnt[5]~27\)) # (!\inst9|div_clock|cnt\(6) & ((\inst9|div_clock|cnt[5]~27\) # (GND)))
-- \inst9|div_clock|cnt[6]~29\ = CARRY((!\inst9|div_clock|cnt[5]~27\) # (!\inst9|div_clock|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(6),
	datad => VCC,
	cin => \inst9|div_clock|cnt[5]~27\,
	combout => \inst9|div_clock|cnt[6]~28_combout\,
	cout => \inst9|div_clock|cnt[6]~29\);

-- Location: FF_X8_Y10_N25
\inst9|div_clock|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[6]~28_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(6));

-- Location: LCCOMB_X8_Y10_N26
\inst9|div_clock|cnt[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[7]~30_combout\ = (\inst9|div_clock|cnt\(7) & (\inst9|div_clock|cnt[6]~29\ $ (GND))) # (!\inst9|div_clock|cnt\(7) & (!\inst9|div_clock|cnt[6]~29\ & VCC))
-- \inst9|div_clock|cnt[7]~31\ = CARRY((\inst9|div_clock|cnt\(7) & !\inst9|div_clock|cnt[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(7),
	datad => VCC,
	cin => \inst9|div_clock|cnt[6]~29\,
	combout => \inst9|div_clock|cnt[7]~30_combout\,
	cout => \inst9|div_clock|cnt[7]~31\);

-- Location: FF_X8_Y10_N27
\inst9|div_clock|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[7]~30_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(7));

-- Location: LCCOMB_X8_Y10_N28
\inst9|div_clock|cnt[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[8]~32_combout\ = (\inst9|div_clock|cnt\(8) & (!\inst9|div_clock|cnt[7]~31\)) # (!\inst9|div_clock|cnt\(8) & ((\inst9|div_clock|cnt[7]~31\) # (GND)))
-- \inst9|div_clock|cnt[8]~33\ = CARRY((!\inst9|div_clock|cnt[7]~31\) # (!\inst9|div_clock|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(8),
	datad => VCC,
	cin => \inst9|div_clock|cnt[7]~31\,
	combout => \inst9|div_clock|cnt[8]~32_combout\,
	cout => \inst9|div_clock|cnt[8]~33\);

-- Location: FF_X8_Y10_N29
\inst9|div_clock|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[8]~32_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(8));

-- Location: LCCOMB_X8_Y10_N30
\inst9|div_clock|cnt[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[9]~34_combout\ = (\inst9|div_clock|cnt\(9) & (\inst9|div_clock|cnt[8]~33\ $ (GND))) # (!\inst9|div_clock|cnt\(9) & (!\inst9|div_clock|cnt[8]~33\ & VCC))
-- \inst9|div_clock|cnt[9]~35\ = CARRY((\inst9|div_clock|cnt\(9) & !\inst9|div_clock|cnt[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(9),
	datad => VCC,
	cin => \inst9|div_clock|cnt[8]~33\,
	combout => \inst9|div_clock|cnt[9]~34_combout\,
	cout => \inst9|div_clock|cnt[9]~35\);

-- Location: FF_X8_Y10_N31
\inst9|div_clock|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[9]~34_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(9));

-- Location: LCCOMB_X8_Y9_N0
\inst9|div_clock|cnt[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[10]~36_combout\ = (\inst9|div_clock|cnt\(10) & (!\inst9|div_clock|cnt[9]~35\)) # (!\inst9|div_clock|cnt\(10) & ((\inst9|div_clock|cnt[9]~35\) # (GND)))
-- \inst9|div_clock|cnt[10]~37\ = CARRY((!\inst9|div_clock|cnt[9]~35\) # (!\inst9|div_clock|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(10),
	datad => VCC,
	cin => \inst9|div_clock|cnt[9]~35\,
	combout => \inst9|div_clock|cnt[10]~36_combout\,
	cout => \inst9|div_clock|cnt[10]~37\);

-- Location: FF_X8_Y9_N1
\inst9|div_clock|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[10]~36_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(10));

-- Location: LCCOMB_X8_Y9_N2
\inst9|div_clock|cnt[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[11]~38_combout\ = (\inst9|div_clock|cnt\(11) & (\inst9|div_clock|cnt[10]~37\ $ (GND))) # (!\inst9|div_clock|cnt\(11) & (!\inst9|div_clock|cnt[10]~37\ & VCC))
-- \inst9|div_clock|cnt[11]~39\ = CARRY((\inst9|div_clock|cnt\(11) & !\inst9|div_clock|cnt[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(11),
	datad => VCC,
	cin => \inst9|div_clock|cnt[10]~37\,
	combout => \inst9|div_clock|cnt[11]~38_combout\,
	cout => \inst9|div_clock|cnt[11]~39\);

-- Location: FF_X8_Y9_N3
\inst9|div_clock|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[11]~38_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(11));

-- Location: LCCOMB_X8_Y9_N4
\inst9|div_clock|cnt[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[12]~40_combout\ = (\inst9|div_clock|cnt\(12) & (!\inst9|div_clock|cnt[11]~39\)) # (!\inst9|div_clock|cnt\(12) & ((\inst9|div_clock|cnt[11]~39\) # (GND)))
-- \inst9|div_clock|cnt[12]~41\ = CARRY((!\inst9|div_clock|cnt[11]~39\) # (!\inst9|div_clock|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(12),
	datad => VCC,
	cin => \inst9|div_clock|cnt[11]~39\,
	combout => \inst9|div_clock|cnt[12]~40_combout\,
	cout => \inst9|div_clock|cnt[12]~41\);

-- Location: FF_X8_Y9_N5
\inst9|div_clock|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[12]~40_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(12));

-- Location: LCCOMB_X8_Y9_N6
\inst9|div_clock|cnt[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[13]~42_combout\ = (\inst9|div_clock|cnt\(13) & (\inst9|div_clock|cnt[12]~41\ $ (GND))) # (!\inst9|div_clock|cnt\(13) & (!\inst9|div_clock|cnt[12]~41\ & VCC))
-- \inst9|div_clock|cnt[13]~43\ = CARRY((\inst9|div_clock|cnt\(13) & !\inst9|div_clock|cnt[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(13),
	datad => VCC,
	cin => \inst9|div_clock|cnt[12]~41\,
	combout => \inst9|div_clock|cnt[13]~42_combout\,
	cout => \inst9|div_clock|cnt[13]~43\);

-- Location: FF_X8_Y9_N7
\inst9|div_clock|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[13]~42_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(13));

-- Location: LCCOMB_X8_Y9_N8
\inst9|div_clock|cnt[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[14]~44_combout\ = (\inst9|div_clock|cnt\(14) & (!\inst9|div_clock|cnt[13]~43\)) # (!\inst9|div_clock|cnt\(14) & ((\inst9|div_clock|cnt[13]~43\) # (GND)))
-- \inst9|div_clock|cnt[14]~45\ = CARRY((!\inst9|div_clock|cnt[13]~43\) # (!\inst9|div_clock|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|div_clock|cnt\(14),
	datad => VCC,
	cin => \inst9|div_clock|cnt[13]~43\,
	combout => \inst9|div_clock|cnt[14]~44_combout\,
	cout => \inst9|div_clock|cnt[14]~45\);

-- Location: FF_X8_Y9_N9
\inst9|div_clock|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[14]~44_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(14));

-- Location: LCCOMB_X8_Y9_N10
\inst9|div_clock|cnt[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|cnt[15]~46_combout\ = (\inst9|div_clock|cnt\(15) & (\inst9|div_clock|cnt[14]~45\ $ (GND))) # (!\inst9|div_clock|cnt\(15) & (!\inst9|div_clock|cnt[14]~45\ & VCC))
-- \inst9|div_clock|cnt[15]~47\ = CARRY((\inst9|div_clock|cnt\(15) & !\inst9|div_clock|cnt[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(15),
	datad => VCC,
	cin => \inst9|div_clock|cnt[14]~45\,
	combout => \inst9|div_clock|cnt[15]~46_combout\,
	cout => \inst9|div_clock|cnt[15]~47\);

-- Location: FF_X8_Y9_N11
\inst9|div_clock|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[15]~46_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(15));

-- Location: FF_X8_Y9_N13
\inst9|div_clock|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|cnt[16]~48_combout\,
	sclr => \inst9|div_clock|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|cnt\(16));

-- Location: LCCOMB_X8_Y10_N4
\inst9|div_clock|alternador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|div_clock|alternador~1_combout\ = \inst9|div_clock|alternador~q\ $ (((\inst9|div_clock|cnt\(16)) # ((!\inst9|div_clock|op_1~34_combout\) # (!\inst9|div_clock|op_1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|div_clock|cnt\(16),
	datab => \inst9|div_clock|op_1~32_combout\,
	datac => \inst9|div_clock|alternador~q\,
	datad => \inst9|div_clock|op_1~34_combout\,
	combout => \inst9|div_clock|alternador~1_combout\);

-- Location: FF_X8_Y10_N5
\inst9|div_clock|alternador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|control|clk_out~clkctrl_outclk\,
	d => \inst9|div_clock|alternador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|div_clock|alternador~q\);

-- Location: LCCOMB_X1_Y18_N18
\inst|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alt~1_combout\ = !\inst|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alt~q\,
	combout => \inst|alt~1_combout\);

-- Location: LCCOMB_X1_Y18_N30
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

-- Location: FF_X1_Y18_N31
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

-- Location: LCCOMB_X17_Y15_N6
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

-- Location: FF_X17_Y15_N7
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

-- Location: LCCOMB_X17_Y15_N0
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

-- Location: FF_X17_Y15_N1
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

-- Location: LCCOMB_X17_Y15_N8
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

-- Location: LCCOMB_X17_Y15_N26
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

-- Location: LCCOMB_X16_Y14_N4
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

-- Location: LCCOMB_X17_Y15_N12
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

-- Location: LCCOMB_X10_Y17_N28
\inst14|lcd_bus[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[7]~22_combout\ = (!\inst14|lcd_enable~q\ & (!\inst15|busy~q\ & ((\inst14|char_17~q\) # (!\inst14|char_00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_00~q\,
	datab => \inst14|lcd_enable~q\,
	datac => \inst15|busy~q\,
	datad => \inst14|char_17~q\,
	combout => \inst14|lcd_bus[7]~22_combout\);

-- Location: FF_X10_Y17_N29
\inst14|lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(7));

-- Location: LCCOMB_X8_Y19_N30
\inst15|lcd_data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[7]~0_combout\ = (\inst15|_~14_combout\ & ((\inst14|lcd_bus\(7)) # ((\inst15|lcd_data\(7) & \inst15|ENVIAR~q\)))) # (!\inst15|_~14_combout\ & (((\inst15|lcd_data\(7) & \inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~14_combout\,
	datab => \inst14|lcd_bus\(7),
	datac => \inst15|lcd_data\(7),
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|lcd_data[7]~0_combout\);

-- Location: FF_X8_Y19_N31
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

-- Location: LCCOMB_X10_Y17_N6
\inst14|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~0_combout\ = (!\inst14|lcd_enable~q\ & (!\inst15|busy~q\ & \inst14|char_17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_enable~q\,
	datac => \inst15|busy~q\,
	datad => \inst14|char_17~q\,
	combout => \inst14|_~0_combout\);

-- Location: FF_X10_Y17_N7
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

-- Location: LCCOMB_X8_Y20_N10
\inst15|lcd_data[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[6]~1_combout\ = (\inst15|_~14_combout\ & ((\inst14|lcd_bus\(6)) # ((\inst15|lcd_data\(6) & \inst15|ENVIAR~q\)))) # (!\inst15|_~14_combout\ & (((\inst15|lcd_data\(6) & \inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~14_combout\,
	datab => \inst14|lcd_bus\(6),
	datac => \inst15|lcd_data\(6),
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|lcd_data[6]~1_combout\);

-- Location: FF_X8_Y20_N11
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

-- Location: LCCOMB_X10_Y15_N20
\inst14|lcd_bus[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~25_combout\ = (\inst14|char_09~q\ & (((!\inst4|u[2][3]~q\ & !\inst4|u[2][2]~q\)) # (!\inst4|u[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst14|char_09~q\,
	datac => \inst4|u[2][4]~q\,
	datad => \inst4|u[2][2]~q\,
	combout => \inst14|lcd_bus[4]~25_combout\);

-- Location: LCCOMB_X10_Y15_N14
\inst14|lcd_bus[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~26_combout\ = (!\inst14|lcd_bus[4]~25_combout\ & (((!\inst14|lcd_bus[5]~9_combout\ & \inst4|d[2][4]~q\)) # (!\inst14|char_08~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[5]~9_combout\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst14|char_08~q\,
	datad => \inst14|lcd_bus[4]~25_combout\,
	combout => \inst14|lcd_bus[4]~26_combout\);

-- Location: LCCOMB_X14_Y15_N26
\inst14|lcd_bus[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~29_combout\ = (\inst14|char_22~q\ & (((!\inst4|d[4][2]~q\ & !\inst4|d[4][3]~q\)) # (!\inst4|d[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_22~q\,
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|d[4][2]~q\,
	datad => \inst4|d[4][3]~q\,
	combout => \inst14|lcd_bus[4]~29_combout\);

-- Location: LCCOMB_X11_Y15_N4
\inst14|lcd_bus[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~27_combout\ = (\inst14|char_11~q\ & (((!\inst4|d[3][3]~q\ & !\inst4|d[3][2]~q\)) # (!\inst4|d[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][4]~q\,
	datac => \inst4|d[3][2]~q\,
	datad => \inst14|char_11~q\,
	combout => \inst14|lcd_bus[4]~27_combout\);

-- Location: LCCOMB_X13_Y15_N22
\inst14|lcd_bus[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~30_combout\ = (\inst14|char_23~q\ & (((!\inst4|u[4][3]~q\ & !\inst4|u[4][2]~q\)) # (!\inst4|u[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst14|char_23~q\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst14|lcd_bus[4]~30_combout\);

-- Location: LCCOMB_X11_Y15_N0
\inst14|lcd_bus[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~28_combout\ = (\inst14|char_12~q\ & (((!\inst4|u[3][2]~q\ & !\inst4|u[3][3]~q\)) # (!\inst4|u[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst14|char_12~q\,
	datad => \inst4|u[3][3]~q\,
	combout => \inst14|lcd_bus[4]~28_combout\);

-- Location: LCCOMB_X11_Y15_N16
\inst14|lcd_bus[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~31_combout\ = (!\inst14|lcd_bus[4]~29_combout\ & (!\inst14|lcd_bus[4]~27_combout\ & (!\inst14|lcd_bus[4]~30_combout\ & !\inst14|lcd_bus[4]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[4]~29_combout\,
	datab => \inst14|lcd_bus[4]~27_combout\,
	datac => \inst14|lcd_bus[4]~30_combout\,
	datad => \inst14|lcd_bus[4]~28_combout\,
	combout => \inst14|lcd_bus[4]~31_combout\);

-- Location: LCCOMB_X12_Y15_N16
\inst14|lcd_bus[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~35_combout\ = (\inst14|char_29~q\ & (((!\inst4|u[6][2]~q\ & !\inst4|u[6][3]~q\)) # (!\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~q\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst14|char_29~q\,
	datad => \inst4|u[6][3]~q\,
	combout => \inst14|lcd_bus[4]~35_combout\);

-- Location: LCCOMB_X14_Y12_N20
\inst14|lcd_bus[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~32_combout\ = (\inst14|char_25~q\ & (((!\inst4|d[5][2]~q\ & !\inst4|d[5][3]~q\)) # (!\inst4|d[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst14|char_25~q\,
	datad => \inst4|d[5][3]~q\,
	combout => \inst14|lcd_bus[4]~32_combout\);

-- Location: LCCOMB_X11_Y16_N26
\inst14|lcd_bus[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~34_combout\ = (\inst14|char_28~q\ & (((!\inst4|d[6][3]~q\ & !\inst4|d[6][2]~q\)) # (!\inst4|d[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst4|d[6][2]~q\,
	datac => \inst4|d[6][4]~q\,
	datad => \inst14|char_28~q\,
	combout => \inst14|lcd_bus[4]~34_combout\);

-- Location: LCCOMB_X14_Y12_N26
\inst14|lcd_bus[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~33_combout\ = (\inst14|char_26~q\ & (((!\inst4|u[5][3]~q\ & !\inst4|u[5][2]~q\)) # (!\inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|u[5][2]~q\,
	datad => \inst14|char_26~q\,
	combout => \inst14|lcd_bus[4]~33_combout\);

-- Location: LCCOMB_X11_Y16_N0
\inst14|lcd_bus[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~36_combout\ = (!\inst14|lcd_bus[4]~35_combout\ & (!\inst14|lcd_bus[4]~32_combout\ & (!\inst14|lcd_bus[4]~34_combout\ & !\inst14|lcd_bus[4]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[4]~35_combout\,
	datab => \inst14|lcd_bus[4]~32_combout\,
	datac => \inst14|lcd_bus[4]~34_combout\,
	datad => \inst14|lcd_bus[4]~33_combout\,
	combout => \inst14|lcd_bus[4]~36_combout\);

-- Location: LCCOMB_X12_Y17_N30
\inst14|lcd_bus[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~23_combout\ = (\inst14|char_05~q\ & (((!\inst4|d[1][3]~q\ & !\inst4|d[1][2]~q\)) # (!\inst4|d[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|d[1][4]~q\,
	datac => \inst14|char_05~q\,
	datad => \inst4|d[1][2]~q\,
	combout => \inst14|lcd_bus[4]~23_combout\);

-- Location: LCCOMB_X12_Y17_N16
\inst14|lcd_bus[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~24_combout\ = (!\inst14|lcd_bus[4]~23_combout\ & (((\inst4|u[1][4]~q\ & !\inst14|lcd_bus[5]~8_combout\)) # (!\inst14|char_06~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_06~q\,
	datab => \inst14|lcd_bus[4]~23_combout\,
	datac => \inst4|u[1][4]~q\,
	datad => \inst14|lcd_bus[5]~8_combout\,
	combout => \inst14|lcd_bus[4]~24_combout\);

-- Location: LCCOMB_X10_Y17_N22
\inst14|lcd_bus[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~37_combout\ = (\inst14|lcd_bus[4]~26_combout\ & (\inst14|lcd_bus[4]~31_combout\ & (\inst14|lcd_bus[4]~36_combout\ & \inst14|lcd_bus[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[4]~26_combout\,
	datab => \inst14|lcd_bus[4]~31_combout\,
	datac => \inst14|lcd_bus[4]~36_combout\,
	datad => \inst14|lcd_bus[4]~24_combout\,
	combout => \inst14|lcd_bus[4]~37_combout\);

-- Location: LCCOMB_X10_Y17_N20
\inst14|lcd_bus[5]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~94_combout\ = (!\inst15|busy~q\ & (!\inst14|lcd_enable~q\ & ((!\inst14|lcd_bus[4]~37_combout\) # (!\inst14|lcd_bus[9]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|busy~q\,
	datab => \inst14|lcd_bus[9]~20_combout\,
	datac => \inst14|lcd_bus[4]~37_combout\,
	datad => \inst14|lcd_enable~q\,
	combout => \inst14|lcd_bus[5]~94_combout\);

-- Location: FF_X10_Y17_N21
\inst14|lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[5]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(5));

-- Location: LCCOMB_X9_Y20_N28
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

-- Location: LCCOMB_X8_Y20_N24
\inst15|lcd_data[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[5]~2_combout\ = (\inst15|INICIALIZACAO~q\ & (!\inst15|op_4~3_combout\ & ((\inst15|ENERGIZACAO~q\) # (\inst15|op_1~7_combout\)))) # (!\inst15|INICIALIZACAO~q\ & ((\inst15|ENERGIZACAO~q\) # ((\inst15|op_1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|INICIALIZACAO~q\,
	datab => \inst15|ENERGIZACAO~q\,
	datac => \inst15|op_4~3_combout\,
	datad => \inst15|op_1~7_combout\,
	combout => \inst15|lcd_data[5]~2_combout\);

-- Location: LCCOMB_X8_Y20_N0
\inst15|lcd_data[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[5]~3_combout\ = (\inst15|_~15_combout\) # (((\inst15|ENVIAR~q\ & \inst15|lcd_data\(5))) # (!\inst15|lcd_data[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|_~15_combout\,
	datac => \inst15|lcd_data\(5),
	datad => \inst15|lcd_data[5]~2_combout\,
	combout => \inst15|lcd_data[5]~3_combout\);

-- Location: FF_X8_Y20_N1
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

-- Location: LCCOMB_X10_Y17_N2
\inst14|lcd_bus[4]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~95_combout\ = (!\inst15|busy~q\ & (!\inst14|lcd_enable~q\ & !\inst14|lcd_bus[4]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|busy~q\,
	datab => \inst14|lcd_enable~q\,
	datac => \inst14|lcd_bus[4]~37_combout\,
	combout => \inst14|lcd_bus[4]~95_combout\);

-- Location: FF_X10_Y17_N3
\inst14|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[4]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(4));

-- Location: LCCOMB_X9_Y20_N26
\inst15|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~17_combout\ = (\inst14|lcd_bus\(4) & (\inst15|PRONTO~q\ & \inst14|lcd_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(4),
	datac => \inst15|PRONTO~q\,
	datad => \inst14|lcd_enable~q\,
	combout => \inst15|_~17_combout\);

-- Location: LCCOMB_X8_Y20_N22
\inst15|lcd_data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[4]~4_combout\ = (\inst15|_~17_combout\) # (((\inst15|ENVIAR~q\ & \inst15|lcd_data\(4))) # (!\inst15|lcd_data[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|_~17_combout\,
	datac => \inst15|lcd_data\(4),
	datad => \inst15|lcd_data[5]~2_combout\,
	combout => \inst15|lcd_data[4]~4_combout\);

-- Location: FF_X8_Y20_N23
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

-- Location: LCCOMB_X14_Y15_N10
\inst14|lcd_bus[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~49_combout\ = (!\inst4|u[5][3]~q\ & (!\inst4|u[5][2]~q\ & (\inst4|u[5][4]~q\ & \inst14|char_26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|u[5][2]~q\,
	datac => \inst4|u[5][4]~q\,
	datad => \inst14|char_26~q\,
	combout => \inst14|lcd_bus[3]~49_combout\);

-- Location: LCCOMB_X12_Y15_N14
\inst14|lcd_bus[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~50_combout\ = (!\inst4|d[6][3]~q\ & (\inst4|d[6][4]~q\ & (\inst14|char_28~q\ & !\inst4|d[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst4|d[6][4]~q\,
	datac => \inst14|char_28~q\,
	datad => \inst4|d[6][2]~q\,
	combout => \inst14|lcd_bus[3]~50_combout\);

-- Location: LCCOMB_X14_Y11_N18
\inst14|lcd_bus[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~48_combout\ = (\inst4|d[5][4]~q\ & (\inst14|char_25~q\ & (!\inst4|d[5][2]~q\ & !\inst4|d[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst14|char_25~q\,
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|d[5][3]~q\,
	combout => \inst14|lcd_bus[3]~48_combout\);

-- Location: LCCOMB_X12_Y15_N20
\inst14|lcd_bus[3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~51_combout\ = (!\inst4|u[6][2]~q\ & (\inst14|char_29~q\ & (\inst4|u[6][4]~q\ & !\inst4|u[6][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~q\,
	datab => \inst14|char_29~q\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|u[6][3]~q\,
	combout => \inst14|lcd_bus[3]~51_combout\);

-- Location: LCCOMB_X14_Y15_N24
\inst14|lcd_bus[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~52_combout\ = (\inst14|lcd_bus[3]~49_combout\) # ((\inst14|lcd_bus[3]~50_combout\) # ((\inst14|lcd_bus[3]~48_combout\) # (\inst14|lcd_bus[3]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~49_combout\,
	datab => \inst14|lcd_bus[3]~50_combout\,
	datac => \inst14|lcd_bus[3]~48_combout\,
	datad => \inst14|lcd_bus[3]~51_combout\,
	combout => \inst14|lcd_bus[3]~52_combout\);

-- Location: LCCOMB_X10_Y15_N16
\inst14|lcd_bus[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~40_combout\ = (!\inst4|d[2][3]~q\ & (!\inst4|d[2][2]~q\ & (\inst14|char_08~q\ & \inst4|d[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|d[2][2]~q\,
	datac => \inst14|char_08~q\,
	datad => \inst4|d[2][4]~q\,
	combout => \inst14|lcd_bus[3]~40_combout\);

-- Location: LCCOMB_X11_Y16_N10
\inst14|lcd_bus[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~41_combout\ = (\inst4|u[2][4]~q\ & (!\inst4|u[2][3]~q\ & (!\inst4|u[2][2]~q\ & \inst14|char_09~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst4|u[2][2]~q\,
	datad => \inst14|char_09~q\,
	combout => \inst14|lcd_bus[3]~41_combout\);

-- Location: LCCOMB_X11_Y15_N8
\inst14|lcd_bus[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~42_combout\ = (!\inst4|d[3][3]~q\ & (\inst4|d[3][4]~q\ & (!\inst4|d[3][2]~q\ & \inst14|char_11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][4]~q\,
	datac => \inst4|d[3][2]~q\,
	datad => \inst14|char_11~q\,
	combout => \inst14|lcd_bus[3]~42_combout\);

-- Location: LCCOMB_X13_Y14_N22
\inst14|lcd_bus[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~45_combout\ = (!\inst4|u[4][2]~q\ & (\inst14|char_23~q\ & (!\inst4|u[4][3]~q\ & \inst4|u[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst14|char_23~q\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|u[4][4]~q\,
	combout => \inst14|lcd_bus[3]~45_combout\);

-- Location: LCCOMB_X11_Y15_N6
\inst14|lcd_bus[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~43_combout\ = (!\inst4|u[3][2]~q\ & (\inst4|u[3][4]~q\ & (\inst14|char_12~q\ & !\inst4|u[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~q\,
	datab => \inst4|u[3][4]~q\,
	datac => \inst14|char_12~q\,
	datad => \inst4|u[3][3]~q\,
	combout => \inst14|lcd_bus[3]~43_combout\);

-- Location: LCCOMB_X14_Y15_N20
\inst14|lcd_bus[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~44_combout\ = (\inst14|char_22~q\ & (\inst4|d[4][4]~q\ & (!\inst4|d[4][2]~q\ & !\inst4|d[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_22~q\,
	datab => \inst4|d[4][4]~q\,
	datac => \inst4|d[4][2]~q\,
	datad => \inst4|d[4][3]~q\,
	combout => \inst14|lcd_bus[3]~44_combout\);

-- Location: LCCOMB_X12_Y15_N8
\inst14|lcd_bus[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~46_combout\ = (\inst14|lcd_bus[3]~42_combout\) # ((\inst14|lcd_bus[3]~45_combout\) # ((\inst14|lcd_bus[3]~43_combout\) # (\inst14|lcd_bus[3]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~42_combout\,
	datab => \inst14|lcd_bus[3]~45_combout\,
	datac => \inst14|lcd_bus[3]~43_combout\,
	datad => \inst14|lcd_bus[3]~44_combout\,
	combout => \inst14|lcd_bus[3]~46_combout\);

-- Location: LCCOMB_X12_Y17_N12
\inst14|lcd_bus[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~38_combout\ = (!\inst4|d[1][2]~q\ & (!\inst4|d[1][3]~q\ & (\inst14|char_05~q\ & \inst4|d[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst14|char_05~q\,
	datad => \inst4|d[1][4]~q\,
	combout => \inst14|lcd_bus[3]~38_combout\);

-- Location: LCCOMB_X12_Y17_N10
\inst14|lcd_bus[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~39_combout\ = (\inst14|lcd_bus[3]~38_combout\) # ((\inst14|char_06~q\ & (\inst14|lcd_bus[5]~8_combout\ & \inst4|u[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_06~q\,
	datab => \inst14|lcd_bus[5]~8_combout\,
	datac => \inst4|u[1][4]~q\,
	datad => \inst14|lcd_bus[3]~38_combout\,
	combout => \inst14|lcd_bus[3]~39_combout\);

-- Location: LCCOMB_X11_Y15_N18
\inst14|lcd_bus[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~47_combout\ = (\inst14|lcd_bus[3]~40_combout\) # ((\inst14|lcd_bus[3]~41_combout\) # ((\inst14|lcd_bus[3]~46_combout\) # (\inst14|lcd_bus[3]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~40_combout\,
	datab => \inst14|lcd_bus[3]~41_combout\,
	datac => \inst14|lcd_bus[3]~46_combout\,
	datad => \inst14|lcd_bus[3]~39_combout\,
	combout => \inst14|lcd_bus[3]~47_combout\);

-- Location: LCCOMB_X11_Y15_N10
\inst14|lcd_bus[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~53_combout\ = (\inst14|lcd_bus[2]~10_combout\ & (((\inst14|lcd_bus[3]~52_combout\) # (\inst14|lcd_bus[3]~47_combout\)) # (!\inst14|lcd_bus[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~15_combout\,
	datab => \inst14|lcd_bus[2]~10_combout\,
	datac => \inst14|lcd_bus[3]~52_combout\,
	datad => \inst14|lcd_bus[3]~47_combout\,
	combout => \inst14|lcd_bus[3]~53_combout\);

-- Location: FF_X11_Y15_N11
\inst14|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[3]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(3));

-- Location: LCCOMB_X8_Y19_N4
\inst15|lcd_data[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[3]~5_combout\ = (\inst14|lcd_bus\(3) & ((\inst15|_~14_combout\) # ((\inst15|lcd_data\(3) & \inst15|ENVIAR~q\)))) # (!\inst14|lcd_bus\(3) & (\inst15|lcd_data\(3) & ((\inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(3),
	datab => \inst15|lcd_data\(3),
	datac => \inst15|_~14_combout\,
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|lcd_data[3]~5_combout\);

-- Location: LCCOMB_X8_Y19_N16
\inst15|lcd_data[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[3]~6_combout\ = (\inst15|lcd_data[3]~5_combout\) # ((\inst15|_~2_combout\) # ((\inst15|_~9_combout\ & \inst15|op_6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~9_combout\,
	datab => \inst15|lcd_data[3]~5_combout\,
	datac => \inst15|op_6~4_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst15|lcd_data[3]~6_combout\);

-- Location: FF_X8_Y19_N17
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

-- Location: LCCOMB_X12_Y15_N10
\inst14|lcd_bus[2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~62_combout\ = (\inst4|u[6][3]~q\ & (!\inst4|u[6][4]~q\ & \inst14|char_29~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst14|char_29~q\,
	combout => \inst14|lcd_bus[2]~62_combout\);

-- Location: LCCOMB_X11_Y16_N12
\inst14|lcd_bus[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~57_combout\ = (\inst14|char_09~q\ & (\inst4|u[2][3]~q\ & !\inst4|u[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_09~q\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst4|u[2][4]~q\,
	combout => \inst14|lcd_bus[2]~57_combout\);

-- Location: LCCOMB_X11_Y15_N14
\inst14|lcd_bus[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~58_combout\ = (\inst14|lcd_bus[2]~57_combout\) # ((\inst4|d[3][3]~q\ & (!\inst4|d[3][4]~q\ & \inst14|char_11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][4]~q\,
	datac => \inst14|char_11~q\,
	datad => \inst14|lcd_bus[2]~57_combout\,
	combout => \inst14|lcd_bus[2]~58_combout\);

-- Location: LCCOMB_X12_Y17_N0
\inst14|lcd_bus[2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~54_combout\ = ((\inst14|char_05~q\ & (\inst4|d[1][3]~q\ & !\inst4|d[1][4]~q\))) # (!\inst14|lcd_bus[3]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_05~q\,
	datab => \inst14|lcd_bus[3]~15_combout\,
	datac => \inst4|d[1][3]~q\,
	datad => \inst4|d[1][4]~q\,
	combout => \inst14|lcd_bus[2]~54_combout\);

-- Location: LCCOMB_X11_Y15_N24
\inst14|lcd_bus[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~59_combout\ = (\inst14|char_12~q\ & (!\inst4|u[3][4]~q\ & \inst4|u[3][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_12~q\,
	datac => \inst4|u[3][4]~q\,
	datad => \inst4|u[3][3]~q\,
	combout => \inst14|lcd_bus[2]~59_combout\);

-- Location: LCCOMB_X14_Y15_N22
\inst14|lcd_bus[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~60_combout\ = (\inst14|lcd_bus[2]~59_combout\) # ((!\inst4|d[4][4]~q\ & (\inst14|char_22~q\ & \inst4|d[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datab => \inst14|lcd_bus[2]~59_combout\,
	datac => \inst14|char_22~q\,
	datad => \inst4|d[4][3]~q\,
	combout => \inst14|lcd_bus[2]~60_combout\);

-- Location: LCCOMB_X12_Y17_N4
\inst14|lcd_bus[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~55_combout\ = (\inst4|u[1][3]~q\ & (!\inst4|u[1][4]~q\ & \inst14|char_06~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datac => \inst4|u[1][4]~q\,
	datad => \inst14|char_06~q\,
	combout => \inst14|lcd_bus[2]~55_combout\);

-- Location: LCCOMB_X12_Y15_N18
\inst14|lcd_bus[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~56_combout\ = (\inst14|lcd_bus[2]~55_combout\) # ((\inst4|d[2][3]~q\ & (\inst14|char_08~q\ & !\inst4|d[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst14|char_08~q\,
	datac => \inst4|d[2][4]~q\,
	datad => \inst14|lcd_bus[2]~55_combout\,
	combout => \inst14|lcd_bus[2]~56_combout\);

-- Location: LCCOMB_X12_Y15_N28
\inst14|lcd_bus[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~61_combout\ = (\inst14|lcd_bus[2]~58_combout\) # ((\inst14|lcd_bus[2]~54_combout\) # ((\inst14|lcd_bus[2]~60_combout\) # (\inst14|lcd_bus[2]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~58_combout\,
	datab => \inst14|lcd_bus[2]~54_combout\,
	datac => \inst14|lcd_bus[2]~60_combout\,
	datad => \inst14|lcd_bus[2]~56_combout\,
	combout => \inst14|lcd_bus[2]~61_combout\);

-- Location: LCCOMB_X14_Y12_N16
\inst14|lcd_bus[2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~65_combout\ = (!\inst4|u[5][4]~q\ & (\inst4|u[5][3]~q\ & \inst14|char_26~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst4|u[5][3]~q\,
	datad => \inst14|char_26~q\,
	combout => \inst14|lcd_bus[2]~65_combout\);

-- Location: LCCOMB_X14_Y12_N28
\inst14|lcd_bus[2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~63_combout\ = (\inst14|char_23~q\ & (!\inst4|u[4][4]~q\ & \inst4|u[4][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_23~q\,
	datac => \inst4|u[4][4]~q\,
	datad => \inst4|u[4][3]~q\,
	combout => \inst14|lcd_bus[2]~63_combout\);

-- Location: LCCOMB_X14_Y12_N14
\inst14|lcd_bus[2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~64_combout\ = (!\inst4|d[5][4]~q\ & (\inst4|d[5][3]~q\ & \inst14|char_25~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst14|char_25~q\,
	combout => \inst14|lcd_bus[2]~64_combout\);

-- Location: LCCOMB_X12_Y15_N30
\inst14|lcd_bus[2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~66_combout\ = (\inst4|d[6][3]~q\ & (\inst14|char_28~q\ & !\inst4|d[6][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst14|char_28~q\,
	datad => \inst4|d[6][4]~q\,
	combout => \inst14|lcd_bus[2]~66_combout\);

-- Location: LCCOMB_X14_Y12_N18
\inst14|lcd_bus[2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~67_combout\ = (\inst14|lcd_bus[2]~65_combout\) # ((\inst14|lcd_bus[2]~63_combout\) # ((\inst14|lcd_bus[2]~64_combout\) # (\inst14|lcd_bus[2]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~65_combout\,
	datab => \inst14|lcd_bus[2]~63_combout\,
	datac => \inst14|lcd_bus[2]~64_combout\,
	datad => \inst14|lcd_bus[2]~66_combout\,
	combout => \inst14|lcd_bus[2]~67_combout\);

-- Location: LCCOMB_X12_Y15_N0
\inst14|lcd_bus[2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~68_combout\ = (\inst14|lcd_bus[2]~10_combout\ & ((\inst14|lcd_bus[2]~62_combout\) # ((\inst14|lcd_bus[2]~61_combout\) # (\inst14|lcd_bus[2]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~62_combout\,
	datab => \inst14|lcd_bus[2]~61_combout\,
	datac => \inst14|lcd_bus[2]~10_combout\,
	datad => \inst14|lcd_bus[2]~67_combout\,
	combout => \inst14|lcd_bus[2]~68_combout\);

-- Location: FF_X12_Y15_N1
\inst14|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(2));

-- Location: LCCOMB_X8_Y19_N6
\inst15|lcd_data[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[2]~7_combout\ = (\inst14|lcd_bus\(2) & ((\inst15|_~14_combout\) # ((\inst15|lcd_data\(2) & \inst15|ENVIAR~q\)))) # (!\inst14|lcd_bus\(2) & (\inst15|lcd_data\(2) & ((\inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(2),
	datab => \inst15|lcd_data\(2),
	datac => \inst15|_~14_combout\,
	datad => \inst15|ENVIAR~q\,
	combout => \inst15|lcd_data[2]~7_combout\);

-- Location: LCCOMB_X8_Y19_N2
\inst15|lcd_data[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[2]~8_combout\ = (\inst15|_~13_combout\) # ((\inst15|lcd_data[2]~7_combout\) # ((\inst15|_~9_combout\ & \inst15|op_6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~9_combout\,
	datab => \inst15|op_6~4_combout\,
	datac => \inst15|_~13_combout\,
	datad => \inst15|lcd_data[2]~7_combout\,
	combout => \inst15|lcd_data[2]~8_combout\);

-- Location: FF_X8_Y19_N3
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

-- Location: LCCOMB_X10_Y15_N10
\inst14|lcd_bus[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~71_combout\ = (\inst4|d[2][2]~q\ & (\inst14|char_08~q\ & !\inst4|d[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst14|char_08~q\,
	datad => \inst4|d[2][4]~q\,
	combout => \inst14|lcd_bus[1]~71_combout\);

-- Location: LCCOMB_X10_Y15_N4
\inst14|lcd_bus[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~72_combout\ = (\inst14|lcd_bus[1]~71_combout\) # ((!\inst4|u[2][4]~q\ & (\inst4|u[2][2]~q\ & \inst14|char_09~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst14|char_09~q\,
	datad => \inst14|lcd_bus[1]~71_combout\,
	combout => \inst14|lcd_bus[1]~72_combout\);

-- Location: LCCOMB_X12_Y17_N26
\inst14|lcd_bus[1]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~69_combout\ = (!\inst4|d[1][4]~q\ & (\inst14|char_05~q\ & \inst4|d[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[1][4]~q\,
	datac => \inst14|char_05~q\,
	datad => \inst4|d[1][2]~q\,
	combout => \inst14|lcd_bus[1]~69_combout\);

-- Location: LCCOMB_X12_Y17_N6
\inst14|lcd_bus[1]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~70_combout\ = (\inst14|lcd_bus[1]~69_combout\) # ((\inst14|char_06~q\ & (!\inst4|u[1][4]~q\ & \inst4|u[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_06~q\,
	datab => \inst4|u[1][4]~q\,
	datac => \inst14|lcd_bus[1]~69_combout\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst14|lcd_bus[1]~70_combout\);

-- Location: LCCOMB_X14_Y12_N8
\inst14|lcd_bus[1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~75_combout\ = (!\inst4|d[4][4]~q\ & (\inst4|d[4][2]~q\ & \inst14|char_22~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][4]~q\,
	datac => \inst4|d[4][2]~q\,
	datad => \inst14|char_22~q\,
	combout => \inst14|lcd_bus[1]~75_combout\);

-- Location: LCCOMB_X14_Y12_N30
\inst14|lcd_bus[1]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~76_combout\ = (\inst14|lcd_bus[1]~75_combout\) # ((\inst14|char_23~q\ & (!\inst4|u[4][4]~q\ & \inst4|u[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_23~q\,
	datab => \inst14|lcd_bus[1]~75_combout\,
	datac => \inst4|u[4][4]~q\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst14|lcd_bus[1]~76_combout\);

-- Location: LCCOMB_X14_Y12_N12
\inst14|lcd_bus[1]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~77_combout\ = (!\inst4|d[5][4]~q\ & (\inst4|d[5][2]~q\ & \inst14|char_25~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst14|char_25~q\,
	combout => \inst14|lcd_bus[1]~77_combout\);

-- Location: LCCOMB_X14_Y12_N2
\inst14|lcd_bus[1]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~78_combout\ = (\inst14|lcd_bus[1]~77_combout\) # ((!\inst4|u[5][4]~q\ & (\inst4|u[5][2]~q\ & \inst14|char_26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst14|lcd_bus[1]~77_combout\,
	datac => \inst4|u[5][2]~q\,
	datad => \inst14|char_26~q\,
	combout => \inst14|lcd_bus[1]~78_combout\);

-- Location: LCCOMB_X12_Y15_N22
\inst14|lcd_bus[1]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~79_combout\ = (\inst4|d[6][2]~q\ & (\inst14|char_28~q\ & !\inst4|d[6][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|d[6][2]~q\,
	datac => \inst14|char_28~q\,
	datad => \inst4|d[6][4]~q\,
	combout => \inst14|lcd_bus[1]~79_combout\);

-- Location: LCCOMB_X12_Y15_N12
\inst14|lcd_bus[1]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~80_combout\ = (\inst14|lcd_bus[1]~79_combout\) # ((\inst4|u[6][2]~q\ & (!\inst4|u[6][4]~q\ & \inst14|char_29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~q\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst14|lcd_bus[1]~79_combout\,
	datad => \inst14|char_29~q\,
	combout => \inst14|lcd_bus[1]~80_combout\);

-- Location: LCCOMB_X11_Y12_N26
\inst14|lcd_bus[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~73_combout\ = (\inst14|char_11~q\ & (\inst4|d[3][2]~q\ & !\inst4|d[3][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_11~q\,
	datab => \inst4|d[3][2]~q\,
	datad => \inst4|d[3][4]~q\,
	combout => \inst14|lcd_bus[1]~73_combout\);

-- Location: LCCOMB_X10_Y12_N18
\inst14|lcd_bus[1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~74_combout\ = (\inst14|lcd_bus[1]~73_combout\) # ((!\inst4|u[3][4]~q\ & (\inst14|char_12~q\ & \inst4|u[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst14|char_12~q\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst14|lcd_bus[1]~73_combout\,
	combout => \inst14|lcd_bus[1]~74_combout\);

-- Location: LCCOMB_X14_Y12_N0
\inst14|lcd_bus[1]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~81_combout\ = (\inst14|lcd_bus[1]~76_combout\) # ((\inst14|lcd_bus[1]~78_combout\) # ((\inst14|lcd_bus[1]~80_combout\) # (\inst14|lcd_bus[1]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[1]~76_combout\,
	datab => \inst14|lcd_bus[1]~78_combout\,
	datac => \inst14|lcd_bus[1]~80_combout\,
	datad => \inst14|lcd_bus[1]~74_combout\,
	combout => \inst14|lcd_bus[1]~81_combout\);

-- Location: LCCOMB_X14_Y12_N24
\inst14|lcd_bus[1]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~82_combout\ = (\inst14|lcd_bus[2]~10_combout\ & ((\inst14|lcd_bus[1]~72_combout\) # ((\inst14|lcd_bus[1]~70_combout\) # (\inst14|lcd_bus[1]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[1]~72_combout\,
	datab => \inst14|lcd_bus[2]~10_combout\,
	datac => \inst14|lcd_bus[1]~70_combout\,
	datad => \inst14|lcd_bus[1]~81_combout\,
	combout => \inst14|lcd_bus[1]~82_combout\);

-- Location: FF_X14_Y12_N25
\inst14|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[1]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(1));

-- Location: LCCOMB_X9_Y20_N4
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

-- Location: LCCOMB_X8_Y20_N20
\inst15|lcd_data[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[1]~9_combout\ = (\inst15|_~13_combout\) # ((\inst15|_~18_combout\) # ((\inst15|ENVIAR~q\ & \inst15|lcd_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|_~13_combout\,
	datac => \inst15|lcd_data\(1),
	datad => \inst15|_~18_combout\,
	combout => \inst15|lcd_data[1]~9_combout\);

-- Location: FF_X8_Y20_N21
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

-- Location: LCCOMB_X14_Y11_N8
\inst14|conv_d[5]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[5]|binario8[0]~10_combout\ = (\inst4|d[5][1]~q\ & (((!\inst4|d[5][3]~q\ & !\inst4|d[5][2]~q\)) # (!\inst4|d[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][4]~q\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|d[5][1]~q\,
	combout => \inst14|conv_d[5]|binario8[0]~10_combout\);

-- Location: LCCOMB_X14_Y11_N28
\inst14|conv_u[5]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[5]|binario8[0]~10_combout\ = (\inst4|u[5][1]~q\ & (((!\inst4|u[5][2]~q\ & !\inst4|u[5][3]~q\)) # (!\inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|u[5][4]~q\,
	datad => \inst4|u[5][1]~q\,
	combout => \inst14|conv_u[5]|binario8[0]~10_combout\);

-- Location: LCCOMB_X14_Y11_N6
\inst14|lcd_bus[0]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~90_combout\ = (\inst14|char_26~q\ & ((\inst14|conv_u[5]|binario8[0]~10_combout\) # ((\inst14|char_25~q\ & \inst14|conv_d[5]|binario8[0]~10_combout\)))) # (!\inst14|char_26~q\ & (\inst14|char_25~q\ & 
-- (\inst14|conv_d[5]|binario8[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_26~q\,
	datab => \inst14|char_25~q\,
	datac => \inst14|conv_d[5]|binario8[0]~10_combout\,
	datad => \inst14|conv_u[5]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~90_combout\);

-- Location: LCCOMB_X12_Y12_N28
\inst14|conv_d[6]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[6]|binario8[0]~10_combout\ = (\inst4|d[6][1]~q\ & (((!\inst4|d[6][3]~q\ & !\inst4|d[6][2]~q\)) # (!\inst4|d[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst4|d[6][2]~q\,
	datac => \inst4|d[6][4]~q\,
	datad => \inst4|d[6][1]~q\,
	combout => \inst14|conv_d[6]|binario8[0]~10_combout\);

-- Location: LCCOMB_X12_Y15_N24
\inst14|conv_u[6]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[6]|binario8[0]~10_combout\ = (\inst4|u[6][1]~q\ & (((!\inst4|u[6][2]~q\ & !\inst4|u[6][3]~q\)) # (!\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~q\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|u[6][1]~q\,
	datad => \inst4|u[6][3]~q\,
	combout => \inst14|conv_u[6]|binario8[0]~10_combout\);

-- Location: LCCOMB_X12_Y15_N2
\inst14|lcd_bus[0]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~91_combout\ = (\inst14|conv_d[6]|binario8[0]~10_combout\ & ((\inst14|char_28~q\) # ((\inst14|char_29~q\ & \inst14|conv_u[6]|binario8[0]~10_combout\)))) # (!\inst14|conv_d[6]|binario8[0]~10_combout\ & (\inst14|char_29~q\ & 
-- ((\inst14|conv_u[6]|binario8[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|conv_d[6]|binario8[0]~10_combout\,
	datab => \inst14|char_29~q\,
	datac => \inst14|char_28~q\,
	datad => \inst14|conv_u[6]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~91_combout\);

-- Location: LCCOMB_X10_Y15_N0
\inst14|lcd_bus[0]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~92_combout\ = (\inst4|_~6_combout\ & (((\inst14|lcd_bus[0]~91_combout\ & !\inst4|_~12_combout\)))) # (!\inst4|_~6_combout\ & ((\inst14|lcd_bus[0]~90_combout\) # ((\inst14|lcd_bus[0]~91_combout\ & !\inst4|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~6_combout\,
	datab => \inst14|lcd_bus[0]~90_combout\,
	datac => \inst14|lcd_bus[0]~91_combout\,
	datad => \inst4|_~12_combout\,
	combout => \inst14|lcd_bus[0]~92_combout\);

-- Location: LCCOMB_X10_Y15_N6
\inst14|conv_u[2]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[2]|binario8[0]~10_combout\ = (\inst4|u[2][1]~q\ & (((!\inst4|u[2][3]~q\ & !\inst4|u[2][2]~q\)) # (!\inst4|u[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|u[2][3]~q\,
	datac => \inst4|u[2][4]~q\,
	datad => \inst4|u[2][2]~q\,
	combout => \inst14|conv_u[2]|binario8[0]~10_combout\);

-- Location: LCCOMB_X10_Y15_N18
\inst14|conv_d[2]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[2]|binario8[0]~10_combout\ = (\inst4|d[2][1]~q\ & (((!\inst4|d[2][2]~q\ & !\inst4|d[2][3]~q\)) # (!\inst4|d[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|d[2][4]~q\,
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|d[2][3]~q\,
	combout => \inst14|conv_d[2]|binario8[0]~10_combout\);

-- Location: LCCOMB_X10_Y15_N28
\inst14|lcd_bus[0]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~88_combout\ = (\inst14|conv_u[2]|binario8[0]~10_combout\ & ((\inst14|char_09~q\) # ((\inst14|char_08~q\ & \inst14|conv_d[2]|binario8[0]~10_combout\)))) # (!\inst14|conv_u[2]|binario8[0]~10_combout\ & (((\inst14|char_08~q\ & 
-- \inst14|conv_d[2]|binario8[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|conv_u[2]|binario8[0]~10_combout\,
	datab => \inst14|char_09~q\,
	datac => \inst14|char_08~q\,
	datad => \inst14|conv_d[2]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~88_combout\);

-- Location: LCCOMB_X12_Y17_N28
\inst14|conv_d[1]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[1]|binario8[0]~10_combout\ = (\inst4|d[1][1]~q\ & (((!\inst4|d[1][3]~q\ & !\inst4|d[1][2]~q\)) # (!\inst4|d[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|d[1][4]~q\,
	datac => \inst4|d[1][1]~q\,
	datad => \inst4|d[1][2]~q\,
	combout => \inst14|conv_d[1]|binario8[0]~10_combout\);

-- Location: LCCOMB_X12_Y17_N24
\inst14|conv_u[1]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[1]|binario8[0]~10_combout\ = (\inst4|u[1][1]~q\ & (((!\inst4|u[1][3]~q\ & !\inst4|u[1][2]~q\)) # (!\inst4|u[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|u[1][1]~q\,
	datac => \inst4|u[1][4]~q\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst14|conv_u[1]|binario8[0]~10_combout\);

-- Location: LCCOMB_X12_Y17_N14
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

-- Location: LCCOMB_X12_Y17_N8
\inst14|lcd_bus[0]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~84_combout\ = ((\inst14|lcd_bus[0]~83_combout\ & !\inst4|_~14_combout\)) # (!\inst14|lcd_bus[3]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_bus[3]~15_combout\,
	datac => \inst14|lcd_bus[0]~83_combout\,
	datad => \inst4|_~14_combout\,
	combout => \inst14|lcd_bus[0]~84_combout\);

-- Location: LCCOMB_X11_Y15_N22
\inst14|conv_d[3]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[3]|binario8[0]~10_combout\ = (\inst4|d[3][1]~q\ & (((!\inst4|d[3][3]~q\ & !\inst4|d[3][2]~q\)) # (!\inst4|d[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|d[3][4]~q\,
	datad => \inst4|d[3][1]~q\,
	combout => \inst14|conv_d[3]|binario8[0]~10_combout\);

-- Location: LCCOMB_X11_Y15_N20
\inst14|conv_u[3]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[3]|binario8[0]~10_combout\ = (\inst4|u[3][1]~q\ & (((!\inst4|u[3][2]~q\ & !\inst4|u[3][3]~q\)) # (!\inst4|u[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|u[3][1]~q\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst4|u[3][3]~q\,
	combout => \inst14|conv_u[3]|binario8[0]~10_combout\);

-- Location: LCCOMB_X11_Y15_N2
\inst14|lcd_bus[0]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~85_combout\ = (\inst14|conv_d[3]|binario8[0]~10_combout\ & ((\inst14|char_11~q\) # ((\inst14|char_12~q\ & \inst14|conv_u[3]|binario8[0]~10_combout\)))) # (!\inst14|conv_d[3]|binario8[0]~10_combout\ & (((\inst14|char_12~q\ & 
-- \inst14|conv_u[3]|binario8[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|conv_d[3]|binario8[0]~10_combout\,
	datab => \inst14|char_11~q\,
	datac => \inst14|char_12~q\,
	datad => \inst14|conv_u[3]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~85_combout\);

-- Location: LCCOMB_X14_Y12_N22
\inst14|conv_u[4]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[4]|binario8[0]~10_combout\ = (\inst4|u[4][1]~q\ & (((!\inst4|u[4][3]~q\ & !\inst4|u[4][2]~q\)) # (!\inst4|u[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|u[4][4]~q\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst14|conv_u[4]|binario8[0]~10_combout\);

-- Location: LCCOMB_X10_Y12_N28
\inst14|conv_d[4]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_d[4]|binario8[0]~10_combout\ = (\inst4|d[4][1]~q\ & (((!\inst4|d[4][3]~q\ & !\inst4|d[4][2]~q\)) # (!\inst4|d[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~q\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|d[4][4]~q\,
	datad => \inst4|d[4][1]~q\,
	combout => \inst14|conv_d[4]|binario8[0]~10_combout\);

-- Location: LCCOMB_X10_Y15_N8
\inst14|lcd_bus[0]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~86_combout\ = (\inst14|char_22~q\ & ((\inst14|conv_d[4]|binario8[0]~10_combout\) # ((\inst14|conv_u[4]|binario8[0]~10_combout\ & \inst14|char_23~q\)))) # (!\inst14|char_22~q\ & (\inst14|conv_u[4]|binario8[0]~10_combout\ & 
-- (\inst14|char_23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_22~q\,
	datab => \inst14|conv_u[4]|binario8[0]~10_combout\,
	datac => \inst14|char_23~q\,
	datad => \inst14|conv_d[4]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~86_combout\);

-- Location: LCCOMB_X10_Y15_N24
\inst14|lcd_bus[0]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~87_combout\ = (\inst14|lcd_bus[0]~85_combout\ & (((\inst14|lcd_bus[0]~86_combout\ & !\inst4|_~9_combout\)) # (!\inst4|_~19_combout\))) # (!\inst14|lcd_bus[0]~85_combout\ & (((\inst14|lcd_bus[0]~86_combout\ & !\inst4|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[0]~85_combout\,
	datab => \inst4|_~19_combout\,
	datac => \inst14|lcd_bus[0]~86_combout\,
	datad => \inst4|_~9_combout\,
	combout => \inst14|lcd_bus[0]~87_combout\);

-- Location: LCCOMB_X10_Y15_N12
\inst14|lcd_bus[0]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~89_combout\ = (\inst14|lcd_bus[0]~84_combout\) # ((\inst14|lcd_bus[0]~87_combout\) # ((!\inst4|_~16_combout\ & \inst14|lcd_bus[0]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~16_combout\,
	datab => \inst14|lcd_bus[0]~88_combout\,
	datac => \inst14|lcd_bus[0]~84_combout\,
	datad => \inst14|lcd_bus[0]~87_combout\,
	combout => \inst14|lcd_bus[0]~89_combout\);

-- Location: LCCOMB_X10_Y15_N2
\inst14|lcd_bus[0]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~96_combout\ = (!\inst15|busy~q\ & (!\inst14|lcd_enable~q\ & ((\inst14|lcd_bus[0]~92_combout\) # (\inst14|lcd_bus[0]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|busy~q\,
	datab => \inst14|lcd_bus[0]~92_combout\,
	datac => \inst14|lcd_enable~q\,
	datad => \inst14|lcd_bus[0]~89_combout\,
	combout => \inst14|lcd_bus[0]~96_combout\);

-- Location: FF_X10_Y15_N3
\inst14|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[0]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(0));

-- Location: LCCOMB_X9_Y20_N22
\inst15|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~19_combout\ = (\inst14|lcd_bus\(0) & (\inst15|PRONTO~q\ & \inst14|lcd_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_bus\(0),
	datac => \inst15|PRONTO~q\,
	datad => \inst14|lcd_enable~q\,
	combout => \inst15|_~19_combout\);

-- Location: LCCOMB_X8_Y20_N26
\inst15|lcd_data[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[0]~10_combout\ = (\inst15|_~19_combout\) # ((\inst15|_~10_combout\) # ((\inst15|ENVIAR~q\ & \inst15|lcd_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|_~19_combout\,
	datac => \inst15|lcd_data\(0),
	datad => \inst15|_~10_combout\,
	combout => \inst15|lcd_data[0]~10_combout\);

-- Location: FF_X8_Y20_N27
\inst15|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(0));

-- Location: LCCOMB_X16_Y15_N20
\inst4|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~20_combout\ = (\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & \inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~20_combout\);

-- Location: LCCOMB_X11_Y13_N12
\inst4|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~21_combout\ = (!\inst4|count|cnt\(2) & (\inst4|count|cnt\(1) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~21_combout\);

-- Location: LCCOMB_X12_Y15_N6
\inst4|u_atual[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[1]~28_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~20_combout\) # ((\inst4|_~21_combout\ & \inst4|u[2][1]~q\)))) # (!\inst4|u[6][1]~q\ & (((\inst4|_~21_combout\ & \inst4|u[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst4|_~20_combout\,
	datac => \inst4|_~21_combout\,
	datad => \inst4|u[2][1]~q\,
	combout => \inst4|u_atual[1]~28_combout\);

-- Location: LCCOMB_X13_Y14_N20
\inst4|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~22_combout\ = (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(1),
	combout => \inst4|_~22_combout\);

-- Location: LCCOMB_X14_Y15_N0
\inst4|u_atual[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[1]~29_combout\ = (\inst4|u[1][1]~q\ & ((\inst2|convd1|segmentos[6]~9_combout\) # ((\inst4|u[3][1]~q\ & \inst4|_~22_combout\)))) # (!\inst4|u[1][1]~q\ & (\inst4|u[3][1]~q\ & (\inst4|_~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~q\,
	datab => \inst4|u[3][1]~q\,
	datac => \inst4|_~22_combout\,
	datad => \inst2|convd1|segmentos[6]~9_combout\,
	combout => \inst4|u_atual[1]~29_combout\);

-- Location: LCCOMB_X21_Y9_N22
\inst7|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|_~1_combout\ = LCELL((\inst7|count|cnt\(1) & \clock~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|count|cnt\(1),
	datad => \clock~input_o\,
	combout => \inst7|_~1_combout\);

-- Location: CLKCTRL_G6
\inst7|_~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|_~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|_~1clkctrl_outclk\);

-- Location: LCCOMB_X21_Y9_N26
\inst7|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|_~0_combout\ = (!\inst7|divisor|count\(1) & !\inst7|divisor|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|divisor|count\(1),
	datad => \inst7|divisor|op_1~8_combout\,
	combout => \inst7|divisor|_~0_combout\);

-- Location: FF_X21_Y9_N27
\inst7|divisor|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(1));

-- Location: LCCOMB_X22_Y9_N6
\inst7|divisor|count[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[2]~26_combout\ = (\inst7|divisor|count\(2) & (\inst7|divisor|count\(1) $ (VCC))) # (!\inst7|divisor|count\(2) & (\inst7|divisor|count\(1) & VCC))
-- \inst7|divisor|count[2]~27\ = CARRY((\inst7|divisor|count\(2) & \inst7|divisor|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(2),
	datab => \inst7|divisor|count\(1),
	datad => VCC,
	combout => \inst7|divisor|count[2]~26_combout\,
	cout => \inst7|divisor|count[2]~27\);

-- Location: FF_X21_Y9_N9
\inst7|divisor|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	asdata => \inst7|divisor|count[2]~26_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(2));

-- Location: LCCOMB_X22_Y9_N8
\inst7|divisor|count[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[3]~28_combout\ = (\inst7|divisor|count\(3) & (!\inst7|divisor|count[2]~27\)) # (!\inst7|divisor|count\(3) & ((\inst7|divisor|count[2]~27\) # (GND)))
-- \inst7|divisor|count[3]~29\ = CARRY((!\inst7|divisor|count[2]~27\) # (!\inst7|divisor|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(3),
	datad => VCC,
	cin => \inst7|divisor|count[2]~27\,
	combout => \inst7|divisor|count[3]~28_combout\,
	cout => \inst7|divisor|count[3]~29\);

-- Location: FF_X21_Y9_N11
\inst7|divisor|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	asdata => \inst7|divisor|count[3]~28_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(3));

-- Location: LCCOMB_X22_Y9_N10
\inst7|divisor|count[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[4]~30_combout\ = (\inst7|divisor|count\(4) & (\inst7|divisor|count[3]~29\ $ (GND))) # (!\inst7|divisor|count\(4) & (!\inst7|divisor|count[3]~29\ & VCC))
-- \inst7|divisor|count[4]~31\ = CARRY((\inst7|divisor|count\(4) & !\inst7|divisor|count[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(4),
	datad => VCC,
	cin => \inst7|divisor|count[3]~29\,
	combout => \inst7|divisor|count[4]~30_combout\,
	cout => \inst7|divisor|count[4]~31\);

-- Location: FF_X21_Y9_N29
\inst7|divisor|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	asdata => \inst7|divisor|count[4]~30_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(4));

-- Location: LCCOMB_X22_Y9_N12
\inst7|divisor|count[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[5]~32_combout\ = (\inst7|divisor|count\(5) & (!\inst7|divisor|count[4]~31\)) # (!\inst7|divisor|count\(5) & ((\inst7|divisor|count[4]~31\) # (GND)))
-- \inst7|divisor|count[5]~33\ = CARRY((!\inst7|divisor|count[4]~31\) # (!\inst7|divisor|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(5),
	datad => VCC,
	cin => \inst7|divisor|count[4]~31\,
	combout => \inst7|divisor|count[5]~32_combout\,
	cout => \inst7|divisor|count[5]~33\);

-- Location: FF_X21_Y9_N15
\inst7|divisor|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	asdata => \inst7|divisor|count[5]~32_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(5));

-- Location: LCCOMB_X22_Y9_N14
\inst7|divisor|count[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[6]~34_combout\ = (\inst7|divisor|count\(6) & (\inst7|divisor|count[5]~33\ $ (GND))) # (!\inst7|divisor|count\(6) & (!\inst7|divisor|count[5]~33\ & VCC))
-- \inst7|divisor|count[6]~35\ = CARRY((\inst7|divisor|count\(6) & !\inst7|divisor|count[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(6),
	datad => VCC,
	cin => \inst7|divisor|count[5]~33\,
	combout => \inst7|divisor|count[6]~34_combout\,
	cout => \inst7|divisor|count[6]~35\);

-- Location: FF_X22_Y9_N15
\inst7|divisor|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[6]~34_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(6));

-- Location: LCCOMB_X22_Y9_N16
\inst7|divisor|count[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[7]~36_combout\ = (\inst7|divisor|count\(7) & (!\inst7|divisor|count[6]~35\)) # (!\inst7|divisor|count\(7) & ((\inst7|divisor|count[6]~35\) # (GND)))
-- \inst7|divisor|count[7]~37\ = CARRY((!\inst7|divisor|count[6]~35\) # (!\inst7|divisor|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(7),
	datad => VCC,
	cin => \inst7|divisor|count[6]~35\,
	combout => \inst7|divisor|count[7]~36_combout\,
	cout => \inst7|divisor|count[7]~37\);

-- Location: FF_X21_Y9_N31
\inst7|divisor|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	asdata => \inst7|divisor|count[7]~36_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(7));

-- Location: LCCOMB_X22_Y9_N18
\inst7|divisor|count[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[8]~38_combout\ = (\inst7|divisor|count\(8) & (\inst7|divisor|count[7]~37\ $ (GND))) # (!\inst7|divisor|count\(8) & (!\inst7|divisor|count[7]~37\ & VCC))
-- \inst7|divisor|count[8]~39\ = CARRY((\inst7|divisor|count\(8) & !\inst7|divisor|count[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(8),
	datad => VCC,
	cin => \inst7|divisor|count[7]~37\,
	combout => \inst7|divisor|count[8]~38_combout\,
	cout => \inst7|divisor|count[8]~39\);

-- Location: FF_X22_Y9_N19
\inst7|divisor|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[8]~38_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(8));

-- Location: LCCOMB_X22_Y9_N20
\inst7|divisor|count[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[9]~40_combout\ = (\inst7|divisor|count\(9) & (!\inst7|divisor|count[8]~39\)) # (!\inst7|divisor|count\(9) & ((\inst7|divisor|count[8]~39\) # (GND)))
-- \inst7|divisor|count[9]~41\ = CARRY((!\inst7|divisor|count[8]~39\) # (!\inst7|divisor|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(9),
	datad => VCC,
	cin => \inst7|divisor|count[8]~39\,
	combout => \inst7|divisor|count[9]~40_combout\,
	cout => \inst7|divisor|count[9]~41\);

-- Location: FF_X22_Y9_N21
\inst7|divisor|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[9]~40_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(9));

-- Location: LCCOMB_X22_Y9_N22
\inst7|divisor|count[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[10]~42_combout\ = (\inst7|divisor|count\(10) & (\inst7|divisor|count[9]~41\ $ (GND))) # (!\inst7|divisor|count\(10) & (!\inst7|divisor|count[9]~41\ & VCC))
-- \inst7|divisor|count[10]~43\ = CARRY((\inst7|divisor|count\(10) & !\inst7|divisor|count[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(10),
	datad => VCC,
	cin => \inst7|divisor|count[9]~41\,
	combout => \inst7|divisor|count[10]~42_combout\,
	cout => \inst7|divisor|count[10]~43\);

-- Location: FF_X22_Y9_N23
\inst7|divisor|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[10]~42_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(10));

-- Location: LCCOMB_X22_Y9_N24
\inst7|divisor|count[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[11]~44_combout\ = (\inst7|divisor|count\(11) & (!\inst7|divisor|count[10]~43\)) # (!\inst7|divisor|count\(11) & ((\inst7|divisor|count[10]~43\) # (GND)))
-- \inst7|divisor|count[11]~45\ = CARRY((!\inst7|divisor|count[10]~43\) # (!\inst7|divisor|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(11),
	datad => VCC,
	cin => \inst7|divisor|count[10]~43\,
	combout => \inst7|divisor|count[11]~44_combout\,
	cout => \inst7|divisor|count[11]~45\);

-- Location: FF_X22_Y9_N25
\inst7|divisor|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[11]~44_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(11));

-- Location: LCCOMB_X22_Y9_N26
\inst7|divisor|count[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[12]~46_combout\ = (\inst7|divisor|count\(12) & (\inst7|divisor|count[11]~45\ $ (GND))) # (!\inst7|divisor|count\(12) & (!\inst7|divisor|count[11]~45\ & VCC))
-- \inst7|divisor|count[12]~47\ = CARRY((\inst7|divisor|count\(12) & !\inst7|divisor|count[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(12),
	datad => VCC,
	cin => \inst7|divisor|count[11]~45\,
	combout => \inst7|divisor|count[12]~46_combout\,
	cout => \inst7|divisor|count[12]~47\);

-- Location: FF_X22_Y9_N27
\inst7|divisor|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[12]~46_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(12));

-- Location: LCCOMB_X22_Y9_N28
\inst7|divisor|count[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[13]~48_combout\ = (\inst7|divisor|count\(13) & (!\inst7|divisor|count[12]~47\)) # (!\inst7|divisor|count\(13) & ((\inst7|divisor|count[12]~47\) # (GND)))
-- \inst7|divisor|count[13]~49\ = CARRY((!\inst7|divisor|count[12]~47\) # (!\inst7|divisor|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(13),
	datad => VCC,
	cin => \inst7|divisor|count[12]~47\,
	combout => \inst7|divisor|count[13]~48_combout\,
	cout => \inst7|divisor|count[13]~49\);

-- Location: FF_X22_Y9_N29
\inst7|divisor|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[13]~48_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(13));

-- Location: LCCOMB_X22_Y9_N30
\inst7|divisor|count[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[14]~50_combout\ = (\inst7|divisor|count\(14) & (\inst7|divisor|count[13]~49\ $ (GND))) # (!\inst7|divisor|count\(14) & (!\inst7|divisor|count[13]~49\ & VCC))
-- \inst7|divisor|count[14]~51\ = CARRY((\inst7|divisor|count\(14) & !\inst7|divisor|count[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(14),
	datad => VCC,
	cin => \inst7|divisor|count[13]~49\,
	combout => \inst7|divisor|count[14]~50_combout\,
	cout => \inst7|divisor|count[14]~51\);

-- Location: FF_X22_Y9_N31
\inst7|divisor|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[14]~50_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(14));

-- Location: LCCOMB_X22_Y8_N0
\inst7|divisor|count[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[15]~52_combout\ = (\inst7|divisor|count\(15) & (!\inst7|divisor|count[14]~51\)) # (!\inst7|divisor|count\(15) & ((\inst7|divisor|count[14]~51\) # (GND)))
-- \inst7|divisor|count[15]~53\ = CARRY((!\inst7|divisor|count[14]~51\) # (!\inst7|divisor|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(15),
	datad => VCC,
	cin => \inst7|divisor|count[14]~51\,
	combout => \inst7|divisor|count[15]~52_combout\,
	cout => \inst7|divisor|count[15]~53\);

-- Location: FF_X22_Y8_N1
\inst7|divisor|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[15]~52_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(15));

-- Location: LCCOMB_X22_Y8_N2
\inst7|divisor|count[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[16]~54_combout\ = (\inst7|divisor|count\(16) & (\inst7|divisor|count[15]~53\ $ (GND))) # (!\inst7|divisor|count\(16) & (!\inst7|divisor|count[15]~53\ & VCC))
-- \inst7|divisor|count[16]~55\ = CARRY((\inst7|divisor|count\(16) & !\inst7|divisor|count[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(16),
	datad => VCC,
	cin => \inst7|divisor|count[15]~53\,
	combout => \inst7|divisor|count[16]~54_combout\,
	cout => \inst7|divisor|count[16]~55\);

-- Location: FF_X22_Y8_N3
\inst7|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[16]~54_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(16));

-- Location: LCCOMB_X22_Y8_N4
\inst7|divisor|count[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[17]~56_combout\ = (\inst7|divisor|count\(17) & (!\inst7|divisor|count[16]~55\)) # (!\inst7|divisor|count\(17) & ((\inst7|divisor|count[16]~55\) # (GND)))
-- \inst7|divisor|count[17]~57\ = CARRY((!\inst7|divisor|count[16]~55\) # (!\inst7|divisor|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(17),
	datad => VCC,
	cin => \inst7|divisor|count[16]~55\,
	combout => \inst7|divisor|count[17]~56_combout\,
	cout => \inst7|divisor|count[17]~57\);

-- Location: FF_X22_Y8_N5
\inst7|divisor|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[17]~56_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(17));

-- Location: LCCOMB_X22_Y8_N6
\inst7|divisor|count[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[18]~58_combout\ = (\inst7|divisor|count\(18) & (\inst7|divisor|count[17]~57\ $ (GND))) # (!\inst7|divisor|count\(18) & (!\inst7|divisor|count[17]~57\ & VCC))
-- \inst7|divisor|count[18]~59\ = CARRY((\inst7|divisor|count\(18) & !\inst7|divisor|count[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(18),
	datad => VCC,
	cin => \inst7|divisor|count[17]~57\,
	combout => \inst7|divisor|count[18]~58_combout\,
	cout => \inst7|divisor|count[18]~59\);

-- Location: FF_X22_Y8_N7
\inst7|divisor|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[18]~58_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(18));

-- Location: LCCOMB_X22_Y8_N8
\inst7|divisor|count[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[19]~60_combout\ = (\inst7|divisor|count\(19) & (!\inst7|divisor|count[18]~59\)) # (!\inst7|divisor|count\(19) & ((\inst7|divisor|count[18]~59\) # (GND)))
-- \inst7|divisor|count[19]~61\ = CARRY((!\inst7|divisor|count[18]~59\) # (!\inst7|divisor|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(19),
	datad => VCC,
	cin => \inst7|divisor|count[18]~59\,
	combout => \inst7|divisor|count[19]~60_combout\,
	cout => \inst7|divisor|count[19]~61\);

-- Location: FF_X22_Y8_N9
\inst7|divisor|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[19]~60_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(19));

-- Location: LCCOMB_X22_Y8_N10
\inst7|divisor|count[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[20]~62_combout\ = (\inst7|divisor|count\(20) & (\inst7|divisor|count[19]~61\ $ (GND))) # (!\inst7|divisor|count\(20) & (!\inst7|divisor|count[19]~61\ & VCC))
-- \inst7|divisor|count[20]~63\ = CARRY((\inst7|divisor|count\(20) & !\inst7|divisor|count[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(20),
	datad => VCC,
	cin => \inst7|divisor|count[19]~61\,
	combout => \inst7|divisor|count[20]~62_combout\,
	cout => \inst7|divisor|count[20]~63\);

-- Location: FF_X22_Y8_N11
\inst7|divisor|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[20]~62_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(20));

-- Location: LCCOMB_X22_Y8_N12
\inst7|divisor|count[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[21]~64_combout\ = (\inst7|divisor|count\(21) & (!\inst7|divisor|count[20]~63\)) # (!\inst7|divisor|count\(21) & ((\inst7|divisor|count[20]~63\) # (GND)))
-- \inst7|divisor|count[21]~65\ = CARRY((!\inst7|divisor|count[20]~63\) # (!\inst7|divisor|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(21),
	datad => VCC,
	cin => \inst7|divisor|count[20]~63\,
	combout => \inst7|divisor|count[21]~64_combout\,
	cout => \inst7|divisor|count[21]~65\);

-- Location: FF_X22_Y8_N13
\inst7|divisor|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[21]~64_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(21));

-- Location: LCCOMB_X22_Y8_N14
\inst7|divisor|count[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[22]~66_combout\ = (\inst7|divisor|count\(22) & (\inst7|divisor|count[21]~65\ $ (GND))) # (!\inst7|divisor|count\(22) & (!\inst7|divisor|count[21]~65\ & VCC))
-- \inst7|divisor|count[22]~67\ = CARRY((\inst7|divisor|count\(22) & !\inst7|divisor|count[21]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(22),
	datad => VCC,
	cin => \inst7|divisor|count[21]~65\,
	combout => \inst7|divisor|count[22]~66_combout\,
	cout => \inst7|divisor|count[22]~67\);

-- Location: FF_X22_Y8_N15
\inst7|divisor|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[22]~66_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(22));

-- Location: LCCOMB_X22_Y8_N16
\inst7|divisor|count[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[23]~68_combout\ = (\inst7|divisor|count\(23) & (!\inst7|divisor|count[22]~67\)) # (!\inst7|divisor|count\(23) & ((\inst7|divisor|count[22]~67\) # (GND)))
-- \inst7|divisor|count[23]~69\ = CARRY((!\inst7|divisor|count[22]~67\) # (!\inst7|divisor|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(23),
	datad => VCC,
	cin => \inst7|divisor|count[22]~67\,
	combout => \inst7|divisor|count[23]~68_combout\,
	cout => \inst7|divisor|count[23]~69\);

-- Location: FF_X22_Y8_N17
\inst7|divisor|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[23]~68_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(23));

-- Location: LCCOMB_X22_Y8_N18
\inst7|divisor|count[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[24]~70_combout\ = (\inst7|divisor|count\(24) & (\inst7|divisor|count[23]~69\ $ (GND))) # (!\inst7|divisor|count\(24) & (!\inst7|divisor|count[23]~69\ & VCC))
-- \inst7|divisor|count[24]~71\ = CARRY((\inst7|divisor|count\(24) & !\inst7|divisor|count[23]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(24),
	datad => VCC,
	cin => \inst7|divisor|count[23]~69\,
	combout => \inst7|divisor|count[24]~70_combout\,
	cout => \inst7|divisor|count[24]~71\);

-- Location: FF_X22_Y8_N19
\inst7|divisor|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[24]~70_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(24));

-- Location: LCCOMB_X22_Y8_N20
\inst7|divisor|count[25]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[25]~72_combout\ = (\inst7|divisor|count\(25) & (!\inst7|divisor|count[24]~71\)) # (!\inst7|divisor|count\(25) & ((\inst7|divisor|count[24]~71\) # (GND)))
-- \inst7|divisor|count[25]~73\ = CARRY((!\inst7|divisor|count[24]~71\) # (!\inst7|divisor|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(25),
	datad => VCC,
	cin => \inst7|divisor|count[24]~71\,
	combout => \inst7|divisor|count[25]~72_combout\,
	cout => \inst7|divisor|count[25]~73\);

-- Location: FF_X22_Y8_N21
\inst7|divisor|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[25]~72_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(25));

-- Location: LCCOMB_X22_Y8_N22
\inst7|divisor|count[26]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[26]~74_combout\ = (\inst7|divisor|count\(26) & (\inst7|divisor|count[25]~73\ $ (GND))) # (!\inst7|divisor|count\(26) & (!\inst7|divisor|count[25]~73\ & VCC))
-- \inst7|divisor|count[26]~75\ = CARRY((\inst7|divisor|count\(26) & !\inst7|divisor|count[25]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(26),
	datad => VCC,
	cin => \inst7|divisor|count[25]~73\,
	combout => \inst7|divisor|count[26]~74_combout\,
	cout => \inst7|divisor|count[26]~75\);

-- Location: FF_X22_Y8_N23
\inst7|divisor|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[26]~74_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(26));

-- Location: LCCOMB_X22_Y8_N28
\inst7|divisor|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|op_1~7_combout\ = (((!\inst7|divisor|count\(22) & !\inst7|divisor|count\(23))) # (!\inst7|divisor|count\(24))) # (!\inst7|divisor|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(25),
	datab => \inst7|divisor|count\(24),
	datac => \inst7|divisor|count\(22),
	datad => \inst7|divisor|count\(23),
	combout => \inst7|divisor|op_1~7_combout\);

-- Location: LCCOMB_X22_Y8_N24
\inst7|divisor|count[27]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|count[27]~76_combout\ = \inst7|divisor|count\(27) $ (\inst7|divisor|count[26]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|divisor|count\(27),
	cin => \inst7|divisor|count[26]~75\,
	combout => \inst7|divisor|count[27]~76_combout\);

-- Location: FF_X22_Y8_N25
\inst7|divisor|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1clkctrl_outclk\,
	d => \inst7|divisor|count[27]~76_combout\,
	sclr => \inst7|divisor|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|count\(27));

-- Location: LCCOMB_X22_Y8_N30
\inst7|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|op_1~0_combout\ = (((!\inst7|divisor|count\(16)) # (!\inst7|divisor|count\(17))) # (!\inst7|divisor|count\(19))) # (!\inst7|divisor|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(18),
	datab => \inst7|divisor|count\(19),
	datac => \inst7|divisor|count\(17),
	datad => \inst7|divisor|count\(16),
	combout => \inst7|divisor|op_1~0_combout\);

-- Location: LCCOMB_X21_Y9_N16
\inst7|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|op_1~1_combout\ = (!\inst7|divisor|count\(3) & (!\inst7|divisor|count\(2) & (!\inst7|divisor|count\(1) & !\inst7|divisor|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(3),
	datab => \inst7|divisor|count\(2),
	datac => \inst7|divisor|count\(1),
	datad => \inst7|divisor|count\(4),
	combout => \inst7|divisor|op_1~1_combout\);

-- Location: LCCOMB_X21_Y9_N12
\inst7|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|op_1~2_combout\ = (\inst7|divisor|count\(7) & ((\inst7|divisor|count\(6)) # ((\inst7|divisor|count\(5) & !\inst7|divisor|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(7),
	datab => \inst7|divisor|count\(5),
	datac => \inst7|divisor|count\(6),
	datad => \inst7|divisor|op_1~1_combout\,
	combout => \inst7|divisor|op_1~2_combout\);

-- Location: LCCOMB_X21_Y9_N18
\inst7|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|op_1~3_combout\ = (\inst7|divisor|count\(10) & ((\inst7|divisor|count\(9)) # ((\inst7|divisor|count\(8) & \inst7|divisor|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(10),
	datab => \inst7|divisor|count\(8),
	datac => \inst7|divisor|count\(9),
	datad => \inst7|divisor|op_1~2_combout\,
	combout => \inst7|divisor|op_1~3_combout\);

-- Location: LCCOMB_X21_Y9_N24
\inst7|divisor|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|op_1~4_combout\ = (((!\inst7|divisor|count\(11) & !\inst7|divisor|op_1~3_combout\)) # (!\inst7|divisor|count\(12))) # (!\inst7|divisor|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(13),
	datab => \inst7|divisor|count\(12),
	datac => \inst7|divisor|count\(11),
	datad => \inst7|divisor|op_1~3_combout\,
	combout => \inst7|divisor|op_1~4_combout\);

-- Location: LCCOMB_X21_Y9_N20
\inst7|divisor|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|op_1~5_combout\ = (\inst7|divisor|op_1~0_combout\) # ((!\inst7|divisor|count\(14) & (!\inst7|divisor|count\(15) & \inst7|divisor|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|op_1~0_combout\,
	datab => \inst7|divisor|count\(14),
	datac => \inst7|divisor|count\(15),
	datad => \inst7|divisor|op_1~4_combout\,
	combout => \inst7|divisor|op_1~5_combout\);

-- Location: LCCOMB_X21_Y9_N6
\inst7|divisor|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|op_1~6_combout\ = (!\inst7|divisor|count\(21) & (!\inst7|divisor|count\(23) & (!\inst7|divisor|count\(20) & \inst7|divisor|op_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(21),
	datab => \inst7|divisor|count\(23),
	datac => \inst7|divisor|count\(20),
	datad => \inst7|divisor|op_1~5_combout\,
	combout => \inst7|divisor|op_1~6_combout\);

-- Location: LCCOMB_X21_Y9_N2
\inst7|divisor|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|op_1~8_combout\ = (\inst7|divisor|count\(26) & (!\inst7|divisor|op_1~7_combout\ & (\inst7|divisor|count\(27) & !\inst7|divisor|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|divisor|count\(26),
	datab => \inst7|divisor|op_1~7_combout\,
	datac => \inst7|divisor|count\(27),
	datad => \inst7|divisor|op_1~6_combout\,
	combout => \inst7|divisor|op_1~8_combout\);

-- Location: LCCOMB_X21_Y9_N0
\inst7|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|divisor|alt~1_combout\ = \inst7|divisor|alt~q\ $ (\inst7|divisor|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|divisor|alt~q\,
	datad => \inst7|divisor|op_1~8_combout\,
	combout => \inst7|divisor|alt~1_combout\);

-- Location: FF_X21_Y9_N1
\inst7|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~1_combout\,
	d => \inst7|divisor|alt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|divisor|alt~q\);

-- Location: LCCOMB_X11_Y10_N22
\inst4|sort_realizado~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~14_combout\ = (\inst4|_~45_combout\ & (\inst4|_~56_combout\ & (\inst4|sort_realizado~0_combout\ & \inst4|_~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~45_combout\,
	datab => \inst4|_~56_combout\,
	datac => \inst4|sort_realizado~0_combout\,
	datad => \inst4|_~16_combout\,
	combout => \inst4|sort_realizado~14_combout\);

-- Location: LCCOMB_X11_Y10_N26
\inst4|sort_realizado~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~15_combout\ = (\inst4|sort_realizado~3_combout\) # ((\inst4|sort_realizado~10_combout\) # ((\inst4|sort_realizado~14_combout\) # (\inst4|sort_realizado~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~3_combout\,
	datab => \inst4|sort_realizado~10_combout\,
	datac => \inst4|sort_realizado~14_combout\,
	datad => \inst4|sort_realizado~13_combout\,
	combout => \inst4|sort_realizado~15_combout\);

-- Location: LCCOMB_X11_Y10_N0
\inst4|sort_realizado\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sort_realizado~combout\ = (\inst4|sort_realizado~15_combout\) # ((\inst4|sort_realizado~9_combout\) # (\inst4|sort_realizado~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sort_realizado~15_combout\,
	datac => \inst4|sort_realizado~9_combout\,
	datad => \inst4|sort_realizado~6_combout\,
	combout => \inst4|sort_realizado~combout\);

-- Location: LCCOMB_X11_Y10_N8
\inst7|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|_~0_combout\ = LCELL((\inst7|count|cnt\(1) & (\inst7|divisor|alt~q\)) # (!\inst7|count|cnt\(1) & ((\inst4|sort_realizado~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count|cnt\(1),
	datac => \inst7|divisor|alt~q\,
	datad => \inst4|sort_realizado~combout\,
	combout => \inst7|_~0_combout\);

-- Location: LCCOMB_X11_Y10_N30
\inst7|count|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count|cnt[1]~0_combout\ = !\inst7|count|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|count|cnt\(1),
	combout => \inst7|count|cnt[1]~0_combout\);

-- Location: FF_X11_Y10_N31
\inst7|count|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|_~0_combout\,
	d => \inst7|count|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count|cnt\(1));

-- Location: LCCOMB_X16_Y15_N16
\inst4|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~23_combout\ = (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & \inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~23_combout\);

-- Location: LCCOMB_X16_Y15_N10
\inst4|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~24_combout\ = (\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~24_combout\);

-- Location: LCCOMB_X16_Y15_N22
\inst4|u_atual[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[1]~30_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~23_combout\) # ((\inst4|u[4][1]~q\ & \inst4|_~24_combout\)))) # (!\inst4|u[5][1]~q\ & (((\inst4|u[4][1]~q\ & \inst4|_~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~q\,
	datab => \inst4|_~23_combout\,
	datac => \inst4|u[4][1]~q\,
	datad => \inst4|_~24_combout\,
	combout => \inst4|u_atual[1]~30_combout\);

-- Location: LCCOMB_X19_Y15_N6
\inst7|u_display[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_display[1]~4_combout\ = (!\inst7|count|cnt\(1) & ((\inst4|u_atual[1]~28_combout\) # ((\inst4|u_atual[1]~29_combout\) # (\inst4|u_atual[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[1]~28_combout\,
	datab => \inst4|u_atual[1]~29_combout\,
	datac => \inst7|count|cnt\(1),
	datad => \inst4|u_atual[1]~30_combout\,
	combout => \inst7|u_display[1]~4_combout\);

-- Location: LCCOMB_X14_Y15_N30
\inst4|u_atual[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[4]~25_combout\ = (\inst4|u[3][4]~q\ & (!\inst4|_~22_combout\ & ((!\inst4|_~24_combout\) # (!\inst4|u[4][4]~q\)))) # (!\inst4|u[3][4]~q\ & (((!\inst4|_~24_combout\)) # (!\inst4|u[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|_~22_combout\,
	datad => \inst4|_~24_combout\,
	combout => \inst4|u_atual[4]~25_combout\);

-- Location: LCCOMB_X14_Y15_N8
\inst4|u_atual[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[4]~26_combout\ = (\inst4|_~23_combout\ & (!\inst4|u[5][4]~q\ & ((!\inst4|u[1][4]~q\) # (!\inst2|convd1|segmentos[6]~9_combout\)))) # (!\inst4|_~23_combout\ & (((!\inst4|u[1][4]~q\)) # (!\inst2|convd1|segmentos[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~23_combout\,
	datab => \inst2|convd1|segmentos[6]~9_combout\,
	datac => \inst4|u[5][4]~q\,
	datad => \inst4|u[1][4]~q\,
	combout => \inst4|u_atual[4]~26_combout\);

-- Location: LCCOMB_X14_Y15_N12
\inst4|u_atual[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[4]~24_combout\ = (\inst4|u[2][4]~q\ & (!\inst4|_~21_combout\ & ((!\inst4|_~20_combout\) # (!\inst4|u[6][4]~q\)))) # (!\inst4|u[2][4]~q\ & (((!\inst4|_~20_combout\)) # (!\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|_~20_combout\,
	datad => \inst4|_~21_combout\,
	combout => \inst4|u_atual[4]~24_combout\);

-- Location: LCCOMB_X14_Y15_N18
\inst4|u_atual[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[4]~27_combout\ = (\inst4|u_atual[4]~25_combout\ & (\inst4|u_atual[4]~26_combout\ & \inst4|u_atual[4]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[4]~25_combout\,
	datac => \inst4|u_atual[4]~26_combout\,
	datad => \inst4|u_atual[4]~24_combout\,
	combout => \inst4|u_atual[4]~27_combout\);

-- Location: LCCOMB_X19_Y15_N28
\inst2|seg[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~30_combout\ = (\inst3|cnt\(1) & (\inst3|cnt\(2) & ((\inst4|u_atual[4]~27_combout\) # (\inst7|count|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[4]~27_combout\,
	datab => \inst3|cnt\(1),
	datac => \inst7|count|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[1]~30_combout\);

-- Location: LCCOMB_X14_Y15_N2
\inst7|u_display[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_display[2]~8_combout\ = (\inst4|_~24_combout\ & ((\inst4|u[4][2]~q\) # ((\inst4|_~23_combout\ & \inst4|u[5][2]~q\)))) # (!\inst4|_~24_combout\ & (((\inst4|_~23_combout\ & \inst4|u[5][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~24_combout\,
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|_~23_combout\,
	datad => \inst4|u[5][2]~q\,
	combout => \inst7|u_display[2]~8_combout\);

-- Location: LCCOMB_X14_Y15_N4
\inst7|u_display[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_display[2]~7_combout\ = (\inst4|u[1][2]~q\ & ((\inst2|convd1|segmentos[6]~9_combout\) # ((\inst4|u[3][2]~q\ & \inst4|_~22_combout\)))) # (!\inst4|u[1][2]~q\ & (\inst4|u[3][2]~q\ & (\inst4|_~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|_~22_combout\,
	datad => \inst2|convd1|segmentos[6]~9_combout\,
	combout => \inst7|u_display[2]~7_combout\);

-- Location: LCCOMB_X14_Y15_N6
\inst7|u_display[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_display[2]~6_combout\ = (\inst4|_~20_combout\ & ((\inst4|u[6][2]~q\) # ((\inst4|u[2][2]~q\ & \inst4|_~21_combout\)))) # (!\inst4|_~20_combout\ & (\inst4|u[2][2]~q\ & ((\inst4|_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~20_combout\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|u[6][2]~q\,
	datad => \inst4|_~21_combout\,
	combout => \inst7|u_display[2]~6_combout\);

-- Location: LCCOMB_X14_Y15_N28
\inst7|u_display[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_display[2]~9_combout\ = (\inst7|count|cnt\(1)) # ((\inst7|u_display[2]~8_combout\) # ((\inst7|u_display[2]~7_combout\) # (\inst7|u_display[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count|cnt\(1),
	datab => \inst7|u_display[2]~8_combout\,
	datac => \inst7|u_display[2]~7_combout\,
	datad => \inst7|u_display[2]~6_combout\,
	combout => \inst7|u_display[2]~9_combout\);

-- Location: LCCOMB_X14_Y15_N16
\inst4|u_atual[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[3]~33_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~23_combout\) # ((\inst4|u[4][3]~q\ & \inst4|_~24_combout\)))) # (!\inst4|u[5][3]~q\ & (\inst4|u[4][3]~q\ & ((\inst4|_~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|u[4][3]~q\,
	datac => \inst4|_~23_combout\,
	datad => \inst4|_~24_combout\,
	combout => \inst4|u_atual[3]~33_combout\);

-- Location: LCCOMB_X13_Y14_N6
\inst4|u_atual[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[3]~32_combout\ = (\inst2|convd1|segmentos[6]~9_combout\ & ((\inst4|u[1][3]~q\) # ((\inst4|u[3][3]~q\ & \inst4|_~22_combout\)))) # (!\inst2|convd1|segmentos[6]~9_combout\ & (((\inst4|u[3][3]~q\ & \inst4|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|convd1|segmentos[6]~9_combout\,
	datab => \inst4|u[1][3]~q\,
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|_~22_combout\,
	combout => \inst4|u_atual[3]~32_combout\);

-- Location: LCCOMB_X14_Y15_N14
\inst4|u_atual[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual[3]~31_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|_~21_combout\) # ((\inst4|u[6][3]~q\ & \inst4|_~20_combout\)))) # (!\inst4|u[2][3]~q\ & (\inst4|u[6][3]~q\ & (\inst4|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|u[6][3]~q\,
	datac => \inst4|_~20_combout\,
	datad => \inst4|_~21_combout\,
	combout => \inst4|u_atual[3]~31_combout\);

-- Location: LCCOMB_X19_Y15_N24
\inst7|u_display[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_display[3]~5_combout\ = (!\inst7|count|cnt\(1) & ((\inst4|u_atual[3]~33_combout\) # ((\inst4|u_atual[3]~32_combout\) # (\inst4|u_atual[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[3]~33_combout\,
	datab => \inst4|u_atual[3]~32_combout\,
	datac => \inst7|count|cnt\(1),
	datad => \inst4|u_atual[3]~31_combout\,
	combout => \inst7|u_display[3]~5_combout\);

-- Location: LCCOMB_X19_Y15_N22
\inst2|seg[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~31_combout\ = (\inst2|seg[1]~30_combout\ & ((\inst7|u_display[2]~9_combout\ & (\inst7|u_display[1]~4_combout\ & \inst7|u_display[3]~5_combout\)) # (!\inst7|u_display[2]~9_combout\ & ((!\inst7|u_display[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_display[1]~4_combout\,
	datab => \inst2|seg[1]~30_combout\,
	datac => \inst7|u_display[2]~9_combout\,
	datad => \inst7|u_display[3]~5_combout\,
	combout => \inst2|seg[6]~31_combout\);

-- Location: LCCOMB_X16_Y15_N24
\inst2|seg[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~32_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) $ (!\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[6]~32_combout\);

-- Location: LCCOMB_X16_Y15_N0
\inst4|d_atual[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~35_combout\ = (\inst4|_~24_combout\ & ((\inst4|d[4][2]~q\) # ((\inst4|_~23_combout\ & \inst4|d[5][2]~q\)))) # (!\inst4|_~24_combout\ & (\inst4|_~23_combout\ & (\inst4|d[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~24_combout\,
	datab => \inst4|_~23_combout\,
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|d[4][2]~q\,
	combout => \inst4|d_atual[2]~35_combout\);

-- Location: LCCOMB_X14_Y13_N30
\inst4|d_atual[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~34_combout\ = (\inst4|d[1][2]~q\ & ((\inst2|convd1|segmentos[6]~9_combout\) # ((\inst4|_~22_combout\ & \inst4|d[3][2]~q\)))) # (!\inst4|d[1][2]~q\ & (\inst4|_~22_combout\ & ((\inst4|d[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|_~22_combout\,
	datac => \inst2|convd1|segmentos[6]~9_combout\,
	datad => \inst4|d[3][2]~q\,
	combout => \inst4|d_atual[2]~34_combout\);

-- Location: LCCOMB_X11_Y13_N8
\inst4|d_atual[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[2]~33_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~20_combout\) # ((\inst4|d[2][2]~q\ & \inst4|_~21_combout\)))) # (!\inst4|d[6][2]~q\ & (\inst4|d[2][2]~q\ & (\inst4|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|d[2][2]~q\,
	datac => \inst4|_~21_combout\,
	datad => \inst4|_~20_combout\,
	combout => \inst4|d_atual[2]~33_combout\);

-- Location: LCCOMB_X16_Y14_N26
\inst7|d_display[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|d_display[2]~7_combout\ = (!\inst7|count|cnt\(1) & ((\inst4|d_atual[2]~35_combout\) # ((\inst4|d_atual[2]~34_combout\) # (\inst4|d_atual[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~35_combout\,
	datab => \inst7|count|cnt\(1),
	datac => \inst4|d_atual[2]~34_combout\,
	datad => \inst4|d_atual[2]~33_combout\,
	combout => \inst7|d_display[2]~7_combout\);

-- Location: LCCOMB_X16_Y15_N12
\inst4|d_atual[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[4]~26_combout\ = (\inst4|_~24_combout\ & ((\inst4|d[4][4]~q\) # ((\inst4|_~23_combout\ & \inst4|d[5][4]~q\)))) # (!\inst4|_~24_combout\ & (\inst4|_~23_combout\ & ((\inst4|d[5][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~24_combout\,
	datab => \inst4|_~23_combout\,
	datac => \inst4|d[4][4]~q\,
	datad => \inst4|d[5][4]~q\,
	combout => \inst4|d_atual[4]~26_combout\);

-- Location: LCCOMB_X12_Y15_N26
\inst4|d_atual[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[4]~24_combout\ = (\inst4|d[2][4]~q\ & ((\inst4|_~21_combout\) # ((\inst4|d[6][4]~q\ & \inst4|_~20_combout\)))) # (!\inst4|d[2][4]~q\ & (\inst4|d[6][4]~q\ & ((\inst4|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][4]~q\,
	datab => \inst4|d[6][4]~q\,
	datac => \inst4|_~21_combout\,
	datad => \inst4|_~20_combout\,
	combout => \inst4|d_atual[4]~24_combout\);

-- Location: LCCOMB_X16_Y15_N2
\inst4|d_atual[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[4]~25_combout\ = (\inst4|d[1][4]~q\ & ((\inst2|convd1|segmentos[6]~9_combout\) # ((\inst4|_~22_combout\ & \inst4|d[3][4]~q\)))) # (!\inst4|d[1][4]~q\ & (\inst4|_~22_combout\ & ((\inst4|d[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][4]~q\,
	datab => \inst4|_~22_combout\,
	datac => \inst2|convd1|segmentos[6]~9_combout\,
	datad => \inst4|d[3][4]~q\,
	combout => \inst4|d_atual[4]~25_combout\);

-- Location: LCCOMB_X16_Y15_N26
\inst4|d_atual[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual\(4) = (\inst4|d_atual[4]~26_combout\) # ((\inst4|d_atual[4]~24_combout\) # (\inst4|d_atual[4]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[4]~26_combout\,
	datab => \inst4|d_atual[4]~24_combout\,
	datad => \inst4|d_atual[4]~25_combout\,
	combout => \inst4|d_atual\(4));

-- Location: LCCOMB_X16_Y14_N14
\inst2|seg[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~28_combout\ = (!\inst3|cnt\(1) & (\inst3|cnt\(2) & ((\inst7|count|cnt\(1)) # (!\inst4|d_atual\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datab => \inst7|count|cnt\(1),
	datac => \inst4|d_atual\(4),
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[2]~28_combout\);

-- Location: LCCOMB_X12_Y12_N8
\inst4|d_atual[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[3]~30_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~21_combout\) # ((\inst4|_~20_combout\ & \inst4|d[6][3]~q\)))) # (!\inst4|d[2][3]~q\ & (((\inst4|_~20_combout\ & \inst4|d[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|_~21_combout\,
	datac => \inst4|_~20_combout\,
	datad => \inst4|d[6][3]~q\,
	combout => \inst4|d_atual[3]~30_combout\);

-- Location: LCCOMB_X14_Y13_N18
\inst4|d_atual[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[3]~31_combout\ = (\inst4|d[1][3]~q\ & ((\inst2|convd1|segmentos[6]~9_combout\) # ((\inst4|d[3][3]~q\ & \inst4|_~22_combout\)))) # (!\inst4|d[1][3]~q\ & (\inst4|d[3][3]~q\ & ((\inst4|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst4|d[3][3]~q\,
	datac => \inst2|convd1|segmentos[6]~9_combout\,
	datad => \inst4|_~22_combout\,
	combout => \inst4|d_atual[3]~31_combout\);

-- Location: LCCOMB_X16_Y15_N14
\inst4|d_atual[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[3]~32_combout\ = (\inst4|_~24_combout\ & ((\inst4|d[4][3]~q\) # ((\inst4|d[5][3]~q\ & \inst4|_~23_combout\)))) # (!\inst4|_~24_combout\ & (\inst4|d[5][3]~q\ & ((\inst4|_~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~24_combout\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|d[4][3]~q\,
	datad => \inst4|_~23_combout\,
	combout => \inst4|d_atual[3]~32_combout\);

-- Location: LCCOMB_X16_Y14_N0
\inst7|d_display[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|d_display[3]~6_combout\ = (!\inst7|count|cnt\(1) & ((\inst4|d_atual[3]~30_combout\) # ((\inst4|d_atual[3]~31_combout\) # (\inst4|d_atual[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[3]~30_combout\,
	datab => \inst7|count|cnt\(1),
	datac => \inst4|d_atual[3]~31_combout\,
	datad => \inst4|d_atual[3]~32_combout\,
	combout => \inst7|d_display[3]~6_combout\);

-- Location: LCCOMB_X16_Y15_N4
\inst4|d_atual[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[1]~29_combout\ = (\inst4|d[5][1]~q\ & ((\inst4|_~23_combout\) # ((\inst4|d[4][1]~q\ & \inst4|_~24_combout\)))) # (!\inst4|d[5][1]~q\ & (((\inst4|d[4][1]~q\ & \inst4|_~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|_~23_combout\,
	datac => \inst4|d[4][1]~q\,
	datad => \inst4|_~24_combout\,
	combout => \inst4|d_atual[1]~29_combout\);

-- Location: LCCOMB_X16_Y14_N8
\inst4|d_atual[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[1]~28_combout\ = (\inst2|convd1|segmentos[6]~9_combout\ & ((\inst4|d[1][1]~q\) # ((\inst4|_~22_combout\ & \inst4|d[3][1]~q\)))) # (!\inst2|convd1|segmentos[6]~9_combout\ & (\inst4|_~22_combout\ & ((\inst4|d[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|convd1|segmentos[6]~9_combout\,
	datab => \inst4|_~22_combout\,
	datac => \inst4|d[1][1]~q\,
	datad => \inst4|d[3][1]~q\,
	combout => \inst4|d_atual[1]~28_combout\);

-- Location: LCCOMB_X11_Y12_N4
\inst4|d_atual[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual[1]~27_combout\ = (\inst4|_~21_combout\ & ((\inst4|d[2][1]~q\) # ((\inst4|d[6][1]~q\ & \inst4|_~20_combout\)))) # (!\inst4|_~21_combout\ & (\inst4|d[6][1]~q\ & (\inst4|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~21_combout\,
	datab => \inst4|d[6][1]~q\,
	datac => \inst4|_~20_combout\,
	datad => \inst4|d[2][1]~q\,
	combout => \inst4|d_atual[1]~27_combout\);

-- Location: LCCOMB_X16_Y14_N2
\inst7|d_display[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|d_display[1]~5_combout\ = (\inst4|d_atual[1]~29_combout\) # ((\inst7|count|cnt\(1)) # ((\inst4|d_atual[1]~28_combout\) # (\inst4|d_atual[1]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[1]~29_combout\,
	datab => \inst7|count|cnt\(1),
	datac => \inst4|d_atual[1]~28_combout\,
	datad => \inst4|d_atual[1]~27_combout\,
	combout => \inst7|d_display[1]~5_combout\);

-- Location: LCCOMB_X17_Y15_N22
\inst2|seg[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~29_combout\ = (\inst2|seg[2]~28_combout\ & ((\inst7|d_display[2]~7_combout\ & (\inst7|d_display[3]~6_combout\ & \inst7|d_display[1]~5_combout\)) # (!\inst7|d_display[2]~7_combout\ & (!\inst7|d_display[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|d_display[2]~7_combout\,
	datab => \inst2|seg[2]~28_combout\,
	datac => \inst7|d_display[3]~6_combout\,
	datad => \inst7|d_display[1]~5_combout\,
	combout => \inst2|seg[6]~29_combout\);

-- Location: LCCOMB_X16_Y15_N18
\inst2|seg[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~33_combout\ = (\inst2|seg[6]~31_combout\) # ((\inst2|seg[6]~29_combout\) # ((\inst2|seg[6]~32_combout\ & \inst2|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[6]~31_combout\,
	datab => \inst2|seg[6]~32_combout\,
	datac => \inst2|_~0_combout\,
	datad => \inst2|seg[6]~29_combout\,
	combout => \inst2|seg[6]~33_combout\);

-- Location: LCCOMB_X16_Y15_N28
\inst2|seg[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~38_combout\ = (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(1))) # (!\inst4|count|cnt\(2) & ((!\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[5]~38_combout\);

-- Location: LCCOMB_X19_Y15_N16
\inst2|seg[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~35_combout\ = (\inst2|seg[1]~30_combout\ & (!\inst7|u_display[3]~5_combout\ & ((\inst7|u_display[1]~4_combout\) # (\inst7|u_display[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_display[1]~4_combout\,
	datab => \inst2|seg[1]~30_combout\,
	datac => \inst7|u_display[2]~9_combout\,
	datad => \inst7|u_display[3]~5_combout\,
	combout => \inst2|seg[5]~35_combout\);

-- Location: LCCOMB_X16_Y14_N16
\inst4|d_atual[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual\(3) = (\inst4|d_atual[3]~30_combout\) # ((\inst4|d_atual[3]~31_combout\) # (\inst4|d_atual[3]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[3]~30_combout\,
	datac => \inst4|d_atual[3]~31_combout\,
	datad => \inst4|d_atual[3]~32_combout\,
	combout => \inst4|d_atual\(3));

-- Location: LCCOMB_X17_Y15_N16
\inst2|seg[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~36_combout\ = (\inst7|d_display[2]~7_combout\ & (((\inst4|d_atual\(3) & \inst7|d_display[1]~5_combout\)) # (!\inst7|d_display[3]~6_combout\))) # (!\inst7|d_display[2]~7_combout\ & (((!\inst7|d_display[3]~6_combout\ & 
-- \inst7|d_display[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|d_display[2]~7_combout\,
	datab => \inst4|d_atual\(3),
	datac => \inst7|d_display[3]~6_combout\,
	datad => \inst7|d_display[1]~5_combout\,
	combout => \inst2|seg[5]~36_combout\);

-- Location: LCCOMB_X19_Y15_N0
\inst4|u_atual[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual\(3) = (\inst4|u_atual[3]~33_combout\) # ((\inst4|u_atual[3]~32_combout\) # (\inst4|u_atual[3]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[3]~33_combout\,
	datac => \inst4|u_atual[3]~32_combout\,
	datad => \inst4|u_atual[3]~31_combout\,
	combout => \inst4|u_atual\(3));

-- Location: LCCOMB_X19_Y15_N14
\inst2|seg[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~34_combout\ = (\inst7|u_display[1]~4_combout\ & (\inst4|u_atual\(3) & (\inst7|u_display[2]~9_combout\ & \inst2|seg[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_display[1]~4_combout\,
	datab => \inst4|u_atual\(3),
	datac => \inst7|u_display[2]~9_combout\,
	datad => \inst2|seg[1]~30_combout\,
	combout => \inst2|seg[3]~34_combout\);

-- Location: LCCOMB_X17_Y15_N18
\inst2|seg[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~37_combout\ = (\inst2|seg[5]~35_combout\) # ((\inst2|seg[3]~34_combout\) # ((\inst2|seg[5]~36_combout\ & \inst2|seg[2]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[5]~35_combout\,
	datab => \inst2|seg[5]~36_combout\,
	datac => \inst2|seg[2]~28_combout\,
	datad => \inst2|seg[3]~34_combout\,
	combout => \inst2|seg[5]~37_combout\);

-- Location: LCCOMB_X17_Y15_N4
\inst2|seg[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~39_combout\ = (\inst2|_~1_combout\) # ((\inst2|seg[5]~37_combout\) # ((\inst2|seg[5]~38_combout\ & \inst2|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~1_combout\,
	datab => \inst2|seg[5]~38_combout\,
	datac => \inst2|_~0_combout\,
	datad => \inst2|seg[5]~37_combout\,
	combout => \inst2|seg[5]~39_combout\);

-- Location: LCCOMB_X16_Y14_N6
\inst4|d_atual[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual\(1) = (\inst4|d_atual[1]~29_combout\) # ((\inst4|d_atual[1]~28_combout\) # (\inst4|d_atual[1]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[1]~29_combout\,
	datac => \inst4|d_atual[1]~28_combout\,
	datad => \inst4|d_atual[1]~27_combout\,
	combout => \inst4|d_atual\(1));

-- Location: LCCOMB_X16_Y14_N24
\inst2|seg[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~41_combout\ = (!\inst7|count|cnt\(1) & (!\inst7|d_display[2]~7_combout\ & \inst4|d_atual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count|cnt\(1),
	datac => \inst7|d_display[2]~7_combout\,
	datad => \inst4|d_atual\(3),
	combout => \inst2|seg[1]~41_combout\);

-- Location: LCCOMB_X16_Y14_N10
\inst2|seg[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~42_combout\ = (\inst2|_~2_combout\ & (!\inst4|d_atual\(4) & ((\inst4|d_atual\(1)) # (\inst2|seg[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst2|_~2_combout\,
	datac => \inst4|d_atual\(4),
	datad => \inst2|seg[1]~41_combout\,
	combout => \inst2|seg[4]~42_combout\);

-- Location: LCCOMB_X16_Y14_N20
\inst2|seg[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~43_combout\ = (\inst4|d_atual\(1) & (\inst2|_~2_combout\ & (!\inst7|d_display[2]~7_combout\ & !\inst7|d_display[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(1),
	datab => \inst2|_~2_combout\,
	datac => \inst7|d_display[2]~7_combout\,
	datad => \inst7|d_display[3]~6_combout\,
	combout => \inst2|seg[4]~43_combout\);

-- Location: LCCOMB_X16_Y15_N30
\inst2|seg[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~44_combout\ = ((\inst4|count|cnt\(2) & !\inst4|count|cnt\(3))) # (!\inst4|count|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[4]~44_combout\);

-- Location: LCCOMB_X16_Y14_N30
\inst2|seg[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~45_combout\ = (\inst3|cnt\(1) & (((!\inst3|cnt\(2))))) # (!\inst3|cnt\(1) & ((\inst3|cnt\(2) & (\inst7|count|cnt\(1))) # (!\inst3|cnt\(2) & ((\inst2|seg[4]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datab => \inst7|count|cnt\(1),
	datac => \inst2|seg[4]~44_combout\,
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[4]~45_combout\);

-- Location: LCCOMB_X19_Y15_N2
\inst4|u_atual[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u_atual\(1) = (\inst4|u_atual[1]~29_combout\) # ((\inst4|u_atual[1]~28_combout\) # (\inst4|u_atual[1]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u_atual[1]~29_combout\,
	datac => \inst4|u_atual[1]~28_combout\,
	datad => \inst4|u_atual[1]~30_combout\,
	combout => \inst4|u_atual\(1));

-- Location: LCCOMB_X19_Y15_N8
\inst2|seg[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~40_combout\ = (\inst7|u_display[2]~9_combout\ & (\inst4|u_atual[4]~27_combout\ & ((\inst4|u_atual\(1))))) # (!\inst7|u_display[2]~9_combout\ & ((\inst4|u_atual\(3) & (\inst4|u_atual[4]~27_combout\)) # (!\inst4|u_atual\(3) & 
-- ((\inst4|u_atual\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[4]~27_combout\,
	datab => \inst4|u_atual\(3),
	datac => \inst7|u_display[2]~9_combout\,
	datad => \inst4|u_atual\(1),
	combout => \inst2|seg[4]~40_combout\);

-- Location: LCCOMB_X16_Y14_N18
\inst2|seg[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~62_combout\ = (\inst2|seg[4]~40_combout\ & (!\inst7|count|cnt\(1) & (\inst3|cnt\(1) & \inst3|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~40_combout\,
	datab => \inst7|count|cnt\(1),
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[4]~62_combout\);

-- Location: LCCOMB_X16_Y14_N12
\inst2|seg[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~46_combout\ = (\inst2|seg[4]~42_combout\) # ((\inst2|seg[4]~43_combout\) # ((\inst2|seg[4]~45_combout\) # (\inst2|seg[4]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~42_combout\,
	datab => \inst2|seg[4]~43_combout\,
	datac => \inst2|seg[4]~45_combout\,
	datad => \inst2|seg[4]~62_combout\,
	combout => \inst2|seg[4]~46_combout\);

-- Location: LCCOMB_X16_Y15_N8
\inst2|seg[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~48_combout\ = (\inst2|_~0_combout\ & ((\inst4|count|cnt\(2) & (\inst4|count|cnt\(1) $ (\inst4|count|cnt\(3)))) # (!\inst4|count|cnt\(2) & (!\inst4|count|cnt\(1) & !\inst4|count|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst2|_~0_combout\,
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[3]~48_combout\);

-- Location: LCCOMB_X19_Y15_N18
\inst2|seg[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~50_combout\ = (\inst2|seg[1]~30_combout\ & (!\inst7|u_display[2]~9_combout\ & (\inst7|u_display[1]~4_combout\ $ (\inst7|u_display[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_display[1]~4_combout\,
	datab => \inst2|seg[1]~30_combout\,
	datac => \inst7|u_display[2]~9_combout\,
	datad => \inst7|u_display[3]~5_combout\,
	combout => \inst2|seg[0]~50_combout\);

-- Location: LCCOMB_X17_Y15_N20
\inst2|seg[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~49_combout\ = (!\inst7|d_display[2]~7_combout\ & (\inst2|seg[2]~28_combout\ & (\inst7|d_display[3]~6_combout\ $ (\inst7|d_display[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|d_display[2]~7_combout\,
	datab => \inst2|seg[2]~28_combout\,
	datac => \inst7|d_display[3]~6_combout\,
	datad => \inst7|d_display[1]~5_combout\,
	combout => \inst2|seg[0]~49_combout\);

-- Location: LCCOMB_X17_Y15_N2
\inst2|seg[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~63_combout\ = (!\inst2|seg[0]~50_combout\ & (!\inst2|seg[0]~49_combout\ & ((\inst3|cnt\(2)) # (!\inst3|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[0]~50_combout\,
	datab => \inst2|seg[0]~49_combout\,
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[0]~63_combout\);

-- Location: LCCOMB_X17_Y15_N14
\inst2|seg[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~47_combout\ = (\inst7|d_display[2]~7_combout\ & (\inst4|d_atual\(3) & (\inst2|seg[2]~28_combout\ & \inst7|d_display[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|d_display[2]~7_combout\,
	datab => \inst4|d_atual\(3),
	datac => \inst2|seg[2]~28_combout\,
	datad => \inst7|d_display[1]~5_combout\,
	combout => \inst2|seg[3]~47_combout\);

-- Location: LCCOMB_X17_Y15_N10
\inst2|seg[3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~51_combout\ = (\inst2|seg[3]~48_combout\) # (((\inst2|seg[3]~47_combout\) # (\inst2|seg[3]~34_combout\)) # (!\inst2|seg[0]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[3]~48_combout\,
	datab => \inst2|seg[0]~63_combout\,
	datac => \inst2|seg[3]~47_combout\,
	datad => \inst2|seg[3]~34_combout\,
	combout => \inst2|seg[3]~51_combout\);

-- Location: LCCOMB_X17_Y15_N24
\inst2|seg[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~52_combout\ = (\inst7|d_display[2]~7_combout\ & (\inst2|seg[2]~28_combout\ & (!\inst7|d_display[3]~6_combout\ & !\inst7|d_display[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|d_display[2]~7_combout\,
	datab => \inst2|seg[2]~28_combout\,
	datac => \inst7|d_display[3]~6_combout\,
	datad => \inst7|d_display[1]~5_combout\,
	combout => \inst2|seg[2]~52_combout\);

-- Location: LCCOMB_X17_Y15_N30
\inst2|seg[2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~53_combout\ = (\inst2|_~1_combout\) # ((\inst2|seg[2]~52_combout\) # ((\inst2|_~0_combout\ & \inst4|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~1_combout\,
	datab => \inst2|seg[2]~52_combout\,
	datac => \inst2|_~0_combout\,
	datad => \inst4|_~21_combout\,
	combout => \inst2|seg[2]~53_combout\);

-- Location: LCCOMB_X19_Y15_N20
\inst2|seg[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~54_combout\ = (!\inst7|u_display[1]~4_combout\ & (\inst7|u_display[2]~9_combout\ & \inst2|seg[1]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_display[1]~4_combout\,
	datac => \inst7|u_display[2]~9_combout\,
	datad => \inst2|seg[1]~30_combout\,
	combout => \inst2|seg[1]~54_combout\);

-- Location: LCCOMB_X18_Y15_N0
\inst2|seg[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~55_combout\ = (\inst2|seg[2]~53_combout\) # ((\inst2|seg[1]~54_combout\ & !\inst7|u_display[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seg[2]~53_combout\,
	datac => \inst2|seg[1]~54_combout\,
	datad => \inst7|u_display[3]~5_combout\,
	combout => \inst2|seg[2]~55_combout\);

-- Location: LCCOMB_X19_Y15_N10
\inst2|seg[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~57_combout\ = (\inst2|_~3_combout\ & (\inst4|u_atual\(3) & ((\inst4|u_atual[4]~27_combout\) # (\inst7|count|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u_atual[4]~27_combout\,
	datab => \inst2|_~3_combout\,
	datac => \inst7|count|cnt\(1),
	datad => \inst4|u_atual\(3),
	combout => \inst2|seg[3]~57_combout\);

-- Location: LCCOMB_X19_Y15_N4
\inst2|seg[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~64_combout\ = (!\inst7|u_display[2]~9_combout\ & ((\inst4|u_atual[1]~29_combout\) # ((\inst4|u_atual[1]~28_combout\) # (\inst4|u_atual[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_display[2]~9_combout\,
	datab => \inst4|u_atual[1]~29_combout\,
	datac => \inst4|u_atual[1]~28_combout\,
	datad => \inst4|u_atual[1]~30_combout\,
	combout => \inst2|seg[1]~64_combout\);

-- Location: LCCOMB_X19_Y15_N12
\inst2|seg[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~58_combout\ = (\inst2|seg[3]~57_combout\ & ((\inst2|seg[1]~64_combout\) # ((\inst2|seg[1]~54_combout\ & \inst7|u_display[3]~5_combout\)))) # (!\inst2|seg[3]~57_combout\ & (\inst2|seg[1]~54_combout\ & ((\inst7|u_display[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[3]~57_combout\,
	datab => \inst2|seg[1]~54_combout\,
	datac => \inst2|seg[1]~64_combout\,
	datad => \inst7|u_display[3]~5_combout\,
	combout => \inst2|seg[1]~58_combout\);

-- Location: LCCOMB_X17_Y15_N28
\inst2|seg[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~56_combout\ = (\inst2|_~1_combout\) # ((\inst2|_~0_combout\ & ((\inst4|_~23_combout\) # (\inst4|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~1_combout\,
	datab => \inst4|_~23_combout\,
	datac => \inst2|_~0_combout\,
	datad => \inst4|_~20_combout\,
	combout => \inst2|seg[1]~56_combout\);

-- Location: LCCOMB_X16_Y14_N22
\inst4|d_atual[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d_atual\(2) = (\inst4|d_atual[2]~35_combout\) # ((\inst4|d_atual[2]~33_combout\) # (\inst4|d_atual[2]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual[2]~35_combout\,
	datab => \inst4|d_atual[2]~33_combout\,
	datad => \inst4|d_atual[2]~34_combout\,
	combout => \inst4|d_atual\(2));

-- Location: LCCOMB_X16_Y14_N28
\inst2|seg[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~59_combout\ = (\inst4|d_atual\(3) & ((\inst4|d_atual\(2) & (!\inst7|d_display[1]~5_combout\)) # (!\inst4|d_atual\(2) & (\inst7|d_display[1]~5_combout\ & !\inst7|count|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d_atual\(2),
	datab => \inst4|d_atual\(3),
	datac => \inst7|d_display[1]~5_combout\,
	datad => \inst7|count|cnt\(1),
	combout => \inst2|seg[1]~59_combout\);

-- Location: LCCOMB_X19_Y15_N26
\inst2|seg[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~60_combout\ = (\inst2|seg[1]~58_combout\) # ((\inst2|seg[1]~56_combout\) # ((\inst2|seg[1]~59_combout\ & \inst2|seg[2]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[1]~58_combout\,
	datab => \inst2|seg[1]~56_combout\,
	datac => \inst2|seg[1]~59_combout\,
	datad => \inst2|seg[2]~28_combout\,
	combout => \inst2|seg[1]~60_combout\);

-- Location: LCCOMB_X16_Y15_N6
\inst2|seg[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~61_combout\ = ((\inst2|_~0_combout\ & ((\inst4|_~24_combout\) # (\inst2|convd1|segmentos[6]~9_combout\)))) # (!\inst2|seg[0]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~24_combout\,
	datab => \inst2|convd1|segmentos[6]~9_combout\,
	datac => \inst2|_~0_combout\,
	datad => \inst2|seg[0]~63_combout\,
	combout => \inst2|seg[0]~61_combout\);

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_buzzer <= \buzzer~output_o\;

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

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;
END structure;


