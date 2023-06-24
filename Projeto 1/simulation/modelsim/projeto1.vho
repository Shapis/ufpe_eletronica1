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

-- DATE "06/24/2023 17:46:20"

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
	KEY1 : IN std_logic;
	FPGA_CLK : IN std_logic;
	KEY3 : IN std_logic;
	KEY4 : IN std_logic;
	KEY2 : IN std_logic;
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
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_FPGA_CLK : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_KEY4 : std_logic;
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_LED : std_logic_vector(4 DOWNTO 1);
SIGNAL \FPGA_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \FPGA_CLK~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \inst13|inst9|inst~q\ : std_logic;
SIGNAL \inst13|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst13|inst7|inst~q\ : std_logic;
SIGNAL \inst13|inst7|inst7~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst7~feeder_combout\ : std_logic;
SIGNAL \inst13|inst7|inst7~q\ : std_logic;
SIGNAL \inst13|inst7|inst8~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst8~q\ : std_logic;
SIGNAL \inst13|inst7|inst9~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst9~q\ : std_logic;
SIGNAL \inst13|inst7|inst29~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst14~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst14~q\ : std_logic;
SIGNAL \inst13|inst7|inst17~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst17~q\ : std_logic;
SIGNAL \inst13|inst7|inst19~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst19~1_combout\ : std_logic;
SIGNAL \inst13|inst7|inst19~q\ : std_logic;
SIGNAL \inst13|inst7|inst18~combout\ : std_logic;
SIGNAL \inst13|inst7|inst21~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst21~q\ : std_logic;
SIGNAL \inst13|inst7|inst29~1_combout\ : std_logic;
SIGNAL \inst13|inst7|inst29~combout\ : std_logic;
SIGNAL \inst13|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst4~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst21~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst29~combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst8|inst1|inst25|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst25|inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst26|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst26|inst~q\ : std_logic;
SIGNAL \KEY4~input_o\ : std_logic;
SIGNAL \inst8|inst1|dasda~0_combout\ : std_logic;
SIGNAL \inst8|inst1|dasda~q\ : std_logic;
SIGNAL \inst8|inst1|inst29~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst29~q\ : std_logic;
SIGNAL \inst8|inst1|inst30~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst30~q\ : std_logic;
SIGNAL \inst8|inst1|inst31~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst31~q\ : std_logic;
SIGNAL \inst8|inst1|inst32~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst32~q\ : std_logic;
SIGNAL \inst8|inst1|inst33~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst33~q\ : std_logic;
SIGNAL \inst8|inst1|inst23~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|inst23~q\ : std_logic;
SIGNAL \inst8|inst1|1231~feeder_combout\ : std_logic;
SIGNAL \inst8|inst1|1231~q\ : std_logic;
SIGNAL \inst8|inst1|inst36~1_combout\ : std_logic;
SIGNAL \inst8|inst1|inst36~0_combout\ : std_logic;
SIGNAL \inst8|inst1|inst36~combout\ : std_logic;
SIGNAL \inst8|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst10|inst~q\ : std_logic;
SIGNAL \inst8|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst32~combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst7~feeder_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst7~q\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst8~q\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst9~q\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst14~q\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst17~1_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst16~combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst21~q\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst29~combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|inst4~q\ : std_logic;
SIGNAL \inst8|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst17|inst~q\ : std_logic;
SIGNAL \inst8|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst8|inst3|inst~q\ : std_logic;
SIGNAL \inst8|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst29~combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst4~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst6|inst1|inst25|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst25|inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst26|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst26|inst~q\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \inst6|inst1|dasda~0_combout\ : std_logic;
SIGNAL \inst6|inst1|dasda~q\ : std_logic;
SIGNAL \inst6|inst1|inst29~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst29~q\ : std_logic;
SIGNAL \inst6|inst1|inst30~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst30~q\ : std_logic;
SIGNAL \inst6|inst1|inst31~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst31~q\ : std_logic;
SIGNAL \inst6|inst1|inst32~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst32~q\ : std_logic;
SIGNAL \inst6|inst1|inst33~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst33~q\ : std_logic;
SIGNAL \inst6|inst1|inst23~feeder_combout\ : std_logic;
SIGNAL \inst6|inst1|inst23~q\ : std_logic;
SIGNAL \inst6|inst1|1231~q\ : std_logic;
SIGNAL \inst6|inst1|inst36~1_combout\ : std_logic;
SIGNAL \inst6|inst1|inst36~0_combout\ : std_logic;
SIGNAL \inst6|inst1|inst36~combout\ : std_logic;
SIGNAL \inst6|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst10|inst~q\ : std_logic;
SIGNAL \inst6|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst32~combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst7~feeder_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst7~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst8~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst9~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst14~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst17~1_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst16~combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst21~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst29~combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst6|inst31|inst13|inst4~q\ : std_logic;
SIGNAL \inst6|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst17|inst~q\ : std_logic;
SIGNAL \inst6|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst6|inst3|inst~q\ : std_logic;
SIGNAL \inst6|inst~q\ : std_logic;
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
SIGNAL \inst11|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst9|inst~q\ : std_logic;
SIGNAL \inst11|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst~q\ : std_logic;
SIGNAL \inst11|inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst7~feeder_combout\ : std_logic;
SIGNAL \inst11|inst1|inst7~q\ : std_logic;
SIGNAL \inst11|inst1|inst8~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst8~q\ : std_logic;
SIGNAL \inst11|inst1|inst9~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst9~q\ : std_logic;
SIGNAL \inst11|inst1|inst29~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst14~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst14~q\ : std_logic;
SIGNAL \inst11|inst1|inst17~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst17~q\ : std_logic;
SIGNAL \inst11|inst1|inst19~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst19~1_combout\ : std_logic;
SIGNAL \inst11|inst1|inst19~q\ : std_logic;
SIGNAL \inst11|inst1|inst18~combout\ : std_logic;
SIGNAL \inst11|inst1|inst21~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst21~q\ : std_logic;
SIGNAL \inst11|inst1|inst29~1_combout\ : std_logic;
SIGNAL \inst11|inst1|inst29~combout\ : std_logic;
SIGNAL \inst11|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst11|inst1|inst4~q\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst29~combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst4~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst|inst1|inst25|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst25|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst26|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst26|inst~q\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \inst|inst1|dasda~0_combout\ : std_logic;
SIGNAL \inst|inst1|dasda~q\ : std_logic;
SIGNAL \inst|inst1|inst29~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst29~q\ : std_logic;
SIGNAL \inst|inst1|inst30~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst30~q\ : std_logic;
SIGNAL \inst|inst1|inst31~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst31~q\ : std_logic;
SIGNAL \inst|inst1|inst32~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst32~q\ : std_logic;
SIGNAL \inst|inst1|inst33~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst33~q\ : std_logic;
SIGNAL \inst|inst1|inst23~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst23~q\ : std_logic;
SIGNAL \inst|inst1|1231~q\ : std_logic;
SIGNAL \inst|inst1|inst36~1_combout\ : std_logic;
SIGNAL \inst|inst1|inst36~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst36~combout\ : std_logic;
SIGNAL \inst|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst|inst10|inst~q\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst32~combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst|inst31|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst7~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst8~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst9~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst14~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst16~combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst21~1_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst21~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst29~combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst4~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst4~q\ : std_logic;
SIGNAL \inst|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst17|inst~q\ : std_logic;
SIGNAL \inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst19~1_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst29~combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst7|inst1|inst25|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst25|inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst26|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst26|inst~q\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \inst7|inst1|dasda~0_combout\ : std_logic;
SIGNAL \inst7|inst1|dasda~q\ : std_logic;
SIGNAL \inst7|inst1|inst29~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst29~q\ : std_logic;
SIGNAL \inst7|inst1|inst30~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst30~q\ : std_logic;
SIGNAL \inst7|inst1|inst31~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst31~q\ : std_logic;
SIGNAL \inst7|inst1|inst36~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst32~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst32~q\ : std_logic;
SIGNAL \inst7|inst1|inst33~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst33~q\ : std_logic;
SIGNAL \inst7|inst1|inst23~feeder_combout\ : std_logic;
SIGNAL \inst7|inst1|inst23~q\ : std_logic;
SIGNAL \inst7|inst1|1231~q\ : std_logic;
SIGNAL \inst7|inst1|inst36~1_combout\ : std_logic;
SIGNAL \inst7|inst1|inst36~combout\ : std_logic;
SIGNAL \inst7|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst10|inst~q\ : std_logic;
SIGNAL \inst7|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst32~combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst7~feeder_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst7~q\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst8~q\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst9~q\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst14~q\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst17~1_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst16~combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst21~q\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst29~combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|inst4~q\ : std_logic;
SIGNAL \inst7|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst17|inst~q\ : std_logic;
SIGNAL \inst7|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst3|inst~q\ : std_logic;
SIGNAL \inst7|inst~q\ : std_logic;
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
SIGNAL \inst3|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst4|inst~q\ : std_logic;
SIGNAL \inst3|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst3|inst4|inst7~q\ : std_logic;
SIGNAL \inst3|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst8~q\ : std_logic;
SIGNAL \inst3|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst9~q\ : std_logic;
SIGNAL \inst3|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst14~q\ : std_logic;
SIGNAL \inst3|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst17~q\ : std_logic;
SIGNAL \inst3|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst19~q\ : std_logic;
SIGNAL \inst3|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst21~1_combout\ : std_logic;
SIGNAL \inst3|inst4|inst21~q\ : std_logic;
SIGNAL \inst3|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst3|inst4|inst29~combout\ : std_logic;
SIGNAL \inst3|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst4|inst4~q\ : std_logic;
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
SIGNAL \inst12|inst|inst7|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst12|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst7|inst~q\ : std_logic;
SIGNAL \inst12|inst7|inst7~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst7~q\ : std_logic;
SIGNAL \inst12|inst7|inst8~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst8~q\ : std_logic;
SIGNAL \inst12|inst7|inst9~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst9~q\ : std_logic;
SIGNAL \inst12|inst7|inst13~combout\ : std_logic;
SIGNAL \inst12|inst7|inst14~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst14~q\ : std_logic;
SIGNAL \inst12|inst7|inst17~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst17~q\ : std_logic;
SIGNAL \inst12|inst7|inst19~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst19~q\ : std_logic;
SIGNAL \inst12|inst7|inst21~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst21~1_combout\ : std_logic;
SIGNAL \inst12|inst7|inst21~q\ : std_logic;
SIGNAL \inst12|inst7|inst29~1_combout\ : std_logic;
SIGNAL \inst12|inst7|inst29~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst29~combout\ : std_logic;
SIGNAL \inst12|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst4~q\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst11|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst8|inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst7|inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst|inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst|inst1|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst1|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst1|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst1|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst7|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst11|inst1|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst6|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst12|inst7|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst7|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst10|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst6|inst10|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst7|inst10|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst8|inst10|ALT_INV_inst~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

beep <= ww_beep;
ww_KEY1 <= KEY1;
ww_FPGA_CLK <= FPGA_CLK;
ww_KEY3 <= KEY3;
ww_KEY4 <= KEY4;
ww_KEY2 <= KEY2;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FPGA_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FPGA_CLK~input_o\);
\inst6|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst|inst|inst~q\;
\inst8|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst|inst|inst~q\;
\inst7|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst|inst|inst~q\;
\inst|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst|inst~q\;
\inst6|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst|inst2|inst~q\;
\inst8|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst|inst2|inst~q\;
\inst7|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst|inst2|inst~q\;
\inst|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst2|inst~q\;
\inst6|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst|inst3|inst~q\;
\inst8|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst|inst3|inst~q\;
\inst7|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst|inst3|inst~q\;
\inst|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst3|inst~q\;
\inst6|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst|inst4|inst~q\;
\inst8|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst|inst4|inst~q\;
\inst7|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst|inst4|inst~q\;
\inst|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst4|inst~q\;
\inst6|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst|inst5|inst~q\;
\inst8|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst|inst5|inst~q\;
\inst7|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst|inst5|inst~q\;
\inst|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst5|inst~q\;
\inst6|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst|inst6|inst~q\;
\inst8|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst|inst6|inst~q\;
\inst7|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst|inst6|inst~q\;
\inst|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst6|inst~q\;
\inst6|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst|inst7|inst~q\;
\inst8|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst|inst7|inst~q\;
\inst7|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst|inst7|inst~q\;
\inst|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst7|inst~q\;
\inst|inst1|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst|inst~q\;
\inst6|inst1|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst|inst|inst~q\;
\inst7|inst1|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst|inst|inst~q\;
\inst8|inst1|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst|inst|inst~q\;
\inst|inst1|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst2|inst~q\;
\inst6|inst1|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst|inst2|inst~q\;
\inst7|inst1|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst|inst2|inst~q\;
\inst8|inst1|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst|inst2|inst~q\;
\inst6|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst1|inst|inst~q\;
\inst8|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst1|inst|inst~q\;
\inst7|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst1|inst|inst~q\;
\inst|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst|inst~q\;
\inst|inst1|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst3|inst~q\;
\inst6|inst1|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst|inst3|inst~q\;
\inst7|inst1|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst|inst3|inst~q\;
\inst8|inst1|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst|inst3|inst~q\;
\inst6|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst1|inst2|inst~q\;
\inst8|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst1|inst2|inst~q\;
\inst7|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst1|inst2|inst~q\;
\inst|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst2|inst~q\;
\inst|inst1|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst4|inst~q\;
\inst6|inst1|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst|inst4|inst~q\;
\inst7|inst1|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst|inst4|inst~q\;
\inst8|inst1|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst|inst4|inst~q\;
\inst6|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst1|inst3|inst~q\;
\inst8|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst1|inst3|inst~q\;
\inst7|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst1|inst3|inst~q\;
\inst|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst3|inst~q\;
\inst|inst1|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst5|inst~q\;
\inst6|inst1|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst|inst5|inst~q\;
\inst7|inst1|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst|inst5|inst~q\;
\inst8|inst1|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst|inst5|inst~q\;
\inst6|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst1|inst4|inst~q\;
\inst8|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst1|inst4|inst~q\;
\inst7|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst1|inst4|inst~q\;
\inst|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst4|inst~q\;
\inst|inst1|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst6|inst~q\;
\inst6|inst1|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst|inst6|inst~q\;
\inst7|inst1|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst|inst6|inst~q\;
\inst8|inst1|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst|inst6|inst~q\;
\inst6|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst1|inst5|inst~q\;
\inst8|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst1|inst5|inst~q\;
\inst7|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst1|inst5|inst~q\;
\inst|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst5|inst~q\;
\inst|inst1|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst7|inst~q\;
\inst6|inst1|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst|inst7|inst~q\;
\inst7|inst1|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst|inst7|inst~q\;
\inst8|inst1|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst|inst7|inst~q\;
\inst13|inst|inst|ALT_INV_inst~q\ <= NOT \inst13|inst|inst|inst~q\;
\inst6|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst1|inst6|inst~q\;
\inst8|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst1|inst6|inst~q\;
\inst7|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst1|inst6|inst~q\;
\inst|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst6|inst~q\;
\inst13|inst|inst2|ALT_INV_inst~q\ <= NOT \inst13|inst|inst2|inst~q\;
\inst6|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst1|inst7|inst~q\;
\inst8|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst1|inst7|inst~q\;
\inst7|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst1|inst7|inst~q\;
\inst|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst7|inst~q\;
\inst|inst1|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst2|inst~q\;
\inst6|inst1|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst2|inst~q\;
\inst7|inst1|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst2|inst~q\;
\inst8|inst1|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst2|inst~q\;
\inst13|inst|inst3|ALT_INV_inst~q\ <= NOT \inst13|inst|inst3|inst~q\;
\inst11|inst|inst|ALT_INV_inst~q\ <= NOT \inst11|inst|inst|inst~q\;
\inst6|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst|inst1|inst8|inst~q\;
\inst8|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst|inst1|inst8|inst~q\;
\inst3|inst|inst|ALT_INV_inst~q\ <= NOT \inst3|inst|inst|inst~q\;
\inst12|inst|inst|ALT_INV_inst~q\ <= NOT \inst12|inst|inst|inst~q\;
\inst7|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst|inst1|inst8|inst~q\;
\inst|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst8|inst~q\;
\inst|inst1|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst3|inst~q\;
\inst6|inst1|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst3|inst~q\;
\inst7|inst1|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst3|inst~q\;
\inst8|inst1|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst3|inst~q\;
\inst13|inst|inst4|ALT_INV_inst~q\ <= NOT \inst13|inst|inst4|inst~q\;
\inst11|inst|inst2|ALT_INV_inst~q\ <= NOT \inst11|inst|inst2|inst~q\;
\inst6|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst2|inst~q\;
\inst8|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst2|inst~q\;
\inst3|inst|inst2|ALT_INV_inst~q\ <= NOT \inst3|inst|inst2|inst~q\;
\inst12|inst|inst2|ALT_INV_inst~q\ <= NOT \inst12|inst|inst2|inst~q\;
\inst7|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst2|inst~q\;
\inst|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst2|inst~q\;
\inst|inst1|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst7|inst~q\;
\inst6|inst1|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst7|inst~q\;
\inst7|inst1|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst7|inst~q\;
\inst8|inst1|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst7|inst~q\;
\inst13|inst|inst5|ALT_INV_inst~q\ <= NOT \inst13|inst|inst5|inst~q\;
\inst11|inst|inst3|ALT_INV_inst~q\ <= NOT \inst11|inst|inst3|inst~q\;
\inst6|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst3|inst~q\;
\inst8|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst3|inst~q\;
\inst3|inst|inst3|ALT_INV_inst~q\ <= NOT \inst3|inst|inst3|inst~q\;
\inst12|inst|inst3|ALT_INV_inst~q\ <= NOT \inst12|inst|inst3|inst~q\;
\inst7|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst3|inst~q\;
\inst|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst3|inst~q\;
\inst|inst1|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst8|inst~q\;
\inst6|inst1|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst24|inst8|inst~q\;
\inst7|inst1|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst24|inst8|inst~q\;
\inst8|inst1|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst24|inst8|inst~q\;
\inst13|inst|inst6|ALT_INV_inst~q\ <= NOT \inst13|inst|inst6|inst~q\;
\inst11|inst|inst4|ALT_INV_inst~q\ <= NOT \inst11|inst|inst4|inst~q\;
\inst6|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst7|inst~q\;
\inst8|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst7|inst~q\;
\inst3|inst|inst4|ALT_INV_inst~q\ <= NOT \inst3|inst|inst4|inst~q\;
\inst12|inst|inst4|ALT_INV_inst~q\ <= NOT \inst12|inst|inst4|inst~q\;
\inst7|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst7|inst~q\;
\inst|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst7|inst~q\;
\inst13|inst|inst7|ALT_INV_inst~q\ <= NOT \inst13|inst|inst7|inst~q\;
\inst11|inst|inst5|ALT_INV_inst~q\ <= NOT \inst11|inst|inst5|inst~q\;
\inst6|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst8|inst~q\;
\inst8|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst8|inst~q\;
\inst3|inst|inst5|ALT_INV_inst~q\ <= NOT \inst3|inst|inst5|inst~q\;
\inst12|inst|inst5|ALT_INV_inst~q\ <= NOT \inst12|inst|inst5|inst~q\;
\inst7|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst8|inst~q\;
\inst|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst|inst31|inst8|inst~q\;
\inst|inst1|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst|inst1|inst24|inst4|inst29~combout\;
\inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst6|inst1|inst24|inst4|inst29~combout\;
\inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst7|inst1|inst24|inst4|inst29~combout\;
\inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst8|inst1|inst24|inst4|inst29~combout\;
\inst11|inst|inst6|ALT_INV_inst~q\ <= NOT \inst11|inst|inst6|inst~q\;
\inst6|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst6|inst31|inst9|inst~q\;
\inst8|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst8|inst31|inst9|inst~q\;
\inst3|inst|inst6|ALT_INV_inst~q\ <= NOT \inst3|inst|inst6|inst~q\;
\inst12|inst|inst6|ALT_INV_inst~q\ <= NOT \inst12|inst|inst6|inst~q\;
\inst7|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst7|inst31|inst9|inst~q\;
\inst|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst|inst31|inst9|inst~q\;
\inst13|inst3|ALT_INV_inst~q\ <= NOT \inst13|inst3|inst~q\;
\inst11|inst|inst7|ALT_INV_inst~q\ <= NOT \inst11|inst|inst7|inst~q\;
\inst3|inst|inst7|ALT_INV_inst~q\ <= NOT \inst3|inst|inst7|inst~q\;
\inst12|inst|inst7|ALT_INV_inst~q\ <= NOT \inst12|inst|inst7|inst~q\;
\inst13|inst4|ALT_INV_inst~q\ <= NOT \inst13|inst4|inst~q\;
\inst6|inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst6|inst31|inst13|inst29~combout\;
\inst8|inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst8|inst31|inst13|inst29~combout\;
\inst7|inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst7|inst31|inst13|inst29~combout\;
\inst|inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst|inst31|inst13|inst29~combout\;
\inst|inst1|inst25|ALT_INV_inst~q\ <= NOT \inst|inst1|inst25|inst~q\;
\inst6|inst1|inst25|ALT_INV_inst~q\ <= NOT \inst6|inst1|inst25|inst~q\;
\inst7|inst1|inst25|ALT_INV_inst~q\ <= NOT \inst7|inst1|inst25|inst~q\;
\inst8|inst1|inst25|ALT_INV_inst~q\ <= NOT \inst8|inst1|inst25|inst~q\;
\inst13|inst2|ALT_INV_inst~q\ <= NOT \inst13|inst2|inst~q\;
\inst11|inst2|ALT_INV_inst~q\ <= NOT \inst11|inst2|inst~q\;
\inst3|inst2|ALT_INV_inst~q\ <= NOT \inst3|inst2|inst~q\;
\inst12|inst2|ALT_INV_inst~q\ <= NOT \inst12|inst2|inst~q\;
\inst13|inst7|ALT_INV_inst29~combout\ <= NOT \inst13|inst7|inst29~combout\;
\inst11|inst1|ALT_INV_inst29~combout\ <= NOT \inst11|inst1|inst29~combout\;
\inst6|inst17|ALT_INV_inst~q\ <= NOT \inst6|inst17|inst~q\;
\inst8|inst17|ALT_INV_inst~q\ <= NOT \inst8|inst17|inst~q\;
\inst3|inst4|ALT_INV_inst29~combout\ <= NOT \inst3|inst4|inst29~combout\;
\inst12|inst7|ALT_INV_inst29~combout\ <= NOT \inst12|inst7|inst29~combout\;
\inst7|inst17|ALT_INV_inst~q\ <= NOT \inst7|inst17|inst~q\;
\inst|inst17|ALT_INV_inst~q\ <= NOT \inst|inst17|inst~q\;
\inst6|inst3|ALT_INV_inst~q\ <= NOT \inst6|inst3|inst~q\;
\inst8|inst3|ALT_INV_inst~q\ <= NOT \inst8|inst3|inst~q\;
\inst7|inst3|ALT_INV_inst~q\ <= NOT \inst7|inst3|inst~q\;
\inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst3|inst~q\;
\inst|inst10|ALT_INV_inst~q\ <= NOT \inst|inst10|inst~q\;
\inst6|inst10|ALT_INV_inst~q\ <= NOT \inst6|inst10|inst~q\;
\inst7|inst10|ALT_INV_inst~q\ <= NOT \inst7|inst10|inst~q\;
\inst8|inst10|ALT_INV_inst~q\ <= NOT \inst8|inst10|inst~q\;
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
	i => \inst10~combout\,
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
	i => \inst8|inst10|ALT_INV_inst~q\,
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
	i => \inst7|inst10|ALT_INV_inst~q\,
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
	i => \inst6|inst10|ALT_INV_inst~q\,
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
	i => \inst|inst10|ALT_INV_inst~q\,
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

-- Location: LCCOMB_X8_Y20_N18
\inst13|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst|inst~0_combout\ = !\inst13|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst|inst~q\,
	combout => \inst13|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X8_Y20_N6
\inst13|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst|inst~feeder_combout\ = \inst13|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst|inst~0_combout\,
	combout => \inst13|inst|inst|inst~feeder_combout\);

-- Location: FF_X8_Y20_N7
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

-- Location: LCCOMB_X9_Y20_N6
\inst13|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst2|inst~0_combout\ = !\inst13|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst2|inst~q\,
	combout => \inst13|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X9_Y20_N16
\inst13|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst2|inst~feeder_combout\ = \inst13|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst2|inst~0_combout\,
	combout => \inst13|inst|inst2|inst~feeder_combout\);

-- Location: FF_X9_Y20_N17
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

-- Location: LCCOMB_X9_Y20_N28
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

-- Location: LCCOMB_X9_Y20_N14
\inst13|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst3|inst~feeder_combout\ = \inst13|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst3|inst~0_combout\,
	combout => \inst13|inst|inst3|inst~feeder_combout\);

-- Location: FF_X9_Y20_N15
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

-- Location: LCCOMB_X10_Y20_N30
\inst13|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst4|inst~0_combout\ = !\inst13|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst4|inst~q\,
	combout => \inst13|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X10_Y20_N16
\inst13|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst4|inst~feeder_combout\ = \inst13|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst4|inst~0_combout\,
	combout => \inst13|inst|inst4|inst~feeder_combout\);

-- Location: FF_X10_Y20_N17
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

-- Location: LCCOMB_X10_Y20_N22
\inst13|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst5|inst~0_combout\ = !\inst13|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|inst5|inst~q\,
	combout => \inst13|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X10_Y20_N6
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

-- Location: FF_X10_Y20_N7
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

-- Location: LCCOMB_X11_Y20_N18
\inst13|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst6|inst~0_combout\ = !\inst13|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst6|inst~q\,
	combout => \inst13|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X11_Y20_N6
\inst13|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst6|inst~feeder_combout\ = \inst13|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst6|inst~0_combout\,
	combout => \inst13|inst|inst6|inst~feeder_combout\);

-- Location: FF_X11_Y20_N7
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

-- Location: LCCOMB_X11_Y18_N22
\inst13|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst7|inst~0_combout\ = !\inst13|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst7|inst~q\,
	combout => \inst13|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X11_Y18_N20
\inst13|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst7|inst~feeder_combout\ = \inst13|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst7|inst~0_combout\,
	combout => \inst13|inst|inst7|inst~feeder_combout\);

-- Location: FF_X11_Y18_N21
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

-- Location: LCCOMB_X11_Y18_N28
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

-- Location: LCCOMB_X11_Y18_N16
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

-- Location: FF_X11_Y18_N17
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

-- Location: LCCOMB_X16_Y18_N20
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

-- Location: LCCOMB_X16_Y18_N22
\inst13|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst3|inst~feeder_combout\ = \inst13|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst3|inst~0_combout\,
	combout => \inst13|inst3|inst~feeder_combout\);

-- Location: FF_X16_Y18_N23
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

-- Location: LCCOMB_X16_Y18_N28
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

-- Location: LCCOMB_X16_Y18_N14
\inst13|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst4|inst~feeder_combout\ = \inst13|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst4|inst~0_combout\,
	combout => \inst13|inst4|inst~feeder_combout\);

-- Location: FF_X16_Y18_N15
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

-- Location: LCCOMB_X17_Y18_N18
\inst13|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst2|inst~0_combout\ = !\inst13|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst2|inst~q\,
	combout => \inst13|inst2|inst~0_combout\);

-- Location: LCCOMB_X17_Y18_N28
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

-- Location: FF_X17_Y18_N29
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

-- Location: LCCOMB_X18_Y18_N12
\inst13|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst9|inst~0_combout\ = !\inst13|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst9|inst~q\,
	combout => \inst13|inst9|inst~0_combout\);

-- Location: FF_X18_Y18_N7
\inst13|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst2|ALT_INV_inst~q\,
	asdata => \inst13|inst9|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst9|inst~q\);

-- Location: LCCOMB_X18_Y18_N30
\inst13|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst~0_combout\ = !\inst13|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst~q\,
	combout => \inst13|inst7|inst~0_combout\);

-- Location: LCCOMB_X18_Y18_N24
\inst13|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst~feeder_combout\ = \inst13|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst~0_combout\,
	combout => \inst13|inst7|inst~feeder_combout\);

-- Location: FF_X18_Y18_N25
\inst13|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst~feeder_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst~q\);

-- Location: LCCOMB_X18_Y18_N22
\inst13|inst7|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst7~0_combout\ = \inst13|inst7|inst~q\ $ (\inst13|inst7|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst~q\,
	datad => \inst13|inst7|inst7~q\,
	combout => \inst13|inst7|inst7~0_combout\);

-- Location: LCCOMB_X18_Y18_N8
\inst13|inst7|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst7~feeder_combout\ = \inst13|inst7|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst7~0_combout\,
	combout => \inst13|inst7|inst7~feeder_combout\);

-- Location: FF_X18_Y18_N9
\inst13|inst7|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst7~feeder_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst7~q\);

-- Location: LCCOMB_X18_Y18_N10
\inst13|inst7|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst8~0_combout\ = \inst13|inst7|inst8~q\ $ (((\inst13|inst7|inst~q\ & \inst13|inst7|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst~q\,
	datac => \inst13|inst7|inst8~q\,
	datad => \inst13|inst7|inst7~q\,
	combout => \inst13|inst7|inst8~0_combout\);

-- Location: FF_X18_Y18_N11
\inst13|inst7|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst8~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst8~q\);

-- Location: LCCOMB_X18_Y18_N16
\inst13|inst7|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst9~0_combout\ = \inst13|inst7|inst9~q\ $ (((\inst13|inst7|inst8~q\ & (\inst13|inst7|inst~q\ & \inst13|inst7|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst8~q\,
	datab => \inst13|inst7|inst~q\,
	datac => \inst13|inst7|inst9~q\,
	datad => \inst13|inst7|inst7~q\,
	combout => \inst13|inst7|inst9~0_combout\);

-- Location: FF_X18_Y18_N17
\inst13|inst7|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst9~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst9~q\);

-- Location: LCCOMB_X18_Y18_N0
\inst13|inst7|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst29~0_combout\ = (\inst13|inst7|inst8~q\ & (\inst13|inst7|inst7~q\ & \inst13|inst7|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst8~q\,
	datac => \inst13|inst7|inst7~q\,
	datad => \inst13|inst7|inst~q\,
	combout => \inst13|inst7|inst29~0_combout\);

-- Location: LCCOMB_X18_Y18_N18
\inst13|inst7|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst14~0_combout\ = \inst13|inst7|inst14~q\ $ (((\inst13|inst7|inst9~q\ & \inst13|inst7|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst9~q\,
	datac => \inst13|inst7|inst14~q\,
	datad => \inst13|inst7|inst29~0_combout\,
	combout => \inst13|inst7|inst14~0_combout\);

-- Location: FF_X18_Y18_N19
\inst13|inst7|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst14~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst14~q\);

-- Location: LCCOMB_X18_Y18_N26
\inst13|inst7|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst17~0_combout\ = \inst13|inst7|inst17~q\ $ (((\inst13|inst7|inst29~0_combout\ & (\inst13|inst7|inst9~q\ & \inst13|inst7|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst29~0_combout\,
	datab => \inst13|inst7|inst9~q\,
	datac => \inst13|inst7|inst17~q\,
	datad => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst17~0_combout\);

-- Location: FF_X18_Y18_N27
\inst13|inst7|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst17~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst17~q\);

-- Location: LCCOMB_X18_Y18_N6
\inst13|inst7|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst19~0_combout\ = (!\inst13|inst7|inst14~q\) # (!\inst13|inst7|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst17~q\,
	datad => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst19~0_combout\);

-- Location: LCCOMB_X18_Y18_N28
\inst13|inst7|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst19~1_combout\ = \inst13|inst7|inst19~q\ $ (((!\inst13|inst7|inst19~0_combout\ & (\inst13|inst7|inst9~q\ & \inst13|inst7|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst19~0_combout\,
	datab => \inst13|inst7|inst9~q\,
	datac => \inst13|inst7|inst19~q\,
	datad => \inst13|inst7|inst29~0_combout\,
	combout => \inst13|inst7|inst19~1_combout\);

-- Location: FF_X18_Y18_N29
\inst13|inst7|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst19~1_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst19~q\);

-- Location: LCCOMB_X18_Y18_N20
\inst13|inst7|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst18~combout\ = (\inst13|inst7|inst17~q\ & (\inst13|inst7|inst9~q\ & (\inst13|inst7|inst29~0_combout\ & \inst13|inst7|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst17~q\,
	datab => \inst13|inst7|inst9~q\,
	datac => \inst13|inst7|inst29~0_combout\,
	datad => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst18~combout\);

-- Location: LCCOMB_X18_Y18_N4
\inst13|inst7|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst21~0_combout\ = \inst13|inst7|inst21~q\ $ (((\inst13|inst7|inst18~combout\ & \inst13|inst7|inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst18~combout\,
	datac => \inst13|inst7|inst21~q\,
	datad => \inst13|inst7|inst19~q\,
	combout => \inst13|inst7|inst21~0_combout\);

-- Location: FF_X18_Y18_N5
\inst13|inst7|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst21~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst21~q\);

-- Location: LCCOMB_X18_Y18_N14
\inst13|inst7|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst29~1_combout\ = (!\inst13|inst7|inst17~q\ & (!\inst13|inst7|inst19~q\ & (!\inst13|inst7|inst21~q\ & !\inst13|inst7|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst17~q\,
	datab => \inst13|inst7|inst19~q\,
	datac => \inst13|inst7|inst21~q\,
	datad => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst29~1_combout\);

-- Location: LCCOMB_X18_Y18_N2
\inst13|inst7|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst29~combout\ = LCELL((!\inst13|inst7|inst9~q\ & (\inst13|inst7|inst29~1_combout\ & \inst13|inst7|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst9~q\,
	datac => \inst13|inst7|inst29~1_combout\,
	datad => \inst13|inst7|inst29~0_combout\,
	combout => \inst13|inst7|inst29~combout\);

-- Location: LCCOMB_X18_Y15_N8
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

-- Location: FF_X18_Y15_N9
\inst13|inst7|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst7|inst29~combout\,
	d => \inst13|inst7|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst4~q\);

-- Location: LCCOMB_X31_Y9_N18
\inst8|inst1|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst|inst~0_combout\ = !\inst8|inst1|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst24|inst|inst|inst~q\,
	combout => \inst8|inst1|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X31_Y9_N28
\inst8|inst1|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst|inst~feeder_combout\ = \inst8|inst1|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst|inst|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X31_Y9_N29
\inst8|inst1|inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst8|inst1|inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X31_Y9_N22
\inst8|inst1|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst2|inst~0_combout\ = !\inst8|inst1|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst|inst2|inst~q\,
	combout => \inst8|inst1|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X31_Y9_N14
\inst8|inst1|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst2|inst~feeder_combout\ = \inst8|inst1|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst24|inst|inst2|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X31_Y9_N15
\inst8|inst1|inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst8|inst1|inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X30_Y9_N26
\inst8|inst1|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst3|inst~0_combout\ = !\inst8|inst1|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst|inst3|inst~q\,
	combout => \inst8|inst1|inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X30_Y9_N28
\inst8|inst1|inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst3|inst~feeder_combout\ = \inst8|inst1|inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst24|inst|inst3|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X30_Y9_N29
\inst8|inst1|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst|inst2|ALT_INV_inst~q\,
	d => \inst8|inst1|inst24|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X30_Y9_N22
\inst8|inst1|inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst4|inst~0_combout\ = !\inst8|inst1|inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst|inst4|inst~q\,
	combout => \inst8|inst1|inst24|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X30_Y9_N0
\inst8|inst1|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst4|inst~feeder_combout\ = \inst8|inst1|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst24|inst|inst4|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X30_Y9_N1
\inst8|inst1|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst|inst3|ALT_INV_inst~q\,
	d => \inst8|inst1|inst24|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X30_Y10_N26
\inst8|inst1|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst5|inst~0_combout\ = !\inst8|inst1|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst24|inst|inst5|inst~q\,
	combout => \inst8|inst1|inst24|inst|inst5|inst~0_combout\);

-- Location: FF_X30_Y10_N3
\inst8|inst1|inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst|inst4|ALT_INV_inst~q\,
	asdata => \inst8|inst1|inst24|inst|inst5|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X30_Y10_N16
\inst8|inst1|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst6|inst~0_combout\ = !\inst8|inst1|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst|inst6|inst~q\,
	combout => \inst8|inst1|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X30_Y10_N14
\inst8|inst1|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst6|inst~feeder_combout\ = \inst8|inst1|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst|inst6|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X30_Y10_N15
\inst8|inst1|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst8|inst1|inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X31_Y10_N18
\inst8|inst1|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst7|inst~0_combout\ = !\inst8|inst1|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst24|inst|inst7|inst~q\,
	combout => \inst8|inst1|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X31_Y10_N28
\inst8|inst1|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst7|inst~feeder_combout\ = \inst8|inst1|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst24|inst|inst7|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X31_Y10_N29
\inst8|inst1|inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst|inst6|ALT_INV_inst~q\,
	d => \inst8|inst1|inst24|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X31_Y10_N12
\inst8|inst1|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst8|inst~0_combout\ = !\inst8|inst1|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst|inst8|inst~q\,
	combout => \inst8|inst1|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X31_Y10_N14
\inst8|inst1|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst|inst8|inst~feeder_combout\ = \inst8|inst1|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst24|inst|inst8|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X31_Y10_N15
\inst8|inst1|inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst8|inst1|inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X31_Y13_N10
\inst8|inst1|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst2|inst~0_combout\ = !\inst8|inst1|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst24|inst2|inst~q\,
	combout => \inst8|inst1|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X31_Y13_N18
\inst8|inst1|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst2|inst~feeder_combout\ = \inst8|inst1|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst2|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X31_Y13_N19
\inst8|inst1|inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst|inst8|inst~q\,
	d => \inst8|inst1|inst24|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst2|inst~q\);

-- Location: LCCOMB_X31_Y13_N4
\inst8|inst1|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst3|inst~0_combout\ = !\inst8|inst1|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst3|inst~q\,
	combout => \inst8|inst1|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X31_Y13_N14
\inst8|inst1|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst3|inst~feeder_combout\ = \inst8|inst1|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst24|inst3|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X31_Y13_N15
\inst8|inst1|inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst2|ALT_INV_inst~q\,
	d => \inst8|inst1|inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst3|inst~q\);

-- Location: LCCOMB_X30_Y13_N18
\inst8|inst1|inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst7|inst~0_combout\ = !\inst8|inst1|inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst7|inst~q\,
	combout => \inst8|inst1|inst24|inst7|inst~0_combout\);

-- Location: FF_X30_Y13_N25
\inst8|inst1|inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst3|ALT_INV_inst~q\,
	asdata => \inst8|inst1|inst24|inst7|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst7|inst~q\);

-- Location: LCCOMB_X30_Y13_N22
\inst8|inst1|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst8|inst~0_combout\ = !\inst8|inst1|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst8|inst~q\,
	combout => \inst8|inst1|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X30_Y13_N14
\inst8|inst1|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst8|inst~feeder_combout\ = \inst8|inst1|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst24|inst8|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X30_Y13_N15
\inst8|inst1|inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst7|ALT_INV_inst~q\,
	d => \inst8|inst1|inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst8|inst~q\);

-- Location: LCCOMB_X29_Y14_N18
\inst8|inst1|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst9|inst~0_combout\ = !\inst8|inst1|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst24|inst9|inst~q\,
	combout => \inst8|inst1|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst8|inst1|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst9|inst~feeder_combout\ = \inst8|inst1|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst24|inst9|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X29_Y14_N1
\inst8|inst1|inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst8|ALT_INV_inst~q\,
	d => \inst8|inst1|inst24|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst9|inst~q\);

-- Location: LCCOMB_X29_Y15_N2
\inst8|inst1|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst~0_combout\ = !\inst8|inst1|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst1|inst24|inst4|inst~q\,
	combout => \inst8|inst1|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X29_Y15_N30
\inst8|inst1|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst~feeder_combout\ = \inst8|inst1|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst24|inst4|inst~0_combout\,
	combout => \inst8|inst1|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X29_Y15_N31
\inst8|inst1|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst9|inst~q\,
	d => \inst8|inst1|inst24|inst4|inst~feeder_combout\,
	clrn => \inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst4|inst~q\);

-- Location: LCCOMB_X29_Y15_N16
\inst8|inst1|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst7~0_combout\ = \inst8|inst1|inst24|inst4|inst~q\ $ (\inst8|inst1|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst~q\,
	datad => \inst8|inst1|inst24|inst4|inst7~q\,
	combout => \inst8|inst1|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X29_Y15_N6
\inst8|inst1|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst7~feeder_combout\ = \inst8|inst1|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst24|inst4|inst7~0_combout\,
	combout => \inst8|inst1|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X29_Y15_N7
\inst8|inst1|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst9|inst~q\,
	d => \inst8|inst1|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X29_Y15_N26
\inst8|inst1|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst8~0_combout\ = \inst8|inst1|inst24|inst4|inst8~q\ $ (((\inst8|inst1|inst24|inst4|inst7~q\ & \inst8|inst1|inst24|inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|inst24|inst4|inst7~q\,
	datac => \inst8|inst1|inst24|inst4|inst8~q\,
	datad => \inst8|inst1|inst24|inst4|inst~q\,
	combout => \inst8|inst1|inst24|inst4|inst8~0_combout\);

-- Location: FF_X29_Y15_N27
\inst8|inst1|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst9|inst~q\,
	d => \inst8|inst1|inst24|inst4|inst8~0_combout\,
	clrn => \inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X29_Y15_N12
\inst8|inst1|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst9~0_combout\ = \inst8|inst1|inst24|inst4|inst9~q\ $ (((\inst8|inst1|inst24|inst4|inst8~q\ & (\inst8|inst1|inst24|inst4|inst7~q\ & \inst8|inst1|inst24|inst4|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst8~q\,
	datab => \inst8|inst1|inst24|inst4|inst7~q\,
	datac => \inst8|inst1|inst24|inst4|inst9~q\,
	datad => \inst8|inst1|inst24|inst4|inst~q\,
	combout => \inst8|inst1|inst24|inst4|inst9~0_combout\);

-- Location: FF_X29_Y15_N13
\inst8|inst1|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst9|inst~q\,
	d => \inst8|inst1|inst24|inst4|inst9~0_combout\,
	clrn => \inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X29_Y15_N28
\inst8|inst1|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst29~0_combout\ = (\inst8|inst1|inst24|inst4|inst~q\ & (\inst8|inst1|inst24|inst4|inst8~q\ & \inst8|inst1|inst24|inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst~q\,
	datac => \inst8|inst1|inst24|inst4|inst8~q\,
	datad => \inst8|inst1|inst24|inst4|inst7~q\,
	combout => \inst8|inst1|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X29_Y15_N18
\inst8|inst1|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst14~0_combout\ = \inst8|inst1|inst24|inst4|inst14~q\ $ (((\inst8|inst1|inst24|inst4|inst29~0_combout\ & \inst8|inst1|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst29~0_combout\,
	datac => \inst8|inst1|inst24|inst4|inst14~q\,
	datad => \inst8|inst1|inst24|inst4|inst9~q\,
	combout => \inst8|inst1|inst24|inst4|inst14~0_combout\);

-- Location: FF_X29_Y15_N19
\inst8|inst1|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst9|inst~q\,
	d => \inst8|inst1|inst24|inst4|inst14~0_combout\,
	clrn => \inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X29_Y15_N10
\inst8|inst1|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst17~0_combout\ = \inst8|inst1|inst24|inst4|inst17~q\ $ (((\inst8|inst1|inst24|inst4|inst29~0_combout\ & (\inst8|inst1|inst24|inst4|inst9~q\ & \inst8|inst1|inst24|inst4|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst29~0_combout\,
	datab => \inst8|inst1|inst24|inst4|inst9~q\,
	datac => \inst8|inst1|inst24|inst4|inst17~q\,
	datad => \inst8|inst1|inst24|inst4|inst14~q\,
	combout => \inst8|inst1|inst24|inst4|inst17~0_combout\);

-- Location: FF_X29_Y15_N11
\inst8|inst1|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst9|inst~q\,
	d => \inst8|inst1|inst24|inst4|inst17~0_combout\,
	clrn => \inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X29_Y15_N24
\inst8|inst1|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst18~combout\ = (\inst8|inst1|inst24|inst4|inst17~q\ & (\inst8|inst1|inst24|inst4|inst9~q\ & (\inst8|inst1|inst24|inst4|inst29~0_combout\ & \inst8|inst1|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst17~q\,
	datab => \inst8|inst1|inst24|inst4|inst9~q\,
	datac => \inst8|inst1|inst24|inst4|inst29~0_combout\,
	datad => \inst8|inst1|inst24|inst4|inst14~q\,
	combout => \inst8|inst1|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X29_Y15_N14
\inst8|inst1|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst19~0_combout\ = \inst8|inst1|inst24|inst4|inst19~q\ $ (\inst8|inst1|inst24|inst4|inst18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst24|inst4|inst19~q\,
	datad => \inst8|inst1|inst24|inst4|inst18~combout\,
	combout => \inst8|inst1|inst24|inst4|inst19~0_combout\);

-- Location: FF_X29_Y15_N15
\inst8|inst1|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst9|inst~q\,
	d => \inst8|inst1|inst24|inst4|inst19~0_combout\,
	clrn => \inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X29_Y15_N0
\inst8|inst1|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst21~0_combout\ = ((!\inst8|inst1|inst24|inst4|inst14~q\) # (!\inst8|inst1|inst24|inst4|inst9~q\)) # (!\inst8|inst1|inst24|inst4|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst17~q\,
	datac => \inst8|inst1|inst24|inst4|inst9~q\,
	datad => \inst8|inst1|inst24|inst4|inst14~q\,
	combout => \inst8|inst1|inst24|inst4|inst21~0_combout\);

-- Location: LCCOMB_X29_Y15_N4
\inst8|inst1|inst24|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst21~1_combout\ = \inst8|inst1|inst24|inst4|inst21~q\ $ (((\inst8|inst1|inst24|inst4|inst29~0_combout\ & (\inst8|inst1|inst24|inst4|inst19~q\ & !\inst8|inst1|inst24|inst4|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst29~0_combout\,
	datab => \inst8|inst1|inst24|inst4|inst19~q\,
	datac => \inst8|inst1|inst24|inst4|inst21~q\,
	datad => \inst8|inst1|inst24|inst4|inst21~0_combout\,
	combout => \inst8|inst1|inst24|inst4|inst21~1_combout\);

-- Location: FF_X29_Y15_N5
\inst8|inst1|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst9|inst~q\,
	d => \inst8|inst1|inst24|inst4|inst21~1_combout\,
	clrn => \inst8|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X29_Y15_N8
\inst8|inst1|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst29~1_combout\ = (!\inst8|inst1|inst24|inst4|inst17~q\ & (!\inst8|inst1|inst24|inst4|inst19~q\ & (!\inst8|inst1|inst24|inst4|inst21~q\ & !\inst8|inst1|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst17~q\,
	datab => \inst8|inst1|inst24|inst4|inst19~q\,
	datac => \inst8|inst1|inst24|inst4|inst21~q\,
	datad => \inst8|inst1|inst24|inst4|inst14~q\,
	combout => \inst8|inst1|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X29_Y15_N22
\inst8|inst1|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst29~combout\ = LCELL((!\inst8|inst1|inst24|inst4|inst9~q\ & (\inst8|inst1|inst24|inst4|inst29~1_combout\ & \inst8|inst1|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst9~q\,
	datac => \inst8|inst1|inst24|inst4|inst29~1_combout\,
	datad => \inst8|inst1|inst24|inst4|inst29~0_combout\,
	combout => \inst8|inst1|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X29_Y15_N20
\inst8|inst1|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst24|inst4|inst4~0_combout\ = !\inst8|inst1|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst24|inst4|inst4~q\,
	combout => \inst8|inst1|inst24|inst4|inst4~0_combout\);

-- Location: FF_X29_Y15_N3
\inst8|inst1|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst4|inst29~combout\,
	asdata => \inst8|inst1|inst24|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X24_Y15_N10
\inst8|inst1|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst25|inst~0_combout\ = !\inst8|inst1|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst25|inst~q\,
	combout => \inst8|inst1|inst25|inst~0_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst8|inst1|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst25|inst~feeder_combout\ = \inst8|inst1|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst25|inst~0_combout\,
	combout => \inst8|inst1|inst25|inst~feeder_combout\);

-- Location: FF_X24_Y15_N9
\inst8|inst1|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst24|inst4|inst4~q\,
	d => \inst8|inst1|inst25|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst25|inst~q\);

-- Location: LCCOMB_X24_Y15_N18
\inst8|inst1|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst26|inst~0_combout\ = !\inst8|inst1|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst26|inst~q\,
	combout => \inst8|inst1|inst26|inst~0_combout\);

-- Location: LCCOMB_X24_Y15_N14
\inst8|inst1|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst26|inst~feeder_combout\ = \inst8|inst1|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst26|inst~0_combout\,
	combout => \inst8|inst1|inst26|inst~feeder_combout\);

-- Location: FF_X24_Y15_N15
\inst8|inst1|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst25|ALT_INV_inst~q\,
	d => \inst8|inst1|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst26|inst~q\);

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

-- Location: LCCOMB_X33_Y12_N4
\inst8|inst1|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|dasda~0_combout\ = !\KEY4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY4~input_o\,
	combout => \inst8|inst1|dasda~0_combout\);

-- Location: FF_X23_Y15_N11
\inst8|inst1|dasda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst26|inst~q\,
	asdata => \inst8|inst1|dasda~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|dasda~q\);

-- Location: LCCOMB_X23_Y15_N20
\inst8|inst1|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst29~feeder_combout\ = \inst8|inst1|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst1|dasda~q\,
	combout => \inst8|inst1|inst29~feeder_combout\);

-- Location: FF_X23_Y15_N21
\inst8|inst1|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst26|inst~q\,
	d => \inst8|inst1|inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst29~q\);

-- Location: LCCOMB_X23_Y15_N28
\inst8|inst1|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst30~feeder_combout\ = \inst8|inst1|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst1|inst29~q\,
	combout => \inst8|inst1|inst30~feeder_combout\);

-- Location: FF_X23_Y15_N29
\inst8|inst1|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst26|inst~q\,
	d => \inst8|inst1|inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst30~q\);

-- Location: LCCOMB_X23_Y15_N26
\inst8|inst1|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst31~feeder_combout\ = \inst8|inst1|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst1|inst30~q\,
	combout => \inst8|inst1|inst31~feeder_combout\);

-- Location: FF_X23_Y15_N27
\inst8|inst1|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst26|inst~q\,
	d => \inst8|inst1|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst31~q\);

-- Location: LCCOMB_X23_Y15_N24
\inst8|inst1|inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst32~feeder_combout\ = \inst8|inst1|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst31~q\,
	combout => \inst8|inst1|inst32~feeder_combout\);

-- Location: FF_X23_Y15_N25
\inst8|inst1|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst26|inst~q\,
	d => \inst8|inst1|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst32~q\);

-- Location: LCCOMB_X23_Y15_N18
\inst8|inst1|inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst33~feeder_combout\ = \inst8|inst1|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst1|inst32~q\,
	combout => \inst8|inst1|inst33~feeder_combout\);

-- Location: FF_X23_Y15_N19
\inst8|inst1|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst26|inst~q\,
	d => \inst8|inst1|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst33~q\);

-- Location: LCCOMB_X23_Y15_N14
\inst8|inst1|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst23~feeder_combout\ = \inst8|inst1|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst1|inst33~q\,
	combout => \inst8|inst1|inst23~feeder_combout\);

-- Location: FF_X23_Y15_N15
\inst8|inst1|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst26|inst~q\,
	d => \inst8|inst1|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|inst23~q\);

-- Location: LCCOMB_X23_Y15_N16
\inst8|inst1|1231~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|1231~feeder_combout\ = \inst8|inst1|inst23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst23~q\,
	combout => \inst8|inst1|1231~feeder_combout\);

-- Location: FF_X23_Y15_N17
\inst8|inst1|1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst26|inst~q\,
	d => \inst8|inst1|1231~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|1231~q\);

-- Location: LCCOMB_X23_Y15_N22
\inst8|inst1|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst36~1_combout\ = (\inst8|inst1|inst33~q\ & (\inst8|inst1|1231~q\ & (\inst8|inst1|inst23~q\ & \inst8|inst1|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|inst33~q\,
	datab => \inst8|inst1|1231~q\,
	datac => \inst8|inst1|inst23~q\,
	datad => \inst8|inst1|inst32~q\,
	combout => \inst8|inst1|inst36~1_combout\);

-- Location: LCCOMB_X23_Y15_N12
\inst8|inst1|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst36~0_combout\ = (\inst8|inst1|dasda~q\ & (\inst8|inst1|inst30~q\ & (\inst8|inst1|inst31~q\ & \inst8|inst1|inst29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|dasda~q\,
	datab => \inst8|inst1|inst30~q\,
	datac => \inst8|inst1|inst31~q\,
	datad => \inst8|inst1|inst29~q\,
	combout => \inst8|inst1|inst36~0_combout\);

-- Location: LCCOMB_X23_Y15_N30
\inst8|inst1|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|inst36~combout\ = LCELL((\inst8|inst1|inst36~1_combout\ & \inst8|inst1|inst36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst1|inst36~1_combout\,
	datad => \inst8|inst1|inst36~0_combout\,
	combout => \inst8|inst1|inst36~combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst8|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst10|inst~0_combout\ = !\inst8|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst10|inst~q\,
	combout => \inst8|inst10|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N30
\inst8|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst10|inst~feeder_combout\ = \inst8|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst10|inst~0_combout\,
	combout => \inst8|inst10|inst~feeder_combout\);

-- Location: FF_X23_Y13_N31
\inst8|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst1|inst36~combout\,
	d => \inst8|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst10|inst~q\);

-- Location: LCCOMB_X22_Y13_N24
\inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst~0_combout\ = !\inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst~q\,
	combout => \inst8|inst~0_combout\);

-- Location: LCCOMB_X21_Y13_N24
\inst8|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst32~combout\ = LCELL((\FPGA_CLK~input_o\ & \inst8|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_CLK~input_o\,
	datad => \inst8|inst~q\,
	combout => \inst8|inst32~combout\);

-- Location: LCCOMB_X21_Y13_N30
\inst8|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst|inst~0_combout\ = !\inst8|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst|inst|inst|inst~q\,
	combout => \inst8|inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X21_Y13_N25
\inst8|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst32~combout\,
	asdata => \inst8|inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X21_Y13_N28
\inst8|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst2|inst~0_combout\ = !\inst8|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst|inst|inst2|inst~q\,
	combout => \inst8|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X21_Y13_N26
\inst8|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst8|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst8|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X21_Y13_N27
\inst8|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X21_Y15_N30
\inst8|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst3|inst~0_combout\ = !\inst8|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst|inst3|inst~q\,
	combout => \inst8|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X21_Y15_N18
\inst8|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst8|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst8|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X21_Y15_N19
\inst8|inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X21_Y15_N28
\inst8|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst4|inst~0_combout\ = !\inst8|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst|inst|inst4|inst~q\,
	combout => \inst8|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X21_Y15_N0
\inst8|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst8|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst8|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X21_Y15_N1
\inst8|inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X21_Y16_N28
\inst8|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst5|inst~0_combout\ = !\inst8|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst|inst5|inst~q\,
	combout => \inst8|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\inst8|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst8|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst8|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X21_Y16_N7
\inst8|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X21_Y16_N26
\inst8|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst6|inst~0_combout\ = !\inst8|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst|inst|inst6|inst~q\,
	combout => \inst8|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X21_Y16_N14
\inst8|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst8|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst8|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X21_Y16_N15
\inst8|inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X22_Y16_N22
\inst8|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst7|inst~0_combout\ = !\inst8|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst|inst7|inst~q\,
	combout => \inst8|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: FF_X22_Y16_N21
\inst8|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	asdata => \inst8|inst31|inst|inst|inst7|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X22_Y16_N14
\inst8|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst8|inst~0_combout\ = !\inst8|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst31|inst|inst|inst8|inst~q\,
	combout => \inst8|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X22_Y16_N6
\inst8|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst8|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst8|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X22_Y16_N7
\inst8|inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X23_Y16_N24
\inst8|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst|inst~0_combout\ = !\inst8|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst1|inst|inst~q\,
	combout => \inst8|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X23_Y16_N28
\inst8|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst8|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst8|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X23_Y16_N29
\inst8|inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst|inst8|inst~q\,
	d => \inst8|inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X23_Y16_N22
\inst8|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst8|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst8|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X23_Y16_N16
\inst8|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst8|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst8|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X23_Y16_N17
\inst8|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X19_Y16_N18
\inst8|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst8|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst8|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X19_Y16_N24
\inst8|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst8|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst8|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X19_Y16_N25
\inst8|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X19_Y16_N28
\inst8|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst8|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst8|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X19_Y16_N14
\inst8|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst8|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst8|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X19_Y16_N15
\inst8|inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X18_Y16_N10
\inst8|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst8|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst8|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X18_Y16_N20
\inst8|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst8|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst8|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X18_Y16_N21
\inst8|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X18_Y16_N28
\inst8|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst8|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst8|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X18_Y16_N26
\inst8|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst8|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst8|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X18_Y16_N27
\inst8|inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X17_Y14_N18
\inst8|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst8|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst8|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: FF_X17_Y14_N21
\inst8|inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	asdata => \inst8|inst31|inst|inst1|inst7|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X17_Y14_N16
\inst8|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst8|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst8|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X17_Y14_N14
\inst8|inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst8|inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst8|inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X17_Y14_N15
\inst8|inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst8|inst31|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X18_Y14_N18
\inst8|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst2|inst~0_combout\ = !\inst8|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst2|inst~q\,
	combout => \inst8|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X18_Y14_N8
\inst8|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst2|inst~feeder_combout\ = \inst8|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst2|inst~0_combout\,
	combout => \inst8|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X18_Y14_N9
\inst8|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst8|inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst2|inst~q\);

-- Location: LCCOMB_X18_Y14_N26
\inst8|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst3|inst~0_combout\ = !\inst8|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst3|inst~q\,
	combout => \inst8|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X18_Y14_N12
\inst8|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst3|inst~feeder_combout\ = \inst8|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst3|inst~0_combout\,
	combout => \inst8|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X18_Y14_N13
\inst8|inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst2|ALT_INV_inst~q\,
	d => \inst8|inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst3|inst~q\);

-- Location: LCCOMB_X19_Y14_N18
\inst8|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst7|inst~0_combout\ = !\inst8|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst7|inst~q\,
	combout => \inst8|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X19_Y14_N24
\inst8|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst7|inst~feeder_combout\ = \inst8|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst7|inst~0_combout\,
	combout => \inst8|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X19_Y14_N25
\inst8|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst3|ALT_INV_inst~q\,
	d => \inst8|inst31|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst7|inst~q\);

-- Location: LCCOMB_X19_Y14_N14
\inst8|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst8|inst~0_combout\ = !\inst8|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst8|inst~q\,
	combout => \inst8|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst8|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst8|inst~feeder_combout\ = \inst8|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst8|inst~0_combout\,
	combout => \inst8|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X19_Y14_N29
\inst8|inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst7|ALT_INV_inst~q\,
	d => \inst8|inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst8|inst~q\);

-- Location: LCCOMB_X21_Y14_N22
\inst8|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst9|inst~0_combout\ = !\inst8|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst9|inst~q\,
	combout => \inst8|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X21_Y14_N14
\inst8|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst9|inst~feeder_combout\ = \inst8|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst9|inst~0_combout\,
	combout => \inst8|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X21_Y14_N15
\inst8|inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst8|ALT_INV_inst~q\,
	d => \inst8|inst31|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst9|inst~q\);

-- Location: LCCOMB_X21_Y14_N28
\inst8|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst10|inst~0_combout\ = !\inst8|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst31|inst10|inst~q\,
	combout => \inst8|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X21_Y14_N20
\inst8|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst10|inst~feeder_combout\ = \inst8|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst10|inst~0_combout\,
	combout => \inst8|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X21_Y14_N21
\inst8|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst9|ALT_INV_inst~q\,
	d => \inst8|inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst10|inst~q\);

-- Location: LCCOMB_X22_Y12_N22
\inst8|inst31|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst~0_combout\ = !\inst8|inst31|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst13|inst~q\,
	combout => \inst8|inst31|inst13|inst~0_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst8|inst31|inst13|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst~feeder_combout\ = \inst8|inst31|inst13|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst~0_combout\,
	combout => \inst8|inst31|inst13|inst~feeder_combout\);

-- Location: FF_X22_Y12_N15
\inst8|inst31|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst10|inst~q\,
	d => \inst8|inst31|inst13|inst~feeder_combout\,
	clrn => \inst8|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst13|inst~q\);

-- Location: LCCOMB_X22_Y12_N20
\inst8|inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst7~0_combout\ = \inst8|inst31|inst13|inst~q\ $ (\inst8|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst13|inst~q\,
	datad => \inst8|inst31|inst13|inst7~q\,
	combout => \inst8|inst31|inst13|inst7~0_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst8|inst31|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst7~feeder_combout\ = \inst8|inst31|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst7~0_combout\,
	combout => \inst8|inst31|inst13|inst7~feeder_combout\);

-- Location: FF_X22_Y12_N3
\inst8|inst31|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst10|inst~q\,
	d => \inst8|inst31|inst13|inst7~feeder_combout\,
	clrn => \inst8|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst13|inst7~q\);

-- Location: LCCOMB_X22_Y12_N30
\inst8|inst31|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst8~0_combout\ = \inst8|inst31|inst13|inst8~q\ $ (((\inst8|inst31|inst13|inst7~q\ & \inst8|inst31|inst13|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst13|inst7~q\,
	datac => \inst8|inst31|inst13|inst8~q\,
	datad => \inst8|inst31|inst13|inst~q\,
	combout => \inst8|inst31|inst13|inst8~0_combout\);

-- Location: FF_X22_Y12_N31
\inst8|inst31|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst10|inst~q\,
	d => \inst8|inst31|inst13|inst8~0_combout\,
	clrn => \inst8|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst13|inst8~q\);

-- Location: LCCOMB_X22_Y12_N28
\inst8|inst31|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst9~0_combout\ = \inst8|inst31|inst13|inst9~q\ $ (((\inst8|inst31|inst13|inst8~q\ & (\inst8|inst31|inst13|inst7~q\ & \inst8|inst31|inst13|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst8~q\,
	datab => \inst8|inst31|inst13|inst7~q\,
	datac => \inst8|inst31|inst13|inst9~q\,
	datad => \inst8|inst31|inst13|inst~q\,
	combout => \inst8|inst31|inst13|inst9~0_combout\);

-- Location: FF_X22_Y12_N29
\inst8|inst31|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst10|inst~q\,
	d => \inst8|inst31|inst13|inst9~0_combout\,
	clrn => \inst8|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst13|inst9~q\);

-- Location: LCCOMB_X22_Y12_N10
\inst8|inst31|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst5~0_combout\ = (\inst8|inst31|inst13|inst~q\ & \inst8|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst31|inst13|inst~q\,
	datad => \inst8|inst31|inst13|inst7~q\,
	combout => \inst8|inst31|inst13|inst5~0_combout\);

-- Location: LCCOMB_X22_Y12_N12
\inst8|inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst14~0_combout\ = \inst8|inst31|inst13|inst14~q\ $ (((\inst8|inst31|inst13|inst9~q\ & (\inst8|inst31|inst13|inst8~q\ & \inst8|inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst9~q\,
	datab => \inst8|inst31|inst13|inst8~q\,
	datac => \inst8|inst31|inst13|inst14~q\,
	datad => \inst8|inst31|inst13|inst5~0_combout\,
	combout => \inst8|inst31|inst13|inst14~0_combout\);

-- Location: FF_X22_Y12_N13
\inst8|inst31|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst10|inst~q\,
	d => \inst8|inst31|inst13|inst14~0_combout\,
	clrn => \inst8|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst13|inst14~q\);

-- Location: LCCOMB_X22_Y12_N16
\inst8|inst31|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst17~0_combout\ = (!\inst8|inst31|inst13|inst14~q\) # (!\inst8|inst31|inst13|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst31|inst13|inst9~q\,
	datad => \inst8|inst31|inst13|inst14~q\,
	combout => \inst8|inst31|inst13|inst17~0_combout\);

-- Location: LCCOMB_X22_Y12_N26
\inst8|inst31|inst13|inst17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst17~1_combout\ = \inst8|inst31|inst13|inst17~q\ $ (((\inst8|inst31|inst13|inst8~q\ & (!\inst8|inst31|inst13|inst17~0_combout\ & \inst8|inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst8~q\,
	datab => \inst8|inst31|inst13|inst17~0_combout\,
	datac => \inst8|inst31|inst13|inst17~q\,
	datad => \inst8|inst31|inst13|inst5~0_combout\,
	combout => \inst8|inst31|inst13|inst17~1_combout\);

-- Location: FF_X22_Y12_N27
\inst8|inst31|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst10|inst~q\,
	d => \inst8|inst31|inst13|inst17~1_combout\,
	clrn => \inst8|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst13|inst17~q\);

-- Location: LCCOMB_X22_Y12_N6
\inst8|inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst16~combout\ = (\inst8|inst31|inst13|inst5~0_combout\ & (\inst8|inst31|inst13|inst8~q\ & (\inst8|inst31|inst13|inst9~q\ & \inst8|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst5~0_combout\,
	datab => \inst8|inst31|inst13|inst8~q\,
	datac => \inst8|inst31|inst13|inst9~q\,
	datad => \inst8|inst31|inst13|inst14~q\,
	combout => \inst8|inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst8|inst31|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst19~0_combout\ = \inst8|inst31|inst13|inst19~q\ $ (((\inst8|inst31|inst13|inst16~combout\ & \inst8|inst31|inst13|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst16~combout\,
	datac => \inst8|inst31|inst13|inst19~q\,
	datad => \inst8|inst31|inst13|inst17~q\,
	combout => \inst8|inst31|inst13|inst19~0_combout\);

-- Location: FF_X22_Y12_N25
\inst8|inst31|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst10|inst~q\,
	d => \inst8|inst31|inst13|inst19~0_combout\,
	clrn => \inst8|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst13|inst19~q\);

-- Location: LCCOMB_X22_Y12_N4
\inst8|inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst21~0_combout\ = \inst8|inst31|inst13|inst21~q\ $ (((\inst8|inst31|inst13|inst16~combout\ & (\inst8|inst31|inst13|inst19~q\ & \inst8|inst31|inst13|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst16~combout\,
	datab => \inst8|inst31|inst13|inst19~q\,
	datac => \inst8|inst31|inst13|inst21~q\,
	datad => \inst8|inst31|inst13|inst17~q\,
	combout => \inst8|inst31|inst13|inst21~0_combout\);

-- Location: FF_X22_Y12_N5
\inst8|inst31|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst10|inst~q\,
	d => \inst8|inst31|inst13|inst21~0_combout\,
	clrn => \inst8|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst13|inst21~q\);

-- Location: LCCOMB_X22_Y12_N8
\inst8|inst31|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst29~0_combout\ = (!\inst8|inst31|inst13|inst17~q\ & (!\inst8|inst31|inst13|inst19~q\ & (!\inst8|inst31|inst13|inst21~q\ & !\inst8|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst17~q\,
	datab => \inst8|inst31|inst13|inst19~q\,
	datac => \inst8|inst31|inst13|inst21~q\,
	datad => \inst8|inst31|inst13|inst14~q\,
	combout => \inst8|inst31|inst13|inst29~0_combout\);

-- Location: LCCOMB_X22_Y12_N0
\inst8|inst31|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst29~combout\ = LCELL((!\inst8|inst31|inst13|inst8~q\ & (!\inst8|inst31|inst13|inst9~q\ & (\inst8|inst31|inst13|inst29~0_combout\ & \inst8|inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst8~q\,
	datab => \inst8|inst31|inst13|inst9~q\,
	datac => \inst8|inst31|inst13|inst29~0_combout\,
	datad => \inst8|inst31|inst13|inst5~0_combout\,
	combout => \inst8|inst31|inst13|inst29~combout\);

-- Location: LCCOMB_X22_Y12_N18
\inst8|inst31|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst31|inst13|inst4~0_combout\ = !\inst8|inst31|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst31|inst13|inst4~q\,
	combout => \inst8|inst31|inst13|inst4~0_combout\);

-- Location: FF_X22_Y12_N23
\inst8|inst31|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst13|inst29~combout\,
	asdata => \inst8|inst31|inst13|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst31|inst13|inst4~q\);

-- Location: LCCOMB_X23_Y13_N24
\inst8|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst17|inst~0_combout\ = !\inst8|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst17|inst~q\,
	combout => \inst8|inst17|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst8|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst17|inst~feeder_combout\ = \inst8|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst17|inst~0_combout\,
	combout => \inst8|inst17|inst~feeder_combout\);

-- Location: FF_X23_Y13_N29
\inst8|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst31|inst13|inst4~q\,
	d => \inst8|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst17|inst~q\);

-- Location: LCCOMB_X22_Y13_N18
\inst8|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst8|inst3|inst~feeder_combout\);

-- Location: FF_X22_Y13_N19
\inst8|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst17|ALT_INV_inst~q\,
	d => \inst8|inst3|inst~feeder_combout\,
	clrn => \inst8|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst3|inst~q\);

-- Location: FF_X22_Y13_N25
\inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|inst10|inst~q\,
	d => \inst8|inst~0_combout\,
	clrn => \inst8|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst~q\);

-- Location: LCCOMB_X10_Y19_N20
\inst6|inst1|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst|inst~0_combout\ = !\inst6|inst1|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst|inst|inst~q\,
	combout => \inst6|inst1|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X10_Y19_N28
\inst6|inst1|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst|inst~feeder_combout\ = \inst6|inst1|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst|inst|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X10_Y19_N29
\inst6|inst1|inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst6|inst1|inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X10_Y19_N30
\inst6|inst1|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst2|inst~0_combout\ = !\inst6|inst1|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst1|inst24|inst|inst2|inst~q\,
	combout => \inst6|inst1|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X10_Y19_N6
\inst6|inst1|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst2|inst~feeder_combout\ = \inst6|inst1|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst|inst2|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X10_Y19_N7
\inst6|inst1|inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X11_Y19_N10
\inst6|inst1|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst3|inst~0_combout\ = !\inst6|inst1|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst24|inst|inst3|inst~q\,
	combout => \inst6|inst1|inst24|inst|inst3|inst~0_combout\);

-- Location: FF_X11_Y19_N3
\inst6|inst1|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst|inst2|ALT_INV_inst~q\,
	asdata => \inst6|inst1|inst24|inst|inst3|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X11_Y19_N14
\inst6|inst1|inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst4|inst~0_combout\ = !\inst6|inst1|inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst|inst4|inst~q\,
	combout => \inst6|inst1|inst24|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X11_Y19_N16
\inst6|inst1|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst4|inst~feeder_combout\ = \inst6|inst1|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst|inst4|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X11_Y19_N17
\inst6|inst1|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst|inst3|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X12_Y19_N28
\inst6|inst1|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst5|inst~0_combout\ = !\inst6|inst1|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst24|inst|inst5|inst~q\,
	combout => \inst6|inst1|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X12_Y19_N26
\inst6|inst1|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst5|inst~feeder_combout\ = \inst6|inst1|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst24|inst|inst5|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X12_Y19_N27
\inst6|inst1|inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst|inst4|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X12_Y19_N30
\inst6|inst1|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst6|inst~0_combout\ = !\inst6|inst1|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst1|inst24|inst|inst6|inst~q\,
	combout => \inst6|inst1|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X12_Y19_N6
\inst6|inst1|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst6|inst~feeder_combout\ = \inst6|inst1|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst|inst6|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X12_Y19_N7
\inst6|inst1|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X13_Y19_N18
\inst6|inst1|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst7|inst~0_combout\ = !\inst6|inst1|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst24|inst|inst7|inst~q\,
	combout => \inst6|inst1|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X13_Y19_N28
\inst6|inst1|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst7|inst~feeder_combout\ = \inst6|inst1|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst24|inst|inst7|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X13_Y19_N29
\inst6|inst1|inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst|inst6|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X13_Y19_N0
\inst6|inst1|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst8|inst~0_combout\ = !\inst6|inst1|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst|inst8|inst~q\,
	combout => \inst6|inst1|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X13_Y19_N4
\inst6|inst1|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst|inst8|inst~feeder_combout\ = \inst6|inst1|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst|inst8|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X13_Y19_N5
\inst6|inst1|inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X14_Y18_N18
\inst6|inst1|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst2|inst~0_combout\ = !\inst6|inst1|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst2|inst~q\,
	combout => \inst6|inst1|inst24|inst2|inst~0_combout\);

-- Location: FF_X14_Y18_N17
\inst6|inst1|inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst|inst8|inst~q\,
	asdata => \inst6|inst1|inst24|inst2|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst2|inst~q\);

-- Location: LCCOMB_X14_Y18_N14
\inst6|inst1|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst3|inst~0_combout\ = !\inst6|inst1|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst1|inst24|inst3|inst~q\,
	combout => \inst6|inst1|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X14_Y18_N24
\inst6|inst1|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst3|inst~feeder_combout\ = \inst6|inst1|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst3|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X14_Y18_N25
\inst6|inst1|inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst2|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst3|inst~q\);

-- Location: LCCOMB_X19_Y18_N28
\inst6|inst1|inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst7|inst~0_combout\ = !\inst6|inst1|inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst24|inst7|inst~q\,
	combout => \inst6|inst1|inst24|inst7|inst~0_combout\);

-- Location: LCCOMB_X19_Y18_N0
\inst6|inst1|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst7|inst~feeder_combout\ = \inst6|inst1|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst24|inst7|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X19_Y18_N1
\inst6|inst1|inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst3|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst7|inst~q\);

-- Location: LCCOMB_X19_Y18_N4
\inst6|inst1|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst8|inst~0_combout\ = !\inst6|inst1|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst8|inst~q\,
	combout => \inst6|inst1|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X19_Y18_N14
\inst6|inst1|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst8|inst~feeder_combout\ = \inst6|inst1|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst8|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X19_Y18_N15
\inst6|inst1|inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst7|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst8|inst~q\);

-- Location: LCCOMB_X22_Y14_N30
\inst6|inst1|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst9|inst~0_combout\ = !\inst6|inst1|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst9|inst~q\,
	combout => \inst6|inst1|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\inst6|inst1|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst9|inst~feeder_combout\ = \inst6|inst1|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst9|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X22_Y14_N15
\inst6|inst1|inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst8|ALT_INV_inst~q\,
	d => \inst6|inst1|inst24|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst9|inst~q\);

-- Location: LCCOMB_X22_Y10_N2
\inst6|inst1|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst~0_combout\ = !\inst6|inst1|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst1|inst24|inst4|inst~q\,
	combout => \inst6|inst1|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X22_Y10_N18
\inst6|inst1|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst~feeder_combout\ = \inst6|inst1|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst~0_combout\,
	combout => \inst6|inst1|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X22_Y10_N19
\inst6|inst1|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst9|inst~q\,
	d => \inst6|inst1|inst24|inst4|inst~feeder_combout\,
	clrn => \inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst4|inst~q\);

-- Location: LCCOMB_X22_Y10_N24
\inst6|inst1|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst7~0_combout\ = \inst6|inst1|inst24|inst4|inst~q\ $ (\inst6|inst1|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst4|inst~q\,
	datac => \inst6|inst1|inst24|inst4|inst7~q\,
	combout => \inst6|inst1|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X22_Y10_N26
\inst6|inst1|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst7~feeder_combout\ = \inst6|inst1|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst7~0_combout\,
	combout => \inst6|inst1|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X22_Y10_N27
\inst6|inst1|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst9|inst~q\,
	d => \inst6|inst1|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X22_Y10_N10
\inst6|inst1|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst8~0_combout\ = \inst6|inst1|inst24|inst4|inst8~q\ $ (((\inst6|inst1|inst24|inst4|inst~q\ & \inst6|inst1|inst24|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst~q\,
	datac => \inst6|inst1|inst24|inst4|inst8~q\,
	datad => \inst6|inst1|inst24|inst4|inst7~q\,
	combout => \inst6|inst1|inst24|inst4|inst8~0_combout\);

-- Location: FF_X22_Y10_N11
\inst6|inst1|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst9|inst~q\,
	d => \inst6|inst1|inst24|inst4|inst8~0_combout\,
	clrn => \inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X22_Y10_N0
\inst6|inst1|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst9~0_combout\ = \inst6|inst1|inst24|inst4|inst9~q\ $ (((\inst6|inst1|inst24|inst4|inst~q\ & (\inst6|inst1|inst24|inst4|inst7~q\ & \inst6|inst1|inst24|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst~q\,
	datab => \inst6|inst1|inst24|inst4|inst7~q\,
	datac => \inst6|inst1|inst24|inst4|inst9~q\,
	datad => \inst6|inst1|inst24|inst4|inst8~q\,
	combout => \inst6|inst1|inst24|inst4|inst9~0_combout\);

-- Location: FF_X22_Y10_N1
\inst6|inst1|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst9|inst~q\,
	d => \inst6|inst1|inst24|inst4|inst9~0_combout\,
	clrn => \inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X22_Y10_N28
\inst6|inst1|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst29~0_combout\ = (\inst6|inst1|inst24|inst4|inst8~q\ & (\inst6|inst1|inst24|inst4|inst7~q\ & \inst6|inst1|inst24|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst8~q\,
	datac => \inst6|inst1|inst24|inst4|inst7~q\,
	datad => \inst6|inst1|inst24|inst4|inst~q\,
	combout => \inst6|inst1|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X22_Y10_N12
\inst6|inst1|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst14~0_combout\ = \inst6|inst1|inst24|inst4|inst14~q\ $ (((\inst6|inst1|inst24|inst4|inst29~0_combout\ & \inst6|inst1|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst29~0_combout\,
	datac => \inst6|inst1|inst24|inst4|inst14~q\,
	datad => \inst6|inst1|inst24|inst4|inst9~q\,
	combout => \inst6|inst1|inst24|inst4|inst14~0_combout\);

-- Location: FF_X22_Y10_N13
\inst6|inst1|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst9|inst~q\,
	d => \inst6|inst1|inst24|inst4|inst14~0_combout\,
	clrn => \inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X22_Y10_N6
\inst6|inst1|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst17~0_combout\ = \inst6|inst1|inst24|inst4|inst17~q\ $ (((\inst6|inst1|inst24|inst4|inst29~0_combout\ & (\inst6|inst1|inst24|inst4|inst9~q\ & \inst6|inst1|inst24|inst4|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst29~0_combout\,
	datab => \inst6|inst1|inst24|inst4|inst9~q\,
	datac => \inst6|inst1|inst24|inst4|inst17~q\,
	datad => \inst6|inst1|inst24|inst4|inst14~q\,
	combout => \inst6|inst1|inst24|inst4|inst17~0_combout\);

-- Location: FF_X22_Y10_N7
\inst6|inst1|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst9|inst~q\,
	d => \inst6|inst1|inst24|inst4|inst17~0_combout\,
	clrn => \inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X22_Y10_N4
\inst6|inst1|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst18~combout\ = (\inst6|inst1|inst24|inst4|inst17~q\ & (\inst6|inst1|inst24|inst4|inst9~q\ & (\inst6|inst1|inst24|inst4|inst14~q\ & \inst6|inst1|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst17~q\,
	datab => \inst6|inst1|inst24|inst4|inst9~q\,
	datac => \inst6|inst1|inst24|inst4|inst14~q\,
	datad => \inst6|inst1|inst24|inst4|inst29~0_combout\,
	combout => \inst6|inst1|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X22_Y10_N14
\inst6|inst1|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst19~0_combout\ = \inst6|inst1|inst24|inst4|inst18~combout\ $ (\inst6|inst1|inst24|inst4|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst4|inst18~combout\,
	datac => \inst6|inst1|inst24|inst4|inst19~q\,
	combout => \inst6|inst1|inst24|inst4|inst19~0_combout\);

-- Location: FF_X22_Y10_N15
\inst6|inst1|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst9|inst~q\,
	d => \inst6|inst1|inst24|inst4|inst19~0_combout\,
	clrn => \inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X22_Y10_N22
\inst6|inst1|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst21~0_combout\ = \inst6|inst1|inst24|inst4|inst21~q\ $ (((\inst6|inst1|inst24|inst4|inst18~combout\ & \inst6|inst1|inst24|inst4|inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst4|inst18~combout\,
	datac => \inst6|inst1|inst24|inst4|inst21~q\,
	datad => \inst6|inst1|inst24|inst4|inst19~q\,
	combout => \inst6|inst1|inst24|inst4|inst21~0_combout\);

-- Location: FF_X22_Y10_N23
\inst6|inst1|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst9|inst~q\,
	d => \inst6|inst1|inst24|inst4|inst21~0_combout\,
	clrn => \inst6|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X22_Y10_N8
\inst6|inst1|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst29~1_combout\ = (!\inst6|inst1|inst24|inst4|inst17~q\ & (!\inst6|inst1|inst24|inst4|inst19~q\ & (!\inst6|inst1|inst24|inst4|inst21~q\ & !\inst6|inst1|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst17~q\,
	datab => \inst6|inst1|inst24|inst4|inst19~q\,
	datac => \inst6|inst1|inst24|inst4|inst21~q\,
	datad => \inst6|inst1|inst24|inst4|inst14~q\,
	combout => \inst6|inst1|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X22_Y10_N30
\inst6|inst1|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst29~combout\ = LCELL((!\inst6|inst1|inst24|inst4|inst9~q\ & (\inst6|inst1|inst24|inst4|inst29~1_combout\ & \inst6|inst1|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst4|inst9~q\,
	datac => \inst6|inst1|inst24|inst4|inst29~1_combout\,
	datad => \inst6|inst1|inst24|inst4|inst29~0_combout\,
	combout => \inst6|inst1|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X22_Y10_N16
\inst6|inst1|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst4~0_combout\ = !\inst6|inst1|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst24|inst4|inst4~q\,
	combout => \inst6|inst1|inst24|inst4|inst4~0_combout\);

-- Location: LCCOMB_X22_Y10_N20
\inst6|inst1|inst24|inst4|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst24|inst4|inst4~feeder_combout\ = \inst6|inst1|inst24|inst4|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|inst24|inst4|inst4~0_combout\,
	combout => \inst6|inst1|inst24|inst4|inst4~feeder_combout\);

-- Location: FF_X22_Y10_N21
\inst6|inst1|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst4|inst29~combout\,
	d => \inst6|inst1|inst24|inst4|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X23_Y10_N28
\inst6|inst1|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst25|inst~0_combout\ = !\inst6|inst1|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst25|inst~q\,
	combout => \inst6|inst1|inst25|inst~0_combout\);

-- Location: LCCOMB_X23_Y10_N24
\inst6|inst1|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst25|inst~feeder_combout\ = \inst6|inst1|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst25|inst~0_combout\,
	combout => \inst6|inst1|inst25|inst~feeder_combout\);

-- Location: FF_X23_Y10_N25
\inst6|inst1|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst24|inst4|inst4~q\,
	d => \inst6|inst1|inst25|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst25|inst~q\);

-- Location: LCCOMB_X23_Y10_N16
\inst6|inst1|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst26|inst~0_combout\ = !\inst6|inst1|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst26|inst~q\,
	combout => \inst6|inst1|inst26|inst~0_combout\);

-- Location: LCCOMB_X23_Y10_N14
\inst6|inst1|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst26|inst~feeder_combout\ = \inst6|inst1|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst26|inst~0_combout\,
	combout => \inst6|inst1|inst26|inst~feeder_combout\);

-- Location: FF_X23_Y10_N15
\inst6|inst1|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst25|ALT_INV_inst~q\,
	d => \inst6|inst1|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst26|inst~q\);

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

-- Location: LCCOMB_X24_Y10_N4
\inst6|inst1|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|dasda~0_combout\ = !\KEY2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY2~input_o\,
	combout => \inst6|inst1|dasda~0_combout\);

-- Location: FF_X24_Y10_N5
\inst6|inst1|dasda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst26|inst~q\,
	d => \inst6|inst1|dasda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|dasda~q\);

-- Location: LCCOMB_X24_Y10_N26
\inst6|inst1|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst29~feeder_combout\ = \inst6|inst1|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|dasda~q\,
	combout => \inst6|inst1|inst29~feeder_combout\);

-- Location: FF_X24_Y10_N27
\inst6|inst1|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst26|inst~q\,
	d => \inst6|inst1|inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst29~q\);

-- Location: LCCOMB_X24_Y10_N10
\inst6|inst1|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst30~feeder_combout\ = \inst6|inst1|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst29~q\,
	combout => \inst6|inst1|inst30~feeder_combout\);

-- Location: FF_X24_Y10_N11
\inst6|inst1|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst26|inst~q\,
	d => \inst6|inst1|inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst30~q\);

-- Location: LCCOMB_X24_Y10_N28
\inst6|inst1|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst31~feeder_combout\ = \inst6|inst1|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst1|inst30~q\,
	combout => \inst6|inst1|inst31~feeder_combout\);

-- Location: FF_X24_Y10_N29
\inst6|inst1|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst26|inst~q\,
	d => \inst6|inst1|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst31~q\);

-- Location: LCCOMB_X24_Y10_N24
\inst6|inst1|inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst32~feeder_combout\ = \inst6|inst1|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst1|inst31~q\,
	combout => \inst6|inst1|inst32~feeder_combout\);

-- Location: FF_X24_Y10_N25
\inst6|inst1|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst26|inst~q\,
	d => \inst6|inst1|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst32~q\);

-- Location: LCCOMB_X24_Y10_N22
\inst6|inst1|inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst33~feeder_combout\ = \inst6|inst1|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst1|inst32~q\,
	combout => \inst6|inst1|inst33~feeder_combout\);

-- Location: FF_X24_Y10_N23
\inst6|inst1|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst26|inst~q\,
	d => \inst6|inst1|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst33~q\);

-- Location: LCCOMB_X24_Y10_N8
\inst6|inst1|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst23~feeder_combout\ = \inst6|inst1|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1|inst33~q\,
	combout => \inst6|inst1|inst23~feeder_combout\);

-- Location: FF_X24_Y10_N9
\inst6|inst1|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst26|inst~q\,
	d => \inst6|inst1|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|inst23~q\);

-- Location: FF_X24_Y10_N31
\inst6|inst1|1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst26|inst~q\,
	asdata => \inst6|inst1|inst23~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1|1231~q\);

-- Location: LCCOMB_X24_Y10_N30
\inst6|inst1|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst36~1_combout\ = (\inst6|inst1|inst33~q\ & (\inst6|inst1|inst23~q\ & (\inst6|inst1|1231~q\ & \inst6|inst1|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst33~q\,
	datab => \inst6|inst1|inst23~q\,
	datac => \inst6|inst1|1231~q\,
	datad => \inst6|inst1|inst32~q\,
	combout => \inst6|inst1|inst36~1_combout\);

-- Location: LCCOMB_X24_Y10_N18
\inst6|inst1|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst36~0_combout\ = (\inst6|inst1|inst30~q\ & (\inst6|inst1|dasda~q\ & (\inst6|inst1|inst29~q\ & \inst6|inst1|inst31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst30~q\,
	datab => \inst6|inst1|dasda~q\,
	datac => \inst6|inst1|inst29~q\,
	datad => \inst6|inst1|inst31~q\,
	combout => \inst6|inst1|inst36~0_combout\);

-- Location: LCCOMB_X24_Y10_N0
\inst6|inst1|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst36~combout\ = LCELL((\inst6|inst1|inst36~1_combout\ & \inst6|inst1|inst36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|inst36~1_combout\,
	datad => \inst6|inst1|inst36~0_combout\,
	combout => \inst6|inst1|inst36~combout\);

-- Location: LCCOMB_X24_Y10_N14
\inst6|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst10|inst~0_combout\ = !\inst6|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst10|inst~q\,
	combout => \inst6|inst10|inst~0_combout\);

-- Location: FF_X24_Y10_N1
\inst6|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst1|inst36~combout\,
	asdata => \inst6|inst10|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst10|inst~q\);

-- Location: LCCOMB_X24_Y11_N16
\inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst~0_combout\ = !\inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst~q\,
	combout => \inst6|inst~0_combout\);

-- Location: LCCOMB_X12_Y11_N16
\inst6|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst32~combout\ = LCELL((\FPGA_CLK~input_o\ & \inst6|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_CLK~input_o\,
	datad => \inst6|inst~q\,
	combout => \inst6|inst32~combout\);

-- Location: LCCOMB_X12_Y11_N30
\inst6|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst|inst~0_combout\ = !\inst6|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst|inst|inst|inst~q\,
	combout => \inst6|inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X12_Y11_N17
\inst6|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst32~combout\,
	asdata => \inst6|inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X12_Y11_N26
\inst6|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst2|inst~0_combout\ = !\inst6|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst|inst2|inst~q\,
	combout => \inst6|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X12_Y11_N28
\inst6|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst6|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst6|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X12_Y11_N29
\inst6|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X12_Y9_N18
\inst6|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst3|inst~0_combout\ = !\inst6|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst|inst3|inst~q\,
	combout => \inst6|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X12_Y9_N24
\inst6|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst6|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst6|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X12_Y9_N25
\inst6|inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X12_Y9_N28
\inst6|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst4|inst~0_combout\ = !\inst6|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst|inst4|inst~q\,
	combout => \inst6|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X12_Y9_N22
\inst6|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst6|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst6|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X12_Y9_N23
\inst6|inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X11_Y9_N26
\inst6|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst5|inst~0_combout\ = !\inst6|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst|inst|inst5|inst~q\,
	combout => \inst6|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X11_Y9_N8
\inst6|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst6|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst6|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X11_Y9_N9
\inst6|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X11_Y9_N28
\inst6|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst6|inst~0_combout\ = !\inst6|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst|inst6|inst~q\,
	combout => \inst6|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X11_Y9_N16
\inst6|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst6|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst6|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X11_Y9_N17
\inst6|inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X11_Y12_N26
\inst6|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst7|inst~0_combout\ = !\inst6|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst31|inst|inst|inst7|inst~q\,
	combout => \inst6|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X11_Y12_N0
\inst6|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst6|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst6|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X11_Y12_N1
\inst6|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X11_Y12_N16
\inst6|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst8|inst~0_combout\ = !\inst6|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst|inst|inst8|inst~q\,
	combout => \inst6|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X11_Y12_N6
\inst6|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst6|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst6|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X11_Y12_N7
\inst6|inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X12_Y12_N28
\inst6|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst|inst~0_combout\ = !\inst6|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst31|inst|inst1|inst|inst~q\,
	combout => \inst6|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X12_Y12_N14
\inst6|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst6|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst6|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X12_Y12_N15
\inst6|inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst|inst8|inst~q\,
	d => \inst6|inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X16_Y12_N10
\inst6|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst6|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst6|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X16_Y12_N4
\inst6|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst6|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst6|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X16_Y12_N5
\inst6|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X16_Y12_N18
\inst6|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst6|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst6|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X16_Y12_N14
\inst6|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst6|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst6|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X16_Y12_N15
\inst6|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X19_Y12_N10
\inst6|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst6|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst6|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X19_Y12_N18
\inst6|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst6|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst6|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X19_Y12_N19
\inst6|inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X19_Y12_N16
\inst6|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst6|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst6|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X19_Y12_N14
\inst6|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst6|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst6|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X19_Y12_N15
\inst6|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X23_Y12_N26
\inst6|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst6|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst6|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst6|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst6|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst6|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X23_Y12_N29
\inst6|inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X23_Y12_N30
\inst6|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst6|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst6|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X23_Y12_N6
\inst6|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst6|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst6|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X23_Y12_N7
\inst6|inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst6|inst31|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X24_Y12_N18
\inst6|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst6|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst6|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: FF_X24_Y12_N7
\inst6|inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	asdata => \inst6|inst31|inst|inst1|inst8|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X24_Y14_N16
\inst6|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst2|inst~0_combout\ = !\inst6|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst31|inst2|inst~q\,
	combout => \inst6|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst6|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst2|inst~feeder_combout\ = \inst6|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst2|inst~0_combout\,
	combout => \inst6|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X24_Y14_N7
\inst6|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst6|inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst2|inst~q\);

-- Location: LCCOMB_X25_Y14_N28
\inst6|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst3|inst~0_combout\ = !\inst6|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst3|inst~q\,
	combout => \inst6|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X25_Y14_N26
\inst6|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst3|inst~feeder_combout\ = \inst6|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst3|inst~0_combout\,
	combout => \inst6|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X25_Y14_N27
\inst6|inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst2|ALT_INV_inst~q\,
	d => \inst6|inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst3|inst~q\);

-- Location: LCCOMB_X25_Y14_N30
\inst6|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst7|inst~0_combout\ = !\inst6|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst7|inst~q\,
	combout => \inst6|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X25_Y14_N14
\inst6|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst7|inst~feeder_combout\ = \inst6|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst7|inst~0_combout\,
	combout => \inst6|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X25_Y14_N15
\inst6|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst3|ALT_INV_inst~q\,
	d => \inst6|inst31|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst7|inst~q\);

-- Location: LCCOMB_X24_Y14_N18
\inst6|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst8|inst~0_combout\ = !\inst6|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst8|inst~q\,
	combout => \inst6|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst6|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst8|inst~feeder_combout\ = \inst6|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst8|inst~0_combout\,
	combout => \inst6|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X24_Y14_N31
\inst6|inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst7|ALT_INV_inst~q\,
	d => \inst6|inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst8|inst~q\);

-- Location: LCCOMB_X24_Y13_N28
\inst6|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst9|inst~0_combout\ = !\inst6|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst9|inst~q\,
	combout => \inst6|inst31|inst9|inst~0_combout\);

-- Location: FF_X24_Y13_N23
\inst6|inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst8|ALT_INV_inst~q\,
	asdata => \inst6|inst31|inst9|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst9|inst~q\);

-- Location: LCCOMB_X24_Y13_N16
\inst6|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst10|inst~0_combout\ = !\inst6|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst10|inst~q\,
	combout => \inst6|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X24_Y13_N14
\inst6|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst10|inst~feeder_combout\ = \inst6|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst10|inst~0_combout\,
	combout => \inst6|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X24_Y13_N15
\inst6|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst9|ALT_INV_inst~q\,
	d => \inst6|inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst10|inst~q\);

-- Location: LCCOMB_X25_Y13_N18
\inst6|inst31|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst~0_combout\ = !\inst6|inst31|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst13|inst~q\,
	combout => \inst6|inst31|inst13|inst~0_combout\);

-- Location: LCCOMB_X25_Y13_N26
\inst6|inst31|inst13|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst~feeder_combout\ = \inst6|inst31|inst13|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst~0_combout\,
	combout => \inst6|inst31|inst13|inst~feeder_combout\);

-- Location: FF_X25_Y13_N27
\inst6|inst31|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst10|inst~q\,
	d => \inst6|inst31|inst13|inst~feeder_combout\,
	clrn => \inst6|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst13|inst~q\);

-- Location: LCCOMB_X25_Y13_N20
\inst6|inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst7~0_combout\ = \inst6|inst31|inst13|inst~q\ $ (\inst6|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst31|inst13|inst~q\,
	datad => \inst6|inst31|inst13|inst7~q\,
	combout => \inst6|inst31|inst13|inst7~0_combout\);

-- Location: LCCOMB_X25_Y13_N2
\inst6|inst31|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst7~feeder_combout\ = \inst6|inst31|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst31|inst13|inst7~0_combout\,
	combout => \inst6|inst31|inst13|inst7~feeder_combout\);

-- Location: FF_X25_Y13_N3
\inst6|inst31|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst10|inst~q\,
	d => \inst6|inst31|inst13|inst7~feeder_combout\,
	clrn => \inst6|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst13|inst7~q\);

-- Location: LCCOMB_X25_Y13_N14
\inst6|inst31|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst8~0_combout\ = \inst6|inst31|inst13|inst8~q\ $ (((\inst6|inst31|inst13|inst7~q\ & \inst6|inst31|inst13|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst7~q\,
	datab => \inst6|inst31|inst13|inst~q\,
	datac => \inst6|inst31|inst13|inst8~q\,
	combout => \inst6|inst31|inst13|inst8~0_combout\);

-- Location: FF_X25_Y13_N15
\inst6|inst31|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst10|inst~q\,
	d => \inst6|inst31|inst13|inst8~0_combout\,
	clrn => \inst6|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst13|inst8~q\);

-- Location: LCCOMB_X25_Y13_N6
\inst6|inst31|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst9~0_combout\ = \inst6|inst31|inst13|inst9~q\ $ (((\inst6|inst31|inst13|inst~q\ & (\inst6|inst31|inst13|inst8~q\ & \inst6|inst31|inst13|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst~q\,
	datab => \inst6|inst31|inst13|inst8~q\,
	datac => \inst6|inst31|inst13|inst9~q\,
	datad => \inst6|inst31|inst13|inst7~q\,
	combout => \inst6|inst31|inst13|inst9~0_combout\);

-- Location: FF_X25_Y13_N7
\inst6|inst31|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst10|inst~q\,
	d => \inst6|inst31|inst13|inst9~0_combout\,
	clrn => \inst6|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst13|inst9~q\);

-- Location: LCCOMB_X25_Y13_N22
\inst6|inst31|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst5~0_combout\ = (\inst6|inst31|inst13|inst~q\ & \inst6|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst13|inst~q\,
	datad => \inst6|inst31|inst13|inst7~q\,
	combout => \inst6|inst31|inst13|inst5~0_combout\);

-- Location: LCCOMB_X25_Y13_N0
\inst6|inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst14~0_combout\ = \inst6|inst31|inst13|inst14~q\ $ (((\inst6|inst31|inst13|inst5~0_combout\ & (\inst6|inst31|inst13|inst8~q\ & \inst6|inst31|inst13|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst5~0_combout\,
	datab => \inst6|inst31|inst13|inst8~q\,
	datac => \inst6|inst31|inst13|inst14~q\,
	datad => \inst6|inst31|inst13|inst9~q\,
	combout => \inst6|inst31|inst13|inst14~0_combout\);

-- Location: FF_X25_Y13_N1
\inst6|inst31|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst10|inst~q\,
	d => \inst6|inst31|inst13|inst14~0_combout\,
	clrn => \inst6|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst13|inst14~q\);

-- Location: LCCOMB_X25_Y13_N16
\inst6|inst31|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst17~0_combout\ = (!\inst6|inst31|inst13|inst14~q\) # (!\inst6|inst31|inst13|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst13|inst8~q\,
	datad => \inst6|inst31|inst13|inst14~q\,
	combout => \inst6|inst31|inst13|inst17~0_combout\);

-- Location: LCCOMB_X25_Y13_N4
\inst6|inst31|inst13|inst17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst17~1_combout\ = \inst6|inst31|inst13|inst17~q\ $ (((\inst6|inst31|inst13|inst9~q\ & (\inst6|inst31|inst13|inst5~0_combout\ & !\inst6|inst31|inst13|inst17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst9~q\,
	datab => \inst6|inst31|inst13|inst5~0_combout\,
	datac => \inst6|inst31|inst13|inst17~q\,
	datad => \inst6|inst31|inst13|inst17~0_combout\,
	combout => \inst6|inst31|inst13|inst17~1_combout\);

-- Location: FF_X25_Y13_N5
\inst6|inst31|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst10|inst~q\,
	d => \inst6|inst31|inst13|inst17~1_combout\,
	clrn => \inst6|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst13|inst17~q\);

-- Location: LCCOMB_X25_Y13_N10
\inst6|inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst16~combout\ = (\inst6|inst31|inst13|inst9~q\ & (\inst6|inst31|inst13|inst8~q\ & (\inst6|inst31|inst13|inst5~0_combout\ & \inst6|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst9~q\,
	datab => \inst6|inst31|inst13|inst8~q\,
	datac => \inst6|inst31|inst13|inst5~0_combout\,
	datad => \inst6|inst31|inst13|inst14~q\,
	combout => \inst6|inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X25_Y13_N30
\inst6|inst31|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst19~0_combout\ = \inst6|inst31|inst13|inst19~q\ $ (((\inst6|inst31|inst13|inst17~q\ & \inst6|inst31|inst13|inst16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst17~q\,
	datac => \inst6|inst31|inst13|inst19~q\,
	datad => \inst6|inst31|inst13|inst16~combout\,
	combout => \inst6|inst31|inst13|inst19~0_combout\);

-- Location: FF_X25_Y13_N31
\inst6|inst31|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst10|inst~q\,
	d => \inst6|inst31|inst13|inst19~0_combout\,
	clrn => \inst6|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst13|inst19~q\);

-- Location: LCCOMB_X25_Y13_N8
\inst6|inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst21~0_combout\ = \inst6|inst31|inst13|inst21~q\ $ (((\inst6|inst31|inst13|inst19~q\ & (\inst6|inst31|inst13|inst17~q\ & \inst6|inst31|inst13|inst16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst19~q\,
	datab => \inst6|inst31|inst13|inst17~q\,
	datac => \inst6|inst31|inst13|inst21~q\,
	datad => \inst6|inst31|inst13|inst16~combout\,
	combout => \inst6|inst31|inst13|inst21~0_combout\);

-- Location: FF_X25_Y13_N9
\inst6|inst31|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst10|inst~q\,
	d => \inst6|inst31|inst13|inst21~0_combout\,
	clrn => \inst6|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst13|inst21~q\);

-- Location: LCCOMB_X25_Y13_N24
\inst6|inst31|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst29~0_combout\ = (!\inst6|inst31|inst13|inst19~q\ & (!\inst6|inst31|inst13|inst17~q\ & (!\inst6|inst31|inst13|inst21~q\ & !\inst6|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst19~q\,
	datab => \inst6|inst31|inst13|inst17~q\,
	datac => \inst6|inst31|inst13|inst21~q\,
	datad => \inst6|inst31|inst13|inst14~q\,
	combout => \inst6|inst31|inst13|inst29~0_combout\);

-- Location: LCCOMB_X25_Y13_N12
\inst6|inst31|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst29~combout\ = LCELL((!\inst6|inst31|inst13|inst9~q\ & (!\inst6|inst31|inst13|inst8~q\ & (\inst6|inst31|inst13|inst5~0_combout\ & \inst6|inst31|inst13|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst31|inst13|inst9~q\,
	datab => \inst6|inst31|inst13|inst8~q\,
	datac => \inst6|inst31|inst13|inst5~0_combout\,
	datad => \inst6|inst31|inst13|inst29~0_combout\,
	combout => \inst6|inst31|inst13|inst29~combout\);

-- Location: LCCOMB_X25_Y13_N28
\inst6|inst31|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst31|inst13|inst4~0_combout\ = !\inst6|inst31|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst31|inst13|inst4~q\,
	combout => \inst6|inst31|inst13|inst4~0_combout\);

-- Location: FF_X25_Y13_N19
\inst6|inst31|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst13|inst29~combout\,
	asdata => \inst6|inst31|inst13|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst31|inst13|inst4~q\);

-- Location: LCCOMB_X25_Y11_N18
\inst6|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst17|inst~0_combout\ = !\inst6|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst17|inst~q\,
	combout => \inst6|inst17|inst~0_combout\);

-- Location: LCCOMB_X25_Y11_N28
\inst6|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst17|inst~feeder_combout\ = \inst6|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst17|inst~0_combout\,
	combout => \inst6|inst17|inst~feeder_combout\);

-- Location: FF_X25_Y11_N29
\inst6|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst31|inst13|inst4~q\,
	d => \inst6|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst17|inst~q\);

-- Location: LCCOMB_X24_Y11_N10
\inst6|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst6|inst3|inst~feeder_combout\);

-- Location: FF_X24_Y11_N11
\inst6|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst17|ALT_INV_inst~q\,
	d => \inst6|inst3|inst~feeder_combout\,
	clrn => \inst6|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3|inst~q\);

-- Location: FF_X24_Y11_N17
\inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|inst10|inst~q\,
	d => \inst6|inst~0_combout\,
	clrn => \inst6|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst~q\);

-- Location: LCCOMB_X18_Y9_N18
\inst11|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst|inst~0_combout\ = !\inst11|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|inst|inst~q\,
	combout => \inst11|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X18_Y9_N16
\inst11|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst|inst~feeder_combout\ = \inst11|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst|inst~0_combout\,
	combout => \inst11|inst|inst|inst~feeder_combout\);

-- Location: FF_X18_Y9_N17
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

-- Location: LCCOMB_X18_Y9_N10
\inst11|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst2|inst~0_combout\ = !\inst11|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst|inst2|inst~q\,
	combout => \inst11|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X18_Y9_N2
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

-- Location: FF_X18_Y9_N3
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

-- Location: LCCOMB_X17_Y9_N18
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

-- Location: LCCOMB_X17_Y9_N20
\inst11|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst3|inst~feeder_combout\ = \inst11|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|inst3|inst~0_combout\,
	combout => \inst11|inst|inst3|inst~feeder_combout\);

-- Location: FF_X17_Y9_N21
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

-- Location: LCCOMB_X17_Y9_N4
\inst11|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst4|inst~0_combout\ = !\inst11|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst4|inst~q\,
	combout => \inst11|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X17_Y9_N14
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

-- Location: FF_X17_Y9_N15
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

-- Location: LCCOMB_X16_Y9_N22
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

-- Location: LCCOMB_X16_Y9_N14
\inst11|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst5|inst~feeder_combout\ = \inst11|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|inst5|inst~0_combout\,
	combout => \inst11|inst|inst5|inst~feeder_combout\);

-- Location: FF_X16_Y9_N15
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

-- Location: LCCOMB_X16_Y9_N26
\inst11|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst6|inst~0_combout\ = !\inst11|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst|inst6|inst~q\,
	combout => \inst11|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X16_Y9_N30
\inst11|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst6|inst~feeder_combout\ = \inst11|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst|inst6|inst~0_combout\,
	combout => \inst11|inst|inst6|inst~feeder_combout\);

-- Location: FF_X16_Y9_N31
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

-- Location: LCCOMB_X13_Y9_N22
\inst11|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst7|inst~0_combout\ = !\inst11|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst7|inst~q\,
	combout => \inst11|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X13_Y9_N16
\inst11|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst7|inst~feeder_combout\ = \inst11|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst7|inst~0_combout\,
	combout => \inst11|inst|inst7|inst~feeder_combout\);

-- Location: FF_X13_Y9_N17
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

-- Location: LCCOMB_X13_Y9_N28
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

-- Location: LCCOMB_X13_Y9_N0
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

-- Location: FF_X13_Y9_N1
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

-- Location: LCCOMB_X13_Y10_N30
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

-- Location: LCCOMB_X13_Y10_N24
\inst11|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst2|inst~feeder_combout\ = \inst11|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|inst2|inst~0_combout\,
	combout => \inst11|inst2|inst~feeder_combout\);

-- Location: FF_X13_Y10_N25
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

-- Location: LCCOMB_X13_Y10_N14
\inst11|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst9|inst~0_combout\ = !\inst11|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst9|inst~q\,
	combout => \inst11|inst9|inst~0_combout\);

-- Location: LCCOMB_X13_Y10_N16
\inst11|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst9|inst~feeder_combout\ = \inst11|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst9|inst~0_combout\,
	combout => \inst11|inst9|inst~feeder_combout\);

-- Location: FF_X13_Y10_N17
\inst11|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst2|ALT_INV_inst~q\,
	d => \inst11|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst9|inst~q\);

-- Location: LCCOMB_X14_Y10_N2
\inst11|inst1|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst~0_combout\ = !\inst11|inst1|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|inst1|inst~q\,
	combout => \inst11|inst1|inst~0_combout\);

-- Location: FF_X14_Y10_N9
\inst11|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	asdata => \inst11|inst1|inst~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst29~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst~q\);

-- Location: LCCOMB_X14_Y10_N14
\inst11|inst1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst7~0_combout\ = \inst11|inst1|inst~q\ $ (\inst11|inst1|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst~q\,
	datad => \inst11|inst1|inst7~q\,
	combout => \inst11|inst1|inst7~0_combout\);

-- Location: LCCOMB_X14_Y10_N10
\inst11|inst1|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst7~feeder_combout\ = \inst11|inst1|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|inst1|inst7~0_combout\,
	combout => \inst11|inst1|inst7~feeder_combout\);

-- Location: FF_X14_Y10_N11
\inst11|inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst7~feeder_combout\,
	clrn => \inst11|inst1|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst7~q\);

-- Location: LCCOMB_X14_Y10_N16
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

-- Location: FF_X14_Y10_N17
\inst11|inst1|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst8~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst8~q\);

-- Location: LCCOMB_X14_Y10_N4
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

-- Location: FF_X14_Y10_N5
\inst11|inst1|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst9~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst9~q\);

-- Location: LCCOMB_X14_Y10_N28
\inst11|inst1|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst29~0_combout\ = (\inst11|inst1|inst8~q\ & (\inst11|inst1|inst~q\ & \inst11|inst1|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst8~q\,
	datac => \inst11|inst1|inst~q\,
	datad => \inst11|inst1|inst7~q\,
	combout => \inst11|inst1|inst29~0_combout\);

-- Location: LCCOMB_X14_Y10_N30
\inst11|inst1|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst14~0_combout\ = \inst11|inst1|inst14~q\ $ (((\inst11|inst1|inst9~q\ & \inst11|inst1|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst9~q\,
	datac => \inst11|inst1|inst14~q\,
	datad => \inst11|inst1|inst29~0_combout\,
	combout => \inst11|inst1|inst14~0_combout\);

-- Location: FF_X14_Y10_N31
\inst11|inst1|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst14~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst14~q\);

-- Location: LCCOMB_X14_Y10_N22
\inst11|inst1|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst17~0_combout\ = \inst11|inst1|inst17~q\ $ (((\inst11|inst1|inst14~q\ & (\inst11|inst1|inst9~q\ & \inst11|inst1|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst14~q\,
	datab => \inst11|inst1|inst9~q\,
	datac => \inst11|inst1|inst17~q\,
	datad => \inst11|inst1|inst29~0_combout\,
	combout => \inst11|inst1|inst17~0_combout\);

-- Location: FF_X14_Y10_N23
\inst11|inst1|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst17~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst17~q\);

-- Location: LCCOMB_X14_Y10_N24
\inst11|inst1|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst19~0_combout\ = (!\inst11|inst1|inst17~q\) # (!\inst11|inst1|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst1|inst9~q\,
	datad => \inst11|inst1|inst17~q\,
	combout => \inst11|inst1|inst19~0_combout\);

-- Location: LCCOMB_X14_Y10_N20
\inst11|inst1|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst19~1_combout\ = \inst11|inst1|inst19~q\ $ (((\inst11|inst1|inst29~0_combout\ & (\inst11|inst1|inst14~q\ & !\inst11|inst1|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst29~0_combout\,
	datab => \inst11|inst1|inst14~q\,
	datac => \inst11|inst1|inst19~q\,
	datad => \inst11|inst1|inst19~0_combout\,
	combout => \inst11|inst1|inst19~1_combout\);

-- Location: FF_X14_Y10_N21
\inst11|inst1|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst19~1_combout\,
	clrn => \inst11|inst1|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst19~q\);

-- Location: LCCOMB_X14_Y10_N18
\inst11|inst1|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst18~combout\ = (\inst11|inst1|inst9~q\ & (\inst11|inst1|inst17~q\ & (\inst11|inst1|inst29~0_combout\ & \inst11|inst1|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst9~q\,
	datab => \inst11|inst1|inst17~q\,
	datac => \inst11|inst1|inst29~0_combout\,
	datad => \inst11|inst1|inst14~q\,
	combout => \inst11|inst1|inst18~combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst11|inst1|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst21~0_combout\ = \inst11|inst1|inst21~q\ $ (((\inst11|inst1|inst19~q\ & \inst11|inst1|inst18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst19~q\,
	datac => \inst11|inst1|inst21~q\,
	datad => \inst11|inst1|inst18~combout\,
	combout => \inst11|inst1|inst21~0_combout\);

-- Location: FF_X14_Y10_N13
\inst11|inst1|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst21~0_combout\,
	clrn => \inst11|inst1|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst21~q\);

-- Location: LCCOMB_X14_Y10_N26
\inst11|inst1|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst29~1_combout\ = (\inst11|inst1|inst17~q\ & (!\inst11|inst1|inst19~q\ & (!\inst11|inst1|inst14~q\ & !\inst11|inst1|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst17~q\,
	datab => \inst11|inst1|inst19~q\,
	datac => \inst11|inst1|inst14~q\,
	datad => \inst11|inst1|inst21~q\,
	combout => \inst11|inst1|inst29~1_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst11|inst1|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst29~combout\ = LCELL((!\inst11|inst1|inst9~q\ & (\inst11|inst1|inst29~1_combout\ & \inst11|inst1|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst9~q\,
	datac => \inst11|inst1|inst29~1_combout\,
	datad => \inst11|inst1|inst29~0_combout\,
	combout => \inst11|inst1|inst29~combout\);

-- Location: LCCOMB_X14_Y10_N0
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

-- Location: FF_X14_Y10_N1
\inst11|inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst1|inst29~combout\,
	d => \inst11|inst1|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst4~q\);

-- Location: LCCOMB_X18_Y11_N16
\inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\inst13|inst7|inst4~q\ & ((\inst8|inst~q\) # ((\inst6|inst~q\ & \inst11|inst1|inst4~q\)))) # (!\inst13|inst7|inst4~q\ & (((\inst6|inst~q\ & \inst11|inst1|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst4~q\,
	datab => \inst8|inst~q\,
	datac => \inst6|inst~q\,
	datad => \inst11|inst1|inst4~q\,
	combout => \inst10~1_combout\);

-- Location: LCCOMB_X26_Y8_N18
\inst|inst1|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst|inst~0_combout\ = !\inst|inst1|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst|inst|inst~q\,
	combout => \inst|inst1|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X26_Y8_N28
\inst|inst1|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst|inst|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X26_Y8_N29
\inst|inst1|inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst|inst1|inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X25_Y8_N16
\inst|inst1|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst2|inst~0_combout\ = !\inst|inst1|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst|inst2|inst~q\,
	combout => \inst|inst1|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X25_Y8_N14
\inst|inst1|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst2|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst|inst2|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X25_Y8_N15
\inst|inst1|inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X25_Y8_N22
\inst|inst1|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst3|inst~0_combout\ = !\inst|inst1|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst3|inst~q\,
	combout => \inst|inst1|inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X25_Y8_N28
\inst|inst1|inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst3|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst3|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X25_Y8_N29
\inst|inst1|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst2|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X24_Y8_N4
\inst|inst1|inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst4|inst~0_combout\ = !\inst|inst1|inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst|inst4|inst~q\,
	combout => \inst|inst1|inst24|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X24_Y8_N24
\inst|inst1|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst4|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst4|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X24_Y8_N25
\inst|inst1|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst3|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X24_Y8_N18
\inst|inst1|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst5|inst~0_combout\ = !\inst|inst1|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst|inst5|inst~q\,
	combout => \inst|inst1|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X24_Y8_N0
\inst|inst1|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst5|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst|inst5|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X24_Y8_N1
\inst|inst1|inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst4|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X25_Y9_N24
\inst|inst1|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst6|inst~0_combout\ = !\inst|inst1|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst|inst6|inst~q\,
	combout => \inst|inst1|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X25_Y9_N14
\inst|inst1|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst6|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst6|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X25_Y9_N15
\inst|inst1|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X26_Y9_N18
\inst|inst1|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst7|inst~0_combout\ = !\inst|inst1|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst|inst7|inst~q\,
	combout => \inst|inst1|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X26_Y9_N2
\inst|inst1|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst7|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst|inst7|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X26_Y9_N3
\inst|inst1|inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst6|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X26_Y9_N4
\inst|inst1|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst8|inst~0_combout\ = !\inst|inst1|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst|inst8|inst~q\,
	combout => \inst|inst1|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X26_Y9_N0
\inst|inst1|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst8|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst8|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X26_Y9_N1
\inst|inst1|inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X26_Y11_N28
\inst|inst1|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst2|inst~0_combout\ = !\inst|inst1|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst2|inst~q\,
	combout => \inst|inst1|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X26_Y11_N22
\inst|inst1|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst2|inst~feeder_combout\ = \inst|inst1|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst2|inst~0_combout\,
	combout => \inst|inst1|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X26_Y11_N23
\inst|inst1|inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst8|inst~q\,
	d => \inst|inst1|inst24|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst2|inst~q\);

-- Location: LCCOMB_X26_Y11_N30
\inst|inst1|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst3|inst~0_combout\ = !\inst|inst1|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|inst24|inst3|inst~q\,
	combout => \inst|inst1|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X26_Y11_N20
\inst|inst1|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst3|inst~feeder_combout\ = \inst|inst1|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst3|inst~0_combout\,
	combout => \inst|inst1|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X26_Y11_N21
\inst|inst1|inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst2|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst3|inst~q\);

-- Location: LCCOMB_X29_Y12_N30
\inst|inst1|inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst7|inst~0_combout\ = !\inst|inst1|inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst7|inst~q\,
	combout => \inst|inst1|inst24|inst7|inst~0_combout\);

-- Location: LCCOMB_X29_Y12_N12
\inst|inst1|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst7|inst~feeder_combout\ = \inst|inst1|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst7|inst~0_combout\,
	combout => \inst|inst1|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X29_Y12_N13
\inst|inst1|inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst3|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst7|inst~q\);

-- Location: LCCOMB_X29_Y12_N14
\inst|inst1|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst8|inst~0_combout\ = !\inst|inst1|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst8|inst~q\,
	combout => \inst|inst1|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X29_Y12_N16
\inst|inst1|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst8|inst~feeder_combout\ = \inst|inst1|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst8|inst~0_combout\,
	combout => \inst|inst1|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X29_Y12_N17
\inst|inst1|inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst7|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst8|inst~q\);

-- Location: LCCOMB_X30_Y12_N14
\inst|inst1|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst9|inst~0_combout\ = !\inst|inst1|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst9|inst~q\,
	combout => \inst|inst1|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X30_Y12_N2
\inst|inst1|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst9|inst~feeder_combout\ = \inst|inst1|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst9|inst~0_combout\,
	combout => \inst|inst1|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X30_Y12_N3
\inst|inst1|inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst8|ALT_INV_inst~q\,
	d => \inst|inst1|inst24|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst9|inst~q\);

-- Location: LCCOMB_X30_Y11_N24
\inst|inst1|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst~0_combout\ = !\inst|inst1|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst~q\,
	combout => \inst|inst1|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X30_Y11_N18
\inst|inst1|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst~feeder_combout\ = \inst|inst1|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst~0_combout\,
	combout => \inst|inst1|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X30_Y11_N19
\inst|inst1|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst9|inst~q\,
	d => \inst|inst1|inst24|inst4|inst~feeder_combout\,
	clrn => \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst~q\);

-- Location: LCCOMB_X30_Y11_N12
\inst|inst1|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst7~0_combout\ = \inst|inst1|inst24|inst4|inst7~q\ $ (\inst|inst1|inst24|inst4|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst4|inst7~q\,
	datac => \inst|inst1|inst24|inst4|inst~q\,
	combout => \inst|inst1|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X30_Y11_N14
\inst|inst1|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst7~feeder_combout\ = \inst|inst1|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst4|inst7~0_combout\,
	combout => \inst|inst1|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X30_Y11_N15
\inst|inst1|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst9|inst~q\,
	d => \inst|inst1|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X30_Y11_N4
\inst|inst1|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst8~0_combout\ = \inst|inst1|inst24|inst4|inst8~q\ $ (((\inst|inst1|inst24|inst4|inst7~q\ & \inst|inst1|inst24|inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst7~q\,
	datab => \inst|inst1|inst24|inst4|inst~q\,
	datac => \inst|inst1|inst24|inst4|inst8~q\,
	combout => \inst|inst1|inst24|inst4|inst8~0_combout\);

-- Location: FF_X30_Y11_N5
\inst|inst1|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst9|inst~q\,
	d => \inst|inst1|inst24|inst4|inst8~0_combout\,
	clrn => \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X30_Y11_N16
\inst|inst1|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst29~0_combout\ = (\inst|inst1|inst24|inst4|inst8~q\ & (\inst|inst1|inst24|inst4|inst7~q\ & \inst|inst1|inst24|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst4|inst8~q\,
	datac => \inst|inst1|inst24|inst4|inst7~q\,
	datad => \inst|inst1|inst24|inst4|inst~q\,
	combout => \inst|inst1|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X30_Y11_N0
\inst|inst1|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst9~0_combout\ = \inst|inst1|inst24|inst4|inst9~q\ $ (((\inst|inst1|inst24|inst4|inst7~q\ & (\inst|inst1|inst24|inst4|inst~q\ & \inst|inst1|inst24|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst7~q\,
	datab => \inst|inst1|inst24|inst4|inst~q\,
	datac => \inst|inst1|inst24|inst4|inst9~q\,
	datad => \inst|inst1|inst24|inst4|inst8~q\,
	combout => \inst|inst1|inst24|inst4|inst9~0_combout\);

-- Location: FF_X30_Y11_N1
\inst|inst1|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst9|inst~q\,
	d => \inst|inst1|inst24|inst4|inst9~0_combout\,
	clrn => \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X30_Y11_N2
\inst|inst1|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst14~0_combout\ = \inst|inst1|inst24|inst4|inst14~q\ $ (((\inst|inst1|inst24|inst4|inst29~0_combout\ & \inst|inst1|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst29~0_combout\,
	datac => \inst|inst1|inst24|inst4|inst14~q\,
	datad => \inst|inst1|inst24|inst4|inst9~q\,
	combout => \inst|inst1|inst24|inst4|inst14~0_combout\);

-- Location: FF_X30_Y11_N3
\inst|inst1|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst9|inst~q\,
	d => \inst|inst1|inst24|inst4|inst14~0_combout\,
	clrn => \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X30_Y11_N6
\inst|inst1|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst17~0_combout\ = \inst|inst1|inst24|inst4|inst17~q\ $ (((\inst|inst1|inst24|inst4|inst29~0_combout\ & (\inst|inst1|inst24|inst4|inst14~q\ & \inst|inst1|inst24|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst29~0_combout\,
	datab => \inst|inst1|inst24|inst4|inst14~q\,
	datac => \inst|inst1|inst24|inst4|inst17~q\,
	datad => \inst|inst1|inst24|inst4|inst9~q\,
	combout => \inst|inst1|inst24|inst4|inst17~0_combout\);

-- Location: FF_X30_Y11_N7
\inst|inst1|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst9|inst~q\,
	d => \inst|inst1|inst24|inst4|inst17~0_combout\,
	clrn => \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X30_Y11_N20
\inst|inst1|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst18~combout\ = (\inst|inst1|inst24|inst4|inst17~q\ & (\inst|inst1|inst24|inst4|inst9~q\ & (\inst|inst1|inst24|inst4|inst29~0_combout\ & \inst|inst1|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst17~q\,
	datab => \inst|inst1|inst24|inst4|inst9~q\,
	datac => \inst|inst1|inst24|inst4|inst29~0_combout\,
	datad => \inst|inst1|inst24|inst4|inst14~q\,
	combout => \inst|inst1|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X30_Y11_N8
\inst|inst1|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst19~0_combout\ = \inst|inst1|inst24|inst4|inst18~combout\ $ (\inst|inst1|inst24|inst4|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst18~combout\,
	datac => \inst|inst1|inst24|inst4|inst19~q\,
	combout => \inst|inst1|inst24|inst4|inst19~0_combout\);

-- Location: FF_X30_Y11_N9
\inst|inst1|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst9|inst~q\,
	d => \inst|inst1|inst24|inst4|inst19~0_combout\,
	clrn => \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X30_Y11_N22
\inst|inst1|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst21~0_combout\ = \inst|inst1|inst24|inst4|inst21~q\ $ (((\inst|inst1|inst24|inst4|inst18~combout\ & \inst|inst1|inst24|inst4|inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst18~combout\,
	datac => \inst|inst1|inst24|inst4|inst21~q\,
	datad => \inst|inst1|inst24|inst4|inst19~q\,
	combout => \inst|inst1|inst24|inst4|inst21~0_combout\);

-- Location: FF_X30_Y11_N23
\inst|inst1|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst9|inst~q\,
	d => \inst|inst1|inst24|inst4|inst21~0_combout\,
	clrn => \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X30_Y11_N26
\inst|inst1|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst29~1_combout\ = (!\inst|inst1|inst24|inst4|inst17~q\ & (!\inst|inst1|inst24|inst4|inst19~q\ & (!\inst|inst1|inst24|inst4|inst21~q\ & !\inst|inst1|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst17~q\,
	datab => \inst|inst1|inst24|inst4|inst19~q\,
	datac => \inst|inst1|inst24|inst4|inst21~q\,
	datad => \inst|inst1|inst24|inst4|inst14~q\,
	combout => \inst|inst1|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X30_Y11_N30
\inst|inst1|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst29~combout\ = LCELL((\inst|inst1|inst24|inst4|inst29~0_combout\ & (\inst|inst1|inst24|inst4|inst29~1_combout\ & !\inst|inst1|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst4|inst29~0_combout\,
	datac => \inst|inst1|inst24|inst4|inst29~1_combout\,
	datad => \inst|inst1|inst24|inst4|inst9~q\,
	combout => \inst|inst1|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X30_Y11_N28
\inst|inst1|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst4~0_combout\ = !\inst|inst1|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|inst24|inst4|inst4~q\,
	combout => \inst|inst1|inst24|inst4|inst4~0_combout\);

-- Location: LCCOMB_X30_Y11_N10
\inst|inst1|inst24|inst4|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst4~feeder_combout\ = \inst|inst1|inst24|inst4|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst4|inst4~0_combout\,
	combout => \inst|inst1|inst24|inst4|inst4~feeder_combout\);

-- Location: FF_X30_Y11_N11
\inst|inst1|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst4|inst29~combout\,
	d => \inst|inst1|inst24|inst4|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X29_Y11_N0
\inst|inst1|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst25|inst~0_combout\ = !\inst|inst1|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst25|inst~q\,
	combout => \inst|inst1|inst25|inst~0_combout\);

-- Location: LCCOMB_X29_Y11_N24
\inst|inst1|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst25|inst~feeder_combout\ = \inst|inst1|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst25|inst~0_combout\,
	combout => \inst|inst1|inst25|inst~feeder_combout\);

-- Location: FF_X29_Y11_N25
\inst|inst1|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst4|inst4~q\,
	d => \inst|inst1|inst25|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst25|inst~q\);

-- Location: LCCOMB_X29_Y11_N16
\inst|inst1|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst26|inst~0_combout\ = !\inst|inst1|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst26|inst~q\,
	combout => \inst|inst1|inst26|inst~0_combout\);

-- Location: LCCOMB_X29_Y11_N14
\inst|inst1|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst26|inst~feeder_combout\ = \inst|inst1|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst26|inst~0_combout\,
	combout => \inst|inst1|inst26|inst~feeder_combout\);

-- Location: FF_X29_Y11_N15
\inst|inst1|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst25|ALT_INV_inst~q\,
	d => \inst|inst1|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst26|inst~q\);

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

-- Location: LCCOMB_X28_Y11_N16
\inst|inst1|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|dasda~0_combout\ = !\KEY1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY1~input_o\,
	combout => \inst|inst1|dasda~0_combout\);

-- Location: FF_X28_Y11_N17
\inst|inst1|dasda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst26|inst~q\,
	d => \inst|inst1|dasda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|dasda~q\);

-- Location: LCCOMB_X28_Y11_N6
\inst|inst1|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst29~feeder_combout\ = \inst|inst1|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|dasda~q\,
	combout => \inst|inst1|inst29~feeder_combout\);

-- Location: FF_X28_Y11_N7
\inst|inst1|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst26|inst~q\,
	d => \inst|inst1|inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst29~q\);

-- Location: LCCOMB_X28_Y11_N8
\inst|inst1|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst30~feeder_combout\ = \inst|inst1|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|inst29~q\,
	combout => \inst|inst1|inst30~feeder_combout\);

-- Location: FF_X28_Y11_N9
\inst|inst1|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst26|inst~q\,
	d => \inst|inst1|inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst30~q\);

-- Location: LCCOMB_X28_Y11_N22
\inst|inst1|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst31~feeder_combout\ = \inst|inst1|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst30~q\,
	combout => \inst|inst1|inst31~feeder_combout\);

-- Location: FF_X28_Y11_N23
\inst|inst1|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst26|inst~q\,
	d => \inst|inst1|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst31~q\);

-- Location: LCCOMB_X28_Y11_N20
\inst|inst1|inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst32~feeder_combout\ = \inst|inst1|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst31~q\,
	combout => \inst|inst1|inst32~feeder_combout\);

-- Location: FF_X28_Y11_N21
\inst|inst1|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst26|inst~q\,
	d => \inst|inst1|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst32~q\);

-- Location: LCCOMB_X28_Y11_N28
\inst|inst1|inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst33~feeder_combout\ = \inst|inst1|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|inst32~q\,
	combout => \inst|inst1|inst33~feeder_combout\);

-- Location: FF_X28_Y11_N29
\inst|inst1|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst26|inst~q\,
	d => \inst|inst1|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst33~q\);

-- Location: LCCOMB_X28_Y11_N30
\inst|inst1|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst23~feeder_combout\ = \inst|inst1|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|inst33~q\,
	combout => \inst|inst1|inst23~feeder_combout\);

-- Location: FF_X28_Y11_N31
\inst|inst1|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst26|inst~q\,
	d => \inst|inst1|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst23~q\);

-- Location: FF_X28_Y11_N27
\inst|inst1|1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst26|inst~q\,
	asdata => \inst|inst1|inst23~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|1231~q\);

-- Location: LCCOMB_X28_Y11_N26
\inst|inst1|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst36~1_combout\ = (\inst|inst1|inst23~q\ & (\inst|inst1|inst33~q\ & (\inst|inst1|1231~q\ & \inst|inst1|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst23~q\,
	datab => \inst|inst1|inst33~q\,
	datac => \inst|inst1|1231~q\,
	datad => \inst|inst1|inst32~q\,
	combout => \inst|inst1|inst36~1_combout\);

-- Location: LCCOMB_X28_Y11_N24
\inst|inst1|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst36~0_combout\ = (\inst|inst1|inst29~q\ & (\inst|inst1|inst30~q\ & (\inst|inst1|inst31~q\ & \inst|inst1|dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst29~q\,
	datab => \inst|inst1|inst30~q\,
	datac => \inst|inst1|inst31~q\,
	datad => \inst|inst1|dasda~q\,
	combout => \inst|inst1|inst36~0_combout\);

-- Location: LCCOMB_X28_Y11_N14
\inst|inst1|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst36~combout\ = LCELL((\inst|inst1|inst36~1_combout\ & \inst|inst1|inst36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst36~1_combout\,
	datad => \inst|inst1|inst36~0_combout\,
	combout => \inst|inst1|inst36~combout\);

-- Location: LCCOMB_X28_Y11_N10
\inst|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst~0_combout\ = !\inst|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst~q\,
	combout => \inst|inst10|inst~0_combout\);

-- Location: FF_X28_Y11_N15
\inst|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst36~combout\,
	asdata => \inst|inst10|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10|inst~q\);

-- Location: LCCOMB_X19_Y11_N30
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

-- Location: LCCOMB_X19_Y11_N14
\inst|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst32~combout\ = LCELL((\inst|inst~q\ & \FPGA_CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst~q\,
	datad => \FPGA_CLK~input_o\,
	combout => \inst|inst32~combout\);

-- Location: LCCOMB_X19_Y8_N30
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

-- Location: LCCOMB_X19_Y8_N28
\inst|inst31|inst|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst|inst~feeder_combout\ = \inst|inst31|inst|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst|inst~feeder_combout\);

-- Location: FF_X19_Y8_N29
\inst|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst32~combout\,
	d => \inst|inst31|inst|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X19_Y8_N14
\inst|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst2|inst~0_combout\ = !\inst|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst2|inst~q\,
	combout => \inst|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X19_Y8_N16
\inst|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X19_Y8_N17
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

-- Location: LCCOMB_X14_Y8_N20
\inst|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst3|inst~0_combout\ = !\inst|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst|inst3|inst~q\,
	combout => \inst|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X14_Y8_N30
\inst|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X14_Y8_N31
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

-- Location: LCCOMB_X14_Y8_N22
\inst|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst4|inst~0_combout\ = !\inst|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst4|inst~q\,
	combout => \inst|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X14_Y8_N28
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

-- Location: FF_X14_Y8_N29
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

-- Location: LCCOMB_X13_Y8_N22
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

-- Location: LCCOMB_X13_Y8_N10
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

-- Location: FF_X13_Y8_N11
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

-- Location: LCCOMB_X13_Y8_N28
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

-- Location: LCCOMB_X13_Y8_N14
\inst|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X13_Y8_N15
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

-- Location: LCCOMB_X12_Y8_N18
\inst|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst7|inst~0_combout\ = !\inst|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst|inst7|inst~q\,
	combout => \inst|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X12_Y8_N20
\inst|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X12_Y8_N21
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

-- Location: LCCOMB_X12_Y8_N14
\inst|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst8|inst~0_combout\ = !\inst|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst8|inst~q\,
	combout => \inst|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X12_Y8_N30
\inst|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X12_Y8_N31
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

-- Location: LCCOMB_X12_Y7_N18
\inst|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst|inst~0_combout\ = !\inst|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst1|inst|inst~q\,
	combout => \inst|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X12_Y7_N2
\inst|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X12_Y7_N3
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

-- Location: LCCOMB_X12_Y7_N4
\inst|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X12_Y7_N14
\inst|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X12_Y7_N15
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

-- Location: LCCOMB_X11_Y7_N22
\inst|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X11_Y7_N4
\inst|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X11_Y7_N5
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

-- Location: LCCOMB_X11_Y7_N28
\inst|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X11_Y7_N0
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

-- Location: FF_X11_Y7_N1
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

-- Location: LCCOMB_X11_Y8_N18
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

-- Location: LCCOMB_X11_Y8_N28
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

-- Location: FF_X11_Y8_N29
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

-- Location: LCCOMB_X11_Y8_N4
\inst|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X11_Y8_N16
\inst|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X11_Y8_N17
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

-- Location: LCCOMB_X10_Y8_N18
\inst|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X10_Y8_N24
\inst|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X10_Y8_N25
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

-- Location: LCCOMB_X10_Y8_N4
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

-- Location: LCCOMB_X10_Y8_N14
\inst|inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X10_Y8_N15
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

-- Location: LCCOMB_X9_Y8_N12
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

-- Location: LCCOMB_X9_Y8_N14
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

-- Location: FF_X9_Y8_N15
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

-- Location: LCCOMB_X9_Y8_N28
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

-- Location: LCCOMB_X9_Y8_N16
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

-- Location: FF_X9_Y8_N17
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

-- Location: LCCOMB_X16_Y8_N30
\inst|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst7|inst~0_combout\ = !\inst|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst7|inst~q\,
	combout => \inst|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X16_Y8_N14
\inst|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst7|inst~feeder_combout\ = \inst|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst7|inst~0_combout\,
	combout => \inst|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X16_Y8_N15
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

-- Location: LCCOMB_X16_Y8_N22
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

-- Location: LCCOMB_X16_Y8_N16
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

-- Location: FF_X16_Y8_N17
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

-- Location: LCCOMB_X17_Y8_N18
\inst|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst9|inst~0_combout\ = !\inst|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst9|inst~q\,
	combout => \inst|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst9|inst~feeder_combout\ = \inst|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst9|inst~0_combout\,
	combout => \inst|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X17_Y8_N25
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

-- Location: LCCOMB_X17_Y8_N4
\inst|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst10|inst~0_combout\ = !\inst|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst10|inst~q\,
	combout => \inst|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X17_Y8_N22
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

-- Location: FF_X17_Y8_N23
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

-- Location: LCCOMB_X17_Y11_N8
\inst|inst31|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst~0_combout\ = !\inst|inst31|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst13|inst~q\,
	combout => \inst|inst31|inst13|inst~0_combout\);

-- Location: LCCOMB_X17_Y11_N18
\inst|inst31|inst13|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst~feeder_combout\ = \inst|inst31|inst13|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst~0_combout\,
	combout => \inst|inst31|inst13|inst~feeder_combout\);

-- Location: FF_X17_Y11_N19
\inst|inst31|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst~feeder_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst~q\);

-- Location: LCCOMB_X17_Y11_N16
\inst|inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst7~0_combout\ = \inst|inst31|inst13|inst~q\ $ (\inst|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst13|inst~q\,
	datac => \inst|inst31|inst13|inst7~q\,
	combout => \inst|inst31|inst13|inst7~0_combout\);

-- Location: FF_X17_Y11_N9
\inst|inst31|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	asdata => \inst|inst31|inst13|inst7~0_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst7~q\);

-- Location: LCCOMB_X17_Y11_N22
\inst|inst31|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst8~0_combout\ = \inst|inst31|inst13|inst8~q\ $ (((\inst|inst31|inst13|inst7~q\ & \inst|inst31|inst13|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst7~q\,
	datac => \inst|inst31|inst13|inst8~q\,
	datad => \inst|inst31|inst13|inst~q\,
	combout => \inst|inst31|inst13|inst8~0_combout\);

-- Location: FF_X17_Y11_N23
\inst|inst31|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst8~0_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst8~q\);

-- Location: LCCOMB_X17_Y11_N26
\inst|inst31|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst9~0_combout\ = \inst|inst31|inst13|inst9~q\ $ (((\inst|inst31|inst13|inst8~q\ & (\inst|inst31|inst13|inst7~q\ & \inst|inst31|inst13|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst8~q\,
	datab => \inst|inst31|inst13|inst7~q\,
	datac => \inst|inst31|inst13|inst9~q\,
	datad => \inst|inst31|inst13|inst~q\,
	combout => \inst|inst31|inst13|inst9~0_combout\);

-- Location: FF_X17_Y11_N27
\inst|inst31|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst9~0_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst9~q\);

-- Location: LCCOMB_X17_Y11_N24
\inst|inst31|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst5~0_combout\ = (\inst|inst31|inst13|inst7~q\ & \inst|inst31|inst13|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst13|inst7~q\,
	datad => \inst|inst31|inst13|inst~q\,
	combout => \inst|inst31|inst13|inst5~0_combout\);

-- Location: LCCOMB_X17_Y11_N12
\inst|inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst14~0_combout\ = \inst|inst31|inst13|inst14~q\ $ (((\inst|inst31|inst13|inst9~q\ & (\inst|inst31|inst13|inst5~0_combout\ & \inst|inst31|inst13|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst9~q\,
	datab => \inst|inst31|inst13|inst5~0_combout\,
	datac => \inst|inst31|inst13|inst14~q\,
	datad => \inst|inst31|inst13|inst8~q\,
	combout => \inst|inst31|inst13|inst14~0_combout\);

-- Location: FF_X17_Y11_N13
\inst|inst31|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst14~0_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst14~q\);

-- Location: LCCOMB_X17_Y11_N20
\inst|inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst16~combout\ = (\inst|inst31|inst13|inst5~0_combout\ & (\inst|inst31|inst13|inst8~q\ & (\inst|inst31|inst13|inst14~q\ & \inst|inst31|inst13|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst5~0_combout\,
	datab => \inst|inst31|inst13|inst8~q\,
	datac => \inst|inst31|inst13|inst14~q\,
	datad => \inst|inst31|inst13|inst9~q\,
	combout => \inst|inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X17_Y11_N14
\inst|inst31|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst17~0_combout\ = \inst|inst31|inst13|inst16~combout\ $ (\inst|inst31|inst13|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst16~combout\,
	datac => \inst|inst31|inst13|inst17~q\,
	combout => \inst|inst31|inst13|inst17~0_combout\);

-- Location: FF_X17_Y11_N15
\inst|inst31|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst17~0_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst17~q\);

-- Location: LCCOMB_X17_Y11_N4
\inst|inst31|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst19~0_combout\ = \inst|inst31|inst13|inst19~q\ $ (((\inst|inst31|inst13|inst16~combout\ & \inst|inst31|inst13|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst16~combout\,
	datab => \inst|inst31|inst13|inst17~q\,
	datac => \inst|inst31|inst13|inst19~q\,
	combout => \inst|inst31|inst13|inst19~0_combout\);

-- Location: FF_X17_Y11_N5
\inst|inst31|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst19~0_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst19~q\);

-- Location: LCCOMB_X17_Y11_N28
\inst|inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst21~0_combout\ = (((!\inst|inst31|inst13|inst14~q\) # (!\inst|inst31|inst13|inst8~q\)) # (!\inst|inst31|inst13|inst19~q\)) # (!\inst|inst31|inst13|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst9~q\,
	datab => \inst|inst31|inst13|inst19~q\,
	datac => \inst|inst31|inst13|inst8~q\,
	datad => \inst|inst31|inst13|inst14~q\,
	combout => \inst|inst31|inst13|inst21~0_combout\);

-- Location: LCCOMB_X17_Y11_N10
\inst|inst31|inst13|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst21~1_combout\ = \inst|inst31|inst13|inst21~q\ $ (((\inst|inst31|inst13|inst5~0_combout\ & (\inst|inst31|inst13|inst17~q\ & !\inst|inst31|inst13|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst5~0_combout\,
	datab => \inst|inst31|inst13|inst17~q\,
	datac => \inst|inst31|inst13|inst21~q\,
	datad => \inst|inst31|inst13|inst21~0_combout\,
	combout => \inst|inst31|inst13|inst21~1_combout\);

-- Location: FF_X17_Y11_N11
\inst|inst31|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst21~1_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst21~q\);

-- Location: LCCOMB_X17_Y11_N30
\inst|inst31|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst29~0_combout\ = (!\inst|inst31|inst13|inst14~q\ & (!\inst|inst31|inst13|inst19~q\ & (!\inst|inst31|inst13|inst17~q\ & !\inst|inst31|inst13|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst14~q\,
	datab => \inst|inst31|inst13|inst19~q\,
	datac => \inst|inst31|inst13|inst17~q\,
	datad => \inst|inst31|inst13|inst21~q\,
	combout => \inst|inst31|inst13|inst29~0_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst|inst31|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst29~combout\ = LCELL((!\inst|inst31|inst13|inst8~q\ & (!\inst|inst31|inst13|inst9~q\ & (\inst|inst31|inst13|inst29~0_combout\ & \inst|inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst8~q\,
	datab => \inst|inst31|inst13|inst9~q\,
	datac => \inst|inst31|inst13|inst29~0_combout\,
	datad => \inst|inst31|inst13|inst5~0_combout\,
	combout => \inst|inst31|inst13|inst29~combout\);

-- Location: LCCOMB_X18_Y11_N10
\inst|inst31|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst4~0_combout\ = !\inst|inst31|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst13|inst4~q\,
	combout => \inst|inst31|inst13|inst4~0_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst|inst31|inst13|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst4~feeder_combout\ = \inst|inst31|inst13|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst13|inst4~0_combout\,
	combout => \inst|inst31|inst13|inst4~feeder_combout\);

-- Location: FF_X18_Y11_N23
\inst|inst31|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst13|inst29~combout\,
	d => \inst|inst31|inst13|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst4~q\);

-- Location: LCCOMB_X18_Y11_N20
\inst|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst17|inst~0_combout\ = !\inst|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|inst~q\,
	combout => \inst|inst17|inst~0_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst17|inst~feeder_combout\ = \inst|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst17|inst~0_combout\,
	combout => \inst|inst17|inst~feeder_combout\);

-- Location: FF_X18_Y11_N29
\inst|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst13|inst4~q\,
	d => \inst|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst17|inst~q\);

-- Location: LCCOMB_X19_Y11_N20
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

-- Location: FF_X19_Y11_N21
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

-- Location: FF_X19_Y11_N31
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst10|inst~q\,
	d => \inst|inst~0_combout\,
	clrn => \inst|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X24_Y21_N28
\inst7|inst1|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst|inst~0_combout\ = !\inst7|inst1|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst|inst|inst~q\,
	combout => \inst7|inst1|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X24_Y21_N16
\inst7|inst1|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst|inst~feeder_combout\ = \inst7|inst1|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst|inst|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X24_Y21_N17
\inst7|inst1|inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst7|inst1|inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X24_Y21_N30
\inst7|inst1|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst2|inst~0_combout\ = !\inst7|inst1|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|inst24|inst|inst2|inst~q\,
	combout => \inst7|inst1|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\inst7|inst1|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst2|inst~feeder_combout\ = \inst7|inst1|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst|inst2|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X24_Y21_N7
\inst7|inst1|inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X25_Y21_N24
\inst7|inst1|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst3|inst~0_combout\ = !\inst7|inst1|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst|inst3|inst~q\,
	combout => \inst7|inst1|inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X25_Y21_N28
\inst7|inst1|inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst3|inst~feeder_combout\ = \inst7|inst1|inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst|inst3|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X25_Y21_N29
\inst7|inst1|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst|inst2|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X25_Y21_N26
\inst7|inst1|inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst4|inst~0_combout\ = !\inst7|inst1|inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst|inst4|inst~q\,
	combout => \inst7|inst1|inst24|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X25_Y21_N30
\inst7|inst1|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst4|inst~feeder_combout\ = \inst7|inst1|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst|inst4|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X25_Y21_N31
\inst7|inst1|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst|inst3|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X28_Y21_N26
\inst7|inst1|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst5|inst~0_combout\ = !\inst7|inst1|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst|inst5|inst~q\,
	combout => \inst7|inst1|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X28_Y21_N12
\inst7|inst1|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst5|inst~feeder_combout\ = \inst7|inst1|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst|inst5|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X28_Y21_N13
\inst7|inst1|inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst|inst4|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X28_Y21_N16
\inst7|inst1|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst6|inst~0_combout\ = !\inst7|inst1|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst|inst6|inst~q\,
	combout => \inst7|inst1|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X28_Y21_N30
\inst7|inst1|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst6|inst~feeder_combout\ = \inst7|inst1|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst|inst6|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X28_Y21_N31
\inst7|inst1|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X28_Y20_N22
\inst7|inst1|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst7|inst~0_combout\ = !\inst7|inst1|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst|inst7|inst~q\,
	combout => \inst7|inst1|inst24|inst|inst7|inst~0_combout\);

-- Location: FF_X28_Y20_N19
\inst7|inst1|inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst|inst6|ALT_INV_inst~q\,
	asdata => \inst7|inst1|inst24|inst|inst7|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X28_Y20_N14
\inst7|inst1|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst8|inst~0_combout\ = !\inst7|inst1|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst|inst8|inst~q\,
	combout => \inst7|inst1|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\inst7|inst1|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst|inst8|inst~feeder_combout\ = \inst7|inst1|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst|inst8|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X28_Y20_N17
\inst7|inst1|inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X29_Y20_N28
\inst7|inst1|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst2|inst~0_combout\ = !\inst7|inst1|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst2|inst~q\,
	combout => \inst7|inst1|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X29_Y20_N16
\inst7|inst1|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst2|inst~feeder_combout\ = \inst7|inst1|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst2|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X29_Y20_N17
\inst7|inst1|inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst|inst8|inst~q\,
	d => \inst7|inst1|inst24|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst2|inst~q\);

-- Location: LCCOMB_X25_Y20_N30
\inst7|inst1|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst3|inst~0_combout\ = !\inst7|inst1|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst3|inst~q\,
	combout => \inst7|inst1|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst7|inst1|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst3|inst~feeder_combout\ = \inst7|inst1|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|inst24|inst3|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X25_Y20_N15
\inst7|inst1|inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst2|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst3|inst~q\);

-- Location: LCCOMB_X25_Y20_N22
\inst7|inst1|inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst7|inst~0_combout\ = !\inst7|inst1|inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|inst24|inst7|inst~q\,
	combout => \inst7|inst1|inst24|inst7|inst~0_combout\);

-- Location: LCCOMB_X25_Y20_N6
\inst7|inst1|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst7|inst~feeder_combout\ = \inst7|inst1|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst7|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X25_Y20_N7
\inst7|inst1|inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst3|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst7|inst~q\);

-- Location: LCCOMB_X26_Y20_N18
\inst7|inst1|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst8|inst~0_combout\ = !\inst7|inst1|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst8|inst~q\,
	combout => \inst7|inst1|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X26_Y20_N16
\inst7|inst1|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst8|inst~feeder_combout\ = \inst7|inst1|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst8|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X26_Y20_N17
\inst7|inst1|inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst7|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst8|inst~q\);

-- Location: LCCOMB_X26_Y20_N12
\inst7|inst1|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst9|inst~0_combout\ = !\inst7|inst1|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst9|inst~q\,
	combout => \inst7|inst1|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X26_Y20_N30
\inst7|inst1|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst9|inst~feeder_combout\ = \inst7|inst1|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst9|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X26_Y20_N31
\inst7|inst1|inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst8|ALT_INV_inst~q\,
	d => \inst7|inst1|inst24|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst9|inst~q\);

-- Location: LCCOMB_X26_Y19_N28
\inst7|inst1|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst~0_combout\ = !\inst7|inst1|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|inst24|inst4|inst~q\,
	combout => \inst7|inst1|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X26_Y19_N10
\inst7|inst1|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst~feeder_combout\ = \inst7|inst1|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst4|inst~0_combout\,
	combout => \inst7|inst1|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X26_Y19_N11
\inst7|inst1|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst9|inst~q\,
	d => \inst7|inst1|inst24|inst4|inst~feeder_combout\,
	clrn => \inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst4|inst~q\);

-- Location: LCCOMB_X26_Y19_N0
\inst7|inst1|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst7~0_combout\ = \inst7|inst1|inst24|inst4|inst~q\ $ (\inst7|inst1|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst4|inst~q\,
	datab => \inst7|inst1|inst24|inst4|inst7~q\,
	combout => \inst7|inst1|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X26_Y19_N14
\inst7|inst1|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst7~feeder_combout\ = \inst7|inst1|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst4|inst7~0_combout\,
	combout => \inst7|inst1|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X26_Y19_N15
\inst7|inst1|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst9|inst~q\,
	d => \inst7|inst1|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X26_Y19_N22
\inst7|inst1|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst8~0_combout\ = \inst7|inst1|inst24|inst4|inst8~q\ $ (((\inst7|inst1|inst24|inst4|inst7~q\ & \inst7|inst1|inst24|inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst4|inst7~q\,
	datac => \inst7|inst1|inst24|inst4|inst8~q\,
	datad => \inst7|inst1|inst24|inst4|inst~q\,
	combout => \inst7|inst1|inst24|inst4|inst8~0_combout\);

-- Location: FF_X26_Y19_N23
\inst7|inst1|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst9|inst~q\,
	d => \inst7|inst1|inst24|inst4|inst8~0_combout\,
	clrn => \inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X26_Y19_N20
\inst7|inst1|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst9~0_combout\ = \inst7|inst1|inst24|inst4|inst9~q\ $ (((\inst7|inst1|inst24|inst4|inst8~q\ & (\inst7|inst1|inst24|inst4|inst7~q\ & \inst7|inst1|inst24|inst4|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst4|inst8~q\,
	datab => \inst7|inst1|inst24|inst4|inst7~q\,
	datac => \inst7|inst1|inst24|inst4|inst9~q\,
	datad => \inst7|inst1|inst24|inst4|inst~q\,
	combout => \inst7|inst1|inst24|inst4|inst9~0_combout\);

-- Location: FF_X26_Y19_N21
\inst7|inst1|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst9|inst~q\,
	d => \inst7|inst1|inst24|inst4|inst9~0_combout\,
	clrn => \inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X26_Y19_N6
\inst7|inst1|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst29~0_combout\ = (\inst7|inst1|inst24|inst4|inst8~q\ & (\inst7|inst1|inst24|inst4|inst7~q\ & \inst7|inst1|inst24|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst4|inst8~q\,
	datac => \inst7|inst1|inst24|inst4|inst7~q\,
	datad => \inst7|inst1|inst24|inst4|inst~q\,
	combout => \inst7|inst1|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X26_Y19_N16
\inst7|inst1|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst14~0_combout\ = \inst7|inst1|inst24|inst4|inst14~q\ $ (((\inst7|inst1|inst24|inst4|inst29~0_combout\ & \inst7|inst1|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst4|inst29~0_combout\,
	datac => \inst7|inst1|inst24|inst4|inst14~q\,
	datad => \inst7|inst1|inst24|inst4|inst9~q\,
	combout => \inst7|inst1|inst24|inst4|inst14~0_combout\);

-- Location: FF_X26_Y19_N17
\inst7|inst1|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst9|inst~q\,
	d => \inst7|inst1|inst24|inst4|inst14~0_combout\,
	clrn => \inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X26_Y19_N26
\inst7|inst1|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst17~0_combout\ = \inst7|inst1|inst24|inst4|inst17~q\ $ (((\inst7|inst1|inst24|inst4|inst29~0_combout\ & (\inst7|inst1|inst24|inst4|inst9~q\ & \inst7|inst1|inst24|inst4|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst4|inst29~0_combout\,
	datab => \inst7|inst1|inst24|inst4|inst9~q\,
	datac => \inst7|inst1|inst24|inst4|inst17~q\,
	datad => \inst7|inst1|inst24|inst4|inst14~q\,
	combout => \inst7|inst1|inst24|inst4|inst17~0_combout\);

-- Location: FF_X26_Y19_N27
\inst7|inst1|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst9|inst~q\,
	d => \inst7|inst1|inst24|inst4|inst17~0_combout\,
	clrn => \inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X26_Y19_N18
\inst7|inst1|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst19~0_combout\ = (!\inst7|inst1|inst24|inst4|inst14~q\) # (!\inst7|inst1|inst24|inst4|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst24|inst4|inst17~q\,
	datad => \inst7|inst1|inst24|inst4|inst14~q\,
	combout => \inst7|inst1|inst24|inst4|inst19~0_combout\);

-- Location: LCCOMB_X26_Y19_N4
\inst7|inst1|inst24|inst4|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst19~1_combout\ = \inst7|inst1|inst24|inst4|inst19~q\ $ (((\inst7|inst1|inst24|inst4|inst29~0_combout\ & (\inst7|inst1|inst24|inst4|inst9~q\ & !\inst7|inst1|inst24|inst4|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst4|inst29~0_combout\,
	datab => \inst7|inst1|inst24|inst4|inst9~q\,
	datac => \inst7|inst1|inst24|inst4|inst19~q\,
	datad => \inst7|inst1|inst24|inst4|inst19~0_combout\,
	combout => \inst7|inst1|inst24|inst4|inst19~1_combout\);

-- Location: FF_X26_Y19_N5
\inst7|inst1|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst9|inst~q\,
	d => \inst7|inst1|inst24|inst4|inst19~1_combout\,
	clrn => \inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X26_Y19_N12
\inst7|inst1|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst18~combout\ = (\inst7|inst1|inst24|inst4|inst17~q\ & (\inst7|inst1|inst24|inst4|inst14~q\ & (\inst7|inst1|inst24|inst4|inst9~q\ & \inst7|inst1|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst4|inst17~q\,
	datab => \inst7|inst1|inst24|inst4|inst14~q\,
	datac => \inst7|inst1|inst24|inst4|inst9~q\,
	datad => \inst7|inst1|inst24|inst4|inst29~0_combout\,
	combout => \inst7|inst1|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X26_Y19_N30
\inst7|inst1|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst21~0_combout\ = \inst7|inst1|inst24|inst4|inst21~q\ $ (((\inst7|inst1|inst24|inst4|inst19~q\ & \inst7|inst1|inst24|inst4|inst18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst4|inst19~q\,
	datab => \inst7|inst1|inst24|inst4|inst18~combout\,
	datac => \inst7|inst1|inst24|inst4|inst21~q\,
	combout => \inst7|inst1|inst24|inst4|inst21~0_combout\);

-- Location: FF_X26_Y19_N31
\inst7|inst1|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst9|inst~q\,
	d => \inst7|inst1|inst24|inst4|inst21~0_combout\,
	clrn => \inst7|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X26_Y19_N8
\inst7|inst1|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst29~1_combout\ = (!\inst7|inst1|inst24|inst4|inst21~q\ & (!\inst7|inst1|inst24|inst4|inst19~q\ & (!\inst7|inst1|inst24|inst4|inst17~q\ & !\inst7|inst1|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst24|inst4|inst21~q\,
	datab => \inst7|inst1|inst24|inst4|inst19~q\,
	datac => \inst7|inst1|inst24|inst4|inst17~q\,
	datad => \inst7|inst1|inst24|inst4|inst14~q\,
	combout => \inst7|inst1|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst7|inst1|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst29~combout\ = LCELL((!\inst7|inst1|inst24|inst4|inst9~q\ & (\inst7|inst1|inst24|inst4|inst29~1_combout\ & \inst7|inst1|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst4|inst9~q\,
	datac => \inst7|inst1|inst24|inst4|inst29~1_combout\,
	datad => \inst7|inst1|inst24|inst4|inst29~0_combout\,
	combout => \inst7|inst1|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X26_Y19_N24
\inst7|inst1|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst24|inst4|inst4~0_combout\ = !\inst7|inst1|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst24|inst4|inst4~q\,
	combout => \inst7|inst1|inst24|inst4|inst4~0_combout\);

-- Location: FF_X26_Y19_N29
\inst7|inst1|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst4|inst29~combout\,
	asdata => \inst7|inst1|inst24|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X26_Y15_N28
\inst7|inst1|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst25|inst~0_combout\ = !\inst7|inst1|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst25|inst~q\,
	combout => \inst7|inst1|inst25|inst~0_combout\);

-- Location: LCCOMB_X26_Y15_N26
\inst7|inst1|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst25|inst~feeder_combout\ = \inst7|inst1|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst25|inst~0_combout\,
	combout => \inst7|inst1|inst25|inst~feeder_combout\);

-- Location: FF_X26_Y15_N27
\inst7|inst1|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst24|inst4|inst4~q\,
	d => \inst7|inst1|inst25|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst25|inst~q\);

-- Location: LCCOMB_X26_Y15_N14
\inst7|inst1|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst26|inst~0_combout\ = !\inst7|inst1|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst1|inst26|inst~q\,
	combout => \inst7|inst1|inst26|inst~0_combout\);

-- Location: LCCOMB_X26_Y15_N30
\inst7|inst1|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst26|inst~feeder_combout\ = \inst7|inst1|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst26|inst~0_combout\,
	combout => \inst7|inst1|inst26|inst~feeder_combout\);

-- Location: FF_X26_Y15_N31
\inst7|inst1|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst25|ALT_INV_inst~q\,
	d => \inst7|inst1|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst26|inst~q\);

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

-- Location: LCCOMB_X26_Y14_N10
\inst7|inst1|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|dasda~0_combout\ = !\KEY3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY3~input_o\,
	combout => \inst7|inst1|dasda~0_combout\);

-- Location: FF_X26_Y14_N11
\inst7|inst1|dasda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst26|inst~q\,
	d => \inst7|inst1|dasda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|dasda~q\);

-- Location: LCCOMB_X26_Y14_N24
\inst7|inst1|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst29~feeder_combout\ = \inst7|inst1|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|dasda~q\,
	combout => \inst7|inst1|inst29~feeder_combout\);

-- Location: FF_X26_Y14_N25
\inst7|inst1|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst26|inst~q\,
	d => \inst7|inst1|inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst29~q\);

-- Location: LCCOMB_X26_Y14_N4
\inst7|inst1|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst30~feeder_combout\ = \inst7|inst1|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|inst29~q\,
	combout => \inst7|inst1|inst30~feeder_combout\);

-- Location: FF_X26_Y14_N5
\inst7|inst1|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst26|inst~q\,
	d => \inst7|inst1|inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst30~q\);

-- Location: LCCOMB_X26_Y14_N30
\inst7|inst1|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst31~feeder_combout\ = \inst7|inst1|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst30~q\,
	combout => \inst7|inst1|inst31~feeder_combout\);

-- Location: FF_X26_Y14_N31
\inst7|inst1|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst26|inst~q\,
	d => \inst7|inst1|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst31~q\);

-- Location: LCCOMB_X26_Y14_N6
\inst7|inst1|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst36~0_combout\ = (\inst7|inst1|dasda~q\ & (\inst7|inst1|inst30~q\ & (\inst7|inst1|inst31~q\ & \inst7|inst1|inst29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|dasda~q\,
	datab => \inst7|inst1|inst30~q\,
	datac => \inst7|inst1|inst31~q\,
	datad => \inst7|inst1|inst29~q\,
	combout => \inst7|inst1|inst36~0_combout\);

-- Location: LCCOMB_X26_Y14_N18
\inst7|inst1|inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst32~feeder_combout\ = \inst7|inst1|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst1|inst31~q\,
	combout => \inst7|inst1|inst32~feeder_combout\);

-- Location: FF_X26_Y14_N19
\inst7|inst1|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst26|inst~q\,
	d => \inst7|inst1|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst32~q\);

-- Location: LCCOMB_X26_Y14_N2
\inst7|inst1|inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst33~feeder_combout\ = \inst7|inst1|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|inst32~q\,
	combout => \inst7|inst1|inst33~feeder_combout\);

-- Location: FF_X26_Y14_N3
\inst7|inst1|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst26|inst~q\,
	d => \inst7|inst1|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst33~q\);

-- Location: LCCOMB_X26_Y14_N22
\inst7|inst1|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst23~feeder_combout\ = \inst7|inst1|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst1|inst33~q\,
	combout => \inst7|inst1|inst23~feeder_combout\);

-- Location: FF_X26_Y14_N23
\inst7|inst1|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst26|inst~q\,
	d => \inst7|inst1|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|inst23~q\);

-- Location: FF_X26_Y14_N13
\inst7|inst1|1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst26|inst~q\,
	asdata => \inst7|inst1|inst23~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst1|1231~q\);

-- Location: LCCOMB_X26_Y14_N12
\inst7|inst1|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst36~1_combout\ = (\inst7|inst1|inst23~q\ & (\inst7|inst1|inst33~q\ & (\inst7|inst1|1231~q\ & \inst7|inst1|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst23~q\,
	datab => \inst7|inst1|inst33~q\,
	datac => \inst7|inst1|1231~q\,
	datad => \inst7|inst1|inst32~q\,
	combout => \inst7|inst1|inst36~1_combout\);

-- Location: LCCOMB_X26_Y14_N28
\inst7|inst1|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst36~combout\ = LCELL((\inst7|inst1|inst36~0_combout\ & \inst7|inst1|inst36~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|inst36~0_combout\,
	datad => \inst7|inst1|inst36~1_combout\,
	combout => \inst7|inst1|inst36~combout\);

-- Location: LCCOMB_X26_Y14_N20
\inst7|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst10|inst~0_combout\ = !\inst7|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst10|inst~q\,
	combout => \inst7|inst10|inst~0_combout\);

-- Location: FF_X26_Y14_N29
\inst7|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst1|inst36~combout\,
	asdata => \inst7|inst10|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst10|inst~q\);

-- Location: LCCOMB_X23_Y14_N30
\inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst~0_combout\ = !\inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst~q\,
	combout => \inst7|inst~0_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst7|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst32~combout\ = LCELL((\inst7|inst~q\ & \FPGA_CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst~q\,
	datad => \FPGA_CLK~input_o\,
	combout => \inst7|inst32~combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst7|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst|inst~0_combout\ = !\inst7|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst|inst|inst|inst~q\,
	combout => \inst7|inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X19_Y13_N29
\inst7|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst32~combout\,
	asdata => \inst7|inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X19_Y13_N30
\inst7|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst2|inst~0_combout\ = !\inst7|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst|inst2|inst~q\,
	combout => \inst7|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst7|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst7|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst7|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X19_Y13_N27
\inst7|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X18_Y13_N18
\inst7|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst3|inst~0_combout\ = !\inst7|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst|inst|inst3|inst~q\,
	combout => \inst7|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X18_Y13_N16
\inst7|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst7|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst7|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X18_Y13_N17
\inst7|inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X18_Y13_N10
\inst7|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst4|inst~0_combout\ = !\inst7|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst|inst4|inst~q\,
	combout => \inst7|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X18_Y13_N2
\inst7|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst7|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst7|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X18_Y13_N3
\inst7|inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X17_Y13_N18
\inst7|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst5|inst~0_combout\ = !\inst7|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst|inst|inst5|inst~q\,
	combout => \inst7|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X17_Y13_N20
\inst7|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst7|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst7|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X17_Y13_N21
\inst7|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X17_Y13_N4
\inst7|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst6|inst~0_combout\ = !\inst7|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst|inst|inst6|inst~q\,
	combout => \inst7|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\inst7|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst7|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst7|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X17_Y13_N15
\inst7|inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X16_Y13_N22
\inst7|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst7|inst~0_combout\ = !\inst7|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst|inst|inst7|inst~q\,
	combout => \inst7|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X16_Y13_N14
\inst7|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst7|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst7|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X16_Y13_N15
\inst7|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X16_Y13_N26
\inst7|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst8|inst~0_combout\ = !\inst7|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst|inst8|inst~q\,
	combout => \inst7|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X16_Y13_N28
\inst7|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst7|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst7|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X16_Y13_N29
\inst7|inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X16_Y17_N6
\inst7|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst|inst~0_combout\ = !\inst7|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst|inst1|inst|inst~q\,
	combout => \inst7|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X16_Y17_N20
\inst7|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst7|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst7|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X16_Y17_N21
\inst7|inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst|inst8|inst~q\,
	d => \inst7|inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X16_Y17_N14
\inst7|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst7|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst7|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X16_Y17_N30
\inst7|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst7|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst7|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X16_Y17_N31
\inst7|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X17_Y17_N18
\inst7|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst7|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst7|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X17_Y17_N28
\inst7|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst7|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst7|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X17_Y17_N29
\inst7|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X17_Y17_N4
\inst7|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst7|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst7|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X17_Y17_N0
\inst7|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst7|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst7|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X17_Y17_N1
\inst7|inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X16_Y20_N20
\inst7|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst7|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst7|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X16_Y20_N18
\inst7|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst7|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst7|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X16_Y20_N19
\inst7|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X16_Y20_N16
\inst7|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst7|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst7|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X16_Y20_N14
\inst7|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst7|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst7|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X16_Y20_N15
\inst7|inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X17_Y20_N18
\inst7|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst7|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst7|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X17_Y20_N24
\inst7|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst7|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst7|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X17_Y20_N25
\inst7|inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X17_Y20_N4
\inst7|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst7|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst7|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X17_Y20_N14
\inst7|inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst7|inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst7|inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X17_Y20_N15
\inst7|inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst7|inst31|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X18_Y20_N18
\inst7|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst2|inst~0_combout\ = !\inst7|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst2|inst~q\,
	combout => \inst7|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X18_Y20_N14
\inst7|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst2|inst~feeder_combout\ = \inst7|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst2|inst~0_combout\,
	combout => \inst7|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X18_Y20_N15
\inst7|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst7|inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst2|inst~q\);

-- Location: LCCOMB_X18_Y20_N26
\inst7|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst3|inst~0_combout\ = !\inst7|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst3|inst~q\,
	combout => \inst7|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X18_Y20_N12
\inst7|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst3|inst~feeder_combout\ = \inst7|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst3|inst~0_combout\,
	combout => \inst7|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X18_Y20_N13
\inst7|inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst2|ALT_INV_inst~q\,
	d => \inst7|inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst3|inst~q\);

-- Location: LCCOMB_X21_Y18_N10
\inst7|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst7|inst~0_combout\ = !\inst7|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst7|inst~q\,
	combout => \inst7|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X21_Y18_N30
\inst7|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst7|inst~feeder_combout\ = \inst7|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst7|inst~0_combout\,
	combout => \inst7|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X21_Y18_N31
\inst7|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst3|ALT_INV_inst~q\,
	d => \inst7|inst31|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst7|inst~q\);

-- Location: LCCOMB_X21_Y18_N16
\inst7|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst8|inst~0_combout\ = !\inst7|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst8|inst~q\,
	combout => \inst7|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X21_Y18_N14
\inst7|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst8|inst~feeder_combout\ = \inst7|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst8|inst~0_combout\,
	combout => \inst7|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X21_Y18_N15
\inst7|inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst7|ALT_INV_inst~q\,
	d => \inst7|inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst8|inst~q\);

-- Location: LCCOMB_X22_Y18_N4
\inst7|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst9|inst~0_combout\ = !\inst7|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst9|inst~q\,
	combout => \inst7|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst7|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst9|inst~feeder_combout\ = \inst7|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst9|inst~0_combout\,
	combout => \inst7|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X22_Y18_N13
\inst7|inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst8|ALT_INV_inst~q\,
	d => \inst7|inst31|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst9|inst~q\);

-- Location: LCCOMB_X22_Y18_N28
\inst7|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst10|inst~0_combout\ = !\inst7|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst10|inst~q\,
	combout => \inst7|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst7|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst10|inst~feeder_combout\ = \inst7|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst10|inst~0_combout\,
	combout => \inst7|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X22_Y18_N31
\inst7|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst9|ALT_INV_inst~q\,
	d => \inst7|inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst10|inst~q\);

-- Location: LCCOMB_X23_Y18_N8
\inst7|inst31|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst~0_combout\ = !\inst7|inst31|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst13|inst~q\,
	combout => \inst7|inst31|inst13|inst~0_combout\);

-- Location: LCCOMB_X23_Y18_N22
\inst7|inst31|inst13|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst~feeder_combout\ = \inst7|inst31|inst13|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst13|inst~0_combout\,
	combout => \inst7|inst31|inst13|inst~feeder_combout\);

-- Location: FF_X23_Y18_N23
\inst7|inst31|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst10|inst~q\,
	d => \inst7|inst31|inst13|inst~feeder_combout\,
	clrn => \inst7|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst13|inst~q\);

-- Location: LCCOMB_X23_Y18_N14
\inst7|inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst7~0_combout\ = \inst7|inst31|inst13|inst~q\ $ (\inst7|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst13|inst~q\,
	datad => \inst7|inst31|inst13|inst7~q\,
	combout => \inst7|inst31|inst13|inst7~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst7|inst31|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst7~feeder_combout\ = \inst7|inst31|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst13|inst7~0_combout\,
	combout => \inst7|inst31|inst13|inst7~feeder_combout\);

-- Location: FF_X23_Y18_N25
\inst7|inst31|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst10|inst~q\,
	d => \inst7|inst31|inst13|inst7~feeder_combout\,
	clrn => \inst7|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst13|inst7~q\);

-- Location: LCCOMB_X23_Y18_N4
\inst7|inst31|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst8~0_combout\ = \inst7|inst31|inst13|inst8~q\ $ (((\inst7|inst31|inst13|inst~q\ & \inst7|inst31|inst13|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst13|inst~q\,
	datac => \inst7|inst31|inst13|inst8~q\,
	datad => \inst7|inst31|inst13|inst7~q\,
	combout => \inst7|inst31|inst13|inst8~0_combout\);

-- Location: FF_X23_Y18_N5
\inst7|inst31|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst10|inst~q\,
	d => \inst7|inst31|inst13|inst8~0_combout\,
	clrn => \inst7|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst13|inst8~q\);

-- Location: LCCOMB_X23_Y18_N12
\inst7|inst31|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst9~0_combout\ = \inst7|inst31|inst13|inst9~q\ $ (((\inst7|inst31|inst13|inst~q\ & (\inst7|inst31|inst13|inst7~q\ & \inst7|inst31|inst13|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst13|inst~q\,
	datab => \inst7|inst31|inst13|inst7~q\,
	datac => \inst7|inst31|inst13|inst9~q\,
	datad => \inst7|inst31|inst13|inst8~q\,
	combout => \inst7|inst31|inst13|inst9~0_combout\);

-- Location: FF_X23_Y18_N13
\inst7|inst31|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst10|inst~q\,
	d => \inst7|inst31|inst13|inst9~0_combout\,
	clrn => \inst7|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst13|inst9~q\);

-- Location: LCCOMB_X23_Y18_N2
\inst7|inst31|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst5~0_combout\ = (\inst7|inst31|inst13|inst~q\ & \inst7|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst13|inst~q\,
	datad => \inst7|inst31|inst13|inst7~q\,
	combout => \inst7|inst31|inst13|inst5~0_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst7|inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst14~0_combout\ = \inst7|inst31|inst13|inst14~q\ $ (((\inst7|inst31|inst13|inst5~0_combout\ & (\inst7|inst31|inst13|inst9~q\ & \inst7|inst31|inst13|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst13|inst5~0_combout\,
	datab => \inst7|inst31|inst13|inst9~q\,
	datac => \inst7|inst31|inst13|inst14~q\,
	datad => \inst7|inst31|inst13|inst8~q\,
	combout => \inst7|inst31|inst13|inst14~0_combout\);

-- Location: FF_X23_Y18_N21
\inst7|inst31|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst10|inst~q\,
	d => \inst7|inst31|inst13|inst14~0_combout\,
	clrn => \inst7|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst13|inst14~q\);

-- Location: LCCOMB_X23_Y18_N28
\inst7|inst31|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst17~0_combout\ = (!\inst7|inst31|inst13|inst14~q\) # (!\inst7|inst31|inst13|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst13|inst8~q\,
	datad => \inst7|inst31|inst13|inst14~q\,
	combout => \inst7|inst31|inst13|inst17~0_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst7|inst31|inst13|inst17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst17~1_combout\ = \inst7|inst31|inst13|inst17~q\ $ (((\inst7|inst31|inst13|inst5~0_combout\ & (\inst7|inst31|inst13|inst9~q\ & !\inst7|inst31|inst13|inst17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst13|inst5~0_combout\,
	datab => \inst7|inst31|inst13|inst9~q\,
	datac => \inst7|inst31|inst13|inst17~q\,
	datad => \inst7|inst31|inst13|inst17~0_combout\,
	combout => \inst7|inst31|inst13|inst17~1_combout\);

-- Location: FF_X23_Y18_N19
\inst7|inst31|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst10|inst~q\,
	d => \inst7|inst31|inst13|inst17~1_combout\,
	clrn => \inst7|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst13|inst17~q\);

-- Location: LCCOMB_X23_Y18_N16
\inst7|inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst16~combout\ = (\inst7|inst31|inst13|inst9~q\ & (\inst7|inst31|inst13|inst8~q\ & (\inst7|inst31|inst13|inst5~0_combout\ & \inst7|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst13|inst9~q\,
	datab => \inst7|inst31|inst13|inst8~q\,
	datac => \inst7|inst31|inst13|inst5~0_combout\,
	datad => \inst7|inst31|inst13|inst14~q\,
	combout => \inst7|inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst7|inst31|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst19~0_combout\ = \inst7|inst31|inst13|inst19~q\ $ (((\inst7|inst31|inst13|inst17~q\ & \inst7|inst31|inst13|inst16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst31|inst13|inst17~q\,
	datac => \inst7|inst31|inst13|inst19~q\,
	datad => \inst7|inst31|inst13|inst16~combout\,
	combout => \inst7|inst31|inst13|inst19~0_combout\);

-- Location: FF_X23_Y18_N11
\inst7|inst31|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst10|inst~q\,
	d => \inst7|inst31|inst13|inst19~0_combout\,
	clrn => \inst7|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst13|inst19~q\);

-- Location: LCCOMB_X23_Y18_N26
\inst7|inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst21~0_combout\ = \inst7|inst31|inst13|inst21~q\ $ (((\inst7|inst31|inst13|inst19~q\ & (\inst7|inst31|inst13|inst17~q\ & \inst7|inst31|inst13|inst16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst13|inst19~q\,
	datab => \inst7|inst31|inst13|inst17~q\,
	datac => \inst7|inst31|inst13|inst21~q\,
	datad => \inst7|inst31|inst13|inst16~combout\,
	combout => \inst7|inst31|inst13|inst21~0_combout\);

-- Location: FF_X23_Y18_N27
\inst7|inst31|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst10|inst~q\,
	d => \inst7|inst31|inst13|inst21~0_combout\,
	clrn => \inst7|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst13|inst21~q\);

-- Location: LCCOMB_X23_Y18_N30
\inst7|inst31|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst29~0_combout\ = (!\inst7|inst31|inst13|inst19~q\ & (!\inst7|inst31|inst13|inst17~q\ & (!\inst7|inst31|inst13|inst21~q\ & !\inst7|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst13|inst19~q\,
	datab => \inst7|inst31|inst13|inst17~q\,
	datac => \inst7|inst31|inst13|inst21~q\,
	datad => \inst7|inst31|inst13|inst14~q\,
	combout => \inst7|inst31|inst13|inst29~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst7|inst31|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst29~combout\ = LCELL((!\inst7|inst31|inst13|inst9~q\ & (!\inst7|inst31|inst13|inst8~q\ & (\inst7|inst31|inst13|inst29~0_combout\ & \inst7|inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst31|inst13|inst9~q\,
	datab => \inst7|inst31|inst13|inst8~q\,
	datac => \inst7|inst31|inst13|inst29~0_combout\,
	datad => \inst7|inst31|inst13|inst5~0_combout\,
	combout => \inst7|inst31|inst13|inst29~combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst7|inst31|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31|inst13|inst4~0_combout\ = !\inst7|inst31|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst31|inst13|inst4~q\,
	combout => \inst7|inst31|inst13|inst4~0_combout\);

-- Location: FF_X24_Y18_N15
\inst7|inst31|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst13|inst29~combout\,
	asdata => \inst7|inst31|inst13|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst31|inst13|inst4~q\);

-- Location: LCCOMB_X24_Y18_N4
\inst7|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst17|inst~0_combout\ = !\inst7|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst17|inst~q\,
	combout => \inst7|inst17|inst~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst7|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst17|inst~feeder_combout\ = \inst7|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst17|inst~0_combout\,
	combout => \inst7|inst17|inst~feeder_combout\);

-- Location: FF_X24_Y18_N29
\inst7|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst31|inst13|inst4~q\,
	d => \inst7|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst17|inst~q\);

-- Location: LCCOMB_X23_Y14_N20
\inst7|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst7|inst3|inst~feeder_combout\);

-- Location: FF_X23_Y14_N21
\inst7|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst17|ALT_INV_inst~q\,
	d => \inst7|inst3|inst~feeder_combout\,
	clrn => \inst7|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|inst~q\);

-- Location: FF_X23_Y14_N31
\inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|inst10|inst~q\,
	d => \inst7|inst~0_combout\,
	clrn => \inst7|inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst~q\);

-- Location: LCCOMB_X8_Y11_N28
\inst3|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst|inst~0_combout\ = !\inst3|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst|inst~q\,
	combout => \inst3|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X8_Y11_N24
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

-- Location: FF_X8_Y11_N25
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

-- Location: LCCOMB_X8_Y11_N16
\inst3|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst2|inst~0_combout\ = !\inst3|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst|inst2|inst~q\,
	combout => \inst3|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X8_Y11_N6
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

-- Location: FF_X8_Y11_N7
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

-- Location: LCCOMB_X9_Y11_N20
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

-- Location: LCCOMB_X9_Y11_N28
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

-- Location: FF_X9_Y11_N29
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

-- Location: LCCOMB_X9_Y11_N30
\inst3|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst4|inst~0_combout\ = !\inst3|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst|inst4|inst~q\,
	combout => \inst3|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X9_Y11_N6
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

-- Location: FF_X9_Y11_N7
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

-- Location: LCCOMB_X10_Y11_N18
\inst3|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst5|inst~0_combout\ = !\inst3|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst5|inst~q\,
	combout => \inst3|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X10_Y11_N6
\inst3|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst5|inst~feeder_combout\ = \inst3|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst5|inst~0_combout\,
	combout => \inst3|inst|inst5|inst~feeder_combout\);

-- Location: FF_X10_Y11_N7
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

-- Location: LCCOMB_X11_Y11_N10
\inst3|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst6|inst~0_combout\ = !\inst3|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst6|inst~q\,
	combout => \inst3|inst|inst6|inst~0_combout\);

-- Location: FF_X11_Y11_N5
\inst3|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst|inst5|ALT_INV_inst~q\,
	asdata => \inst3|inst|inst6|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|inst6|inst~q\);

-- Location: LCCOMB_X11_Y11_N16
\inst3|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst7|inst~0_combout\ = !\inst3|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst7|inst~q\,
	combout => \inst3|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X11_Y11_N14
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

-- Location: FF_X11_Y11_N15
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

-- Location: LCCOMB_X11_Y13_N18
\inst3|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst8|inst~0_combout\ = !\inst3|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|inst8|inst~q\,
	combout => \inst3|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X11_Y13_N8
\inst3|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst8|inst~feeder_combout\ = \inst3|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst8|inst~0_combout\,
	combout => \inst3|inst|inst8|inst~feeder_combout\);

-- Location: FF_X11_Y13_N9
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

-- Location: LCCOMB_X11_Y13_N10
\inst3|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst~0_combout\ = !\inst3|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|inst~q\,
	combout => \inst3|inst2|inst~0_combout\);

-- Location: LCCOMB_X11_Y13_N6
\inst3|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst~feeder_combout\ = \inst3|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|inst~0_combout\,
	combout => \inst3|inst2|inst~feeder_combout\);

-- Location: FF_X11_Y13_N7
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

-- Location: LCCOMB_X12_Y13_N14
\inst3|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|inst~0_combout\ = !\inst3|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst9|inst~q\,
	combout => \inst3|inst9|inst~0_combout\);

-- Location: LCCOMB_X12_Y13_N6
\inst3|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst9|inst~feeder_combout\ = \inst3|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst9|inst~0_combout\,
	combout => \inst3|inst9|inst~feeder_combout\);

-- Location: FF_X12_Y13_N7
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

-- Location: LCCOMB_X13_Y13_N20
\inst3|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst~0_combout\ = !\inst3|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst4|inst~q\,
	combout => \inst3|inst4|inst~0_combout\);

-- Location: LCCOMB_X13_Y13_N10
\inst3|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst~feeder_combout\ = \inst3|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst4|inst~0_combout\,
	combout => \inst3|inst4|inst~feeder_combout\);

-- Location: FF_X13_Y13_N11
\inst3|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst4|inst~feeder_combout\,
	clrn => \inst3|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|inst~q\);

-- Location: LCCOMB_X13_Y13_N28
\inst3|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst7~0_combout\ = \inst3|inst4|inst~q\ $ (\inst3|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst4|inst~q\,
	datac => \inst3|inst4|inst7~q\,
	combout => \inst3|inst4|inst7~0_combout\);

-- Location: LCCOMB_X13_Y13_N30
\inst3|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst7~feeder_combout\ = \inst3|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst4|inst7~0_combout\,
	combout => \inst3|inst4|inst7~feeder_combout\);

-- Location: FF_X13_Y13_N31
\inst3|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst4|inst7~feeder_combout\,
	clrn => \inst3|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|inst7~q\);

-- Location: LCCOMB_X13_Y13_N12
\inst3|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst8~0_combout\ = \inst3|inst4|inst8~q\ $ (((\inst3|inst4|inst~q\ & \inst3|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|inst~q\,
	datac => \inst3|inst4|inst8~q\,
	datad => \inst3|inst4|inst7~q\,
	combout => \inst3|inst4|inst8~0_combout\);

-- Location: FF_X13_Y13_N13
\inst3|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst4|inst8~0_combout\,
	clrn => \inst3|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|inst8~q\);

-- Location: LCCOMB_X13_Y13_N8
\inst3|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst9~0_combout\ = \inst3|inst4|inst9~q\ $ (((\inst3|inst4|inst~q\ & (\inst3|inst4|inst7~q\ & \inst3|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|inst~q\,
	datab => \inst3|inst4|inst7~q\,
	datac => \inst3|inst4|inst9~q\,
	datad => \inst3|inst4|inst8~q\,
	combout => \inst3|inst4|inst9~0_combout\);

-- Location: FF_X13_Y13_N9
\inst3|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst4|inst9~0_combout\,
	clrn => \inst3|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|inst9~q\);

-- Location: LCCOMB_X13_Y13_N24
\inst3|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst29~0_combout\ = (\inst3|inst4|inst8~q\ & (\inst3|inst4|inst9~q\ & (\inst3|inst4|inst7~q\ & \inst3|inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|inst8~q\,
	datab => \inst3|inst4|inst9~q\,
	datac => \inst3|inst4|inst7~q\,
	datad => \inst3|inst4|inst~q\,
	combout => \inst3|inst4|inst29~0_combout\);

-- Location: LCCOMB_X13_Y13_N26
\inst3|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst14~0_combout\ = \inst3|inst4|inst29~0_combout\ $ (\inst3|inst4|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst4|inst29~0_combout\,
	datac => \inst3|inst4|inst14~q\,
	combout => \inst3|inst4|inst14~0_combout\);

-- Location: FF_X13_Y13_N27
\inst3|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst4|inst14~0_combout\,
	clrn => \inst3|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|inst14~q\);

-- Location: LCCOMB_X13_Y13_N22
\inst3|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst17~0_combout\ = \inst3|inst4|inst17~q\ $ (((\inst3|inst4|inst14~q\ & \inst3|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|inst14~q\,
	datab => \inst3|inst4|inst29~0_combout\,
	datac => \inst3|inst4|inst17~q\,
	combout => \inst3|inst4|inst17~0_combout\);

-- Location: FF_X13_Y13_N23
\inst3|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst4|inst17~0_combout\,
	clrn => \inst3|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|inst17~q\);

-- Location: LCCOMB_X13_Y13_N16
\inst3|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst19~0_combout\ = \inst3|inst4|inst19~q\ $ (((\inst3|inst4|inst14~q\ & (\inst3|inst4|inst17~q\ & \inst3|inst4|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|inst14~q\,
	datab => \inst3|inst4|inst17~q\,
	datac => \inst3|inst4|inst19~q\,
	datad => \inst3|inst4|inst29~0_combout\,
	combout => \inst3|inst4|inst19~0_combout\);

-- Location: FF_X13_Y13_N17
\inst3|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst4|inst19~0_combout\,
	clrn => \inst3|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|inst19~q\);

-- Location: LCCOMB_X13_Y13_N6
\inst3|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst21~0_combout\ = (!\inst3|inst4|inst19~q\) # (!\inst3|inst4|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst4|inst17~q\,
	datad => \inst3|inst4|inst19~q\,
	combout => \inst3|inst4|inst21~0_combout\);

-- Location: LCCOMB_X13_Y13_N2
\inst3|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst21~1_combout\ = \inst3|inst4|inst21~q\ $ (((\inst3|inst4|inst14~q\ & (\inst3|inst4|inst29~0_combout\ & !\inst3|inst4|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|inst14~q\,
	datab => \inst3|inst4|inst29~0_combout\,
	datac => \inst3|inst4|inst21~q\,
	datad => \inst3|inst4|inst21~0_combout\,
	combout => \inst3|inst4|inst21~1_combout\);

-- Location: FF_X13_Y13_N3
\inst3|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst9|inst~q\,
	d => \inst3|inst4|inst21~1_combout\,
	clrn => \inst3|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|inst21~q\);

-- Location: LCCOMB_X13_Y13_N4
\inst3|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst29~1_combout\ = (\inst3|inst4|inst17~q\ & (!\inst3|inst4|inst19~q\ & (!\inst3|inst4|inst14~q\ & !\inst3|inst4|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|inst17~q\,
	datab => \inst3|inst4|inst19~q\,
	datac => \inst3|inst4|inst14~q\,
	datad => \inst3|inst4|inst21~q\,
	combout => \inst3|inst4|inst29~1_combout\);

-- Location: LCCOMB_X13_Y13_N14
\inst3|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst29~combout\ = LCELL((\inst3|inst4|inst29~1_combout\ & \inst3|inst4|inst29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst4|inst29~1_combout\,
	datad => \inst3|inst4|inst29~0_combout\,
	combout => \inst3|inst4|inst29~combout\);

-- Location: LCCOMB_X13_Y13_N18
\inst3|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst4|inst4~0_combout\ = !\inst3|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst4|inst4~q\,
	combout => \inst3|inst4|inst4~0_combout\);

-- Location: FF_X13_Y13_N19
\inst3|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst4|inst29~combout\,
	d => \inst3|inst4|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|inst4~q\);

-- Location: LCCOMB_X8_Y8_N10
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

-- Location: LCCOMB_X8_Y8_N28
\inst12|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst|inst~feeder_combout\ = \inst12|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst|inst~0_combout\,
	combout => \inst12|inst|inst|inst~feeder_combout\);

-- Location: FF_X8_Y8_N29
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

-- Location: LCCOMB_X8_Y8_N4
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

-- Location: LCCOMB_X8_Y8_N16
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

-- Location: FF_X8_Y8_N17
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

-- Location: LCCOMB_X7_Y8_N10
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

-- Location: LCCOMB_X7_Y8_N18
\inst12|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst3|inst~feeder_combout\ = \inst12|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst3|inst~0_combout\,
	combout => \inst12|inst|inst3|inst~feeder_combout\);

-- Location: FF_X7_Y8_N19
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

-- Location: LCCOMB_X7_Y8_N2
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

-- Location: LCCOMB_X7_Y8_N4
\inst12|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst4|inst~feeder_combout\ = \inst12|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst4|inst~0_combout\,
	combout => \inst12|inst|inst4|inst~feeder_combout\);

-- Location: FF_X7_Y8_N5
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

-- Location: LCCOMB_X7_Y10_N22
\inst12|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst5|inst~0_combout\ = !\inst12|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst5|inst~q\,
	combout => \inst12|inst|inst5|inst~0_combout\);

-- Location: FF_X7_Y10_N21
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

-- Location: LCCOMB_X7_Y10_N16
\inst12|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst6|inst~0_combout\ = !\inst12|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst|inst6|inst~q\,
	combout => \inst12|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X7_Y10_N6
\inst12|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst6|inst~feeder_combout\ = \inst12|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst6|inst~0_combout\,
	combout => \inst12|inst|inst6|inst~feeder_combout\);

-- Location: FF_X7_Y10_N7
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

-- Location: LCCOMB_X8_Y10_N4
\inst12|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst7|inst~0_combout\ = !\inst12|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst7|inst~q\,
	combout => \inst12|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X8_Y10_N6
\inst12|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst7|inst~feeder_combout\ = \inst12|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst7|inst~0_combout\,
	combout => \inst12|inst|inst7|inst~feeder_combout\);

-- Location: FF_X8_Y10_N7
\inst12|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst6|ALT_INV_inst~q\,
	d => \inst12|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst7|inst~q\);

-- Location: LCCOMB_X9_Y10_N16
\inst12|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|inst~0_combout\ = !\inst12|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst8|inst~q\,
	combout => \inst12|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X9_Y10_N10
\inst12|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst8|inst~feeder_combout\ = \inst12|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst8|inst~0_combout\,
	combout => \inst12|inst|inst8|inst~feeder_combout\);

-- Location: FF_X9_Y10_N11
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

-- Location: LCCOMB_X9_Y10_N24
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

-- Location: LCCOMB_X9_Y10_N2
\inst12|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst2|inst~feeder_combout\ = \inst12|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|inst~0_combout\,
	combout => \inst12|inst2|inst~feeder_combout\);

-- Location: FF_X9_Y10_N3
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

-- Location: LCCOMB_X10_Y10_N10
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

-- Location: LCCOMB_X10_Y10_N24
\inst12|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst9|inst~feeder_combout\ = \inst12|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst9|inst~0_combout\,
	combout => \inst12|inst9|inst~feeder_combout\);

-- Location: FF_X10_Y10_N25
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

-- Location: LCCOMB_X10_Y10_N0
\inst12|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst~0_combout\ = !\inst12|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst7|inst~q\,
	combout => \inst12|inst7|inst~0_combout\);

-- Location: LCCOMB_X10_Y10_N26
\inst12|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst~feeder_combout\ = \inst12|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst~0_combout\,
	combout => \inst12|inst7|inst~feeder_combout\);

-- Location: FF_X10_Y10_N27
\inst12|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst7|inst~feeder_combout\,
	clrn => \inst12|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst~q\);

-- Location: LCCOMB_X10_Y10_N16
\inst12|inst7|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst7~0_combout\ = \inst12|inst7|inst~q\ $ (\inst12|inst7|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst7|inst~q\,
	datad => \inst12|inst7|inst7~q\,
	combout => \inst12|inst7|inst7~0_combout\);

-- Location: FF_X10_Y10_N11
\inst12|inst7|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	asdata => \inst12|inst7|inst7~0_combout\,
	clrn => \inst12|inst7|ALT_INV_inst29~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst7~q\);

-- Location: LCCOMB_X10_Y10_N14
\inst12|inst7|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst8~0_combout\ = \inst12|inst7|inst8~q\ $ (((\inst12|inst7|inst~q\ & \inst12|inst7|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst~q\,
	datac => \inst12|inst7|inst8~q\,
	datad => \inst12|inst7|inst7~q\,
	combout => \inst12|inst7|inst8~0_combout\);

-- Location: FF_X10_Y10_N15
\inst12|inst7|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst7|inst8~0_combout\,
	clrn => \inst12|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst8~q\);

-- Location: LCCOMB_X10_Y10_N18
\inst12|inst7|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst9~0_combout\ = \inst12|inst7|inst9~q\ $ (((\inst12|inst7|inst7~q\ & (\inst12|inst7|inst8~q\ & \inst12|inst7|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst7~q\,
	datab => \inst12|inst7|inst8~q\,
	datac => \inst12|inst7|inst9~q\,
	datad => \inst12|inst7|inst~q\,
	combout => \inst12|inst7|inst9~0_combout\);

-- Location: FF_X10_Y10_N19
\inst12|inst7|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst7|inst9~0_combout\,
	clrn => \inst12|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst9~q\);

-- Location: LCCOMB_X10_Y10_N12
\inst12|inst7|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst13~combout\ = (\inst12|inst7|inst9~q\ & (\inst12|inst7|inst8~q\ & (\inst12|inst7|inst~q\ & \inst12|inst7|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst9~q\,
	datab => \inst12|inst7|inst8~q\,
	datac => \inst12|inst7|inst~q\,
	datad => \inst12|inst7|inst7~q\,
	combout => \inst12|inst7|inst13~combout\);

-- Location: LCCOMB_X10_Y10_N8
\inst12|inst7|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst14~0_combout\ = \inst12|inst7|inst13~combout\ $ (\inst12|inst7|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst7|inst13~combout\,
	datac => \inst12|inst7|inst14~q\,
	combout => \inst12|inst7|inst14~0_combout\);

-- Location: FF_X10_Y10_N9
\inst12|inst7|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst7|inst14~0_combout\,
	clrn => \inst12|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst14~q\);

-- Location: LCCOMB_X10_Y10_N4
\inst12|inst7|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst17~0_combout\ = \inst12|inst7|inst17~q\ $ (((\inst12|inst7|inst13~combout\ & \inst12|inst7|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst7|inst13~combout\,
	datac => \inst12|inst7|inst17~q\,
	datad => \inst12|inst7|inst14~q\,
	combout => \inst12|inst7|inst17~0_combout\);

-- Location: FF_X10_Y10_N5
\inst12|inst7|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst7|inst17~0_combout\,
	clrn => \inst12|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst17~q\);

-- Location: LCCOMB_X10_Y10_N6
\inst12|inst7|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst19~0_combout\ = \inst12|inst7|inst19~q\ $ (((\inst12|inst7|inst17~q\ & (\inst12|inst7|inst13~combout\ & \inst12|inst7|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst17~q\,
	datab => \inst12|inst7|inst13~combout\,
	datac => \inst12|inst7|inst19~q\,
	datad => \inst12|inst7|inst14~q\,
	combout => \inst12|inst7|inst19~0_combout\);

-- Location: FF_X10_Y10_N7
\inst12|inst7|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst7|inst19~0_combout\,
	clrn => \inst12|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst19~q\);

-- Location: LCCOMB_X10_Y10_N2
\inst12|inst7|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst21~0_combout\ = (!\inst12|inst7|inst19~q\) # (!\inst12|inst7|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst7|inst17~q\,
	datad => \inst12|inst7|inst19~q\,
	combout => \inst12|inst7|inst21~0_combout\);

-- Location: LCCOMB_X10_Y10_N20
\inst12|inst7|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst21~1_combout\ = \inst12|inst7|inst21~q\ $ (((\inst12|inst7|inst14~q\ & (\inst12|inst7|inst13~combout\ & !\inst12|inst7|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst14~q\,
	datab => \inst12|inst7|inst13~combout\,
	datac => \inst12|inst7|inst21~q\,
	datad => \inst12|inst7|inst21~0_combout\,
	combout => \inst12|inst7|inst21~1_combout\);

-- Location: FF_X10_Y10_N21
\inst12|inst7|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst7|inst21~1_combout\,
	clrn => \inst12|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst21~q\);

-- Location: LCCOMB_X10_Y10_N30
\inst12|inst7|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst29~1_combout\ = (!\inst12|inst7|inst19~q\ & (!\inst12|inst7|inst14~q\ & (\inst12|inst7|inst17~q\ & !\inst12|inst7|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst19~q\,
	datab => \inst12|inst7|inst14~q\,
	datac => \inst12|inst7|inst17~q\,
	datad => \inst12|inst7|inst21~q\,
	combout => \inst12|inst7|inst29~1_combout\);

-- Location: LCCOMB_X10_Y10_N28
\inst12|inst7|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst29~0_combout\ = (!\inst12|inst7|inst7~q\ & (!\inst12|inst7|inst8~q\ & (\inst12|inst7|inst~q\ & !\inst12|inst7|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst7~q\,
	datab => \inst12|inst7|inst8~q\,
	datac => \inst12|inst7|inst~q\,
	datad => \inst12|inst7|inst9~q\,
	combout => \inst12|inst7|inst29~0_combout\);

-- Location: LCCOMB_X10_Y10_N22
\inst12|inst7|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst29~combout\ = LCELL((\inst12|inst7|inst29~1_combout\ & \inst12|inst7|inst29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst7|inst29~1_combout\,
	datad => \inst12|inst7|inst29~0_combout\,
	combout => \inst12|inst7|inst29~combout\);

-- Location: LCCOMB_X11_Y10_N0
\inst12|inst7|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst4~0_combout\ = !\inst12|inst7|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst7|inst4~q\,
	combout => \inst12|inst7|inst4~0_combout\);

-- Location: FF_X11_Y10_N1
\inst12|inst7|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst7|inst29~combout\,
	d => \inst12|inst7|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst4~q\);

-- Location: LCCOMB_X19_Y11_N12
\inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\inst|inst~q\ & ((\inst3|inst4|inst4~q\) # ((\inst7|inst~q\ & \inst12|inst7|inst4~q\)))) # (!\inst|inst~q\ & (\inst7|inst~q\ & ((\inst12|inst7|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	datab => \inst7|inst~q\,
	datac => \inst3|inst4|inst4~q\,
	datad => \inst12|inst7|inst4~q\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X19_Y11_N28
inst10 : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (\inst10~1_combout\) # (\inst10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10~1_combout\,
	datad => \inst10~0_combout\,
	combout => \inst10~combout\);

ww_beep <= \beep~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;
END structure;


