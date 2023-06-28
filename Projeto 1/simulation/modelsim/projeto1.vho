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

-- DATE "06/28/2023 14:17:07"

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
	beep : OUT std_logic;
	FPGA_CLK : IN std_logic;
	KEY1 : IN std_logic;
	KEY2 : IN std_logic;
	KEY3 : IN std_logic;
	KEY4 : IN std_logic;
	LED : OUT std_logic_vector(4 DOWNTO 1)
	);
END projeto1;

-- Design Ports Information
-- beep	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY4	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY3	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY2	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_beep : std_logic;
SIGNAL ww_FPGA_CLK : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_KEY4 : std_logic;
SIGNAL ww_LED : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst49|inst36~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst80~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst48|inst36~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst82~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FPGA_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst51|inst36~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst50|inst36~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \FPGA_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst|inst~q\ : std_logic;
SIGNAL \inst3|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst3|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst3|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst3|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst3|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst3|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst3|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst3|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst2|inst~q\ : std_logic;
SIGNAL \inst3|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst9|inst~q\ : std_logic;
SIGNAL \inst3|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst3|inst~q\ : std_logic;
SIGNAL \inst3|inst3|inst7~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst7~feeder_combout\ : std_logic;
SIGNAL \inst3|inst3|inst7~q\ : std_logic;
SIGNAL \inst3|inst3|inst8~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst8~q\ : std_logic;
SIGNAL \inst3|inst3|inst9~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst9~q\ : std_logic;
SIGNAL \inst3|inst3|inst10~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst14~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst14~q\ : std_logic;
SIGNAL \inst3|inst3|inst17~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst17~q\ : std_logic;
SIGNAL \inst3|inst3|inst19~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst19~q\ : std_logic;
SIGNAL \inst3|inst3|inst21~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst21~1_combout\ : std_logic;
SIGNAL \inst3|inst3|inst21~q\ : std_logic;
SIGNAL \inst3|inst3|inst10~1_combout\ : std_logic;
SIGNAL \inst3|inst3|inst10~combout\ : std_logic;
SIGNAL \inst3|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst3|inst4~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst21~1_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst10~1_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst10~combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst48|inst25|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst25|inst~q\ : std_logic;
SIGNAL \inst48|inst26|inst~0_combout\ : std_logic;
SIGNAL \inst48|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst48|inst26|inst~q\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \inst48|dasda~0_combout\ : std_logic;
SIGNAL \inst48|dasda~q\ : std_logic;
SIGNAL \inst48|inst29~feeder_combout\ : std_logic;
SIGNAL \inst48|inst29~q\ : std_logic;
SIGNAL \inst48|inst30~feeder_combout\ : std_logic;
SIGNAL \inst48|inst30~q\ : std_logic;
SIGNAL \inst48|inst31~feeder_combout\ : std_logic;
SIGNAL \inst48|inst31~q\ : std_logic;
SIGNAL \inst48|inst32~feeder_combout\ : std_logic;
SIGNAL \inst48|inst32~q\ : std_logic;
SIGNAL \inst48|inst33~feeder_combout\ : std_logic;
SIGNAL \inst48|inst33~q\ : std_logic;
SIGNAL \inst48|inst23~feeder_combout\ : std_logic;
SIGNAL \inst48|inst23~q\ : std_logic;
SIGNAL \inst48|1231~q\ : std_logic;
SIGNAL \inst48|inst36~1_combout\ : std_logic;
SIGNAL \inst48|inst36~0_combout\ : std_logic;
SIGNAL \inst48|inst36~combout\ : std_logic;
SIGNAL \inst48|inst36~clkctrl_outclk\ : std_logic;
SIGNAL \inst47|inst2~0_combout\ : std_logic;
SIGNAL \inst47|inst2~feeder_combout\ : std_logic;
SIGNAL \inst80~clkctrl_outclk\ : std_logic;
SIGNAL \inst90|inst|inst~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst13~combout\ : std_logic;
SIGNAL \inst90|inst|inst14~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst14~q\ : std_logic;
SIGNAL \inst90|inst|inst17~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst17~q\ : std_logic;
SIGNAL \inst90|inst|inst19~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst19~q\ : std_logic;
SIGNAL \inst90|inst|inst10~1_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst19~1_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst10~1_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst10~combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst50|inst25|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst25|inst~q\ : std_logic;
SIGNAL \inst50|inst26|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst26|inst~q\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \inst50|dasda~0_combout\ : std_logic;
SIGNAL \inst50|dasda~q\ : std_logic;
SIGNAL \inst50|inst29~feeder_combout\ : std_logic;
SIGNAL \inst50|inst29~q\ : std_logic;
SIGNAL \inst50|inst30~feeder_combout\ : std_logic;
SIGNAL \inst50|inst30~q\ : std_logic;
SIGNAL \inst50|inst31~feeder_combout\ : std_logic;
SIGNAL \inst50|inst31~q\ : std_logic;
SIGNAL \inst50|inst32~feeder_combout\ : std_logic;
SIGNAL \inst50|inst32~q\ : std_logic;
SIGNAL \inst50|inst33~feeder_combout\ : std_logic;
SIGNAL \inst50|inst33~q\ : std_logic;
SIGNAL \inst50|inst23~feeder_combout\ : std_logic;
SIGNAL \inst50|inst23~q\ : std_logic;
SIGNAL \inst50|1231~q\ : std_logic;
SIGNAL \inst50|inst36~1_combout\ : std_logic;
SIGNAL \inst50|inst36~0_combout\ : std_logic;
SIGNAL \inst50|inst36~combout\ : std_logic;
SIGNAL \inst50|inst36~clkctrl_outclk\ : std_logic;
SIGNAL \inst45|inst2~0_combout\ : std_logic;
SIGNAL \inst45|inst2~feeder_combout\ : std_logic;
SIGNAL \inst45|inst2~q\ : std_logic;
SIGNAL \inst90|inst80|inst2~1_combout\ : std_logic;
SIGNAL \inst90|inst80|inst2~0_combout\ : std_logic;
SIGNAL \inst80~0_combout\ : std_logic;
SIGNAL \inst82~combout\ : std_logic;
SIGNAL \inst90|inst|inst1|inst~feeder_combout\ : std_logic;
SIGNAL \inst90|inst|inst1|inst~q\ : std_logic;
SIGNAL \inst90|inst|inst12~combout\ : std_logic;
SIGNAL \inst90|inst|inst~q\ : std_logic;
SIGNAL \inst90|inst|inst8~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst8~q\ : std_logic;
SIGNAL \inst90|inst|inst9~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst9~q\ : std_logic;
SIGNAL \inst90|inst81|inst2~1_combout\ : std_logic;
SIGNAL \inst90|inst81|inst2~2_combout\ : std_logic;
SIGNAL \inst90|inst81|inst2~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst21~1_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst10~1_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst10~combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst49|inst25|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst25|inst~q\ : std_logic;
SIGNAL \inst49|inst26|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst26|inst~q\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \inst49|dasda~0_combout\ : std_logic;
SIGNAL \inst49|dasda~q\ : std_logic;
SIGNAL \inst49|inst29~feeder_combout\ : std_logic;
SIGNAL \inst49|inst29~q\ : std_logic;
SIGNAL \inst49|inst30~feeder_combout\ : std_logic;
SIGNAL \inst49|inst30~q\ : std_logic;
SIGNAL \inst49|inst31~feeder_combout\ : std_logic;
SIGNAL \inst49|inst31~q\ : std_logic;
SIGNAL \inst49|inst32~feeder_combout\ : std_logic;
SIGNAL \inst49|inst32~q\ : std_logic;
SIGNAL \inst49|inst33~feeder_combout\ : std_logic;
SIGNAL \inst49|inst33~q\ : std_logic;
SIGNAL \inst49|inst23~feeder_combout\ : std_logic;
SIGNAL \inst49|inst23~q\ : std_logic;
SIGNAL \inst49|1231~q\ : std_logic;
SIGNAL \inst49|inst36~1_combout\ : std_logic;
SIGNAL \inst49|inst36~0_combout\ : std_logic;
SIGNAL \inst49|inst36~combout\ : std_logic;
SIGNAL \inst49|inst36~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst19~1_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst10~1_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst10~combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst51|inst25|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst25|inst~q\ : std_logic;
SIGNAL \inst51|inst26|inst~0_combout\ : std_logic;
SIGNAL \inst51|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst51|inst26|inst~q\ : std_logic;
SIGNAL \KEY4~input_o\ : std_logic;
SIGNAL \inst51|dasda~0_combout\ : std_logic;
SIGNAL \inst51|dasda~q\ : std_logic;
SIGNAL \inst51|inst29~feeder_combout\ : std_logic;
SIGNAL \inst51|inst29~q\ : std_logic;
SIGNAL \inst51|inst30~feeder_combout\ : std_logic;
SIGNAL \inst51|inst30~q\ : std_logic;
SIGNAL \inst51|inst31~feeder_combout\ : std_logic;
SIGNAL \inst51|inst31~q\ : std_logic;
SIGNAL \inst51|inst36~0_combout\ : std_logic;
SIGNAL \inst51|inst32~feeder_combout\ : std_logic;
SIGNAL \inst51|inst32~q\ : std_logic;
SIGNAL \inst51|inst33~feeder_combout\ : std_logic;
SIGNAL \inst51|inst33~q\ : std_logic;
SIGNAL \inst51|inst23~feeder_combout\ : std_logic;
SIGNAL \inst51|inst23~q\ : std_logic;
SIGNAL \inst51|1231~q\ : std_logic;
SIGNAL \inst51|inst36~1_combout\ : std_logic;
SIGNAL \inst51|inst36~combout\ : std_logic;
SIGNAL \inst51|inst36~clkctrl_outclk\ : std_logic;
SIGNAL \inst46|inst2~0_combout\ : std_logic;
SIGNAL \inst46|inst2~feeder_combout\ : std_logic;
SIGNAL \inst46|inst2~q\ : std_logic;
SIGNAL \inst90|inst79|inst2~0_combout\ : std_logic;
SIGNAL \inst80~1_combout\ : std_logic;
SIGNAL \inst80~combout\ : std_logic;
SIGNAL \inst90|inst|inst7~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst7~q\ : std_logic;
SIGNAL \inst90|inst|inst21~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst21~1_combout\ : std_logic;
SIGNAL \inst90|inst|inst21~q\ : std_logic;
SIGNAL \inst90|inst|inst10~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst3~combout\ : std_logic;
SIGNAL \inst90|inst|inst4~0_combout\ : std_logic;
SIGNAL \inst90|inst|inst4~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst9|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst10|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst23|inst|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst7~q\ : std_logic;
SIGNAL \inst23|inst|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst8~q\ : std_logic;
SIGNAL \inst23|inst|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst9~q\ : std_logic;
SIGNAL \inst23|inst|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst14~q\ : std_logic;
SIGNAL \inst23|inst|inst4|inst16~combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst17~q\ : std_logic;
SIGNAL \inst23|inst|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst19~q\ : std_logic;
SIGNAL \inst23|inst|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst21~q\ : std_logic;
SIGNAL \inst23|inst|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst10~combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst4~feeder_combout\ : std_logic;
SIGNAL \inst23|inst|inst4|inst4~q\ : std_logic;
SIGNAL \inst23|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst23|inst4|inst~q\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst89|inst~0_combout\ : std_logic;
SIGNAL \inst89|inst~feeder_combout\ : std_logic;
SIGNAL \inst89|inst~q\ : std_logic;
SIGNAL \inst89|inst7~0_combout\ : std_logic;
SIGNAL \inst89|inst7~feeder_combout\ : std_logic;
SIGNAL \inst89|inst7~q\ : std_logic;
SIGNAL \inst89|inst8~0_combout\ : std_logic;
SIGNAL \inst89|inst8~q\ : std_logic;
SIGNAL \inst89|inst9~0_combout\ : std_logic;
SIGNAL \inst89|inst9~q\ : std_logic;
SIGNAL \inst89|inst13~combout\ : std_logic;
SIGNAL \inst89|inst14~0_combout\ : std_logic;
SIGNAL \inst89|inst14~q\ : std_logic;
SIGNAL \inst89|inst17~0_combout\ : std_logic;
SIGNAL \inst89|inst17~q\ : std_logic;
SIGNAL \inst89|inst19~0_combout\ : std_logic;
SIGNAL \inst89|inst19~q\ : std_logic;
SIGNAL \inst89|inst21~0_combout\ : std_logic;
SIGNAL \inst89|inst21~1_combout\ : std_logic;
SIGNAL \inst89|inst21~q\ : std_logic;
SIGNAL \inst89|inst10~0_combout\ : std_logic;
SIGNAL \inst89|inst10~1_combout\ : std_logic;
SIGNAL \inst89|inst10~combout\ : std_logic;
SIGNAL \inst89|inst4~0_combout\ : std_logic;
SIGNAL \inst89|inst4~q\ : std_logic;
SIGNAL \inst44|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst44|inst26|inst~q\ : std_logic;
SIGNAL \inst44|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst44|inst25|inst~q\ : std_logic;
SIGNAL \inst44|inst~combout\ : std_logic;
SIGNAL \inst45|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst7|inst~q\ : std_logic;
SIGNAL \inst47|inst2~q\ : std_logic;
SIGNAL \inst47|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst32~combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst7~q\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst8~q\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst9~q\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst14~q\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst16~combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst17~q\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst19~q\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst21~1_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst21~q\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst10~combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|inst4~q\ : std_logic;
SIGNAL \inst47|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst47|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst17|inst~q\ : std_logic;
SIGNAL \inst47|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst47|inst3|inst~q\ : std_logic;
SIGNAL \inst47|inst~q\ : std_logic;
SIGNAL \inst5|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst5|inst9|inst~q\ : std_logic;
SIGNAL \inst5|inst19|inst~feeder_combout\ : std_logic;
SIGNAL \inst5|inst19|inst~q\ : std_logic;
SIGNAL \inst5|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst5|inst17|inst~q\ : std_logic;
SIGNAL \inst82~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst5|inst8|inst~q\ : std_logic;
SIGNAL \inst5|inst18|inst~feeder_combout\ : std_logic;
SIGNAL \inst5|inst18|inst~q\ : std_logic;
SIGNAL \inst5|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst5|inst7|inst~q\ : std_logic;
SIGNAL \inst5|inst36|inst4~0_combout\ : std_logic;
SIGNAL \inst5|inst28|inst4~combout\ : std_logic;
SIGNAL \inst5|inst23~1_combout\ : std_logic;
SIGNAL \inst5|inst23~2_combout\ : std_logic;
SIGNAL \inst20~1_combout\ : std_logic;
SIGNAL \inst11|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst|inst~q\ : std_logic;
SIGNAL \inst11|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst11|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst11|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst11|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst11|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst11|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst11|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst11|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst2|inst~q\ : std_logic;
SIGNAL \inst11|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst9|inst~q\ : std_logic;
SIGNAL \inst11|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst1|inst~q\ : std_logic;
SIGNAL \inst11|inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst7~feeder_combout\ : std_logic;
SIGNAL \inst11|inst1|inst7~q\ : std_logic;
SIGNAL \inst11|inst1|inst8~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst8~q\ : std_logic;
SIGNAL \inst11|inst1|inst10~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst9~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst9~q\ : std_logic;
SIGNAL \inst11|inst1|inst14~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst14~q\ : std_logic;
SIGNAL \inst11|inst1|inst17~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst17~q\ : std_logic;
SIGNAL \inst11|inst1|inst18~combout\ : std_logic;
SIGNAL \inst11|inst1|inst19~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst19~q\ : std_logic;
SIGNAL \inst11|inst1|inst21~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst21~1_combout\ : std_logic;
SIGNAL \inst11|inst1|inst21~q\ : std_logic;
SIGNAL \inst11|inst1|inst10~1_combout\ : std_logic;
SIGNAL \inst11|inst1|inst10~combout\ : std_logic;
SIGNAL \inst11|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst4~q\ : std_logic;
SIGNAL \inst5|inst26|inst4~0_combout\ : std_logic;
SIGNAL \inst5|inst32|inst4~combout\ : std_logic;
SIGNAL \inst5|inst29~1_combout\ : std_logic;
SIGNAL \inst5|inst29~2_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst32~combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst7~q\ : std_logic;
SIGNAL \inst|inst31|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst8~q\ : std_logic;
SIGNAL \inst|inst31|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst9~q\ : std_logic;
SIGNAL \inst|inst31|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst14~q\ : std_logic;
SIGNAL \inst|inst31|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst17~1_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst17~q\ : std_logic;
SIGNAL \inst|inst31|inst4|inst16~combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst19~q\ : std_logic;
SIGNAL \inst|inst31|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst21~q\ : std_logic;
SIGNAL \inst|inst31|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst10~combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst4|inst4~q\ : std_logic;
SIGNAL \inst|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst17|inst~q\ : std_logic;
SIGNAL \inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst20~3_combout\ : std_logic;
SIGNAL \inst86|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst|inst|inst~q\ : std_logic;
SIGNAL \inst86|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst86|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst86|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst86|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst86|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst86|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst86|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst86|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst2|inst~q\ : std_logic;
SIGNAL \inst86|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst3|inst~q\ : std_logic;
SIGNAL \inst86|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst7|inst~q\ : std_logic;
SIGNAL \inst86|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst8|inst~q\ : std_logic;
SIGNAL \inst86|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst86|inst9|inst~q\ : std_logic;
SIGNAL \inst86|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst~q\ : std_logic;
SIGNAL \inst86|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst86|inst4|inst7~q\ : std_logic;
SIGNAL \inst86|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst8~q\ : std_logic;
SIGNAL \inst86|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst9~q\ : std_logic;
SIGNAL \inst86|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst14~q\ : std_logic;
SIGNAL \inst86|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst17~q\ : std_logic;
SIGNAL \inst86|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst19~1_combout\ : std_logic;
SIGNAL \inst86|inst4|inst19~q\ : std_logic;
SIGNAL \inst86|inst4|inst18~combout\ : std_logic;
SIGNAL \inst86|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst21~q\ : std_logic;
SIGNAL \inst86|inst4|inst10~1_combout\ : std_logic;
SIGNAL \inst86|inst4|inst10~combout\ : std_logic;
SIGNAL \inst86|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst86|inst4|inst4~q\ : std_logic;
SIGNAL \inst69|inst2~0_combout\ : std_logic;
SIGNAL \inst69|inst2~feeder_combout\ : std_logic;
SIGNAL \inst69|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst7|inst~q\ : std_logic;
SIGNAL \inst69|inst2~q\ : std_logic;
SIGNAL \inst69|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst32~combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst7~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst8~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst9~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst14~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst17~1_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst17~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst16~combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst19~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst21~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst10~combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst69|inst31|inst4|inst4~q\ : std_logic;
SIGNAL \inst69|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst69|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst17|inst~q\ : std_logic;
SIGNAL \inst69|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst69|inst3|inst~q\ : std_logic;
SIGNAL \inst69|inst~q\ : std_logic;
SIGNAL \inst5|inst26|inst4~combout\ : std_logic;
SIGNAL \inst5|inst14~1_combout\ : std_logic;
SIGNAL \inst5|inst14~2_combout\ : std_logic;
SIGNAL \inst20~2_combout\ : std_logic;
SIGNAL \inst83|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst83|inst|inst|inst~q\ : std_logic;
SIGNAL \inst83|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst83|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst83|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst83|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst83|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst83|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst83|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst83|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst83|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst83|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst83|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst83|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst83|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst83|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst83|inst3|inst~q\ : std_logic;
SIGNAL \inst83|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst~q\ : std_logic;
SIGNAL \inst83|inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst7~feeder_combout\ : std_logic;
SIGNAL \inst83|inst2|inst7~q\ : std_logic;
SIGNAL \inst83|inst2|inst8~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst8~q\ : std_logic;
SIGNAL \inst83|inst2|inst9~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst9~q\ : std_logic;
SIGNAL \inst83|inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst14~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst14~q\ : std_logic;
SIGNAL \inst83|inst2|inst17~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst17~q\ : std_logic;
SIGNAL \inst83|inst2|inst19~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst19~q\ : std_logic;
SIGNAL \inst83|inst2|inst21~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst21~1_combout\ : std_logic;
SIGNAL \inst83|inst2|inst21~q\ : std_logic;
SIGNAL \inst83|inst2|inst10~1_combout\ : std_logic;
SIGNAL \inst83|inst2|inst10~combout\ : std_logic;
SIGNAL \inst83|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst83|inst2|inst4~q\ : std_logic;
SIGNAL \inst65|inst2~0_combout\ : std_logic;
SIGNAL \inst65|inst2~feeder_combout\ : std_logic;
SIGNAL \inst65|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst7|inst~q\ : std_logic;
SIGNAL \inst65|inst2~q\ : std_logic;
SIGNAL \inst65|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst32~combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst7~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst8~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst9~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst14~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst16~combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst17~1_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst17~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst19~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst21~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst10~combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst4|inst4~q\ : std_logic;
SIGNAL \inst65|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst17|inst~q\ : std_logic;
SIGNAL \inst65|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst3|inst~q\ : std_logic;
SIGNAL \inst65|inst~q\ : std_logic;
SIGNAL \inst5|inst40|inst4~0_combout\ : std_logic;
SIGNAL \inst5|inst25|inst4~combout\ : std_logic;
SIGNAL \inst5|inst10~1_combout\ : std_logic;
SIGNAL \inst5|inst10~2_combout\ : std_logic;
SIGNAL \inst20~0_combout\ : std_logic;
SIGNAL \inst19~0_combout\ : std_logic;
SIGNAL \inst5|inst40|inst4~combout\ : std_logic;
SIGNAL \inst5|inst37~1_combout\ : std_logic;
SIGNAL \inst5|inst37~2_combout\ : std_logic;
SIGNAL \inst12|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst|inst|inst~q\ : std_logic;
SIGNAL \inst12|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst12|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst12|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst12|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst12|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst12|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst12|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst12|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst2|inst~q\ : std_logic;
SIGNAL \inst12|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst9|inst~q\ : std_logic;
SIGNAL \inst12|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst3|inst~q\ : std_logic;
SIGNAL \inst12|inst3|inst7~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst7~feeder_combout\ : std_logic;
SIGNAL \inst12|inst3|inst7~q\ : std_logic;
SIGNAL \inst12|inst3|inst8~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst8~q\ : std_logic;
SIGNAL \inst12|inst3|inst9~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst9~q\ : std_logic;
SIGNAL \inst12|inst3|inst13~combout\ : std_logic;
SIGNAL \inst12|inst3|inst14~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst14~q\ : std_logic;
SIGNAL \inst12|inst3|inst17~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst17~q\ : std_logic;
SIGNAL \inst12|inst3|inst19~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst19~q\ : std_logic;
SIGNAL \inst12|inst3|inst10~1_combout\ : std_logic;
SIGNAL \inst12|inst3|inst21~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst21~1_combout\ : std_logic;
SIGNAL \inst12|inst3|inst21~q\ : std_logic;
SIGNAL \inst12|inst3|inst10~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst10~combout\ : std_logic;
SIGNAL \inst12|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst3|inst4~q\ : std_logic;
SIGNAL \inst45|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst32~combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst7~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst8~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst9~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst14~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst16~combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst17~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst19~1_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst19~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst21~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst10~combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst4|inst4~q\ : std_logic;
SIGNAL \inst45|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst17|inst~q\ : std_logic;
SIGNAL \inst45|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst3|inst~q\ : std_logic;
SIGNAL \inst45|inst~q\ : std_logic;
SIGNAL \inst20~4_combout\ : std_logic;
SIGNAL \inst13|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|inst|inst~q\ : std_logic;
SIGNAL \inst13|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst13|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst13|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst13|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst13|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst13|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst13|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst13|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst3|inst~q\ : std_logic;
SIGNAL \inst13|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst4|inst~q\ : std_logic;
SIGNAL \inst13|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst2|inst~q\ : std_logic;
SIGNAL \inst13|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst9|inst~q\ : std_logic;
SIGNAL \inst13|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst7|inst~q\ : std_logic;
SIGNAL \inst13|inst7|inst7~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst7~feeder_combout\ : std_logic;
SIGNAL \inst13|inst7|inst7~q\ : std_logic;
SIGNAL \inst13|inst7|inst8~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst8~q\ : std_logic;
SIGNAL \inst13|inst7|inst10~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst9~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst9~q\ : std_logic;
SIGNAL \inst13|inst7|inst14~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst14~q\ : std_logic;
SIGNAL \inst13|inst7|inst17~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst17~q\ : std_logic;
SIGNAL \inst13|inst7|inst18~combout\ : std_logic;
SIGNAL \inst13|inst7|inst19~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst19~1_combout\ : std_logic;
SIGNAL \inst13|inst7|inst19~q\ : std_logic;
SIGNAL \inst13|inst7|inst21~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst21~q\ : std_logic;
SIGNAL \inst13|inst7|inst10~1_combout\ : std_logic;
SIGNAL \inst13|inst7|inst10~combout\ : std_logic;
SIGNAL \inst13|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst4~q\ : std_logic;
SIGNAL \inst46|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst32~combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst7~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst8~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst9~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst14~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst16~combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst17~1_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst17~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst19~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst21~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst10~combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst4|inst4~q\ : std_logic;
SIGNAL \inst46|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst17|inst~q\ : std_logic;
SIGNAL \inst46|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst3|inst~q\ : std_logic;
SIGNAL \inst46|inst~q\ : std_logic;
SIGNAL \inst5|inst36|inst4~combout\ : std_logic;
SIGNAL \inst5|inst33~1_combout\ : std_logic;
SIGNAL \inst5|inst33~2_combout\ : std_logic;
SIGNAL \inst20~5_combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst10|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst|inst~q\ : std_logic;
SIGNAL \inst10|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst10|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst10|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst10|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst10|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst10|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst10|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst10|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst3|inst~q\ : std_logic;
SIGNAL \inst10|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst4|inst~q\ : std_logic;
SIGNAL \inst10|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst8|inst~q\ : std_logic;
SIGNAL \inst10|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst2|inst~q\ : std_logic;
SIGNAL \inst10|inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst7~feeder_combout\ : std_logic;
SIGNAL \inst10|inst2|inst7~q\ : std_logic;
SIGNAL \inst10|inst2|inst8~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst8~q\ : std_logic;
SIGNAL \inst10|inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst9~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst9~q\ : std_logic;
SIGNAL \inst10|inst2|inst14~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst14~q\ : std_logic;
SIGNAL \inst10|inst2|inst17~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst17~q\ : std_logic;
SIGNAL \inst10|inst2|inst18~combout\ : std_logic;
SIGNAL \inst10|inst2|inst19~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst19~q\ : std_logic;
SIGNAL \inst10|inst2|inst21~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst21~1_combout\ : std_logic;
SIGNAL \inst10|inst2|inst21~q\ : std_logic;
SIGNAL \inst10|inst2|inst10~1_combout\ : std_logic;
SIGNAL \inst10|inst2|inst10~combout\ : std_logic;
SIGNAL \inst10|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst10|inst2|inst4~q\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst10|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst10|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst23|inst|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst51|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst10|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst83|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst10|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst83|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst10|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst83|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst10|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst83|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst46|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst10|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst83|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst89|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst13|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst83|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst10|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst|inst31|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst86|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst31|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst47|inst31|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst83|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst48|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst89|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst51|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst10|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst44|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst44|inst26|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst90|inst|ALT_INV_inst12~combout\ : std_logic;
SIGNAL \inst13|inst7|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst46|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst10|inst2|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst12|inst3|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst45|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst1|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst86|inst4|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst69|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst3|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst47|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst90|inst|inst1|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst83|inst2|ALT_INV_inst10~combout\ : std_logic;
SIGNAL \inst65|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst5|inst19|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst5|inst18|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst5|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst5|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst69|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst5|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst5|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst45|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst46|ALT_INV_inst2~q\ : std_logic;
SIGNAL \ALT_INV_inst82~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_inst80~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

beep <= ww_beep;
ww_FPGA_CLK <= FPGA_CLK;
ww_KEY1 <= KEY1;
ww_KEY2 <= KEY2;
ww_KEY3 <= KEY3;
ww_KEY4 <= KEY4;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst49|inst36~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst49|inst36~combout\);

\inst80~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst80~combout\);

\inst48|inst36~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst48|inst36~combout\);

\inst82~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst82~combout\);

\FPGA_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FPGA_CLK~input_o\);

\inst51|inst36~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst51|inst36~combout\);

\inst50|inst36~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst50|inst36~combout\);
\inst23|inst|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst|inst|inst~q\;
\inst23|inst|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst|inst2|inst~q\;
\inst23|inst|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst|inst3|inst~q\;
\inst23|inst|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst|inst4|inst~q\;
\inst23|inst|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst|inst5|inst~q\;
\inst23|inst|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst|inst6|inst~q\;
\inst23|inst|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst|inst7|inst~q\;
\inst46|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst|inst~q\;
\inst45|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst|inst~q\;
\inst|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst|inst~q\;
\inst69|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst|inst|inst~q\;
\inst47|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst|inst|inst~q\;
\inst65|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst|inst~q\;
\inst46|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst2|inst~q\;
\inst45|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst2|inst~q\;
\inst|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst2|inst~q\;
\inst69|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst|inst2|inst~q\;
\inst47|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst|inst2|inst~q\;
\inst65|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst2|inst~q\;
\inst23|inst|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst1|inst|inst~q\;
\inst46|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst3|inst~q\;
\inst45|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst3|inst~q\;
\inst|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst3|inst~q\;
\inst69|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst|inst3|inst~q\;
\inst47|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst|inst3|inst~q\;
\inst65|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst3|inst~q\;
\inst23|inst|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst1|inst2|inst~q\;
\inst46|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst4|inst~q\;
\inst45|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst4|inst~q\;
\inst|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst4|inst~q\;
\inst69|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst|inst4|inst~q\;
\inst47|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst|inst4|inst~q\;
\inst65|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst4|inst~q\;
\inst23|inst|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst1|inst3|inst~q\;
\inst46|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst5|inst~q\;
\inst45|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst5|inst~q\;
\inst|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst5|inst~q\;
\inst69|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst|inst5|inst~q\;
\inst47|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst|inst5|inst~q\;
\inst65|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst5|inst~q\;
\inst23|inst|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst1|inst4|inst~q\;
\inst46|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst6|inst~q\;
\inst45|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst6|inst~q\;
\inst|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst6|inst~q\;
\inst69|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst|inst6|inst~q\;
\inst47|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst|inst6|inst~q\;
\inst65|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst6|inst~q\;
\inst23|inst|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst1|inst5|inst~q\;
\inst46|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst7|inst~q\;
\inst45|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst7|inst~q\;
\inst|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst7|inst~q\;
\inst69|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst|inst7|inst~q\;
\inst47|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst|inst7|inst~q\;
\inst65|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst7|inst~q\;
\inst48|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst|inst~q\;
\inst49|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst|inst~q\;
\inst50|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst|inst~q\;
\inst23|inst|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst1|inst6|inst~q\;
\inst51|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst|inst~q\;
\inst48|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst2|inst~q\;
\inst49|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst2|inst~q\;
\inst50|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst2|inst~q\;
\inst23|inst|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst1|inst7|inst~q\;
\inst51|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst2|inst~q\;
\inst46|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst|inst~q\;
\inst45|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst|inst~q\;
\inst|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst|inst~q\;
\inst69|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst1|inst|inst~q\;
\inst47|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst1|inst|inst~q\;
\inst65|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst|inst~q\;
\inst48|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst3|inst~q\;
\inst49|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst3|inst~q\;
\inst50|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst3|inst~q\;
\inst23|inst|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst23|inst|inst|inst1|inst8|inst~q\;
\inst51|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst3|inst~q\;
\inst46|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst2|inst~q\;
\inst45|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst2|inst~q\;
\inst|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst2|inst~q\;
\inst69|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst1|inst2|inst~q\;
\inst47|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst1|inst2|inst~q\;
\inst65|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst2|inst~q\;
\inst48|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst4|inst~q\;
\inst49|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst4|inst~q\;
\inst50|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst4|inst~q\;
\inst23|inst|inst2|ALT_INV_inst~q\ <= NOT \inst23|inst|inst2|inst~q\;
\inst51|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst4|inst~q\;
\inst46|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst3|inst~q\;
\inst45|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst3|inst~q\;
\inst|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst3|inst~q\;
\inst69|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst1|inst3|inst~q\;
\inst47|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst1|inst3|inst~q\;
\inst65|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst3|inst~q\;
\inst48|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst5|inst~q\;
\inst49|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst5|inst~q\;
\inst50|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst5|inst~q\;
\inst23|inst|inst3|ALT_INV_inst~q\ <= NOT \inst23|inst|inst3|inst~q\;
\inst51|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst5|inst~q\;
\inst46|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst4|inst~q\;
\inst45|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst4|inst~q\;
\inst|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst4|inst~q\;
\inst69|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst1|inst4|inst~q\;
\inst47|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst1|inst4|inst~q\;
\inst65|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst4|inst~q\;
\inst48|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst6|inst~q\;
\inst49|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst6|inst~q\;
\inst50|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst6|inst~q\;
\inst23|inst|inst7|ALT_INV_inst~q\ <= NOT \inst23|inst|inst7|inst~q\;
\inst51|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst6|inst~q\;
\inst46|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst5|inst~q\;
\inst45|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst5|inst~q\;
\inst|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst5|inst~q\;
\inst86|inst|inst|ALT_INV_inst~q\ <= NOT \inst86|inst|inst|inst~q\;
\inst69|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst1|inst5|inst~q\;
\inst47|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst1|inst5|inst~q\;
\inst65|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst5|inst~q\;
\inst48|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst7|inst~q\;
\inst49|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst7|inst~q\;
\inst50|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst7|inst~q\;
\inst23|inst|inst8|ALT_INV_inst~q\ <= NOT \inst23|inst|inst8|inst~q\;
\inst51|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst7|inst~q\;
\inst13|inst|inst|ALT_INV_inst~q\ <= NOT \inst13|inst|inst|inst~q\;
\inst46|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst6|inst~q\;
\inst45|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst6|inst~q\;
\inst|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst6|inst~q\;
\inst86|inst|inst2|ALT_INV_inst~q\ <= NOT \inst86|inst|inst2|inst~q\;
\inst69|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst1|inst6|inst~q\;
\inst47|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst1|inst6|inst~q\;
\inst65|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst6|inst~q\;
\inst23|inst|inst9|ALT_INV_inst~q\ <= NOT \inst23|inst|inst9|inst~q\;
\inst13|inst|inst2|ALT_INV_inst~q\ <= NOT \inst13|inst|inst2|inst~q\;
\inst46|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst7|inst~q\;
\inst10|inst|inst|ALT_INV_inst~q\ <= NOT \inst10|inst|inst|inst~q\;
\inst45|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst7|inst~q\;
\inst|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst7|inst~q\;
\inst86|inst|inst3|ALT_INV_inst~q\ <= NOT \inst86|inst|inst3|inst~q\;
\inst69|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst1|inst7|inst~q\;
\inst47|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst1|inst7|inst~q\;
\inst65|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst7|inst~q\;
\inst48|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst2|inst~q\;
\inst49|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst2|inst~q\;
\inst50|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst2|inst~q\;
\inst51|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst2|inst~q\;
\inst13|inst|inst3|ALT_INV_inst~q\ <= NOT \inst13|inst|inst3|inst~q\;
\inst46|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst8|inst~q\;
\inst10|inst|inst2|ALT_INV_inst~q\ <= NOT \inst10|inst|inst2|inst~q\;
\inst12|inst|inst|ALT_INV_inst~q\ <= NOT \inst12|inst|inst|inst~q\;
\inst45|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst8|inst~q\;
\inst11|inst|inst|ALT_INV_inst~q\ <= NOT \inst11|inst|inst|inst~q\;
\inst|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst8|inst~q\;
\inst86|inst|inst4|ALT_INV_inst~q\ <= NOT \inst86|inst|inst4|inst~q\;
\inst69|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst|inst1|inst8|inst~q\;
\inst3|inst|inst|ALT_INV_inst~q\ <= NOT \inst3|inst|inst|inst~q\;
\inst47|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst|inst1|inst8|inst~q\;
\inst65|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst8|inst~q\;
\inst48|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst3|inst~q\;
\inst49|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst3|inst~q\;
\inst50|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst3|inst~q\;
\inst23|inst|inst4|ALT_INV_inst10~combout\ <= NOT \inst23|inst|inst4|inst10~combout\;
\inst51|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst3|inst~q\;
\inst13|inst|inst4|ALT_INV_inst~q\ <= NOT \inst13|inst|inst4|inst~q\;
\inst46|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst2|inst~q\;
\inst10|inst|inst3|ALT_INV_inst~q\ <= NOT \inst10|inst|inst3|inst~q\;
\inst12|inst|inst2|ALT_INV_inst~q\ <= NOT \inst12|inst|inst2|inst~q\;
\inst45|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst2|inst~q\;
\inst11|inst|inst2|ALT_INV_inst~q\ <= NOT \inst11|inst|inst2|inst~q\;
\inst|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst2|inst~q\;
\inst86|inst|inst5|ALT_INV_inst~q\ <= NOT \inst86|inst|inst5|inst~q\;
\inst69|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst2|inst~q\;
\inst3|inst|inst2|ALT_INV_inst~q\ <= NOT \inst3|inst|inst2|inst~q\;
\inst47|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst2|inst~q\;
\inst83|inst|inst|ALT_INV_inst~q\ <= NOT \inst83|inst|inst|inst~q\;
\inst65|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst2|inst~q\;
\inst48|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst7|inst~q\;
\inst49|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst7|inst~q\;
\inst50|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst7|inst~q\;
\inst51|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst7|inst~q\;
\inst13|inst|inst5|ALT_INV_inst~q\ <= NOT \inst13|inst|inst5|inst~q\;
\inst46|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst3|inst~q\;
\inst10|inst|inst4|ALT_INV_inst~q\ <= NOT \inst10|inst|inst4|inst~q\;
\inst12|inst|inst3|ALT_INV_inst~q\ <= NOT \inst12|inst|inst3|inst~q\;
\inst45|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst3|inst~q\;
\inst11|inst|inst3|ALT_INV_inst~q\ <= NOT \inst11|inst|inst3|inst~q\;
\inst|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst3|inst~q\;
\inst86|inst|inst6|ALT_INV_inst~q\ <= NOT \inst86|inst|inst6|inst~q\;
\inst69|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst3|inst~q\;
\inst3|inst|inst3|ALT_INV_inst~q\ <= NOT \inst3|inst|inst3|inst~q\;
\inst47|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst3|inst~q\;
\inst83|inst|inst2|ALT_INV_inst~q\ <= NOT \inst83|inst|inst2|inst~q\;
\inst65|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst3|inst~q\;
\inst48|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst8|inst~q\;
\inst49|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst8|inst~q\;
\inst50|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst8|inst~q\;
\inst51|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst8|inst~q\;
\inst13|inst|inst6|ALT_INV_inst~q\ <= NOT \inst13|inst|inst6|inst~q\;
\inst46|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst7|inst~q\;
\inst10|inst|inst5|ALT_INV_inst~q\ <= NOT \inst10|inst|inst5|inst~q\;
\inst12|inst|inst4|ALT_INV_inst~q\ <= NOT \inst12|inst|inst4|inst~q\;
\inst45|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst7|inst~q\;
\inst11|inst|inst4|ALT_INV_inst~q\ <= NOT \inst11|inst|inst4|inst~q\;
\inst|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst7|inst~q\;
\inst86|inst|inst7|ALT_INV_inst~q\ <= NOT \inst86|inst|inst7|inst~q\;
\inst69|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst7|inst~q\;
\inst3|inst|inst4|ALT_INV_inst~q\ <= NOT \inst3|inst|inst4|inst~q\;
\inst47|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst7|inst~q\;
\inst83|inst|inst3|ALT_INV_inst~q\ <= NOT \inst83|inst|inst3|inst~q\;
\inst65|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst7|inst~q\;
\inst13|inst|inst7|ALT_INV_inst~q\ <= NOT \inst13|inst|inst7|inst~q\;
\inst46|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst8|inst~q\;
\inst10|inst|inst6|ALT_INV_inst~q\ <= NOT \inst10|inst|inst6|inst~q\;
\inst12|inst|inst5|ALT_INV_inst~q\ <= NOT \inst12|inst|inst5|inst~q\;
\inst45|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst8|inst~q\;
\inst11|inst|inst5|ALT_INV_inst~q\ <= NOT \inst11|inst|inst5|inst~q\;
\inst|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst|inst31|inst8|inst~q\;
\inst69|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst8|inst~q\;
\inst3|inst|inst5|ALT_INV_inst~q\ <= NOT \inst3|inst|inst5|inst~q\;
\inst47|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst8|inst~q\;
\inst83|inst|inst4|ALT_INV_inst~q\ <= NOT \inst83|inst|inst4|inst~q\;
\inst65|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst8|inst~q\;
\inst48|inst24|inst4|ALT_INV_inst10~combout\ <= NOT \inst48|inst24|inst4|inst10~combout\;
\inst49|inst24|inst4|ALT_INV_inst10~combout\ <= NOT \inst49|inst24|inst4|inst10~combout\;
\inst50|inst24|inst4|ALT_INV_inst10~combout\ <= NOT \inst50|inst24|inst4|inst10~combout\;
\inst51|inst24|inst4|ALT_INV_inst10~combout\ <= NOT \inst51|inst24|inst4|inst10~combout\;
\inst46|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst9|inst~q\;
\inst10|inst|inst7|ALT_INV_inst~q\ <= NOT \inst10|inst|inst7|inst~q\;
\inst12|inst|inst6|ALT_INV_inst~q\ <= NOT \inst12|inst|inst6|inst~q\;
\inst45|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst9|inst~q\;
\inst11|inst|inst6|ALT_INV_inst~q\ <= NOT \inst11|inst|inst6|inst~q\;
\inst|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst|inst31|inst9|inst~q\;
\inst86|inst2|ALT_INV_inst~q\ <= NOT \inst86|inst2|inst~q\;
\inst69|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst69|inst31|inst9|inst~q\;
\inst3|inst|inst6|ALT_INV_inst~q\ <= NOT \inst3|inst|inst6|inst~q\;
\inst47|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst47|inst31|inst9|inst~q\;
\inst83|inst|inst5|ALT_INV_inst~q\ <= NOT \inst83|inst|inst5|inst~q\;
\inst65|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst9|inst~q\;
\inst89|ALT_INV_inst10~combout\ <= NOT \inst89|inst10~combout\;
\inst13|inst3|ALT_INV_inst~q\ <= NOT \inst13|inst3|inst~q\;
\inst12|inst|inst7|ALT_INV_inst~q\ <= NOT \inst12|inst|inst7|inst~q\;
\inst11|inst|inst7|ALT_INV_inst~q\ <= NOT \inst11|inst|inst7|inst~q\;
\inst86|inst3|ALT_INV_inst~q\ <= NOT \inst86|inst3|inst~q\;
\inst3|inst|inst7|ALT_INV_inst~q\ <= NOT \inst3|inst|inst7|inst~q\;
\inst83|inst|inst6|ALT_INV_inst~q\ <= NOT \inst83|inst|inst6|inst~q\;
\inst13|inst4|ALT_INV_inst~q\ <= NOT \inst13|inst4|inst~q\;
\inst46|inst31|inst4|ALT_INV_inst10~combout\ <= NOT \inst46|inst31|inst4|inst10~combout\;
\inst10|inst3|ALT_INV_inst~q\ <= NOT \inst10|inst3|inst~q\;
\inst45|inst31|inst4|ALT_INV_inst10~combout\ <= NOT \inst45|inst31|inst4|inst10~combout\;
\inst|inst31|inst4|ALT_INV_inst10~combout\ <= NOT \inst|inst31|inst4|inst10~combout\;
\inst86|inst7|ALT_INV_inst~q\ <= NOT \inst86|inst7|inst~q\;
\inst69|inst31|inst4|ALT_INV_inst10~combout\ <= NOT \inst69|inst31|inst4|inst10~combout\;
\inst47|inst31|inst4|ALT_INV_inst10~combout\ <= NOT \inst47|inst31|inst4|inst10~combout\;
\inst83|inst|inst7|ALT_INV_inst~q\ <= NOT \inst83|inst|inst7|inst~q\;
\inst65|inst31|inst4|ALT_INV_inst10~combout\ <= NOT \inst65|inst31|inst4|inst10~combout\;
\inst48|inst25|ALT_INV_inst~q\ <= NOT \inst48|inst25|inst~q\;
\inst49|inst25|ALT_INV_inst~q\ <= NOT \inst49|inst25|inst~q\;
\inst50|inst25|ALT_INV_inst~q\ <= NOT \inst50|inst25|inst~q\;
\inst89|ALT_INV_inst4~q\ <= NOT \inst89|inst4~q\;
\inst51|inst25|ALT_INV_inst~q\ <= NOT \inst51|inst25|inst~q\;
\inst13|inst2|ALT_INV_inst~q\ <= NOT \inst13|inst2|inst~q\;
\inst10|inst4|ALT_INV_inst~q\ <= NOT \inst10|inst4|inst~q\;
\inst12|inst2|ALT_INV_inst~q\ <= NOT \inst12|inst2|inst~q\;
\inst11|inst2|ALT_INV_inst~q\ <= NOT \inst11|inst2|inst~q\;
\inst86|inst8|ALT_INV_inst~q\ <= NOT \inst86|inst8|inst~q\;
\inst3|inst2|ALT_INV_inst~q\ <= NOT \inst3|inst2|inst~q\;
\inst44|inst25|ALT_INV_inst~q\ <= NOT \inst44|inst25|inst~q\;
\inst44|inst26|ALT_INV_inst~q\ <= NOT \inst44|inst26|inst~q\;
\inst90|inst|ALT_INV_inst12~combout\ <= NOT \inst90|inst|inst12~combout\;
\inst13|inst7|ALT_INV_inst10~combout\ <= NOT \inst13|inst7|inst10~combout\;
\inst46|inst17|ALT_INV_inst~q\ <= NOT \inst46|inst17|inst~q\;
\inst10|inst2|ALT_INV_inst10~combout\ <= NOT \inst10|inst2|inst10~combout\;
\inst12|inst3|ALT_INV_inst10~combout\ <= NOT \inst12|inst3|inst10~combout\;
\inst45|inst17|ALT_INV_inst~q\ <= NOT \inst45|inst17|inst~q\;
\inst11|inst1|ALT_INV_inst10~combout\ <= NOT \inst11|inst1|inst10~combout\;
\inst|inst17|ALT_INV_inst~q\ <= NOT \inst|inst17|inst~q\;
\inst86|inst4|ALT_INV_inst10~combout\ <= NOT \inst86|inst4|inst10~combout\;
\inst69|inst17|ALT_INV_inst~q\ <= NOT \inst69|inst17|inst~q\;
\inst69|inst7|ALT_INV_inst~q\ <= NOT \inst69|inst7|inst~q\;
\inst3|inst3|ALT_INV_inst10~combout\ <= NOT \inst3|inst3|inst10~combout\;
\inst47|inst17|ALT_INV_inst~q\ <= NOT \inst47|inst17|inst~q\;
\inst90|inst|inst1|ALT_INV_inst~q\ <= NOT \inst90|inst|inst1|inst~q\;
\inst83|inst2|ALT_INV_inst10~combout\ <= NOT \inst83|inst2|inst10~combout\;
\inst65|inst17|ALT_INV_inst~q\ <= NOT \inst65|inst17|inst~q\;
\inst65|inst7|ALT_INV_inst~q\ <= NOT \inst65|inst7|inst~q\;
\inst45|inst7|ALT_INV_inst~q\ <= NOT \inst45|inst7|inst~q\;
\inst5|inst19|ALT_INV_inst~q\ <= NOT \inst5|inst19|inst~q\;
\inst46|inst3|ALT_INV_inst~q\ <= NOT \inst46|inst3|inst~q\;
\inst5|inst18|ALT_INV_inst~q\ <= NOT \inst5|inst18|inst~q\;
\inst45|inst3|ALT_INV_inst~q\ <= NOT \inst45|inst3|inst~q\;
\inst5|inst17|ALT_INV_inst~q\ <= NOT \inst5|inst17|inst~q\;
\inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst3|inst~q\;
\inst5|inst8|ALT_INV_inst~q\ <= NOT \inst5|inst8|inst~q\;
\inst69|inst3|ALT_INV_inst~q\ <= NOT \inst69|inst3|inst~q\;
\inst5|inst9|ALT_INV_inst~q\ <= NOT \inst5|inst9|inst~q\;
\inst47|inst3|ALT_INV_inst~q\ <= NOT \inst47|inst3|inst~q\;
\inst5|inst7|ALT_INV_inst~q\ <= NOT \inst5|inst7|inst~q\;
\inst65|inst3|ALT_INV_inst~q\ <= NOT \inst65|inst3|inst~q\;
\inst47|ALT_INV_inst2~q\ <= NOT \inst47|inst2~q\;
\inst|ALT_INV_inst2~q\ <= NOT \inst|inst2~q\;
\inst45|ALT_INV_inst2~q\ <= NOT \inst45|inst2~q\;
\inst46|ALT_INV_inst2~q\ <= NOT \inst46|inst2~q\;
\ALT_INV_inst82~clkctrl_outclk\ <= NOT \inst82~clkctrl_outclk\;
\ALT_INV_inst80~clkctrl_outclk\ <= NOT \inst80~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N2
\beep~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~combout\,
	devoe => ww_devoe,
	o => \beep~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst46|ALT_INV_inst2~q\,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45|ALT_INV_inst2~q\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst2~q\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|ALT_INV_inst2~q\,
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

-- Location: CLKCTRL_G2
\FPGA_CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FPGA_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FPGA_CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y7_N30
\inst3|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst|inst~0_combout\ = !\inst3|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|inst|inst~q\,
	combout => \inst3|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X30_Y7_N20
\inst3|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst|inst~feeder_combout\ = \inst3|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|inst|inst~0_combout\,
	combout => \inst3|inst|inst|inst~feeder_combout\);

-- Location: FF_X30_Y7_N21
\inst3|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst3|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst|inst~q\);

-- Location: LCCOMB_X30_Y7_N18
\inst3|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst2|inst~0_combout\ = !\inst3|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|inst2|inst~q\,
	combout => \inst3|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X30_Y7_N22
\inst3|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst2|inst~feeder_combout\ = \inst3|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst2|inst~0_combout\,
	combout => \inst3|inst|inst2|inst~feeder_combout\);

-- Location: FF_X30_Y7_N23
\inst3|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst|ALT_INV_inst~q\,
	d => \inst3|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst2|inst~q\);

-- Location: LCCOMB_X29_Y7_N26
\inst3|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3|inst~0_combout\ = !\inst3|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst3|inst~q\,
	combout => \inst3|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X29_Y7_N8
\inst3|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3|inst~feeder_combout\ = \inst3|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst3|inst~0_combout\,
	combout => \inst3|inst|inst3|inst~feeder_combout\);

-- Location: FF_X29_Y7_N9
\inst3|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst2|ALT_INV_inst~q\,
	d => \inst3|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst3|inst~q\);

-- Location: LCCOMB_X29_Y7_N28
\inst3|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst4|inst~0_combout\ = !\inst3|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst4|inst~q\,
	combout => \inst3|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X29_Y7_N16
\inst3|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst4|inst~feeder_combout\ = \inst3|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|inst4|inst~0_combout\,
	combout => \inst3|inst|inst4|inst~feeder_combout\);

-- Location: FF_X29_Y7_N17
\inst3|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst3|ALT_INV_inst~q\,
	d => \inst3|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst4|inst~q\);

-- Location: LCCOMB_X26_Y7_N12
\inst3|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst5|inst~0_combout\ = !\inst3|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst5|inst~q\,
	combout => \inst3|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X26_Y7_N20
\inst3|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst5|inst~feeder_combout\ = \inst3|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst5|inst~0_combout\,
	combout => \inst3|inst|inst5|inst~feeder_combout\);

-- Location: FF_X26_Y7_N21
\inst3|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst4|ALT_INV_inst~q\,
	d => \inst3|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst5|inst~q\);

-- Location: LCCOMB_X26_Y7_N28
\inst3|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst6|inst~0_combout\ = !\inst3|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst6|inst~q\,
	combout => \inst3|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X26_Y7_N16
\inst3|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst6|inst~feeder_combout\ = \inst3|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|inst6|inst~0_combout\,
	combout => \inst3|inst|inst6|inst~feeder_combout\);

-- Location: FF_X26_Y7_N17
\inst3|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst5|ALT_INV_inst~q\,
	d => \inst3|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst6|inst~q\);

-- Location: LCCOMB_X25_Y7_N26
\inst3|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst7|inst~0_combout\ = !\inst3|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst7|inst~q\,
	combout => \inst3|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X25_Y7_N20
\inst3|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst7|inst~feeder_combout\ = \inst3|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst7|inst~0_combout\,
	combout => \inst3|inst|inst7|inst~feeder_combout\);

-- Location: FF_X25_Y7_N21
\inst3|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst6|ALT_INV_inst~q\,
	d => \inst3|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst7|inst~q\);

-- Location: LCCOMB_X25_Y7_N30
\inst3|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst8|inst~0_combout\ = !\inst3|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst8|inst~q\,
	combout => \inst3|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X25_Y7_N0
\inst3|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst8|inst~feeder_combout\ = \inst3|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|inst8|inst~0_combout\,
	combout => \inst3|inst|inst8|inst~feeder_combout\);

-- Location: FF_X25_Y7_N1
\inst3|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst7|ALT_INV_inst~q\,
	d => \inst3|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst8|inst~q\);

-- Location: LCCOMB_X25_Y8_N10
\inst3|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst~0_combout\ = !\inst3|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst2|inst~q\,
	combout => \inst3|inst2|inst~0_combout\);

-- Location: LCCOMB_X25_Y8_N18
\inst3|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst~feeder_combout\ = \inst3|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst2|inst~0_combout\,
	combout => \inst3|inst2|inst~feeder_combout\);

-- Location: FF_X25_Y8_N19
\inst3|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst8|inst~q\,
	d => \inst3|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst~q\);

-- Location: LCCOMB_X25_Y8_N4
\inst3|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|inst~0_combout\ = !\inst3|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|inst~q\,
	combout => \inst3|inst9|inst~0_combout\);

-- Location: LCCOMB_X25_Y8_N16
\inst3|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|inst~feeder_combout\ = \inst3|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst9|inst~0_combout\,
	combout => \inst3|inst9|inst~feeder_combout\);

-- Location: FF_X25_Y8_N17
\inst3|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst2|ALT_INV_inst~q\,
	d => \inst3|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|inst~q\);

-- Location: LCCOMB_X24_Y8_N24
\inst3|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst~0_combout\ = !\inst3|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst3|inst~q\,
	combout => \inst3|inst3|inst~0_combout\);

-- Location: LCCOMB_X24_Y8_N16
\inst3|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst~feeder_combout\ = \inst3|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst3|inst~0_combout\,
	combout => \inst3|inst3|inst~feeder_combout\);

-- Location: FF_X24_Y8_N17
\inst3|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst3|inst~feeder_combout\,
	clrn => \inst3|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst~q\);

-- Location: LCCOMB_X24_Y8_N2
\inst3|inst3|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst7~0_combout\ = \inst3|inst3|inst~q\ $ (\inst3|inst3|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst~q\,
	datac => \inst3|inst3|inst7~q\,
	combout => \inst3|inst3|inst7~0_combout\);

-- Location: LCCOMB_X24_Y8_N4
\inst3|inst3|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst7~feeder_combout\ = \inst3|inst3|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst3|inst7~0_combout\,
	combout => \inst3|inst3|inst7~feeder_combout\);

-- Location: FF_X24_Y8_N5
\inst3|inst3|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst3|inst7~feeder_combout\,
	clrn => \inst3|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst7~q\);

-- Location: LCCOMB_X24_Y8_N28
\inst3|inst3|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst8~0_combout\ = \inst3|inst3|inst8~q\ $ (((\inst3|inst3|inst~q\ & \inst3|inst3|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst~q\,
	datac => \inst3|inst3|inst8~q\,
	datad => \inst3|inst3|inst7~q\,
	combout => \inst3|inst3|inst8~0_combout\);

-- Location: FF_X24_Y8_N29
\inst3|inst3|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst3|inst8~0_combout\,
	clrn => \inst3|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst8~q\);

-- Location: LCCOMB_X24_Y8_N22
\inst3|inst3|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst9~0_combout\ = \inst3|inst3|inst9~q\ $ (((\inst3|inst3|inst~q\ & (\inst3|inst3|inst8~q\ & \inst3|inst3|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst~q\,
	datab => \inst3|inst3|inst8~q\,
	datac => \inst3|inst3|inst9~q\,
	datad => \inst3|inst3|inst7~q\,
	combout => \inst3|inst3|inst9~0_combout\);

-- Location: FF_X24_Y8_N23
\inst3|inst3|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst3|inst9~0_combout\,
	clrn => \inst3|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst9~q\);

-- Location: LCCOMB_X24_Y8_N30
\inst3|inst3|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst10~0_combout\ = (\inst3|inst3|inst9~q\ & (\inst3|inst3|inst8~q\ & (\inst3|inst3|inst7~q\ & \inst3|inst3|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst9~q\,
	datab => \inst3|inst3|inst8~q\,
	datac => \inst3|inst3|inst7~q\,
	datad => \inst3|inst3|inst~q\,
	combout => \inst3|inst3|inst10~0_combout\);

-- Location: LCCOMB_X24_Y8_N26
\inst3|inst3|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst14~0_combout\ = \inst3|inst3|inst14~q\ $ (\inst3|inst3|inst10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst3|inst14~q\,
	datad => \inst3|inst3|inst10~0_combout\,
	combout => \inst3|inst3|inst14~0_combout\);

-- Location: FF_X24_Y8_N27
\inst3|inst3|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst3|inst14~0_combout\,
	clrn => \inst3|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst14~q\);

-- Location: LCCOMB_X24_Y8_N12
\inst3|inst3|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst17~0_combout\ = \inst3|inst3|inst17~q\ $ (((\inst3|inst3|inst14~q\ & \inst3|inst3|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst14~q\,
	datac => \inst3|inst3|inst17~q\,
	datad => \inst3|inst3|inst10~0_combout\,
	combout => \inst3|inst3|inst17~0_combout\);

-- Location: FF_X24_Y8_N13
\inst3|inst3|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst3|inst17~0_combout\,
	clrn => \inst3|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst17~q\);

-- Location: LCCOMB_X24_Y8_N14
\inst3|inst3|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst19~0_combout\ = \inst3|inst3|inst19~q\ $ (((\inst3|inst3|inst14~q\ & (\inst3|inst3|inst10~0_combout\ & \inst3|inst3|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst14~q\,
	datab => \inst3|inst3|inst10~0_combout\,
	datac => \inst3|inst3|inst19~q\,
	datad => \inst3|inst3|inst17~q\,
	combout => \inst3|inst3|inst19~0_combout\);

-- Location: FF_X24_Y8_N15
\inst3|inst3|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst3|inst19~0_combout\,
	clrn => \inst3|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst19~q\);

-- Location: LCCOMB_X24_Y8_N18
\inst3|inst3|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst21~0_combout\ = (!\inst3|inst3|inst17~q\) # (!\inst3|inst3|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst3|inst19~q\,
	datad => \inst3|inst3|inst17~q\,
	combout => \inst3|inst3|inst21~0_combout\);

-- Location: LCCOMB_X24_Y8_N10
\inst3|inst3|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst21~1_combout\ = \inst3|inst3|inst21~q\ $ (((\inst3|inst3|inst14~q\ & (\inst3|inst3|inst10~0_combout\ & !\inst3|inst3|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst14~q\,
	datab => \inst3|inst3|inst10~0_combout\,
	datac => \inst3|inst3|inst21~q\,
	datad => \inst3|inst3|inst21~0_combout\,
	combout => \inst3|inst3|inst21~1_combout\);

-- Location: FF_X24_Y8_N11
\inst3|inst3|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst3|inst21~1_combout\,
	clrn => \inst3|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst21~q\);

-- Location: LCCOMB_X24_Y8_N20
\inst3|inst3|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst10~1_combout\ = (\inst3|inst3|inst17~q\ & (!\inst3|inst3|inst19~q\ & (!\inst3|inst3|inst14~q\ & !\inst3|inst3|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst17~q\,
	datab => \inst3|inst3|inst19~q\,
	datac => \inst3|inst3|inst14~q\,
	datad => \inst3|inst3|inst21~q\,
	combout => \inst3|inst3|inst10~1_combout\);

-- Location: LCCOMB_X24_Y8_N6
\inst3|inst3|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst10~combout\ = LCELL((\inst3|inst3|inst10~0_combout\ & \inst3|inst3|inst10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst3|inst10~0_combout\,
	datad => \inst3|inst3|inst10~1_combout\,
	combout => \inst3|inst3|inst10~combout\);

-- Location: LCCOMB_X24_Y8_N8
\inst3|inst3|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst3|inst4~0_combout\ = !\inst3|inst3|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst3|inst4~q\,
	combout => \inst3|inst3|inst4~0_combout\);

-- Location: FF_X24_Y8_N9
\inst3|inst3|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst3|inst10~combout\,
	d => \inst3|inst3|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst4~q\);

-- Location: LCCOMB_X18_Y20_N18
\inst48|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst|inst~0_combout\ = !\inst48|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst|inst~q\,
	combout => \inst48|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X18_Y20_N4
\inst48|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst|inst~feeder_combout\ = \inst48|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst|inst|inst~0_combout\,
	combout => \inst48|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X18_Y20_N5
\inst48|inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst48|inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X18_Y20_N10
\inst48|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst2|inst~0_combout\ = !\inst48|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst2|inst~q\,
	combout => \inst48|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X18_Y20_N2
\inst48|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst2|inst~feeder_combout\ = \inst48|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst2|inst~0_combout\,
	combout => \inst48|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X18_Y20_N3
\inst48|inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst48|inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X17_Y20_N18
\inst48|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst3|inst~0_combout\ = !\inst48|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst|inst3|inst~q\,
	combout => \inst48|inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X17_Y20_N16
\inst48|inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst3|inst~feeder_combout\ = \inst48|inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst|inst3|inst~0_combout\,
	combout => \inst48|inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X17_Y20_N17
\inst48|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst|inst2|ALT_INV_inst~q\,
	d => \inst48|inst24|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X17_Y20_N28
\inst48|inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst4|inst~0_combout\ = !\inst48|inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst4|inst~q\,
	combout => \inst48|inst24|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X17_Y20_N4
\inst48|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst4|inst~feeder_combout\ = \inst48|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst4|inst~0_combout\,
	combout => \inst48|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X17_Y20_N5
\inst48|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst|inst3|ALT_INV_inst~q\,
	d => \inst48|inst24|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X13_Y20_N18
\inst48|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst5|inst~0_combout\ = !\inst48|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst|inst5|inst~q\,
	combout => \inst48|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X13_Y20_N30
\inst48|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst5|inst~feeder_combout\ = \inst48|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst5|inst~0_combout\,
	combout => \inst48|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X13_Y20_N31
\inst48|inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst|inst4|ALT_INV_inst~q\,
	d => \inst48|inst24|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X13_Y20_N16
\inst48|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst6|inst~0_combout\ = !\inst48|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst6|inst~q\,
	combout => \inst48|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X13_Y20_N28
\inst48|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst6|inst~feeder_combout\ = \inst48|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst|inst6|inst~0_combout\,
	combout => \inst48|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X13_Y20_N29
\inst48|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst48|inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X14_Y18_N20
\inst48|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst7|inst~0_combout\ = !\inst48|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst7|inst~q\,
	combout => \inst48|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X14_Y18_N24
\inst48|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst7|inst~feeder_combout\ = \inst48|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst|inst7|inst~0_combout\,
	combout => \inst48|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X14_Y18_N25
\inst48|inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst|inst6|ALT_INV_inst~q\,
	d => \inst48|inst24|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X14_Y18_N28
\inst48|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst8|inst~0_combout\ = !\inst48|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst|inst8|inst~q\,
	combout => \inst48|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X14_Y18_N16
\inst48|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst8|inst~feeder_combout\ = \inst48|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst8|inst~0_combout\,
	combout => \inst48|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X14_Y18_N17
\inst48|inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst48|inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X13_Y14_N30
\inst48|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst2|inst~0_combout\ = !\inst48|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst2|inst~q\,
	combout => \inst48|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X13_Y14_N20
\inst48|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst2|inst~feeder_combout\ = \inst48|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst2|inst~0_combout\,
	combout => \inst48|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X13_Y14_N21
\inst48|inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst|inst8|inst~q\,
	d => \inst48|inst24|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst2|inst~q\);

-- Location: LCCOMB_X13_Y14_N28
\inst48|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst3|inst~0_combout\ = !\inst48|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst3|inst~q\,
	combout => \inst48|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X13_Y14_N22
\inst48|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst3|inst~feeder_combout\ = \inst48|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst3|inst~0_combout\,
	combout => \inst48|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X13_Y14_N23
\inst48|inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst2|ALT_INV_inst~q\,
	d => \inst48|inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst3|inst~q\);

-- Location: LCCOMB_X12_Y14_N18
\inst48|inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst7|inst~0_combout\ = !\inst48|inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst7|inst~q\,
	combout => \inst48|inst24|inst7|inst~0_combout\);

-- Location: LCCOMB_X12_Y14_N20
\inst48|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst7|inst~feeder_combout\ = \inst48|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst7|inst~0_combout\,
	combout => \inst48|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X12_Y14_N21
\inst48|inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst3|ALT_INV_inst~q\,
	d => \inst48|inst24|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst7|inst~q\);

-- Location: LCCOMB_X12_Y14_N28
\inst48|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst8|inst~0_combout\ = !\inst48|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst8|inst~q\,
	combout => \inst48|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X12_Y14_N14
\inst48|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst8|inst~feeder_combout\ = \inst48|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst8|inst~0_combout\,
	combout => \inst48|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X12_Y14_N15
\inst48|inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst7|ALT_INV_inst~q\,
	d => \inst48|inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst8|inst~q\);

-- Location: LCCOMB_X11_Y14_N26
\inst48|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst9|inst~0_combout\ = !\inst48|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst9|inst~q\,
	combout => \inst48|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X11_Y14_N12
\inst48|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst9|inst~feeder_combout\ = \inst48|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst9|inst~0_combout\,
	combout => \inst48|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X11_Y14_N13
\inst48|inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst8|ALT_INV_inst~q\,
	d => \inst48|inst24|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst9|inst~q\);

-- Location: LCCOMB_X10_Y12_N28
\inst48|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst~0_combout\ = !\inst48|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst~q\,
	combout => \inst48|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X10_Y12_N10
\inst48|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst~feeder_combout\ = \inst48|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst4|inst~0_combout\,
	combout => \inst48|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X10_Y12_N11
\inst48|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst~feeder_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst~q\);

-- Location: LCCOMB_X10_Y12_N12
\inst48|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst7~0_combout\ = \inst48|inst24|inst4|inst~q\ $ (\inst48|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst~q\,
	datac => \inst48|inst24|inst4|inst7~q\,
	combout => \inst48|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X10_Y12_N8
\inst48|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst7~feeder_combout\ = \inst48|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst7~0_combout\,
	combout => \inst48|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X10_Y12_N9
\inst48|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X10_Y12_N30
\inst48|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst8~0_combout\ = \inst48|inst24|inst4|inst8~q\ $ (((\inst48|inst24|inst4|inst~q\ & \inst48|inst24|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst~q\,
	datac => \inst48|inst24|inst4|inst8~q\,
	datad => \inst48|inst24|inst4|inst7~q\,
	combout => \inst48|inst24|inst4|inst8~0_combout\);

-- Location: FF_X10_Y12_N31
\inst48|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst8~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X10_Y12_N6
\inst48|inst24|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst10~0_combout\ = (\inst48|inst24|inst4|inst8~q\ & (\inst48|inst24|inst4|inst7~q\ & \inst48|inst24|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst8~q\,
	datac => \inst48|inst24|inst4|inst7~q\,
	datad => \inst48|inst24|inst4|inst~q\,
	combout => \inst48|inst24|inst4|inst10~0_combout\);

-- Location: LCCOMB_X10_Y12_N2
\inst48|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst9~0_combout\ = \inst48|inst24|inst4|inst9~q\ $ (((\inst48|inst24|inst4|inst~q\ & (\inst48|inst24|inst4|inst7~q\ & \inst48|inst24|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst~q\,
	datab => \inst48|inst24|inst4|inst7~q\,
	datac => \inst48|inst24|inst4|inst9~q\,
	datad => \inst48|inst24|inst4|inst8~q\,
	combout => \inst48|inst24|inst4|inst9~0_combout\);

-- Location: FF_X10_Y12_N3
\inst48|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst9~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X10_Y12_N24
\inst48|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst14~0_combout\ = \inst48|inst24|inst4|inst14~q\ $ (((\inst48|inst24|inst4|inst10~0_combout\ & \inst48|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst10~0_combout\,
	datac => \inst48|inst24|inst4|inst14~q\,
	datad => \inst48|inst24|inst4|inst9~q\,
	combout => \inst48|inst24|inst4|inst14~0_combout\);

-- Location: FF_X10_Y12_N25
\inst48|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst14~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X10_Y12_N26
\inst48|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst17~0_combout\ = \inst48|inst24|inst4|inst17~q\ $ (((\inst48|inst24|inst4|inst10~0_combout\ & (\inst48|inst24|inst4|inst14~q\ & \inst48|inst24|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst10~0_combout\,
	datab => \inst48|inst24|inst4|inst14~q\,
	datac => \inst48|inst24|inst4|inst17~q\,
	datad => \inst48|inst24|inst4|inst9~q\,
	combout => \inst48|inst24|inst4|inst17~0_combout\);

-- Location: FF_X10_Y12_N27
\inst48|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst17~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X10_Y12_N16
\inst48|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst18~combout\ = (\inst48|inst24|inst4|inst10~0_combout\ & (\inst48|inst24|inst4|inst9~q\ & (\inst48|inst24|inst4|inst17~q\ & \inst48|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst10~0_combout\,
	datab => \inst48|inst24|inst4|inst9~q\,
	datac => \inst48|inst24|inst4|inst17~q\,
	datad => \inst48|inst24|inst4|inst14~q\,
	combout => \inst48|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X10_Y12_N22
\inst48|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst19~0_combout\ = \inst48|inst24|inst4|inst18~combout\ $ (\inst48|inst24|inst4|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst18~combout\,
	datac => \inst48|inst24|inst4|inst19~q\,
	combout => \inst48|inst24|inst4|inst19~0_combout\);

-- Location: FF_X10_Y12_N23
\inst48|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst19~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X10_Y12_N20
\inst48|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst21~0_combout\ = ((!\inst48|inst24|inst4|inst9~q\) # (!\inst48|inst24|inst4|inst17~q\)) # (!\inst48|inst24|inst4|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst14~q\,
	datac => \inst48|inst24|inst4|inst17~q\,
	datad => \inst48|inst24|inst4|inst9~q\,
	combout => \inst48|inst24|inst4|inst21~0_combout\);

-- Location: LCCOMB_X10_Y12_N14
\inst48|inst24|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst21~1_combout\ = \inst48|inst24|inst4|inst21~q\ $ (((\inst48|inst24|inst4|inst19~q\ & (\inst48|inst24|inst4|inst10~0_combout\ & !\inst48|inst24|inst4|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst19~q\,
	datab => \inst48|inst24|inst4|inst10~0_combout\,
	datac => \inst48|inst24|inst4|inst21~q\,
	datad => \inst48|inst24|inst4|inst21~0_combout\,
	combout => \inst48|inst24|inst4|inst21~1_combout\);

-- Location: FF_X10_Y12_N15
\inst48|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst21~1_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X10_Y12_N4
\inst48|inst24|inst4|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst10~1_combout\ = (!\inst48|inst24|inst4|inst19~q\ & (!\inst48|inst24|inst4|inst14~q\ & (!\inst48|inst24|inst4|inst17~q\ & !\inst48|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst19~q\,
	datab => \inst48|inst24|inst4|inst14~q\,
	datac => \inst48|inst24|inst4|inst17~q\,
	datad => \inst48|inst24|inst4|inst9~q\,
	combout => \inst48|inst24|inst4|inst10~1_combout\);

-- Location: LCCOMB_X10_Y12_N0
\inst48|inst24|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst10~combout\ = LCELL((!\inst48|inst24|inst4|inst21~q\ & (\inst48|inst24|inst4|inst10~1_combout\ & \inst48|inst24|inst4|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst21~q\,
	datac => \inst48|inst24|inst4|inst10~1_combout\,
	datad => \inst48|inst24|inst4|inst10~0_combout\,
	combout => \inst48|inst24|inst4|inst10~combout\);

-- Location: LCCOMB_X10_Y12_N18
\inst48|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst4~0_combout\ = !\inst48|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst4|inst4~q\,
	combout => \inst48|inst24|inst4|inst4~0_combout\);

-- Location: FF_X10_Y12_N29
\inst48|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst4|inst10~combout\,
	asdata => \inst48|inst24|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X9_Y11_N18
\inst48|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst25|inst~0_combout\ = !\inst48|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst25|inst~q\,
	combout => \inst48|inst25|inst~0_combout\);

-- Location: LCCOMB_X9_Y11_N14
\inst48|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst25|inst~feeder_combout\ = \inst48|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst25|inst~0_combout\,
	combout => \inst48|inst25|inst~feeder_combout\);

-- Location: FF_X9_Y11_N15
\inst48|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst4|inst4~q\,
	d => \inst48|inst25|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst25|inst~q\);

-- Location: LCCOMB_X9_Y11_N4
\inst48|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst26|inst~0_combout\ = !\inst48|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst26|inst~q\,
	combout => \inst48|inst26|inst~0_combout\);

-- Location: LCCOMB_X9_Y11_N16
\inst48|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst26|inst~feeder_combout\ = \inst48|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst26|inst~0_combout\,
	combout => \inst48|inst26|inst~feeder_combout\);

-- Location: FF_X9_Y11_N17
\inst48|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst25|ALT_INV_inst~q\,
	d => \inst48|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst26|inst~q\);

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

-- Location: LCCOMB_X5_Y11_N22
\inst48|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|dasda~0_combout\ = !\KEY1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY1~input_o\,
	combout => \inst48|dasda~0_combout\);

-- Location: FF_X5_Y11_N23
\inst48|dasda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst26|inst~q\,
	d => \inst48|dasda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|dasda~q\);

-- Location: LCCOMB_X5_Y11_N30
\inst48|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst29~feeder_combout\ = \inst48|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48|dasda~q\,
	combout => \inst48|inst29~feeder_combout\);

-- Location: FF_X5_Y11_N31
\inst48|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst26|inst~q\,
	d => \inst48|inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst29~q\);

-- Location: LCCOMB_X5_Y11_N18
\inst48|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst30~feeder_combout\ = \inst48|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst29~q\,
	combout => \inst48|inst30~feeder_combout\);

-- Location: FF_X5_Y11_N19
\inst48|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst26|inst~q\,
	d => \inst48|inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst30~q\);

-- Location: LCCOMB_X5_Y11_N26
\inst48|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst31~feeder_combout\ = \inst48|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48|inst30~q\,
	combout => \inst48|inst31~feeder_combout\);

-- Location: FF_X5_Y11_N27
\inst48|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst26|inst~q\,
	d => \inst48|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst31~q\);

-- Location: LCCOMB_X5_Y11_N28
\inst48|inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst32~feeder_combout\ = \inst48|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst31~q\,
	combout => \inst48|inst32~feeder_combout\);

-- Location: FF_X5_Y11_N29
\inst48|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst26|inst~q\,
	d => \inst48|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst32~q\);

-- Location: LCCOMB_X5_Y11_N16
\inst48|inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst33~feeder_combout\ = \inst48|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48|inst32~q\,
	combout => \inst48|inst33~feeder_combout\);

-- Location: FF_X5_Y11_N17
\inst48|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst26|inst~q\,
	d => \inst48|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst33~q\);

-- Location: LCCOMB_X5_Y11_N6
\inst48|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst23~feeder_combout\ = \inst48|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48|inst33~q\,
	combout => \inst48|inst23~feeder_combout\);

-- Location: FF_X5_Y11_N7
\inst48|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst26|inst~q\,
	d => \inst48|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst23~q\);

-- Location: FF_X5_Y11_N15
\inst48|1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst26|inst~q\,
	asdata => \inst48|inst23~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|1231~q\);

-- Location: LCCOMB_X5_Y11_N14
\inst48|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst36~1_combout\ = (\inst48|inst23~q\ & (\inst48|inst33~q\ & (\inst48|1231~q\ & \inst48|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst23~q\,
	datab => \inst48|inst33~q\,
	datac => \inst48|1231~q\,
	datad => \inst48|inst32~q\,
	combout => \inst48|inst36~1_combout\);

-- Location: LCCOMB_X5_Y11_N24
\inst48|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst36~0_combout\ = (\inst48|inst31~q\ & (\inst48|inst30~q\ & (\inst48|inst29~q\ & \inst48|dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst31~q\,
	datab => \inst48|inst30~q\,
	datac => \inst48|inst29~q\,
	datad => \inst48|dasda~q\,
	combout => \inst48|inst36~0_combout\);

-- Location: LCCOMB_X5_Y11_N20
\inst48|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst36~combout\ = LCELL((\inst48|inst36~1_combout\ & \inst48|inst36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst36~1_combout\,
	datad => \inst48|inst36~0_combout\,
	combout => \inst48|inst36~combout\);

-- Location: CLKCTRL_G0
\inst48|inst36~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst48|inst36~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst48|inst36~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y11_N28
\inst47|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst2~0_combout\ = !\inst47|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst47|inst2~q\,
	combout => \inst47|inst2~0_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst47|inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst2~feeder_combout\ = \inst47|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst2~0_combout\,
	combout => \inst47|inst2~feeder_combout\);

-- Location: CLKCTRL_G6
\inst80~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst80~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst80~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y8_N16
\inst90|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst~0_combout\ = !\inst90|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst~q\,
	combout => \inst90|inst|inst~0_combout\);

-- Location: LCCOMB_X18_Y8_N10
\inst90|inst|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst13~combout\ = (\inst90|inst|inst7~q\ & (\inst90|inst|inst~q\ & (\inst90|inst|inst9~q\ & \inst90|inst|inst8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst7~q\,
	datab => \inst90|inst|inst~q\,
	datac => \inst90|inst|inst9~q\,
	datad => \inst90|inst|inst8~q\,
	combout => \inst90|inst|inst13~combout\);

-- Location: LCCOMB_X18_Y8_N24
\inst90|inst|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst14~0_combout\ = \inst90|inst|inst13~combout\ $ (\inst90|inst|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst90|inst|inst13~combout\,
	datac => \inst90|inst|inst14~q\,
	combout => \inst90|inst|inst14~0_combout\);

-- Location: FF_X18_Y8_N25
\inst90|inst|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~combout\,
	d => \inst90|inst|inst14~0_combout\,
	clrn => \inst90|inst|ALT_INV_inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst14~q\);

-- Location: LCCOMB_X18_Y8_N20
\inst90|inst|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst17~0_combout\ = \inst90|inst|inst17~q\ $ (((\inst90|inst|inst14~q\ & \inst90|inst|inst13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst14~q\,
	datab => \inst90|inst|inst13~combout\,
	datac => \inst90|inst|inst17~q\,
	combout => \inst90|inst|inst17~0_combout\);

-- Location: FF_X18_Y8_N21
\inst90|inst|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~combout\,
	d => \inst90|inst|inst17~0_combout\,
	clrn => \inst90|inst|ALT_INV_inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst17~q\);

-- Location: LCCOMB_X18_Y8_N14
\inst90|inst|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst19~0_combout\ = \inst90|inst|inst19~q\ $ (((\inst90|inst|inst14~q\ & (\inst90|inst|inst13~combout\ & \inst90|inst|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst14~q\,
	datab => \inst90|inst|inst13~combout\,
	datac => \inst90|inst|inst19~q\,
	datad => \inst90|inst|inst17~q\,
	combout => \inst90|inst|inst19~0_combout\);

-- Location: FF_X18_Y8_N15
\inst90|inst|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~combout\,
	d => \inst90|inst|inst19~0_combout\,
	clrn => \inst90|inst|ALT_INV_inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst19~q\);

-- Location: LCCOMB_X18_Y8_N12
\inst90|inst|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst10~1_combout\ = (!\inst90|inst|inst9~q\ & (!\inst90|inst|inst17~q\ & (!\inst90|inst|inst19~q\ & \inst90|inst|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst9~q\,
	datab => \inst90|inst|inst17~q\,
	datac => \inst90|inst|inst19~q\,
	datad => \inst90|inst|inst14~q\,
	combout => \inst90|inst|inst10~1_combout\);

-- Location: LCCOMB_X29_Y20_N18
\inst50|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst|inst~0_combout\ = !\inst50|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst|inst|inst~q\,
	combout => \inst50|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\inst50|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst|inst~feeder_combout\ = \inst50|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst|inst|inst~0_combout\,
	combout => \inst50|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X29_Y20_N29
\inst50|inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst50|inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X29_Y20_N4
\inst50|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst2|inst~0_combout\ = !\inst50|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst|inst2|inst~q\,
	combout => \inst50|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X29_Y20_N14
\inst50|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst2|inst~feeder_combout\ = \inst50|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst|inst2|inst~0_combout\,
	combout => \inst50|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X29_Y20_N15
\inst50|inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst50|inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X28_Y20_N28
\inst50|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst3|inst~0_combout\ = !\inst50|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst|inst3|inst~q\,
	combout => \inst50|inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X28_Y20_N24
\inst50|inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst3|inst~feeder_combout\ = \inst50|inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst|inst3|inst~0_combout\,
	combout => \inst50|inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X28_Y20_N25
\inst50|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst|inst2|ALT_INV_inst~q\,
	d => \inst50|inst24|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X28_Y20_N30
\inst50|inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst4|inst~0_combout\ = !\inst50|inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst|inst4|inst~q\,
	combout => \inst50|inst24|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\inst50|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst4|inst~feeder_combout\ = \inst50|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst|inst4|inst~0_combout\,
	combout => \inst50|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X28_Y20_N17
\inst50|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst|inst3|ALT_INV_inst~q\,
	d => \inst50|inst24|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X26_Y20_N28
\inst50|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst5|inst~0_combout\ = !\inst50|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst|inst5|inst~q\,
	combout => \inst50|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X26_Y20_N26
\inst50|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst5|inst~feeder_combout\ = \inst50|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst|inst5|inst~0_combout\,
	combout => \inst50|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X26_Y20_N27
\inst50|inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst|inst4|ALT_INV_inst~q\,
	d => \inst50|inst24|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X26_Y20_N30
\inst50|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst6|inst~0_combout\ = !\inst50|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst|inst6|inst~q\,
	combout => \inst50|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X26_Y20_N14
\inst50|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst6|inst~feeder_combout\ = \inst50|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst|inst6|inst~0_combout\,
	combout => \inst50|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X26_Y20_N15
\inst50|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst50|inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X25_Y20_N22
\inst50|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst7|inst~0_combout\ = !\inst50|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst|inst7|inst~q\,
	combout => \inst50|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X25_Y20_N12
\inst50|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst7|inst~feeder_combout\ = \inst50|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst|inst7|inst~0_combout\,
	combout => \inst50|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X25_Y20_N13
\inst50|inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst|inst6|ALT_INV_inst~q\,
	d => \inst50|inst24|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X25_Y20_N30
\inst50|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst8|inst~0_combout\ = !\inst50|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst|inst8|inst~q\,
	combout => \inst50|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst50|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst8|inst~feeder_combout\ = \inst50|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst|inst8|inst~0_combout\,
	combout => \inst50|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X25_Y20_N15
\inst50|inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst50|inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X26_Y21_N18
\inst50|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst2|inst~0_combout\ = !\inst50|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst2|inst~q\,
	combout => \inst50|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X26_Y21_N0
\inst50|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst2|inst~feeder_combout\ = \inst50|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst2|inst~0_combout\,
	combout => \inst50|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X26_Y21_N1
\inst50|inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst|inst8|inst~q\,
	d => \inst50|inst24|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst2|inst~q\);

-- Location: LCCOMB_X26_Y21_N4
\inst50|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst3|inst~0_combout\ = !\inst50|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst3|inst~q\,
	combout => \inst50|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X26_Y21_N16
\inst50|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst3|inst~feeder_combout\ = \inst50|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst3|inst~0_combout\,
	combout => \inst50|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X26_Y21_N17
\inst50|inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst2|ALT_INV_inst~q\,
	d => \inst50|inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst3|inst~q\);

-- Location: LCCOMB_X29_Y21_N10
\inst50|inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst7|inst~0_combout\ = !\inst50|inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst7|inst~q\,
	combout => \inst50|inst24|inst7|inst~0_combout\);

-- Location: LCCOMB_X29_Y21_N18
\inst50|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst7|inst~feeder_combout\ = \inst50|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst7|inst~0_combout\,
	combout => \inst50|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X29_Y21_N19
\inst50|inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst3|ALT_INV_inst~q\,
	d => \inst50|inst24|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst7|inst~q\);

-- Location: LCCOMB_X31_Y21_N18
\inst50|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst8|inst~0_combout\ = !\inst50|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst8|inst~q\,
	combout => \inst50|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X31_Y21_N24
\inst50|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst8|inst~feeder_combout\ = \inst50|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst8|inst~0_combout\,
	combout => \inst50|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X31_Y21_N25
\inst50|inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst7|ALT_INV_inst~q\,
	d => \inst50|inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst8|inst~q\);

-- Location: LCCOMB_X31_Y21_N2
\inst50|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst9|inst~0_combout\ = !\inst50|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst9|inst~q\,
	combout => \inst50|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X31_Y21_N30
\inst50|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst9|inst~feeder_combout\ = \inst50|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst9|inst~0_combout\,
	combout => \inst50|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X31_Y21_N31
\inst50|inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst8|ALT_INV_inst~q\,
	d => \inst50|inst24|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst9|inst~q\);

-- Location: LCCOMB_X32_Y20_N12
\inst50|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst~0_combout\ = !\inst50|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst50|inst24|inst4|inst~q\,
	combout => \inst50|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X32_Y20_N18
\inst50|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst~feeder_combout\ = \inst50|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst50|inst24|inst4|inst~0_combout\,
	combout => \inst50|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X32_Y20_N19
\inst50|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst~feeder_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst~q\);

-- Location: LCCOMB_X32_Y20_N2
\inst50|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst7~0_combout\ = \inst50|inst24|inst4|inst~q\ $ (\inst50|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst4|inst~q\,
	datac => \inst50|inst24|inst4|inst7~q\,
	combout => \inst50|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X32_Y20_N8
\inst50|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst7~feeder_combout\ = \inst50|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst4|inst7~0_combout\,
	combout => \inst50|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X32_Y20_N9
\inst50|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X32_Y20_N26
\inst50|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst8~0_combout\ = \inst50|inst24|inst4|inst8~q\ $ (((\inst50|inst24|inst4|inst~q\ & \inst50|inst24|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst~q\,
	datac => \inst50|inst24|inst4|inst8~q\,
	datad => \inst50|inst24|inst4|inst7~q\,
	combout => \inst50|inst24|inst4|inst8~0_combout\);

-- Location: FF_X32_Y20_N27
\inst50|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst8~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X32_Y20_N16
\inst50|inst24|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst10~0_combout\ = (\inst50|inst24|inst4|inst8~q\ & (\inst50|inst24|inst4|inst7~q\ & \inst50|inst24|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst8~q\,
	datac => \inst50|inst24|inst4|inst7~q\,
	datad => \inst50|inst24|inst4|inst~q\,
	combout => \inst50|inst24|inst4|inst10~0_combout\);

-- Location: LCCOMB_X32_Y20_N10
\inst50|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst9~0_combout\ = \inst50|inst24|inst4|inst9~q\ $ (((\inst50|inst24|inst4|inst8~q\ & (\inst50|inst24|inst4|inst7~q\ & \inst50|inst24|inst4|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst8~q\,
	datab => \inst50|inst24|inst4|inst7~q\,
	datac => \inst50|inst24|inst4|inst9~q\,
	datad => \inst50|inst24|inst4|inst~q\,
	combout => \inst50|inst24|inst4|inst9~0_combout\);

-- Location: FF_X32_Y20_N11
\inst50|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst9~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X32_Y20_N22
\inst50|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst14~0_combout\ = \inst50|inst24|inst4|inst14~q\ $ (((\inst50|inst24|inst4|inst10~0_combout\ & \inst50|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst10~0_combout\,
	datab => \inst50|inst24|inst4|inst9~q\,
	datac => \inst50|inst24|inst4|inst14~q\,
	combout => \inst50|inst24|inst4|inst14~0_combout\);

-- Location: FF_X32_Y20_N23
\inst50|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst14~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X32_Y20_N14
\inst50|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst17~0_combout\ = \inst50|inst24|inst4|inst17~q\ $ (((\inst50|inst24|inst4|inst9~q\ & (\inst50|inst24|inst4|inst14~q\ & \inst50|inst24|inst4|inst10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst9~q\,
	datab => \inst50|inst24|inst4|inst14~q\,
	datac => \inst50|inst24|inst4|inst17~q\,
	datad => \inst50|inst24|inst4|inst10~0_combout\,
	combout => \inst50|inst24|inst4|inst17~0_combout\);

-- Location: FF_X32_Y20_N15
\inst50|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst17~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X32_Y20_N20
\inst50|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst19~0_combout\ = (!\inst50|inst24|inst4|inst17~q\) # (!\inst50|inst24|inst4|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst14~q\,
	datac => \inst50|inst24|inst4|inst17~q\,
	combout => \inst50|inst24|inst4|inst19~0_combout\);

-- Location: LCCOMB_X32_Y20_N30
\inst50|inst24|inst4|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst19~1_combout\ = \inst50|inst24|inst4|inst19~q\ $ (((\inst50|inst24|inst4|inst10~0_combout\ & (\inst50|inst24|inst4|inst9~q\ & !\inst50|inst24|inst4|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst10~0_combout\,
	datab => \inst50|inst24|inst4|inst9~q\,
	datac => \inst50|inst24|inst4|inst19~q\,
	datad => \inst50|inst24|inst4|inst19~0_combout\,
	combout => \inst50|inst24|inst4|inst19~1_combout\);

-- Location: FF_X32_Y20_N31
\inst50|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst19~1_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X32_Y20_N28
\inst50|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst18~combout\ = (\inst50|inst24|inst4|inst10~0_combout\ & (\inst50|inst24|inst4|inst17~q\ & (\inst50|inst24|inst4|inst14~q\ & \inst50|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst10~0_combout\,
	datab => \inst50|inst24|inst4|inst17~q\,
	datac => \inst50|inst24|inst4|inst14~q\,
	datad => \inst50|inst24|inst4|inst9~q\,
	combout => \inst50|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X32_Y20_N6
\inst50|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst21~0_combout\ = \inst50|inst24|inst4|inst21~q\ $ (((\inst50|inst24|inst4|inst19~q\ & \inst50|inst24|inst4|inst18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst4|inst19~q\,
	datac => \inst50|inst24|inst4|inst21~q\,
	datad => \inst50|inst24|inst4|inst18~combout\,
	combout => \inst50|inst24|inst4|inst21~0_combout\);

-- Location: FF_X32_Y20_N7
\inst50|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst21~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X32_Y20_N4
\inst50|inst24|inst4|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst10~1_combout\ = (!\inst50|inst24|inst4|inst19~q\ & (!\inst50|inst24|inst4|inst17~q\ & (!\inst50|inst24|inst4|inst14~q\ & !\inst50|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst19~q\,
	datab => \inst50|inst24|inst4|inst17~q\,
	datac => \inst50|inst24|inst4|inst14~q\,
	datad => \inst50|inst24|inst4|inst9~q\,
	combout => \inst50|inst24|inst4|inst10~1_combout\);

-- Location: LCCOMB_X32_Y20_N24
\inst50|inst24|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst10~combout\ = LCELL((!\inst50|inst24|inst4|inst21~q\ & (\inst50|inst24|inst4|inst10~1_combout\ & \inst50|inst24|inst4|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst21~q\,
	datac => \inst50|inst24|inst4|inst10~1_combout\,
	datad => \inst50|inst24|inst4|inst10~0_combout\,
	combout => \inst50|inst24|inst4|inst10~combout\);

-- Location: LCCOMB_X32_Y20_N0
\inst50|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst4~0_combout\ = !\inst50|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst4~q\,
	combout => \inst50|inst24|inst4|inst4~0_combout\);

-- Location: FF_X32_Y20_N13
\inst50|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst4|inst10~combout\,
	asdata => \inst50|inst24|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X33_Y16_N18
\inst50|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst25|inst~0_combout\ = !\inst50|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst25|inst~q\,
	combout => \inst50|inst25|inst~0_combout\);

-- Location: LCCOMB_X33_Y16_N24
\inst50|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst25|inst~feeder_combout\ = \inst50|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst25|inst~0_combout\,
	combout => \inst50|inst25|inst~feeder_combout\);

-- Location: FF_X33_Y16_N25
\inst50|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst4|inst4~q\,
	d => \inst50|inst25|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst25|inst~q\);

-- Location: LCCOMB_X33_Y16_N16
\inst50|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst26|inst~0_combout\ = !\inst50|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst26|inst~q\,
	combout => \inst50|inst26|inst~0_combout\);

-- Location: LCCOMB_X33_Y16_N14
\inst50|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst26|inst~feeder_combout\ = \inst50|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst26|inst~0_combout\,
	combout => \inst50|inst26|inst~feeder_combout\);

-- Location: FF_X33_Y16_N15
\inst50|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst25|ALT_INV_inst~q\,
	d => \inst50|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst26|inst~q\);

-- Location: IOIBUF_X34_Y12_N8
\KEY3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

-- Location: LCCOMB_X33_Y12_N18
\inst50|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|dasda~0_combout\ = !\KEY3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY3~input_o\,
	combout => \inst50|dasda~0_combout\);

-- Location: FF_X33_Y12_N19
\inst50|dasda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst26|inst~q\,
	d => \inst50|dasda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|dasda~q\);

-- Location: LCCOMB_X33_Y12_N22
\inst50|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst29~feeder_combout\ = \inst50|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst50|dasda~q\,
	combout => \inst50|inst29~feeder_combout\);

-- Location: FF_X33_Y12_N23
\inst50|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst26|inst~q\,
	d => \inst50|inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst29~q\);

-- Location: LCCOMB_X33_Y12_N16
\inst50|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst30~feeder_combout\ = \inst50|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst29~q\,
	combout => \inst50|inst30~feeder_combout\);

-- Location: FF_X33_Y12_N17
\inst50|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst26|inst~q\,
	d => \inst50|inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst30~q\);

-- Location: LCCOMB_X33_Y12_N30
\inst50|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst31~feeder_combout\ = \inst50|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst50|inst30~q\,
	combout => \inst50|inst31~feeder_combout\);

-- Location: FF_X33_Y12_N31
\inst50|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst26|inst~q\,
	d => \inst50|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst31~q\);

-- Location: LCCOMB_X33_Y12_N20
\inst50|inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst32~feeder_combout\ = \inst50|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst31~q\,
	combout => \inst50|inst32~feeder_combout\);

-- Location: FF_X33_Y12_N21
\inst50|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst26|inst~q\,
	d => \inst50|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst32~q\);

-- Location: LCCOMB_X33_Y12_N24
\inst50|inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst33~feeder_combout\ = \inst50|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst50|inst32~q\,
	combout => \inst50|inst33~feeder_combout\);

-- Location: FF_X33_Y12_N25
\inst50|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst26|inst~q\,
	d => \inst50|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst33~q\);

-- Location: LCCOMB_X33_Y12_N14
\inst50|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst23~feeder_combout\ = \inst50|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst50|inst33~q\,
	combout => \inst50|inst23~feeder_combout\);

-- Location: FF_X33_Y12_N15
\inst50|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst26|inst~q\,
	d => \inst50|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst23~q\);

-- Location: FF_X33_Y12_N27
\inst50|1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst26|inst~q\,
	asdata => \inst50|inst23~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|1231~q\);

-- Location: LCCOMB_X33_Y12_N26
\inst50|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst36~1_combout\ = (\inst50|inst33~q\ & (\inst50|inst23~q\ & (\inst50|1231~q\ & \inst50|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst33~q\,
	datab => \inst50|inst23~q\,
	datac => \inst50|1231~q\,
	datad => \inst50|inst32~q\,
	combout => \inst50|inst36~1_combout\);

-- Location: LCCOMB_X33_Y12_N12
\inst50|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst36~0_combout\ = (\inst50|inst31~q\ & (\inst50|inst30~q\ & (\inst50|inst29~q\ & \inst50|dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst31~q\,
	datab => \inst50|inst30~q\,
	datac => \inst50|inst29~q\,
	datad => \inst50|dasda~q\,
	combout => \inst50|inst36~0_combout\);

-- Location: LCCOMB_X33_Y12_N28
\inst50|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst36~combout\ = LCELL((\inst50|inst36~1_combout\ & \inst50|inst36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst36~1_combout\,
	datad => \inst50|inst36~0_combout\,
	combout => \inst50|inst36~combout\);

-- Location: CLKCTRL_G8
\inst50|inst36~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst50|inst36~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst50|inst36~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y12_N24
\inst45|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst2~0_combout\ = !\inst45|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst2~q\,
	combout => \inst45|inst2~0_combout\);

-- Location: LCCOMB_X19_Y12_N20
\inst45|inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst2~feeder_combout\ = \inst45|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst2~0_combout\,
	combout => \inst45|inst2~feeder_combout\);

-- Location: FF_X19_Y12_N21
\inst45|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst36~clkctrl_outclk\,
	d => \inst45|inst2~feeder_combout\,
	clrn => \inst45|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst2~q\);

-- Location: LCCOMB_X19_Y8_N12
\inst90|inst80|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst80|inst2~1_combout\ = (\inst90|inst|inst7~q\ & (\inst90|inst|inst8~q\)) # (!\inst90|inst|inst7~q\ & ((!\inst90|inst|inst8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst8~q\,
	datac => \inst90|inst|inst7~q\,
	datad => \inst90|inst|inst8~q\,
	combout => \inst90|inst80|inst2~1_combout\);

-- Location: LCCOMB_X19_Y8_N30
\inst90|inst80|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst80|inst2~0_combout\ = (\inst90|inst|inst~q\ & ((!\inst90|inst80|inst2~1_combout\))) # (!\inst90|inst|inst~q\ & (\inst90|inst|inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst8~q\,
	datac => \inst90|inst80|inst2~1_combout\,
	datad => \inst90|inst|inst~q\,
	combout => \inst90|inst80|inst2~0_combout\);

-- Location: LCCOMB_X19_Y8_N18
\inst80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst80~0_combout\ = (\inst47|inst2~q\ & (!\inst90|inst|inst~q\ & (\inst45|inst2~q\ $ (!\inst90|inst80|inst2~0_combout\)))) # (!\inst47|inst2~q\ & (\inst90|inst|inst~q\ & (\inst45|inst2~q\ $ (!\inst90|inst80|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst2~q\,
	datab => \inst45|inst2~q\,
	datac => \inst90|inst80|inst2~0_combout\,
	datad => \inst90|inst|inst~q\,
	combout => \inst80~0_combout\);

-- Location: LCCOMB_X19_Y8_N24
inst82 : cycloneive_lcell_comb
-- Equation(s):
-- \inst82~combout\ = LCELL((\inst44|inst~combout\ & ((!\inst80~0_combout\) # (!\inst80~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst80~1_combout\,
	datac => \inst44|inst~combout\,
	datad => \inst80~0_combout\,
	combout => \inst82~combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst90|inst|inst1|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst1|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst90|inst|inst1|inst~feeder_combout\);

-- Location: FF_X19_Y8_N15
\inst90|inst|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst82~combout\,
	d => \inst90|inst|inst1|inst~feeder_combout\,
	clrn => \inst90|inst|inst1|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst1|inst~q\);

-- Location: LCCOMB_X18_Y8_N28
\inst90|inst|inst12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst12~combout\ = (\inst90|inst|inst1|inst~q\) # ((\inst90|inst|inst10~1_combout\ & \inst90|inst|inst10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst90|inst|inst10~1_combout\,
	datac => \inst90|inst|inst10~0_combout\,
	datad => \inst90|inst|inst1|inst~q\,
	combout => \inst90|inst|inst12~combout\);

-- Location: FF_X18_Y8_N23
\inst90|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~clkctrl_outclk\,
	asdata => \inst90|inst|inst~0_combout\,
	clrn => \inst90|inst|ALT_INV_inst12~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst~q\);

-- Location: LCCOMB_X18_Y8_N0
\inst90|inst|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst8~0_combout\ = \inst90|inst|inst8~q\ $ (((\inst90|inst|inst~q\ & \inst90|inst|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst90|inst|inst~q\,
	datac => \inst90|inst|inst8~q\,
	datad => \inst90|inst|inst7~q\,
	combout => \inst90|inst|inst8~0_combout\);

-- Location: FF_X18_Y8_N1
\inst90|inst|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~clkctrl_outclk\,
	d => \inst90|inst|inst8~0_combout\,
	clrn => \inst90|inst|ALT_INV_inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst8~q\);

-- Location: LCCOMB_X18_Y8_N30
\inst90|inst|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst9~0_combout\ = \inst90|inst|inst9~q\ $ (((\inst90|inst|inst7~q\ & (\inst90|inst|inst8~q\ & \inst90|inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst7~q\,
	datab => \inst90|inst|inst8~q\,
	datac => \inst90|inst|inst9~q\,
	datad => \inst90|inst|inst~q\,
	combout => \inst90|inst|inst9~0_combout\);

-- Location: FF_X18_Y8_N31
\inst90|inst|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~combout\,
	d => \inst90|inst|inst9~0_combout\,
	clrn => \inst90|inst|ALT_INV_inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst9~q\);

-- Location: LCCOMB_X18_Y8_N8
\inst90|inst81|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst81|inst2~1_combout\ = (\inst90|inst|inst8~q\ & (\inst90|inst|inst9~q\)) # (!\inst90|inst|inst8~q\ & ((!\inst90|inst|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst8~q\,
	datac => \inst90|inst|inst9~q\,
	datad => \inst90|inst|inst9~q\,
	combout => \inst90|inst81|inst2~1_combout\);

-- Location: LCCOMB_X18_Y8_N26
\inst90|inst81|inst2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst81|inst2~2_combout\ = (\inst90|inst|inst7~q\ & (\inst90|inst81|inst2~1_combout\)) # (!\inst90|inst|inst7~q\ & ((!\inst90|inst|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst90|inst81|inst2~1_combout\,
	datac => \inst90|inst|inst9~q\,
	datad => \inst90|inst|inst7~q\,
	combout => \inst90|inst81|inst2~2_combout\);

-- Location: LCCOMB_X18_Y8_N2
\inst90|inst81|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst81|inst2~0_combout\ = (\inst90|inst|inst~q\ & ((!\inst90|inst81|inst2~2_combout\))) # (!\inst90|inst|inst~q\ & (\inst90|inst|inst9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst9~q\,
	datac => \inst90|inst|inst~q\,
	datad => \inst90|inst81|inst2~2_combout\,
	combout => \inst90|inst81|inst2~0_combout\);

-- Location: LCCOMB_X13_Y9_N18
\inst49|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst|inst~0_combout\ = !\inst49|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst|inst|inst~q\,
	combout => \inst49|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X13_Y9_N28
\inst49|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst|inst~feeder_combout\ = \inst49|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst|inst~0_combout\,
	combout => \inst49|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X13_Y9_N29
\inst49|inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst49|inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X12_Y9_N20
\inst49|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst2|inst~0_combout\ = !\inst49|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst|inst2|inst~q\,
	combout => \inst49|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X12_Y9_N16
\inst49|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst2|inst~feeder_combout\ = \inst49|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst2|inst~0_combout\,
	combout => \inst49|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X12_Y9_N17
\inst49|inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst49|inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X12_Y9_N28
\inst49|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst3|inst~0_combout\ = !\inst49|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst|inst3|inst~q\,
	combout => \inst49|inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X12_Y9_N22
\inst49|inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst3|inst~feeder_combout\ = \inst49|inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst|inst3|inst~0_combout\,
	combout => \inst49|inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X12_Y9_N23
\inst49|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst2|ALT_INV_inst~q\,
	d => \inst49|inst24|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X11_Y9_N30
\inst49|inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst4|inst~0_combout\ = !\inst49|inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst4|inst~q\,
	combout => \inst49|inst24|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X11_Y9_N28
\inst49|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst4|inst~feeder_combout\ = \inst49|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst4|inst~0_combout\,
	combout => \inst49|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X11_Y9_N29
\inst49|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst3|ALT_INV_inst~q\,
	d => \inst49|inst24|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X11_Y9_N16
\inst49|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst5|inst~0_combout\ = !\inst49|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst5|inst~q\,
	combout => \inst49|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X11_Y9_N14
\inst49|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst5|inst~feeder_combout\ = \inst49|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst5|inst~0_combout\,
	combout => \inst49|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X11_Y9_N15
\inst49|inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst4|ALT_INV_inst~q\,
	d => \inst49|inst24|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X10_Y9_N26
\inst49|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst6|inst~0_combout\ = !\inst49|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst|inst6|inst~q\,
	combout => \inst49|inst24|inst|inst6|inst~0_combout\);

-- Location: FF_X10_Y9_N3
\inst49|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst5|ALT_INV_inst~q\,
	asdata => \inst49|inst24|inst|inst6|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X11_Y8_N24
\inst49|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst7|inst~0_combout\ = !\inst49|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst|inst7|inst~q\,
	combout => \inst49|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X11_Y8_N22
\inst49|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst7|inst~feeder_combout\ = \inst49|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst|inst7|inst~0_combout\,
	combout => \inst49|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X11_Y8_N23
\inst49|inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst6|ALT_INV_inst~q\,
	d => \inst49|inst24|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X11_Y8_N28
\inst49|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst8|inst~0_combout\ = !\inst49|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst8|inst~q\,
	combout => \inst49|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X11_Y8_N14
\inst49|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst8|inst~feeder_combout\ = \inst49|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst|inst8|inst~0_combout\,
	combout => \inst49|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X11_Y8_N15
\inst49|inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst49|inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X12_Y6_N22
\inst49|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst2|inst~0_combout\ = !\inst49|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst2|inst~q\,
	combout => \inst49|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X12_Y6_N12
\inst49|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst2|inst~feeder_combout\ = \inst49|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst2|inst~0_combout\,
	combout => \inst49|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X12_Y6_N13
\inst49|inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst8|inst~q\,
	d => \inst49|inst24|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst2|inst~q\);

-- Location: LCCOMB_X12_Y6_N14
\inst49|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst3|inst~0_combout\ = !\inst49|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst49|inst24|inst3|inst~q\,
	combout => \inst49|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X12_Y6_N6
\inst49|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst3|inst~feeder_combout\ = \inst49|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst3|inst~0_combout\,
	combout => \inst49|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X12_Y6_N7
\inst49|inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst2|ALT_INV_inst~q\,
	d => \inst49|inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst3|inst~q\);

-- Location: LCCOMB_X13_Y6_N20
\inst49|inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst7|inst~0_combout\ = !\inst49|inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst7|inst~q\,
	combout => \inst49|inst24|inst7|inst~0_combout\);

-- Location: LCCOMB_X13_Y6_N10
\inst49|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst7|inst~feeder_combout\ = \inst49|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst7|inst~0_combout\,
	combout => \inst49|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X13_Y6_N11
\inst49|inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst3|ALT_INV_inst~q\,
	d => \inst49|inst24|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst7|inst~q\);

-- Location: LCCOMB_X14_Y6_N18
\inst49|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst8|inst~0_combout\ = !\inst49|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst8|inst~q\,
	combout => \inst49|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X14_Y6_N0
\inst49|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst8|inst~feeder_combout\ = \inst49|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst8|inst~0_combout\,
	combout => \inst49|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X14_Y6_N1
\inst49|inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst7|ALT_INV_inst~q\,
	d => \inst49|inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst8|inst~q\);

-- Location: LCCOMB_X14_Y6_N4
\inst49|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst9|inst~0_combout\ = !\inst49|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst9|inst~q\,
	combout => \inst49|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X14_Y6_N16
\inst49|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst9|inst~feeder_combout\ = \inst49|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst9|inst~0_combout\,
	combout => \inst49|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X14_Y6_N17
\inst49|inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst8|ALT_INV_inst~q\,
	d => \inst49|inst24|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst9|inst~q\);

-- Location: LCCOMB_X25_Y9_N6
\inst49|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst~0_combout\ = !\inst49|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst~q\,
	combout => \inst49|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X25_Y9_N0
\inst49|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst~feeder_combout\ = \inst49|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst49|inst24|inst4|inst~0_combout\,
	combout => \inst49|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X25_Y9_N1
\inst49|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst~feeder_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst~q\);

-- Location: LCCOMB_X25_Y9_N16
\inst49|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst7~0_combout\ = \inst49|inst24|inst4|inst~q\ $ (\inst49|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst4|inst~q\,
	datad => \inst49|inst24|inst4|inst7~q\,
	combout => \inst49|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X25_Y9_N28
\inst49|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst7~feeder_combout\ = \inst49|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst4|inst7~0_combout\,
	combout => \inst49|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X25_Y9_N29
\inst49|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X25_Y9_N22
\inst49|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst8~0_combout\ = \inst49|inst24|inst4|inst8~q\ $ (((\inst49|inst24|inst4|inst~q\ & \inst49|inst24|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst~q\,
	datab => \inst49|inst24|inst4|inst7~q\,
	datac => \inst49|inst24|inst4|inst8~q\,
	combout => \inst49|inst24|inst4|inst8~0_combout\);

-- Location: FF_X25_Y9_N23
\inst49|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst8~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X25_Y9_N4
\inst49|inst24|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst10~0_combout\ = (\inst49|inst24|inst4|inst~q\ & (\inst49|inst24|inst4|inst8~q\ & \inst49|inst24|inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst4|inst~q\,
	datac => \inst49|inst24|inst4|inst8~q\,
	datad => \inst49|inst24|inst4|inst7~q\,
	combout => \inst49|inst24|inst4|inst10~0_combout\);

-- Location: LCCOMB_X25_Y9_N10
\inst49|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst9~0_combout\ = \inst49|inst24|inst4|inst9~q\ $ (((\inst49|inst24|inst4|inst~q\ & (\inst49|inst24|inst4|inst7~q\ & \inst49|inst24|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst~q\,
	datab => \inst49|inst24|inst4|inst7~q\,
	datac => \inst49|inst24|inst4|inst9~q\,
	datad => \inst49|inst24|inst4|inst8~q\,
	combout => \inst49|inst24|inst4|inst9~0_combout\);

-- Location: FF_X25_Y9_N11
\inst49|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst9~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X25_Y9_N18
\inst49|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst14~0_combout\ = \inst49|inst24|inst4|inst14~q\ $ (((\inst49|inst24|inst4|inst9~q\ & \inst49|inst24|inst4|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst9~q\,
	datac => \inst49|inst24|inst4|inst14~q\,
	datad => \inst49|inst24|inst4|inst10~0_combout\,
	combout => \inst49|inst24|inst4|inst14~0_combout\);

-- Location: FF_X25_Y9_N19
\inst49|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst14~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X25_Y9_N14
\inst49|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst17~0_combout\ = \inst49|inst24|inst4|inst17~q\ $ (((\inst49|inst24|inst4|inst9~q\ & (\inst49|inst24|inst4|inst14~q\ & \inst49|inst24|inst4|inst10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst9~q\,
	datab => \inst49|inst24|inst4|inst14~q\,
	datac => \inst49|inst24|inst4|inst17~q\,
	datad => \inst49|inst24|inst4|inst10~0_combout\,
	combout => \inst49|inst24|inst4|inst17~0_combout\);

-- Location: FF_X25_Y9_N15
\inst49|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst17~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X25_Y9_N24
\inst49|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst21~0_combout\ = ((!\inst49|inst24|inst4|inst14~q\) # (!\inst49|inst24|inst4|inst17~q\)) # (!\inst49|inst24|inst4|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst9~q\,
	datac => \inst49|inst24|inst4|inst17~q\,
	datad => \inst49|inst24|inst4|inst14~q\,
	combout => \inst49|inst24|inst4|inst21~0_combout\);

-- Location: LCCOMB_X25_Y9_N30
\inst49|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst18~combout\ = (\inst49|inst24|inst4|inst10~0_combout\ & (\inst49|inst24|inst4|inst14~q\ & (\inst49|inst24|inst4|inst9~q\ & \inst49|inst24|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst10~0_combout\,
	datab => \inst49|inst24|inst4|inst14~q\,
	datac => \inst49|inst24|inst4|inst9~q\,
	datad => \inst49|inst24|inst4|inst17~q\,
	combout => \inst49|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X25_Y9_N8
\inst49|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst19~0_combout\ = \inst49|inst24|inst4|inst19~q\ $ (\inst49|inst24|inst4|inst18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst4|inst19~q\,
	datad => \inst49|inst24|inst4|inst18~combout\,
	combout => \inst49|inst24|inst4|inst19~0_combout\);

-- Location: FF_X25_Y9_N9
\inst49|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst19~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X25_Y9_N26
\inst49|inst24|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst21~1_combout\ = \inst49|inst24|inst4|inst21~q\ $ (((\inst49|inst24|inst4|inst10~0_combout\ & (!\inst49|inst24|inst4|inst21~0_combout\ & \inst49|inst24|inst4|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst10~0_combout\,
	datab => \inst49|inst24|inst4|inst21~0_combout\,
	datac => \inst49|inst24|inst4|inst21~q\,
	datad => \inst49|inst24|inst4|inst19~q\,
	combout => \inst49|inst24|inst4|inst21~1_combout\);

-- Location: FF_X25_Y9_N27
\inst49|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst21~1_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X25_Y9_N12
\inst49|inst24|inst4|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst10~1_combout\ = (!\inst49|inst24|inst4|inst19~q\ & (!\inst49|inst24|inst4|inst14~q\ & (!\inst49|inst24|inst4|inst17~q\ & !\inst49|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst19~q\,
	datab => \inst49|inst24|inst4|inst14~q\,
	datac => \inst49|inst24|inst4|inst17~q\,
	datad => \inst49|inst24|inst4|inst9~q\,
	combout => \inst49|inst24|inst4|inst10~1_combout\);

-- Location: LCCOMB_X25_Y9_N2
\inst49|inst24|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst10~combout\ = LCELL((!\inst49|inst24|inst4|inst21~q\ & (\inst49|inst24|inst4|inst10~0_combout\ & \inst49|inst24|inst4|inst10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst21~q\,
	datac => \inst49|inst24|inst4|inst10~0_combout\,
	datad => \inst49|inst24|inst4|inst10~1_combout\,
	combout => \inst49|inst24|inst4|inst10~combout\);

-- Location: LCCOMB_X25_Y9_N20
\inst49|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst4~0_combout\ = !\inst49|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst4~q\,
	combout => \inst49|inst24|inst4|inst4~0_combout\);

-- Location: FF_X25_Y9_N7
\inst49|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst4|inst10~combout\,
	asdata => \inst49|inst24|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X26_Y9_N18
\inst49|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst25|inst~0_combout\ = !\inst49|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst25|inst~q\,
	combout => \inst49|inst25|inst~0_combout\);

-- Location: FF_X26_Y9_N15
\inst49|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst4|inst4~q\,
	asdata => \inst49|inst25|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst25|inst~q\);

-- Location: LCCOMB_X26_Y9_N4
\inst49|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst26|inst~0_combout\ = !\inst49|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst26|inst~q\,
	combout => \inst49|inst26|inst~0_combout\);

-- Location: LCCOMB_X26_Y9_N16
\inst49|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst26|inst~feeder_combout\ = \inst49|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst26|inst~0_combout\,
	combout => \inst49|inst26|inst~feeder_combout\);

-- Location: FF_X26_Y9_N17
\inst49|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst25|ALT_INV_inst~q\,
	d => \inst49|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst26|inst~q\);

-- Location: IOIBUF_X34_Y12_N15
\KEY2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

-- Location: LCCOMB_X31_Y12_N20
\inst49|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|dasda~0_combout\ = !\KEY2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY2~input_o\,
	combout => \inst49|dasda~0_combout\);

-- Location: FF_X31_Y12_N21
\inst49|dasda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst26|inst~q\,
	d => \inst49|dasda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|dasda~q\);

-- Location: LCCOMB_X31_Y12_N30
\inst49|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst29~feeder_combout\ = \inst49|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst49|dasda~q\,
	combout => \inst49|inst29~feeder_combout\);

-- Location: FF_X31_Y12_N31
\inst49|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst26|inst~q\,
	d => \inst49|inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst29~q\);

-- Location: LCCOMB_X31_Y12_N14
\inst49|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst30~feeder_combout\ = \inst49|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst29~q\,
	combout => \inst49|inst30~feeder_combout\);

-- Location: FF_X31_Y12_N15
\inst49|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst26|inst~q\,
	d => \inst49|inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst30~q\);

-- Location: LCCOMB_X31_Y12_N18
\inst49|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst31~feeder_combout\ = \inst49|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst30~q\,
	combout => \inst49|inst31~feeder_combout\);

-- Location: FF_X31_Y12_N19
\inst49|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst26|inst~q\,
	d => \inst49|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst31~q\);

-- Location: LCCOMB_X31_Y12_N28
\inst49|inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst32~feeder_combout\ = \inst49|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst49|inst31~q\,
	combout => \inst49|inst32~feeder_combout\);

-- Location: FF_X31_Y12_N29
\inst49|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst26|inst~q\,
	d => \inst49|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst32~q\);

-- Location: LCCOMB_X31_Y12_N12
\inst49|inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst33~feeder_combout\ = \inst49|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst49|inst32~q\,
	combout => \inst49|inst33~feeder_combout\);

-- Location: FF_X31_Y12_N13
\inst49|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst26|inst~q\,
	d => \inst49|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst33~q\);

-- Location: LCCOMB_X31_Y12_N26
\inst49|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst23~feeder_combout\ = \inst49|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst49|inst33~q\,
	combout => \inst49|inst23~feeder_combout\);

-- Location: FF_X31_Y12_N27
\inst49|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst26|inst~q\,
	d => \inst49|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst23~q\);

-- Location: FF_X31_Y12_N23
\inst49|1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst26|inst~q\,
	asdata => \inst49|inst23~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|1231~q\);

-- Location: LCCOMB_X31_Y12_N22
\inst49|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst36~1_combout\ = (\inst49|inst23~q\ & (\inst49|inst33~q\ & (\inst49|1231~q\ & \inst49|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst23~q\,
	datab => \inst49|inst33~q\,
	datac => \inst49|1231~q\,
	datad => \inst49|inst32~q\,
	combout => \inst49|inst36~1_combout\);

-- Location: LCCOMB_X31_Y12_N16
\inst49|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst36~0_combout\ = (\inst49|inst29~q\ & (\inst49|inst31~q\ & (\inst49|inst30~q\ & \inst49|dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst29~q\,
	datab => \inst49|inst31~q\,
	datac => \inst49|inst30~q\,
	datad => \inst49|dasda~q\,
	combout => \inst49|inst36~0_combout\);

-- Location: LCCOMB_X31_Y12_N24
\inst49|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst36~combout\ = LCELL((\inst49|inst36~1_combout\ & \inst49|inst36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst36~1_combout\,
	datad => \inst49|inst36~0_combout\,
	combout => \inst49|inst36~combout\);

-- Location: CLKCTRL_G7
\inst49|inst36~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst49|inst36~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst49|inst36~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y10_N16
\inst|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = !\inst|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2~q\,
	combout => \inst|inst2~0_combout\);

-- Location: FF_X18_Y10_N29
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst36~clkctrl_outclk\,
	asdata => \inst|inst2~0_combout\,
	clrn => \inst45|inst7|ALT_INV_inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: LCCOMB_X24_Y19_N24
\inst51|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst|inst~0_combout\ = !\inst51|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst|inst~q\,
	combout => \inst51|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X24_Y19_N18
\inst51|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst|inst~feeder_combout\ = \inst51|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst|inst~0_combout\,
	combout => \inst51|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X24_Y19_N19
\inst51|inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst51|inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X24_Y19_N28
\inst51|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst2|inst~0_combout\ = !\inst51|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst2|inst~q\,
	combout => \inst51|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst51|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst2|inst~feeder_combout\ = \inst51|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst|inst2|inst~0_combout\,
	combout => \inst51|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X24_Y19_N15
\inst51|inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst51|inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X23_Y19_N18
\inst51|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst3|inst~0_combout\ = !\inst51|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst|inst3|inst~q\,
	combout => \inst51|inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X23_Y19_N16
\inst51|inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst3|inst~feeder_combout\ = \inst51|inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst3|inst~0_combout\,
	combout => \inst51|inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X23_Y19_N17
\inst51|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst|inst2|ALT_INV_inst~q\,
	d => \inst51|inst24|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X23_Y19_N4
\inst51|inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst4|inst~0_combout\ = !\inst51|inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst4|inst~q\,
	combout => \inst51|inst24|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst51|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst4|inst~feeder_combout\ = \inst51|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst|inst4|inst~0_combout\,
	combout => \inst51|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X23_Y19_N3
\inst51|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst|inst3|ALT_INV_inst~q\,
	d => \inst51|inst24|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X19_Y19_N28
\inst51|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst5|inst~0_combout\ = !\inst51|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst5|inst~q\,
	combout => \inst51|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X19_Y19_N16
\inst51|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst5|inst~feeder_combout\ = \inst51|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst5|inst~0_combout\,
	combout => \inst51|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X19_Y19_N17
\inst51|inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst|inst4|ALT_INV_inst~q\,
	d => \inst51|inst24|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X19_Y19_N4
\inst51|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst6|inst~0_combout\ = !\inst51|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst6|inst~q\,
	combout => \inst51|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X19_Y19_N14
\inst51|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst6|inst~feeder_combout\ = \inst51|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst|inst6|inst~0_combout\,
	combout => \inst51|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X19_Y19_N15
\inst51|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst51|inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X18_Y19_N18
\inst51|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst7|inst~0_combout\ = !\inst51|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst|inst7|inst~q\,
	combout => \inst51|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X18_Y19_N24
\inst51|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst7|inst~feeder_combout\ = \inst51|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst|inst7|inst~0_combout\,
	combout => \inst51|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X18_Y19_N25
\inst51|inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst|inst6|ALT_INV_inst~q\,
	d => \inst51|inst24|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X18_Y19_N10
\inst51|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst8|inst~0_combout\ = !\inst51|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst8|inst~q\,
	combout => \inst51|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X18_Y19_N4
\inst51|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst8|inst~feeder_combout\ = \inst51|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst|inst8|inst~0_combout\,
	combout => \inst51|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X18_Y19_N5
\inst51|inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst51|inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X18_Y17_N14
\inst51|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst2|inst~0_combout\ = !\inst51|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst2|inst~q\,
	combout => \inst51|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X18_Y17_N28
\inst51|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst2|inst~feeder_combout\ = \inst51|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst2|inst~0_combout\,
	combout => \inst51|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X18_Y17_N29
\inst51|inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst|inst8|inst~q\,
	d => \inst51|inst24|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst2|inst~q\);

-- Location: LCCOMB_X18_Y17_N26
\inst51|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst3|inst~0_combout\ = !\inst51|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst3|inst~q\,
	combout => \inst51|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X18_Y17_N16
\inst51|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst3|inst~feeder_combout\ = \inst51|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst3|inst~0_combout\,
	combout => \inst51|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X18_Y17_N17
\inst51|inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst2|ALT_INV_inst~q\,
	d => \inst51|inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst3|inst~q\);

-- Location: LCCOMB_X13_Y17_N18
\inst51|inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst7|inst~0_combout\ = !\inst51|inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst7|inst~q\,
	combout => \inst51|inst24|inst7|inst~0_combout\);

-- Location: LCCOMB_X13_Y17_N28
\inst51|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst7|inst~feeder_combout\ = \inst51|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst7|inst~0_combout\,
	combout => \inst51|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X13_Y17_N29
\inst51|inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst3|ALT_INV_inst~q\,
	d => \inst51|inst24|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst7|inst~q\);

-- Location: LCCOMB_X12_Y17_N10
\inst51|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst8|inst~0_combout\ = !\inst51|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst8|inst~q\,
	combout => \inst51|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X12_Y17_N16
\inst51|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst8|inst~feeder_combout\ = \inst51|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst8|inst~0_combout\,
	combout => \inst51|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X12_Y17_N17
\inst51|inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst7|ALT_INV_inst~q\,
	d => \inst51|inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst8|inst~q\);

-- Location: LCCOMB_X12_Y17_N28
\inst51|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst9|inst~0_combout\ = !\inst51|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst9|inst~q\,
	combout => \inst51|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X12_Y17_N14
\inst51|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst9|inst~feeder_combout\ = \inst51|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst9|inst~0_combout\,
	combout => \inst51|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X12_Y17_N15
\inst51|inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst8|ALT_INV_inst~q\,
	d => \inst51|inst24|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst9|inst~q\);

-- Location: LCCOMB_X11_Y17_N28
\inst51|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst~0_combout\ = !\inst51|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst~q\,
	combout => \inst51|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X11_Y17_N10
\inst51|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst~feeder_combout\ = \inst51|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst~0_combout\,
	combout => \inst51|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X11_Y17_N11
\inst51|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst~feeder_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst~q\);

-- Location: LCCOMB_X11_Y17_N16
\inst51|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst7~0_combout\ = \inst51|inst24|inst4|inst7~q\ $ (\inst51|inst24|inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst7~q\,
	datac => \inst51|inst24|inst4|inst~q\,
	combout => \inst51|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X11_Y17_N26
\inst51|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst7~feeder_combout\ = \inst51|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst4|inst7~0_combout\,
	combout => \inst51|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X11_Y17_N27
\inst51|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X11_Y17_N30
\inst51|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst8~0_combout\ = \inst51|inst24|inst4|inst8~q\ $ (((\inst51|inst24|inst4|inst~q\ & \inst51|inst24|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst~q\,
	datac => \inst51|inst24|inst4|inst8~q\,
	datad => \inst51|inst24|inst4|inst7~q\,
	combout => \inst51|inst24|inst4|inst8~0_combout\);

-- Location: FF_X11_Y17_N31
\inst51|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst8~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X11_Y17_N6
\inst51|inst24|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst10~0_combout\ = (\inst51|inst24|inst4|inst8~q\ & (\inst51|inst24|inst4|inst7~q\ & \inst51|inst24|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst8~q\,
	datac => \inst51|inst24|inst4|inst7~q\,
	datad => \inst51|inst24|inst4|inst~q\,
	combout => \inst51|inst24|inst4|inst10~0_combout\);

-- Location: LCCOMB_X11_Y17_N18
\inst51|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst9~0_combout\ = \inst51|inst24|inst4|inst9~q\ $ (((\inst51|inst24|inst4|inst7~q\ & (\inst51|inst24|inst4|inst~q\ & \inst51|inst24|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst7~q\,
	datab => \inst51|inst24|inst4|inst~q\,
	datac => \inst51|inst24|inst4|inst9~q\,
	datad => \inst51|inst24|inst4|inst8~q\,
	combout => \inst51|inst24|inst4|inst9~0_combout\);

-- Location: FF_X11_Y17_N19
\inst51|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst9~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X11_Y17_N24
\inst51|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst14~0_combout\ = \inst51|inst24|inst4|inst14~q\ $ (((\inst51|inst24|inst4|inst9~q\ & \inst51|inst24|inst4|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst9~q\,
	datab => \inst51|inst24|inst4|inst10~0_combout\,
	datac => \inst51|inst24|inst4|inst14~q\,
	combout => \inst51|inst24|inst4|inst14~0_combout\);

-- Location: FF_X11_Y17_N25
\inst51|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst14~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X11_Y17_N8
\inst51|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst17~0_combout\ = \inst51|inst24|inst4|inst17~q\ $ (((\inst51|inst24|inst4|inst9~q\ & (\inst51|inst24|inst4|inst10~0_combout\ & \inst51|inst24|inst4|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst9~q\,
	datab => \inst51|inst24|inst4|inst10~0_combout\,
	datac => \inst51|inst24|inst4|inst17~q\,
	datad => \inst51|inst24|inst4|inst14~q\,
	combout => \inst51|inst24|inst4|inst17~0_combout\);

-- Location: FF_X11_Y17_N9
\inst51|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst17~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X11_Y17_N20
\inst51|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst19~0_combout\ = (!\inst51|inst24|inst4|inst9~q\) # (!\inst51|inst24|inst4|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst4|inst17~q\,
	datad => \inst51|inst24|inst4|inst9~q\,
	combout => \inst51|inst24|inst4|inst19~0_combout\);

-- Location: LCCOMB_X11_Y17_N14
\inst51|inst24|inst4|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst19~1_combout\ = \inst51|inst24|inst4|inst19~q\ $ (((\inst51|inst24|inst4|inst10~0_combout\ & (\inst51|inst24|inst4|inst14~q\ & !\inst51|inst24|inst4|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst10~0_combout\,
	datab => \inst51|inst24|inst4|inst14~q\,
	datac => \inst51|inst24|inst4|inst19~q\,
	datad => \inst51|inst24|inst4|inst19~0_combout\,
	combout => \inst51|inst24|inst4|inst19~1_combout\);

-- Location: FF_X11_Y17_N15
\inst51|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst19~1_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X11_Y17_N12
\inst51|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst18~combout\ = (\inst51|inst24|inst4|inst9~q\ & (\inst51|inst24|inst4|inst14~q\ & (\inst51|inst24|inst4|inst10~0_combout\ & \inst51|inst24|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst9~q\,
	datab => \inst51|inst24|inst4|inst14~q\,
	datac => \inst51|inst24|inst4|inst10~0_combout\,
	datad => \inst51|inst24|inst4|inst17~q\,
	combout => \inst51|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X11_Y17_N2
\inst51|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst21~0_combout\ = \inst51|inst24|inst4|inst21~q\ $ (((\inst51|inst24|inst4|inst19~q\ & \inst51|inst24|inst4|inst18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst4|inst19~q\,
	datac => \inst51|inst24|inst4|inst21~q\,
	datad => \inst51|inst24|inst4|inst18~combout\,
	combout => \inst51|inst24|inst4|inst21~0_combout\);

-- Location: FF_X11_Y17_N3
\inst51|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst21~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X11_Y17_N4
\inst51|inst24|inst4|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst10~1_combout\ = (!\inst51|inst24|inst4|inst17~q\ & (!\inst51|inst24|inst4|inst9~q\ & (!\inst51|inst24|inst4|inst19~q\ & !\inst51|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst17~q\,
	datab => \inst51|inst24|inst4|inst9~q\,
	datac => \inst51|inst24|inst4|inst19~q\,
	datad => \inst51|inst24|inst4|inst14~q\,
	combout => \inst51|inst24|inst4|inst10~1_combout\);

-- Location: LCCOMB_X11_Y17_N22
\inst51|inst24|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst10~combout\ = LCELL((!\inst51|inst24|inst4|inst21~q\ & (\inst51|inst24|inst4|inst10~1_combout\ & \inst51|inst24|inst4|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst4|inst21~q\,
	datac => \inst51|inst24|inst4|inst10~1_combout\,
	datad => \inst51|inst24|inst4|inst10~0_combout\,
	combout => \inst51|inst24|inst4|inst10~combout\);

-- Location: LCCOMB_X11_Y17_N0
\inst51|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst4~0_combout\ = !\inst51|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst4|inst4~q\,
	combout => \inst51|inst24|inst4|inst4~0_combout\);

-- Location: FF_X11_Y17_N29
\inst51|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst4|inst10~combout\,
	asdata => \inst51|inst24|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X7_Y17_N28
\inst51|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst25|inst~0_combout\ = !\inst51|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst25|inst~q\,
	combout => \inst51|inst25|inst~0_combout\);

-- Location: LCCOMB_X7_Y17_N16
\inst51|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst25|inst~feeder_combout\ = \inst51|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst25|inst~0_combout\,
	combout => \inst51|inst25|inst~feeder_combout\);

-- Location: FF_X7_Y17_N17
\inst51|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst4|inst4~q\,
	d => \inst51|inst25|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst25|inst~q\);

-- Location: LCCOMB_X7_Y17_N30
\inst51|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst26|inst~0_combout\ = !\inst51|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|inst26|inst~q\,
	combout => \inst51|inst26|inst~0_combout\);

-- Location: LCCOMB_X7_Y17_N6
\inst51|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst26|inst~feeder_combout\ = \inst51|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|inst26|inst~0_combout\,
	combout => \inst51|inst26|inst~feeder_combout\);

-- Location: FF_X7_Y17_N7
\inst51|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst25|ALT_INV_inst~q\,
	d => \inst51|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst26|inst~q\);

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

-- Location: LCCOMB_X1_Y11_N10
\inst51|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|dasda~0_combout\ = !\KEY4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY4~input_o\,
	combout => \inst51|dasda~0_combout\);

-- Location: FF_X1_Y11_N11
\inst51|dasda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst26|inst~q\,
	d => \inst51|dasda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|dasda~q\);

-- Location: LCCOMB_X1_Y11_N28
\inst51|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst29~feeder_combout\ = \inst51|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|dasda~q\,
	combout => \inst51|inst29~feeder_combout\);

-- Location: FF_X1_Y11_N29
\inst51|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst26|inst~q\,
	d => \inst51|inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst29~q\);

-- Location: LCCOMB_X1_Y11_N12
\inst51|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst30~feeder_combout\ = \inst51|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|inst29~q\,
	combout => \inst51|inst30~feeder_combout\);

-- Location: FF_X1_Y11_N13
\inst51|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst26|inst~q\,
	d => \inst51|inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst30~q\);

-- Location: LCCOMB_X1_Y11_N30
\inst51|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst31~feeder_combout\ = \inst51|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|inst30~q\,
	combout => \inst51|inst31~feeder_combout\);

-- Location: FF_X1_Y11_N31
\inst51|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst26|inst~q\,
	d => \inst51|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst31~q\);

-- Location: LCCOMB_X1_Y11_N14
\inst51|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst36~0_combout\ = (\inst51|dasda~q\ & (\inst51|inst29~q\ & (\inst51|inst31~q\ & \inst51|inst30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|dasda~q\,
	datab => \inst51|inst29~q\,
	datac => \inst51|inst31~q\,
	datad => \inst51|inst30~q\,
	combout => \inst51|inst36~0_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst51|inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst32~feeder_combout\ = \inst51|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst31~q\,
	combout => \inst51|inst32~feeder_combout\);

-- Location: FF_X1_Y11_N25
\inst51|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst26|inst~q\,
	d => \inst51|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst32~q\);

-- Location: LCCOMB_X1_Y11_N22
\inst51|inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst33~feeder_combout\ = \inst51|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|inst32~q\,
	combout => \inst51|inst33~feeder_combout\);

-- Location: FF_X1_Y11_N23
\inst51|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst26|inst~q\,
	d => \inst51|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst33~q\);

-- Location: LCCOMB_X1_Y11_N8
\inst51|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst23~feeder_combout\ = \inst51|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst33~q\,
	combout => \inst51|inst23~feeder_combout\);

-- Location: FF_X1_Y11_N9
\inst51|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst26|inst~q\,
	d => \inst51|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst23~q\);

-- Location: FF_X1_Y11_N19
\inst51|1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst26|inst~q\,
	asdata => \inst51|inst23~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|1231~q\);

-- Location: LCCOMB_X1_Y11_N18
\inst51|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst36~1_combout\ = (\inst51|inst33~q\ & (\inst51|inst23~q\ & (\inst51|1231~q\ & \inst51|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst33~q\,
	datab => \inst51|inst23~q\,
	datac => \inst51|1231~q\,
	datad => \inst51|inst32~q\,
	combout => \inst51|inst36~1_combout\);

-- Location: LCCOMB_X1_Y11_N16
\inst51|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst36~combout\ = LCELL((\inst51|inst36~0_combout\ & \inst51|inst36~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst36~0_combout\,
	datad => \inst51|inst36~1_combout\,
	combout => \inst51|inst36~combout\);

-- Location: CLKCTRL_G3
\inst51|inst36~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst51|inst36~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst51|inst36~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y12_N20
\inst46|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst2~0_combout\ = !\inst46|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst46|inst2~q\,
	combout => \inst46|inst2~0_combout\);

-- Location: LCCOMB_X18_Y12_N14
\inst46|inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst2~feeder_combout\ = \inst46|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst46|inst2~0_combout\,
	combout => \inst46|inst2~feeder_combout\);

-- Location: FF_X18_Y12_N15
\inst46|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst36~clkctrl_outclk\,
	d => \inst46|inst2~feeder_combout\,
	clrn => \inst45|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst2~q\);

-- Location: LCCOMB_X19_Y8_N28
\inst90|inst79|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst79|inst2~0_combout\ = (\inst90|inst|inst~q\ & (!\inst90|inst|inst7~q\)) # (!\inst90|inst|inst~q\ & ((\inst90|inst|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst90|inst|inst7~q\,
	datac => \inst90|inst|inst7~q\,
	datad => \inst90|inst|inst~q\,
	combout => \inst90|inst79|inst2~0_combout\);

-- Location: LCCOMB_X19_Y8_N8
\inst80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst80~1_combout\ = (\inst90|inst81|inst2~0_combout\ & (\inst46|inst2~q\ & (\inst|inst2~q\ $ (!\inst90|inst79|inst2~0_combout\)))) # (!\inst90|inst81|inst2~0_combout\ & (!\inst46|inst2~q\ & (\inst|inst2~q\ $ (!\inst90|inst79|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst81|inst2~0_combout\,
	datab => \inst|inst2~q\,
	datac => \inst46|inst2~q\,
	datad => \inst90|inst79|inst2~0_combout\,
	combout => \inst80~1_combout\);

-- Location: LCCOMB_X19_Y8_N20
inst80 : cycloneive_lcell_comb
-- Equation(s):
-- \inst80~combout\ = LCELL((\inst80~1_combout\ & (\inst44|inst~combout\ & \inst80~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst80~1_combout\,
	datac => \inst44|inst~combout\,
	datad => \inst80~0_combout\,
	combout => \inst80~combout\);

-- Location: LCCOMB_X18_Y8_N6
\inst90|inst|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst7~0_combout\ = \inst90|inst|inst~q\ $ (\inst90|inst|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst~q\,
	datac => \inst90|inst|inst7~q\,
	combout => \inst90|inst|inst7~0_combout\);

-- Location: FF_X18_Y8_N7
\inst90|inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~combout\,
	d => \inst90|inst|inst7~0_combout\,
	clrn => \inst90|inst|ALT_INV_inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst7~q\);

-- Location: LCCOMB_X18_Y8_N22
\inst90|inst|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst21~0_combout\ = (!\inst90|inst|inst17~q\) # (!\inst90|inst|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst14~q\,
	datad => \inst90|inst|inst17~q\,
	combout => \inst90|inst|inst21~0_combout\);

-- Location: LCCOMB_X18_Y8_N18
\inst90|inst|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst21~1_combout\ = \inst90|inst|inst21~q\ $ (((!\inst90|inst|inst21~0_combout\ & (\inst90|inst|inst13~combout\ & \inst90|inst|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst21~0_combout\,
	datab => \inst90|inst|inst13~combout\,
	datac => \inst90|inst|inst21~q\,
	datad => \inst90|inst|inst19~q\,
	combout => \inst90|inst|inst21~1_combout\);

-- Location: FF_X18_Y8_N19
\inst90|inst|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~combout\,
	d => \inst90|inst|inst21~1_combout\,
	clrn => \inst90|inst|ALT_INV_inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst21~q\);

-- Location: LCCOMB_X18_Y8_N4
\inst90|inst|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst10~0_combout\ = (!\inst90|inst|inst7~q\ & (!\inst90|inst|inst21~q\ & (!\inst90|inst|inst~q\ & !\inst90|inst|inst8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst7~q\,
	datab => \inst90|inst|inst21~q\,
	datac => \inst90|inst|inst~q\,
	datad => \inst90|inst|inst8~q\,
	combout => \inst90|inst|inst10~0_combout\);

-- Location: LCCOMB_X18_Y8_N16
\inst90|inst|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst3~combout\ = LCELL((\inst90|inst|inst10~0_combout\ & (!\inst90|inst|inst1|inst~q\ & \inst90|inst|inst10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst90|inst|inst10~0_combout\,
	datac => \inst90|inst|inst1|inst~q\,
	datad => \inst90|inst|inst10~1_combout\,
	combout => \inst90|inst|inst3~combout\);

-- Location: LCCOMB_X17_Y8_N30
\inst90|inst|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst90|inst|inst4~0_combout\ = !\inst90|inst|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst90|inst|inst4~q\,
	combout => \inst90|inst|inst4~0_combout\);

-- Location: FF_X17_Y8_N31
\inst90|inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst90|inst|inst3~combout\,
	d => \inst90|inst|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst|inst4~q\);

-- Location: LCCOMB_X24_Y17_N10
\inst23|inst|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst|inst~0_combout\ = !\inst23|inst|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst|inst|inst|inst~q\,
	combout => \inst23|inst|inst|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst23|inst|inst|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst|inst~feeder_combout\ = \inst23|inst|inst|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst|inst|inst|inst~0_combout\,
	combout => \inst23|inst|inst|inst|inst|inst~feeder_combout\);

-- Location: FF_X24_Y17_N5
\inst23|inst|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst23|inst|inst|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X24_Y17_N14
\inst23|inst|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst2|inst~0_combout\ = !\inst23|inst|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst|inst|inst2|inst~q\,
	combout => \inst23|inst|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst23|inst|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst2|inst~feeder_combout\ = \inst23|inst|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst|inst2|inst~0_combout\,
	combout => \inst23|inst|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X24_Y17_N29
\inst23|inst|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X23_Y17_N24
\inst23|inst|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst3|inst~0_combout\ = !\inst23|inst|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst|inst3|inst~q\,
	combout => \inst23|inst|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X23_Y17_N26
\inst23|inst|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst3|inst~feeder_combout\ = \inst23|inst|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst|inst3|inst~0_combout\,
	combout => \inst23|inst|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X23_Y17_N27
\inst23|inst|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X19_Y17_N10
\inst23|inst|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst4|inst~0_combout\ = !\inst23|inst|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst|inst4|inst~q\,
	combout => \inst23|inst|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X19_Y17_N24
\inst23|inst|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst4|inst~feeder_combout\ = \inst23|inst|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst|inst4|inst~0_combout\,
	combout => \inst23|inst|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X19_Y17_N25
\inst23|inst|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X19_Y17_N22
\inst23|inst|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst5|inst~0_combout\ = !\inst23|inst|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst|inst5|inst~q\,
	combout => \inst23|inst|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X19_Y17_N14
\inst23|inst|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst5|inst~feeder_combout\ = \inst23|inst|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst|inst|inst5|inst~0_combout\,
	combout => \inst23|inst|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X19_Y17_N15
\inst23|inst|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X16_Y17_N20
\inst23|inst|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst6|inst~0_combout\ = !\inst23|inst|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst|inst6|inst~q\,
	combout => \inst23|inst|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X16_Y17_N14
\inst23|inst|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst6|inst~feeder_combout\ = \inst23|inst|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst|inst6|inst~0_combout\,
	combout => \inst23|inst|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X16_Y17_N15
\inst23|inst|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X16_Y17_N22
\inst23|inst|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst7|inst~0_combout\ = !\inst23|inst|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst|inst|inst7|inst~q\,
	combout => \inst23|inst|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X16_Y17_N30
\inst23|inst|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst7|inst~feeder_combout\ = \inst23|inst|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst|inst|inst7|inst~0_combout\,
	combout => \inst23|inst|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X16_Y17_N31
\inst23|inst|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X17_Y17_N30
\inst23|inst|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst8|inst~0_combout\ = !\inst23|inst|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst|inst|inst8|inst~q\,
	combout => \inst23|inst|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X17_Y17_N24
\inst23|inst|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst|inst8|inst~feeder_combout\ = \inst23|inst|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst23|inst|inst|inst|inst8|inst~0_combout\,
	combout => \inst23|inst|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X17_Y17_N25
\inst23|inst|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X17_Y16_N18
\inst23|inst|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst|inst~0_combout\ = !\inst23|inst|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst|inst1|inst|inst~q\,
	combout => \inst23|inst|inst|inst1|inst|inst~0_combout\);

-- Location: FF_X17_Y16_N31
\inst23|inst|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst|inst8|inst~q\,
	asdata => \inst23|inst|inst|inst1|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X18_Y15_N28
\inst23|inst|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst2|inst~0_combout\ = !\inst23|inst|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst|inst1|inst2|inst~q\,
	combout => \inst23|inst|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X18_Y15_N14
\inst23|inst|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst2|inst~feeder_combout\ = \inst23|inst|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst1|inst2|inst~0_combout\,
	combout => \inst23|inst|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X18_Y15_N15
\inst23|inst|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X18_Y15_N26
\inst23|inst|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst3|inst~0_combout\ = !\inst23|inst|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst|inst1|inst3|inst~q\,
	combout => \inst23|inst|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X18_Y15_N12
\inst23|inst|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst3|inst~feeder_combout\ = \inst23|inst|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst|inst1|inst3|inst~0_combout\,
	combout => \inst23|inst|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X18_Y15_N13
\inst23|inst|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X21_Y11_N14
\inst23|inst|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst4|inst~0_combout\ = !\inst23|inst|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst1|inst4|inst~q\,
	combout => \inst23|inst|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst23|inst|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst4|inst~feeder_combout\ = \inst23|inst|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst1|inst4|inst~0_combout\,
	combout => \inst23|inst|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X21_Y11_N31
\inst23|inst|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X21_Y9_N30
\inst23|inst|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst5|inst~0_combout\ = !\inst23|inst|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst|inst1|inst5|inst~q\,
	combout => \inst23|inst|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X21_Y9_N22
\inst23|inst|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst5|inst~feeder_combout\ = \inst23|inst|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst|inst1|inst5|inst~0_combout\,
	combout => \inst23|inst|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X21_Y9_N23
\inst23|inst|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X21_Y9_N16
\inst23|inst|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst6|inst~0_combout\ = !\inst23|inst|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst1|inst6|inst~q\,
	combout => \inst23|inst|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X21_Y9_N14
\inst23|inst|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst6|inst~feeder_combout\ = \inst23|inst|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst|inst1|inst6|inst~0_combout\,
	combout => \inst23|inst|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X21_Y9_N15
\inst23|inst|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X22_Y9_N28
\inst23|inst|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst7|inst~0_combout\ = !\inst23|inst|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst|inst1|inst7|inst~q\,
	combout => \inst23|inst|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X22_Y9_N14
\inst23|inst|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst7|inst~feeder_combout\ = \inst23|inst|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst|inst1|inst7|inst~0_combout\,
	combout => \inst23|inst|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X22_Y9_N15
\inst23|inst|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X22_Y9_N22
\inst23|inst|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst8|inst~0_combout\ = !\inst23|inst|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst|inst1|inst8|inst~q\,
	combout => \inst23|inst|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X22_Y9_N30
\inst23|inst|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst|inst1|inst8|inst~feeder_combout\ = \inst23|inst|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst|inst1|inst8|inst~0_combout\,
	combout => \inst23|inst|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X22_Y9_N31
\inst23|inst|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst23|inst|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X18_Y9_N28
\inst23|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst2|inst~0_combout\ = !\inst23|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst2|inst~q\,
	combout => \inst23|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X18_Y9_N6
\inst23|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst2|inst~feeder_combout\ = \inst23|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst2|inst~0_combout\,
	combout => \inst23|inst|inst2|inst~feeder_combout\);

-- Location: FF_X18_Y9_N7
\inst23|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst23|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst2|inst~q\);

-- Location: LCCOMB_X19_Y9_N18
\inst23|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst3|inst~0_combout\ = !\inst23|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst3|inst~q\,
	combout => \inst23|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X19_Y9_N28
\inst23|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst3|inst~feeder_combout\ = \inst23|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst3|inst~0_combout\,
	combout => \inst23|inst|inst3|inst~feeder_combout\);

-- Location: FF_X19_Y9_N29
\inst23|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst2|ALT_INV_inst~q\,
	d => \inst23|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst3|inst~q\);

-- Location: LCCOMB_X19_Y9_N4
\inst23|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst7|inst~0_combout\ = !\inst23|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst7|inst~q\,
	combout => \inst23|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X19_Y9_N14
\inst23|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst7|inst~feeder_combout\ = \inst23|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst7|inst~0_combout\,
	combout => \inst23|inst|inst7|inst~feeder_combout\);

-- Location: FF_X19_Y9_N15
\inst23|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst3|ALT_INV_inst~q\,
	d => \inst23|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst7|inst~q\);

-- Location: LCCOMB_X18_Y9_N20
\inst23|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst8|inst~0_combout\ = !\inst23|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst8|inst~q\,
	combout => \inst23|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst23|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst8|inst~feeder_combout\ = \inst23|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst8|inst~0_combout\,
	combout => \inst23|inst|inst8|inst~feeder_combout\);

-- Location: FF_X18_Y9_N25
\inst23|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst7|ALT_INV_inst~q\,
	d => \inst23|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst8|inst~q\);

-- Location: LCCOMB_X17_Y9_N18
\inst23|inst|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst9|inst~0_combout\ = !\inst23|inst|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst9|inst~q\,
	combout => \inst23|inst|inst9|inst~0_combout\);

-- Location: LCCOMB_X17_Y9_N14
\inst23|inst|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst9|inst~feeder_combout\ = \inst23|inst|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst9|inst~0_combout\,
	combout => \inst23|inst|inst9|inst~feeder_combout\);

-- Location: FF_X17_Y9_N15
\inst23|inst|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst8|ALT_INV_inst~q\,
	d => \inst23|inst|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst9|inst~q\);

-- Location: LCCOMB_X16_Y9_N22
\inst23|inst|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst10|inst~0_combout\ = !\inst23|inst|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst10|inst~q\,
	combout => \inst23|inst|inst10|inst~0_combout\);

-- Location: LCCOMB_X16_Y9_N8
\inst23|inst|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst10|inst~feeder_combout\ = \inst23|inst|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst10|inst~0_combout\,
	combout => \inst23|inst|inst10|inst~feeder_combout\);

-- Location: FF_X16_Y9_N9
\inst23|inst|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst9|ALT_INV_inst~q\,
	d => \inst23|inst|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst10|inst~q\);

-- Location: LCCOMB_X16_Y9_N4
\inst23|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst~0_combout\ = !\inst23|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst~q\,
	combout => \inst23|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X16_Y9_N28
\inst23|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst~feeder_combout\ = \inst23|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst~0_combout\,
	combout => \inst23|inst|inst4|inst~feeder_combout\);

-- Location: FF_X16_Y9_N29
\inst23|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst10|inst~q\,
	d => \inst23|inst|inst4|inst~feeder_combout\,
	clrn => \inst23|inst|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst4|inst~q\);

-- Location: LCCOMB_X16_Y9_N18
\inst23|inst|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst7~0_combout\ = \inst23|inst|inst4|inst~q\ $ (\inst23|inst|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst4|inst~q\,
	datac => \inst23|inst|inst4|inst7~q\,
	combout => \inst23|inst|inst4|inst7~0_combout\);

-- Location: LCCOMB_X16_Y9_N26
\inst23|inst|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst7~feeder_combout\ = \inst23|inst|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst7~0_combout\,
	combout => \inst23|inst|inst4|inst7~feeder_combout\);

-- Location: FF_X16_Y9_N27
\inst23|inst|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst10|inst~q\,
	d => \inst23|inst|inst4|inst7~feeder_combout\,
	clrn => \inst23|inst|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst4|inst7~q\);

-- Location: LCCOMB_X16_Y9_N16
\inst23|inst|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst8~0_combout\ = \inst23|inst|inst4|inst8~q\ $ (((\inst23|inst|inst4|inst7~q\ & \inst23|inst|inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst7~q\,
	datab => \inst23|inst|inst4|inst~q\,
	datac => \inst23|inst|inst4|inst8~q\,
	combout => \inst23|inst|inst4|inst8~0_combout\);

-- Location: FF_X16_Y9_N17
\inst23|inst|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst10|inst~q\,
	d => \inst23|inst|inst4|inst8~0_combout\,
	clrn => \inst23|inst|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst4|inst8~q\);

-- Location: LCCOMB_X16_Y9_N6
\inst23|inst|inst4|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst5~0_combout\ = (\inst23|inst|inst4|inst7~q\ & \inst23|inst|inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst|inst4|inst7~q\,
	datad => \inst23|inst|inst4|inst~q\,
	combout => \inst23|inst|inst4|inst5~0_combout\);

-- Location: LCCOMB_X16_Y9_N24
\inst23|inst|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst9~0_combout\ = \inst23|inst|inst4|inst9~q\ $ (((\inst23|inst|inst4|inst8~q\ & (\inst23|inst|inst4|inst~q\ & \inst23|inst|inst4|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst8~q\,
	datab => \inst23|inst|inst4|inst~q\,
	datac => \inst23|inst|inst4|inst9~q\,
	datad => \inst23|inst|inst4|inst7~q\,
	combout => \inst23|inst|inst4|inst9~0_combout\);

-- Location: FF_X16_Y9_N25
\inst23|inst|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst10|inst~q\,
	d => \inst23|inst|inst4|inst9~0_combout\,
	clrn => \inst23|inst|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst4|inst9~q\);

-- Location: LCCOMB_X16_Y9_N2
\inst23|inst|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst14~0_combout\ = \inst23|inst|inst4|inst14~q\ $ (((\inst23|inst|inst4|inst9~q\ & (\inst23|inst|inst4|inst8~q\ & \inst23|inst|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst9~q\,
	datab => \inst23|inst|inst4|inst8~q\,
	datac => \inst23|inst|inst4|inst14~q\,
	datad => \inst23|inst|inst4|inst5~0_combout\,
	combout => \inst23|inst|inst4|inst14~0_combout\);

-- Location: FF_X16_Y9_N3
\inst23|inst|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst10|inst~q\,
	d => \inst23|inst|inst4|inst14~0_combout\,
	clrn => \inst23|inst|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst4|inst14~q\);

-- Location: LCCOMB_X16_Y9_N20
\inst23|inst|inst4|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst16~combout\ = (\inst23|inst|inst4|inst8~q\ & (\inst23|inst|inst4|inst5~0_combout\ & (\inst23|inst|inst4|inst14~q\ & \inst23|inst|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst8~q\,
	datab => \inst23|inst|inst4|inst5~0_combout\,
	datac => \inst23|inst|inst4|inst14~q\,
	datad => \inst23|inst|inst4|inst9~q\,
	combout => \inst23|inst|inst4|inst16~combout\);

-- Location: LCCOMB_X16_Y9_N0
\inst23|inst|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst17~0_combout\ = \inst23|inst|inst4|inst16~combout\ $ (\inst23|inst|inst4|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst16~combout\,
	datac => \inst23|inst|inst4|inst17~q\,
	combout => \inst23|inst|inst4|inst17~0_combout\);

-- Location: FF_X16_Y9_N1
\inst23|inst|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst10|inst~q\,
	d => \inst23|inst|inst4|inst17~0_combout\,
	clrn => \inst23|inst|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst4|inst17~q\);

-- Location: LCCOMB_X16_Y9_N30
\inst23|inst|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst19~0_combout\ = \inst23|inst|inst4|inst19~q\ $ (((\inst23|inst|inst4|inst16~combout\ & \inst23|inst|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst16~combout\,
	datac => \inst23|inst|inst4|inst19~q\,
	datad => \inst23|inst|inst4|inst17~q\,
	combout => \inst23|inst|inst4|inst19~0_combout\);

-- Location: FF_X16_Y9_N31
\inst23|inst|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst10|inst~q\,
	d => \inst23|inst|inst4|inst19~0_combout\,
	clrn => \inst23|inst|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst4|inst19~q\);

-- Location: LCCOMB_X16_Y9_N10
\inst23|inst|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst21~0_combout\ = \inst23|inst|inst4|inst21~q\ $ (((\inst23|inst|inst4|inst16~combout\ & (\inst23|inst|inst4|inst17~q\ & \inst23|inst|inst4|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst16~combout\,
	datab => \inst23|inst|inst4|inst17~q\,
	datac => \inst23|inst|inst4|inst21~q\,
	datad => \inst23|inst|inst4|inst19~q\,
	combout => \inst23|inst|inst4|inst21~0_combout\);

-- Location: FF_X16_Y9_N11
\inst23|inst|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst10|inst~q\,
	d => \inst23|inst|inst4|inst21~0_combout\,
	clrn => \inst23|inst|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst4|inst21~q\);

-- Location: LCCOMB_X16_Y9_N14
\inst23|inst|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst10~0_combout\ = (!\inst23|inst|inst4|inst19~q\ & (!\inst23|inst|inst4|inst17~q\ & (!\inst23|inst|inst4|inst9~q\ & !\inst23|inst|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst19~q\,
	datab => \inst23|inst|inst4|inst17~q\,
	datac => \inst23|inst|inst4|inst9~q\,
	datad => \inst23|inst|inst4|inst14~q\,
	combout => \inst23|inst|inst4|inst10~0_combout\);

-- Location: LCCOMB_X16_Y9_N12
\inst23|inst|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst10~combout\ = LCELL((!\inst23|inst|inst4|inst21~q\ & (!\inst23|inst|inst4|inst8~q\ & (\inst23|inst|inst4|inst10~0_combout\ & \inst23|inst|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|inst4|inst21~q\,
	datab => \inst23|inst|inst4|inst8~q\,
	datac => \inst23|inst|inst4|inst10~0_combout\,
	datad => \inst23|inst|inst4|inst5~0_combout\,
	combout => \inst23|inst|inst4|inst10~combout\);

-- Location: LCCOMB_X17_Y7_N12
\inst23|inst|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst4~0_combout\ = !\inst23|inst|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst4|inst4~q\,
	combout => \inst23|inst|inst4|inst4~0_combout\);

-- Location: LCCOMB_X17_Y7_N0
\inst23|inst|inst4|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst|inst4|inst4~feeder_combout\ = \inst23|inst|inst4|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|inst|inst4|inst4~0_combout\,
	combout => \inst23|inst|inst4|inst4~feeder_combout\);

-- Location: FF_X17_Y7_N1
\inst23|inst|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst4|inst10~combout\,
	d => \inst23|inst|inst4|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst|inst4|inst4~q\);

-- Location: LCCOMB_X17_Y7_N18
\inst23|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|inst4|inst~0_combout\ = !\inst23|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|inst4|inst~q\,
	combout => \inst23|inst4|inst~0_combout\);

-- Location: FF_X17_Y7_N13
\inst23|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|inst|inst4|inst4~q\,
	asdata => \inst23|inst4|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|inst4|inst~q\);

-- Location: LCCOMB_X17_Y7_N14
inst7 : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~combout\ = LCELL((\inst90|inst|inst4~q\) # (!\inst23|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst90|inst|inst4~q\,
	datad => \inst23|inst4|inst~q\,
	combout => \inst7~combout\);

-- Location: LCCOMB_X18_Y7_N18
\inst89|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst~0_combout\ = !\inst89|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst89|inst~q\,
	combout => \inst89|inst~0_combout\);

-- Location: LCCOMB_X18_Y7_N14
\inst89|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst~feeder_combout\ = \inst89|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst89|inst~0_combout\,
	combout => \inst89|inst~feeder_combout\);

-- Location: FF_X18_Y7_N15
\inst89|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~combout\,
	d => \inst89|inst~feeder_combout\,
	clrn => \inst89|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst89|inst~q\);

-- Location: LCCOMB_X18_Y7_N6
\inst89|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst7~0_combout\ = \inst89|inst~q\ $ (\inst89|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|inst~q\,
	datad => \inst89|inst7~q\,
	combout => \inst89|inst7~0_combout\);

-- Location: LCCOMB_X18_Y7_N24
\inst89|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst7~feeder_combout\ = \inst89|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst89|inst7~0_combout\,
	combout => \inst89|inst7~feeder_combout\);

-- Location: FF_X18_Y7_N25
\inst89|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~combout\,
	d => \inst89|inst7~feeder_combout\,
	clrn => \inst89|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst89|inst7~q\);

-- Location: LCCOMB_X18_Y7_N30
\inst89|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst8~0_combout\ = \inst89|inst8~q\ $ (((\inst89|inst~q\ & \inst89|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst89|inst~q\,
	datac => \inst89|inst8~q\,
	datad => \inst89|inst7~q\,
	combout => \inst89|inst8~0_combout\);

-- Location: FF_X18_Y7_N31
\inst89|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~combout\,
	d => \inst89|inst8~0_combout\,
	clrn => \inst89|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst89|inst8~q\);

-- Location: LCCOMB_X18_Y7_N10
\inst89|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst9~0_combout\ = \inst89|inst9~q\ $ (((\inst89|inst8~q\ & (\inst89|inst7~q\ & \inst89|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|inst8~q\,
	datab => \inst89|inst7~q\,
	datac => \inst89|inst9~q\,
	datad => \inst89|inst~q\,
	combout => \inst89|inst9~0_combout\);

-- Location: FF_X18_Y7_N11
\inst89|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~combout\,
	d => \inst89|inst9~0_combout\,
	clrn => \inst89|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst89|inst9~q\);

-- Location: LCCOMB_X18_Y7_N26
\inst89|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst13~combout\ = (\inst89|inst~q\ & (\inst89|inst7~q\ & (\inst89|inst8~q\ & \inst89|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|inst~q\,
	datab => \inst89|inst7~q\,
	datac => \inst89|inst8~q\,
	datad => \inst89|inst9~q\,
	combout => \inst89|inst13~combout\);

-- Location: LCCOMB_X18_Y7_N28
\inst89|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst14~0_combout\ = \inst89|inst13~combout\ $ (\inst89|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst89|inst13~combout\,
	datac => \inst89|inst14~q\,
	combout => \inst89|inst14~0_combout\);

-- Location: FF_X18_Y7_N29
\inst89|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~combout\,
	d => \inst89|inst14~0_combout\,
	clrn => \inst89|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst89|inst14~q\);

-- Location: LCCOMB_X18_Y7_N8
\inst89|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst17~0_combout\ = \inst89|inst17~q\ $ (((\inst89|inst13~combout\ & \inst89|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst89|inst13~combout\,
	datac => \inst89|inst17~q\,
	datad => \inst89|inst14~q\,
	combout => \inst89|inst17~0_combout\);

-- Location: FF_X18_Y7_N9
\inst89|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~combout\,
	d => \inst89|inst17~0_combout\,
	clrn => \inst89|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst89|inst17~q\);

-- Location: LCCOMB_X18_Y7_N4
\inst89|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst19~0_combout\ = \inst89|inst19~q\ $ (((\inst89|inst17~q\ & (\inst89|inst13~combout\ & \inst89|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|inst17~q\,
	datab => \inst89|inst13~combout\,
	datac => \inst89|inst19~q\,
	datad => \inst89|inst14~q\,
	combout => \inst89|inst19~0_combout\);

-- Location: FF_X18_Y7_N5
\inst89|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~combout\,
	d => \inst89|inst19~0_combout\,
	clrn => \inst89|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst89|inst19~q\);

-- Location: LCCOMB_X18_Y7_N16
\inst89|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst21~0_combout\ = (!\inst89|inst17~q\) # (!\inst89|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst89|inst19~q\,
	datad => \inst89|inst17~q\,
	combout => \inst89|inst21~0_combout\);

-- Location: LCCOMB_X18_Y7_N12
\inst89|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst21~1_combout\ = \inst89|inst21~q\ $ (((\inst89|inst14~q\ & (\inst89|inst13~combout\ & !\inst89|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|inst14~q\,
	datab => \inst89|inst13~combout\,
	datac => \inst89|inst21~q\,
	datad => \inst89|inst21~0_combout\,
	combout => \inst89|inst21~1_combout\);

-- Location: FF_X18_Y7_N13
\inst89|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~combout\,
	d => \inst89|inst21~1_combout\,
	clrn => \inst89|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst89|inst21~q\);

-- Location: LCCOMB_X18_Y7_N22
\inst89|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst10~0_combout\ = (!\inst89|inst8~q\ & (\inst89|inst7~q\ & (!\inst89|inst~q\ & !\inst89|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|inst8~q\,
	datab => \inst89|inst7~q\,
	datac => \inst89|inst~q\,
	datad => \inst89|inst21~q\,
	combout => \inst89|inst10~0_combout\);

-- Location: LCCOMB_X18_Y7_N2
\inst89|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst10~1_combout\ = (\inst89|inst9~q\ & (!\inst89|inst17~q\ & (!\inst89|inst19~q\ & !\inst89|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|inst9~q\,
	datab => \inst89|inst17~q\,
	datac => \inst89|inst19~q\,
	datad => \inst89|inst14~q\,
	combout => \inst89|inst10~1_combout\);

-- Location: LCCOMB_X18_Y7_N0
\inst89|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst10~combout\ = LCELL((\inst89|inst10~0_combout\ & \inst89|inst10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst89|inst10~0_combout\,
	datad => \inst89|inst10~1_combout\,
	combout => \inst89|inst10~combout\);

-- Location: LCCOMB_X18_Y7_N20
\inst89|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst89|inst4~0_combout\ = !\inst89|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|inst4~q\,
	combout => \inst89|inst4~0_combout\);

-- Location: FF_X18_Y7_N19
\inst89|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst89|inst10~combout\,
	asdata => \inst89|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst89|inst4~q\);

-- Location: LCCOMB_X19_Y8_N26
\inst44|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|inst26|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst44|inst26|inst~feeder_combout\);

-- Location: FF_X19_Y8_N27
\inst44|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst89|ALT_INV_inst4~q\,
	d => \inst44|inst26|inst~feeder_combout\,
	clrn => \inst44|inst26|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|inst26|inst~q\);

-- Location: LCCOMB_X19_Y7_N0
\inst44|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|inst25|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst44|inst25|inst~feeder_combout\);

-- Location: FF_X19_Y7_N1
\inst44|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst89|inst4~q\,
	d => \inst44|inst25|inst~feeder_combout\,
	clrn => \inst44|inst25|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|inst25|inst~q\);

-- Location: LCCOMB_X19_Y8_N22
\inst44|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|inst~combout\ = LCELL((\inst44|inst26|inst~q\) # (\inst44|inst25|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|inst26|inst~q\,
	datad => \inst44|inst25|inst~q\,
	combout => \inst44|inst~combout\);

-- Location: LCCOMB_X19_Y12_N26
\inst45|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst7|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst45|inst7|inst~feeder_combout\);

-- Location: FF_X19_Y12_N27
\inst45|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst44|inst~combout\,
	d => \inst45|inst7|inst~feeder_combout\,
	clrn => \inst45|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst7|inst~q\);

-- Location: FF_X18_Y11_N23
\inst47|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst36~clkctrl_outclk\,
	d => \inst47|inst2~feeder_combout\,
	clrn => \inst45|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst2~q\);

-- Location: LCCOMB_X17_Y11_N24
\inst47|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst~0_combout\ = !\inst47|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst47|inst~q\,
	combout => \inst47|inst~0_combout\);

-- Location: LCCOMB_X22_Y11_N6
\inst47|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst32~combout\ = LCELL((\FPGA_CLK~input_o\ & \inst47|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_CLK~input_o\,
	datad => \inst47|inst~q\,
	combout => \inst47|inst32~combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst47|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst|inst~0_combout\ = !\inst47|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst47|inst31|inst|inst|inst|inst~q\,
	combout => \inst47|inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X22_Y11_N7
\inst47|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst32~combout\,
	asdata => \inst47|inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X22_Y11_N28
\inst47|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst2|inst~0_combout\ = !\inst47|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst|inst|inst2|inst~q\,
	combout => \inst47|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X22_Y11_N22
\inst47|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst47|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst47|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst47|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X22_Y11_N23
\inst47|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X23_Y11_N12
\inst47|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst3|inst~0_combout\ = !\inst47|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst47|inst31|inst|inst|inst3|inst~q\,
	combout => \inst47|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X23_Y11_N16
\inst47|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst47|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst47|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst47|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X23_Y11_N17
\inst47|inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X23_Y11_N28
\inst47|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst4|inst~0_combout\ = !\inst47|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst|inst4|inst~q\,
	combout => \inst47|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X23_Y11_N14
\inst47|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst47|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst47|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X23_Y11_N15
\inst47|inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X24_Y12_N8
\inst47|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst5|inst~0_combout\ = !\inst47|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst|inst|inst5|inst~q\,
	combout => \inst47|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\inst47|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst47|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst47|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X24_Y12_N21
\inst47|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X24_Y12_N16
\inst47|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst6|inst~0_combout\ = !\inst47|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst|inst6|inst~q\,
	combout => \inst47|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X24_Y12_N14
\inst47|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst47|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst47|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X24_Y12_N15
\inst47|inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X25_Y12_N22
\inst47|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst7|inst~0_combout\ = !\inst47|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst47|inst31|inst|inst|inst7|inst~q\,
	combout => \inst47|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X25_Y12_N24
\inst47|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst47|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst47|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst47|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X25_Y12_N25
\inst47|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X25_Y12_N4
\inst47|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst8|inst~0_combout\ = !\inst47|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst|inst8|inst~q\,
	combout => \inst47|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X25_Y12_N16
\inst47|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst47|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst47|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X25_Y12_N17
\inst47|inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X29_Y12_N18
\inst47|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst|inst~0_combout\ = !\inst47|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst1|inst|inst~q\,
	combout => \inst47|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X29_Y12_N28
\inst47|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst47|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst47|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X29_Y12_N29
\inst47|inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst|inst8|inst~q\,
	d => \inst47|inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X29_Y12_N4
\inst47|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst47|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst47|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X29_Y12_N14
\inst47|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst47|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst47|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X29_Y12_N15
\inst47|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X28_Y12_N28
\inst47|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst47|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst47|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst47|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X28_Y12_N24
\inst47|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst47|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst47|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X28_Y12_N25
\inst47|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X28_Y12_N30
\inst47|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst47|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst47|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X28_Y12_N16
\inst47|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst47|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst47|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X28_Y12_N17
\inst47|inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X26_Y12_N28
\inst47|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst47|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst47|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst47|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X26_Y12_N24
\inst47|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst47|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst47|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X26_Y12_N25
\inst47|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X26_Y12_N16
\inst47|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst47|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst47|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X26_Y12_N14
\inst47|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst47|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst47|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X26_Y12_N15
\inst47|inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X26_Y10_N28
\inst47|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst47|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst47|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst47|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X26_Y10_N6
\inst47|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst47|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst47|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X26_Y10_N7
\inst47|inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X26_Y10_N30
\inst47|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst47|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst47|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst47|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X26_Y10_N24
\inst47|inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst47|inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst47|inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X26_Y10_N25
\inst47|inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst47|inst31|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X24_Y10_N10
\inst47|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst2|inst~0_combout\ = !\inst47|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst2|inst~q\,
	combout => \inst47|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X24_Y10_N28
\inst47|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst2|inst~feeder_combout\ = \inst47|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst2|inst~0_combout\,
	combout => \inst47|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X24_Y10_N29
\inst47|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst47|inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst2|inst~q\);

-- Location: LCCOMB_X24_Y10_N4
\inst47|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst3|inst~0_combout\ = !\inst47|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst3|inst~q\,
	combout => \inst47|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X24_Y10_N14
\inst47|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst3|inst~feeder_combout\ = \inst47|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst3|inst~0_combout\,
	combout => \inst47|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X24_Y10_N15
\inst47|inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst2|ALT_INV_inst~q\,
	d => \inst47|inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst3|inst~q\);

-- Location: LCCOMB_X23_Y10_N10
\inst47|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst7|inst~0_combout\ = !\inst47|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst7|inst~q\,
	combout => \inst47|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X23_Y10_N24
\inst47|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst7|inst~feeder_combout\ = \inst47|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst7|inst~0_combout\,
	combout => \inst47|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X23_Y10_N25
\inst47|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst3|ALT_INV_inst~q\,
	d => \inst47|inst31|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst7|inst~q\);

-- Location: LCCOMB_X23_Y10_N4
\inst47|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst8|inst~0_combout\ = !\inst47|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst8|inst~q\,
	combout => \inst47|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X23_Y10_N14
\inst47|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst8|inst~feeder_combout\ = \inst47|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst8|inst~0_combout\,
	combout => \inst47|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X23_Y10_N15
\inst47|inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst7|ALT_INV_inst~q\,
	d => \inst47|inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst8|inst~q\);

-- Location: LCCOMB_X22_Y10_N18
\inst47|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst9|inst~0_combout\ = !\inst47|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst9|inst~q\,
	combout => \inst47|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X22_Y10_N28
\inst47|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst9|inst~feeder_combout\ = \inst47|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst9|inst~0_combout\,
	combout => \inst47|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X22_Y10_N29
\inst47|inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst8|ALT_INV_inst~q\,
	d => \inst47|inst31|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst9|inst~q\);

-- Location: LCCOMB_X21_Y10_N28
\inst47|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst10|inst~0_combout\ = !\inst47|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst10|inst~q\,
	combout => \inst47|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X21_Y10_N0
\inst47|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst10|inst~feeder_combout\ = \inst47|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst10|inst~0_combout\,
	combout => \inst47|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X21_Y10_N1
\inst47|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst9|ALT_INV_inst~q\,
	d => \inst47|inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst10|inst~q\);

-- Location: LCCOMB_X19_Y11_N2
\inst47|inst31|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst~0_combout\ = !\inst47|inst31|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst~q\,
	combout => \inst47|inst31|inst4|inst~0_combout\);

-- Location: FF_X19_Y11_N23
\inst47|inst31|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst10|inst~q\,
	asdata => \inst47|inst31|inst4|inst~0_combout\,
	clrn => \inst47|inst31|inst4|ALT_INV_inst10~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst4|inst~q\);

-- Location: LCCOMB_X19_Y11_N0
\inst47|inst31|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst7~0_combout\ = \inst47|inst31|inst4|inst~q\ $ (\inst47|inst31|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst4|inst~q\,
	datad => \inst47|inst31|inst4|inst7~q\,
	combout => \inst47|inst31|inst4|inst7~0_combout\);

-- Location: LCCOMB_X19_Y11_N18
\inst47|inst31|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst7~feeder_combout\ = \inst47|inst31|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst47|inst31|inst4|inst7~0_combout\,
	combout => \inst47|inst31|inst4|inst7~feeder_combout\);

-- Location: FF_X19_Y11_N19
\inst47|inst31|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst10|inst~q\,
	d => \inst47|inst31|inst4|inst7~feeder_combout\,
	clrn => \inst47|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst4|inst7~q\);

-- Location: LCCOMB_X19_Y11_N20
\inst47|inst31|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst8~0_combout\ = \inst47|inst31|inst4|inst8~q\ $ (((\inst47|inst31|inst4|inst~q\ & \inst47|inst31|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst~q\,
	datac => \inst47|inst31|inst4|inst8~q\,
	datad => \inst47|inst31|inst4|inst7~q\,
	combout => \inst47|inst31|inst4|inst8~0_combout\);

-- Location: FF_X19_Y11_N21
\inst47|inst31|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst10|inst~q\,
	d => \inst47|inst31|inst4|inst8~0_combout\,
	clrn => \inst47|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst4|inst8~q\);

-- Location: LCCOMB_X19_Y11_N26
\inst47|inst31|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst9~0_combout\ = \inst47|inst31|inst4|inst9~q\ $ (((\inst47|inst31|inst4|inst8~q\ & (\inst47|inst31|inst4|inst7~q\ & \inst47|inst31|inst4|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst8~q\,
	datab => \inst47|inst31|inst4|inst7~q\,
	datac => \inst47|inst31|inst4|inst9~q\,
	datad => \inst47|inst31|inst4|inst~q\,
	combout => \inst47|inst31|inst4|inst9~0_combout\);

-- Location: FF_X19_Y11_N27
\inst47|inst31|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst10|inst~q\,
	d => \inst47|inst31|inst4|inst9~0_combout\,
	clrn => \inst47|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst4|inst9~q\);

-- Location: LCCOMB_X19_Y11_N28
\inst47|inst31|inst4|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst5~0_combout\ = (\inst47|inst31|inst4|inst~q\ & \inst47|inst31|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst47|inst31|inst4|inst~q\,
	datad => \inst47|inst31|inst4|inst7~q\,
	combout => \inst47|inst31|inst4|inst5~0_combout\);

-- Location: LCCOMB_X19_Y11_N6
\inst47|inst31|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst14~0_combout\ = \inst47|inst31|inst4|inst14~q\ $ (((\inst47|inst31|inst4|inst8~q\ & (\inst47|inst31|inst4|inst5~0_combout\ & \inst47|inst31|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst8~q\,
	datab => \inst47|inst31|inst4|inst5~0_combout\,
	datac => \inst47|inst31|inst4|inst14~q\,
	datad => \inst47|inst31|inst4|inst9~q\,
	combout => \inst47|inst31|inst4|inst14~0_combout\);

-- Location: FF_X19_Y11_N7
\inst47|inst31|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst10|inst~q\,
	d => \inst47|inst31|inst4|inst14~0_combout\,
	clrn => \inst47|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst4|inst14~q\);

-- Location: LCCOMB_X19_Y11_N24
\inst47|inst31|inst4|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst16~combout\ = (\inst47|inst31|inst4|inst8~q\ & (\inst47|inst31|inst4|inst9~q\ & (\inst47|inst31|inst4|inst5~0_combout\ & \inst47|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst8~q\,
	datab => \inst47|inst31|inst4|inst9~q\,
	datac => \inst47|inst31|inst4|inst5~0_combout\,
	datad => \inst47|inst31|inst4|inst14~q\,
	combout => \inst47|inst31|inst4|inst16~combout\);

-- Location: LCCOMB_X19_Y11_N30
\inst47|inst31|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst17~0_combout\ = \inst47|inst31|inst4|inst16~combout\ $ (\inst47|inst31|inst4|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst16~combout\,
	datac => \inst47|inst31|inst4|inst17~q\,
	combout => \inst47|inst31|inst4|inst17~0_combout\);

-- Location: FF_X19_Y11_N31
\inst47|inst31|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst10|inst~q\,
	d => \inst47|inst31|inst4|inst17~0_combout\,
	clrn => \inst47|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst4|inst17~q\);

-- Location: LCCOMB_X19_Y11_N8
\inst47|inst31|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst19~0_combout\ = \inst47|inst31|inst4|inst19~q\ $ (((\inst47|inst31|inst4|inst16~combout\ & \inst47|inst31|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst16~combout\,
	datac => \inst47|inst31|inst4|inst19~q\,
	datad => \inst47|inst31|inst4|inst17~q\,
	combout => \inst47|inst31|inst4|inst19~0_combout\);

-- Location: FF_X19_Y11_N9
\inst47|inst31|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst10|inst~q\,
	d => \inst47|inst31|inst4|inst19~0_combout\,
	clrn => \inst47|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst4|inst19~q\);

-- Location: LCCOMB_X19_Y11_N16
\inst47|inst31|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst21~0_combout\ = (((!\inst47|inst31|inst4|inst14~q\) # (!\inst47|inst31|inst4|inst19~q\)) # (!\inst47|inst31|inst4|inst9~q\)) # (!\inst47|inst31|inst4|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst8~q\,
	datab => \inst47|inst31|inst4|inst9~q\,
	datac => \inst47|inst31|inst4|inst19~q\,
	datad => \inst47|inst31|inst4|inst14~q\,
	combout => \inst47|inst31|inst4|inst21~0_combout\);

-- Location: LCCOMB_X19_Y11_N12
\inst47|inst31|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst21~1_combout\ = \inst47|inst31|inst4|inst21~q\ $ (((\inst47|inst31|inst4|inst17~q\ & (!\inst47|inst31|inst4|inst21~0_combout\ & \inst47|inst31|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst17~q\,
	datab => \inst47|inst31|inst4|inst21~0_combout\,
	datac => \inst47|inst31|inst4|inst21~q\,
	datad => \inst47|inst31|inst4|inst5~0_combout\,
	combout => \inst47|inst31|inst4|inst21~1_combout\);

-- Location: FF_X19_Y11_N13
\inst47|inst31|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst10|inst~q\,
	d => \inst47|inst31|inst4|inst21~1_combout\,
	clrn => \inst47|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst4|inst21~q\);

-- Location: LCCOMB_X19_Y11_N4
\inst47|inst31|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst10~0_combout\ = (!\inst47|inst31|inst4|inst17~q\ & (!\inst47|inst31|inst4|inst19~q\ & (!\inst47|inst31|inst4|inst9~q\ & !\inst47|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst17~q\,
	datab => \inst47|inst31|inst4|inst19~q\,
	datac => \inst47|inst31|inst4|inst9~q\,
	datad => \inst47|inst31|inst4|inst14~q\,
	combout => \inst47|inst31|inst4|inst10~0_combout\);

-- Location: LCCOMB_X19_Y11_N10
\inst47|inst31|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst10~combout\ = LCELL((!\inst47|inst31|inst4|inst21~q\ & (!\inst47|inst31|inst4|inst8~q\ & (\inst47|inst31|inst4|inst10~0_combout\ & \inst47|inst31|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|inst31|inst4|inst21~q\,
	datab => \inst47|inst31|inst4|inst8~q\,
	datac => \inst47|inst31|inst4|inst10~0_combout\,
	datad => \inst47|inst31|inst4|inst5~0_combout\,
	combout => \inst47|inst31|inst4|inst10~combout\);

-- Location: LCCOMB_X19_Y11_N14
\inst47|inst31|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst31|inst4|inst4~0_combout\ = !\inst47|inst31|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|inst31|inst4|inst4~q\,
	combout => \inst47|inst31|inst4|inst4~0_combout\);

-- Location: FF_X19_Y11_N3
\inst47|inst31|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst4|inst10~combout\,
	asdata => \inst47|inst31|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst31|inst4|inst4~q\);

-- Location: LCCOMB_X18_Y11_N16
\inst47|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst17|inst~0_combout\ = !\inst47|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst47|inst17|inst~q\,
	combout => \inst47|inst17|inst~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst47|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst17|inst~feeder_combout\ = \inst47|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst47|inst17|inst~0_combout\,
	combout => \inst47|inst17|inst~feeder_combout\);

-- Location: FF_X18_Y11_N21
\inst47|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst31|inst4|inst4~q\,
	d => \inst47|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst17|inst~q\);

-- Location: LCCOMB_X17_Y11_N20
\inst47|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst47|inst3|inst~feeder_combout\);

-- Location: FF_X17_Y11_N21
\inst47|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst17|ALT_INV_inst~q\,
	d => \inst47|inst3|inst~feeder_combout\,
	clrn => \inst47|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst3|inst~q\);

-- Location: FF_X17_Y11_N25
\inst47|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47|inst2~q\,
	d => \inst47|inst~0_combout\,
	clrn => \inst47|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst~q\);

-- Location: LCCOMB_X24_Y11_N24
\inst5|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst9|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|inst9|inst~feeder_combout\);

-- Location: FF_X24_Y11_N25
\inst5|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst36~clkctrl_outclk\,
	d => \inst5|inst9|inst~feeder_combout\,
	clrn => \inst5|inst9|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst9|inst~q\);

-- Location: LCCOMB_X23_Y12_N30
\inst5|inst19|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst19|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|inst19|inst~feeder_combout\);

-- Location: FF_X23_Y12_N31
\inst5|inst19|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst36~clkctrl_outclk\,
	d => \inst5|inst19|inst~feeder_combout\,
	clrn => \inst5|inst19|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst19|inst~q\);

-- Location: LCCOMB_X25_Y11_N24
\inst5|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst17|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|inst17|inst~feeder_combout\);

-- Location: FF_X25_Y11_N25
\inst5|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst36~clkctrl_outclk\,
	d => \inst5|inst17|inst~feeder_combout\,
	clrn => \inst5|inst17|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst17|inst~q\);

-- Location: CLKCTRL_G9
\inst82~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst82~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst82~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y15_N0
\inst5|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|inst8|inst~feeder_combout\);

-- Location: FF_X24_Y15_N1
\inst5|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst82~clkctrl_outclk\,
	d => \inst5|inst8|inst~feeder_combout\,
	clrn => \inst5|inst8|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst~q\);

-- Location: LCCOMB_X23_Y12_N20
\inst5|inst18|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst18|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|inst18|inst~feeder_combout\);

-- Location: FF_X23_Y12_N21
\inst5|inst18|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst36~clkctrl_outclk\,
	d => \inst5|inst18|inst~feeder_combout\,
	clrn => \inst5|inst18|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst18|inst~q\);

-- Location: LCCOMB_X24_Y11_N16
\inst5|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|inst7|inst~feeder_combout\);

-- Location: FF_X24_Y11_N17
\inst5|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~clkctrl_outclk\,
	d => \inst5|inst7|inst~feeder_combout\,
	clrn => \inst5|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst7|inst~q\);

-- Location: LCCOMB_X24_Y11_N6
\inst5|inst36|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst36|inst4~0_combout\ = (!\inst5|inst18|inst~q\ & !\inst5|inst7|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst18|inst~q\,
	datac => \inst5|inst7|inst~q\,
	combout => \inst5|inst36|inst4~0_combout\);

-- Location: LCCOMB_X24_Y11_N8
\inst5|inst28|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst28|inst4~combout\ = (\inst5|inst19|inst~q\) # ((\inst5|inst17|inst~q\) # ((\inst5|inst8|inst~q\) # (!\inst5|inst36|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst19|inst~q\,
	datab => \inst5|inst17|inst~q\,
	datac => \inst5|inst8|inst~q\,
	datad => \inst5|inst36|inst4~0_combout\,
	combout => \inst5|inst28|inst4~combout\);

-- Location: LCCOMB_X24_Y11_N2
\inst5|inst23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst23~1_combout\ = (!\inst5|inst28|inst4~combout\ & ((\inst5|inst9|inst~q\) # (\inst5|inst23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst9|inst~q\,
	datac => \inst5|inst28|inst4~combout\,
	datad => \inst5|inst23~1_combout\,
	combout => \inst5|inst23~1_combout\);

-- Location: LCCOMB_X24_Y11_N22
\inst5|inst23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst23~2_combout\ = (!\inst5|inst28|inst4~combout\ & ((\inst5|inst9|inst~q\) # (\inst5|inst23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst9|inst~q\,
	datac => \inst5|inst28|inst4~combout\,
	datad => \inst5|inst23~1_combout\,
	combout => \inst5|inst23~2_combout\);

-- Location: LCCOMB_X21_Y11_N12
\inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20~1_combout\ = (\inst3|inst3|inst4~q\ & (\inst47|inst~q\ & (\inst5|inst23~2_combout\ & !\inst90|inst|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst4~q\,
	datab => \inst47|inst~q\,
	datac => \inst5|inst23~2_combout\,
	datad => \inst90|inst|inst4~q\,
	combout => \inst20~1_combout\);

-- Location: LCCOMB_X8_Y7_N18
\inst11|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst|inst~0_combout\ = !\inst11|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst|inst~q\,
	combout => \inst11|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X8_Y7_N28
\inst11|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst|inst~feeder_combout\ = \inst11|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst|inst|inst~0_combout\,
	combout => \inst11|inst|inst|inst~feeder_combout\);

-- Location: FF_X8_Y7_N29
\inst11|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst11|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst|inst~q\);

-- Location: LCCOMB_X8_Y7_N22
\inst11|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst2|inst~0_combout\ = !\inst11|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst2|inst~q\,
	combout => \inst11|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X8_Y7_N14
\inst11|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst2|inst~feeder_combout\ = \inst11|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst|inst2|inst~0_combout\,
	combout => \inst11|inst|inst2|inst~feeder_combout\);

-- Location: FF_X8_Y7_N15
\inst11|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst|ALT_INV_inst~q\,
	d => \inst11|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst2|inst~q\);

-- Location: LCCOMB_X7_Y7_N18
\inst11|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst3|inst~0_combout\ = !\inst11|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|inst3|inst~q\,
	combout => \inst11|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X7_Y7_N2
\inst11|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst3|inst~feeder_combout\ = \inst11|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst3|inst~0_combout\,
	combout => \inst11|inst|inst3|inst~feeder_combout\);

-- Location: FF_X7_Y7_N3
\inst11|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst2|ALT_INV_inst~q\,
	d => \inst11|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst3|inst~q\);

-- Location: LCCOMB_X7_Y7_N12
\inst11|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst4|inst~0_combout\ = !\inst11|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst|inst4|inst~q\,
	combout => \inst11|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X7_Y7_N30
\inst11|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst4|inst~feeder_combout\ = \inst11|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst|inst4|inst~0_combout\,
	combout => \inst11|inst|inst4|inst~feeder_combout\);

-- Location: FF_X7_Y7_N31
\inst11|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst3|ALT_INV_inst~q\,
	d => \inst11|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst4|inst~q\);

-- Location: LCCOMB_X6_Y6_N24
\inst11|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst5|inst~0_combout\ = !\inst11|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|inst5|inst~q\,
	combout => \inst11|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X6_Y6_N12
\inst11|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst5|inst~feeder_combout\ = \inst11|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst5|inst~0_combout\,
	combout => \inst11|inst|inst5|inst~feeder_combout\);

-- Location: FF_X6_Y6_N13
\inst11|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst4|ALT_INV_inst~q\,
	d => \inst11|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst5|inst~q\);

-- Location: LCCOMB_X6_Y6_N16
\inst11|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst6|inst~0_combout\ = !\inst11|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst6|inst~q\,
	combout => \inst11|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X6_Y6_N14
\inst11|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst6|inst~feeder_combout\ = \inst11|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst6|inst~0_combout\,
	combout => \inst11|inst|inst6|inst~feeder_combout\);

-- Location: FF_X6_Y6_N15
\inst11|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst5|ALT_INV_inst~q\,
	d => \inst11|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst6|inst~q\);

-- Location: LCCOMB_X7_Y6_N22
\inst11|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst7|inst~0_combout\ = !\inst11|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|inst7|inst~q\,
	combout => \inst11|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X7_Y6_N12
\inst11|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst7|inst~feeder_combout\ = \inst11|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|inst7|inst~0_combout\,
	combout => \inst11|inst|inst7|inst~feeder_combout\);

-- Location: FF_X7_Y6_N13
\inst11|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst6|ALT_INV_inst~q\,
	d => \inst11|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst7|inst~q\);

-- Location: LCCOMB_X7_Y6_N28
\inst11|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst8|inst~0_combout\ = !\inst11|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst8|inst~q\,
	combout => \inst11|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X7_Y6_N14
\inst11|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst8|inst~feeder_combout\ = \inst11|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst|inst8|inst~0_combout\,
	combout => \inst11|inst|inst8|inst~feeder_combout\);

-- Location: FF_X7_Y6_N15
\inst11|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst7|ALT_INV_inst~q\,
	d => \inst11|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst8|inst~q\);

-- Location: LCCOMB_X8_Y6_N20
\inst11|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst2|inst~0_combout\ = !\inst11|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst2|inst~q\,
	combout => \inst11|inst2|inst~0_combout\);

-- Location: LCCOMB_X8_Y6_N28
\inst11|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst2|inst~feeder_combout\ = \inst11|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst2|inst~0_combout\,
	combout => \inst11|inst2|inst~feeder_combout\);

-- Location: FF_X8_Y6_N29
\inst11|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst8|inst~q\,
	d => \inst11|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst2|inst~q\);

-- Location: LCCOMB_X10_Y6_N28
\inst11|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst9|inst~0_combout\ = !\inst11|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst9|inst~q\,
	combout => \inst11|inst9|inst~0_combout\);

-- Location: FF_X10_Y6_N7
\inst11|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst2|ALT_INV_inst~q\,
	asdata => \inst11|inst9|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst9|inst~q\);

-- Location: LCCOMB_X10_Y6_N10
\inst11|inst1|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst~0_combout\ = !\inst11|inst1|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst~q\,
	combout => \inst11|inst1|inst~0_combout\);

-- Location: LCCOMB_X10_Y6_N2
\inst11|inst1|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst~feeder_combout\ = \inst11|inst1|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst~0_combout\,
	combout => \inst11|inst1|inst~feeder_combout\);

-- Location: FF_X10_Y6_N3
\inst11|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst~feeder_combout\,
	clrn => \inst11|inst1|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst~q\);

-- Location: LCCOMB_X10_Y6_N0
\inst11|inst1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst7~0_combout\ = \inst11|inst1|inst7~q\ $ (\inst11|inst1|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst7~q\,
	datac => \inst11|inst1|inst~q\,
	combout => \inst11|inst1|inst7~0_combout\);

-- Location: LCCOMB_X10_Y6_N4
\inst11|inst1|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst7~feeder_combout\ = \inst11|inst1|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst7~0_combout\,
	combout => \inst11|inst1|inst7~feeder_combout\);

-- Location: FF_X10_Y6_N5
\inst11|inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst7~feeder_combout\,
	clrn => \inst11|inst1|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst7~q\);

-- Location: LCCOMB_X10_Y6_N14
\inst11|inst1|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst8~0_combout\ = \inst11|inst1|inst8~q\ $ (((\inst11|inst1|inst~q\ & \inst11|inst1|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst~q\,
	datac => \inst11|inst1|inst8~q\,
	datad => \inst11|inst1|inst7~q\,
	combout => \inst11|inst1|inst8~0_combout\);

-- Location: FF_X10_Y6_N15
\inst11|inst1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst8~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst8~q\);

-- Location: LCCOMB_X10_Y6_N16
\inst11|inst1|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst10~0_combout\ = (\inst11|inst1|inst8~q\ & (\inst11|inst1|inst7~q\ & \inst11|inst1|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst8~q\,
	datac => \inst11|inst1|inst7~q\,
	datad => \inst11|inst1|inst~q\,
	combout => \inst11|inst1|inst10~0_combout\);

-- Location: LCCOMB_X10_Y6_N20
\inst11|inst1|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst9~0_combout\ = \inst11|inst1|inst9~q\ $ (((\inst11|inst1|inst~q\ & (\inst11|inst1|inst8~q\ & \inst11|inst1|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst~q\,
	datab => \inst11|inst1|inst8~q\,
	datac => \inst11|inst1|inst9~q\,
	datad => \inst11|inst1|inst7~q\,
	combout => \inst11|inst1|inst9~0_combout\);

-- Location: FF_X10_Y6_N21
\inst11|inst1|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst9~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst9~q\);

-- Location: LCCOMB_X10_Y6_N18
\inst11|inst1|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst14~0_combout\ = \inst11|inst1|inst14~q\ $ (((\inst11|inst1|inst9~q\ & \inst11|inst1|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst9~q\,
	datac => \inst11|inst1|inst14~q\,
	datad => \inst11|inst1|inst10~0_combout\,
	combout => \inst11|inst1|inst14~0_combout\);

-- Location: FF_X10_Y6_N19
\inst11|inst1|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst14~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst14~q\);

-- Location: LCCOMB_X10_Y6_N22
\inst11|inst1|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst17~0_combout\ = \inst11|inst1|inst17~q\ $ (((\inst11|inst1|inst14~q\ & (\inst11|inst1|inst9~q\ & \inst11|inst1|inst10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst14~q\,
	datab => \inst11|inst1|inst9~q\,
	datac => \inst11|inst1|inst17~q\,
	datad => \inst11|inst1|inst10~0_combout\,
	combout => \inst11|inst1|inst17~0_combout\);

-- Location: FF_X10_Y6_N23
\inst11|inst1|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst17~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst17~q\);

-- Location: LCCOMB_X10_Y6_N24
\inst11|inst1|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst18~combout\ = (\inst11|inst1|inst10~0_combout\ & (\inst11|inst1|inst9~q\ & (\inst11|inst1|inst17~q\ & \inst11|inst1|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst10~0_combout\,
	datab => \inst11|inst1|inst9~q\,
	datac => \inst11|inst1|inst17~q\,
	datad => \inst11|inst1|inst14~q\,
	combout => \inst11|inst1|inst18~combout\);

-- Location: LCCOMB_X10_Y6_N8
\inst11|inst1|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst19~0_combout\ = \inst11|inst1|inst18~combout\ $ (\inst11|inst1|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst18~combout\,
	datac => \inst11|inst1|inst19~q\,
	combout => \inst11|inst1|inst19~0_combout\);

-- Location: FF_X10_Y6_N9
\inst11|inst1|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst19~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst19~q\);

-- Location: LCCOMB_X10_Y6_N6
\inst11|inst1|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst21~0_combout\ = ((!\inst11|inst1|inst14~q\) # (!\inst11|inst1|inst9~q\)) # (!\inst11|inst1|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst17~q\,
	datab => \inst11|inst1|inst9~q\,
	datad => \inst11|inst1|inst14~q\,
	combout => \inst11|inst1|inst21~0_combout\);

-- Location: LCCOMB_X10_Y6_N30
\inst11|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst21~1_combout\ = \inst11|inst1|inst21~q\ $ (((\inst11|inst1|inst19~q\ & (!\inst11|inst1|inst21~0_combout\ & \inst11|inst1|inst10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst19~q\,
	datab => \inst11|inst1|inst21~0_combout\,
	datac => \inst11|inst1|inst21~q\,
	datad => \inst11|inst1|inst10~0_combout\,
	combout => \inst11|inst1|inst21~1_combout\);

-- Location: FF_X10_Y6_N31
\inst11|inst1|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst21~1_combout\,
	clrn => \inst11|inst1|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst21~q\);

-- Location: LCCOMB_X10_Y6_N26
\inst11|inst1|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst10~1_combout\ = (\inst11|inst1|inst17~q\ & (!\inst11|inst1|inst14~q\ & (!\inst11|inst1|inst19~q\ & !\inst11|inst1|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst17~q\,
	datab => \inst11|inst1|inst14~q\,
	datac => \inst11|inst1|inst19~q\,
	datad => \inst11|inst1|inst9~q\,
	combout => \inst11|inst1|inst10~1_combout\);

-- Location: LCCOMB_X10_Y6_N12
\inst11|inst1|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst10~combout\ = LCELL((!\inst11|inst1|inst21~q\ & (\inst11|inst1|inst10~1_combout\ & \inst11|inst1|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst21~q\,
	datac => \inst11|inst1|inst10~1_combout\,
	datad => \inst11|inst1|inst10~0_combout\,
	combout => \inst11|inst1|inst10~combout\);

-- Location: LCCOMB_X11_Y6_N0
\inst11|inst1|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst4~0_combout\ = !\inst11|inst1|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst1|inst4~q\,
	combout => \inst11|inst1|inst4~0_combout\);

-- Location: FF_X11_Y6_N1
\inst11|inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst1|inst10~combout\,
	d => \inst11|inst1|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst4~q\);

-- Location: LCCOMB_X24_Y11_N26
\inst5|inst26|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst26|inst4~0_combout\ = (!\inst5|inst9|inst~q\ & (!\inst5|inst18|inst~q\ & (!\inst5|inst7|inst~q\ & !\inst5|inst19|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst9|inst~q\,
	datab => \inst5|inst18|inst~q\,
	datac => \inst5|inst7|inst~q\,
	datad => \inst5|inst19|inst~q\,
	combout => \inst5|inst26|inst4~0_combout\);

-- Location: LCCOMB_X22_Y15_N12
\inst5|inst32|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst32|inst4~combout\ = (\inst5|inst8|inst~q\) # (!\inst5|inst26|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst~q\,
	datad => \inst5|inst26|inst4~0_combout\,
	combout => \inst5|inst32|inst4~combout\);

-- Location: LCCOMB_X22_Y15_N24
\inst5|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst29~1_combout\ = (!\inst5|inst32|inst4~combout\ & ((\inst5|inst17|inst~q\) # (\inst5|inst29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst32|inst4~combout\,
	datac => \inst5|inst17|inst~q\,
	datad => \inst5|inst29~1_combout\,
	combout => \inst5|inst29~1_combout\);

-- Location: LCCOMB_X22_Y15_N30
\inst5|inst29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst29~2_combout\ = (!\inst5|inst32|inst4~combout\ & ((\inst5|inst29~1_combout\) # (\inst5|inst17|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst29~1_combout\,
	datac => \inst5|inst17|inst~q\,
	datad => \inst5|inst32|inst4~combout\,
	combout => \inst5|inst29~2_combout\);

-- Location: LCCOMB_X18_Y10_N18
\inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = !\inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst~q\,
	combout => \inst|inst~0_combout\);

-- Location: LCCOMB_X11_Y10_N30
\inst|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst32~combout\ = LCELL((\FPGA_CLK~input_o\ & \inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_CLK~input_o\,
	datad => \inst|inst~q\,
	combout => \inst|inst32~combout\);

-- Location: LCCOMB_X11_Y10_N28
\inst|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst|inst~0_combout\ = !\inst|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst|inst|inst~q\,
	combout => \inst|inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X11_Y10_N31
\inst|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst32~combout\,
	asdata => \inst|inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X11_Y10_N26
\inst|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst2|inst~0_combout\ = !\inst|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst2|inst~q\,
	combout => \inst|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X11_Y10_N22
\inst|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X11_Y10_N23
\inst|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X7_Y8_N16
\inst|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst3|inst~0_combout\ = !\inst|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst3|inst~q\,
	combout => \inst|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X7_Y8_N22
\inst|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X7_Y8_N23
\inst|inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X7_Y8_N28
\inst|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst4|inst~0_combout\ = !\inst|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst4|inst~q\,
	combout => \inst|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X7_Y8_N14
\inst|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X7_Y8_N15
\inst|inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X6_Y8_N26
\inst|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst5|inst~0_combout\ = !\inst|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst|inst5|inst~q\,
	combout => \inst|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X6_Y8_N22
\inst|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X6_Y8_N23
\inst|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X6_Y8_N16
\inst|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst6|inst~0_combout\ = !\inst|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst6|inst~q\,
	combout => \inst|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X6_Y8_N0
\inst|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X6_Y8_N1
\inst|inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X5_Y9_N28
\inst|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst7|inst~0_combout\ = !\inst|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst7|inst~q\,
	combout => \inst|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X5_Y9_N10
\inst|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X5_Y9_N11
\inst|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X5_Y9_N30
\inst|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst8|inst~0_combout\ = !\inst|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst8|inst~q\,
	combout => \inst|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X5_Y9_N16
\inst|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X5_Y9_N17
\inst|inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X4_Y9_N12
\inst|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst|inst~0_combout\ = !\inst|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst|inst~q\,
	combout => \inst|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X4_Y9_N10
\inst|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X4_Y9_N11
\inst|inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst8|inst~q\,
	d => \inst|inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X4_Y9_N14
\inst|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X4_Y9_N28
\inst|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X4_Y9_N29
\inst|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X6_Y9_N24
\inst|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X6_Y9_N4
\inst|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X6_Y9_N5
\inst|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X6_Y9_N28
\inst|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X6_Y9_N6
\inst|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X6_Y9_N7
\inst|inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X7_Y9_N24
\inst|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X7_Y9_N12
\inst|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X7_Y9_N13
\inst|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X7_Y9_N28
\inst|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X7_Y9_N30
\inst|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X7_Y9_N31
\inst|inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X8_Y8_N30
\inst|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X8_Y8_N8
\inst|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X8_Y8_N9
\inst|inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X8_Y8_N16
\inst|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X8_Y8_N14
\inst|inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X8_Y8_N15
\inst|inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst|inst31|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X9_Y8_N6
\inst|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst2|inst~0_combout\ = !\inst|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst2|inst~q\,
	combout => \inst|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X9_Y8_N16
\inst|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst2|inst~feeder_combout\ = \inst|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst2|inst~0_combout\,
	combout => \inst|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X9_Y8_N17
\inst|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst|inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst2|inst~q\);

-- Location: LCCOMB_X9_Y8_N4
\inst|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst3|inst~0_combout\ = !\inst|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst3|inst~q\,
	combout => \inst|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X9_Y8_N0
\inst|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst3|inst~feeder_combout\ = \inst|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst3|inst~0_combout\,
	combout => \inst|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X9_Y8_N1
\inst|inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst2|ALT_INV_inst~q\,
	d => \inst|inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst3|inst~q\);

-- Location: LCCOMB_X8_Y10_N24
\inst|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst7|inst~0_combout\ = !\inst|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst7|inst~q\,
	combout => \inst|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X8_Y10_N0
\inst|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst7|inst~feeder_combout\ = \inst|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst7|inst~0_combout\,
	combout => \inst|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X8_Y10_N1
\inst|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst3|ALT_INV_inst~q\,
	d => \inst|inst31|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst7|inst~q\);

-- Location: LCCOMB_X12_Y10_N20
\inst|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst8|inst~0_combout\ = !\inst|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst8|inst~q\,
	combout => \inst|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X12_Y10_N14
\inst|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst8|inst~feeder_combout\ = \inst|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst8|inst~0_combout\,
	combout => \inst|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X12_Y10_N15
\inst|inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst7|ALT_INV_inst~q\,
	d => \inst|inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst8|inst~q\);

-- Location: LCCOMB_X12_Y10_N28
\inst|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst9|inst~0_combout\ = !\inst|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst9|inst~q\,
	combout => \inst|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X12_Y10_N16
\inst|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst9|inst~feeder_combout\ = \inst|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst9|inst~0_combout\,
	combout => \inst|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X12_Y10_N17
\inst|inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst8|ALT_INV_inst~q\,
	d => \inst|inst31|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst9|inst~q\);

-- Location: LCCOMB_X13_Y10_N6
\inst|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst10|inst~0_combout\ = !\inst|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst10|inst~q\,
	combout => \inst|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X13_Y10_N10
\inst|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst10|inst~feeder_combout\ = \inst|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst10|inst~0_combout\,
	combout => \inst|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X13_Y10_N11
\inst|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst9|ALT_INV_inst~q\,
	d => \inst|inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst10|inst~q\);

-- Location: LCCOMB_X14_Y10_N16
\inst|inst31|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst~0_combout\ = !\inst|inst31|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst4|inst~q\,
	combout => \inst|inst31|inst4|inst~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst|inst31|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst~feeder_combout\ = \inst|inst31|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst4|inst~0_combout\,
	combout => \inst|inst31|inst4|inst~feeder_combout\);

-- Location: FF_X14_Y10_N23
\inst|inst31|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst4|inst~feeder_combout\,
	clrn => \inst|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst4|inst~q\);

-- Location: LCCOMB_X14_Y10_N2
\inst|inst31|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst7~0_combout\ = \inst|inst31|inst4|inst~q\ $ (\inst|inst31|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst4|inst~q\,
	datad => \inst|inst31|inst4|inst7~q\,
	combout => \inst|inst31|inst4|inst7~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst|inst31|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst7~feeder_combout\ = \inst|inst31|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst4|inst7~0_combout\,
	combout => \inst|inst31|inst4|inst7~feeder_combout\);

-- Location: FF_X14_Y10_N13
\inst|inst31|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst4|inst7~feeder_combout\,
	clrn => \inst|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst4|inst7~q\);

-- Location: LCCOMB_X14_Y10_N10
\inst|inst31|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst8~0_combout\ = \inst|inst31|inst4|inst8~q\ $ (((\inst|inst31|inst4|inst~q\ & \inst|inst31|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst4|inst~q\,
	datab => \inst|inst31|inst4|inst7~q\,
	datac => \inst|inst31|inst4|inst8~q\,
	combout => \inst|inst31|inst4|inst8~0_combout\);

-- Location: FF_X14_Y10_N11
\inst|inst31|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst4|inst8~0_combout\,
	clrn => \inst|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst4|inst8~q\);

-- Location: LCCOMB_X14_Y10_N26
\inst|inst31|inst4|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst5~0_combout\ = (\inst|inst31|inst4|inst~q\ & \inst|inst31|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst4|inst~q\,
	datad => \inst|inst31|inst4|inst7~q\,
	combout => \inst|inst31|inst4|inst5~0_combout\);

-- Location: LCCOMB_X14_Y10_N14
\inst|inst31|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst9~0_combout\ = \inst|inst31|inst4|inst9~q\ $ (((\inst|inst31|inst4|inst8~q\ & (\inst|inst31|inst4|inst7~q\ & \inst|inst31|inst4|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst4|inst8~q\,
	datab => \inst|inst31|inst4|inst7~q\,
	datac => \inst|inst31|inst4|inst9~q\,
	datad => \inst|inst31|inst4|inst~q\,
	combout => \inst|inst31|inst4|inst9~0_combout\);

-- Location: FF_X14_Y10_N15
\inst|inst31|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst4|inst9~0_combout\,
	clrn => \inst|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst4|inst9~q\);

-- Location: LCCOMB_X14_Y10_N28
\inst|inst31|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst14~0_combout\ = \inst|inst31|inst4|inst14~q\ $ (((\inst|inst31|inst4|inst5~0_combout\ & (\inst|inst31|inst4|inst8~q\ & \inst|inst31|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst4|inst5~0_combout\,
	datab => \inst|inst31|inst4|inst8~q\,
	datac => \inst|inst31|inst4|inst14~q\,
	datad => \inst|inst31|inst4|inst9~q\,
	combout => \inst|inst31|inst4|inst14~0_combout\);

-- Location: FF_X14_Y10_N29
\inst|inst31|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst4|inst14~0_combout\,
	clrn => \inst|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst4|inst14~q\);

-- Location: LCCOMB_X14_Y10_N18
\inst|inst31|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst17~0_combout\ = (!\inst|inst31|inst4|inst14~q\) # (!\inst|inst31|inst4|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst4|inst9~q\,
	datad => \inst|inst31|inst4|inst14~q\,
	combout => \inst|inst31|inst4|inst17~0_combout\);

-- Location: LCCOMB_X14_Y10_N30
\inst|inst31|inst4|inst17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst17~1_combout\ = \inst|inst31|inst4|inst17~q\ $ (((\inst|inst31|inst4|inst5~0_combout\ & (\inst|inst31|inst4|inst8~q\ & !\inst|inst31|inst4|inst17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst4|inst5~0_combout\,
	datab => \inst|inst31|inst4|inst8~q\,
	datac => \inst|inst31|inst4|inst17~q\,
	datad => \inst|inst31|inst4|inst17~0_combout\,
	combout => \inst|inst31|inst4|inst17~1_combout\);

-- Location: FF_X14_Y10_N31
\inst|inst31|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst4|inst17~1_combout\,
	clrn => \inst|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst4|inst17~q\);

-- Location: LCCOMB_X14_Y10_N20
\inst|inst31|inst4|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst16~combout\ = (\inst|inst31|inst4|inst8~q\ & (\inst|inst31|inst4|inst14~q\ & (\inst|inst31|inst4|inst5~0_combout\ & \inst|inst31|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst4|inst8~q\,
	datab => \inst|inst31|inst4|inst14~q\,
	datac => \inst|inst31|inst4|inst5~0_combout\,
	datad => \inst|inst31|inst4|inst9~q\,
	combout => \inst|inst31|inst4|inst16~combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst|inst31|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst19~0_combout\ = \inst|inst31|inst4|inst19~q\ $ (((\inst|inst31|inst4|inst17~q\ & \inst|inst31|inst4|inst16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst4|inst17~q\,
	datac => \inst|inst31|inst4|inst19~q\,
	datad => \inst|inst31|inst4|inst16~combout\,
	combout => \inst|inst31|inst4|inst19~0_combout\);

-- Location: FF_X14_Y10_N9
\inst|inst31|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst4|inst19~0_combout\,
	clrn => \inst|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst4|inst19~q\);

-- Location: LCCOMB_X14_Y10_N4
\inst|inst31|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst21~0_combout\ = \inst|inst31|inst4|inst21~q\ $ (((\inst|inst31|inst4|inst19~q\ & (\inst|inst31|inst4|inst17~q\ & \inst|inst31|inst4|inst16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst4|inst19~q\,
	datab => \inst|inst31|inst4|inst17~q\,
	datac => \inst|inst31|inst4|inst21~q\,
	datad => \inst|inst31|inst4|inst16~combout\,
	combout => \inst|inst31|inst4|inst21~0_combout\);

-- Location: FF_X14_Y10_N5
\inst|inst31|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst4|inst21~0_combout\,
	clrn => \inst|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst4|inst21~q\);

-- Location: LCCOMB_X14_Y10_N24
\inst|inst31|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst10~0_combout\ = (!\inst|inst31|inst4|inst17~q\ & (!\inst|inst31|inst4|inst19~q\ & (!\inst|inst31|inst4|inst9~q\ & !\inst|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst4|inst17~q\,
	datab => \inst|inst31|inst4|inst19~q\,
	datac => \inst|inst31|inst4|inst9~q\,
	datad => \inst|inst31|inst4|inst14~q\,
	combout => \inst|inst31|inst4|inst10~0_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst|inst31|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst10~combout\ = LCELL((!\inst|inst31|inst4|inst8~q\ & (!\inst|inst31|inst4|inst21~q\ & (\inst|inst31|inst4|inst5~0_combout\ & \inst|inst31|inst4|inst10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst4|inst8~q\,
	datab => \inst|inst31|inst4|inst21~q\,
	datac => \inst|inst31|inst4|inst5~0_combout\,
	datad => \inst|inst31|inst4|inst10~0_combout\,
	combout => \inst|inst31|inst4|inst10~combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst|inst31|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst4|inst4~0_combout\ = !\inst|inst31|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst4|inst4~q\,
	combout => \inst|inst31|inst4|inst4~0_combout\);

-- Location: FF_X14_Y10_N17
\inst|inst31|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst4|inst10~combout\,
	asdata => \inst|inst31|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst4|inst4~q\);

-- Location: LCCOMB_X19_Y10_N28
\inst|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst17|inst~0_combout\ = !\inst|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst17|inst~q\,
	combout => \inst|inst17|inst~0_combout\);

-- Location: LCCOMB_X19_Y10_N12
\inst|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst17|inst~feeder_combout\ = \inst|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst17|inst~0_combout\,
	combout => \inst|inst17|inst~feeder_combout\);

-- Location: FF_X19_Y10_N13
\inst|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst4|inst4~q\,
	d => \inst|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst17|inst~q\);

-- Location: LCCOMB_X19_Y10_N16
\inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|inst3|inst~feeder_combout\);

-- Location: FF_X19_Y10_N17
\inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst17|ALT_INV_inst~q\,
	d => \inst|inst3|inst~feeder_combout\,
	clrn => \inst|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst~q\);

-- Location: FF_X18_Y10_N19
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst2~q\,
	d => \inst|inst~0_combout\,
	clrn => \inst|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X18_Y10_N24
\inst20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20~3_combout\ = (!\inst90|inst|inst4~q\ & (\inst11|inst1|inst4~q\ & (\inst5|inst29~2_combout\ & \inst|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst4~q\,
	datab => \inst11|inst1|inst4~q\,
	datac => \inst5|inst29~2_combout\,
	datad => \inst|inst~q\,
	combout => \inst20~3_combout\);

-- Location: LCCOMB_X6_Y4_N18
\inst86|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst|inst~0_combout\ = !\inst86|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst86|inst|inst|inst~q\,
	combout => \inst86|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X6_Y4_N28
\inst86|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst|inst~feeder_combout\ = \inst86|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst86|inst|inst|inst~0_combout\,
	combout => \inst86|inst|inst|inst~feeder_combout\);

-- Location: FF_X6_Y4_N29
\inst86|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst86|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst|inst|inst~q\);

-- Location: LCCOMB_X6_Y4_N22
\inst86|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst2|inst~0_combout\ = !\inst86|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst|inst2|inst~q\,
	combout => \inst86|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X6_Y4_N14
\inst86|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst2|inst~feeder_combout\ = \inst86|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst86|inst|inst2|inst~0_combout\,
	combout => \inst86|inst|inst2|inst~feeder_combout\);

-- Location: FF_X6_Y4_N15
\inst86|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst|inst|ALT_INV_inst~q\,
	d => \inst86|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst|inst2|inst~q\);

-- Location: LCCOMB_X5_Y4_N18
\inst86|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst3|inst~0_combout\ = !\inst86|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst|inst3|inst~q\,
	combout => \inst86|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X5_Y4_N2
\inst86|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst3|inst~feeder_combout\ = \inst86|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst|inst3|inst~0_combout\,
	combout => \inst86|inst|inst3|inst~feeder_combout\);

-- Location: FF_X5_Y4_N3
\inst86|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst|inst2|ALT_INV_inst~q\,
	d => \inst86|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst|inst3|inst~q\);

-- Location: LCCOMB_X5_Y4_N4
\inst86|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst4|inst~0_combout\ = !\inst86|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst|inst4|inst~q\,
	combout => \inst86|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X5_Y4_N14
\inst86|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst4|inst~feeder_combout\ = \inst86|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst86|inst|inst4|inst~0_combout\,
	combout => \inst86|inst|inst4|inst~feeder_combout\);

-- Location: FF_X5_Y4_N15
\inst86|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst|inst3|ALT_INV_inst~q\,
	d => \inst86|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst|inst4|inst~q\);

-- Location: LCCOMB_X4_Y4_N18
\inst86|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst5|inst~0_combout\ = !\inst86|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst|inst5|inst~q\,
	combout => \inst86|inst|inst5|inst~0_combout\);

-- Location: FF_X4_Y4_N25
\inst86|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst|inst4|ALT_INV_inst~q\,
	asdata => \inst86|inst|inst5|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst|inst5|inst~q\);

-- Location: LCCOMB_X4_Y4_N16
\inst86|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst6|inst~0_combout\ = !\inst86|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst|inst6|inst~q\,
	combout => \inst86|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X4_Y4_N8
\inst86|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst6|inst~feeder_combout\ = \inst86|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst|inst6|inst~0_combout\,
	combout => \inst86|inst|inst6|inst~feeder_combout\);

-- Location: FF_X4_Y4_N9
\inst86|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst|inst5|ALT_INV_inst~q\,
	d => \inst86|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst|inst6|inst~q\);

-- Location: LCCOMB_X3_Y6_N24
\inst86|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst7|inst~0_combout\ = !\inst86|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst|inst7|inst~q\,
	combout => \inst86|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X3_Y6_N14
\inst86|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst7|inst~feeder_combout\ = \inst86|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst|inst7|inst~0_combout\,
	combout => \inst86|inst|inst7|inst~feeder_combout\);

-- Location: FF_X3_Y6_N15
\inst86|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst|inst6|ALT_INV_inst~q\,
	d => \inst86|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst|inst7|inst~q\);

-- Location: LCCOMB_X3_Y6_N30
\inst86|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst8|inst~0_combout\ = !\inst86|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst|inst8|inst~q\,
	combout => \inst86|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X3_Y6_N0
\inst86|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst|inst8|inst~feeder_combout\ = \inst86|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst86|inst|inst8|inst~0_combout\,
	combout => \inst86|inst|inst8|inst~feeder_combout\);

-- Location: FF_X3_Y6_N1
\inst86|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst|inst7|ALT_INV_inst~q\,
	d => \inst86|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst|inst8|inst~q\);

-- Location: LCCOMB_X3_Y7_N28
\inst86|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst2|inst~0_combout\ = !\inst86|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst2|inst~q\,
	combout => \inst86|inst2|inst~0_combout\);

-- Location: LCCOMB_X3_Y7_N10
\inst86|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst2|inst~feeder_combout\ = \inst86|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst2|inst~0_combout\,
	combout => \inst86|inst2|inst~feeder_combout\);

-- Location: FF_X3_Y7_N11
\inst86|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst|inst8|inst~q\,
	d => \inst86|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst2|inst~q\);

-- Location: LCCOMB_X3_Y7_N22
\inst86|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst3|inst~0_combout\ = !\inst86|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst3|inst~q\,
	combout => \inst86|inst3|inst~0_combout\);

-- Location: LCCOMB_X3_Y7_N6
\inst86|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst3|inst~feeder_combout\ = \inst86|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst86|inst3|inst~0_combout\,
	combout => \inst86|inst3|inst~feeder_combout\);

-- Location: FF_X3_Y7_N7
\inst86|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst2|ALT_INV_inst~q\,
	d => \inst86|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst3|inst~q\);

-- Location: LCCOMB_X4_Y7_N28
\inst86|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst7|inst~0_combout\ = !\inst86|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst7|inst~q\,
	combout => \inst86|inst7|inst~0_combout\);

-- Location: LCCOMB_X4_Y7_N12
\inst86|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst7|inst~feeder_combout\ = \inst86|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst7|inst~0_combout\,
	combout => \inst86|inst7|inst~feeder_combout\);

-- Location: FF_X4_Y7_N13
\inst86|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst3|ALT_INV_inst~q\,
	d => \inst86|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst7|inst~q\);

-- Location: LCCOMB_X4_Y7_N22
\inst86|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst8|inst~0_combout\ = !\inst86|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst86|inst8|inst~q\,
	combout => \inst86|inst8|inst~0_combout\);

-- Location: LCCOMB_X4_Y7_N6
\inst86|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst8|inst~feeder_combout\ = \inst86|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst86|inst8|inst~0_combout\,
	combout => \inst86|inst8|inst~feeder_combout\);

-- Location: FF_X4_Y7_N7
\inst86|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst7|ALT_INV_inst~q\,
	d => \inst86|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst8|inst~q\);

-- Location: LCCOMB_X5_Y7_N18
\inst86|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst9|inst~0_combout\ = !\inst86|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst9|inst~q\,
	combout => \inst86|inst9|inst~0_combout\);

-- Location: LCCOMB_X5_Y7_N6
\inst86|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst9|inst~feeder_combout\ = \inst86|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst9|inst~0_combout\,
	combout => \inst86|inst9|inst~feeder_combout\);

-- Location: FF_X5_Y7_N7
\inst86|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst8|ALT_INV_inst~q\,
	d => \inst86|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst9|inst~q\);

-- Location: LCCOMB_X6_Y7_N20
\inst86|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst~0_combout\ = !\inst86|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst4|inst~q\,
	combout => \inst86|inst4|inst~0_combout\);

-- Location: FF_X6_Y7_N5
\inst86|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst9|inst~q\,
	asdata => \inst86|inst4|inst~0_combout\,
	clrn => \inst86|inst4|ALT_INV_inst10~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst4|inst~q\);

-- Location: LCCOMB_X6_Y7_N14
\inst86|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst7~0_combout\ = \inst86|inst4|inst~q\ $ (\inst86|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst4|inst~q\,
	datad => \inst86|inst4|inst7~q\,
	combout => \inst86|inst4|inst7~0_combout\);

-- Location: LCCOMB_X6_Y7_N18
\inst86|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst7~feeder_combout\ = \inst86|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst4|inst7~0_combout\,
	combout => \inst86|inst4|inst7~feeder_combout\);

-- Location: FF_X6_Y7_N19
\inst86|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst9|inst~q\,
	d => \inst86|inst4|inst7~feeder_combout\,
	clrn => \inst86|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst4|inst7~q\);

-- Location: LCCOMB_X6_Y7_N10
\inst86|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst8~0_combout\ = \inst86|inst4|inst8~q\ $ (((\inst86|inst4|inst~q\ & \inst86|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst86|inst4|inst~q\,
	datac => \inst86|inst4|inst8~q\,
	datad => \inst86|inst4|inst7~q\,
	combout => \inst86|inst4|inst8~0_combout\);

-- Location: FF_X6_Y7_N11
\inst86|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst9|inst~q\,
	d => \inst86|inst4|inst8~0_combout\,
	clrn => \inst86|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst4|inst8~q\);

-- Location: LCCOMB_X6_Y7_N8
\inst86|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst10~0_combout\ = (\inst86|inst4|inst8~q\ & (\inst86|inst4|inst~q\ & \inst86|inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst8~q\,
	datac => \inst86|inst4|inst~q\,
	datad => \inst86|inst4|inst7~q\,
	combout => \inst86|inst4|inst10~0_combout\);

-- Location: LCCOMB_X6_Y7_N22
\inst86|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst9~0_combout\ = \inst86|inst4|inst9~q\ $ (((\inst86|inst4|inst8~q\ & (\inst86|inst4|inst~q\ & \inst86|inst4|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst8~q\,
	datab => \inst86|inst4|inst~q\,
	datac => \inst86|inst4|inst9~q\,
	datad => \inst86|inst4|inst7~q\,
	combout => \inst86|inst4|inst9~0_combout\);

-- Location: FF_X6_Y7_N23
\inst86|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst9|inst~q\,
	d => \inst86|inst4|inst9~0_combout\,
	clrn => \inst86|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst4|inst9~q\);

-- Location: LCCOMB_X6_Y7_N6
\inst86|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst14~0_combout\ = \inst86|inst4|inst14~q\ $ (((\inst86|inst4|inst10~0_combout\ & \inst86|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst10~0_combout\,
	datac => \inst86|inst4|inst14~q\,
	datad => \inst86|inst4|inst9~q\,
	combout => \inst86|inst4|inst14~0_combout\);

-- Location: FF_X6_Y7_N7
\inst86|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst9|inst~q\,
	d => \inst86|inst4|inst14~0_combout\,
	clrn => \inst86|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst4|inst14~q\);

-- Location: LCCOMB_X6_Y7_N12
\inst86|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst17~0_combout\ = \inst86|inst4|inst17~q\ $ (((\inst86|inst4|inst10~0_combout\ & (\inst86|inst4|inst14~q\ & \inst86|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst10~0_combout\,
	datab => \inst86|inst4|inst14~q\,
	datac => \inst86|inst4|inst17~q\,
	datad => \inst86|inst4|inst9~q\,
	combout => \inst86|inst4|inst17~0_combout\);

-- Location: FF_X6_Y7_N13
\inst86|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst9|inst~q\,
	d => \inst86|inst4|inst17~0_combout\,
	clrn => \inst86|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst4|inst17~q\);

-- Location: LCCOMB_X6_Y7_N0
\inst86|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst19~0_combout\ = (!\inst86|inst4|inst14~q\) # (!\inst86|inst4|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst17~q\,
	datad => \inst86|inst4|inst14~q\,
	combout => \inst86|inst4|inst19~0_combout\);

-- Location: LCCOMB_X6_Y7_N2
\inst86|inst4|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst19~1_combout\ = \inst86|inst4|inst19~q\ $ (((\inst86|inst4|inst10~0_combout\ & (\inst86|inst4|inst9~q\ & !\inst86|inst4|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst10~0_combout\,
	datab => \inst86|inst4|inst9~q\,
	datac => \inst86|inst4|inst19~q\,
	datad => \inst86|inst4|inst19~0_combout\,
	combout => \inst86|inst4|inst19~1_combout\);

-- Location: FF_X6_Y7_N3
\inst86|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst9|inst~q\,
	d => \inst86|inst4|inst19~1_combout\,
	clrn => \inst86|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst4|inst19~q\);

-- Location: LCCOMB_X6_Y7_N16
\inst86|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst18~combout\ = (\inst86|inst4|inst17~q\ & (\inst86|inst4|inst14~q\ & (\inst86|inst4|inst9~q\ & \inst86|inst4|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst17~q\,
	datab => \inst86|inst4|inst14~q\,
	datac => \inst86|inst4|inst9~q\,
	datad => \inst86|inst4|inst10~0_combout\,
	combout => \inst86|inst4|inst18~combout\);

-- Location: LCCOMB_X6_Y7_N30
\inst86|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst21~0_combout\ = \inst86|inst4|inst21~q\ $ (((\inst86|inst4|inst19~q\ & \inst86|inst4|inst18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst86|inst4|inst19~q\,
	datac => \inst86|inst4|inst21~q\,
	datad => \inst86|inst4|inst18~combout\,
	combout => \inst86|inst4|inst21~0_combout\);

-- Location: FF_X6_Y7_N31
\inst86|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst9|inst~q\,
	d => \inst86|inst4|inst21~0_combout\,
	clrn => \inst86|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst4|inst21~q\);

-- Location: LCCOMB_X6_Y7_N28
\inst86|inst4|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst10~1_combout\ = (!\inst86|inst4|inst17~q\ & (!\inst86|inst4|inst19~q\ & (!\inst86|inst4|inst9~q\ & !\inst86|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst17~q\,
	datab => \inst86|inst4|inst19~q\,
	datac => \inst86|inst4|inst9~q\,
	datad => \inst86|inst4|inst14~q\,
	combout => \inst86|inst4|inst10~1_combout\);

-- Location: LCCOMB_X6_Y7_N24
\inst86|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst10~combout\ = LCELL((!\inst86|inst4|inst21~q\ & (\inst86|inst4|inst10~0_combout\ & \inst86|inst4|inst10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst21~q\,
	datac => \inst86|inst4|inst10~0_combout\,
	datad => \inst86|inst4|inst10~1_combout\,
	combout => \inst86|inst4|inst10~combout\);

-- Location: LCCOMB_X6_Y7_N26
\inst86|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst86|inst4|inst4~0_combout\ = !\inst86|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst86|inst4|inst4~q\,
	combout => \inst86|inst4|inst4~0_combout\);

-- Location: FF_X6_Y7_N27
\inst86|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst86|inst4|inst10~combout\,
	d => \inst86|inst4|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst86|inst4|inst4~q\);

-- Location: LCCOMB_X23_Y15_N22
\inst69|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst2~0_combout\ = !\inst69|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst69|inst2~q\,
	combout => \inst69|inst2~0_combout\);

-- Location: LCCOMB_X23_Y15_N30
\inst69|inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst2~feeder_combout\ = \inst69|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst2~0_combout\,
	combout => \inst69|inst2~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N14
\inst69|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst7|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst69|inst7|inst~feeder_combout\);

-- Location: FF_X23_Y15_N15
\inst69|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst82~clkctrl_outclk\,
	d => \inst69|inst7|inst~feeder_combout\,
	clrn => \inst69|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst7|inst~q\);

-- Location: FF_X23_Y15_N31
\inst69|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst82~clkctrl_outclk\,
	d => \inst69|inst2~feeder_combout\,
	clrn => \inst69|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst2~q\);

-- Location: LCCOMB_X22_Y15_N10
\inst69|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst~0_combout\ = !\inst69|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst~q\,
	combout => \inst69|inst~0_combout\);

-- Location: LCCOMB_X21_Y15_N30
\inst69|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst32~combout\ = LCELL((\inst69|inst~q\ & \FPGA_CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst~q\,
	datad => \FPGA_CLK~input_o\,
	combout => \inst69|inst32~combout\);

-- Location: LCCOMB_X21_Y15_N28
\inst69|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst|inst~0_combout\ = !\inst69|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst|inst|inst|inst~q\,
	combout => \inst69|inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X21_Y15_N31
\inst69|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst32~combout\,
	asdata => \inst69|inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X21_Y14_N26
\inst69|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst2|inst~0_combout\ = !\inst69|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst|inst|inst2|inst~q\,
	combout => \inst69|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: FF_X21_Y14_N29
\inst69|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst|inst|ALT_INV_inst~q\,
	asdata => \inst69|inst31|inst|inst|inst2|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X21_Y14_N24
\inst69|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst3|inst~0_combout\ = !\inst69|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst|inst3|inst~q\,
	combout => \inst69|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst69|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst69|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst69|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst69|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X21_Y14_N31
\inst69|inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X22_Y14_N12
\inst69|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst4|inst~0_combout\ = !\inst69|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst|inst|inst4|inst~q\,
	combout => \inst69|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst69|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst69|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst69|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X22_Y14_N17
\inst69|inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X22_Y14_N14
\inst69|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst5|inst~0_combout\ = !\inst69|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst69|inst31|inst|inst|inst5|inst~q\,
	combout => \inst69|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst69|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst69|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst69|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X22_Y14_N25
\inst69|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X24_Y14_N22
\inst69|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst6|inst~0_combout\ = !\inst69|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst|inst|inst6|inst~q\,
	combout => \inst69|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N14
\inst69|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst69|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst69|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X24_Y14_N15
\inst69|inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X24_Y14_N16
\inst69|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst7|inst~0_combout\ = !\inst69|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst|inst7|inst~q\,
	combout => \inst69|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst69|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst69|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst69|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X24_Y14_N31
\inst69|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X25_Y14_N20
\inst69|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst8|inst~0_combout\ = !\inst69|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst|inst|inst8|inst~q\,
	combout => \inst69|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X25_Y14_N6
\inst69|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst69|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst69|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X25_Y14_N7
\inst69|inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X26_Y14_N2
\inst69|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst|inst~0_combout\ = !\inst69|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst|inst1|inst|inst~q\,
	combout => \inst69|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X26_Y14_N16
\inst69|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst69|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst69|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst69|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X26_Y14_N17
\inst69|inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst|inst8|inst~q\,
	d => \inst69|inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X26_Y14_N12
\inst69|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst69|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst69|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X26_Y14_N30
\inst69|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst69|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst69|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X26_Y14_N31
\inst69|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X25_Y13_N18
\inst69|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst69|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst69|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X25_Y13_N20
\inst69|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst69|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst69|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X25_Y13_N21
\inst69|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X25_Y13_N4
\inst69|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst69|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst69|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X25_Y13_N14
\inst69|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst69|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst69|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X25_Y13_N15
\inst69|inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X24_Y13_N24
\inst69|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst69|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst69|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X24_Y13_N12
\inst69|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst69|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst69|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X24_Y13_N13
\inst69|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X24_Y13_N30
\inst69|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst69|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst69|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst69|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst69|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst69|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst69|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X24_Y13_N29
\inst69|inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X28_Y16_N22
\inst69|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst69|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst69|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X28_Y16_N16
\inst69|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst69|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst69|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X28_Y16_N17
\inst69|inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X28_Y16_N30
\inst69|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst69|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst69|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X28_Y16_N6
\inst69|inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst69|inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst69|inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst69|inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X28_Y16_N7
\inst69|inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst69|inst31|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X29_Y16_N28
\inst69|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst2|inst~0_combout\ = !\inst69|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst2|inst~q\,
	combout => \inst69|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X29_Y16_N8
\inst69|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst2|inst~feeder_combout\ = \inst69|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst2|inst~0_combout\,
	combout => \inst69|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X29_Y16_N9
\inst69|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst69|inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst2|inst~q\);

-- Location: LCCOMB_X29_Y16_N30
\inst69|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst3|inst~0_combout\ = !\inst69|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst3|inst~q\,
	combout => \inst69|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X29_Y16_N14
\inst69|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst3|inst~feeder_combout\ = \inst69|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst3|inst~0_combout\,
	combout => \inst69|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X29_Y16_N15
\inst69|inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst2|ALT_INV_inst~q\,
	d => \inst69|inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst3|inst~q\);

-- Location: LCCOMB_X24_Y16_N30
\inst69|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst7|inst~0_combout\ = !\inst69|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst7|inst~q\,
	combout => \inst69|inst31|inst7|inst~0_combout\);

-- Location: FF_X24_Y16_N15
\inst69|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst3|ALT_INV_inst~q\,
	asdata => \inst69|inst31|inst7|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst7|inst~q\);

-- Location: LCCOMB_X23_Y16_N28
\inst69|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst8|inst~0_combout\ = !\inst69|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst8|inst~q\,
	combout => \inst69|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\inst69|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst8|inst~feeder_combout\ = \inst69|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst8|inst~0_combout\,
	combout => \inst69|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X23_Y16_N19
\inst69|inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst7|ALT_INV_inst~q\,
	d => \inst69|inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst8|inst~q\);

-- Location: LCCOMB_X23_Y16_N4
\inst69|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst9|inst~0_combout\ = !\inst69|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst9|inst~q\,
	combout => \inst69|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X23_Y16_N14
\inst69|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst9|inst~feeder_combout\ = \inst69|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst9|inst~0_combout\,
	combout => \inst69|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X23_Y16_N15
\inst69|inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst8|ALT_INV_inst~q\,
	d => \inst69|inst31|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst9|inst~q\);

-- Location: LCCOMB_X22_Y16_N18
\inst69|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst10|inst~0_combout\ = !\inst69|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst10|inst~q\,
	combout => \inst69|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X22_Y16_N0
\inst69|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst10|inst~feeder_combout\ = \inst69|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst10|inst~0_combout\,
	combout => \inst69|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X22_Y16_N1
\inst69|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst9|ALT_INV_inst~q\,
	d => \inst69|inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst10|inst~q\);

-- Location: LCCOMB_X22_Y17_N6
\inst69|inst31|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst~0_combout\ = !\inst69|inst31|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst69|inst31|inst4|inst~q\,
	combout => \inst69|inst31|inst4|inst~0_combout\);

-- Location: FF_X22_Y17_N13
\inst69|inst31|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst10|inst~q\,
	asdata => \inst69|inst31|inst4|inst~0_combout\,
	clrn => \inst69|inst31|inst4|ALT_INV_inst10~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst4|inst~q\);

-- Location: LCCOMB_X22_Y17_N28
\inst69|inst31|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst7~0_combout\ = \inst69|inst31|inst4|inst~q\ $ (\inst69|inst31|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst4|inst~q\,
	datad => \inst69|inst31|inst4|inst7~q\,
	combout => \inst69|inst31|inst4|inst7~0_combout\);

-- Location: LCCOMB_X22_Y17_N26
\inst69|inst31|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst7~feeder_combout\ = \inst69|inst31|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst4|inst7~0_combout\,
	combout => \inst69|inst31|inst4|inst7~feeder_combout\);

-- Location: FF_X22_Y17_N27
\inst69|inst31|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst10|inst~q\,
	d => \inst69|inst31|inst4|inst7~feeder_combout\,
	clrn => \inst69|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst4|inst7~q\);

-- Location: LCCOMB_X22_Y17_N20
\inst69|inst31|inst4|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst5~0_combout\ = (\inst69|inst31|inst4|inst7~q\ & \inst69|inst31|inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst4|inst7~q\,
	datad => \inst69|inst31|inst4|inst~q\,
	combout => \inst69|inst31|inst4|inst5~0_combout\);

-- Location: LCCOMB_X22_Y17_N8
\inst69|inst31|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst8~0_combout\ = \inst69|inst31|inst4|inst8~q\ $ (((\inst69|inst31|inst4|inst~q\ & \inst69|inst31|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst69|inst31|inst4|inst~q\,
	datac => \inst69|inst31|inst4|inst8~q\,
	datad => \inst69|inst31|inst4|inst7~q\,
	combout => \inst69|inst31|inst4|inst8~0_combout\);

-- Location: FF_X22_Y17_N9
\inst69|inst31|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst10|inst~q\,
	d => \inst69|inst31|inst4|inst8~0_combout\,
	clrn => \inst69|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst4|inst8~q\);

-- Location: LCCOMB_X22_Y17_N30
\inst69|inst31|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst9~0_combout\ = \inst69|inst31|inst4|inst9~q\ $ (((\inst69|inst31|inst4|inst8~q\ & (\inst69|inst31|inst4|inst~q\ & \inst69|inst31|inst4|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst4|inst8~q\,
	datab => \inst69|inst31|inst4|inst~q\,
	datac => \inst69|inst31|inst4|inst9~q\,
	datad => \inst69|inst31|inst4|inst7~q\,
	combout => \inst69|inst31|inst4|inst9~0_combout\);

-- Location: FF_X22_Y17_N31
\inst69|inst31|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst10|inst~q\,
	d => \inst69|inst31|inst4|inst9~0_combout\,
	clrn => \inst69|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst4|inst9~q\);

-- Location: LCCOMB_X22_Y17_N16
\inst69|inst31|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst14~0_combout\ = \inst69|inst31|inst4|inst14~q\ $ (((\inst69|inst31|inst4|inst5~0_combout\ & (\inst69|inst31|inst4|inst8~q\ & \inst69|inst31|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst4|inst5~0_combout\,
	datab => \inst69|inst31|inst4|inst8~q\,
	datac => \inst69|inst31|inst4|inst14~q\,
	datad => \inst69|inst31|inst4|inst9~q\,
	combout => \inst69|inst31|inst4|inst14~0_combout\);

-- Location: FF_X22_Y17_N17
\inst69|inst31|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst10|inst~q\,
	d => \inst69|inst31|inst4|inst14~0_combout\,
	clrn => \inst69|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst4|inst14~q\);

-- Location: LCCOMB_X22_Y17_N2
\inst69|inst31|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst17~0_combout\ = (!\inst69|inst31|inst4|inst14~q\) # (!\inst69|inst31|inst4|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst31|inst4|inst8~q\,
	datad => \inst69|inst31|inst4|inst14~q\,
	combout => \inst69|inst31|inst4|inst17~0_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst69|inst31|inst4|inst17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst17~1_combout\ = \inst69|inst31|inst4|inst17~q\ $ (((\inst69|inst31|inst4|inst5~0_combout\ & (\inst69|inst31|inst4|inst9~q\ & !\inst69|inst31|inst4|inst17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst4|inst5~0_combout\,
	datab => \inst69|inst31|inst4|inst9~q\,
	datac => \inst69|inst31|inst4|inst17~q\,
	datad => \inst69|inst31|inst4|inst17~0_combout\,
	combout => \inst69|inst31|inst4|inst17~1_combout\);

-- Location: FF_X22_Y17_N23
\inst69|inst31|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst10|inst~q\,
	d => \inst69|inst31|inst4|inst17~1_combout\,
	clrn => \inst69|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst4|inst17~q\);

-- Location: LCCOMB_X22_Y17_N0
\inst69|inst31|inst4|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst16~combout\ = (\inst69|inst31|inst4|inst9~q\ & (\inst69|inst31|inst4|inst8~q\ & (\inst69|inst31|inst4|inst5~0_combout\ & \inst69|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst4|inst9~q\,
	datab => \inst69|inst31|inst4|inst8~q\,
	datac => \inst69|inst31|inst4|inst5~0_combout\,
	datad => \inst69|inst31|inst4|inst14~q\,
	combout => \inst69|inst31|inst4|inst16~combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst69|inst31|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst19~0_combout\ = \inst69|inst31|inst4|inst19~q\ $ (((\inst69|inst31|inst4|inst17~q\ & \inst69|inst31|inst4|inst16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst4|inst17~q\,
	datac => \inst69|inst31|inst4|inst19~q\,
	datad => \inst69|inst31|inst4|inst16~combout\,
	combout => \inst69|inst31|inst4|inst19~0_combout\);

-- Location: FF_X22_Y17_N5
\inst69|inst31|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst10|inst~q\,
	d => \inst69|inst31|inst4|inst19~0_combout\,
	clrn => \inst69|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst4|inst19~q\);

-- Location: LCCOMB_X22_Y17_N10
\inst69|inst31|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst21~0_combout\ = \inst69|inst31|inst4|inst21~q\ $ (((\inst69|inst31|inst4|inst17~q\ & (\inst69|inst31|inst4|inst19~q\ & \inst69|inst31|inst4|inst16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst4|inst17~q\,
	datab => \inst69|inst31|inst4|inst19~q\,
	datac => \inst69|inst31|inst4|inst21~q\,
	datad => \inst69|inst31|inst4|inst16~combout\,
	combout => \inst69|inst31|inst4|inst21~0_combout\);

-- Location: FF_X22_Y17_N11
\inst69|inst31|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst10|inst~q\,
	d => \inst69|inst31|inst4|inst21~0_combout\,
	clrn => \inst69|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst4|inst21~q\);

-- Location: LCCOMB_X22_Y17_N14
\inst69|inst31|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst10~0_combout\ = (!\inst69|inst31|inst4|inst17~q\ & (!\inst69|inst31|inst4|inst19~q\ & (!\inst69|inst31|inst4|inst9~q\ & !\inst69|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst4|inst17~q\,
	datab => \inst69|inst31|inst4|inst19~q\,
	datac => \inst69|inst31|inst4|inst9~q\,
	datad => \inst69|inst31|inst4|inst14~q\,
	combout => \inst69|inst31|inst4|inst10~0_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst69|inst31|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst10~combout\ = LCELL((!\inst69|inst31|inst4|inst21~q\ & (!\inst69|inst31|inst4|inst8~q\ & (\inst69|inst31|inst4|inst10~0_combout\ & \inst69|inst31|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst31|inst4|inst21~q\,
	datab => \inst69|inst31|inst4|inst8~q\,
	datac => \inst69|inst31|inst4|inst10~0_combout\,
	datad => \inst69|inst31|inst4|inst5~0_combout\,
	combout => \inst69|inst31|inst4|inst10~combout\);

-- Location: LCCOMB_X22_Y17_N18
\inst69|inst31|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst31|inst4|inst4~0_combout\ = !\inst69|inst31|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst69|inst31|inst4|inst4~q\,
	combout => \inst69|inst31|inst4|inst4~0_combout\);

-- Location: FF_X22_Y17_N7
\inst69|inst31|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst4|inst10~combout\,
	asdata => \inst69|inst31|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst31|inst4|inst4~q\);

-- Location: LCCOMB_X21_Y17_N18
\inst69|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst17|inst~0_combout\ = !\inst69|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst69|inst17|inst~q\,
	combout => \inst69|inst17|inst~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\inst69|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst17|inst~feeder_combout\ = \inst69|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|inst17|inst~0_combout\,
	combout => \inst69|inst17|inst~feeder_combout\);

-- Location: FF_X21_Y17_N5
\inst69|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst31|inst4|inst4~q\,
	d => \inst69|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst17|inst~q\);

-- Location: LCCOMB_X22_Y15_N4
\inst69|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst69|inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst69|inst3|inst~feeder_combout\);

-- Location: FF_X22_Y15_N5
\inst69|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst17|ALT_INV_inst~q\,
	d => \inst69|inst3|inst~feeder_combout\,
	clrn => \inst69|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst3|inst~q\);

-- Location: FF_X22_Y15_N11
\inst69|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst69|inst2~q\,
	d => \inst69|inst~0_combout\,
	clrn => \inst69|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst69|inst~q\);

-- Location: LCCOMB_X22_Y15_N18
\inst5|inst26|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst26|inst4~combout\ = (\inst5|inst17|inst~q\) # (!\inst5|inst26|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst17|inst~q\,
	datad => \inst5|inst26|inst4~0_combout\,
	combout => \inst5|inst26|inst4~combout\);

-- Location: LCCOMB_X22_Y15_N20
\inst5|inst14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst14~1_combout\ = (!\inst5|inst26|inst4~combout\ & ((\inst5|inst8|inst~q\) # (\inst5|inst14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst26|inst4~combout\,
	datac => \inst5|inst8|inst~q\,
	datad => \inst5|inst14~1_combout\,
	combout => \inst5|inst14~1_combout\);

-- Location: LCCOMB_X22_Y15_N28
\inst5|inst14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst14~2_combout\ = (!\inst5|inst26|inst4~combout\ & ((\inst5|inst14~1_combout\) # (\inst5|inst8|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst14~1_combout\,
	datac => \inst5|inst8|inst~q\,
	datad => \inst5|inst26|inst4~combout\,
	combout => \inst5|inst14~2_combout\);

-- Location: LCCOMB_X21_Y15_N24
\inst20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20~2_combout\ = (\inst86|inst4|inst4~q\ & (!\inst90|inst|inst4~q\ & (\inst69|inst~q\ & \inst5|inst14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst86|inst4|inst4~q\,
	datab => \inst90|inst|inst4~q\,
	datac => \inst69|inst~q\,
	datad => \inst5|inst14~2_combout\,
	combout => \inst20~2_combout\);

-- Location: LCCOMB_X11_Y2_N18
\inst83|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst|inst~0_combout\ = !\inst83|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst|inst|inst~q\,
	combout => \inst83|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X11_Y2_N28
\inst83|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst|inst~feeder_combout\ = \inst83|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst83|inst|inst|inst~0_combout\,
	combout => \inst83|inst|inst|inst~feeder_combout\);

-- Location: FF_X11_Y2_N29
\inst83|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst83|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst|inst|inst~q\);

-- Location: LCCOMB_X10_Y2_N18
\inst83|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst2|inst~0_combout\ = !\inst83|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst|inst2|inst~q\,
	combout => \inst83|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X10_Y2_N24
\inst83|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst2|inst~feeder_combout\ = \inst83|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst|inst2|inst~0_combout\,
	combout => \inst83|inst|inst2|inst~feeder_combout\);

-- Location: FF_X10_Y2_N25
\inst83|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst|inst|ALT_INV_inst~q\,
	d => \inst83|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst|inst2|inst~q\);

-- Location: LCCOMB_X10_Y2_N28
\inst83|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst3|inst~0_combout\ = !\inst83|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst|inst3|inst~q\,
	combout => \inst83|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X10_Y2_N0
\inst83|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst3|inst~feeder_combout\ = \inst83|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst83|inst|inst3|inst~0_combout\,
	combout => \inst83|inst|inst3|inst~feeder_combout\);

-- Location: FF_X10_Y2_N1
\inst83|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst|inst2|ALT_INV_inst~q\,
	d => \inst83|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst|inst3|inst~q\);

-- Location: LCCOMB_X10_Y3_N12
\inst83|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst4|inst~0_combout\ = !\inst83|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst|inst4|inst~q\,
	combout => \inst83|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X10_Y3_N20
\inst83|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst4|inst~feeder_combout\ = \inst83|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst|inst4|inst~0_combout\,
	combout => \inst83|inst|inst4|inst~feeder_combout\);

-- Location: FF_X10_Y3_N21
\inst83|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst|inst3|ALT_INV_inst~q\,
	d => \inst83|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst|inst4|inst~q\);

-- Location: LCCOMB_X10_Y3_N22
\inst83|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst5|inst~0_combout\ = !\inst83|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst|inst5|inst~q\,
	combout => \inst83|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X10_Y3_N14
\inst83|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst5|inst~feeder_combout\ = \inst83|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst83|inst|inst5|inst~0_combout\,
	combout => \inst83|inst|inst5|inst~feeder_combout\);

-- Location: FF_X10_Y3_N15
\inst83|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst|inst4|ALT_INV_inst~q\,
	d => \inst83|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst|inst5|inst~q\);

-- Location: LCCOMB_X11_Y3_N10
\inst83|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst6|inst~0_combout\ = !\inst83|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst|inst6|inst~q\,
	combout => \inst83|inst|inst6|inst~0_combout\);

-- Location: FF_X11_Y3_N3
\inst83|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst|inst5|ALT_INV_inst~q\,
	asdata => \inst83|inst|inst6|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst|inst6|inst~q\);

-- Location: LCCOMB_X11_Y3_N14
\inst83|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst7|inst~0_combout\ = !\inst83|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst|inst7|inst~q\,
	combout => \inst83|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X11_Y3_N16
\inst83|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst7|inst~feeder_combout\ = \inst83|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst|inst7|inst~0_combout\,
	combout => \inst83|inst|inst7|inst~feeder_combout\);

-- Location: FF_X11_Y3_N17
\inst83|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst|inst6|ALT_INV_inst~q\,
	d => \inst83|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst|inst7|inst~q\);

-- Location: LCCOMB_X12_Y3_N4
\inst83|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst8|inst~0_combout\ = !\inst83|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst83|inst|inst8|inst~q\,
	combout => \inst83|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X12_Y3_N20
\inst83|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst|inst8|inst~feeder_combout\ = \inst83|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst|inst8|inst~0_combout\,
	combout => \inst83|inst|inst8|inst~feeder_combout\);

-- Location: FF_X12_Y3_N21
\inst83|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst|inst7|ALT_INV_inst~q\,
	d => \inst83|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst|inst8|inst~q\);

-- Location: LCCOMB_X12_Y3_N10
\inst83|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst3|inst~0_combout\ = !\inst83|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst83|inst3|inst~q\,
	combout => \inst83|inst3|inst~0_combout\);

-- Location: LCCOMB_X12_Y3_N6
\inst83|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst3|inst~feeder_combout\ = \inst83|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst83|inst3|inst~0_combout\,
	combout => \inst83|inst3|inst~feeder_combout\);

-- Location: FF_X12_Y3_N7
\inst83|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst|inst8|inst~q\,
	d => \inst83|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst3|inst~q\);

-- Location: LCCOMB_X13_Y3_N8
\inst83|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst~0_combout\ = !\inst83|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst2|inst~q\,
	combout => \inst83|inst2|inst~0_combout\);

-- Location: FF_X13_Y3_N31
\inst83|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst3|inst~q\,
	asdata => \inst83|inst2|inst~0_combout\,
	clrn => \inst83|inst2|ALT_INV_inst10~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst2|inst~q\);

-- Location: LCCOMB_X13_Y3_N22
\inst83|inst2|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst7~0_combout\ = \inst83|inst2|inst~q\ $ (\inst83|inst2|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst2|inst~q\,
	datad => \inst83|inst2|inst7~q\,
	combout => \inst83|inst2|inst7~0_combout\);

-- Location: LCCOMB_X13_Y3_N16
\inst83|inst2|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst7~feeder_combout\ = \inst83|inst2|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst83|inst2|inst7~0_combout\,
	combout => \inst83|inst2|inst7~feeder_combout\);

-- Location: FF_X13_Y3_N17
\inst83|inst2|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst3|inst~q\,
	d => \inst83|inst2|inst7~feeder_combout\,
	clrn => \inst83|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst2|inst7~q\);

-- Location: LCCOMB_X13_Y3_N2
\inst83|inst2|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst8~0_combout\ = \inst83|inst2|inst8~q\ $ (((\inst83|inst2|inst~q\ & \inst83|inst2|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst83|inst2|inst~q\,
	datac => \inst83|inst2|inst8~q\,
	datad => \inst83|inst2|inst7~q\,
	combout => \inst83|inst2|inst8~0_combout\);

-- Location: FF_X13_Y3_N3
\inst83|inst2|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst3|inst~q\,
	d => \inst83|inst2|inst8~0_combout\,
	clrn => \inst83|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst2|inst8~q\);

-- Location: LCCOMB_X13_Y3_N12
\inst83|inst2|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst9~0_combout\ = \inst83|inst2|inst9~q\ $ (((\inst83|inst2|inst7~q\ & (\inst83|inst2|inst~q\ & \inst83|inst2|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst2|inst7~q\,
	datab => \inst83|inst2|inst~q\,
	datac => \inst83|inst2|inst9~q\,
	datad => \inst83|inst2|inst8~q\,
	combout => \inst83|inst2|inst9~0_combout\);

-- Location: FF_X13_Y3_N13
\inst83|inst2|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst3|inst~q\,
	d => \inst83|inst2|inst9~0_combout\,
	clrn => \inst83|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst2|inst9~q\);

-- Location: LCCOMB_X13_Y3_N20
\inst83|inst2|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst10~0_combout\ = (\inst83|inst2|inst9~q\ & (\inst83|inst2|inst8~q\ & (\inst83|inst2|inst~q\ & \inst83|inst2|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst2|inst9~q\,
	datab => \inst83|inst2|inst8~q\,
	datac => \inst83|inst2|inst~q\,
	datad => \inst83|inst2|inst7~q\,
	combout => \inst83|inst2|inst10~0_combout\);

-- Location: LCCOMB_X13_Y3_N18
\inst83|inst2|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst14~0_combout\ = \inst83|inst2|inst14~q\ $ (\inst83|inst2|inst10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst2|inst14~q\,
	datad => \inst83|inst2|inst10~0_combout\,
	combout => \inst83|inst2|inst14~0_combout\);

-- Location: FF_X13_Y3_N19
\inst83|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst3|inst~q\,
	d => \inst83|inst2|inst14~0_combout\,
	clrn => \inst83|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst2|inst14~q\);

-- Location: LCCOMB_X13_Y3_N4
\inst83|inst2|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst17~0_combout\ = \inst83|inst2|inst17~q\ $ (((\inst83|inst2|inst14~q\ & \inst83|inst2|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst2|inst14~q\,
	datac => \inst83|inst2|inst17~q\,
	datad => \inst83|inst2|inst10~0_combout\,
	combout => \inst83|inst2|inst17~0_combout\);

-- Location: FF_X13_Y3_N5
\inst83|inst2|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst3|inst~q\,
	d => \inst83|inst2|inst17~0_combout\,
	clrn => \inst83|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst2|inst17~q\);

-- Location: LCCOMB_X13_Y3_N28
\inst83|inst2|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst19~0_combout\ = \inst83|inst2|inst19~q\ $ (((\inst83|inst2|inst10~0_combout\ & (\inst83|inst2|inst14~q\ & \inst83|inst2|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst2|inst10~0_combout\,
	datab => \inst83|inst2|inst14~q\,
	datac => \inst83|inst2|inst19~q\,
	datad => \inst83|inst2|inst17~q\,
	combout => \inst83|inst2|inst19~0_combout\);

-- Location: FF_X13_Y3_N29
\inst83|inst2|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst3|inst~q\,
	d => \inst83|inst2|inst19~0_combout\,
	clrn => \inst83|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst2|inst19~q\);

-- Location: LCCOMB_X13_Y3_N10
\inst83|inst2|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst21~0_combout\ = (!\inst83|inst2|inst14~q\) # (!\inst83|inst2|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst2|inst17~q\,
	datad => \inst83|inst2|inst14~q\,
	combout => \inst83|inst2|inst21~0_combout\);

-- Location: LCCOMB_X13_Y3_N24
\inst83|inst2|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst21~1_combout\ = \inst83|inst2|inst21~q\ $ (((\inst83|inst2|inst10~0_combout\ & (\inst83|inst2|inst19~q\ & !\inst83|inst2|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst2|inst10~0_combout\,
	datab => \inst83|inst2|inst19~q\,
	datac => \inst83|inst2|inst21~q\,
	datad => \inst83|inst2|inst21~0_combout\,
	combout => \inst83|inst2|inst21~1_combout\);

-- Location: FF_X13_Y3_N25
\inst83|inst2|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst3|inst~q\,
	d => \inst83|inst2|inst21~1_combout\,
	clrn => \inst83|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst2|inst21~q\);

-- Location: LCCOMB_X13_Y3_N26
\inst83|inst2|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst10~1_combout\ = (\inst83|inst2|inst17~q\ & (!\inst83|inst2|inst19~q\ & (!\inst83|inst2|inst14~q\ & !\inst83|inst2|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst83|inst2|inst17~q\,
	datab => \inst83|inst2|inst19~q\,
	datac => \inst83|inst2|inst14~q\,
	datad => \inst83|inst2|inst21~q\,
	combout => \inst83|inst2|inst10~1_combout\);

-- Location: LCCOMB_X13_Y3_N14
\inst83|inst2|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst10~combout\ = LCELL((\inst83|inst2|inst10~1_combout\ & \inst83|inst2|inst10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst2|inst10~1_combout\,
	datad => \inst83|inst2|inst10~0_combout\,
	combout => \inst83|inst2|inst10~combout\);

-- Location: LCCOMB_X13_Y3_N6
\inst83|inst2|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst83|inst2|inst4~0_combout\ = !\inst83|inst2|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst83|inst2|inst4~q\,
	combout => \inst83|inst2|inst4~0_combout\);

-- Location: FF_X13_Y3_N7
\inst83|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst83|inst2|inst10~combout\,
	d => \inst83|inst2|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst83|inst2|inst4~q\);

-- Location: LCCOMB_X10_Y11_N30
\inst65|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst2~0_combout\ = !\inst65|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst65|inst2~q\,
	combout => \inst65|inst2~0_combout\);

-- Location: LCCOMB_X10_Y11_N26
\inst65|inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst2~feeder_combout\ = \inst65|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst2~0_combout\,
	combout => \inst65|inst2~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N28
\inst65|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst7|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst65|inst7|inst~feeder_combout\);

-- Location: FF_X10_Y11_N29
\inst65|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst80~clkctrl_outclk\,
	d => \inst65|inst7|inst~feeder_combout\,
	clrn => \inst65|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst7|inst~q\);

-- Location: FF_X10_Y11_N27
\inst65|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst80~clkctrl_outclk\,
	d => \inst65|inst2~feeder_combout\,
	clrn => \inst65|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst2~q\);

-- Location: LCCOMB_X11_Y11_N24
\inst65|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst~0_combout\ = !\inst65|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst~q\,
	combout => \inst65|inst~0_combout\);

-- Location: LCCOMB_X16_Y11_N14
\inst65|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst32~combout\ = LCELL((\FPGA_CLK~input_o\ & \inst65|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_CLK~input_o\,
	datad => \inst65|inst~q\,
	combout => \inst65|inst32~combout\);

-- Location: LCCOMB_X16_Y11_N30
\inst65|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst|inst~0_combout\ = !\inst65|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst|inst|inst~q\,
	combout => \inst65|inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X16_Y11_N15
\inst65|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst32~combout\,
	asdata => \inst65|inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X17_Y13_N18
\inst65|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst2|inst~0_combout\ = !\inst65|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst|inst2|inst~q\,
	combout => \inst65|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X17_Y13_N24
\inst65|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X17_Y13_N25
\inst65|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X17_Y13_N16
\inst65|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst3|inst~0_combout\ = !\inst65|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst3|inst~q\,
	combout => \inst65|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\inst65|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X17_Y13_N15
\inst65|inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X16_Y13_N12
\inst65|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst4|inst~0_combout\ = !\inst65|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst|inst4|inst~q\,
	combout => \inst65|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X16_Y13_N14
\inst65|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X16_Y13_N15
\inst65|inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X16_Y13_N26
\inst65|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst5|inst~0_combout\ = !\inst65|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst|inst5|inst~q\,
	combout => \inst65|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X16_Y13_N28
\inst65|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X16_Y13_N29
\inst65|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X11_Y13_N30
\inst65|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst6|inst~0_combout\ = !\inst65|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst|inst6|inst~q\,
	combout => \inst65|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X11_Y13_N14
\inst65|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X11_Y13_N15
\inst65|inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X11_Y13_N22
\inst65|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst7|inst~0_combout\ = !\inst65|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst7|inst~q\,
	combout => \inst65|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X11_Y13_N16
\inst65|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X11_Y13_N17
\inst65|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X12_Y13_N28
\inst65|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst8|inst~0_combout\ = !\inst65|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst|inst8|inst~q\,
	combout => \inst65|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X12_Y13_N22
\inst65|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X12_Y13_N23
\inst65|inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X12_Y13_N10
\inst65|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst65|inst31|inst|inst1|inst|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X12_Y13_N30
\inst65|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X12_Y13_N31
\inst65|inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst|inst8|inst~q\,
	d => \inst65|inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X12_Y12_N20
\inst65|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: FF_X12_Y12_N25
\inst65|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	asdata => \inst65|inst31|inst|inst1|inst2|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X12_Y12_N16
\inst65|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst65|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X12_Y12_N6
\inst65|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X12_Y12_N7
\inst65|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X13_Y12_N18
\inst65|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y12_N22
\inst65|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X13_Y12_N23
\inst65|inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X13_Y11_N24
\inst65|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X13_Y11_N28
\inst65|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X13_Y11_N29
\inst65|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X13_Y11_N16
\inst65|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X13_Y11_N14
\inst65|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X13_Y11_N15
\inst65|inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X14_Y11_N28
\inst65|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst65|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X14_Y11_N5
\inst65|inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X14_Y11_N12
\inst65|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X14_Y11_N14
\inst65|inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X14_Y11_N15
\inst65|inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X14_Y8_N4
\inst65|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst2|inst~0_combout\ = !\inst65|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst2|inst~q\,
	combout => \inst65|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X14_Y8_N0
\inst65|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst2|inst~feeder_combout\ = \inst65|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst2|inst~0_combout\,
	combout => \inst65|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X14_Y8_N1
\inst65|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst65|inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst2|inst~q\);

-- Location: LCCOMB_X14_Y8_N28
\inst65|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst3|inst~0_combout\ = !\inst65|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst3|inst~q\,
	combout => \inst65|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X14_Y8_N14
\inst65|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst3|inst~feeder_combout\ = \inst65|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst3|inst~0_combout\,
	combout => \inst65|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X14_Y8_N15
\inst65|inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst2|ALT_INV_inst~q\,
	d => \inst65|inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst3|inst~q\);

-- Location: LCCOMB_X13_Y8_N18
\inst65|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst7|inst~0_combout\ = !\inst65|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst7|inst~q\,
	combout => \inst65|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X13_Y8_N22
\inst65|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst7|inst~feeder_combout\ = \inst65|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst7|inst~0_combout\,
	combout => \inst65|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X13_Y8_N23
\inst65|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst3|ALT_INV_inst~q\,
	d => \inst65|inst31|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst7|inst~q\);

-- Location: LCCOMB_X10_Y8_N30
\inst65|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst8|inst~0_combout\ = !\inst65|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst8|inst~q\,
	combout => \inst65|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X10_Y8_N20
\inst65|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst8|inst~feeder_combout\ = \inst65|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst65|inst31|inst8|inst~0_combout\,
	combout => \inst65|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X10_Y8_N21
\inst65|inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst7|ALT_INV_inst~q\,
	d => \inst65|inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst8|inst~q\);

-- Location: LCCOMB_X10_Y8_N14
\inst65|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst9|inst~0_combout\ = !\inst65|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst9|inst~q\,
	combout => \inst65|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X10_Y8_N0
\inst65|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst9|inst~feeder_combout\ = \inst65|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst9|inst~0_combout\,
	combout => \inst65|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X10_Y8_N1
\inst65|inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst8|ALT_INV_inst~q\,
	d => \inst65|inst31|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst9|inst~q\);

-- Location: LCCOMB_X9_Y9_N30
\inst65|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst10|inst~0_combout\ = !\inst65|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst10|inst~q\,
	combout => \inst65|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X9_Y9_N18
\inst65|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst10|inst~feeder_combout\ = \inst65|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst10|inst~0_combout\,
	combout => \inst65|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X9_Y9_N19
\inst65|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst9|ALT_INV_inst~q\,
	d => \inst65|inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst10|inst~q\);

-- Location: LCCOMB_X8_Y9_N18
\inst65|inst31|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst~0_combout\ = !\inst65|inst31|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst4|inst~q\,
	combout => \inst65|inst31|inst4|inst~0_combout\);

-- Location: LCCOMB_X8_Y9_N0
\inst65|inst31|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst~feeder_combout\ = \inst65|inst31|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst4|inst~0_combout\,
	combout => \inst65|inst31|inst4|inst~feeder_combout\);

-- Location: FF_X8_Y9_N1
\inst65|inst31|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst4|inst~feeder_combout\,
	clrn => \inst65|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst4|inst~q\);

-- Location: LCCOMB_X8_Y9_N28
\inst65|inst31|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst7~0_combout\ = \inst65|inst31|inst4|inst~q\ $ (\inst65|inst31|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst4|inst~q\,
	datad => \inst65|inst31|inst4|inst7~q\,
	combout => \inst65|inst31|inst4|inst7~0_combout\);

-- Location: LCCOMB_X8_Y9_N8
\inst65|inst31|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst7~feeder_combout\ = \inst65|inst31|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst4|inst7~0_combout\,
	combout => \inst65|inst31|inst4|inst7~feeder_combout\);

-- Location: FF_X8_Y9_N9
\inst65|inst31|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst4|inst7~feeder_combout\,
	clrn => \inst65|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst4|inst7~q\);

-- Location: LCCOMB_X8_Y9_N30
\inst65|inst31|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst8~0_combout\ = \inst65|inst31|inst4|inst8~q\ $ (((\inst65|inst31|inst4|inst~q\ & \inst65|inst31|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst4|inst~q\,
	datac => \inst65|inst31|inst4|inst8~q\,
	datad => \inst65|inst31|inst4|inst7~q\,
	combout => \inst65|inst31|inst4|inst8~0_combout\);

-- Location: FF_X8_Y9_N31
\inst65|inst31|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst4|inst8~0_combout\,
	clrn => \inst65|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst4|inst8~q\);

-- Location: LCCOMB_X8_Y9_N4
\inst65|inst31|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst9~0_combout\ = \inst65|inst31|inst4|inst9~q\ $ (((\inst65|inst31|inst4|inst~q\ & (\inst65|inst31|inst4|inst8~q\ & \inst65|inst31|inst4|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst4|inst~q\,
	datab => \inst65|inst31|inst4|inst8~q\,
	datac => \inst65|inst31|inst4|inst9~q\,
	datad => \inst65|inst31|inst4|inst7~q\,
	combout => \inst65|inst31|inst4|inst9~0_combout\);

-- Location: FF_X8_Y9_N5
\inst65|inst31|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst4|inst9~0_combout\,
	clrn => \inst65|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst4|inst9~q\);

-- Location: LCCOMB_X8_Y9_N2
\inst65|inst31|inst4|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst5~0_combout\ = (\inst65|inst31|inst4|inst7~q\ & \inst65|inst31|inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst4|inst7~q\,
	datad => \inst65|inst31|inst4|inst~q\,
	combout => \inst65|inst31|inst4|inst5~0_combout\);

-- Location: LCCOMB_X8_Y9_N16
\inst65|inst31|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst14~0_combout\ = \inst65|inst31|inst4|inst14~q\ $ (((\inst65|inst31|inst4|inst8~q\ & (\inst65|inst31|inst4|inst9~q\ & \inst65|inst31|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst4|inst8~q\,
	datab => \inst65|inst31|inst4|inst9~q\,
	datac => \inst65|inst31|inst4|inst14~q\,
	datad => \inst65|inst31|inst4|inst5~0_combout\,
	combout => \inst65|inst31|inst4|inst14~0_combout\);

-- Location: FF_X8_Y9_N17
\inst65|inst31|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst4|inst14~0_combout\,
	clrn => \inst65|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst4|inst14~q\);

-- Location: LCCOMB_X8_Y9_N20
\inst65|inst31|inst4|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst16~combout\ = (\inst65|inst31|inst4|inst8~q\ & (\inst65|inst31|inst4|inst9~q\ & (\inst65|inst31|inst4|inst5~0_combout\ & \inst65|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst4|inst8~q\,
	datab => \inst65|inst31|inst4|inst9~q\,
	datac => \inst65|inst31|inst4|inst5~0_combout\,
	datad => \inst65|inst31|inst4|inst14~q\,
	combout => \inst65|inst31|inst4|inst16~combout\);

-- Location: LCCOMB_X8_Y9_N12
\inst65|inst31|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst17~0_combout\ = (!\inst65|inst31|inst4|inst14~q\) # (!\inst65|inst31|inst4|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst4|inst9~q\,
	datad => \inst65|inst31|inst4|inst14~q\,
	combout => \inst65|inst31|inst4|inst17~0_combout\);

-- Location: LCCOMB_X8_Y9_N22
\inst65|inst31|inst4|inst17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst17~1_combout\ = \inst65|inst31|inst4|inst17~q\ $ (((\inst65|inst31|inst4|inst8~q\ & (\inst65|inst31|inst4|inst5~0_combout\ & !\inst65|inst31|inst4|inst17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst4|inst8~q\,
	datab => \inst65|inst31|inst4|inst5~0_combout\,
	datac => \inst65|inst31|inst4|inst17~q\,
	datad => \inst65|inst31|inst4|inst17~0_combout\,
	combout => \inst65|inst31|inst4|inst17~1_combout\);

-- Location: FF_X8_Y9_N23
\inst65|inst31|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst4|inst17~1_combout\,
	clrn => \inst65|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst4|inst17~q\);

-- Location: LCCOMB_X8_Y9_N14
\inst65|inst31|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst19~0_combout\ = \inst65|inst31|inst4|inst19~q\ $ (((\inst65|inst31|inst4|inst16~combout\ & \inst65|inst31|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst4|inst16~combout\,
	datac => \inst65|inst31|inst4|inst19~q\,
	datad => \inst65|inst31|inst4|inst17~q\,
	combout => \inst65|inst31|inst4|inst19~0_combout\);

-- Location: FF_X8_Y9_N15
\inst65|inst31|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst4|inst19~0_combout\,
	clrn => \inst65|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst4|inst19~q\);

-- Location: LCCOMB_X8_Y9_N24
\inst65|inst31|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst21~0_combout\ = \inst65|inst31|inst4|inst21~q\ $ (((\inst65|inst31|inst4|inst16~combout\ & (\inst65|inst31|inst4|inst19~q\ & \inst65|inst31|inst4|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst4|inst16~combout\,
	datab => \inst65|inst31|inst4|inst19~q\,
	datac => \inst65|inst31|inst4|inst21~q\,
	datad => \inst65|inst31|inst4|inst17~q\,
	combout => \inst65|inst31|inst4|inst21~0_combout\);

-- Location: FF_X8_Y9_N25
\inst65|inst31|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst4|inst21~0_combout\,
	clrn => \inst65|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst4|inst21~q\);

-- Location: LCCOMB_X8_Y9_N26
\inst65|inst31|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst10~0_combout\ = (!\inst65|inst31|inst4|inst17~q\ & (!\inst65|inst31|inst4|inst19~q\ & (!\inst65|inst31|inst4|inst9~q\ & !\inst65|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst4|inst17~q\,
	datab => \inst65|inst31|inst4|inst19~q\,
	datac => \inst65|inst31|inst4|inst9~q\,
	datad => \inst65|inst31|inst4|inst14~q\,
	combout => \inst65|inst31|inst4|inst10~0_combout\);

-- Location: LCCOMB_X8_Y9_N10
\inst65|inst31|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst10~combout\ = LCELL((!\inst65|inst31|inst4|inst8~q\ & (!\inst65|inst31|inst4|inst21~q\ & (\inst65|inst31|inst4|inst10~0_combout\ & \inst65|inst31|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst4|inst8~q\,
	datab => \inst65|inst31|inst4|inst21~q\,
	datac => \inst65|inst31|inst4|inst10~0_combout\,
	datad => \inst65|inst31|inst4|inst5~0_combout\,
	combout => \inst65|inst31|inst4|inst10~combout\);

-- Location: LCCOMB_X8_Y9_N6
\inst65|inst31|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst4|inst4~0_combout\ = !\inst65|inst31|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst4|inst4~q\,
	combout => \inst65|inst31|inst4|inst4~0_combout\);

-- Location: FF_X8_Y9_N19
\inst65|inst31|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst4|inst10~combout\,
	asdata => \inst65|inst31|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst4|inst4~q\);

-- Location: LCCOMB_X8_Y11_N18
\inst65|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst17|inst~0_combout\ = !\inst65|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst17|inst~q\,
	combout => \inst65|inst17|inst~0_combout\);

-- Location: LCCOMB_X8_Y11_N20
\inst65|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst17|inst~feeder_combout\ = \inst65|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst17|inst~0_combout\,
	combout => \inst65|inst17|inst~feeder_combout\);

-- Location: FF_X8_Y11_N21
\inst65|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst4|inst4~q\,
	d => \inst65|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst17|inst~q\);

-- Location: LCCOMB_X11_Y11_N18
\inst65|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst65|inst3|inst~feeder_combout\);

-- Location: FF_X11_Y11_N19
\inst65|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst17|ALT_INV_inst~q\,
	d => \inst65|inst3|inst~feeder_combout\,
	clrn => \inst65|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst3|inst~q\);

-- Location: FF_X11_Y11_N25
\inst65|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst2~q\,
	d => \inst65|inst~0_combout\,
	clrn => \inst65|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst~q\);

-- Location: LCCOMB_X24_Y11_N18
\inst5|inst40|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst40|inst4~0_combout\ = (!\inst5|inst19|inst~q\ & (!\inst5|inst17|inst~q\ & (!\inst5|inst9|inst~q\ & !\inst5|inst8|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst19|inst~q\,
	datab => \inst5|inst17|inst~q\,
	datac => \inst5|inst9|inst~q\,
	datad => \inst5|inst8|inst~q\,
	combout => \inst5|inst40|inst4~0_combout\);

-- Location: LCCOMB_X24_Y11_N28
\inst5|inst25|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst25|inst4~combout\ = (\inst5|inst18|inst~q\) # (!\inst5|inst40|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst18|inst~q\,
	datad => \inst5|inst40|inst4~0_combout\,
	combout => \inst5|inst25|inst4~combout\);

-- Location: LCCOMB_X24_Y11_N20
\inst5|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10~1_combout\ = (!\inst5|inst25|inst4~combout\ & ((\inst5|inst7|inst~q\) # (\inst5|inst10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst25|inst4~combout\,
	datac => \inst5|inst7|inst~q\,
	datad => \inst5|inst10~1_combout\,
	combout => \inst5|inst10~1_combout\);

-- Location: LCCOMB_X24_Y11_N14
\inst5|inst10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst10~2_combout\ = (!\inst5|inst25|inst4~combout\ & ((\inst5|inst10~1_combout\) # (\inst5|inst7|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst10~1_combout\,
	datac => \inst5|inst7|inst~q\,
	datad => \inst5|inst25|inst4~combout\,
	combout => \inst5|inst10~2_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20~0_combout\ = (!\inst90|inst|inst4~q\ & (\inst83|inst2|inst4~q\ & (\inst65|inst~q\ & \inst5|inst10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst4~q\,
	datab => \inst83|inst2|inst4~q\,
	datac => \inst65|inst~q\,
	datad => \inst5|inst10~2_combout\,
	combout => \inst20~0_combout\);

-- Location: LCCOMB_X21_Y11_N6
\inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~0_combout\ = (\inst20~1_combout\) # ((\inst20~3_combout\) # ((\inst20~2_combout\) # (\inst20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~1_combout\,
	datab => \inst20~3_combout\,
	datac => \inst20~2_combout\,
	datad => \inst20~0_combout\,
	combout => \inst19~0_combout\);

-- Location: LCCOMB_X24_Y11_N0
\inst5|inst40|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst40|inst4~combout\ = (\inst5|inst7|inst~q\) # (!\inst5|inst40|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst7|inst~q\,
	datad => \inst5|inst40|inst4~0_combout\,
	combout => \inst5|inst40|inst4~combout\);

-- Location: LCCOMB_X24_Y11_N12
\inst5|inst37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst37~1_combout\ = (!\inst5|inst40|inst4~combout\ & ((\inst5|inst18|inst~q\) # (\inst5|inst37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst40|inst4~combout\,
	datac => \inst5|inst18|inst~q\,
	datad => \inst5|inst37~1_combout\,
	combout => \inst5|inst37~1_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst5|inst37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst37~2_combout\ = (!\inst5|inst40|inst4~combout\ & ((\inst5|inst37~1_combout\) # (\inst5|inst18|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst37~1_combout\,
	datac => \inst5|inst18|inst~q\,
	datad => \inst5|inst40|inst4~combout\,
	combout => \inst5|inst37~2_combout\);

-- Location: LCCOMB_X13_Y7_N10
\inst12|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst|inst~0_combout\ = !\inst12|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst|inst~q\,
	combout => \inst12|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X13_Y7_N4
\inst12|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst|inst~feeder_combout\ = \inst12|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst|inst~0_combout\,
	combout => \inst12|inst|inst|inst~feeder_combout\);

-- Location: FF_X13_Y7_N5
\inst12|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst12|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst|inst~q\);

-- Location: LCCOMB_X13_Y7_N28
\inst12|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst2|inst~0_combout\ = !\inst12|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst2|inst~q\,
	combout => \inst12|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X13_Y7_N14
\inst12|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst2|inst~feeder_combout\ = \inst12|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst2|inst~0_combout\,
	combout => \inst12|inst|inst2|inst~feeder_combout\);

-- Location: FF_X13_Y7_N15
\inst12|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst|ALT_INV_inst~q\,
	d => \inst12|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst2|inst~q\);

-- Location: LCCOMB_X12_Y7_N26
\inst12|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst3|inst~0_combout\ = !\inst12|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst3|inst~q\,
	combout => \inst12|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X12_Y7_N18
\inst12|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst3|inst~feeder_combout\ = \inst12|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst3|inst~0_combout\,
	combout => \inst12|inst|inst3|inst~feeder_combout\);

-- Location: FF_X12_Y7_N19
\inst12|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst2|ALT_INV_inst~q\,
	d => \inst12|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst3|inst~q\);

-- Location: LCCOMB_X12_Y7_N22
\inst12|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst4|inst~0_combout\ = !\inst12|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst4|inst~q\,
	combout => \inst12|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X12_Y7_N28
\inst12|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst4|inst~feeder_combout\ = \inst12|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst4|inst~0_combout\,
	combout => \inst12|inst|inst4|inst~feeder_combout\);

-- Location: FF_X12_Y7_N29
\inst12|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst3|ALT_INV_inst~q\,
	d => \inst12|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst4|inst~q\);

-- Location: LCCOMB_X11_Y7_N18
\inst12|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst5|inst~0_combout\ = !\inst12|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst5|inst~q\,
	combout => \inst12|inst|inst5|inst~0_combout\);

-- Location: FF_X11_Y7_N3
\inst12|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst4|ALT_INV_inst~q\,
	asdata => \inst12|inst|inst5|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst5|inst~q\);

-- Location: LCCOMB_X11_Y7_N4
\inst12|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst6|inst~0_combout\ = !\inst12|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst6|inst~q\,
	combout => \inst12|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X11_Y7_N14
\inst12|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst6|inst~feeder_combout\ = \inst12|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst6|inst~0_combout\,
	combout => \inst12|inst|inst6|inst~feeder_combout\);

-- Location: FF_X11_Y7_N15
\inst12|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst5|ALT_INV_inst~q\,
	d => \inst12|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst6|inst~q\);

-- Location: LCCOMB_X10_Y7_N12
\inst12|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst7|inst~0_combout\ = !\inst12|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst7|inst~q\,
	combout => \inst12|inst|inst7|inst~0_combout\);

-- Location: FF_X10_Y7_N21
\inst12|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst6|ALT_INV_inst~q\,
	asdata => \inst12|inst|inst7|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst7|inst~q\);

-- Location: LCCOMB_X10_Y7_N28
\inst12|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|inst~0_combout\ = !\inst12|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst8|inst~q\,
	combout => \inst12|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X10_Y7_N14
\inst12|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|inst~feeder_combout\ = \inst12|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst8|inst~0_combout\,
	combout => \inst12|inst|inst8|inst~feeder_combout\);

-- Location: FF_X10_Y7_N15
\inst12|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst7|ALT_INV_inst~q\,
	d => \inst12|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst8|inst~q\);

-- Location: LCCOMB_X9_Y10_N30
\inst12|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst2|inst~0_combout\ = !\inst12|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst2|inst~q\,
	combout => \inst12|inst2|inst~0_combout\);

-- Location: LCCOMB_X9_Y10_N14
\inst12|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst2|inst~feeder_combout\ = \inst12|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst2|inst~0_combout\,
	combout => \inst12|inst2|inst~feeder_combout\);

-- Location: FF_X9_Y10_N15
\inst12|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst8|inst~q\,
	d => \inst12|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst2|inst~q\);

-- Location: LCCOMB_X9_Y10_N0
\inst12|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst9|inst~0_combout\ = !\inst12|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst9|inst~q\,
	combout => \inst12|inst9|inst~0_combout\);

-- Location: LCCOMB_X9_Y10_N16
\inst12|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst9|inst~feeder_combout\ = \inst12|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst9|inst~0_combout\,
	combout => \inst12|inst9|inst~feeder_combout\);

-- Location: FF_X9_Y10_N17
\inst12|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst2|ALT_INV_inst~q\,
	d => \inst12|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst9|inst~q\);

-- Location: LCCOMB_X10_Y10_N18
\inst12|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst~0_combout\ = !\inst12|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst3|inst~q\,
	combout => \inst12|inst3|inst~0_combout\);

-- Location: LCCOMB_X10_Y10_N28
\inst12|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst~feeder_combout\ = \inst12|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst3|inst~0_combout\,
	combout => \inst12|inst3|inst~feeder_combout\);

-- Location: FF_X10_Y10_N29
\inst12|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst3|inst~feeder_combout\,
	clrn => \inst12|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|inst~q\);

-- Location: LCCOMB_X10_Y10_N20
\inst12|inst3|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst7~0_combout\ = \inst12|inst3|inst~q\ $ (\inst12|inst3|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst3|inst~q\,
	datad => \inst12|inst3|inst7~q\,
	combout => \inst12|inst3|inst7~0_combout\);

-- Location: LCCOMB_X10_Y10_N24
\inst12|inst3|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst7~feeder_combout\ = \inst12|inst3|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst3|inst7~0_combout\,
	combout => \inst12|inst3|inst7~feeder_combout\);

-- Location: FF_X10_Y10_N25
\inst12|inst3|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst3|inst7~feeder_combout\,
	clrn => \inst12|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|inst7~q\);

-- Location: LCCOMB_X10_Y10_N26
\inst12|inst3|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst8~0_combout\ = \inst12|inst3|inst8~q\ $ (((\inst12|inst3|inst~q\ & \inst12|inst3|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst3|inst~q\,
	datac => \inst12|inst3|inst8~q\,
	datad => \inst12|inst3|inst7~q\,
	combout => \inst12|inst3|inst8~0_combout\);

-- Location: FF_X10_Y10_N27
\inst12|inst3|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst3|inst8~0_combout\,
	clrn => \inst12|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|inst8~q\);

-- Location: LCCOMB_X10_Y10_N16
\inst12|inst3|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst9~0_combout\ = \inst12|inst3|inst9~q\ $ (((\inst12|inst3|inst8~q\ & (\inst12|inst3|inst7~q\ & \inst12|inst3|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3|inst8~q\,
	datab => \inst12|inst3|inst7~q\,
	datac => \inst12|inst3|inst9~q\,
	datad => \inst12|inst3|inst~q\,
	combout => \inst12|inst3|inst9~0_combout\);

-- Location: FF_X10_Y10_N17
\inst12|inst3|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst3|inst9~0_combout\,
	clrn => \inst12|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|inst9~q\);

-- Location: LCCOMB_X10_Y10_N2
\inst12|inst3|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst13~combout\ = (\inst12|inst3|inst7~q\ & (\inst12|inst3|inst~q\ & (\inst12|inst3|inst8~q\ & \inst12|inst3|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3|inst7~q\,
	datab => \inst12|inst3|inst~q\,
	datac => \inst12|inst3|inst8~q\,
	datad => \inst12|inst3|inst9~q\,
	combout => \inst12|inst3|inst13~combout\);

-- Location: LCCOMB_X10_Y10_N8
\inst12|inst3|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst14~0_combout\ = \inst12|inst3|inst13~combout\ $ (\inst12|inst3|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3|inst13~combout\,
	datac => \inst12|inst3|inst14~q\,
	combout => \inst12|inst3|inst14~0_combout\);

-- Location: FF_X10_Y10_N9
\inst12|inst3|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst3|inst14~0_combout\,
	clrn => \inst12|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|inst14~q\);

-- Location: LCCOMB_X10_Y10_N4
\inst12|inst3|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst17~0_combout\ = \inst12|inst3|inst17~q\ $ (((\inst12|inst3|inst13~combout\ & \inst12|inst3|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3|inst13~combout\,
	datac => \inst12|inst3|inst17~q\,
	datad => \inst12|inst3|inst14~q\,
	combout => \inst12|inst3|inst17~0_combout\);

-- Location: FF_X10_Y10_N5
\inst12|inst3|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst3|inst17~0_combout\,
	clrn => \inst12|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|inst17~q\);

-- Location: LCCOMB_X10_Y10_N22
\inst12|inst3|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst19~0_combout\ = \inst12|inst3|inst19~q\ $ (((\inst12|inst3|inst13~combout\ & (\inst12|inst3|inst17~q\ & \inst12|inst3|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3|inst13~combout\,
	datab => \inst12|inst3|inst17~q\,
	datac => \inst12|inst3|inst19~q\,
	datad => \inst12|inst3|inst14~q\,
	combout => \inst12|inst3|inst19~0_combout\);

-- Location: FF_X10_Y10_N23
\inst12|inst3|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst3|inst19~0_combout\,
	clrn => \inst12|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|inst19~q\);

-- Location: LCCOMB_X10_Y10_N14
\inst12|inst3|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst10~1_combout\ = (!\inst12|inst3|inst19~q\ & (\inst12|inst3|inst17~q\ & (!\inst12|inst3|inst14~q\ & !\inst12|inst3|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3|inst19~q\,
	datab => \inst12|inst3|inst17~q\,
	datac => \inst12|inst3|inst14~q\,
	datad => \inst12|inst3|inst9~q\,
	combout => \inst12|inst3|inst10~1_combout\);

-- Location: LCCOMB_X10_Y10_N12
\inst12|inst3|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst21~0_combout\ = (!\inst12|inst3|inst17~q\) # (!\inst12|inst3|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst3|inst14~q\,
	datad => \inst12|inst3|inst17~q\,
	combout => \inst12|inst3|inst21~0_combout\);

-- Location: LCCOMB_X10_Y10_N30
\inst12|inst3|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst21~1_combout\ = \inst12|inst3|inst21~q\ $ (((\inst12|inst3|inst13~combout\ & (\inst12|inst3|inst19~q\ & !\inst12|inst3|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3|inst13~combout\,
	datab => \inst12|inst3|inst19~q\,
	datac => \inst12|inst3|inst21~q\,
	datad => \inst12|inst3|inst21~0_combout\,
	combout => \inst12|inst3|inst21~1_combout\);

-- Location: FF_X10_Y10_N31
\inst12|inst3|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst3|inst21~1_combout\,
	clrn => \inst12|inst3|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|inst21~q\);

-- Location: LCCOMB_X10_Y10_N10
\inst12|inst3|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst10~0_combout\ = (!\inst12|inst3|inst8~q\ & (!\inst12|inst3|inst7~q\ & (!\inst12|inst3|inst21~q\ & \inst12|inst3|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3|inst8~q\,
	datab => \inst12|inst3|inst7~q\,
	datac => \inst12|inst3|inst21~q\,
	datad => \inst12|inst3|inst~q\,
	combout => \inst12|inst3|inst10~0_combout\);

-- Location: LCCOMB_X10_Y10_N6
\inst12|inst3|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst10~combout\ = LCELL((\inst12|inst3|inst10~1_combout\ & \inst12|inst3|inst10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst3|inst10~1_combout\,
	datad => \inst12|inst3|inst10~0_combout\,
	combout => \inst12|inst3|inst10~combout\);

-- Location: LCCOMB_X10_Y10_N0
\inst12|inst3|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|inst4~0_combout\ = !\inst12|inst3|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst3|inst4~q\,
	combout => \inst12|inst3|inst4~0_combout\);

-- Location: FF_X10_Y10_N1
\inst12|inst3|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst3|inst10~combout\,
	d => \inst12|inst3|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|inst4~q\);

-- Location: LCCOMB_X22_Y13_N16
\inst45|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst~0_combout\ = !\inst45|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst~q\,
	combout => \inst45|inst~0_combout\);

-- Location: LCCOMB_X22_Y13_N0
\inst45|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst32~combout\ = LCELL((\FPGA_CLK~input_o\ & \inst45|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FPGA_CLK~input_o\,
	datad => \inst45|inst~q\,
	combout => \inst45|inst32~combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst45|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst|inst~0_combout\ = !\inst45|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst|inst~q\,
	combout => \inst45|inst31|inst|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst45|inst31|inst|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst|inst~feeder_combout\);

-- Location: FF_X23_Y14_N25
\inst45|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst32~combout\,
	d => \inst45|inst31|inst|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X23_Y14_N28
\inst45|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst2|inst~0_combout\ = !\inst45|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst|inst2|inst~q\,
	combout => \inst45|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst45|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X23_Y14_N15
\inst45|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X28_Y14_N24
\inst45|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst3|inst~0_combout\ = !\inst45|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|inst31|inst|inst|inst3|inst~q\,
	combout => \inst45|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X28_Y14_N0
\inst45|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X28_Y14_N1
\inst45|inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X28_Y15_N28
\inst45|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst4|inst~0_combout\ = !\inst45|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst4|inst~q\,
	combout => \inst45|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X28_Y15_N18
\inst45|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X28_Y15_N19
\inst45|inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X29_Y15_N30
\inst45|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst5|inst~0_combout\ = !\inst45|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst5|inst~q\,
	combout => \inst45|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X29_Y15_N8
\inst45|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X29_Y15_N9
\inst45|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X29_Y15_N16
\inst45|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst6|inst~0_combout\ = !\inst45|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst|inst6|inst~q\,
	combout => \inst45|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X29_Y15_N14
\inst45|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X29_Y15_N15
\inst45|inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X30_Y15_N18
\inst45|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst7|inst~0_combout\ = !\inst45|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst7|inst~q\,
	combout => \inst45|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst45|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X30_Y15_N25
\inst45|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X30_Y15_N4
\inst45|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst8|inst~0_combout\ = !\inst45|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst|inst8|inst~q\,
	combout => \inst45|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst45|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X30_Y15_N1
\inst45|inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X31_Y16_N28
\inst45|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X31_Y16_N14
\inst45|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X31_Y16_N15
\inst45|inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst|inst8|inst~q\,
	d => \inst45|inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X31_Y16_N30
\inst45|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X31_Y16_N6
\inst45|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X31_Y16_N7
\inst45|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X32_Y16_N16
\inst45|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X32_Y16_N12
\inst45|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X32_Y16_N13
\inst45|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X32_Y16_N28
\inst45|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X32_Y16_N22
\inst45|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X32_Y16_N23
\inst45|inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X32_Y19_N28
\inst45|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X32_Y19_N30
\inst45|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X32_Y19_N31
\inst45|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X32_Y19_N26
\inst45|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X32_Y19_N14
\inst45|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X32_Y19_N15
\inst45|inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X31_Y19_N18
\inst45|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X31_Y19_N2
\inst45|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X31_Y19_N3
\inst45|inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X31_Y19_N4
\inst45|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X31_Y19_N14
\inst45|inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X31_Y19_N15
\inst45|inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst45|inst31|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X30_Y19_N26
\inst45|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst2|inst~0_combout\ = !\inst45|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst2|inst~q\,
	combout => \inst45|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X30_Y19_N4
\inst45|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst2|inst~feeder_combout\ = \inst45|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst2|inst~0_combout\,
	combout => \inst45|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X30_Y19_N5
\inst45|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst45|inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst2|inst~q\);

-- Location: LCCOMB_X30_Y19_N28
\inst45|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst3|inst~0_combout\ = !\inst45|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst3|inst~q\,
	combout => \inst45|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst45|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst3|inst~feeder_combout\ = \inst45|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst3|inst~0_combout\,
	combout => \inst45|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X30_Y19_N31
\inst45|inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst2|ALT_INV_inst~q\,
	d => \inst45|inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst3|inst~q\);

-- Location: LCCOMB_X30_Y17_N28
\inst45|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst7|inst~0_combout\ = !\inst45|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst7|inst~q\,
	combout => \inst45|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X30_Y17_N16
\inst45|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst7|inst~feeder_combout\ = \inst45|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst7|inst~0_combout\,
	combout => \inst45|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X30_Y17_N17
\inst45|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst3|ALT_INV_inst~q\,
	d => \inst45|inst31|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst7|inst~q\);

-- Location: LCCOMB_X29_Y17_N2
\inst45|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst8|inst~0_combout\ = !\inst45|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst8|inst~q\,
	combout => \inst45|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X29_Y17_N4
\inst45|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst8|inst~feeder_combout\ = \inst45|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst8|inst~0_combout\,
	combout => \inst45|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X29_Y17_N5
\inst45|inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst7|ALT_INV_inst~q\,
	d => \inst45|inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst8|inst~q\);

-- Location: LCCOMB_X29_Y17_N18
\inst45|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst9|inst~0_combout\ = !\inst45|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst9|inst~q\,
	combout => \inst45|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X29_Y17_N14
\inst45|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst9|inst~feeder_combout\ = \inst45|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst9|inst~0_combout\,
	combout => \inst45|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X29_Y17_N15
\inst45|inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst8|ALT_INV_inst~q\,
	d => \inst45|inst31|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst9|inst~q\);

-- Location: LCCOMB_X28_Y17_N22
\inst45|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst10|inst~0_combout\ = !\inst45|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst10|inst~q\,
	combout => \inst45|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X28_Y17_N6
\inst45|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst10|inst~feeder_combout\ = \inst45|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst10|inst~0_combout\,
	combout => \inst45|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X28_Y17_N7
\inst45|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst9|ALT_INV_inst~q\,
	d => \inst45|inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst10|inst~q\);

-- Location: LCCOMB_X28_Y13_N16
\inst45|inst31|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst~0_combout\ = !\inst45|inst31|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst~q\,
	combout => \inst45|inst31|inst4|inst~0_combout\);

-- Location: LCCOMB_X28_Y13_N24
\inst45|inst31|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst~feeder_combout\ = \inst45|inst31|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|inst31|inst4|inst~0_combout\,
	combout => \inst45|inst31|inst4|inst~feeder_combout\);

-- Location: FF_X28_Y13_N25
\inst45|inst31|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst4|inst~feeder_combout\,
	clrn => \inst45|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst4|inst~q\);

-- Location: LCCOMB_X28_Y13_N12
\inst45|inst31|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst7~0_combout\ = \inst45|inst31|inst4|inst7~q\ $ (\inst45|inst31|inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst7~q\,
	datac => \inst45|inst31|inst4|inst~q\,
	combout => \inst45|inst31|inst4|inst7~0_combout\);

-- Location: LCCOMB_X28_Y13_N26
\inst45|inst31|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst7~feeder_combout\ = \inst45|inst31|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst7~0_combout\,
	combout => \inst45|inst31|inst4|inst7~feeder_combout\);

-- Location: FF_X28_Y13_N27
\inst45|inst31|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst4|inst7~feeder_combout\,
	clrn => \inst45|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst4|inst7~q\);

-- Location: LCCOMB_X28_Y13_N30
\inst45|inst31|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst8~0_combout\ = \inst45|inst31|inst4|inst8~q\ $ (((\inst45|inst31|inst4|inst~q\ & \inst45|inst31|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst~q\,
	datac => \inst45|inst31|inst4|inst8~q\,
	datad => \inst45|inst31|inst4|inst7~q\,
	combout => \inst45|inst31|inst4|inst8~0_combout\);

-- Location: FF_X28_Y13_N31
\inst45|inst31|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst4|inst8~0_combout\,
	clrn => \inst45|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst4|inst8~q\);

-- Location: LCCOMB_X28_Y13_N4
\inst45|inst31|inst4|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst5~0_combout\ = (\inst45|inst31|inst4|inst7~q\ & \inst45|inst31|inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst4|inst7~q\,
	datad => \inst45|inst31|inst4|inst~q\,
	combout => \inst45|inst31|inst4|inst5~0_combout\);

-- Location: LCCOMB_X28_Y13_N8
\inst45|inst31|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst9~0_combout\ = \inst45|inst31|inst4|inst9~q\ $ (((\inst45|inst31|inst4|inst~q\ & (\inst45|inst31|inst4|inst8~q\ & \inst45|inst31|inst4|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst~q\,
	datab => \inst45|inst31|inst4|inst8~q\,
	datac => \inst45|inst31|inst4|inst9~q\,
	datad => \inst45|inst31|inst4|inst7~q\,
	combout => \inst45|inst31|inst4|inst9~0_combout\);

-- Location: FF_X28_Y13_N9
\inst45|inst31|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst4|inst9~0_combout\,
	clrn => \inst45|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst4|inst9~q\);

-- Location: LCCOMB_X28_Y13_N2
\inst45|inst31|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst14~0_combout\ = \inst45|inst31|inst4|inst14~q\ $ (((\inst45|inst31|inst4|inst5~0_combout\ & (\inst45|inst31|inst4|inst8~q\ & \inst45|inst31|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst5~0_combout\,
	datab => \inst45|inst31|inst4|inst8~q\,
	datac => \inst45|inst31|inst4|inst14~q\,
	datad => \inst45|inst31|inst4|inst9~q\,
	combout => \inst45|inst31|inst4|inst14~0_combout\);

-- Location: FF_X28_Y13_N3
\inst45|inst31|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst4|inst14~0_combout\,
	clrn => \inst45|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst4|inst14~q\);

-- Location: LCCOMB_X28_Y13_N0
\inst45|inst31|inst4|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst16~combout\ = (\inst45|inst31|inst4|inst5~0_combout\ & (\inst45|inst31|inst4|inst9~q\ & (\inst45|inst31|inst4|inst8~q\ & \inst45|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst5~0_combout\,
	datab => \inst45|inst31|inst4|inst9~q\,
	datac => \inst45|inst31|inst4|inst8~q\,
	datad => \inst45|inst31|inst4|inst14~q\,
	combout => \inst45|inst31|inst4|inst16~combout\);

-- Location: LCCOMB_X28_Y13_N22
\inst45|inst31|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst17~0_combout\ = \inst45|inst31|inst4|inst16~combout\ $ (\inst45|inst31|inst4|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst4|inst16~combout\,
	datac => \inst45|inst31|inst4|inst17~q\,
	combout => \inst45|inst31|inst4|inst17~0_combout\);

-- Location: FF_X28_Y13_N23
\inst45|inst31|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst4|inst17~0_combout\,
	clrn => \inst45|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst4|inst17~q\);

-- Location: LCCOMB_X28_Y13_N6
\inst45|inst31|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst19~0_combout\ = ((!\inst45|inst31|inst4|inst14~q\) # (!\inst45|inst31|inst4|inst8~q\)) # (!\inst45|inst31|inst4|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst4|inst9~q\,
	datac => \inst45|inst31|inst4|inst8~q\,
	datad => \inst45|inst31|inst4|inst14~q\,
	combout => \inst45|inst31|inst4|inst19~0_combout\);

-- Location: LCCOMB_X28_Y13_N20
\inst45|inst31|inst4|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst19~1_combout\ = \inst45|inst31|inst4|inst19~q\ $ (((\inst45|inst31|inst4|inst5~0_combout\ & (\inst45|inst31|inst4|inst17~q\ & !\inst45|inst31|inst4|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst5~0_combout\,
	datab => \inst45|inst31|inst4|inst17~q\,
	datac => \inst45|inst31|inst4|inst19~q\,
	datad => \inst45|inst31|inst4|inst19~0_combout\,
	combout => \inst45|inst31|inst4|inst19~1_combout\);

-- Location: FF_X28_Y13_N21
\inst45|inst31|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst4|inst19~1_combout\,
	clrn => \inst45|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst4|inst19~q\);

-- Location: LCCOMB_X28_Y13_N18
\inst45|inst31|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst21~0_combout\ = \inst45|inst31|inst4|inst21~q\ $ (((\inst45|inst31|inst4|inst19~q\ & (\inst45|inst31|inst4|inst16~combout\ & \inst45|inst31|inst4|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst19~q\,
	datab => \inst45|inst31|inst4|inst16~combout\,
	datac => \inst45|inst31|inst4|inst21~q\,
	datad => \inst45|inst31|inst4|inst17~q\,
	combout => \inst45|inst31|inst4|inst21~0_combout\);

-- Location: FF_X28_Y13_N19
\inst45|inst31|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst4|inst21~0_combout\,
	clrn => \inst45|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst4|inst21~q\);

-- Location: LCCOMB_X28_Y13_N28
\inst45|inst31|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst10~0_combout\ = (!\inst45|inst31|inst4|inst17~q\ & (!\inst45|inst31|inst4|inst19~q\ & (!\inst45|inst31|inst4|inst9~q\ & !\inst45|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst17~q\,
	datab => \inst45|inst31|inst4|inst19~q\,
	datac => \inst45|inst31|inst4|inst9~q\,
	datad => \inst45|inst31|inst4|inst14~q\,
	combout => \inst45|inst31|inst4|inst10~0_combout\);

-- Location: LCCOMB_X28_Y13_N10
\inst45|inst31|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst10~combout\ = LCELL((!\inst45|inst31|inst4|inst8~q\ & (!\inst45|inst31|inst4|inst21~q\ & (\inst45|inst31|inst4|inst5~0_combout\ & \inst45|inst31|inst4|inst10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst4|inst8~q\,
	datab => \inst45|inst31|inst4|inst21~q\,
	datac => \inst45|inst31|inst4|inst5~0_combout\,
	datad => \inst45|inst31|inst4|inst10~0_combout\,
	combout => \inst45|inst31|inst4|inst10~combout\);

-- Location: LCCOMB_X28_Y13_N14
\inst45|inst31|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst4|inst4~0_combout\ = !\inst45|inst31|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst4|inst4~q\,
	combout => \inst45|inst31|inst4|inst4~0_combout\);

-- Location: FF_X28_Y13_N17
\inst45|inst31|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst4|inst10~combout\,
	asdata => \inst45|inst31|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst4|inst4~q\);

-- Location: LCCOMB_X23_Y13_N18
\inst45|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst17|inst~0_combout\ = !\inst45|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst17|inst~q\,
	combout => \inst45|inst17|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst45|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst17|inst~feeder_combout\ = \inst45|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst17|inst~0_combout\,
	combout => \inst45|inst17|inst~feeder_combout\);

-- Location: FF_X23_Y13_N29
\inst45|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst4|inst4~q\,
	d => \inst45|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst17|inst~q\);

-- Location: LCCOMB_X22_Y13_N30
\inst45|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst45|inst3|inst~feeder_combout\);

-- Location: FF_X22_Y13_N31
\inst45|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst17|ALT_INV_inst~q\,
	d => \inst45|inst3|inst~feeder_combout\,
	clrn => \inst45|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst3|inst~q\);

-- Location: FF_X22_Y13_N17
\inst45|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst2~q\,
	d => \inst45|inst~0_combout\,
	clrn => \inst45|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst~q\);

-- Location: LCCOMB_X21_Y11_N10
\inst20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20~4_combout\ = (!\inst90|inst|inst4~q\ & (\inst5|inst37~2_combout\ & (\inst12|inst3|inst4~q\ & \inst45|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst|inst4~q\,
	datab => \inst5|inst37~2_combout\,
	datac => \inst12|inst3|inst4~q\,
	datad => \inst45|inst~q\,
	combout => \inst20~4_combout\);

-- Location: LCCOMB_X26_Y6_N18
\inst13|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst|inst~0_combout\ = !\inst13|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst|inst~q\,
	combout => \inst13|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X26_Y6_N20
\inst13|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst|inst~feeder_combout\ = \inst13|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst|inst~0_combout\,
	combout => \inst13|inst|inst|inst~feeder_combout\);

-- Location: FF_X26_Y6_N21
\inst13|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst13|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|inst|inst~q\);

-- Location: LCCOMB_X26_Y6_N28
\inst13|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst2|inst~0_combout\ = !\inst13|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|inst2|inst~q\,
	combout => \inst13|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X26_Y6_N14
\inst13|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst2|inst~feeder_combout\ = \inst13|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst2|inst~0_combout\,
	combout => \inst13|inst|inst2|inst~feeder_combout\);

-- Location: FF_X26_Y6_N15
\inst13|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|inst|ALT_INV_inst~q\,
	d => \inst13|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|inst2|inst~q\);

-- Location: LCCOMB_X24_Y6_N10
\inst13|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst3|inst~0_combout\ = !\inst13|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|inst3|inst~q\,
	combout => \inst13|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X24_Y6_N28
\inst13|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst3|inst~feeder_combout\ = \inst13|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|inst3|inst~0_combout\,
	combout => \inst13|inst|inst3|inst~feeder_combout\);

-- Location: FF_X24_Y6_N29
\inst13|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|inst2|ALT_INV_inst~q\,
	d => \inst13|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|inst3|inst~q\);

-- Location: LCCOMB_X24_Y6_N4
\inst13|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst4|inst~0_combout\ = !\inst13|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|inst4|inst~q\,
	combout => \inst13|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X24_Y6_N0
\inst13|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst4|inst~feeder_combout\ = \inst13|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst4|inst~0_combout\,
	combout => \inst13|inst|inst4|inst~feeder_combout\);

-- Location: FF_X24_Y6_N1
\inst13|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|inst3|ALT_INV_inst~q\,
	d => \inst13|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|inst4|inst~q\);

-- Location: LCCOMB_X23_Y8_N18
\inst13|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst5|inst~0_combout\ = !\inst13|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst5|inst~q\,
	combout => \inst13|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X23_Y8_N14
\inst13|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst5|inst~feeder_combout\ = \inst13|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst5|inst~0_combout\,
	combout => \inst13|inst|inst5|inst~feeder_combout\);

-- Location: FF_X23_Y8_N15
\inst13|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|inst4|ALT_INV_inst~q\,
	d => \inst13|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|inst5|inst~q\);

-- Location: LCCOMB_X23_Y8_N28
\inst13|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst6|inst~0_combout\ = !\inst13|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst6|inst~q\,
	combout => \inst13|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X23_Y8_N22
\inst13|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst6|inst~feeder_combout\ = \inst13|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst6|inst~0_combout\,
	combout => \inst13|inst|inst6|inst~feeder_combout\);

-- Location: FF_X23_Y8_N23
\inst13|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|inst5|ALT_INV_inst~q\,
	d => \inst13|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|inst6|inst~q\);

-- Location: LCCOMB_X22_Y8_N18
\inst13|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst7|inst~0_combout\ = !\inst13|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|inst7|inst~q\,
	combout => \inst13|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X22_Y8_N24
\inst13|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst7|inst~feeder_combout\ = \inst13|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|inst7|inst~0_combout\,
	combout => \inst13|inst|inst7|inst~feeder_combout\);

-- Location: FF_X22_Y8_N25
\inst13|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|inst6|ALT_INV_inst~q\,
	d => \inst13|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|inst7|inst~q\);

-- Location: LCCOMB_X22_Y8_N4
\inst13|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst8|inst~0_combout\ = !\inst13|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|inst8|inst~q\,
	combout => \inst13|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X22_Y8_N14
\inst13|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst8|inst~feeder_combout\ = \inst13|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst8|inst~0_combout\,
	combout => \inst13|inst|inst8|inst~feeder_combout\);

-- Location: FF_X22_Y8_N15
\inst13|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|inst7|ALT_INV_inst~q\,
	d => \inst13|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|inst8|inst~q\);

-- Location: LCCOMB_X23_Y6_N18
\inst13|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst3|inst~0_combout\ = !\inst13|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst3|inst~q\,
	combout => \inst13|inst3|inst~0_combout\);

-- Location: LCCOMB_X23_Y6_N28
\inst13|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst3|inst~feeder_combout\ = \inst13|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst3|inst~0_combout\,
	combout => \inst13|inst3|inst~feeder_combout\);

-- Location: FF_X23_Y6_N29
\inst13|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|inst8|inst~q\,
	d => \inst13|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst3|inst~q\);

-- Location: LCCOMB_X23_Y6_N16
\inst13|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst4|inst~0_combout\ = !\inst13|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst4|inst~q\,
	combout => \inst13|inst4|inst~0_combout\);

-- Location: LCCOMB_X23_Y6_N14
\inst13|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst4|inst~feeder_combout\ = \inst13|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst4|inst~0_combout\,
	combout => \inst13|inst4|inst~feeder_combout\);

-- Location: FF_X23_Y6_N15
\inst13|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst3|ALT_INV_inst~q\,
	d => \inst13|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst4|inst~q\);

-- Location: LCCOMB_X22_Y6_N18
\inst13|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst2|inst~0_combout\ = !\inst13|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2|inst~q\,
	combout => \inst13|inst2|inst~0_combout\);

-- Location: LCCOMB_X22_Y6_N28
\inst13|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst2|inst~feeder_combout\ = \inst13|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst2|inst~0_combout\,
	combout => \inst13|inst2|inst~feeder_combout\);

-- Location: FF_X22_Y6_N29
\inst13|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst4|ALT_INV_inst~q\,
	d => \inst13|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst2|inst~q\);

-- Location: LCCOMB_X22_Y6_N16
\inst13|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst9|inst~0_combout\ = !\inst13|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst~q\,
	combout => \inst13|inst9|inst~0_combout\);

-- Location: LCCOMB_X22_Y6_N14
\inst13|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst9|inst~feeder_combout\ = \inst13|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst~0_combout\,
	combout => \inst13|inst9|inst~feeder_combout\);

-- Location: FF_X22_Y6_N15
\inst13|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst2|ALT_INV_inst~q\,
	d => \inst13|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst9|inst~q\);

-- Location: LCCOMB_X21_Y6_N28
\inst13|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst~0_combout\ = !\inst13|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst7|inst~q\,
	combout => \inst13|inst7|inst~0_combout\);

-- Location: LCCOMB_X21_Y6_N2
\inst13|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst~feeder_combout\ = \inst13|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst7|inst~0_combout\,
	combout => \inst13|inst7|inst~feeder_combout\);

-- Location: FF_X21_Y6_N3
\inst13|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst~feeder_combout\,
	clrn => \inst13|inst7|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst~q\);

-- Location: LCCOMB_X21_Y6_N12
\inst13|inst7|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst7~0_combout\ = \inst13|inst7|inst~q\ $ (\inst13|inst7|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst7|inst~q\,
	datad => \inst13|inst7|inst7~q\,
	combout => \inst13|inst7|inst7~0_combout\);

-- Location: LCCOMB_X21_Y6_N22
\inst13|inst7|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst7~feeder_combout\ = \inst13|inst7|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst7~0_combout\,
	combout => \inst13|inst7|inst7~feeder_combout\);

-- Location: FF_X21_Y6_N23
\inst13|inst7|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst7~feeder_combout\,
	clrn => \inst13|inst7|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst7~q\);

-- Location: LCCOMB_X21_Y6_N4
\inst13|inst7|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst8~0_combout\ = \inst13|inst7|inst8~q\ $ (((\inst13|inst7|inst~q\ & \inst13|inst7|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst~q\,
	datac => \inst13|inst7|inst8~q\,
	datad => \inst13|inst7|inst7~q\,
	combout => \inst13|inst7|inst8~0_combout\);

-- Location: FF_X21_Y6_N5
\inst13|inst7|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst8~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst8~q\);

-- Location: LCCOMB_X21_Y6_N10
\inst13|inst7|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst10~0_combout\ = (\inst13|inst7|inst8~q\ & (\inst13|inst7|inst7~q\ & \inst13|inst7|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst8~q\,
	datac => \inst13|inst7|inst7~q\,
	datad => \inst13|inst7|inst~q\,
	combout => \inst13|inst7|inst10~0_combout\);

-- Location: LCCOMB_X21_Y6_N20
\inst13|inst7|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst9~0_combout\ = \inst13|inst7|inst9~q\ $ (((\inst13|inst7|inst~q\ & (\inst13|inst7|inst8~q\ & \inst13|inst7|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst~q\,
	datab => \inst13|inst7|inst8~q\,
	datac => \inst13|inst7|inst9~q\,
	datad => \inst13|inst7|inst7~q\,
	combout => \inst13|inst7|inst9~0_combout\);

-- Location: FF_X21_Y6_N21
\inst13|inst7|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst9~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst9~q\);

-- Location: LCCOMB_X21_Y6_N18
\inst13|inst7|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst14~0_combout\ = \inst13|inst7|inst14~q\ $ (((\inst13|inst7|inst10~0_combout\ & \inst13|inst7|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst10~0_combout\,
	datac => \inst13|inst7|inst14~q\,
	datad => \inst13|inst7|inst9~q\,
	combout => \inst13|inst7|inst14~0_combout\);

-- Location: FF_X21_Y6_N19
\inst13|inst7|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst14~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst14~q\);

-- Location: LCCOMB_X21_Y6_N26
\inst13|inst7|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst17~0_combout\ = \inst13|inst7|inst17~q\ $ (((\inst13|inst7|inst10~0_combout\ & (\inst13|inst7|inst9~q\ & \inst13|inst7|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst10~0_combout\,
	datab => \inst13|inst7|inst9~q\,
	datac => \inst13|inst7|inst17~q\,
	datad => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst17~0_combout\);

-- Location: FF_X21_Y6_N27
\inst13|inst7|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst17~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst17~q\);

-- Location: LCCOMB_X21_Y6_N16
\inst13|inst7|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst18~combout\ = (\inst13|inst7|inst17~q\ & (\inst13|inst7|inst9~q\ & (\inst13|inst7|inst10~0_combout\ & \inst13|inst7|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst17~q\,
	datab => \inst13|inst7|inst9~q\,
	datac => \inst13|inst7|inst10~0_combout\,
	datad => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst18~combout\);

-- Location: LCCOMB_X21_Y6_N24
\inst13|inst7|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst19~0_combout\ = (!\inst13|inst7|inst14~q\) # (!\inst13|inst7|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst9~q\,
	datad => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst19~0_combout\);

-- Location: LCCOMB_X21_Y6_N14
\inst13|inst7|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst19~1_combout\ = \inst13|inst7|inst19~q\ $ (((\inst13|inst7|inst17~q\ & (\inst13|inst7|inst10~0_combout\ & !\inst13|inst7|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst17~q\,
	datab => \inst13|inst7|inst10~0_combout\,
	datac => \inst13|inst7|inst19~q\,
	datad => \inst13|inst7|inst19~0_combout\,
	combout => \inst13|inst7|inst19~1_combout\);

-- Location: FF_X21_Y6_N15
\inst13|inst7|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst19~1_combout\,
	clrn => \inst13|inst7|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst19~q\);

-- Location: LCCOMB_X21_Y6_N8
\inst13|inst7|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst21~0_combout\ = \inst13|inst7|inst21~q\ $ (((\inst13|inst7|inst18~combout\ & \inst13|inst7|inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst18~combout\,
	datab => \inst13|inst7|inst19~q\,
	datac => \inst13|inst7|inst21~q\,
	combout => \inst13|inst7|inst21~0_combout\);

-- Location: FF_X21_Y6_N9
\inst13|inst7|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst21~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst21~q\);

-- Location: LCCOMB_X21_Y6_N30
\inst13|inst7|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst10~1_combout\ = (!\inst13|inst7|inst17~q\ & (!\inst13|inst7|inst14~q\ & (!\inst13|inst7|inst19~q\ & !\inst13|inst7|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst17~q\,
	datab => \inst13|inst7|inst14~q\,
	datac => \inst13|inst7|inst19~q\,
	datad => \inst13|inst7|inst9~q\,
	combout => \inst13|inst7|inst10~1_combout\);

-- Location: LCCOMB_X21_Y6_N6
\inst13|inst7|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst10~combout\ = LCELL((!\inst13|inst7|inst21~q\ & (\inst13|inst7|inst10~1_combout\ & \inst13|inst7|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst21~q\,
	datac => \inst13|inst7|inst10~1_combout\,
	datad => \inst13|inst7|inst10~0_combout\,
	combout => \inst13|inst7|inst10~combout\);

-- Location: LCCOMB_X21_Y6_N0
\inst13|inst7|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst4~0_combout\ = !\inst13|inst7|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst7|inst4~q\,
	combout => \inst13|inst7|inst4~0_combout\);

-- Location: FF_X21_Y6_N1
\inst13|inst7|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst7|inst10~combout\,
	d => \inst13|inst7|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst4~q\);

-- Location: LCCOMB_X18_Y12_N24
\inst46|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst~0_combout\ = !\inst46|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst~q\,
	combout => \inst46|inst~0_combout\);

-- Location: LCCOMB_X21_Y12_N14
\inst46|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst32~combout\ = LCELL((\inst46|inst~q\ & \FPGA_CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst~q\,
	datad => \FPGA_CLK~input_o\,
	combout => \inst46|inst32~combout\);

-- Location: LCCOMB_X21_Y12_N30
\inst46|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst|inst~0_combout\ = !\inst46|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst|inst~q\,
	combout => \inst46|inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X21_Y12_N15
\inst46|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst32~combout\,
	asdata => \inst46|inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X21_Y12_N16
\inst46|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst2|inst~0_combout\ = !\inst46|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst|inst2|inst~q\,
	combout => \inst46|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X21_Y12_N22
\inst46|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X21_Y12_N23
\inst46|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X22_Y12_N18
\inst46|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst3|inst~0_combout\ = !\inst46|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst|inst3|inst~q\,
	combout => \inst46|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X22_Y12_N20
\inst46|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X22_Y12_N21
\inst46|inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X22_Y12_N22
\inst46|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst4|inst~0_combout\ = !\inst46|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst|inst4|inst~q\,
	combout => \inst46|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst46|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X22_Y12_N29
\inst46|inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X30_Y12_N6
\inst46|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst5|inst~0_combout\ = !\inst46|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst5|inst~q\,
	combout => \inst46|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X30_Y12_N18
\inst46|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X30_Y12_N19
\inst46|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X30_Y12_N4
\inst46|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst6|inst~0_combout\ = !\inst46|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst6|inst~q\,
	combout => \inst46|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X30_Y12_N14
\inst46|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X30_Y12_N15
\inst46|inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X31_Y11_N28
\inst46|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst7|inst~0_combout\ = !\inst46|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst|inst7|inst~q\,
	combout => \inst46|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: FF_X31_Y11_N7
\inst46|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	asdata => \inst46|inst31|inst|inst|inst7|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X31_Y11_N30
\inst46|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst8|inst~0_combout\ = !\inst46|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst8|inst~q\,
	combout => \inst46|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X31_Y11_N14
\inst46|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X31_Y11_N15
\inst46|inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X30_Y11_N24
\inst46|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst1|inst|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X30_Y11_N28
\inst46|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X30_Y11_N29
\inst46|inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst|inst8|inst~q\,
	d => \inst46|inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X30_Y11_N26
\inst46|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X30_Y11_N30
\inst46|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X30_Y11_N31
\inst46|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X29_Y11_N18
\inst46|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: FF_X29_Y11_N9
\inst46|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	asdata => \inst46|inst31|inst|inst1|inst3|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X29_Y11_N28
\inst46|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X29_Y11_N22
\inst46|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X29_Y11_N23
\inst46|inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X28_Y11_N18
\inst46|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: FF_X28_Y11_N29
\inst46|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	asdata => \inst46|inst31|inst|inst1|inst5|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X28_Y11_N16
\inst46|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X28_Y11_N14
\inst46|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X28_Y11_N15
\inst46|inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X28_Y7_N18
\inst46|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X28_Y7_N14
\inst46|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X28_Y7_N15
\inst46|inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X28_Y7_N4
\inst46|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X28_Y7_N28
\inst46|inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X28_Y7_N29
\inst46|inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X24_Y7_N10
\inst46|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst2|inst~0_combout\ = !\inst46|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst2|inst~q\,
	combout => \inst46|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X24_Y7_N20
\inst46|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst2|inst~feeder_combout\ = \inst46|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst2|inst~0_combout\,
	combout => \inst46|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X24_Y7_N21
\inst46|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst46|inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst2|inst~q\);

-- Location: LCCOMB_X24_Y7_N4
\inst46|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst3|inst~0_combout\ = !\inst46|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst3|inst~q\,
	combout => \inst46|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X24_Y7_N14
\inst46|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst3|inst~feeder_combout\ = \inst46|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst3|inst~0_combout\,
	combout => \inst46|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X24_Y7_N15
\inst46|inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst2|ALT_INV_inst~q\,
	d => \inst46|inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst3|inst~q\);

-- Location: LCCOMB_X23_Y7_N18
\inst46|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst7|inst~0_combout\ = !\inst46|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst7|inst~q\,
	combout => \inst46|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X23_Y7_N14
\inst46|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst7|inst~feeder_combout\ = \inst46|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst7|inst~0_combout\,
	combout => \inst46|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X23_Y7_N15
\inst46|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst3|ALT_INV_inst~q\,
	d => \inst46|inst31|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst7|inst~q\);

-- Location: LCCOMB_X17_Y10_N18
\inst46|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst8|inst~0_combout\ = !\inst46|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst8|inst~q\,
	combout => \inst46|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\inst46|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst8|inst~feeder_combout\ = \inst46|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst8|inst~0_combout\,
	combout => \inst46|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X17_Y10_N15
\inst46|inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst7|ALT_INV_inst~q\,
	d => \inst46|inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst8|inst~q\);

-- Location: LCCOMB_X17_Y10_N4
\inst46|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst9|inst~0_combout\ = !\inst46|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst9|inst~q\,
	combout => \inst46|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\inst46|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst9|inst~feeder_combout\ = \inst46|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst9|inst~0_combout\,
	combout => \inst46|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X17_Y10_N17
\inst46|inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst8|ALT_INV_inst~q\,
	d => \inst46|inst31|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst9|inst~q\);

-- Location: LCCOMB_X16_Y10_N18
\inst46|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst10|inst~0_combout\ = !\inst46|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst10|inst~q\,
	combout => \inst46|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X16_Y10_N24
\inst46|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst10|inst~feeder_combout\ = \inst46|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst10|inst~0_combout\,
	combout => \inst46|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X16_Y10_N25
\inst46|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst9|ALT_INV_inst~q\,
	d => \inst46|inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst10|inst~q\);

-- Location: LCCOMB_X16_Y12_N6
\inst46|inst31|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst~0_combout\ = !\inst46|inst31|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst4|inst~q\,
	combout => \inst46|inst31|inst4|inst~0_combout\);

-- Location: LCCOMB_X16_Y12_N0
\inst46|inst31|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst~feeder_combout\ = \inst46|inst31|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst~0_combout\,
	combout => \inst46|inst31|inst4|inst~feeder_combout\);

-- Location: FF_X16_Y12_N1
\inst46|inst31|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst4|inst~feeder_combout\,
	clrn => \inst46|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst4|inst~q\);

-- Location: LCCOMB_X16_Y12_N2
\inst46|inst31|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst7~0_combout\ = \inst46|inst31|inst4|inst~q\ $ (\inst46|inst31|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst4|inst~q\,
	datac => \inst46|inst31|inst4|inst7~q\,
	combout => \inst46|inst31|inst4|inst7~0_combout\);

-- Location: LCCOMB_X16_Y12_N8
\inst46|inst31|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst7~feeder_combout\ = \inst46|inst31|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst4|inst7~0_combout\,
	combout => \inst46|inst31|inst4|inst7~feeder_combout\);

-- Location: FF_X16_Y12_N9
\inst46|inst31|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst4|inst7~feeder_combout\,
	clrn => \inst46|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst4|inst7~q\);

-- Location: LCCOMB_X16_Y12_N10
\inst46|inst31|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst8~0_combout\ = \inst46|inst31|inst4|inst8~q\ $ (((\inst46|inst31|inst4|inst7~q\ & \inst46|inst31|inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst7~q\,
	datab => \inst46|inst31|inst4|inst~q\,
	datac => \inst46|inst31|inst4|inst8~q\,
	combout => \inst46|inst31|inst4|inst8~0_combout\);

-- Location: FF_X16_Y12_N11
\inst46|inst31|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst4|inst8~0_combout\,
	clrn => \inst46|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst4|inst8~q\);

-- Location: LCCOMB_X16_Y12_N30
\inst46|inst31|inst4|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst5~0_combout\ = (\inst46|inst31|inst4|inst7~q\ & \inst46|inst31|inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst4|inst7~q\,
	datad => \inst46|inst31|inst4|inst~q\,
	combout => \inst46|inst31|inst4|inst5~0_combout\);

-- Location: LCCOMB_X16_Y12_N26
\inst46|inst31|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst9~0_combout\ = \inst46|inst31|inst4|inst9~q\ $ (((\inst46|inst31|inst4|inst8~q\ & (\inst46|inst31|inst4|inst~q\ & \inst46|inst31|inst4|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst8~q\,
	datab => \inst46|inst31|inst4|inst~q\,
	datac => \inst46|inst31|inst4|inst9~q\,
	datad => \inst46|inst31|inst4|inst7~q\,
	combout => \inst46|inst31|inst4|inst9~0_combout\);

-- Location: FF_X16_Y12_N27
\inst46|inst31|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst4|inst9~0_combout\,
	clrn => \inst46|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst4|inst9~q\);

-- Location: LCCOMB_X16_Y12_N24
\inst46|inst31|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst14~0_combout\ = \inst46|inst31|inst4|inst14~q\ $ (((\inst46|inst31|inst4|inst8~q\ & (\inst46|inst31|inst4|inst5~0_combout\ & \inst46|inst31|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst8~q\,
	datab => \inst46|inst31|inst4|inst5~0_combout\,
	datac => \inst46|inst31|inst4|inst14~q\,
	datad => \inst46|inst31|inst4|inst9~q\,
	combout => \inst46|inst31|inst4|inst14~0_combout\);

-- Location: FF_X16_Y12_N25
\inst46|inst31|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst4|inst14~0_combout\,
	clrn => \inst46|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst4|inst14~q\);

-- Location: LCCOMB_X16_Y12_N22
\inst46|inst31|inst4|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst16~combout\ = (\inst46|inst31|inst4|inst14~q\ & (\inst46|inst31|inst4|inst5~0_combout\ & (\inst46|inst31|inst4|inst8~q\ & \inst46|inst31|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst14~q\,
	datab => \inst46|inst31|inst4|inst5~0_combout\,
	datac => \inst46|inst31|inst4|inst8~q\,
	datad => \inst46|inst31|inst4|inst9~q\,
	combout => \inst46|inst31|inst4|inst16~combout\);

-- Location: LCCOMB_X16_Y12_N12
\inst46|inst31|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst17~0_combout\ = (!\inst46|inst31|inst4|inst14~q\) # (!\inst46|inst31|inst4|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst8~q\,
	datad => \inst46|inst31|inst4|inst14~q\,
	combout => \inst46|inst31|inst4|inst17~0_combout\);

-- Location: LCCOMB_X16_Y12_N16
\inst46|inst31|inst4|inst17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst17~1_combout\ = \inst46|inst31|inst4|inst17~q\ $ (((\inst46|inst31|inst4|inst9~q\ & (\inst46|inst31|inst4|inst5~0_combout\ & !\inst46|inst31|inst4|inst17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst9~q\,
	datab => \inst46|inst31|inst4|inst5~0_combout\,
	datac => \inst46|inst31|inst4|inst17~q\,
	datad => \inst46|inst31|inst4|inst17~0_combout\,
	combout => \inst46|inst31|inst4|inst17~1_combout\);

-- Location: FF_X16_Y12_N17
\inst46|inst31|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst4|inst17~1_combout\,
	clrn => \inst46|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst4|inst17~q\);

-- Location: LCCOMB_X16_Y12_N28
\inst46|inst31|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst19~0_combout\ = \inst46|inst31|inst4|inst19~q\ $ (((\inst46|inst31|inst4|inst16~combout\ & \inst46|inst31|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst16~combout\,
	datac => \inst46|inst31|inst4|inst19~q\,
	datad => \inst46|inst31|inst4|inst17~q\,
	combout => \inst46|inst31|inst4|inst19~0_combout\);

-- Location: FF_X16_Y12_N29
\inst46|inst31|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst4|inst19~0_combout\,
	clrn => \inst46|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst4|inst19~q\);

-- Location: LCCOMB_X16_Y12_N4
\inst46|inst31|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst21~0_combout\ = \inst46|inst31|inst4|inst21~q\ $ (((\inst46|inst31|inst4|inst16~combout\ & (\inst46|inst31|inst4|inst19~q\ & \inst46|inst31|inst4|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst16~combout\,
	datab => \inst46|inst31|inst4|inst19~q\,
	datac => \inst46|inst31|inst4|inst21~q\,
	datad => \inst46|inst31|inst4|inst17~q\,
	combout => \inst46|inst31|inst4|inst21~0_combout\);

-- Location: FF_X16_Y12_N5
\inst46|inst31|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst4|inst21~0_combout\,
	clrn => \inst46|inst31|inst4|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst4|inst21~q\);

-- Location: LCCOMB_X16_Y12_N14
\inst46|inst31|inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst10~0_combout\ = (!\inst46|inst31|inst4|inst19~q\ & (!\inst46|inst31|inst4|inst17~q\ & (!\inst46|inst31|inst4|inst9~q\ & !\inst46|inst31|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst19~q\,
	datab => \inst46|inst31|inst4|inst17~q\,
	datac => \inst46|inst31|inst4|inst9~q\,
	datad => \inst46|inst31|inst4|inst14~q\,
	combout => \inst46|inst31|inst4|inst10~0_combout\);

-- Location: LCCOMB_X16_Y12_N18
\inst46|inst31|inst4|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst10~combout\ = LCELL((!\inst46|inst31|inst4|inst8~q\ & (!\inst46|inst31|inst4|inst21~q\ & (\inst46|inst31|inst4|inst10~0_combout\ & \inst46|inst31|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst4|inst8~q\,
	datab => \inst46|inst31|inst4|inst21~q\,
	datac => \inst46|inst31|inst4|inst10~0_combout\,
	datad => \inst46|inst31|inst4|inst5~0_combout\,
	combout => \inst46|inst31|inst4|inst10~combout\);

-- Location: LCCOMB_X16_Y12_N20
\inst46|inst31|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst4|inst4~0_combout\ = !\inst46|inst31|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst4|inst4~q\,
	combout => \inst46|inst31|inst4|inst4~0_combout\);

-- Location: FF_X16_Y12_N7
\inst46|inst31|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst4|inst10~combout\,
	asdata => \inst46|inst31|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst4|inst4~q\);

-- Location: LCCOMB_X17_Y12_N10
\inst46|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst17|inst~0_combout\ = !\inst46|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst17|inst~q\,
	combout => \inst46|inst17|inst~0_combout\);

-- Location: LCCOMB_X17_Y12_N26
\inst46|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst17|inst~feeder_combout\ = \inst46|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst46|inst17|inst~0_combout\,
	combout => \inst46|inst17|inst~feeder_combout\);

-- Location: FF_X17_Y12_N27
\inst46|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst4|inst4~q\,
	d => \inst46|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst17|inst~q\);

-- Location: LCCOMB_X17_Y12_N24
\inst46|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst46|inst3|inst~feeder_combout\);

-- Location: FF_X17_Y12_N25
\inst46|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst17|ALT_INV_inst~q\,
	d => \inst46|inst3|inst~feeder_combout\,
	clrn => \inst46|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst3|inst~q\);

-- Location: FF_X18_Y12_N25
\inst46|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst2~q\,
	d => \inst46|inst~0_combout\,
	clrn => \inst46|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst~q\);

-- Location: LCCOMB_X24_Y11_N10
\inst5|inst36|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst36|inst4~combout\ = ((\inst5|inst17|inst~q\) # ((\inst5|inst9|inst~q\) # (\inst5|inst8|inst~q\))) # (!\inst5|inst36|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst36|inst4~0_combout\,
	datab => \inst5|inst17|inst~q\,
	datac => \inst5|inst9|inst~q\,
	datad => \inst5|inst8|inst~q\,
	combout => \inst5|inst36|inst4~combout\);

-- Location: LCCOMB_X19_Y14_N18
\inst5|inst33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst33~1_combout\ = (!\inst5|inst36|inst4~combout\ & ((\inst5|inst19|inst~q\) # (\inst5|inst33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst36|inst4~combout\,
	datac => \inst5|inst19|inst~q\,
	datad => \inst5|inst33~1_combout\,
	combout => \inst5|inst33~1_combout\);

-- Location: LCCOMB_X19_Y14_N16
\inst5|inst33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst33~2_combout\ = (!\inst5|inst36|inst4~combout\ & ((\inst5|inst19|inst~q\) # (\inst5|inst33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst36|inst4~combout\,
	datac => \inst5|inst19|inst~q\,
	datad => \inst5|inst33~1_combout\,
	combout => \inst5|inst33~2_combout\);

-- Location: LCCOMB_X21_Y14_N22
\inst20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20~5_combout\ = (\inst13|inst7|inst4~q\ & (\inst46|inst~q\ & (\inst5|inst33~2_combout\ & !\inst90|inst|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst4~q\,
	datab => \inst46|inst~q\,
	datac => \inst5|inst33~2_combout\,
	datad => \inst90|inst|inst4~q\,
	combout => \inst20~5_combout\);

-- Location: LCCOMB_X13_Y15_N18
inst14 : cycloneive_lcell_comb
-- Equation(s):
-- \inst14~combout\ = LCELL((\FPGA_CLK~input_o\ & \inst90|inst|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_CLK~input_o\,
	datad => \inst90|inst|inst4~q\,
	combout => \inst14~combout\);

-- Location: LCCOMB_X13_Y15_N22
\inst10|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst|inst~0_combout\ = !\inst10|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst|inst|inst~q\,
	combout => \inst10|inst|inst|inst~0_combout\);

-- Location: FF_X13_Y15_N19
\inst10|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14~combout\,
	asdata => \inst10|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst|inst~q\);

-- Location: LCCOMB_X12_Y15_N18
\inst10|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst2|inst~0_combout\ = !\inst10|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst|inst2|inst~q\,
	combout => \inst10|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X12_Y15_N20
\inst10|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst2|inst~feeder_combout\ = \inst10|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|inst2|inst~0_combout\,
	combout => \inst10|inst|inst2|inst~feeder_combout\);

-- Location: FF_X12_Y15_N21
\inst10|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst|inst|ALT_INV_inst~q\,
	d => \inst10|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst2|inst~q\);

-- Location: LCCOMB_X12_Y15_N22
\inst10|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst3|inst~0_combout\ = !\inst10|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst|inst3|inst~q\,
	combout => \inst10|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X12_Y15_N28
\inst10|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst3|inst~feeder_combout\ = \inst10|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst|inst3|inst~0_combout\,
	combout => \inst10|inst|inst3|inst~feeder_combout\);

-- Location: FF_X12_Y15_N29
\inst10|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst|inst2|ALT_INV_inst~q\,
	d => \inst10|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst3|inst~q\);

-- Location: LCCOMB_X11_Y15_N18
\inst10|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst4|inst~0_combout\ = !\inst10|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|inst4|inst~q\,
	combout => \inst10|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X11_Y15_N28
\inst10|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst4|inst~feeder_combout\ = \inst10|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|inst4|inst~0_combout\,
	combout => \inst10|inst|inst4|inst~feeder_combout\);

-- Location: FF_X11_Y15_N29
\inst10|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst|inst3|ALT_INV_inst~q\,
	d => \inst10|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst4|inst~q\);

-- Location: LCCOMB_X11_Y15_N4
\inst10|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst5|inst~0_combout\ = !\inst10|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|inst5|inst~q\,
	combout => \inst10|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X11_Y15_N14
\inst10|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst5|inst~feeder_combout\ = \inst10|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst|inst5|inst~0_combout\,
	combout => \inst10|inst|inst5|inst~feeder_combout\);

-- Location: FF_X11_Y15_N15
\inst10|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst|inst4|ALT_INV_inst~q\,
	d => \inst10|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst5|inst~q\);

-- Location: LCCOMB_X10_Y15_N14
\inst10|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst6|inst~0_combout\ = !\inst10|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|inst6|inst~q\,
	combout => \inst10|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X10_Y15_N24
\inst10|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst6|inst~feeder_combout\ = \inst10|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst|inst6|inst~0_combout\,
	combout => \inst10|inst|inst6|inst~feeder_combout\);

-- Location: FF_X10_Y15_N25
\inst10|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst|inst5|ALT_INV_inst~q\,
	d => \inst10|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst6|inst~q\);

-- Location: LCCOMB_X10_Y15_N16
\inst10|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst7|inst~0_combout\ = !\inst10|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|inst7|inst~q\,
	combout => \inst10|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X10_Y15_N0
\inst10|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst7|inst~feeder_combout\ = \inst10|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|inst7|inst~0_combout\,
	combout => \inst10|inst|inst7|inst~feeder_combout\);

-- Location: FF_X10_Y15_N1
\inst10|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst|inst6|ALT_INV_inst~q\,
	d => \inst10|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst7|inst~q\);

-- Location: LCCOMB_X10_Y16_N30
\inst10|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst8|inst~0_combout\ = !\inst10|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst|inst8|inst~q\,
	combout => \inst10|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X10_Y16_N12
\inst10|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|inst8|inst~feeder_combout\ = \inst10|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst|inst8|inst~0_combout\,
	combout => \inst10|inst|inst8|inst~feeder_combout\);

-- Location: FF_X10_Y16_N13
\inst10|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst|inst7|ALT_INV_inst~q\,
	d => \inst10|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst|inst8|inst~q\);

-- Location: LCCOMB_X10_Y16_N28
\inst10|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst3|inst~0_combout\ = !\inst10|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst3|inst~q\,
	combout => \inst10|inst3|inst~0_combout\);

-- Location: LCCOMB_X10_Y16_N6
\inst10|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst3|inst~feeder_combout\ = \inst10|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst3|inst~0_combout\,
	combout => \inst10|inst3|inst~feeder_combout\);

-- Location: FF_X10_Y16_N7
\inst10|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst|inst8|inst~q\,
	d => \inst10|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst3|inst~q\);

-- Location: LCCOMB_X11_Y16_N18
\inst10|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst4|inst~0_combout\ = !\inst10|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst4|inst~q\,
	combout => \inst10|inst4|inst~0_combout\);

-- Location: LCCOMB_X11_Y16_N16
\inst10|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst4|inst~feeder_combout\ = \inst10|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst4|inst~0_combout\,
	combout => \inst10|inst4|inst~feeder_combout\);

-- Location: FF_X11_Y16_N17
\inst10|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst3|ALT_INV_inst~q\,
	d => \inst10|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst4|inst~q\);

-- Location: LCCOMB_X12_Y16_N10
\inst10|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst8|inst~0_combout\ = !\inst10|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst8|inst~q\,
	combout => \inst10|inst8|inst~0_combout\);

-- Location: FF_X12_Y16_N15
\inst10|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst4|ALT_INV_inst~q\,
	asdata => \inst10|inst8|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst8|inst~q\);

-- Location: LCCOMB_X12_Y16_N2
\inst10|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst~0_combout\ = !\inst10|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst~q\,
	combout => \inst10|inst2|inst~0_combout\);

-- Location: LCCOMB_X12_Y16_N8
\inst10|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst~feeder_combout\ = \inst10|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst2|inst~0_combout\,
	combout => \inst10|inst2|inst~feeder_combout\);

-- Location: FF_X12_Y16_N9
\inst10|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst8|inst~q\,
	d => \inst10|inst2|inst~feeder_combout\,
	clrn => \inst10|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|inst~q\);

-- Location: LCCOMB_X12_Y16_N0
\inst10|inst2|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst7~0_combout\ = \inst10|inst2|inst~q\ $ (\inst10|inst2|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst~q\,
	datad => \inst10|inst2|inst7~q\,
	combout => \inst10|inst2|inst7~0_combout\);

-- Location: LCCOMB_X12_Y16_N16
\inst10|inst2|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst7~feeder_combout\ = \inst10|inst2|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst7~0_combout\,
	combout => \inst10|inst2|inst7~feeder_combout\);

-- Location: FF_X12_Y16_N17
\inst10|inst2|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst8|inst~q\,
	d => \inst10|inst2|inst7~feeder_combout\,
	clrn => \inst10|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|inst7~q\);

-- Location: LCCOMB_X12_Y16_N30
\inst10|inst2|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst8~0_combout\ = \inst10|inst2|inst8~q\ $ (((\inst10|inst2|inst~q\ & \inst10|inst2|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst2|inst~q\,
	datac => \inst10|inst2|inst8~q\,
	datad => \inst10|inst2|inst7~q\,
	combout => \inst10|inst2|inst8~0_combout\);

-- Location: FF_X12_Y16_N31
\inst10|inst2|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst8|inst~q\,
	d => \inst10|inst2|inst8~0_combout\,
	clrn => \inst10|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|inst8~q\);

-- Location: LCCOMB_X12_Y16_N26
\inst10|inst2|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst10~0_combout\ = (\inst10|inst2|inst8~q\ & (\inst10|inst2|inst~q\ & \inst10|inst2|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst8~q\,
	datac => \inst10|inst2|inst~q\,
	datad => \inst10|inst2|inst7~q\,
	combout => \inst10|inst2|inst10~0_combout\);

-- Location: LCCOMB_X12_Y16_N18
\inst10|inst2|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst9~0_combout\ = \inst10|inst2|inst9~q\ $ (((\inst10|inst2|inst8~q\ & (\inst10|inst2|inst~q\ & \inst10|inst2|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst8~q\,
	datab => \inst10|inst2|inst~q\,
	datac => \inst10|inst2|inst9~q\,
	datad => \inst10|inst2|inst7~q\,
	combout => \inst10|inst2|inst9~0_combout\);

-- Location: FF_X12_Y16_N19
\inst10|inst2|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst8|inst~q\,
	d => \inst10|inst2|inst9~0_combout\,
	clrn => \inst10|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|inst9~q\);

-- Location: LCCOMB_X12_Y16_N12
\inst10|inst2|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst14~0_combout\ = \inst10|inst2|inst14~q\ $ (((\inst10|inst2|inst10~0_combout\ & \inst10|inst2|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst10~0_combout\,
	datac => \inst10|inst2|inst14~q\,
	datad => \inst10|inst2|inst9~q\,
	combout => \inst10|inst2|inst14~0_combout\);

-- Location: FF_X12_Y16_N13
\inst10|inst2|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst8|inst~q\,
	d => \inst10|inst2|inst14~0_combout\,
	clrn => \inst10|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|inst14~q\);

-- Location: LCCOMB_X12_Y16_N4
\inst10|inst2|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst17~0_combout\ = \inst10|inst2|inst17~q\ $ (((\inst10|inst2|inst9~q\ & (\inst10|inst2|inst14~q\ & \inst10|inst2|inst10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst9~q\,
	datab => \inst10|inst2|inst14~q\,
	datac => \inst10|inst2|inst17~q\,
	datad => \inst10|inst2|inst10~0_combout\,
	combout => \inst10|inst2|inst17~0_combout\);

-- Location: FF_X12_Y16_N5
\inst10|inst2|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst8|inst~q\,
	d => \inst10|inst2|inst17~0_combout\,
	clrn => \inst10|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|inst17~q\);

-- Location: LCCOMB_X12_Y16_N24
\inst10|inst2|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst18~combout\ = (\inst10|inst2|inst9~q\ & (\inst10|inst2|inst10~0_combout\ & (\inst10|inst2|inst17~q\ & \inst10|inst2|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst9~q\,
	datab => \inst10|inst2|inst10~0_combout\,
	datac => \inst10|inst2|inst17~q\,
	datad => \inst10|inst2|inst14~q\,
	combout => \inst10|inst2|inst18~combout\);

-- Location: LCCOMB_X12_Y16_N22
\inst10|inst2|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst19~0_combout\ = \inst10|inst2|inst18~combout\ $ (\inst10|inst2|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst18~combout\,
	datac => \inst10|inst2|inst19~q\,
	combout => \inst10|inst2|inst19~0_combout\);

-- Location: FF_X12_Y16_N23
\inst10|inst2|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst8|inst~q\,
	d => \inst10|inst2|inst19~0_combout\,
	clrn => \inst10|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|inst19~q\);

-- Location: LCCOMB_X12_Y16_N14
\inst10|inst2|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst21~0_combout\ = ((!\inst10|inst2|inst19~q\) # (!\inst10|inst2|inst17~q\)) # (!\inst10|inst2|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst14~q\,
	datab => \inst10|inst2|inst17~q\,
	datad => \inst10|inst2|inst19~q\,
	combout => \inst10|inst2|inst21~0_combout\);

-- Location: LCCOMB_X12_Y16_N28
\inst10|inst2|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst21~1_combout\ = \inst10|inst2|inst21~q\ $ (((\inst10|inst2|inst10~0_combout\ & (\inst10|inst2|inst9~q\ & !\inst10|inst2|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst10~0_combout\,
	datab => \inst10|inst2|inst9~q\,
	datac => \inst10|inst2|inst21~q\,
	datad => \inst10|inst2|inst21~0_combout\,
	combout => \inst10|inst2|inst21~1_combout\);

-- Location: FF_X12_Y16_N29
\inst10|inst2|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst8|inst~q\,
	d => \inst10|inst2|inst21~1_combout\,
	clrn => \inst10|inst2|ALT_INV_inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|inst21~q\);

-- Location: LCCOMB_X12_Y16_N6
\inst10|inst2|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst10~1_combout\ = (!\inst10|inst2|inst19~q\ & (!\inst10|inst2|inst9~q\ & (!\inst10|inst2|inst17~q\ & !\inst10|inst2|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|inst19~q\,
	datab => \inst10|inst2|inst9~q\,
	datac => \inst10|inst2|inst17~q\,
	datad => \inst10|inst2|inst14~q\,
	combout => \inst10|inst2|inst10~1_combout\);

-- Location: LCCOMB_X12_Y16_N20
\inst10|inst2|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst10~combout\ = LCELL((!\inst10|inst2|inst21~q\ & (\inst10|inst2|inst10~0_combout\ & \inst10|inst2|inst10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst2|inst21~q\,
	datac => \inst10|inst2|inst10~0_combout\,
	datad => \inst10|inst2|inst10~1_combout\,
	combout => \inst10|inst2|inst10~combout\);

-- Location: LCCOMB_X13_Y16_N16
\inst10|inst2|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst2|inst4~0_combout\ = !\inst10|inst2|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst2|inst4~q\,
	combout => \inst10|inst2|inst4~0_combout\);

-- Location: FF_X13_Y16_N17
\inst10|inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst2|inst10~combout\,
	d => \inst10|inst2|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|inst4~q\);

-- Location: LCCOMB_X21_Y14_N14
inst19 : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~combout\ = (\inst19~0_combout\) # ((\inst20~4_combout\) # ((\inst20~5_combout\) # (\inst10|inst2|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~0_combout\,
	datab => \inst20~4_combout\,
	datac => \inst20~5_combout\,
	datad => \inst10|inst2|inst4~q\,
	combout => \inst19~combout\);

ww_beep <= \beep~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;
END structure;


