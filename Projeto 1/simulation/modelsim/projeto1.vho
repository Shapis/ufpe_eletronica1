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

-- DATE "06/24/2023 23:02:59"

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
SIGNAL \inst75~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FPGA_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \FPGA_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst|inst~q\ : std_logic;
SIGNAL \inst11|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst11|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst11|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst11|inst|inst3|inst~0_combout\ : std_logic;
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
SIGNAL \inst67|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst|inst|inst~q\ : std_logic;
SIGNAL \inst67|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst67|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst67|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst67|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst67|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst67|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst67|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst67|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst3|inst~q\ : std_logic;
SIGNAL \inst67|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst67|inst7|inst~q\ : std_logic;
SIGNAL \inst67|inst7|inst7~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst7~feeder_combout\ : std_logic;
SIGNAL \inst67|inst7|inst7~q\ : std_logic;
SIGNAL \inst67|inst7|inst8~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst8~q\ : std_logic;
SIGNAL \inst67|inst7|inst9~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst9~q\ : std_logic;
SIGNAL \inst67|inst7|inst29~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst14~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst14~q\ : std_logic;
SIGNAL \inst67|inst7|inst17~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst17~q\ : std_logic;
SIGNAL \inst67|inst7|inst19~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst19~q\ : std_logic;
SIGNAL \inst67|inst7|inst21~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst21~1_combout\ : std_logic;
SIGNAL \inst67|inst7|inst21~q\ : std_logic;
SIGNAL \inst67|inst7|inst29~1_combout\ : std_logic;
SIGNAL \inst67|inst7|inst29~combout\ : std_logic;
SIGNAL \inst67|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst67|inst7|inst4~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst50|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst3|inst~0_combout\ : std_logic;
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
SIGNAL \inst50|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst29~combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|inst4~feeder_combout\ : std_logic;
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
SIGNAL \inst45|inst2~0_combout\ : std_logic;
SIGNAL \inst45|inst2~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst38|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst2|inst~q\ : std_logic;
SIGNAL \inst38|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst3|inst~q\ : std_logic;
SIGNAL \inst38|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst7|inst~q\ : std_logic;
SIGNAL \inst38|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst8|inst~q\ : std_logic;
SIGNAL \inst38|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst9|inst~q\ : std_logic;
SIGNAL \inst38|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst10|inst~q\ : std_logic;
SIGNAL \inst38|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst38|inst13|inst~q\ : std_logic;
SIGNAL \inst38|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst7~feeder_combout\ : std_logic;
SIGNAL \inst38|inst13|inst7~q\ : std_logic;
SIGNAL \inst38|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst8~q\ : std_logic;
SIGNAL \inst38|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst9~q\ : std_logic;
SIGNAL \inst38|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst14~q\ : std_logic;
SIGNAL \inst38|inst13|inst16~combout\ : std_logic;
SIGNAL \inst38|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst17~q\ : std_logic;
SIGNAL \inst38|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst19~q\ : std_logic;
SIGNAL \inst38|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst21~q\ : std_logic;
SIGNAL \inst38|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst29~combout\ : std_logic;
SIGNAL \inst38|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst38|inst13|inst4~feeder_combout\ : std_logic;
SIGNAL \inst38|inst13|inst4~q\ : std_logic;
SIGNAL \inst9|inst~0_combout\ : std_logic;
SIGNAL \inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst9|inst~q\ : std_logic;
SIGNAL \inst9|inst7~0_combout\ : std_logic;
SIGNAL \inst9|inst7~feeder_combout\ : std_logic;
SIGNAL \inst9|inst7~q\ : std_logic;
SIGNAL \inst9|inst8~0_combout\ : std_logic;
SIGNAL \inst9|inst8~q\ : std_logic;
SIGNAL \inst9|inst9~0_combout\ : std_logic;
SIGNAL \inst9|inst9~q\ : std_logic;
SIGNAL \inst9|inst29~0_combout\ : std_logic;
SIGNAL \inst9|inst13~combout\ : std_logic;
SIGNAL \inst9|inst14~0_combout\ : std_logic;
SIGNAL \inst9|inst14~q\ : std_logic;
SIGNAL \inst9|inst17~0_combout\ : std_logic;
SIGNAL \inst9|inst17~q\ : std_logic;
SIGNAL \inst9|inst19~0_combout\ : std_logic;
SIGNAL \inst9|inst19~q\ : std_logic;
SIGNAL \inst9|inst21~0_combout\ : std_logic;
SIGNAL \inst9|inst21~1_combout\ : std_logic;
SIGNAL \inst9|inst21~q\ : std_logic;
SIGNAL \inst9|inst29~1_combout\ : std_logic;
SIGNAL \inst9|inst29~combout\ : std_logic;
SIGNAL \inst9|inst4~0_combout\ : std_logic;
SIGNAL \inst9|inst4~q\ : std_logic;
SIGNAL \inst44|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst44|inst25|inst~q\ : std_logic;
SIGNAL \inst44|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst44|inst26|inst~q\ : std_logic;
SIGNAL \inst44|inst~combout\ : std_logic;
SIGNAL \inst45|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst7|inst~q\ : std_logic;
SIGNAL \inst45|inst2~q\ : std_logic;
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
SIGNAL \inst48|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst29~combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst48|inst24|inst4|inst4~feeder_combout\ : std_logic;
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
SIGNAL \inst47|inst2~0_combout\ : std_logic;
SIGNAL \inst47|inst2~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst|inst6|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst49|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst29~combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|inst4~feeder_combout\ : std_logic;
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
SIGNAL \inst51|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst21~1_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|inst29~combout\ : std_logic;
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
SIGNAL \inst51|inst32~feeder_combout\ : std_logic;
SIGNAL \inst51|inst32~q\ : std_logic;
SIGNAL \inst51|inst33~feeder_combout\ : std_logic;
SIGNAL \inst51|inst33~q\ : std_logic;
SIGNAL \inst51|inst23~feeder_combout\ : std_logic;
SIGNAL \inst51|inst23~q\ : std_logic;
SIGNAL \inst51|1231~q\ : std_logic;
SIGNAL \inst51|inst36~1_combout\ : std_logic;
SIGNAL \inst51|inst36~0_combout\ : std_logic;
SIGNAL \inst51|inst36~combout\ : std_logic;
SIGNAL \inst46|inst2~0_combout\ : std_logic;
SIGNAL \inst46|inst2~q\ : std_logic;
SIGNAL \inst75~0_combout\ : std_logic;
SIGNAL \inst75~combout\ : std_logic;
SIGNAL \inst75~clkctrl_outclk\ : std_logic;
SIGNAL \inst65|inst2~0_combout\ : std_logic;
SIGNAL \inst65|inst2~feeder_combout\ : std_logic;
SIGNAL \inst65|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst7|inst~q\ : std_logic;
SIGNAL \inst65|inst2~q\ : std_logic;
SIGNAL \inst65|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst32~combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst65|inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst65|inst31|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst7~feeder_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst7~q\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst8~q\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst9~q\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst14~q\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst16~combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst19~1_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst21~q\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst29~combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|inst4~q\ : std_logic;
SIGNAL \inst65|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst65|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst17|inst~q\ : std_logic;
SIGNAL \inst65|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst65|inst3|inst~q\ : std_logic;
SIGNAL \inst65|inst~q\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst32~combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
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
SIGNAL \inst|inst31|inst13|inst7~feeder_combout\ : std_logic;
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
SIGNAL \inst|inst31|inst13|inst17~1_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst21~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst29~combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst4~q\ : std_logic;
SIGNAL \inst|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst17|inst~q\ : std_logic;
SIGNAL \inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst46|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst32~combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst46|inst31|inst|inst|inst7|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst46|inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst46|inst31|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst7~feeder_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst7~q\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst8~q\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst9~q\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst14~q\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst16~combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst19~1_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst21~q\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst29~combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst46|inst31|inst13|inst4~q\ : std_logic;
SIGNAL \inst46|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst46|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst17|inst~q\ : std_logic;
SIGNAL \inst46|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst46|inst3|inst~q\ : std_logic;
SIGNAL \inst46|inst~q\ : std_logic;
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
SIGNAL \inst13|inst7|inst9~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst9~q\ : std_logic;
SIGNAL \inst13|inst7|inst29~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst14~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst14~q\ : std_logic;
SIGNAL \inst13|inst7|inst17~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst17~q\ : std_logic;
SIGNAL \inst13|inst7|inst18~combout\ : std_logic;
SIGNAL \inst13|inst7|inst19~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst19~q\ : std_logic;
SIGNAL \inst13|inst7|inst21~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst21~1_combout\ : std_logic;
SIGNAL \inst13|inst7|inst21~q\ : std_logic;
SIGNAL \inst13|inst7|inst29~1_combout\ : std_logic;
SIGNAL \inst13|inst7|inst29~combout\ : std_logic;
SIGNAL \inst13|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst13|inst7|inst4~q\ : std_logic;
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
SIGNAL \inst12|inst|inst5|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst12|inst2|inst~q\ : std_logic;
SIGNAL \inst12|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst9|inst~q\ : std_logic;
SIGNAL \inst12|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst12|inst7|inst~q\ : std_logic;
SIGNAL \inst12|inst7|inst7~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst7~feeder_combout\ : std_logic;
SIGNAL \inst12|inst7|inst7~q\ : std_logic;
SIGNAL \inst12|inst7|inst8~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst8~q\ : std_logic;
SIGNAL \inst12|inst7|inst9~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst9~q\ : std_logic;
SIGNAL \inst12|inst7|inst29~0_combout\ : std_logic;
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
SIGNAL \inst12|inst7|inst29~combout\ : std_logic;
SIGNAL \inst12|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst12|inst7|inst4~q\ : std_logic;
SIGNAL \inst45|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst32~combout\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst|inst~0_combout\ : std_logic;
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
SIGNAL \inst45|inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst7~feeder_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst7~q\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst8~q\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst9~q\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst14~q\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst16~combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst19~1_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst21~q\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst29~combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|inst4~q\ : std_logic;
SIGNAL \inst45|inst17|inst~0_combout\ : std_logic;
SIGNAL \inst45|inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst17|inst~q\ : std_logic;
SIGNAL \inst45|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst45|inst3|inst~q\ : std_logic;
SIGNAL \inst45|inst~q\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \inst38|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst67|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst51|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst67|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst38|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst51|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst67|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst67|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst48|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst49|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst50|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst51|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst12|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst67|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst9|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst12|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst67|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst45|inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst67|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst65|inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst48|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst49|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst50|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst9|ALT_INV_inst4~q\ : std_logic;
SIGNAL \inst51|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst13|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst11|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst44|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst44|inst26|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst12|inst7|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst13|inst7|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst46|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst67|inst7|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst11|inst1|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst46|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst45|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst65|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst47|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst45|ALT_INV_inst2~q\ : std_logic;
SIGNAL \inst46|ALT_INV_inst2~q\ : std_logic;
SIGNAL \ALT_INV_inst75~clkctrl_outclk\ : std_logic;

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

\inst75~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst75~combout\);

\FPGA_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FPGA_CLK~input_o\);
\inst38|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst38|inst|inst|inst|inst~q\;
\inst38|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst38|inst|inst|inst2|inst~q\;
\inst38|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst38|inst|inst|inst3|inst~q\;
\inst38|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst38|inst|inst|inst4|inst~q\;
\inst38|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst38|inst|inst|inst5|inst~q\;
\inst46|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst|inst~q\;
\inst45|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst|inst~q\;
\inst|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst|inst~q\;
\inst65|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst|inst~q\;
\inst38|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst38|inst|inst|inst6|inst~q\;
\inst46|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst2|inst~q\;
\inst45|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst2|inst~q\;
\inst|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst2|inst~q\;
\inst65|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst2|inst~q\;
\inst38|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst38|inst|inst|inst7|inst~q\;
\inst46|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst3|inst~q\;
\inst45|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst3|inst~q\;
\inst|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst3|inst~q\;
\inst65|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst3|inst~q\;
\inst46|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst4|inst~q\;
\inst45|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst4|inst~q\;
\inst|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst4|inst~q\;
\inst65|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst4|inst~q\;
\inst38|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst38|inst|inst1|inst|inst~q\;
\inst46|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst5|inst~q\;
\inst45|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst5|inst~q\;
\inst|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst5|inst~q\;
\inst65|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst5|inst~q\;
\inst38|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst38|inst|inst1|inst2|inst~q\;
\inst46|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst6|inst~q\;
\inst45|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst6|inst~q\;
\inst|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst6|inst~q\;
\inst65|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst6|inst~q\;
\inst38|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst38|inst|inst1|inst3|inst~q\;
\inst46|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst|inst7|inst~q\;
\inst45|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst|inst7|inst~q\;
\inst|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst7|inst~q\;
\inst65|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst|inst7|inst~q\;
\inst48|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst|inst~q\;
\inst49|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst|inst~q\;
\inst50|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst|inst~q\;
\inst38|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst38|inst|inst1|inst4|inst~q\;
\inst51|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst|inst~q\;
\inst48|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst2|inst~q\;
\inst49|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst2|inst~q\;
\inst50|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst2|inst~q\;
\inst38|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst38|inst|inst1|inst5|inst~q\;
\inst51|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst2|inst~q\;
\inst46|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst|inst~q\;
\inst45|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst|inst~q\;
\inst|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst|inst~q\;
\inst65|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst|inst~q\;
\inst48|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst3|inst~q\;
\inst49|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst3|inst~q\;
\inst50|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst3|inst~q\;
\inst38|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst38|inst|inst1|inst6|inst~q\;
\inst51|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst3|inst~q\;
\inst46|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst2|inst~q\;
\inst45|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst2|inst~q\;
\inst|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst2|inst~q\;
\inst65|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst2|inst~q\;
\inst48|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst4|inst~q\;
\inst49|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst4|inst~q\;
\inst50|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst4|inst~q\;
\inst38|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst38|inst|inst1|inst7|inst~q\;
\inst51|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst4|inst~q\;
\inst46|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst3|inst~q\;
\inst45|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst3|inst~q\;
\inst|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst3|inst~q\;
\inst65|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst3|inst~q\;
\inst48|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst5|inst~q\;
\inst49|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst5|inst~q\;
\inst50|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst5|inst~q\;
\inst38|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst38|inst|inst1|inst8|inst~q\;
\inst51|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst5|inst~q\;
\inst46|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst4|inst~q\;
\inst45|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst4|inst~q\;
\inst|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst4|inst~q\;
\inst65|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst4|inst~q\;
\inst48|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst6|inst~q\;
\inst49|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst6|inst~q\;
\inst50|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst6|inst~q\;
\inst38|inst2|ALT_INV_inst~q\ <= NOT \inst38|inst2|inst~q\;
\inst51|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst6|inst~q\;
\inst46|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst5|inst~q\;
\inst45|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst5|inst~q\;
\inst|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst5|inst~q\;
\inst65|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst5|inst~q\;
\inst48|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst|inst7|inst~q\;
\inst49|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst|inst7|inst~q\;
\inst50|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst|inst7|inst~q\;
\inst38|inst3|ALT_INV_inst~q\ <= NOT \inst38|inst3|inst~q\;
\inst51|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst|inst7|inst~q\;
\inst13|inst|inst|ALT_INV_inst~q\ <= NOT \inst13|inst|inst|inst~q\;
\inst46|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst6|inst~q\;
\inst45|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst6|inst~q\;
\inst|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst6|inst~q\;
\inst65|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst6|inst~q\;
\inst38|inst7|ALT_INV_inst~q\ <= NOT \inst38|inst7|inst~q\;
\inst13|inst|inst2|ALT_INV_inst~q\ <= NOT \inst13|inst|inst2|inst~q\;
\inst46|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst7|inst~q\;
\inst45|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst7|inst~q\;
\inst|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst7|inst~q\;
\inst65|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst7|inst~q\;
\inst48|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst2|inst~q\;
\inst49|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst2|inst~q\;
\inst50|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst2|inst~q\;
\inst38|inst8|ALT_INV_inst~q\ <= NOT \inst38|inst8|inst~q\;
\inst51|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst2|inst~q\;
\inst12|inst|inst|ALT_INV_inst~q\ <= NOT \inst12|inst|inst|inst~q\;
\inst13|inst|inst3|ALT_INV_inst~q\ <= NOT \inst13|inst|inst3|inst~q\;
\inst46|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst|inst1|inst8|inst~q\;
\inst45|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst|inst1|inst8|inst~q\;
\inst11|inst|inst|ALT_INV_inst~q\ <= NOT \inst11|inst|inst|inst~q\;
\inst|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst8|inst~q\;
\inst65|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst|inst1|inst8|inst~q\;
\inst48|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst3|inst~q\;
\inst49|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst3|inst~q\;
\inst50|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst3|inst~q\;
\inst38|inst9|ALT_INV_inst~q\ <= NOT \inst38|inst9|inst~q\;
\inst51|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst3|inst~q\;
\inst12|inst|inst2|ALT_INV_inst~q\ <= NOT \inst12|inst|inst2|inst~q\;
\inst13|inst|inst4|ALT_INV_inst~q\ <= NOT \inst13|inst|inst4|inst~q\;
\inst46|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst2|inst~q\;
\inst45|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst2|inst~q\;
\inst67|inst|inst|ALT_INV_inst~q\ <= NOT \inst67|inst|inst|inst~q\;
\inst11|inst|inst2|ALT_INV_inst~q\ <= NOT \inst11|inst|inst2|inst~q\;
\inst|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst2|inst~q\;
\inst65|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst2|inst~q\;
\inst48|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst7|inst~q\;
\inst49|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst7|inst~q\;
\inst50|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst7|inst~q\;
\inst51|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst7|inst~q\;
\inst12|inst|inst3|ALT_INV_inst~q\ <= NOT \inst12|inst|inst3|inst~q\;
\inst13|inst|inst5|ALT_INV_inst~q\ <= NOT \inst13|inst|inst5|inst~q\;
\inst46|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst3|inst~q\;
\inst45|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst3|inst~q\;
\inst67|inst|inst2|ALT_INV_inst~q\ <= NOT \inst67|inst|inst2|inst~q\;
\inst11|inst|inst3|ALT_INV_inst~q\ <= NOT \inst11|inst|inst3|inst~q\;
\inst|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst3|inst~q\;
\inst65|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst3|inst~q\;
\inst48|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst48|inst24|inst8|inst~q\;
\inst49|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst49|inst24|inst8|inst~q\;
\inst50|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst50|inst24|inst8|inst~q\;
\inst38|inst13|ALT_INV_inst29~combout\ <= NOT \inst38|inst13|inst29~combout\;
\inst51|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst51|inst24|inst8|inst~q\;
\inst12|inst|inst4|ALT_INV_inst~q\ <= NOT \inst12|inst|inst4|inst~q\;
\inst13|inst|inst6|ALT_INV_inst~q\ <= NOT \inst13|inst|inst6|inst~q\;
\inst46|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst7|inst~q\;
\inst45|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst7|inst~q\;
\inst67|inst|inst3|ALT_INV_inst~q\ <= NOT \inst67|inst|inst3|inst~q\;
\inst11|inst|inst4|ALT_INV_inst~q\ <= NOT \inst11|inst|inst4|inst~q\;
\inst|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst7|inst~q\;
\inst65|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst7|inst~q\;
\inst12|inst|inst5|ALT_INV_inst~q\ <= NOT \inst12|inst|inst5|inst~q\;
\inst13|inst|inst7|ALT_INV_inst~q\ <= NOT \inst13|inst|inst7|inst~q\;
\inst46|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst8|inst~q\;
\inst45|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst8|inst~q\;
\inst67|inst|inst4|ALT_INV_inst~q\ <= NOT \inst67|inst|inst4|inst~q\;
\inst11|inst|inst5|ALT_INV_inst~q\ <= NOT \inst11|inst|inst5|inst~q\;
\inst|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst|inst31|inst8|inst~q\;
\inst65|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst8|inst~q\;
\inst48|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst48|inst24|inst4|inst29~combout\;
\inst49|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst49|inst24|inst4|inst29~combout\;
\inst50|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst50|inst24|inst4|inst29~combout\;
\inst51|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst51|inst24|inst4|inst29~combout\;
\inst12|inst|inst6|ALT_INV_inst~q\ <= NOT \inst12|inst|inst6|inst~q\;
\inst46|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst46|inst31|inst9|inst~q\;
\inst45|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst45|inst31|inst9|inst~q\;
\inst67|inst|inst5|ALT_INV_inst~q\ <= NOT \inst67|inst|inst5|inst~q\;
\inst11|inst|inst6|ALT_INV_inst~q\ <= NOT \inst11|inst|inst6|inst~q\;
\inst|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst|inst31|inst9|inst~q\;
\inst65|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst65|inst31|inst9|inst~q\;
\inst9|ALT_INV_inst29~combout\ <= NOT \inst9|inst29~combout\;
\inst12|inst|inst7|ALT_INV_inst~q\ <= NOT \inst12|inst|inst7|inst~q\;
\inst13|inst3|ALT_INV_inst~q\ <= NOT \inst13|inst3|inst~q\;
\inst67|inst|inst6|ALT_INV_inst~q\ <= NOT \inst67|inst|inst6|inst~q\;
\inst11|inst|inst7|ALT_INV_inst~q\ <= NOT \inst11|inst|inst7|inst~q\;
\inst13|inst4|ALT_INV_inst~q\ <= NOT \inst13|inst4|inst~q\;
\inst46|inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst46|inst31|inst13|inst29~combout\;
\inst45|inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst45|inst31|inst13|inst29~combout\;
\inst67|inst|inst7|ALT_INV_inst~q\ <= NOT \inst67|inst|inst7|inst~q\;
\inst|inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst|inst31|inst13|inst29~combout\;
\inst65|inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst65|inst31|inst13|inst29~combout\;
\inst48|inst25|ALT_INV_inst~q\ <= NOT \inst48|inst25|inst~q\;
\inst49|inst25|ALT_INV_inst~q\ <= NOT \inst49|inst25|inst~q\;
\inst50|inst25|ALT_INV_inst~q\ <= NOT \inst50|inst25|inst~q\;
\inst9|ALT_INV_inst4~q\ <= NOT \inst9|inst4~q\;
\inst51|inst25|ALT_INV_inst~q\ <= NOT \inst51|inst25|inst~q\;
\inst12|inst2|ALT_INV_inst~q\ <= NOT \inst12|inst2|inst~q\;
\inst13|inst2|ALT_INV_inst~q\ <= NOT \inst13|inst2|inst~q\;
\inst11|inst2|ALT_INV_inst~q\ <= NOT \inst11|inst2|inst~q\;
\inst44|inst25|ALT_INV_inst~q\ <= NOT \inst44|inst25|inst~q\;
\inst44|inst26|ALT_INV_inst~q\ <= NOT \inst44|inst26|inst~q\;
\inst12|inst7|ALT_INV_inst29~combout\ <= NOT \inst12|inst7|inst29~combout\;
\inst13|inst7|ALT_INV_inst29~combout\ <= NOT \inst13|inst7|inst29~combout\;
\inst46|inst17|ALT_INV_inst~q\ <= NOT \inst46|inst17|inst~q\;
\inst45|inst17|ALT_INV_inst~q\ <= NOT \inst45|inst17|inst~q\;
\inst67|inst7|ALT_INV_inst29~combout\ <= NOT \inst67|inst7|inst29~combout\;
\inst11|inst1|ALT_INV_inst29~combout\ <= NOT \inst11|inst1|inst29~combout\;
\inst|inst17|ALT_INV_inst~q\ <= NOT \inst|inst17|inst~q\;
\inst65|inst17|ALT_INV_inst~q\ <= NOT \inst65|inst17|inst~q\;
\inst65|inst7|ALT_INV_inst~q\ <= NOT \inst65|inst7|inst~q\;
\inst45|inst7|ALT_INV_inst~q\ <= NOT \inst45|inst7|inst~q\;
\inst46|inst3|ALT_INV_inst~q\ <= NOT \inst46|inst3|inst~q\;
\inst45|inst3|ALT_INV_inst~q\ <= NOT \inst45|inst3|inst~q\;
\inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst3|inst~q\;
\inst65|inst3|ALT_INV_inst~q\ <= NOT \inst65|inst3|inst~q\;
\inst47|ALT_INV_inst2~q\ <= NOT \inst47|inst2~q\;
\inst|ALT_INV_inst2~q\ <= NOT \inst|inst2~q\;
\inst45|ALT_INV_inst2~q\ <= NOT \inst45|inst2~q\;
\inst46|ALT_INV_inst2~q\ <= NOT \inst46|inst2~q\;
\ALT_INV_inst75~clkctrl_outclk\ <= NOT \inst75~clkctrl_outclk\;
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

-- Location: LCCOMB_X23_Y8_N18
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

-- Location: LCCOMB_X23_Y8_N28
\inst11|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst|inst~feeder_combout\ = \inst11|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst|inst|inst~0_combout\,
	combout => \inst11|inst|inst|inst~feeder_combout\);

-- Location: FF_X23_Y8_N29
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

-- Location: LCCOMB_X23_Y8_N22
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

-- Location: LCCOMB_X23_Y8_N14
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

-- Location: FF_X23_Y8_N15
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

-- Location: LCCOMB_X22_Y8_N22
\inst11|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst3|inst~0_combout\ = !\inst11|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst3|inst~q\,
	combout => \inst11|inst|inst3|inst~0_combout\);

-- Location: FF_X22_Y8_N29
\inst11|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst2|ALT_INV_inst~q\,
	asdata => \inst11|inst|inst3|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst|inst3|inst~q\);

-- Location: LCCOMB_X22_Y8_N30
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

-- Location: LCCOMB_X22_Y8_N14
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

-- Location: FF_X22_Y8_N15
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

-- Location: LCCOMB_X21_Y8_N18
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

-- Location: LCCOMB_X21_Y8_N20
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

-- Location: FF_X21_Y8_N21
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

-- Location: LCCOMB_X21_Y8_N4
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

-- Location: LCCOMB_X21_Y8_N0
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

-- Location: FF_X21_Y8_N1
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

-- Location: LCCOMB_X16_Y8_N14
\inst11|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst7|inst~0_combout\ = !\inst11|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|inst|inst7|inst~q\,
	combout => \inst11|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X16_Y8_N20
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

-- Location: FF_X16_Y8_N21
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

-- Location: LCCOMB_X16_Y8_N18
\inst11|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst8|inst~0_combout\ = !\inst11|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst|inst8|inst~q\,
	combout => \inst11|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X16_Y8_N28
\inst11|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst8|inst~feeder_combout\ = \inst11|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst8|inst~0_combout\,
	combout => \inst11|inst|inst8|inst~feeder_combout\);

-- Location: FF_X16_Y8_N29
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

-- Location: LCCOMB_X11_Y8_N18
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

-- Location: FF_X11_Y8_N25
\inst11|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst|inst8|inst~q\,
	asdata => \inst11|inst2|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst2|inst~q\);

-- Location: LCCOMB_X10_Y8_N24
\inst11|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst9|inst~0_combout\ = !\inst11|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst9|inst~q\,
	combout => \inst11|inst9|inst~0_combout\);

-- Location: FF_X10_Y8_N31
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

-- Location: LCCOMB_X10_Y8_N18
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

-- Location: LCCOMB_X10_Y8_N0
\inst11|inst1|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst~feeder_combout\ = \inst11|inst1|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst~0_combout\,
	combout => \inst11|inst1|inst~feeder_combout\);

-- Location: FF_X10_Y8_N1
\inst11|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|inst9|inst~q\,
	d => \inst11|inst1|inst~feeder_combout\,
	clrn => \inst11|inst1|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst1|inst~q\);

-- Location: LCCOMB_X10_Y8_N10
\inst11|inst1|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst7~0_combout\ = \inst11|inst1|inst7~q\ $ (\inst11|inst1|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst1|inst7~q\,
	datad => \inst11|inst1|inst~q\,
	combout => \inst11|inst1|inst7~0_combout\);

-- Location: LCCOMB_X10_Y8_N22
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

-- Location: FF_X10_Y8_N23
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

-- Location: LCCOMB_X10_Y8_N4
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

-- Location: FF_X10_Y8_N5
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

-- Location: LCCOMB_X10_Y8_N14
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

-- Location: FF_X10_Y8_N15
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

-- Location: LCCOMB_X10_Y8_N28
\inst11|inst1|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst29~0_combout\ = (\inst11|inst1|inst8~q\ & (\inst11|inst1|inst7~q\ & \inst11|inst1|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst1|inst8~q\,
	datac => \inst11|inst1|inst7~q\,
	datad => \inst11|inst1|inst~q\,
	combout => \inst11|inst1|inst29~0_combout\);

-- Location: LCCOMB_X10_Y8_N2
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

-- Location: FF_X10_Y8_N3
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

-- Location: LCCOMB_X10_Y8_N6
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

-- Location: FF_X10_Y8_N7
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

-- Location: LCCOMB_X10_Y8_N30
\inst11|inst1|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst19~0_combout\ = (!\inst11|inst1|inst9~q\) # (!\inst11|inst1|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst17~q\,
	datad => \inst11|inst1|inst9~q\,
	combout => \inst11|inst1|inst19~0_combout\);

-- Location: LCCOMB_X10_Y8_N8
\inst11|inst1|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst19~1_combout\ = \inst11|inst1|inst19~q\ $ (((\inst11|inst1|inst14~q\ & (\inst11|inst1|inst29~0_combout\ & !\inst11|inst1|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst14~q\,
	datab => \inst11|inst1|inst29~0_combout\,
	datac => \inst11|inst1|inst19~q\,
	datad => \inst11|inst1|inst19~0_combout\,
	combout => \inst11|inst1|inst19~1_combout\);

-- Location: FF_X10_Y8_N9
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

-- Location: LCCOMB_X10_Y8_N20
\inst11|inst1|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst18~combout\ = (\inst11|inst1|inst29~0_combout\ & (\inst11|inst1|inst17~q\ & (\inst11|inst1|inst9~q\ & \inst11|inst1|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst29~0_combout\,
	datab => \inst11|inst1|inst17~q\,
	datac => \inst11|inst1|inst9~q\,
	datad => \inst11|inst1|inst14~q\,
	combout => \inst11|inst1|inst18~combout\);

-- Location: LCCOMB_X10_Y8_N16
\inst11|inst1|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst21~0_combout\ = \inst11|inst1|inst21~q\ $ (((\inst11|inst1|inst18~combout\ & \inst11|inst1|inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst18~combout\,
	datac => \inst11|inst1|inst21~q\,
	datad => \inst11|inst1|inst19~q\,
	combout => \inst11|inst1|inst21~0_combout\);

-- Location: FF_X10_Y8_N17
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

-- Location: LCCOMB_X10_Y8_N26
\inst11|inst1|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst29~1_combout\ = (\inst11|inst1|inst17~q\ & (!\inst11|inst1|inst14~q\ & (!\inst11|inst1|inst19~q\ & !\inst11|inst1|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst17~q\,
	datab => \inst11|inst1|inst14~q\,
	datac => \inst11|inst1|inst19~q\,
	datad => \inst11|inst1|inst21~q\,
	combout => \inst11|inst1|inst29~1_combout\);

-- Location: LCCOMB_X10_Y8_N12
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

-- Location: LCCOMB_X11_Y8_N28
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

-- Location: FF_X11_Y8_N29
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

-- Location: LCCOMB_X13_Y9_N26
\inst67|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst|inst~0_combout\ = !\inst67|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst|inst|inst~q\,
	combout => \inst67|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X13_Y9_N30
\inst67|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst|inst~feeder_combout\ = \inst67|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst|inst|inst~0_combout\,
	combout => \inst67|inst|inst|inst~feeder_combout\);

-- Location: FF_X13_Y9_N31
\inst67|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst67|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst|inst|inst~q\);

-- Location: LCCOMB_X13_Y9_N22
\inst67|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst2|inst~0_combout\ = !\inst67|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst|inst2|inst~q\,
	combout => \inst67|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X13_Y9_N14
\inst67|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst2|inst~feeder_combout\ = \inst67|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst67|inst|inst2|inst~0_combout\,
	combout => \inst67|inst|inst2|inst~feeder_combout\);

-- Location: FF_X13_Y9_N15
\inst67|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst|inst|ALT_INV_inst~q\,
	d => \inst67|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst|inst2|inst~q\);

-- Location: LCCOMB_X14_Y9_N18
\inst67|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst3|inst~0_combout\ = !\inst67|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst|inst3|inst~q\,
	combout => \inst67|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X14_Y9_N4
\inst67|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst3|inst~feeder_combout\ = \inst67|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst|inst3|inst~0_combout\,
	combout => \inst67|inst|inst3|inst~feeder_combout\);

-- Location: FF_X14_Y9_N5
\inst67|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst|inst2|ALT_INV_inst~q\,
	d => \inst67|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst|inst3|inst~q\);

-- Location: LCCOMB_X14_Y9_N16
\inst67|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst4|inst~0_combout\ = !\inst67|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst67|inst|inst4|inst~q\,
	combout => \inst67|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X14_Y9_N14
\inst67|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst4|inst~feeder_combout\ = \inst67|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst|inst4|inst~0_combout\,
	combout => \inst67|inst|inst4|inst~feeder_combout\);

-- Location: FF_X14_Y9_N15
\inst67|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst|inst3|ALT_INV_inst~q\,
	d => \inst67|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst|inst4|inst~q\);

-- Location: LCCOMB_X16_Y9_N8
\inst67|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst5|inst~0_combout\ = !\inst67|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst|inst5|inst~q\,
	combout => \inst67|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X16_Y9_N12
\inst67|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst5|inst~feeder_combout\ = \inst67|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst67|inst|inst5|inst~0_combout\,
	combout => \inst67|inst|inst5|inst~feeder_combout\);

-- Location: FF_X16_Y9_N13
\inst67|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst|inst4|ALT_INV_inst~q\,
	d => \inst67|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst|inst5|inst~q\);

-- Location: LCCOMB_X16_Y9_N14
\inst67|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst6|inst~0_combout\ = !\inst67|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst67|inst|inst6|inst~q\,
	combout => \inst67|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X16_Y9_N22
\inst67|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst6|inst~feeder_combout\ = \inst67|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst|inst6|inst~0_combout\,
	combout => \inst67|inst|inst6|inst~feeder_combout\);

-- Location: FF_X16_Y9_N23
\inst67|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst|inst5|ALT_INV_inst~q\,
	d => \inst67|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst|inst6|inst~q\);

-- Location: LCCOMB_X17_Y9_N26
\inst67|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst7|inst~0_combout\ = !\inst67|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst|inst7|inst~q\,
	combout => \inst67|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X17_Y9_N30
\inst67|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst7|inst~feeder_combout\ = \inst67|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst|inst7|inst~0_combout\,
	combout => \inst67|inst|inst7|inst~feeder_combout\);

-- Location: FF_X17_Y9_N31
\inst67|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst|inst6|ALT_INV_inst~q\,
	d => \inst67|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst|inst7|inst~q\);

-- Location: LCCOMB_X18_Y8_N26
\inst67|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst8|inst~0_combout\ = !\inst67|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst|inst8|inst~q\,
	combout => \inst67|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X18_Y8_N28
\inst67|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst|inst8|inst~feeder_combout\ = \inst67|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst|inst8|inst~0_combout\,
	combout => \inst67|inst|inst8|inst~feeder_combout\);

-- Location: FF_X18_Y8_N29
\inst67|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst|inst7|ALT_INV_inst~q\,
	d => \inst67|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst|inst8|inst~q\);

-- Location: LCCOMB_X18_Y8_N30
\inst67|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst3|inst~0_combout\ = !\inst67|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst3|inst~q\,
	combout => \inst67|inst3|inst~0_combout\);

-- Location: LCCOMB_X18_Y8_N18
\inst67|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst3|inst~feeder_combout\ = \inst67|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst67|inst3|inst~0_combout\,
	combout => \inst67|inst3|inst~feeder_combout\);

-- Location: FF_X18_Y8_N19
\inst67|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst|inst8|inst~q\,
	d => \inst67|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst3|inst~q\);

-- Location: LCCOMB_X19_Y8_N20
\inst67|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst~0_combout\ = !\inst67|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst7|inst~q\,
	combout => \inst67|inst7|inst~0_combout\);

-- Location: LCCOMB_X19_Y8_N12
\inst67|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst~feeder_combout\ = \inst67|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst7|inst~0_combout\,
	combout => \inst67|inst7|inst~feeder_combout\);

-- Location: FF_X19_Y8_N13
\inst67|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst3|inst~q\,
	d => \inst67|inst7|inst~feeder_combout\,
	clrn => \inst67|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst7|inst~q\);

-- Location: LCCOMB_X19_Y8_N18
\inst67|inst7|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst7~0_combout\ = \inst67|inst7|inst~q\ $ (\inst67|inst7|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst67|inst7|inst~q\,
	datac => \inst67|inst7|inst7~q\,
	combout => \inst67|inst7|inst7~0_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst67|inst7|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst7~feeder_combout\ = \inst67|inst7|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst7|inst7~0_combout\,
	combout => \inst67|inst7|inst7~feeder_combout\);

-- Location: FF_X19_Y8_N15
\inst67|inst7|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst3|inst~q\,
	d => \inst67|inst7|inst7~feeder_combout\,
	clrn => \inst67|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst7|inst7~q\);

-- Location: LCCOMB_X19_Y8_N26
\inst67|inst7|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst8~0_combout\ = \inst67|inst7|inst8~q\ $ (((\inst67|inst7|inst7~q\ & \inst67|inst7|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst67|inst7|inst7~q\,
	datac => \inst67|inst7|inst8~q\,
	datad => \inst67|inst7|inst~q\,
	combout => \inst67|inst7|inst8~0_combout\);

-- Location: FF_X19_Y8_N27
\inst67|inst7|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst3|inst~q\,
	d => \inst67|inst7|inst8~0_combout\,
	clrn => \inst67|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst7|inst8~q\);

-- Location: LCCOMB_X19_Y8_N22
\inst67|inst7|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst9~0_combout\ = \inst67|inst7|inst9~q\ $ (((\inst67|inst7|inst8~q\ & (\inst67|inst7|inst7~q\ & \inst67|inst7|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst7|inst8~q\,
	datab => \inst67|inst7|inst7~q\,
	datac => \inst67|inst7|inst9~q\,
	datad => \inst67|inst7|inst~q\,
	combout => \inst67|inst7|inst9~0_combout\);

-- Location: FF_X19_Y8_N23
\inst67|inst7|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst3|inst~q\,
	d => \inst67|inst7|inst9~0_combout\,
	clrn => \inst67|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst7|inst9~q\);

-- Location: LCCOMB_X19_Y8_N24
\inst67|inst7|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst29~0_combout\ = (\inst67|inst7|inst8~q\ & (\inst67|inst7|inst9~q\ & (\inst67|inst7|inst7~q\ & \inst67|inst7|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst7|inst8~q\,
	datab => \inst67|inst7|inst9~q\,
	datac => \inst67|inst7|inst7~q\,
	datad => \inst67|inst7|inst~q\,
	combout => \inst67|inst7|inst29~0_combout\);

-- Location: LCCOMB_X19_Y8_N28
\inst67|inst7|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst14~0_combout\ = \inst67|inst7|inst29~0_combout\ $ (\inst67|inst7|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst67|inst7|inst29~0_combout\,
	datac => \inst67|inst7|inst14~q\,
	combout => \inst67|inst7|inst14~0_combout\);

-- Location: FF_X19_Y8_N29
\inst67|inst7|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst3|inst~q\,
	d => \inst67|inst7|inst14~0_combout\,
	clrn => \inst67|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst7|inst14~q\);

-- Location: LCCOMB_X19_Y8_N30
\inst67|inst7|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst17~0_combout\ = \inst67|inst7|inst17~q\ $ (((\inst67|inst7|inst29~0_combout\ & \inst67|inst7|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst67|inst7|inst29~0_combout\,
	datac => \inst67|inst7|inst17~q\,
	datad => \inst67|inst7|inst14~q\,
	combout => \inst67|inst7|inst17~0_combout\);

-- Location: FF_X19_Y8_N31
\inst67|inst7|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst3|inst~q\,
	d => \inst67|inst7|inst17~0_combout\,
	clrn => \inst67|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst7|inst17~q\);

-- Location: LCCOMB_X19_Y8_N4
\inst67|inst7|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst19~0_combout\ = \inst67|inst7|inst19~q\ $ (((\inst67|inst7|inst17~q\ & (\inst67|inst7|inst14~q\ & \inst67|inst7|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst7|inst17~q\,
	datab => \inst67|inst7|inst14~q\,
	datac => \inst67|inst7|inst19~q\,
	datad => \inst67|inst7|inst29~0_combout\,
	combout => \inst67|inst7|inst19~0_combout\);

-- Location: FF_X19_Y8_N5
\inst67|inst7|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst3|inst~q\,
	d => \inst67|inst7|inst19~0_combout\,
	clrn => \inst67|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst7|inst19~q\);

-- Location: LCCOMB_X19_Y8_N0
\inst67|inst7|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst21~0_combout\ = (!\inst67|inst7|inst14~q\) # (!\inst67|inst7|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst7|inst19~q\,
	datad => \inst67|inst7|inst14~q\,
	combout => \inst67|inst7|inst21~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst67|inst7|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst21~1_combout\ = \inst67|inst7|inst21~q\ $ (((\inst67|inst7|inst17~q\ & (\inst67|inst7|inst29~0_combout\ & !\inst67|inst7|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst7|inst17~q\,
	datab => \inst67|inst7|inst29~0_combout\,
	datac => \inst67|inst7|inst21~q\,
	datad => \inst67|inst7|inst21~0_combout\,
	combout => \inst67|inst7|inst21~1_combout\);

-- Location: FF_X19_Y8_N7
\inst67|inst7|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst3|inst~q\,
	d => \inst67|inst7|inst21~1_combout\,
	clrn => \inst67|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst7|inst21~q\);

-- Location: LCCOMB_X19_Y8_N8
\inst67|inst7|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst29~1_combout\ = (\inst67|inst7|inst17~q\ & (!\inst67|inst7|inst14~q\ & (!\inst67|inst7|inst19~q\ & !\inst67|inst7|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|inst7|inst17~q\,
	datab => \inst67|inst7|inst14~q\,
	datac => \inst67|inst7|inst19~q\,
	datad => \inst67|inst7|inst21~q\,
	combout => \inst67|inst7|inst29~1_combout\);

-- Location: LCCOMB_X19_Y8_N16
\inst67|inst7|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst29~combout\ = LCELL((\inst67|inst7|inst29~1_combout\ & \inst67|inst7|inst29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst7|inst29~1_combout\,
	datad => \inst67|inst7|inst29~0_combout\,
	combout => \inst67|inst7|inst29~combout\);

-- Location: LCCOMB_X19_Y8_N10
\inst67|inst7|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst67|inst7|inst4~0_combout\ = !\inst67|inst7|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst67|inst7|inst4~q\,
	combout => \inst67|inst7|inst4~0_combout\);

-- Location: FF_X19_Y8_N11
\inst67|inst7|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst67|inst7|inst29~combout\,
	d => \inst67|inst7|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst67|inst7|inst4~q\);

-- Location: LCCOMB_X30_Y9_N18
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

-- Location: LCCOMB_X30_Y9_N28
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

-- Location: FF_X30_Y9_N29
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

-- Location: LCCOMB_X30_Y9_N4
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

-- Location: LCCOMB_X30_Y9_N14
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

-- Location: FF_X30_Y9_N15
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

-- Location: LCCOMB_X29_Y9_N18
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

-- Location: FF_X29_Y9_N3
\inst50|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst|inst2|ALT_INV_inst~q\,
	asdata => \inst50|inst24|inst|inst3|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X29_Y9_N4
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

-- Location: LCCOMB_X29_Y9_N14
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

-- Location: FF_X29_Y9_N15
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

-- Location: LCCOMB_X28_Y10_N12
\inst50|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst5|inst~0_combout\ = !\inst50|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst|inst5|inst~q\,
	combout => \inst50|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X28_Y10_N10
\inst50|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst5|inst~feeder_combout\ = \inst50|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst50|inst24|inst|inst5|inst~0_combout\,
	combout => \inst50|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X28_Y10_N11
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

-- Location: LCCOMB_X25_Y10_N18
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

-- Location: LCCOMB_X25_Y10_N16
\inst50|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst6|inst~feeder_combout\ = \inst50|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst|inst6|inst~0_combout\,
	combout => \inst50|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X25_Y10_N17
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

-- Location: LCCOMB_X25_Y10_N4
\inst50|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst7|inst~0_combout\ = !\inst50|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst|inst7|inst~q\,
	combout => \inst50|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X25_Y10_N28
\inst50|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst7|inst~feeder_combout\ = \inst50|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst|inst7|inst~0_combout\,
	combout => \inst50|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X25_Y10_N29
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

-- Location: LCCOMB_X24_Y8_N22
\inst50|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst|inst8|inst~0_combout\ = !\inst50|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst|inst8|inst~q\,
	combout => \inst50|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X24_Y8_N14
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

-- Location: FF_X24_Y8_N15
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

-- Location: LCCOMB_X25_Y8_N20
\inst50|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst2|inst~0_combout\ = !\inst50|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst2|inst~q\,
	combout => \inst50|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X25_Y8_N26
\inst50|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst2|inst~feeder_combout\ = \inst50|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst2|inst~0_combout\,
	combout => \inst50|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X25_Y8_N27
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

-- Location: LCCOMB_X25_Y8_N22
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

-- Location: LCCOMB_X25_Y8_N16
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

-- Location: FF_X25_Y8_N17
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

-- Location: LCCOMB_X26_Y8_N18
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

-- Location: LCCOMB_X26_Y8_N16
\inst50|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst7|inst~feeder_combout\ = \inst50|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst7|inst~0_combout\,
	combout => \inst50|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X26_Y8_N17
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

-- Location: LCCOMB_X26_Y8_N4
\inst50|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst8|inst~0_combout\ = !\inst50|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst8|inst~q\,
	combout => \inst50|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X26_Y8_N12
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

-- Location: FF_X26_Y8_N13
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

-- Location: LCCOMB_X28_Y8_N18
\inst50|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst9|inst~0_combout\ = !\inst50|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst24|inst9|inst~q\,
	combout => \inst50|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X28_Y8_N0
\inst50|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst9|inst~feeder_combout\ = \inst50|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst9|inst~0_combout\,
	combout => \inst50|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X28_Y8_N1
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

-- Location: LCCOMB_X29_Y10_N16
\inst50|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst~0_combout\ = !\inst50|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst4|inst~q\,
	combout => \inst50|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X29_Y10_N8
\inst50|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst~feeder_combout\ = \inst50|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst4|inst~0_combout\,
	combout => \inst50|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X29_Y10_N9
\inst50|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst~feeder_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst~q\);

-- Location: LCCOMB_X29_Y10_N28
\inst50|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst7~0_combout\ = \inst50|inst24|inst4|inst~q\ $ (\inst50|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst~q\,
	datad => \inst50|inst24|inst4|inst7~q\,
	combout => \inst50|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X29_Y10_N24
\inst50|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst7~feeder_combout\ = \inst50|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst4|inst7~0_combout\,
	combout => \inst50|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X29_Y10_N25
\inst50|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X29_Y10_N26
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

-- Location: FF_X29_Y10_N27
\inst50|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst8~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X29_Y10_N22
\inst50|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst9~0_combout\ = \inst50|inst24|inst4|inst9~q\ $ (((\inst50|inst24|inst4|inst~q\ & (\inst50|inst24|inst4|inst7~q\ & \inst50|inst24|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst~q\,
	datab => \inst50|inst24|inst4|inst7~q\,
	datac => \inst50|inst24|inst4|inst9~q\,
	datad => \inst50|inst24|inst4|inst8~q\,
	combout => \inst50|inst24|inst4|inst9~0_combout\);

-- Location: FF_X29_Y10_N23
\inst50|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst9~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X29_Y10_N6
\inst50|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst29~0_combout\ = (\inst50|inst24|inst4|inst~q\ & (\inst50|inst24|inst4|inst8~q\ & \inst50|inst24|inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst4|inst~q\,
	datac => \inst50|inst24|inst4|inst8~q\,
	datad => \inst50|inst24|inst4|inst7~q\,
	combout => \inst50|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X29_Y10_N10
\inst50|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst14~0_combout\ = \inst50|inst24|inst4|inst14~q\ $ (((\inst50|inst24|inst4|inst29~0_combout\ & \inst50|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst29~0_combout\,
	datac => \inst50|inst24|inst4|inst14~q\,
	datad => \inst50|inst24|inst4|inst9~q\,
	combout => \inst50|inst24|inst4|inst14~0_combout\);

-- Location: FF_X29_Y10_N11
\inst50|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst14~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X29_Y10_N4
\inst50|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst17~0_combout\ = \inst50|inst24|inst4|inst17~q\ $ (((\inst50|inst24|inst4|inst29~0_combout\ & (\inst50|inst24|inst4|inst14~q\ & \inst50|inst24|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst29~0_combout\,
	datab => \inst50|inst24|inst4|inst14~q\,
	datac => \inst50|inst24|inst4|inst17~q\,
	datad => \inst50|inst24|inst4|inst9~q\,
	combout => \inst50|inst24|inst4|inst17~0_combout\);

-- Location: FF_X29_Y10_N5
\inst50|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst17~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X29_Y10_N2
\inst50|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst18~combout\ = (\inst50|inst24|inst4|inst14~q\ & (\inst50|inst24|inst4|inst29~0_combout\ & (\inst50|inst24|inst4|inst9~q\ & \inst50|inst24|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst14~q\,
	datab => \inst50|inst24|inst4|inst29~0_combout\,
	datac => \inst50|inst24|inst4|inst9~q\,
	datad => \inst50|inst24|inst4|inst17~q\,
	combout => \inst50|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X29_Y10_N30
\inst50|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst19~0_combout\ = \inst50|inst24|inst4|inst18~combout\ $ (\inst50|inst24|inst4|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst18~combout\,
	datac => \inst50|inst24|inst4|inst19~q\,
	combout => \inst50|inst24|inst4|inst19~0_combout\);

-- Location: FF_X29_Y10_N31
\inst50|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst19~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X29_Y10_N12
\inst50|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst21~0_combout\ = \inst50|inst24|inst4|inst21~q\ $ (((\inst50|inst24|inst4|inst18~combout\ & \inst50|inst24|inst4|inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst18~combout\,
	datac => \inst50|inst24|inst4|inst21~q\,
	datad => \inst50|inst24|inst4|inst19~q\,
	combout => \inst50|inst24|inst4|inst21~0_combout\);

-- Location: FF_X29_Y10_N13
\inst50|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst9|inst~q\,
	d => \inst50|inst24|inst4|inst21~0_combout\,
	clrn => \inst50|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X29_Y10_N14
\inst50|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst29~1_combout\ = (!\inst50|inst24|inst4|inst14~q\ & (!\inst50|inst24|inst4|inst17~q\ & (!\inst50|inst24|inst4|inst19~q\ & !\inst50|inst24|inst4|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst14~q\,
	datab => \inst50|inst24|inst4|inst17~q\,
	datac => \inst50|inst24|inst4|inst19~q\,
	datad => \inst50|inst24|inst4|inst21~q\,
	combout => \inst50|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X29_Y10_N18
\inst50|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst29~combout\ = LCELL((!\inst50|inst24|inst4|inst9~q\ & (\inst50|inst24|inst4|inst29~1_combout\ & \inst50|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst24|inst4|inst9~q\,
	datac => \inst50|inst24|inst4|inst29~1_combout\,
	datad => \inst50|inst24|inst4|inst29~0_combout\,
	combout => \inst50|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X29_Y10_N20
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

-- Location: LCCOMB_X29_Y10_N0
\inst50|inst24|inst4|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst24|inst4|inst4~feeder_combout\ = \inst50|inst24|inst4|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst24|inst4|inst4~0_combout\,
	combout => \inst50|inst24|inst4|inst4~feeder_combout\);

-- Location: FF_X29_Y10_N1
\inst50|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst24|inst4|inst29~combout\,
	d => \inst50|inst24|inst4|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X29_Y11_N18
\inst50|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst25|inst~0_combout\ = !\inst50|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst25|inst~q\,
	combout => \inst50|inst25|inst~0_combout\);

-- Location: LCCOMB_X29_Y11_N28
\inst50|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst25|inst~feeder_combout\ = \inst50|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst25|inst~0_combout\,
	combout => \inst50|inst25|inst~feeder_combout\);

-- Location: FF_X29_Y11_N29
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

-- Location: LCCOMB_X28_Y11_N14
\inst50|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst26|inst~0_combout\ = !\inst50|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst26|inst~q\,
	combout => \inst50|inst26|inst~0_combout\);

-- Location: LCCOMB_X28_Y11_N20
\inst50|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst26|inst~feeder_combout\ = \inst50|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst50|inst26|inst~0_combout\,
	combout => \inst50|inst26|inst~feeder_combout\);

-- Location: FF_X28_Y11_N21
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

-- Location: LCCOMB_X28_Y11_N28
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

-- Location: FF_X28_Y11_N29
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

-- Location: LCCOMB_X28_Y11_N10
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

-- Location: FF_X28_Y11_N11
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

-- Location: LCCOMB_X28_Y11_N8
\inst50|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst30~feeder_combout\ = \inst50|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst50|inst29~q\,
	combout => \inst50|inst30~feeder_combout\);

-- Location: FF_X28_Y11_N9
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

-- Location: LCCOMB_X28_Y11_N30
\inst50|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst31~feeder_combout\ = \inst50|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst50|inst30~q\,
	combout => \inst50|inst31~feeder_combout\);

-- Location: FF_X28_Y11_N31
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

-- Location: LCCOMB_X28_Y11_N16
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

-- Location: FF_X28_Y11_N17
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

-- Location: LCCOMB_X28_Y11_N18
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

-- Location: FF_X28_Y11_N19
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

-- Location: LCCOMB_X28_Y11_N22
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

-- Location: FF_X28_Y11_N23
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

-- Location: FF_X28_Y11_N27
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

-- Location: LCCOMB_X28_Y11_N26
\inst50|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst36~1_combout\ = (\inst50|inst23~q\ & (\inst50|inst33~q\ & (\inst50|1231~q\ & \inst50|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst23~q\,
	datab => \inst50|inst33~q\,
	datac => \inst50|1231~q\,
	datad => \inst50|inst32~q\,
	combout => \inst50|inst36~1_combout\);

-- Location: LCCOMB_X28_Y11_N24
\inst50|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|inst36~0_combout\ = (\inst50|inst29~q\ & (\inst50|inst30~q\ & (\inst50|inst31~q\ & \inst50|dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|inst29~q\,
	datab => \inst50|inst30~q\,
	datac => \inst50|inst31~q\,
	datad => \inst50|dasda~q\,
	combout => \inst50|inst36~0_combout\);

-- Location: LCCOMB_X28_Y11_N12
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

-- Location: LCCOMB_X25_Y11_N22
\inst45|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst2~0_combout\ = !\inst45|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst2~q\,
	combout => \inst45|inst2~0_combout\);

-- Location: LCCOMB_X25_Y11_N30
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

-- Location: LCCOMB_X9_Y19_N22
\inst38|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst|inst~0_combout\ = !\inst38|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst|inst|inst~q\,
	combout => \inst38|inst|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X9_Y19_N18
\inst38|inst|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst|inst~feeder_combout\ = \inst38|inst|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst|inst|inst~0_combout\,
	combout => \inst38|inst|inst|inst|inst~feeder_combout\);

-- Location: FF_X9_Y19_N19
\inst38|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst38|inst|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X9_Y19_N28
\inst38|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst2|inst~0_combout\ = !\inst38|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst|inst2|inst~q\,
	combout => \inst38|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X9_Y19_N14
\inst38|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst2|inst~feeder_combout\ = \inst38|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst|inst2|inst~0_combout\,
	combout => \inst38|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X9_Y19_N15
\inst38|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst38|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X10_Y19_N28
\inst38|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst3|inst~0_combout\ = !\inst38|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst|inst|inst3|inst~q\,
	combout => \inst38|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X10_Y19_N18
\inst38|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst3|inst~feeder_combout\ = \inst38|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst|inst|inst3|inst~0_combout\,
	combout => \inst38|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X10_Y19_N19
\inst38|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst38|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X10_Y19_N22
\inst38|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst4|inst~0_combout\ = !\inst38|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst|inst4|inst~q\,
	combout => \inst38|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X10_Y19_N16
\inst38|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst4|inst~feeder_combout\ = \inst38|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst|inst4|inst~0_combout\,
	combout => \inst38|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X10_Y19_N17
\inst38|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst38|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X11_Y16_N22
\inst38|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst5|inst~0_combout\ = !\inst38|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst|inst5|inst~q\,
	combout => \inst38|inst|inst|inst5|inst~0_combout\);

-- Location: FF_X11_Y16_N27
\inst38|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst|inst4|ALT_INV_inst~q\,
	asdata => \inst38|inst|inst|inst5|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X11_Y16_N28
\inst38|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst6|inst~0_combout\ = !\inst38|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst|inst|inst6|inst~q\,
	combout => \inst38|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X11_Y16_N6
\inst38|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst6|inst~feeder_combout\ = \inst38|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst|inst6|inst~0_combout\,
	combout => \inst38|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X11_Y16_N7
\inst38|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst38|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X12_Y16_N26
\inst38|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst7|inst~0_combout\ = !\inst38|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst38|inst|inst|inst7|inst~q\,
	combout => \inst38|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X12_Y16_N24
\inst38|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst7|inst~feeder_combout\ = \inst38|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst|inst|inst7|inst~0_combout\,
	combout => \inst38|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X12_Y16_N25
\inst38|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst38|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X12_Y16_N14
\inst38|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst8|inst~0_combout\ = !\inst38|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst|inst8|inst~q\,
	combout => \inst38|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X12_Y16_N30
\inst38|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst|inst8|inst~feeder_combout\ = \inst38|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst|inst8|inst~0_combout\,
	combout => \inst38|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X12_Y16_N31
\inst38|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst38|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X11_Y19_N20
\inst38|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst|inst~0_combout\ = !\inst38|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst1|inst|inst~q\,
	combout => \inst38|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X11_Y19_N18
\inst38|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst|inst~feeder_combout\ = \inst38|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst38|inst|inst1|inst|inst~0_combout\,
	combout => \inst38|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X11_Y19_N19
\inst38|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst|inst8|inst~q\,
	d => \inst38|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X11_Y19_N14
\inst38|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst2|inst~0_combout\ = !\inst38|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst1|inst2|inst~q\,
	combout => \inst38|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X11_Y19_N16
\inst38|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst2|inst~feeder_combout\ = \inst38|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst1|inst2|inst~0_combout\,
	combout => \inst38|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X11_Y19_N17
\inst38|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst38|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X12_Y19_N12
\inst38|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst3|inst~0_combout\ = !\inst38|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst38|inst|inst1|inst3|inst~q\,
	combout => \inst38|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X12_Y19_N20
\inst38|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst3|inst~feeder_combout\ = \inst38|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst|inst1|inst3|inst~0_combout\,
	combout => \inst38|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X12_Y19_N21
\inst38|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst38|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X12_Y19_N28
\inst38|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst4|inst~0_combout\ = !\inst38|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst1|inst4|inst~q\,
	combout => \inst38|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X12_Y19_N4
\inst38|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst4|inst~feeder_combout\ = \inst38|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst1|inst4|inst~0_combout\,
	combout => \inst38|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X12_Y19_N5
\inst38|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst38|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X16_Y19_N16
\inst38|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst5|inst~0_combout\ = !\inst38|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst1|inst5|inst~q\,
	combout => \inst38|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X16_Y19_N20
\inst38|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst5|inst~feeder_combout\ = \inst38|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst1|inst5|inst~0_combout\,
	combout => \inst38|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X16_Y19_N21
\inst38|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst38|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X16_Y19_N18
\inst38|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst6|inst~0_combout\ = !\inst38|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst1|inst6|inst~q\,
	combout => \inst38|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X16_Y19_N14
\inst38|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst6|inst~feeder_combout\ = \inst38|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst1|inst6|inst~0_combout\,
	combout => \inst38|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X16_Y19_N15
\inst38|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst38|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X16_Y15_N28
\inst38|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst7|inst~0_combout\ = !\inst38|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst1|inst7|inst~q\,
	combout => \inst38|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X16_Y15_N18
\inst38|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst7|inst~feeder_combout\ = \inst38|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst|inst1|inst7|inst~0_combout\,
	combout => \inst38|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X16_Y15_N19
\inst38|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst38|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X16_Y15_N16
\inst38|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst8|inst~0_combout\ = !\inst38|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst1|inst8|inst~q\,
	combout => \inst38|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X16_Y15_N14
\inst38|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst|inst1|inst8|inst~feeder_combout\ = \inst38|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst|inst1|inst8|inst~0_combout\,
	combout => \inst38|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X16_Y15_N15
\inst38|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst38|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X17_Y15_N26
\inst38|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst2|inst~0_combout\ = !\inst38|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst2|inst~q\,
	combout => \inst38|inst2|inst~0_combout\);

-- Location: LCCOMB_X17_Y15_N20
\inst38|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst2|inst~feeder_combout\ = \inst38|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst2|inst~0_combout\,
	combout => \inst38|inst2|inst~feeder_combout\);

-- Location: FF_X17_Y15_N21
\inst38|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst38|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst2|inst~q\);

-- Location: LCCOMB_X17_Y15_N16
\inst38|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst3|inst~0_combout\ = !\inst38|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst3|inst~q\,
	combout => \inst38|inst3|inst~0_combout\);

-- Location: LCCOMB_X17_Y15_N14
\inst38|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst3|inst~feeder_combout\ = \inst38|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst3|inst~0_combout\,
	combout => \inst38|inst3|inst~feeder_combout\);

-- Location: FF_X17_Y15_N15
\inst38|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst2|ALT_INV_inst~q\,
	d => \inst38|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst3|inst~q\);

-- Location: LCCOMB_X18_Y15_N18
\inst38|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst7|inst~0_combout\ = !\inst38|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst7|inst~q\,
	combout => \inst38|inst7|inst~0_combout\);

-- Location: LCCOMB_X18_Y15_N6
\inst38|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst7|inst~feeder_combout\ = \inst38|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst7|inst~0_combout\,
	combout => \inst38|inst7|inst~feeder_combout\);

-- Location: FF_X18_Y15_N7
\inst38|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst3|ALT_INV_inst~q\,
	d => \inst38|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst7|inst~q\);

-- Location: LCCOMB_X19_Y15_N22
\inst38|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst8|inst~0_combout\ = !\inst38|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst8|inst~q\,
	combout => \inst38|inst8|inst~0_combout\);

-- Location: LCCOMB_X19_Y15_N16
\inst38|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst8|inst~feeder_combout\ = \inst38|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst8|inst~0_combout\,
	combout => \inst38|inst8|inst~feeder_combout\);

-- Location: FF_X19_Y15_N17
\inst38|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst7|ALT_INV_inst~q\,
	d => \inst38|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst8|inst~q\);

-- Location: LCCOMB_X19_Y15_N28
\inst38|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst9|inst~0_combout\ = !\inst38|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst9|inst~q\,
	combout => \inst38|inst9|inst~0_combout\);

-- Location: LCCOMB_X19_Y15_N14
\inst38|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst9|inst~feeder_combout\ = \inst38|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst9|inst~0_combout\,
	combout => \inst38|inst9|inst~feeder_combout\);

-- Location: FF_X19_Y15_N15
\inst38|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst8|ALT_INV_inst~q\,
	d => \inst38|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst9|inst~q\);

-- Location: LCCOMB_X18_Y12_N18
\inst38|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst10|inst~0_combout\ = !\inst38|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst10|inst~q\,
	combout => \inst38|inst10|inst~0_combout\);

-- Location: LCCOMB_X18_Y12_N6
\inst38|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst10|inst~feeder_combout\ = \inst38|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst10|inst~0_combout\,
	combout => \inst38|inst10|inst~feeder_combout\);

-- Location: FF_X18_Y12_N7
\inst38|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst9|ALT_INV_inst~q\,
	d => \inst38|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst10|inst~q\);

-- Location: LCCOMB_X19_Y12_N12
\inst38|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst~0_combout\ = !\inst38|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst13|inst~q\,
	combout => \inst38|inst13|inst~0_combout\);

-- Location: LCCOMB_X19_Y12_N0
\inst38|inst13|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst~feeder_combout\ = \inst38|inst13|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst13|inst~0_combout\,
	combout => \inst38|inst13|inst~feeder_combout\);

-- Location: FF_X19_Y12_N1
\inst38|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst10|inst~q\,
	d => \inst38|inst13|inst~feeder_combout\,
	clrn => \inst38|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst13|inst~q\);

-- Location: LCCOMB_X19_Y12_N14
\inst38|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst7~0_combout\ = \inst38|inst13|inst7~q\ $ (\inst38|inst13|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13|inst7~q\,
	datac => \inst38|inst13|inst~q\,
	combout => \inst38|inst13|inst7~0_combout\);

-- Location: LCCOMB_X19_Y12_N30
\inst38|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst7~feeder_combout\ = \inst38|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst38|inst13|inst7~0_combout\,
	combout => \inst38|inst13|inst7~feeder_combout\);

-- Location: FF_X19_Y12_N31
\inst38|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst10|inst~q\,
	d => \inst38|inst13|inst7~feeder_combout\,
	clrn => \inst38|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst13|inst7~q\);

-- Location: LCCOMB_X19_Y12_N4
\inst38|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst5~0_combout\ = (\inst38|inst13|inst7~q\ & \inst38|inst13|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst13|inst7~q\,
	datad => \inst38|inst13|inst~q\,
	combout => \inst38|inst13|inst5~0_combout\);

-- Location: LCCOMB_X19_Y12_N26
\inst38|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst8~0_combout\ = \inst38|inst13|inst8~q\ $ (((\inst38|inst13|inst7~q\ & \inst38|inst13|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13|inst7~q\,
	datac => \inst38|inst13|inst8~q\,
	datad => \inst38|inst13|inst~q\,
	combout => \inst38|inst13|inst8~0_combout\);

-- Location: FF_X19_Y12_N27
\inst38|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst10|inst~q\,
	d => \inst38|inst13|inst8~0_combout\,
	clrn => \inst38|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst13|inst8~q\);

-- Location: LCCOMB_X19_Y12_N16
\inst38|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst9~0_combout\ = \inst38|inst13|inst9~q\ $ (((\inst38|inst13|inst8~q\ & (\inst38|inst13|inst7~q\ & \inst38|inst13|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13|inst8~q\,
	datab => \inst38|inst13|inst7~q\,
	datac => \inst38|inst13|inst9~q\,
	datad => \inst38|inst13|inst~q\,
	combout => \inst38|inst13|inst9~0_combout\);

-- Location: FF_X19_Y12_N17
\inst38|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst10|inst~q\,
	d => \inst38|inst13|inst9~0_combout\,
	clrn => \inst38|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst13|inst9~q\);

-- Location: LCCOMB_X19_Y12_N24
\inst38|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst14~0_combout\ = \inst38|inst13|inst14~q\ $ (((\inst38|inst13|inst8~q\ & (\inst38|inst13|inst5~0_combout\ & \inst38|inst13|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13|inst8~q\,
	datab => \inst38|inst13|inst5~0_combout\,
	datac => \inst38|inst13|inst14~q\,
	datad => \inst38|inst13|inst9~q\,
	combout => \inst38|inst13|inst14~0_combout\);

-- Location: FF_X19_Y12_N25
\inst38|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst10|inst~q\,
	d => \inst38|inst13|inst14~0_combout\,
	clrn => \inst38|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst13|inst14~q\);

-- Location: LCCOMB_X19_Y12_N18
\inst38|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst16~combout\ = (\inst38|inst13|inst8~q\ & (\inst38|inst13|inst5~0_combout\ & (\inst38|inst13|inst9~q\ & \inst38|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13|inst8~q\,
	datab => \inst38|inst13|inst5~0_combout\,
	datac => \inst38|inst13|inst9~q\,
	datad => \inst38|inst13|inst14~q\,
	combout => \inst38|inst13|inst16~combout\);

-- Location: LCCOMB_X19_Y12_N28
\inst38|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst17~0_combout\ = \inst38|inst13|inst17~q\ $ (\inst38|inst13|inst16~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|inst13|inst17~q\,
	datad => \inst38|inst13|inst16~combout\,
	combout => \inst38|inst13|inst17~0_combout\);

-- Location: FF_X19_Y12_N29
\inst38|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst10|inst~q\,
	d => \inst38|inst13|inst17~0_combout\,
	clrn => \inst38|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst13|inst17~q\);

-- Location: LCCOMB_X19_Y12_N22
\inst38|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst19~0_combout\ = \inst38|inst13|inst19~q\ $ (((\inst38|inst13|inst17~q\ & \inst38|inst13|inst16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst13|inst17~q\,
	datac => \inst38|inst13|inst19~q\,
	datad => \inst38|inst13|inst16~combout\,
	combout => \inst38|inst13|inst19~0_combout\);

-- Location: FF_X19_Y12_N23
\inst38|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst10|inst~q\,
	d => \inst38|inst13|inst19~0_combout\,
	clrn => \inst38|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst13|inst19~q\);

-- Location: LCCOMB_X19_Y12_N8
\inst38|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst21~0_combout\ = \inst38|inst13|inst21~q\ $ (((\inst38|inst13|inst17~q\ & (\inst38|inst13|inst19~q\ & \inst38|inst13|inst16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13|inst17~q\,
	datab => \inst38|inst13|inst19~q\,
	datac => \inst38|inst13|inst21~q\,
	datad => \inst38|inst13|inst16~combout\,
	combout => \inst38|inst13|inst21~0_combout\);

-- Location: FF_X19_Y12_N9
\inst38|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst10|inst~q\,
	d => \inst38|inst13|inst21~0_combout\,
	clrn => \inst38|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst13|inst21~q\);

-- Location: LCCOMB_X19_Y12_N2
\inst38|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst29~0_combout\ = (!\inst38|inst13|inst19~q\ & (!\inst38|inst13|inst17~q\ & (!\inst38|inst13|inst21~q\ & !\inst38|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13|inst19~q\,
	datab => \inst38|inst13|inst17~q\,
	datac => \inst38|inst13|inst21~q\,
	datad => \inst38|inst13|inst14~q\,
	combout => \inst38|inst13|inst29~0_combout\);

-- Location: LCCOMB_X19_Y12_N10
\inst38|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst29~combout\ = LCELL((\inst38|inst13|inst5~0_combout\ & (!\inst38|inst13|inst9~q\ & (!\inst38|inst13|inst8~q\ & \inst38|inst13|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13|inst5~0_combout\,
	datab => \inst38|inst13|inst9~q\,
	datac => \inst38|inst13|inst8~q\,
	datad => \inst38|inst13|inst29~0_combout\,
	combout => \inst38|inst13|inst29~combout\);

-- Location: LCCOMB_X19_Y12_N20
\inst38|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst4~0_combout\ = !\inst38|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13|inst4~q\,
	combout => \inst38|inst13|inst4~0_combout\);

-- Location: LCCOMB_X19_Y12_N6
\inst38|inst13|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|inst13|inst4~feeder_combout\ = \inst38|inst13|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst38|inst13|inst4~0_combout\,
	combout => \inst38|inst13|inst4~feeder_combout\);

-- Location: FF_X19_Y12_N7
\inst38|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst13|inst29~combout\,
	d => \inst38|inst13|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|inst13|inst4~q\);

-- Location: LCCOMB_X23_Y12_N14
\inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst~0_combout\ = !\inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst~q\,
	combout => \inst9|inst~0_combout\);

-- Location: LCCOMB_X23_Y12_N12
\inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst~feeder_combout\ = \inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst~0_combout\,
	combout => \inst9|inst~feeder_combout\);

-- Location: FF_X23_Y12_N13
\inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst13|inst4~q\,
	d => \inst9|inst~feeder_combout\,
	clrn => \inst9|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst~q\);

-- Location: LCCOMB_X23_Y12_N8
\inst9|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst7~0_combout\ = \inst9|inst~q\ $ (\inst9|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst~q\,
	datad => \inst9|inst7~q\,
	combout => \inst9|inst7~0_combout\);

-- Location: LCCOMB_X23_Y12_N18
\inst9|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst7~feeder_combout\ = \inst9|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst7~0_combout\,
	combout => \inst9|inst7~feeder_combout\);

-- Location: FF_X23_Y12_N19
\inst9|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst13|inst4~q\,
	d => \inst9|inst7~feeder_combout\,
	clrn => \inst9|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst7~q\);

-- Location: LCCOMB_X23_Y12_N16
\inst9|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst8~0_combout\ = \inst9|inst8~q\ $ (((\inst9|inst7~q\ & \inst9|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst7~q\,
	datac => \inst9|inst8~q\,
	datad => \inst9|inst~q\,
	combout => \inst9|inst8~0_combout\);

-- Location: FF_X23_Y12_N17
\inst9|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst13|inst4~q\,
	d => \inst9|inst8~0_combout\,
	clrn => \inst9|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst8~q\);

-- Location: LCCOMB_X23_Y12_N26
\inst9|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst9~0_combout\ = \inst9|inst9~q\ $ (((\inst9|inst7~q\ & (\inst9|inst8~q\ & \inst9|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7~q\,
	datab => \inst9|inst8~q\,
	datac => \inst9|inst9~q\,
	datad => \inst9|inst~q\,
	combout => \inst9|inst9~0_combout\);

-- Location: FF_X23_Y12_N27
\inst9|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst13|inst4~q\,
	d => \inst9|inst9~0_combout\,
	clrn => \inst9|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst9~q\);

-- Location: LCCOMB_X23_Y12_N22
\inst9|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst29~0_combout\ = (!\inst9|inst~q\ & (!\inst9|inst8~q\ & (\inst9|inst9~q\ & \inst9|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst~q\,
	datab => \inst9|inst8~q\,
	datac => \inst9|inst9~q\,
	datad => \inst9|inst7~q\,
	combout => \inst9|inst29~0_combout\);

-- Location: LCCOMB_X23_Y12_N6
\inst9|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst13~combout\ = (\inst9|inst~q\ & (\inst9|inst7~q\ & (\inst9|inst9~q\ & \inst9|inst8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst~q\,
	datab => \inst9|inst7~q\,
	datac => \inst9|inst9~q\,
	datad => \inst9|inst8~q\,
	combout => \inst9|inst13~combout\);

-- Location: LCCOMB_X23_Y12_N10
\inst9|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst14~0_combout\ = \inst9|inst14~q\ $ (\inst9|inst13~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst14~q\,
	datad => \inst9|inst13~combout\,
	combout => \inst9|inst14~0_combout\);

-- Location: FF_X23_Y12_N11
\inst9|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst13|inst4~q\,
	d => \inst9|inst14~0_combout\,
	clrn => \inst9|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst14~q\);

-- Location: LCCOMB_X23_Y12_N4
\inst9|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst17~0_combout\ = \inst9|inst17~q\ $ (((\inst9|inst14~q\ & \inst9|inst13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst14~q\,
	datac => \inst9|inst17~q\,
	datad => \inst9|inst13~combout\,
	combout => \inst9|inst17~0_combout\);

-- Location: FF_X23_Y12_N5
\inst9|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst13|inst4~q\,
	d => \inst9|inst17~0_combout\,
	clrn => \inst9|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst17~q\);

-- Location: LCCOMB_X23_Y12_N0
\inst9|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst19~0_combout\ = \inst9|inst19~q\ $ (((\inst9|inst14~q\ & (\inst9|inst13~combout\ & \inst9|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst14~q\,
	datab => \inst9|inst13~combout\,
	datac => \inst9|inst19~q\,
	datad => \inst9|inst17~q\,
	combout => \inst9|inst19~0_combout\);

-- Location: FF_X23_Y12_N1
\inst9|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst13|inst4~q\,
	d => \inst9|inst19~0_combout\,
	clrn => \inst9|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst19~q\);

-- Location: LCCOMB_X23_Y12_N28
\inst9|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst21~0_combout\ = (!\inst9|inst19~q\) # (!\inst9|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst17~q\,
	datad => \inst9|inst19~q\,
	combout => \inst9|inst21~0_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst9|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst21~1_combout\ = \inst9|inst21~q\ $ (((\inst9|inst14~q\ & (\inst9|inst13~combout\ & !\inst9|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst14~q\,
	datab => \inst9|inst13~combout\,
	datac => \inst9|inst21~q\,
	datad => \inst9|inst21~0_combout\,
	combout => \inst9|inst21~1_combout\);

-- Location: FF_X23_Y12_N31
\inst9|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst38|inst13|inst4~q\,
	d => \inst9|inst21~1_combout\,
	clrn => \inst9|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst21~q\);

-- Location: LCCOMB_X23_Y12_N2
\inst9|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst29~1_combout\ = (!\inst9|inst21~q\ & (!\inst9|inst19~q\ & (!\inst9|inst17~q\ & !\inst9|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst21~q\,
	datab => \inst9|inst19~q\,
	datac => \inst9|inst17~q\,
	datad => \inst9|inst14~q\,
	combout => \inst9|inst29~1_combout\);

-- Location: LCCOMB_X23_Y12_N24
\inst9|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst29~combout\ = LCELL((\inst9|inst29~0_combout\ & \inst9|inst29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst29~0_combout\,
	datad => \inst9|inst29~1_combout\,
	combout => \inst9|inst29~combout\);

-- Location: LCCOMB_X23_Y12_N20
\inst9|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst4~0_combout\ = !\inst9|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4~q\,
	combout => \inst9|inst4~0_combout\);

-- Location: FF_X23_Y12_N15
\inst9|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|inst29~combout\,
	asdata => \inst9|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4~q\);

-- Location: LCCOMB_X24_Y12_N26
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

-- Location: FF_X24_Y12_N27
\inst44|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|inst4~q\,
	d => \inst44|inst25|inst~feeder_combout\,
	clrn => \inst44|inst25|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|inst25|inst~q\);

-- Location: LCCOMB_X24_Y12_N28
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

-- Location: FF_X24_Y12_N29
\inst44|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_inst4~q\,
	d => \inst44|inst26|inst~feeder_combout\,
	clrn => \inst44|inst26|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|inst26|inst~q\);

-- Location: LCCOMB_X24_Y12_N18
\inst44|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|inst~combout\ = LCELL((\inst44|inst25|inst~q\) # (\inst44|inst26|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|inst25|inst~q\,
	datad => \inst44|inst26|inst~q\,
	combout => \inst44|inst~combout\);

-- Location: LCCOMB_X24_Y11_N16
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

-- Location: FF_X24_Y11_N17
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

-- Location: FF_X25_Y11_N31
\inst45|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst50|inst36~combout\,
	d => \inst45|inst2~feeder_combout\,
	clrn => \inst45|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst2~q\);

-- Location: LCCOMB_X22_Y22_N30
\inst48|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst|inst~0_combout\ = !\inst48|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst|inst|inst~q\,
	combout => \inst48|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X22_Y22_N16
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

-- Location: FF_X22_Y22_N17
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

-- Location: LCCOMB_X22_Y22_N22
\inst48|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst2|inst~0_combout\ = !\inst48|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst|inst2|inst~q\,
	combout => \inst48|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X22_Y22_N14
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

-- Location: FF_X22_Y22_N15
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

-- Location: LCCOMB_X23_Y22_N28
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

-- Location: LCCOMB_X23_Y22_N14
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

-- Location: FF_X23_Y22_N15
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

-- Location: LCCOMB_X23_Y22_N16
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

-- Location: LCCOMB_X23_Y22_N30
\inst48|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst4|inst~feeder_combout\ = \inst48|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst|inst4|inst~0_combout\,
	combout => \inst48|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X23_Y22_N31
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

-- Location: LCCOMB_X22_Y20_N18
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

-- Location: LCCOMB_X22_Y20_N24
\inst48|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst5|inst~feeder_combout\ = \inst48|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst|inst5|inst~0_combout\,
	combout => \inst48|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X22_Y20_N25
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

-- Location: LCCOMB_X23_Y20_N6
\inst48|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst6|inst~0_combout\ = !\inst48|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst|inst6|inst~q\,
	combout => \inst48|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X23_Y20_N20
\inst48|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst6|inst~feeder_combout\ = \inst48|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst|inst6|inst~0_combout\,
	combout => \inst48|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X23_Y20_N21
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

-- Location: LCCOMB_X23_Y20_N4
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

-- Location: LCCOMB_X23_Y20_N28
\inst48|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst7|inst~feeder_combout\ = \inst48|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst|inst7|inst~0_combout\,
	combout => \inst48|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X23_Y20_N29
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

-- Location: LCCOMB_X28_Y20_N24
\inst48|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst8|inst~0_combout\ = !\inst48|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48|inst24|inst|inst8|inst~q\,
	combout => \inst48|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X28_Y20_N30
\inst48|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst|inst8|inst~feeder_combout\ = \inst48|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48|inst24|inst|inst8|inst~0_combout\,
	combout => \inst48|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X28_Y20_N31
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

-- Location: LCCOMB_X29_Y19_N26
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

-- Location: LCCOMB_X29_Y19_N6
\inst48|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst2|inst~feeder_combout\ = \inst48|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst2|inst~0_combout\,
	combout => \inst48|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X29_Y19_N7
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

-- Location: LCCOMB_X29_Y19_N14
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

-- Location: LCCOMB_X29_Y19_N30
\inst48|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst3|inst~feeder_combout\ = \inst48|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst3|inst~0_combout\,
	combout => \inst48|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X29_Y19_N31
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

-- Location: LCCOMB_X30_Y19_N18
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

-- Location: LCCOMB_X30_Y19_N24
\inst48|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst7|inst~feeder_combout\ = \inst48|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst7|inst~0_combout\,
	combout => \inst48|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X30_Y19_N25
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

-- Location: LCCOMB_X30_Y19_N16
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

-- Location: LCCOMB_X30_Y19_N14
\inst48|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst8|inst~feeder_combout\ = \inst48|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst8|inst~0_combout\,
	combout => \inst48|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X30_Y19_N15
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

-- Location: LCCOMB_X29_Y20_N28
\inst48|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst9|inst~0_combout\ = !\inst48|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst9|inst~q\,
	combout => \inst48|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X29_Y20_N16
\inst48|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst9|inst~feeder_combout\ = \inst48|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst9|inst~0_combout\,
	combout => \inst48|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X29_Y20_N17
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

-- Location: LCCOMB_X29_Y17_N24
\inst48|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst~0_combout\ = !\inst48|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst~q\,
	combout => \inst48|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X29_Y17_N4
\inst48|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst~feeder_combout\ = \inst48|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst~0_combout\,
	combout => \inst48|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X29_Y17_N5
\inst48|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst~feeder_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst~q\);

-- Location: LCCOMB_X29_Y17_N0
\inst48|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst7~0_combout\ = \inst48|inst24|inst4|inst~q\ $ (\inst48|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst~q\,
	datad => \inst48|inst24|inst4|inst7~q\,
	combout => \inst48|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X29_Y17_N10
\inst48|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst7~feeder_combout\ = \inst48|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst7~0_combout\,
	combout => \inst48|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X29_Y17_N11
\inst48|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X29_Y17_N8
\inst48|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst8~0_combout\ = \inst48|inst24|inst4|inst8~q\ $ (((\inst48|inst24|inst4|inst~q\ & \inst48|inst24|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst~q\,
	datab => \inst48|inst24|inst4|inst7~q\,
	datac => \inst48|inst24|inst4|inst8~q\,
	combout => \inst48|inst24|inst4|inst8~0_combout\);

-- Location: FF_X29_Y17_N9
\inst48|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst8~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X29_Y17_N22
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

-- Location: FF_X29_Y17_N23
\inst48|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst9~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X29_Y17_N16
\inst48|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst29~0_combout\ = (\inst48|inst24|inst4|inst~q\ & (\inst48|inst24|inst4|inst8~q\ & \inst48|inst24|inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst24|inst4|inst~q\,
	datac => \inst48|inst24|inst4|inst8~q\,
	datad => \inst48|inst24|inst4|inst7~q\,
	combout => \inst48|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X29_Y17_N28
\inst48|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst14~0_combout\ = \inst48|inst24|inst4|inst14~q\ $ (((\inst48|inst24|inst4|inst9~q\ & \inst48|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst9~q\,
	datab => \inst48|inst24|inst4|inst29~0_combout\,
	datac => \inst48|inst24|inst4|inst14~q\,
	combout => \inst48|inst24|inst4|inst14~0_combout\);

-- Location: FF_X29_Y17_N29
\inst48|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst14~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X29_Y17_N18
\inst48|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst17~0_combout\ = \inst48|inst24|inst4|inst17~q\ $ (((\inst48|inst24|inst4|inst14~q\ & (\inst48|inst24|inst4|inst29~0_combout\ & \inst48|inst24|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst14~q\,
	datab => \inst48|inst24|inst4|inst29~0_combout\,
	datac => \inst48|inst24|inst4|inst17~q\,
	datad => \inst48|inst24|inst4|inst9~q\,
	combout => \inst48|inst24|inst4|inst17~0_combout\);

-- Location: FF_X29_Y17_N19
\inst48|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst17~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X29_Y17_N20
\inst48|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst18~combout\ = (\inst48|inst24|inst4|inst29~0_combout\ & (\inst48|inst24|inst4|inst14~q\ & (\inst48|inst24|inst4|inst9~q\ & \inst48|inst24|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst29~0_combout\,
	datab => \inst48|inst24|inst4|inst14~q\,
	datac => \inst48|inst24|inst4|inst9~q\,
	datad => \inst48|inst24|inst4|inst17~q\,
	combout => \inst48|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X29_Y17_N26
\inst48|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst19~0_combout\ = \inst48|inst24|inst4|inst18~combout\ $ (\inst48|inst24|inst4|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst18~combout\,
	datac => \inst48|inst24|inst4|inst19~q\,
	combout => \inst48|inst24|inst4|inst19~0_combout\);

-- Location: FF_X29_Y17_N27
\inst48|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst19~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X29_Y17_N30
\inst48|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst21~0_combout\ = \inst48|inst24|inst4|inst21~q\ $ (((\inst48|inst24|inst4|inst18~combout\ & \inst48|inst24|inst4|inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst18~combout\,
	datac => \inst48|inst24|inst4|inst21~q\,
	datad => \inst48|inst24|inst4|inst19~q\,
	combout => \inst48|inst24|inst4|inst21~0_combout\);

-- Location: FF_X29_Y17_N31
\inst48|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst9|inst~q\,
	d => \inst48|inst24|inst4|inst21~0_combout\,
	clrn => \inst48|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X29_Y17_N14
\inst48|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst29~1_combout\ = (!\inst48|inst24|inst4|inst19~q\ & (!\inst48|inst24|inst4|inst17~q\ & (!\inst48|inst24|inst4|inst21~q\ & !\inst48|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst19~q\,
	datab => \inst48|inst24|inst4|inst17~q\,
	datac => \inst48|inst24|inst4|inst21~q\,
	datad => \inst48|inst24|inst4|inst14~q\,
	combout => \inst48|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X29_Y17_N12
\inst48|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst29~combout\ = LCELL((!\inst48|inst24|inst4|inst9~q\ & (\inst48|inst24|inst4|inst29~1_combout\ & \inst48|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst24|inst4|inst9~q\,
	datac => \inst48|inst24|inst4|inst29~1_combout\,
	datad => \inst48|inst24|inst4|inst29~0_combout\,
	combout => \inst48|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X29_Y17_N2
\inst48|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst4~0_combout\ = !\inst48|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48|inst24|inst4|inst4~q\,
	combout => \inst48|inst24|inst4|inst4~0_combout\);

-- Location: LCCOMB_X29_Y17_N6
\inst48|inst24|inst4|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst24|inst4|inst4~feeder_combout\ = \inst48|inst24|inst4|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst24|inst4|inst4~0_combout\,
	combout => \inst48|inst24|inst4|inst4~feeder_combout\);

-- Location: FF_X29_Y17_N7
\inst48|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst24|inst4|inst29~combout\,
	d => \inst48|inst24|inst4|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X30_Y17_N18
\inst48|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst25|inst~0_combout\ = !\inst48|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst25|inst~q\,
	combout => \inst48|inst25|inst~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst48|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst25|inst~feeder_combout\ = \inst48|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48|inst25|inst~0_combout\,
	combout => \inst48|inst25|inst~feeder_combout\);

-- Location: FF_X30_Y17_N25
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

-- Location: LCCOMB_X30_Y17_N14
\inst48|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst26|inst~0_combout\ = !\inst48|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|inst26|inst~q\,
	combout => \inst48|inst26|inst~0_combout\);

-- Location: LCCOMB_X30_Y17_N28
\inst48|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst26|inst~feeder_combout\ = \inst48|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst26|inst~0_combout\,
	combout => \inst48|inst26|inst~feeder_combout\);

-- Location: FF_X30_Y17_N29
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

-- Location: LCCOMB_X30_Y13_N18
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

-- Location: FF_X30_Y13_N19
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

-- Location: LCCOMB_X30_Y13_N16
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

-- Location: FF_X30_Y13_N17
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

-- Location: LCCOMB_X30_Y13_N8
\inst48|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst30~feeder_combout\ = \inst48|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst48|inst29~q\,
	combout => \inst48|inst30~feeder_combout\);

-- Location: FF_X30_Y13_N9
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

-- Location: LCCOMB_X30_Y13_N30
\inst48|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst31~feeder_combout\ = \inst48|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|inst30~q\,
	combout => \inst48|inst31~feeder_combout\);

-- Location: FF_X30_Y13_N31
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

-- Location: LCCOMB_X30_Y13_N28
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

-- Location: FF_X30_Y13_N29
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

-- Location: LCCOMB_X30_Y13_N20
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

-- Location: FF_X30_Y13_N21
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

-- Location: LCCOMB_X30_Y13_N22
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

-- Location: FF_X30_Y13_N23
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

-- Location: FF_X30_Y13_N5
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

-- Location: LCCOMB_X30_Y13_N4
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

-- Location: LCCOMB_X30_Y13_N12
\inst48|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|inst36~0_combout\ = (\inst48|inst31~q\ & (\inst48|inst29~q\ & (\inst48|inst30~q\ & \inst48|dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|inst31~q\,
	datab => \inst48|inst29~q\,
	datac => \inst48|inst30~q\,
	datad => \inst48|dasda~q\,
	combout => \inst48|inst36~0_combout\);

-- Location: LCCOMB_X30_Y13_N26
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

-- Location: LCCOMB_X24_Y11_N14
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

-- Location: FF_X24_Y11_N15
\inst47|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst48|inst36~combout\,
	d => \inst47|inst2~0_combout\,
	clrn => \inst45|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|inst2~q\);

-- Location: LCCOMB_X22_Y5_N24
\inst49|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst|inst~0_combout\ = !\inst49|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst|inst~q\,
	combout => \inst49|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X22_Y5_N18
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

-- Location: FF_X22_Y5_N19
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

-- Location: LCCOMB_X22_Y5_N28
\inst49|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst2|inst~0_combout\ = !\inst49|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst2|inst~q\,
	combout => \inst49|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X22_Y5_N14
\inst49|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst2|inst~feeder_combout\ = \inst49|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst|inst2|inst~0_combout\,
	combout => \inst49|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X22_Y5_N15
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

-- Location: LCCOMB_X21_Y5_N18
\inst49|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst3|inst~0_combout\ = !\inst49|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst|inst3|inst~q\,
	combout => \inst49|inst24|inst|inst3|inst~0_combout\);

-- Location: FF_X21_Y5_N5
\inst49|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst2|ALT_INV_inst~q\,
	asdata => \inst49|inst24|inst|inst3|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X21_Y5_N16
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

-- Location: LCCOMB_X21_Y5_N14
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

-- Location: FF_X21_Y5_N15
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

-- Location: LCCOMB_X19_Y5_N10
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

-- Location: LCCOMB_X19_Y5_N14
\inst49|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst5|inst~feeder_combout\ = \inst49|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst|inst5|inst~0_combout\,
	combout => \inst49|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X19_Y5_N15
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

-- Location: LCCOMB_X19_Y5_N4
\inst49|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst6|inst~0_combout\ = !\inst49|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst|inst6|inst~q\,
	combout => \inst49|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X19_Y5_N16
\inst49|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst6|inst~feeder_combout\ = \inst49|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst|inst6|inst~0_combout\,
	combout => \inst49|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X19_Y5_N17
\inst49|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst49|inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X19_Y7_N18
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

-- Location: LCCOMB_X19_Y7_N28
\inst49|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst7|inst~feeder_combout\ = \inst49|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst49|inst24|inst|inst7|inst~0_combout\,
	combout => \inst49|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X19_Y7_N29
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

-- Location: LCCOMB_X19_Y7_N4
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

-- Location: LCCOMB_X19_Y7_N14
\inst49|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst|inst8|inst~feeder_combout\ = \inst49|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst|inst8|inst~0_combout\,
	combout => \inst49|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X19_Y7_N15
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

-- Location: LCCOMB_X19_Y10_N26
\inst49|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst2|inst~0_combout\ = !\inst49|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst2|inst~q\,
	combout => \inst49|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X19_Y10_N14
\inst49|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst2|inst~feeder_combout\ = \inst49|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst2|inst~0_combout\,
	combout => \inst49|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X19_Y10_N15
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

-- Location: LCCOMB_X19_Y10_N28
\inst49|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst3|inst~0_combout\ = !\inst49|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst3|inst~q\,
	combout => \inst49|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X19_Y10_N22
\inst49|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst3|inst~feeder_combout\ = \inst49|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst3|inst~0_combout\,
	combout => \inst49|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X19_Y10_N23
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

-- Location: LCCOMB_X19_Y13_N20
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

-- Location: LCCOMB_X19_Y13_N28
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

-- Location: FF_X19_Y13_N29
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

-- Location: LCCOMB_X19_Y13_N16
\inst49|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst8|inst~0_combout\ = !\inst49|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst8|inst~q\,
	combout => \inst49|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X19_Y13_N14
\inst49|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst8|inst~feeder_combout\ = \inst49|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst8|inst~0_combout\,
	combout => \inst49|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X19_Y13_N15
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

-- Location: LCCOMB_X21_Y16_N18
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

-- Location: LCCOMB_X21_Y16_N6
\inst49|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst9|inst~feeder_combout\ = \inst49|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst9|inst~0_combout\,
	combout => \inst49|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X21_Y16_N7
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

-- Location: LCCOMB_X22_Y16_N28
\inst49|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst~0_combout\ = !\inst49|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst4|inst~q\,
	combout => \inst49|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X22_Y16_N16
\inst49|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst~feeder_combout\ = \inst49|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst4|inst~0_combout\,
	combout => \inst49|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X22_Y16_N17
\inst49|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst~feeder_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst~q\);

-- Location: LCCOMB_X22_Y16_N24
\inst49|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst7~0_combout\ = \inst49|inst24|inst4|inst~q\ $ (\inst49|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst4|inst~q\,
	datad => \inst49|inst24|inst4|inst7~q\,
	combout => \inst49|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X22_Y16_N12
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

-- Location: FF_X22_Y16_N13
\inst49|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X22_Y16_N22
\inst49|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst8~0_combout\ = \inst49|inst24|inst4|inst8~q\ $ (((\inst49|inst24|inst4|inst~q\ & \inst49|inst24|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst4|inst~q\,
	datac => \inst49|inst24|inst4|inst8~q\,
	datad => \inst49|inst24|inst4|inst7~q\,
	combout => \inst49|inst24|inst4|inst8~0_combout\);

-- Location: FF_X22_Y16_N23
\inst49|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst8~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X22_Y16_N4
\inst49|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst29~0_combout\ = (\inst49|inst24|inst4|inst7~q\ & (\inst49|inst24|inst4|inst8~q\ & \inst49|inst24|inst4|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst7~q\,
	datac => \inst49|inst24|inst4|inst8~q\,
	datad => \inst49|inst24|inst4|inst~q\,
	combout => \inst49|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X22_Y16_N8
\inst49|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst9~0_combout\ = \inst49|inst24|inst4|inst9~q\ $ (((\inst49|inst24|inst4|inst7~q\ & (\inst49|inst24|inst4|inst~q\ & \inst49|inst24|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst7~q\,
	datab => \inst49|inst24|inst4|inst~q\,
	datac => \inst49|inst24|inst4|inst9~q\,
	datad => \inst49|inst24|inst4|inst8~q\,
	combout => \inst49|inst24|inst4|inst9~0_combout\);

-- Location: FF_X22_Y16_N9
\inst49|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst9~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X22_Y16_N20
\inst49|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst14~0_combout\ = \inst49|inst24|inst4|inst14~q\ $ (((\inst49|inst24|inst4|inst29~0_combout\ & \inst49|inst24|inst4|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst29~0_combout\,
	datab => \inst49|inst24|inst4|inst9~q\,
	datac => \inst49|inst24|inst4|inst14~q\,
	combout => \inst49|inst24|inst4|inst14~0_combout\);

-- Location: FF_X22_Y16_N21
\inst49|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst14~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X22_Y16_N14
\inst49|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst17~0_combout\ = \inst49|inst24|inst4|inst17~q\ $ (((\inst49|inst24|inst4|inst29~0_combout\ & (\inst49|inst24|inst4|inst9~q\ & \inst49|inst24|inst4|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst29~0_combout\,
	datab => \inst49|inst24|inst4|inst9~q\,
	datac => \inst49|inst24|inst4|inst17~q\,
	datad => \inst49|inst24|inst4|inst14~q\,
	combout => \inst49|inst24|inst4|inst17~0_combout\);

-- Location: FF_X22_Y16_N15
\inst49|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst17~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X22_Y16_N18
\inst49|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst18~combout\ = (\inst49|inst24|inst4|inst29~0_combout\ & (\inst49|inst24|inst4|inst17~q\ & (\inst49|inst24|inst4|inst9~q\ & \inst49|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst29~0_combout\,
	datab => \inst49|inst24|inst4|inst17~q\,
	datac => \inst49|inst24|inst4|inst9~q\,
	datad => \inst49|inst24|inst4|inst14~q\,
	combout => \inst49|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X22_Y16_N26
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

-- Location: FF_X22_Y16_N27
\inst49|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst19~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X22_Y16_N10
\inst49|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst21~0_combout\ = \inst49|inst24|inst4|inst21~q\ $ (((\inst49|inst24|inst4|inst19~q\ & \inst49|inst24|inst4|inst18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst4|inst19~q\,
	datac => \inst49|inst24|inst4|inst21~q\,
	datad => \inst49|inst24|inst4|inst18~combout\,
	combout => \inst49|inst24|inst4|inst21~0_combout\);

-- Location: FF_X22_Y16_N11
\inst49|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst9|inst~q\,
	d => \inst49|inst24|inst4|inst21~0_combout\,
	clrn => \inst49|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X22_Y16_N6
\inst49|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst29~1_combout\ = (!\inst49|inst24|inst4|inst21~q\ & (!\inst49|inst24|inst4|inst17~q\ & (!\inst49|inst24|inst4|inst19~q\ & !\inst49|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst21~q\,
	datab => \inst49|inst24|inst4|inst17~q\,
	datac => \inst49|inst24|inst4|inst19~q\,
	datad => \inst49|inst24|inst4|inst14~q\,
	combout => \inst49|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X22_Y16_N0
\inst49|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst29~combout\ = LCELL((\inst49|inst24|inst4|inst29~1_combout\ & (!\inst49|inst24|inst4|inst9~q\ & \inst49|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst24|inst4|inst29~1_combout\,
	datac => \inst49|inst24|inst4|inst9~q\,
	datad => \inst49|inst24|inst4|inst29~0_combout\,
	combout => \inst49|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X22_Y16_N2
\inst49|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst4~0_combout\ = !\inst49|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|inst24|inst4|inst4~q\,
	combout => \inst49|inst24|inst4|inst4~0_combout\);

-- Location: LCCOMB_X22_Y16_N30
\inst49|inst24|inst4|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst24|inst4|inst4~feeder_combout\ = \inst49|inst24|inst4|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|inst24|inst4|inst4~0_combout\,
	combout => \inst49|inst24|inst4|inst4~feeder_combout\);

-- Location: FF_X22_Y16_N31
\inst49|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst24|inst4|inst29~combout\,
	d => \inst49|inst24|inst4|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X22_Y15_N26
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

-- Location: FF_X22_Y15_N21
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

-- Location: LCCOMB_X22_Y15_N28
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

-- Location: LCCOMB_X22_Y15_N16
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

-- Location: FF_X22_Y15_N17
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

-- Location: LCCOMB_X22_Y11_N16
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

-- Location: FF_X22_Y11_N17
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

-- Location: LCCOMB_X22_Y11_N30
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

-- Location: FF_X22_Y11_N31
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

-- Location: LCCOMB_X22_Y11_N8
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

-- Location: FF_X22_Y11_N9
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

-- Location: FF_X22_Y11_N11
\inst49|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst26|inst~q\,
	asdata => \inst49|inst30~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|inst31~q\);

-- Location: LCCOMB_X22_Y11_N12
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

-- Location: FF_X22_Y11_N13
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

-- Location: LCCOMB_X22_Y11_N28
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

-- Location: FF_X22_Y11_N29
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

-- Location: LCCOMB_X22_Y11_N22
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

-- Location: FF_X22_Y11_N23
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

-- Location: FF_X22_Y11_N27
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

-- Location: LCCOMB_X22_Y11_N26
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

-- Location: LCCOMB_X22_Y11_N24
\inst49|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|inst36~0_combout\ = (\inst49|inst31~q\ & (\inst49|inst30~q\ & (\inst49|inst29~q\ & \inst49|dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|inst31~q\,
	datab => \inst49|inst30~q\,
	datac => \inst49|inst29~q\,
	datad => \inst49|dasda~q\,
	combout => \inst49|inst36~0_combout\);

-- Location: LCCOMB_X22_Y11_N6
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

-- Location: LCCOMB_X23_Y11_N28
\inst|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = !\inst|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2~q\,
	combout => \inst|inst2~0_combout\);

-- Location: FF_X23_Y11_N1
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst49|inst36~combout\,
	asdata => \inst|inst2~0_combout\,
	clrn => \inst45|inst7|ALT_INV_inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: LCCOMB_X24_Y13_N28
\inst51|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst|inst~0_combout\ = !\inst51|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst|inst|inst~q\,
	combout => \inst51|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X24_Y13_N6
\inst51|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst|inst~feeder_combout\ = \inst51|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst|inst|inst~0_combout\,
	combout => \inst51|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X24_Y13_N7
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

-- Location: LCCOMB_X25_Y13_N18
\inst51|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst2|inst~0_combout\ = !\inst51|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst|inst2|inst~q\,
	combout => \inst51|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X25_Y13_N28
\inst51|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst2|inst~feeder_combout\ = \inst51|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst|inst2|inst~0_combout\,
	combout => \inst51|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X25_Y13_N29
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

-- Location: LCCOMB_X25_Y13_N4
\inst51|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst3|inst~0_combout\ = !\inst51|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst3|inst~q\,
	combout => \inst51|inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X25_Y13_N14
\inst51|inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst3|inst~feeder_combout\ = \inst51|inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst|inst3|inst~0_combout\,
	combout => \inst51|inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X25_Y13_N15
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

-- Location: LCCOMB_X24_Y13_N26
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

-- Location: LCCOMB_X24_Y13_N24
\inst51|inst24|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst4|inst~feeder_combout\ = \inst51|inst24|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst4|inst~0_combout\,
	combout => \inst51|inst24|inst|inst4|inst~feeder_combout\);

-- Location: FF_X24_Y13_N25
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

-- Location: LCCOMB_X23_Y13_N18
\inst51|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst5|inst~0_combout\ = !\inst51|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst|inst5|inst~q\,
	combout => \inst51|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N16
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

-- Location: FF_X23_Y13_N17
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

-- Location: LCCOMB_X23_Y13_N4
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

-- Location: LCCOMB_X23_Y13_N0
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

-- Location: FF_X23_Y13_N1
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

-- Location: LCCOMB_X24_Y14_N30
\inst51|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst7|inst~0_combout\ = !\inst51|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst|inst7|inst~q\,
	combout => \inst51|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N4
\inst51|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst7|inst~feeder_combout\ = \inst51|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst|inst7|inst~0_combout\,
	combout => \inst51|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X24_Y14_N5
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

-- Location: LCCOMB_X24_Y14_N14
\inst51|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst8|inst~0_combout\ = !\inst51|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|inst24|inst|inst8|inst~q\,
	combout => \inst51|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst51|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst|inst8|inst~feeder_combout\ = \inst51|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst|inst8|inst~0_combout\,
	combout => \inst51|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X24_Y14_N7
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

-- Location: LCCOMB_X25_Y14_N18
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

-- Location: LCCOMB_X25_Y14_N16
\inst51|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst2|inst~feeder_combout\ = \inst51|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|inst24|inst2|inst~0_combout\,
	combout => \inst51|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X25_Y14_N17
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

-- Location: LCCOMB_X26_Y14_N26
\inst51|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst3|inst~0_combout\ = !\inst51|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst3|inst~q\,
	combout => \inst51|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X26_Y14_N28
\inst51|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst3|inst~feeder_combout\ = \inst51|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst3|inst~0_combout\,
	combout => \inst51|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X26_Y14_N29
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

-- Location: LCCOMB_X26_Y14_N30
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

-- Location: LCCOMB_X26_Y14_N0
\inst51|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst7|inst~feeder_combout\ = \inst51|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst7|inst~0_combout\,
	combout => \inst51|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X26_Y14_N1
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

-- Location: LCCOMB_X26_Y15_N2
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

-- Location: LCCOMB_X26_Y15_N14
\inst51|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst8|inst~feeder_combout\ = \inst51|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst8|inst~0_combout\,
	combout => \inst51|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X26_Y15_N15
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

-- Location: LCCOMB_X26_Y15_N4
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

-- Location: LCCOMB_X26_Y15_N16
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

-- Location: FF_X26_Y15_N17
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

-- Location: LCCOMB_X26_Y13_N12
\inst51|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst~0_combout\ = !\inst51|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|inst24|inst4|inst~q\,
	combout => \inst51|inst24|inst4|inst~0_combout\);

-- Location: LCCOMB_X26_Y13_N22
\inst51|inst24|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst~feeder_combout\ = \inst51|inst24|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst4|inst~0_combout\,
	combout => \inst51|inst24|inst4|inst~feeder_combout\);

-- Location: FF_X26_Y13_N23
\inst51|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst~feeder_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst~q\);

-- Location: LCCOMB_X26_Y13_N16
\inst51|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst7~0_combout\ = \inst51|inst24|inst4|inst~q\ $ (\inst51|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst4|inst~q\,
	datad => \inst51|inst24|inst4|inst7~q\,
	combout => \inst51|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X26_Y13_N28
\inst51|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst7~feeder_combout\ = \inst51|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst7~0_combout\,
	combout => \inst51|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X26_Y13_N29
\inst51|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst7~feeder_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X26_Y13_N4
\inst51|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst8~0_combout\ = \inst51|inst24|inst4|inst8~q\ $ (((\inst51|inst24|inst4|inst7~q\ & \inst51|inst24|inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst7~q\,
	datab => \inst51|inst24|inst4|inst~q\,
	datac => \inst51|inst24|inst4|inst8~q\,
	combout => \inst51|inst24|inst4|inst8~0_combout\);

-- Location: FF_X26_Y13_N5
\inst51|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst8~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X26_Y13_N30
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

-- Location: FF_X26_Y13_N31
\inst51|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst9~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X26_Y13_N26
\inst51|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst29~0_combout\ = (\inst51|inst24|inst4|inst~q\ & (\inst51|inst24|inst4|inst8~q\ & \inst51|inst24|inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst~q\,
	datac => \inst51|inst24|inst4|inst8~q\,
	datad => \inst51|inst24|inst4|inst7~q\,
	combout => \inst51|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X26_Y13_N20
\inst51|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst14~0_combout\ = \inst51|inst24|inst4|inst14~q\ $ (((\inst51|inst24|inst4|inst9~q\ & \inst51|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst9~q\,
	datac => \inst51|inst24|inst4|inst14~q\,
	datad => \inst51|inst24|inst4|inst29~0_combout\,
	combout => \inst51|inst24|inst4|inst14~0_combout\);

-- Location: FF_X26_Y13_N21
\inst51|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst14~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X26_Y13_N14
\inst51|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst17~0_combout\ = \inst51|inst24|inst4|inst17~q\ $ (((\inst51|inst24|inst4|inst9~q\ & (\inst51|inst24|inst4|inst14~q\ & \inst51|inst24|inst4|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst9~q\,
	datab => \inst51|inst24|inst4|inst14~q\,
	datac => \inst51|inst24|inst4|inst17~q\,
	datad => \inst51|inst24|inst4|inst29~0_combout\,
	combout => \inst51|inst24|inst4|inst17~0_combout\);

-- Location: FF_X26_Y13_N15
\inst51|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst17~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X26_Y13_N18
\inst51|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst18~combout\ = (\inst51|inst24|inst4|inst29~0_combout\ & (\inst51|inst24|inst4|inst14~q\ & (\inst51|inst24|inst4|inst9~q\ & \inst51|inst24|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst29~0_combout\,
	datab => \inst51|inst24|inst4|inst14~q\,
	datac => \inst51|inst24|inst4|inst9~q\,
	datad => \inst51|inst24|inst4|inst17~q\,
	combout => \inst51|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X26_Y13_N24
\inst51|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst19~0_combout\ = \inst51|inst24|inst4|inst18~combout\ $ (\inst51|inst24|inst4|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst4|inst18~combout\,
	datac => \inst51|inst24|inst4|inst19~q\,
	combout => \inst51|inst24|inst4|inst19~0_combout\);

-- Location: FF_X26_Y13_N25
\inst51|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst19~0_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X26_Y13_N0
\inst51|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst21~0_combout\ = ((!\inst51|inst24|inst4|inst17~q\) # (!\inst51|inst24|inst4|inst9~q\)) # (!\inst51|inst24|inst4|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst24|inst4|inst14~q\,
	datac => \inst51|inst24|inst4|inst9~q\,
	datad => \inst51|inst24|inst4|inst17~q\,
	combout => \inst51|inst24|inst4|inst21~0_combout\);

-- Location: LCCOMB_X26_Y13_N8
\inst51|inst24|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst21~1_combout\ = \inst51|inst24|inst4|inst21~q\ $ (((\inst51|inst24|inst4|inst19~q\ & (!\inst51|inst24|inst4|inst21~0_combout\ & \inst51|inst24|inst4|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst19~q\,
	datab => \inst51|inst24|inst4|inst21~0_combout\,
	datac => \inst51|inst24|inst4|inst21~q\,
	datad => \inst51|inst24|inst4|inst29~0_combout\,
	combout => \inst51|inst24|inst4|inst21~1_combout\);

-- Location: FF_X26_Y13_N9
\inst51|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst9|inst~q\,
	d => \inst51|inst24|inst4|inst21~1_combout\,
	clrn => \inst51|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X26_Y13_N2
\inst51|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst29~1_combout\ = (!\inst51|inst24|inst4|inst17~q\ & (!\inst51|inst24|inst4|inst19~q\ & (!\inst51|inst24|inst4|inst21~q\ & !\inst51|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst17~q\,
	datab => \inst51|inst24|inst4|inst19~q\,
	datac => \inst51|inst24|inst4|inst21~q\,
	datad => \inst51|inst24|inst4|inst14~q\,
	combout => \inst51|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X26_Y13_N10
\inst51|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst29~combout\ = LCELL((!\inst51|inst24|inst4|inst9~q\ & (\inst51|inst24|inst4|inst29~0_combout\ & \inst51|inst24|inst4|inst29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst24|inst4|inst9~q\,
	datac => \inst51|inst24|inst4|inst29~0_combout\,
	datad => \inst51|inst24|inst4|inst29~1_combout\,
	combout => \inst51|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X26_Y13_N6
\inst51|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst24|inst4|inst4~0_combout\ = !\inst51|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst24|inst4|inst4~q\,
	combout => \inst51|inst24|inst4|inst4~0_combout\);

-- Location: FF_X26_Y13_N13
\inst51|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst24|inst4|inst29~combout\,
	asdata => \inst51|inst24|inst4|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst51|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X25_Y15_N28
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

-- Location: LCCOMB_X25_Y15_N20
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

-- Location: FF_X25_Y15_N21
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

-- Location: LCCOMB_X25_Y15_N30
\inst51|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst26|inst~0_combout\ = !\inst51|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst26|inst~q\,
	combout => \inst51|inst26|inst~0_combout\);

-- Location: LCCOMB_X25_Y15_N26
\inst51|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst26|inst~feeder_combout\ = \inst51|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst51|inst26|inst~0_combout\,
	combout => \inst51|inst26|inst~feeder_combout\);

-- Location: FF_X25_Y15_N27
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

-- Location: LCCOMB_X26_Y11_N24
\inst51|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|dasda~0_combout\ = !\KEY4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY4~input_o\,
	combout => \inst51|dasda~0_combout\);

-- Location: FF_X26_Y11_N25
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

-- Location: LCCOMB_X26_Y11_N14
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

-- Location: FF_X26_Y11_N15
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

-- Location: LCCOMB_X26_Y11_N28
\inst51|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst30~feeder_combout\ = \inst51|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst51|inst29~q\,
	combout => \inst51|inst30~feeder_combout\);

-- Location: FF_X26_Y11_N29
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

-- Location: LCCOMB_X26_Y11_N26
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

-- Location: FF_X26_Y11_N27
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

-- Location: LCCOMB_X26_Y11_N20
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

-- Location: FF_X26_Y11_N21
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

-- Location: LCCOMB_X26_Y11_N18
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

-- Location: FF_X26_Y11_N19
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

-- Location: LCCOMB_X26_Y11_N30
\inst51|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst23~feeder_combout\ = \inst51|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst51|inst33~q\,
	combout => \inst51|inst23~feeder_combout\);

-- Location: FF_X26_Y11_N31
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

-- Location: FF_X26_Y11_N23
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

-- Location: LCCOMB_X26_Y11_N22
\inst51|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst36~1_combout\ = (\inst51|inst23~q\ & (\inst51|inst33~q\ & (\inst51|1231~q\ & \inst51|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst23~q\,
	datab => \inst51|inst33~q\,
	datac => \inst51|1231~q\,
	datad => \inst51|inst32~q\,
	combout => \inst51|inst36~1_combout\);

-- Location: LCCOMB_X26_Y11_N10
\inst51|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst36~0_combout\ = (\inst51|inst31~q\ & (\inst51|inst30~q\ & (\inst51|inst29~q\ & \inst51|dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst31~q\,
	datab => \inst51|inst30~q\,
	datac => \inst51|inst29~q\,
	datad => \inst51|dasda~q\,
	combout => \inst51|inst36~0_combout\);

-- Location: LCCOMB_X26_Y11_N16
\inst51|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst51|inst36~combout\ = LCELL((\inst51|inst36~1_combout\ & \inst51|inst36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|inst36~1_combout\,
	datad => \inst51|inst36~0_combout\,
	combout => \inst51|inst36~combout\);

-- Location: LCCOMB_X26_Y11_N8
\inst46|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst2~0_combout\ = !\inst46|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst2~q\,
	combout => \inst46|inst2~0_combout\);

-- Location: FF_X26_Y11_N17
\inst46|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst51|inst36~combout\,
	asdata => \inst46|inst2~0_combout\,
	clrn => \inst45|inst7|ALT_INV_inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst2~q\);

-- Location: LCCOMB_X25_Y11_N16
\inst75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst75~0_combout\ = (\inst45|inst2~q\ & (\inst47|inst2~q\ & (\inst|inst2~q\ & \inst46|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst2~q\,
	datab => \inst47|inst2~q\,
	datac => \inst|inst2~q\,
	datad => \inst46|inst2~q\,
	combout => \inst75~0_combout\);

-- Location: LCCOMB_X24_Y12_N24
inst75 : cycloneive_lcell_comb
-- Equation(s):
-- \inst75~combout\ = LCELL((\inst75~0_combout\ & \inst44|inst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst75~0_combout\,
	datad => \inst44|inst~combout\,
	combout => \inst75~combout\);

-- Location: CLKCTRL_G8
\inst75~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst75~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst75~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y11_N24
\inst65|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst2~0_combout\ = !\inst65|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst2~q\,
	combout => \inst65|inst2~0_combout\);

-- Location: LCCOMB_X6_Y11_N30
\inst65|inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst2~feeder_combout\ = \inst65|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst2~0_combout\,
	combout => \inst65|inst2~feeder_combout\);

-- Location: LCCOMB_X6_Y11_N6
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

-- Location: FF_X6_Y11_N7
\inst65|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst75~clkctrl_outclk\,
	d => \inst65|inst7|inst~feeder_combout\,
	clrn => \inst65|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst7|inst~q\);

-- Location: FF_X6_Y11_N31
\inst65|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst75~clkctrl_outclk\,
	d => \inst65|inst2~feeder_combout\,
	clrn => \inst65|inst7|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst2~q\);

-- Location: LCCOMB_X5_Y11_N22
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

-- Location: LCCOMB_X5_Y11_N28
\inst65|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst32~combout\ = LCELL((\inst65|inst~q\ & \FPGA_CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst~q\,
	datad => \FPGA_CLK~input_o\,
	combout => \inst65|inst32~combout\);

-- Location: LCCOMB_X4_Y11_N18
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

-- Location: LCCOMB_X4_Y11_N20
\inst65|inst31|inst|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst|inst|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst|inst~feeder_combout\);

-- Location: FF_X4_Y11_N21
\inst65|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst32~combout\,
	d => \inst65|inst31|inst|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X4_Y11_N28
\inst65|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst2|inst~0_combout\ = !\inst65|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst2|inst~q\,
	combout => \inst65|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X4_Y11_N14
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

-- Location: FF_X4_Y11_N15
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

-- Location: LCCOMB_X4_Y18_N18
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

-- Location: LCCOMB_X4_Y18_N24
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

-- Location: FF_X4_Y18_N25
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

-- Location: LCCOMB_X4_Y18_N12
\inst65|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst4|inst~0_combout\ = !\inst65|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst|inst4|inst~q\,
	combout => \inst65|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X4_Y18_N30
\inst65|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X4_Y18_N31
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

-- Location: LCCOMB_X7_Y18_N28
\inst65|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst5|inst~0_combout\ = !\inst65|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst5|inst~q\,
	combout => \inst65|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X7_Y18_N12
\inst65|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X7_Y18_N13
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

-- Location: LCCOMB_X7_Y18_N16
\inst65|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst6|inst~0_combout\ = !\inst65|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst6|inst~q\,
	combout => \inst65|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X7_Y18_N14
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

-- Location: FF_X7_Y18_N15
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

-- Location: LCCOMB_X8_Y18_N6
\inst65|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst7|inst~0_combout\ = !\inst65|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst|inst7|inst~q\,
	combout => \inst65|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X8_Y18_N24
\inst65|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X8_Y18_N25
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

-- Location: LCCOMB_X8_Y18_N30
\inst65|inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst8|inst~0_combout\ = !\inst65|inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst|inst8|inst~q\,
	combout => \inst65|inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X8_Y18_N16
\inst65|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst65|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst65|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X8_Y18_N17
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

-- Location: LCCOMB_X9_Y18_N24
\inst65|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X9_Y18_N18
\inst65|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst65|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X9_Y18_N19
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

-- Location: LCCOMB_X9_Y18_N16
\inst65|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst65|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X9_Y18_N6
\inst65|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X9_Y18_N7
\inst65|inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst65|inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X10_Y18_N26
\inst65|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X10_Y18_N10
\inst65|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X10_Y18_N11
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

-- Location: LCCOMB_X10_Y18_N30
\inst65|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst65|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X10_Y18_N6
\inst65|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X10_Y18_N7
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

-- Location: LCCOMB_X11_Y18_N4
\inst65|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X11_Y18_N18
\inst65|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X11_Y18_N19
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

-- Location: LCCOMB_X11_Y18_N28
\inst65|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst65|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X11_Y18_N6
\inst65|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst65|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst65|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X11_Y18_N7
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

-- Location: LCCOMB_X12_Y18_N24
\inst65|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst65|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X12_Y18_N28
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

-- Location: FF_X12_Y18_N29
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

-- Location: LCCOMB_X12_Y18_N26
\inst65|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst65|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst65|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X12_Y18_N30
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

-- Location: FF_X12_Y18_N31
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

-- Location: LCCOMB_X11_Y17_N30
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

-- Location: LCCOMB_X11_Y17_N22
\inst65|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst2|inst~feeder_combout\ = \inst65|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst2|inst~0_combout\,
	combout => \inst65|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X11_Y17_N23
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

-- Location: LCCOMB_X10_Y17_N26
\inst65|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst3|inst~0_combout\ = !\inst65|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst3|inst~q\,
	combout => \inst65|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X10_Y17_N4
\inst65|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst3|inst~feeder_combout\ = \inst65|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst3|inst~0_combout\,
	combout => \inst65|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X10_Y17_N5
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

-- Location: LCCOMB_X9_Y17_N18
\inst65|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst7|inst~0_combout\ = !\inst65|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst7|inst~q\,
	combout => \inst65|inst31|inst7|inst~0_combout\);

-- Location: FF_X9_Y17_N5
\inst65|inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst3|ALT_INV_inst~q\,
	asdata => \inst65|inst31|inst7|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst7|inst~q\);

-- Location: LCCOMB_X9_Y17_N28
\inst65|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst8|inst~0_combout\ = !\inst65|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst8|inst~q\,
	combout => \inst65|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X9_Y17_N14
\inst65|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst8|inst~feeder_combout\ = \inst65|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst8|inst~0_combout\,
	combout => \inst65|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X9_Y17_N15
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

-- Location: LCCOMB_X8_Y17_N30
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

-- Location: LCCOMB_X8_Y17_N28
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

-- Location: FF_X8_Y17_N29
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

-- Location: LCCOMB_X8_Y17_N16
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

-- Location: LCCOMB_X8_Y17_N22
\inst65|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst10|inst~feeder_combout\ = \inst65|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst10|inst~0_combout\,
	combout => \inst65|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X8_Y17_N23
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

-- Location: LCCOMB_X7_Y17_N20
\inst65|inst31|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst~0_combout\ = !\inst65|inst31|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst~q\,
	combout => \inst65|inst31|inst13|inst~0_combout\);

-- Location: LCCOMB_X7_Y17_N24
\inst65|inst31|inst13|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst~feeder_combout\ = \inst65|inst31|inst13|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst31|inst13|inst~0_combout\,
	combout => \inst65|inst31|inst13|inst~feeder_combout\);

-- Location: FF_X7_Y17_N25
\inst65|inst31|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst13|inst~feeder_combout\,
	clrn => \inst65|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst13|inst~q\);

-- Location: LCCOMB_X7_Y17_N18
\inst65|inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst7~0_combout\ = \inst65|inst31|inst13|inst~q\ $ (\inst65|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst~q\,
	datac => \inst65|inst31|inst13|inst7~q\,
	combout => \inst65|inst31|inst13|inst7~0_combout\);

-- Location: LCCOMB_X7_Y17_N4
\inst65|inst31|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst7~feeder_combout\ = \inst65|inst31|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst13|inst7~0_combout\,
	combout => \inst65|inst31|inst13|inst7~feeder_combout\);

-- Location: FF_X7_Y17_N5
\inst65|inst31|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst13|inst7~feeder_combout\,
	clrn => \inst65|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst13|inst7~q\);

-- Location: LCCOMB_X7_Y17_N22
\inst65|inst31|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst8~0_combout\ = \inst65|inst31|inst13|inst8~q\ $ (((\inst65|inst31|inst13|inst~q\ & \inst65|inst31|inst13|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst~q\,
	datab => \inst65|inst31|inst13|inst7~q\,
	datac => \inst65|inst31|inst13|inst8~q\,
	combout => \inst65|inst31|inst13|inst8~0_combout\);

-- Location: FF_X7_Y17_N23
\inst65|inst31|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst13|inst8~0_combout\,
	clrn => \inst65|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst13|inst8~q\);

-- Location: LCCOMB_X7_Y17_N8
\inst65|inst31|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst9~0_combout\ = \inst65|inst31|inst13|inst9~q\ $ (((\inst65|inst31|inst13|inst~q\ & (\inst65|inst31|inst13|inst8~q\ & \inst65|inst31|inst13|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst~q\,
	datab => \inst65|inst31|inst13|inst8~q\,
	datac => \inst65|inst31|inst13|inst9~q\,
	datad => \inst65|inst31|inst13|inst7~q\,
	combout => \inst65|inst31|inst13|inst9~0_combout\);

-- Location: FF_X7_Y17_N9
\inst65|inst31|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst13|inst9~0_combout\,
	clrn => \inst65|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst13|inst9~q\);

-- Location: LCCOMB_X7_Y17_N2
\inst65|inst31|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst5~0_combout\ = (\inst65|inst31|inst13|inst7~q\ & \inst65|inst31|inst13|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst65|inst31|inst13|inst7~q\,
	datad => \inst65|inst31|inst13|inst~q\,
	combout => \inst65|inst31|inst13|inst5~0_combout\);

-- Location: LCCOMB_X7_Y17_N12
\inst65|inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst14~0_combout\ = \inst65|inst31|inst13|inst14~q\ $ (((\inst65|inst31|inst13|inst8~q\ & (\inst65|inst31|inst13|inst9~q\ & \inst65|inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst8~q\,
	datab => \inst65|inst31|inst13|inst9~q\,
	datac => \inst65|inst31|inst13|inst14~q\,
	datad => \inst65|inst31|inst13|inst5~0_combout\,
	combout => \inst65|inst31|inst13|inst14~0_combout\);

-- Location: FF_X7_Y17_N13
\inst65|inst31|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst13|inst14~0_combout\,
	clrn => \inst65|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst13|inst14~q\);

-- Location: LCCOMB_X7_Y17_N28
\inst65|inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst16~combout\ = (\inst65|inst31|inst13|inst8~q\ & (\inst65|inst31|inst13|inst9~q\ & (\inst65|inst31|inst13|inst5~0_combout\ & \inst65|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst8~q\,
	datab => \inst65|inst31|inst13|inst9~q\,
	datac => \inst65|inst31|inst13|inst5~0_combout\,
	datad => \inst65|inst31|inst13|inst14~q\,
	combout => \inst65|inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X7_Y17_N10
\inst65|inst31|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst17~0_combout\ = \inst65|inst31|inst13|inst16~combout\ $ (\inst65|inst31|inst13|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst16~combout\,
	datac => \inst65|inst31|inst13|inst17~q\,
	combout => \inst65|inst31|inst13|inst17~0_combout\);

-- Location: FF_X7_Y17_N11
\inst65|inst31|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst13|inst17~0_combout\,
	clrn => \inst65|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst13|inst17~q\);

-- Location: LCCOMB_X7_Y17_N0
\inst65|inst31|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst19~0_combout\ = ((!\inst65|inst31|inst13|inst17~q\) # (!\inst65|inst31|inst13|inst9~q\)) # (!\inst65|inst31|inst13|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst14~q\,
	datac => \inst65|inst31|inst13|inst9~q\,
	datad => \inst65|inst31|inst13|inst17~q\,
	combout => \inst65|inst31|inst13|inst19~0_combout\);

-- Location: LCCOMB_X7_Y17_N30
\inst65|inst31|inst13|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst19~1_combout\ = \inst65|inst31|inst13|inst19~q\ $ (((\inst65|inst31|inst13|inst8~q\ & (\inst65|inst31|inst13|inst5~0_combout\ & !\inst65|inst31|inst13|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst8~q\,
	datab => \inst65|inst31|inst13|inst5~0_combout\,
	datac => \inst65|inst31|inst13|inst19~q\,
	datad => \inst65|inst31|inst13|inst19~0_combout\,
	combout => \inst65|inst31|inst13|inst19~1_combout\);

-- Location: FF_X7_Y17_N31
\inst65|inst31|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst13|inst19~1_combout\,
	clrn => \inst65|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst13|inst19~q\);

-- Location: LCCOMB_X7_Y17_N26
\inst65|inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst21~0_combout\ = \inst65|inst31|inst13|inst21~q\ $ (((\inst65|inst31|inst13|inst17~q\ & (\inst65|inst31|inst13|inst19~q\ & \inst65|inst31|inst13|inst16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst17~q\,
	datab => \inst65|inst31|inst13|inst19~q\,
	datac => \inst65|inst31|inst13|inst21~q\,
	datad => \inst65|inst31|inst13|inst16~combout\,
	combout => \inst65|inst31|inst13|inst21~0_combout\);

-- Location: FF_X7_Y17_N27
\inst65|inst31|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst10|inst~q\,
	d => \inst65|inst31|inst13|inst21~0_combout\,
	clrn => \inst65|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst13|inst21~q\);

-- Location: LCCOMB_X7_Y17_N14
\inst65|inst31|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst29~0_combout\ = (!\inst65|inst31|inst13|inst17~q\ & (!\inst65|inst31|inst13|inst19~q\ & (!\inst65|inst31|inst13|inst21~q\ & !\inst65|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst17~q\,
	datab => \inst65|inst31|inst13|inst19~q\,
	datac => \inst65|inst31|inst13|inst21~q\,
	datad => \inst65|inst31|inst13|inst14~q\,
	combout => \inst65|inst31|inst13|inst29~0_combout\);

-- Location: LCCOMB_X7_Y17_N16
\inst65|inst31|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst29~combout\ = LCELL((!\inst65|inst31|inst13|inst8~q\ & (\inst65|inst31|inst13|inst29~0_combout\ & (!\inst65|inst31|inst13|inst9~q\ & \inst65|inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst8~q\,
	datab => \inst65|inst31|inst13|inst29~0_combout\,
	datac => \inst65|inst31|inst13|inst9~q\,
	datad => \inst65|inst31|inst13|inst5~0_combout\,
	combout => \inst65|inst31|inst13|inst29~combout\);

-- Location: LCCOMB_X7_Y17_N6
\inst65|inst31|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst31|inst13|inst4~0_combout\ = !\inst65|inst31|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst31|inst13|inst4~q\,
	combout => \inst65|inst31|inst13|inst4~0_combout\);

-- Location: FF_X7_Y17_N21
\inst65|inst31|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst13|inst29~combout\,
	asdata => \inst65|inst31|inst13|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst31|inst13|inst4~q\);

-- Location: LCCOMB_X7_Y11_N18
\inst65|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst17|inst~0_combout\ = !\inst65|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst65|inst17|inst~q\,
	combout => \inst65|inst17|inst~0_combout\);

-- Location: LCCOMB_X7_Y11_N6
\inst65|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst65|inst17|inst~feeder_combout\ = \inst65|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|inst17|inst~0_combout\,
	combout => \inst65|inst17|inst~feeder_combout\);

-- Location: FF_X7_Y11_N7
\inst65|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst65|inst31|inst13|inst4~q\,
	d => \inst65|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst65|inst17|inst~q\);

-- Location: LCCOMB_X5_Y11_N20
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

-- Location: FF_X5_Y11_N21
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

-- Location: FF_X5_Y11_N23
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

-- Location: LCCOMB_X23_Y11_N2
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

-- Location: LCCOMB_X22_Y14_N6
\inst|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst32~combout\ = LCELL((\FPGA_CLK~input_o\ & \inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_CLK~input_o\,
	datad => \inst|inst~q\,
	combout => \inst|inst32~combout\);

-- Location: LCCOMB_X22_Y14_N24
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

-- Location: FF_X22_Y14_N7
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

-- Location: LCCOMB_X23_Y14_N30
\inst|inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst2|inst~0_combout\ = !\inst|inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst|inst2|inst~q\,
	combout => \inst|inst31|inst|inst|inst2|inst~0_combout\);

-- Location: FF_X23_Y14_N15
\inst|inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst|ALT_INV_inst~q\,
	asdata => \inst|inst31|inst|inst|inst2|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X23_Y14_N26
\inst|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst3|inst~0_combout\ = !\inst|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst|inst3|inst~q\,
	combout => \inst|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X23_Y14_N25
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

-- Location: LCCOMB_X28_Y14_N12
\inst|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst4|inst~0_combout\ = !\inst|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst|inst4|inst~q\,
	combout => \inst|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X28_Y14_N30
\inst|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X28_Y14_N31
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

-- Location: LCCOMB_X28_Y13_N28
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

-- Location: FF_X28_Y13_N13
\inst|inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst|inst|inst4|ALT_INV_inst~q\,
	asdata => \inst|inst31|inst|inst|inst5|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X28_Y13_N30
\inst|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst6|inst~0_combout\ = !\inst|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst|inst6|inst~q\,
	combout => \inst|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X28_Y13_N24
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

-- Location: FF_X28_Y13_N25
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

-- Location: LCCOMB_X24_Y9_N18
\inst|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst7|inst~0_combout\ = !\inst|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst|inst7|inst~q\,
	combout => \inst|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X24_Y9_N20
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

-- Location: FF_X24_Y9_N21
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

-- Location: LCCOMB_X24_Y9_N16
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

-- Location: LCCOMB_X24_Y9_N28
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

-- Location: FF_X24_Y9_N29
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

-- Location: LCCOMB_X23_Y6_N18
\inst|inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst|inst~0_combout\ = !\inst|inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst|inst~q\,
	combout => \inst|inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X23_Y6_N28
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

-- Location: FF_X23_Y6_N29
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

-- Location: LCCOMB_X23_Y6_N16
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

-- Location: LCCOMB_X23_Y6_N14
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

-- Location: FF_X23_Y6_N15
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

-- Location: LCCOMB_X22_Y6_N18
\inst|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X22_Y6_N28
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

-- Location: FF_X22_Y6_N29
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

-- Location: LCCOMB_X22_Y6_N16
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

-- Location: LCCOMB_X22_Y6_N14
\inst|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X22_Y6_N15
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

-- Location: LCCOMB_X21_Y6_N26
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

-- Location: LCCOMB_X21_Y6_N12
\inst|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X21_Y6_N13
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

-- Location: LCCOMB_X21_Y6_N14
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

-- Location: LCCOMB_X21_Y6_N28
\inst|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X21_Y6_N29
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

-- Location: LCCOMB_X19_Y6_N26
\inst|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X19_Y6_N14
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

-- Location: FF_X19_Y6_N15
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

-- Location: LCCOMB_X19_Y6_N28
\inst|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X19_Y6_N22
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

-- Location: FF_X19_Y6_N23
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

-- Location: LCCOMB_X18_Y6_N22
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

-- Location: LCCOMB_X18_Y6_N24
\inst|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst2|inst~feeder_combout\ = \inst|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst2|inst~0_combout\,
	combout => \inst|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X18_Y6_N25
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

-- Location: LCCOMB_X18_Y6_N28
\inst|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst3|inst~0_combout\ = !\inst|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst3|inst~q\,
	combout => \inst|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X18_Y6_N26
\inst|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst3|inst~feeder_combout\ = \inst|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst3|inst~0_combout\,
	combout => \inst|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X18_Y6_N27
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

-- Location: LCCOMB_X18_Y9_N28
\inst|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst7|inst~0_combout\ = !\inst|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst7|inst~q\,
	combout => \inst|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X18_Y9_N20
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

-- Location: FF_X18_Y9_N21
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

-- Location: LCCOMB_X18_Y9_N26
\inst|inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst8|inst~0_combout\ = !\inst|inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst8|inst~q\,
	combout => \inst|inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X18_Y9_N12
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

-- Location: FF_X18_Y9_N13
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

-- Location: LCCOMB_X19_Y9_N28
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

-- Location: LCCOMB_X19_Y9_N14
\inst|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst9|inst~feeder_combout\ = \inst|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst9|inst~0_combout\,
	combout => \inst|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X19_Y9_N15
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

-- Location: LCCOMB_X19_Y9_N26
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

-- Location: LCCOMB_X19_Y9_N30
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

-- Location: FF_X19_Y9_N31
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

-- Location: LCCOMB_X21_Y9_N2
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

-- Location: LCCOMB_X21_Y9_N12
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

-- Location: FF_X21_Y9_N13
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

-- Location: LCCOMB_X21_Y9_N18
\inst|inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst7~0_combout\ = \inst|inst31|inst13|inst~q\ $ (\inst|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst~q\,
	datac => \inst|inst31|inst13|inst7~q\,
	combout => \inst|inst31|inst13|inst7~0_combout\);

-- Location: LCCOMB_X21_Y9_N22
\inst|inst31|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst7~feeder_combout\ = \inst|inst31|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst13|inst7~0_combout\,
	combout => \inst|inst31|inst13|inst7~feeder_combout\);

-- Location: FF_X21_Y9_N23
\inst|inst31|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst7~feeder_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst7~q\);

-- Location: LCCOMB_X21_Y9_N26
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

-- Location: FF_X21_Y9_N27
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

-- Location: LCCOMB_X21_Y9_N8
\inst|inst31|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst9~0_combout\ = \inst|inst31|inst13|inst9~q\ $ (((\inst|inst31|inst13|inst8~q\ & (\inst|inst31|inst13|inst~q\ & \inst|inst31|inst13|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst8~q\,
	datab => \inst|inst31|inst13|inst~q\,
	datac => \inst|inst31|inst13|inst9~q\,
	datad => \inst|inst31|inst13|inst7~q\,
	combout => \inst|inst31|inst13|inst9~0_combout\);

-- Location: FF_X21_Y9_N9
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

-- Location: LCCOMB_X21_Y9_N20
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

-- Location: LCCOMB_X21_Y9_N6
\inst|inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst14~0_combout\ = \inst|inst31|inst13|inst14~q\ $ (((\inst|inst31|inst13|inst5~0_combout\ & (\inst|inst31|inst13|inst9~q\ & \inst|inst31|inst13|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst5~0_combout\,
	datab => \inst|inst31|inst13|inst9~q\,
	datac => \inst|inst31|inst13|inst14~q\,
	datad => \inst|inst31|inst13|inst8~q\,
	combout => \inst|inst31|inst13|inst14~0_combout\);

-- Location: FF_X21_Y9_N7
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

-- Location: LCCOMB_X21_Y9_N24
\inst|inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst16~combout\ = (\inst|inst31|inst13|inst5~0_combout\ & (\inst|inst31|inst13|inst9~q\ & (\inst|inst31|inst13|inst8~q\ & \inst|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst5~0_combout\,
	datab => \inst|inst31|inst13|inst9~q\,
	datac => \inst|inst31|inst13|inst8~q\,
	datad => \inst|inst31|inst13|inst14~q\,
	combout => \inst|inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X21_Y9_N10
\inst|inst31|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst17~0_combout\ = (!\inst|inst31|inst13|inst14~q\) # (!\inst|inst31|inst13|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst13|inst9~q\,
	datad => \inst|inst31|inst13|inst14~q\,
	combout => \inst|inst31|inst13|inst17~0_combout\);

-- Location: LCCOMB_X21_Y9_N16
\inst|inst31|inst13|inst17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst17~1_combout\ = \inst|inst31|inst13|inst17~q\ $ (((\inst|inst31|inst13|inst8~q\ & (\inst|inst31|inst13|inst5~0_combout\ & !\inst|inst31|inst13|inst17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst8~q\,
	datab => \inst|inst31|inst13|inst5~0_combout\,
	datac => \inst|inst31|inst13|inst17~q\,
	datad => \inst|inst31|inst13|inst17~0_combout\,
	combout => \inst|inst31|inst13|inst17~1_combout\);

-- Location: FF_X21_Y9_N17
\inst|inst31|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst17~1_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst17~q\);

-- Location: LCCOMB_X21_Y9_N30
\inst|inst31|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst19~0_combout\ = \inst|inst31|inst13|inst19~q\ $ (((\inst|inst31|inst13|inst16~combout\ & \inst|inst31|inst13|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst16~combout\,
	datac => \inst|inst31|inst13|inst19~q\,
	datad => \inst|inst31|inst13|inst17~q\,
	combout => \inst|inst31|inst13|inst19~0_combout\);

-- Location: FF_X21_Y9_N31
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

-- Location: LCCOMB_X21_Y9_N14
\inst|inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst21~0_combout\ = \inst|inst31|inst13|inst21~q\ $ (((\inst|inst31|inst13|inst16~combout\ & (\inst|inst31|inst13|inst19~q\ & \inst|inst31|inst13|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst16~combout\,
	datab => \inst|inst31|inst13|inst19~q\,
	datac => \inst|inst31|inst13|inst21~q\,
	datad => \inst|inst31|inst13|inst17~q\,
	combout => \inst|inst31|inst13|inst21~0_combout\);

-- Location: FF_X21_Y9_N15
\inst|inst31|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst10|inst~q\,
	d => \inst|inst31|inst13|inst21~0_combout\,
	clrn => \inst|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst21~q\);

-- Location: LCCOMB_X21_Y9_N4
\inst|inst31|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst29~0_combout\ = (!\inst|inst31|inst13|inst19~q\ & (!\inst|inst31|inst13|inst17~q\ & (!\inst|inst31|inst13|inst21~q\ & !\inst|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst19~q\,
	datab => \inst|inst31|inst13|inst17~q\,
	datac => \inst|inst31|inst13|inst21~q\,
	datad => \inst|inst31|inst13|inst14~q\,
	combout => \inst|inst31|inst13|inst29~0_combout\);

-- Location: LCCOMB_X21_Y9_N28
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

-- Location: LCCOMB_X22_Y9_N18
\inst|inst31|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst4~0_combout\ = !\inst|inst31|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst4~q\,
	combout => \inst|inst31|inst13|inst4~0_combout\);

-- Location: FF_X22_Y9_N21
\inst|inst31|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst31|inst13|inst29~combout\,
	asdata => \inst|inst31|inst13|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst31|inst13|inst4~q\);

-- Location: LCCOMB_X22_Y9_N4
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

-- Location: LCCOMB_X22_Y9_N10
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

-- Location: FF_X22_Y9_N11
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

-- Location: LCCOMB_X22_Y11_N18
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

-- Location: FF_X22_Y11_N19
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

-- Location: FF_X23_Y11_N3
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

-- Location: LCCOMB_X19_Y11_N8
\inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\inst11|inst1|inst4~q\ & ((\inst|inst~q\) # ((\inst67|inst7|inst4~q\ & \inst65|inst~q\)))) # (!\inst11|inst1|inst4~q\ & (\inst67|inst7|inst4~q\ & (\inst65|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst4~q\,
	datab => \inst67|inst7|inst4~q\,
	datac => \inst65|inst~q\,
	datad => \inst|inst~q\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X21_Y11_N26
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

-- Location: LCCOMB_X21_Y11_N28
\inst46|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst32~combout\ = LCELL((\inst46|inst~q\ & \FPGA_CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst~q\,
	datad => \FPGA_CLK~input_o\,
	combout => \inst46|inst32~combout\);

-- Location: LCCOMB_X12_Y17_N22
\inst46|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst|inst~0_combout\ = !\inst46|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst|inst|inst~q\,
	combout => \inst46|inst31|inst|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X12_Y17_N10
\inst46|inst31|inst|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst|inst~feeder_combout\);

-- Location: FF_X12_Y17_N11
\inst46|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst32~combout\,
	d => \inst46|inst31|inst|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X12_Y17_N28
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

-- Location: LCCOMB_X12_Y17_N26
\inst46|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X12_Y17_N27
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

-- Location: LCCOMB_X11_Y17_N28
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

-- Location: LCCOMB_X11_Y17_N10
\inst46|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X11_Y17_N11
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

-- Location: LCCOMB_X11_Y21_N22
\inst46|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst4|inst~0_combout\ = !\inst46|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst|inst4|inst~q\,
	combout => \inst46|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X11_Y21_N28
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

-- Location: FF_X11_Y21_N29
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

-- Location: LCCOMB_X11_Y21_N14
\inst46|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst5|inst~0_combout\ = !\inst46|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst|inst5|inst~q\,
	combout => \inst46|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X11_Y21_N30
\inst46|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X11_Y21_N31
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

-- Location: LCCOMB_X12_Y21_N14
\inst46|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst6|inst~0_combout\ = !\inst46|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst|inst6|inst~q\,
	combout => \inst46|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X12_Y21_N4
\inst46|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X12_Y21_N5
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

-- Location: LCCOMB_X16_Y21_N22
\inst46|inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst7|inst~0_combout\ = !\inst46|inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst7|inst~q\,
	combout => \inst46|inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X16_Y21_N14
\inst46|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst46|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst46|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X16_Y21_N15
\inst46|inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X16_Y21_N28
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

-- Location: LCCOMB_X16_Y21_N18
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

-- Location: FF_X16_Y21_N19
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

-- Location: LCCOMB_X17_Y19_N26
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

-- Location: LCCOMB_X17_Y19_N24
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

-- Location: FF_X17_Y19_N25
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

-- Location: LCCOMB_X17_Y19_N22
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

-- Location: LCCOMB_X17_Y19_N30
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

-- Location: FF_X17_Y19_N31
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

-- Location: LCCOMB_X18_Y19_N18
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

-- Location: LCCOMB_X18_Y19_N6
\inst46|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X18_Y19_N7
\inst46|inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X19_Y19_N28
\inst46|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X19_Y19_N22
\inst46|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X19_Y19_N23
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

-- Location: LCCOMB_X19_Y19_N26
\inst46|inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst5|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst5|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X19_Y19_N30
\inst46|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X19_Y19_N31
\inst46|inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst46|inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X22_Y19_N28
\inst46|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\inst46|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst46|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst46|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X22_Y19_N5
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

-- Location: LCCOMB_X22_Y19_N26
\inst46|inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst7|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst|inst1|inst7|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
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

-- Location: FF_X22_Y19_N31
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

-- Location: LCCOMB_X22_Y18_N8
\inst46|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst46|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst46|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X22_Y18_N16
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

-- Location: FF_X22_Y18_N17
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

-- Location: LCCOMB_X21_Y18_N28
\inst46|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst2|inst~0_combout\ = !\inst46|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst2|inst~q\,
	combout => \inst46|inst31|inst2|inst~0_combout\);

-- Location: FF_X21_Y18_N23
\inst46|inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	asdata => \inst46|inst31|inst2|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst2|inst~q\);

-- Location: LCCOMB_X21_Y18_N26
\inst46|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst3|inst~0_combout\ = !\inst46|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst3|inst~q\,
	combout => \inst46|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X21_Y18_N30
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

-- Location: FF_X21_Y18_N31
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

-- Location: LCCOMB_X21_Y17_N28
\inst46|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst7|inst~0_combout\ = !\inst46|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst7|inst~q\,
	combout => \inst46|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X21_Y17_N24
\inst46|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst7|inst~feeder_combout\ = \inst46|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst7|inst~0_combout\,
	combout => \inst46|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X21_Y17_N25
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

-- Location: LCCOMB_X21_Y17_N22
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

-- Location: LCCOMB_X21_Y17_N18
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

-- Location: FF_X21_Y17_N19
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

-- Location: LCCOMB_X22_Y13_N18
\inst46|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst9|inst~0_combout\ = !\inst46|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst9|inst~q\,
	combout => \inst46|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X22_Y13_N14
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

-- Location: FF_X22_Y13_N15
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

-- Location: LCCOMB_X22_Y13_N28
\inst46|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst10|inst~0_combout\ = !\inst46|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst10|inst~q\,
	combout => \inst46|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X22_Y13_N16
\inst46|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst10|inst~feeder_combout\ = \inst46|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst10|inst~0_combout\,
	combout => \inst46|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X22_Y13_N17
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

-- Location: LCCOMB_X21_Y13_N16
\inst46|inst31|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst~0_combout\ = !\inst46|inst31|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst13|inst~q\,
	combout => \inst46|inst31|inst13|inst~0_combout\);

-- Location: FF_X21_Y13_N13
\inst46|inst31|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	asdata => \inst46|inst31|inst13|inst~0_combout\,
	clrn => \inst46|inst31|inst13|ALT_INV_inst29~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst13|inst~q\);

-- Location: LCCOMB_X21_Y13_N2
\inst46|inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst7~0_combout\ = \inst46|inst31|inst13|inst~q\ $ (\inst46|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst13|inst~q\,
	datad => \inst46|inst31|inst13|inst7~q\,
	combout => \inst46|inst31|inst13|inst7~0_combout\);

-- Location: LCCOMB_X21_Y13_N8
\inst46|inst31|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst7~feeder_combout\ = \inst46|inst31|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst13|inst7~0_combout\,
	combout => \inst46|inst31|inst13|inst7~feeder_combout\);

-- Location: FF_X21_Y13_N9
\inst46|inst31|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst13|inst7~feeder_combout\,
	clrn => \inst46|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst13|inst7~q\);

-- Location: LCCOMB_X21_Y13_N10
\inst46|inst31|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst8~0_combout\ = \inst46|inst31|inst13|inst8~q\ $ (((\inst46|inst31|inst13|inst7~q\ & \inst46|inst31|inst13|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst7~q\,
	datac => \inst46|inst31|inst13|inst8~q\,
	datad => \inst46|inst31|inst13|inst~q\,
	combout => \inst46|inst31|inst13|inst8~0_combout\);

-- Location: FF_X21_Y13_N11
\inst46|inst31|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst13|inst8~0_combout\,
	clrn => \inst46|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst13|inst8~q\);

-- Location: LCCOMB_X21_Y13_N14
\inst46|inst31|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst9~0_combout\ = \inst46|inst31|inst13|inst9~q\ $ (((\inst46|inst31|inst13|inst8~q\ & (\inst46|inst31|inst13|inst~q\ & \inst46|inst31|inst13|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst8~q\,
	datab => \inst46|inst31|inst13|inst~q\,
	datac => \inst46|inst31|inst13|inst9~q\,
	datad => \inst46|inst31|inst13|inst7~q\,
	combout => \inst46|inst31|inst13|inst9~0_combout\);

-- Location: FF_X21_Y13_N15
\inst46|inst31|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst13|inst9~0_combout\,
	clrn => \inst46|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst13|inst9~q\);

-- Location: LCCOMB_X21_Y13_N26
\inst46|inst31|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst5~0_combout\ = (\inst46|inst31|inst13|inst7~q\ & \inst46|inst31|inst13|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst31|inst13|inst7~q\,
	datad => \inst46|inst31|inst13|inst~q\,
	combout => \inst46|inst31|inst13|inst5~0_combout\);

-- Location: LCCOMB_X21_Y13_N18
\inst46|inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst14~0_combout\ = \inst46|inst31|inst13|inst14~q\ $ (((\inst46|inst31|inst13|inst8~q\ & (\inst46|inst31|inst13|inst5~0_combout\ & \inst46|inst31|inst13|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst8~q\,
	datab => \inst46|inst31|inst13|inst5~0_combout\,
	datac => \inst46|inst31|inst13|inst14~q\,
	datad => \inst46|inst31|inst13|inst9~q\,
	combout => \inst46|inst31|inst13|inst14~0_combout\);

-- Location: FF_X21_Y13_N19
\inst46|inst31|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst13|inst14~0_combout\,
	clrn => \inst46|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst13|inst14~q\);

-- Location: LCCOMB_X21_Y13_N20
\inst46|inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst16~combout\ = (\inst46|inst31|inst13|inst8~q\ & (\inst46|inst31|inst13|inst9~q\ & (\inst46|inst31|inst13|inst5~0_combout\ & \inst46|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst8~q\,
	datab => \inst46|inst31|inst13|inst9~q\,
	datac => \inst46|inst31|inst13|inst5~0_combout\,
	datad => \inst46|inst31|inst13|inst14~q\,
	combout => \inst46|inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X21_Y13_N6
\inst46|inst31|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst17~0_combout\ = \inst46|inst31|inst13|inst16~combout\ $ (\inst46|inst31|inst13|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst16~combout\,
	datac => \inst46|inst31|inst13|inst17~q\,
	combout => \inst46|inst31|inst13|inst17~0_combout\);

-- Location: FF_X21_Y13_N7
\inst46|inst31|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst13|inst17~0_combout\,
	clrn => \inst46|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst13|inst17~q\);

-- Location: LCCOMB_X21_Y13_N28
\inst46|inst31|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst19~0_combout\ = ((!\inst46|inst31|inst13|inst17~q\) # (!\inst46|inst31|inst13|inst9~q\)) # (!\inst46|inst31|inst13|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst31|inst13|inst14~q\,
	datac => \inst46|inst31|inst13|inst9~q\,
	datad => \inst46|inst31|inst13|inst17~q\,
	combout => \inst46|inst31|inst13|inst19~0_combout\);

-- Location: LCCOMB_X21_Y13_N4
\inst46|inst31|inst13|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst19~1_combout\ = \inst46|inst31|inst13|inst19~q\ $ (((\inst46|inst31|inst13|inst8~q\ & (\inst46|inst31|inst13|inst5~0_combout\ & !\inst46|inst31|inst13|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst8~q\,
	datab => \inst46|inst31|inst13|inst5~0_combout\,
	datac => \inst46|inst31|inst13|inst19~q\,
	datad => \inst46|inst31|inst13|inst19~0_combout\,
	combout => \inst46|inst31|inst13|inst19~1_combout\);

-- Location: FF_X21_Y13_N5
\inst46|inst31|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst13|inst19~1_combout\,
	clrn => \inst46|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst13|inst19~q\);

-- Location: LCCOMB_X21_Y13_N30
\inst46|inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst21~0_combout\ = \inst46|inst31|inst13|inst21~q\ $ (((\inst46|inst31|inst13|inst16~combout\ & (\inst46|inst31|inst13|inst17~q\ & \inst46|inst31|inst13|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst16~combout\,
	datab => \inst46|inst31|inst13|inst17~q\,
	datac => \inst46|inst31|inst13|inst21~q\,
	datad => \inst46|inst31|inst13|inst19~q\,
	combout => \inst46|inst31|inst13|inst21~0_combout\);

-- Location: FF_X21_Y13_N31
\inst46|inst31|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst10|inst~q\,
	d => \inst46|inst31|inst13|inst21~0_combout\,
	clrn => \inst46|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst13|inst21~q\);

-- Location: LCCOMB_X21_Y13_N24
\inst46|inst31|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst29~0_combout\ = (!\inst46|inst31|inst13|inst17~q\ & (!\inst46|inst31|inst13|inst19~q\ & (!\inst46|inst31|inst13|inst21~q\ & !\inst46|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst17~q\,
	datab => \inst46|inst31|inst13|inst19~q\,
	datac => \inst46|inst31|inst13|inst21~q\,
	datad => \inst46|inst31|inst13|inst14~q\,
	combout => \inst46|inst31|inst13|inst29~0_combout\);

-- Location: LCCOMB_X21_Y13_N22
\inst46|inst31|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst29~combout\ = LCELL((!\inst46|inst31|inst13|inst8~q\ & (!\inst46|inst31|inst13|inst9~q\ & (\inst46|inst31|inst13|inst5~0_combout\ & \inst46|inst31|inst13|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst8~q\,
	datab => \inst46|inst31|inst13|inst9~q\,
	datac => \inst46|inst31|inst13|inst5~0_combout\,
	datad => \inst46|inst31|inst13|inst29~0_combout\,
	combout => \inst46|inst31|inst13|inst29~combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst46|inst31|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst31|inst13|inst4~0_combout\ = !\inst46|inst31|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst31|inst13|inst4~q\,
	combout => \inst46|inst31|inst13|inst4~0_combout\);

-- Location: FF_X21_Y13_N17
\inst46|inst31|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst13|inst29~combout\,
	asdata => \inst46|inst31|inst13|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst31|inst13|inst4~q\);

-- Location: LCCOMB_X21_Y15_N18
\inst46|inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst17|inst~0_combout\ = !\inst46|inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst17|inst~q\,
	combout => \inst46|inst17|inst~0_combout\);

-- Location: LCCOMB_X21_Y15_N16
\inst46|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst17|inst~feeder_combout\ = \inst46|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst17|inst~0_combout\,
	combout => \inst46|inst17|inst~feeder_combout\);

-- Location: FF_X21_Y15_N17
\inst46|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst31|inst13|inst4~q\,
	d => \inst46|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst17|inst~q\);

-- Location: LCCOMB_X21_Y11_N22
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

-- Location: FF_X21_Y11_N23
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

-- Location: FF_X21_Y11_N27
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

-- Location: LCCOMB_X6_Y20_N24
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

-- Location: LCCOMB_X6_Y20_N30
\inst13|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst|inst~feeder_combout\ = \inst13|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|inst|inst~0_combout\,
	combout => \inst13|inst|inst|inst~feeder_combout\);

-- Location: FF_X6_Y20_N31
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

-- Location: LCCOMB_X6_Y20_N28
\inst13|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst2|inst~0_combout\ = !\inst13|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|inst2|inst~q\,
	combout => \inst13|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X6_Y20_N6
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

-- Location: FF_X6_Y20_N7
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

-- Location: LCCOMB_X7_Y20_N28
\inst13|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst3|inst~0_combout\ = !\inst13|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst3|inst~q\,
	combout => \inst13|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X7_Y20_N6
\inst13|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst3|inst~feeder_combout\ = \inst13|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst3|inst~0_combout\,
	combout => \inst13|inst|inst3|inst~feeder_combout\);

-- Location: FF_X7_Y20_N7
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

-- Location: LCCOMB_X8_Y20_N6
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

-- Location: LCCOMB_X8_Y20_N10
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

-- Location: FF_X8_Y20_N11
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

-- Location: LCCOMB_X8_Y20_N14
\inst13|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst5|inst~0_combout\ = !\inst13|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|inst5|inst~q\,
	combout => \inst13|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X8_Y20_N30
\inst13|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst5|inst~feeder_combout\ = \inst13|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|inst5|inst~0_combout\,
	combout => \inst13|inst|inst5|inst~feeder_combout\);

-- Location: FF_X8_Y20_N31
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

-- Location: LCCOMB_X9_Y20_N6
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

-- Location: LCCOMB_X9_Y20_N16
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

-- Location: FF_X9_Y20_N17
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

-- Location: LCCOMB_X9_Y20_N4
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

-- Location: LCCOMB_X9_Y20_N14
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

-- Location: FF_X9_Y20_N15
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

-- Location: LCCOMB_X10_Y16_N22
\inst13|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|inst8|inst~0_combout\ = !\inst13|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|inst8|inst~q\,
	combout => \inst13|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X10_Y16_N14
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

-- Location: FF_X10_Y16_N15
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

-- Location: LCCOMB_X13_Y16_N12
\inst13|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst3|inst~0_combout\ = !\inst13|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst3|inst~q\,
	combout => \inst13|inst3|inst~0_combout\);

-- Location: LCCOMB_X13_Y16_N10
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

-- Location: FF_X13_Y16_N11
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

-- Location: LCCOMB_X13_Y16_N16
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

-- Location: LCCOMB_X13_Y16_N14
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

-- Location: FF_X13_Y16_N15
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

-- Location: LCCOMB_X14_Y16_N18
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

-- Location: LCCOMB_X14_Y16_N24
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

-- Location: FF_X14_Y16_N25
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

-- Location: LCCOMB_X14_Y16_N4
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

-- Location: LCCOMB_X14_Y16_N28
\inst13|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst9|inst~feeder_combout\ = \inst13|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst9|inst~0_combout\,
	combout => \inst13|inst9|inst~feeder_combout\);

-- Location: FF_X14_Y16_N29
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

-- Location: LCCOMB_X16_Y16_N16
\inst13|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst~0_combout\ = !\inst13|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst~q\,
	combout => \inst13|inst7|inst~0_combout\);

-- Location: LCCOMB_X16_Y16_N12
\inst13|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst~feeder_combout\ = \inst13|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst~0_combout\,
	combout => \inst13|inst7|inst~feeder_combout\);

-- Location: FF_X16_Y16_N13
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

-- Location: LCCOMB_X16_Y16_N18
\inst13|inst7|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst7~0_combout\ = \inst13|inst7|inst~q\ $ (\inst13|inst7|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst~q\,
	datac => \inst13|inst7|inst7~q\,
	combout => \inst13|inst7|inst7~0_combout\);

-- Location: LCCOMB_X16_Y16_N14
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

-- Location: FF_X16_Y16_N15
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

-- Location: LCCOMB_X16_Y16_N26
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

-- Location: FF_X16_Y16_N27
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

-- Location: LCCOMB_X16_Y16_N22
\inst13|inst7|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst9~0_combout\ = \inst13|inst7|inst9~q\ $ (((\inst13|inst7|inst7~q\ & (\inst13|inst7|inst~q\ & \inst13|inst7|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst7~q\,
	datab => \inst13|inst7|inst~q\,
	datac => \inst13|inst7|inst9~q\,
	datad => \inst13|inst7|inst8~q\,
	combout => \inst13|inst7|inst9~0_combout\);

-- Location: FF_X16_Y16_N23
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

-- Location: LCCOMB_X16_Y16_N28
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

-- Location: LCCOMB_X16_Y16_N0
\inst13|inst7|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst14~0_combout\ = \inst13|inst7|inst14~q\ $ (((\inst13|inst7|inst9~q\ & \inst13|inst7|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst9~q\,
	datab => \inst13|inst7|inst29~0_combout\,
	datac => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst14~0_combout\);

-- Location: FF_X16_Y16_N1
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

-- Location: LCCOMB_X16_Y16_N4
\inst13|inst7|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst17~0_combout\ = \inst13|inst7|inst17~q\ $ (((\inst13|inst7|inst14~q\ & (\inst13|inst7|inst29~0_combout\ & \inst13|inst7|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst14~q\,
	datab => \inst13|inst7|inst29~0_combout\,
	datac => \inst13|inst7|inst17~q\,
	datad => \inst13|inst7|inst9~q\,
	combout => \inst13|inst7|inst17~0_combout\);

-- Location: FF_X16_Y16_N5
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

-- Location: LCCOMB_X16_Y16_N6
\inst13|inst7|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst18~combout\ = (\inst13|inst7|inst29~0_combout\ & (\inst13|inst7|inst17~q\ & (\inst13|inst7|inst9~q\ & \inst13|inst7|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst29~0_combout\,
	datab => \inst13|inst7|inst17~q\,
	datac => \inst13|inst7|inst9~q\,
	datad => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst18~combout\);

-- Location: LCCOMB_X16_Y16_N8
\inst13|inst7|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst19~0_combout\ = \inst13|inst7|inst18~combout\ $ (\inst13|inst7|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst18~combout\,
	datac => \inst13|inst7|inst19~q\,
	combout => \inst13|inst7|inst19~0_combout\);

-- Location: FF_X16_Y16_N9
\inst13|inst7|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst19~0_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst19~q\);

-- Location: LCCOMB_X16_Y16_N2
\inst13|inst7|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst21~0_combout\ = ((!\inst13|inst7|inst19~q\) # (!\inst13|inst7|inst9~q\)) # (!\inst13|inst7|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|inst17~q\,
	datac => \inst13|inst7|inst9~q\,
	datad => \inst13|inst7|inst19~q\,
	combout => \inst13|inst7|inst21~0_combout\);

-- Location: LCCOMB_X16_Y16_N10
\inst13|inst7|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst21~1_combout\ = \inst13|inst7|inst21~q\ $ (((\inst13|inst7|inst14~q\ & (\inst13|inst7|inst29~0_combout\ & !\inst13|inst7|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst14~q\,
	datab => \inst13|inst7|inst29~0_combout\,
	datac => \inst13|inst7|inst21~q\,
	datad => \inst13|inst7|inst21~0_combout\,
	combout => \inst13|inst7|inst21~1_combout\);

-- Location: FF_X16_Y16_N11
\inst13|inst7|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst9|inst~q\,
	d => \inst13|inst7|inst21~1_combout\,
	clrn => \inst13|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst7|inst21~q\);

-- Location: LCCOMB_X16_Y16_N30
\inst13|inst7|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst29~1_combout\ = (!\inst13|inst7|inst21~q\ & (!\inst13|inst7|inst19~q\ & (!\inst13|inst7|inst17~q\ & !\inst13|inst7|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst21~q\,
	datab => \inst13|inst7|inst19~q\,
	datac => \inst13|inst7|inst17~q\,
	datad => \inst13|inst7|inst14~q\,
	combout => \inst13|inst7|inst29~1_combout\);

-- Location: LCCOMB_X16_Y16_N20
\inst13|inst7|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|inst29~combout\ = LCELL((!\inst13|inst7|inst9~q\ & (\inst13|inst7|inst29~1_combout\ & \inst13|inst7|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7|inst9~q\,
	datac => \inst13|inst7|inst29~1_combout\,
	datad => \inst13|inst7|inst29~0_combout\,
	combout => \inst13|inst7|inst29~combout\);

-- Location: LCCOMB_X16_Y16_N24
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

-- Location: FF_X16_Y16_N25
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

-- Location: LCCOMB_X16_Y20_N14
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

-- Location: LCCOMB_X16_Y20_N20
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

-- Location: FF_X16_Y20_N21
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

-- Location: LCCOMB_X16_Y20_N18
\inst12|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst2|inst~0_combout\ = !\inst12|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst2|inst~q\,
	combout => \inst12|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X16_Y20_N4
\inst12|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst2|inst~feeder_combout\ = \inst12|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst2|inst~0_combout\,
	combout => \inst12|inst|inst2|inst~feeder_combout\);

-- Location: FF_X16_Y20_N5
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

-- Location: LCCOMB_X17_Y17_N18
\inst12|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst3|inst~0_combout\ = !\inst12|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|inst3|inst~q\,
	combout => \inst12|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X17_Y17_N20
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

-- Location: FF_X17_Y17_N21
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

-- Location: LCCOMB_X18_Y11_N30
\inst12|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst4|inst~0_combout\ = !\inst12|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst4|inst~q\,
	combout => \inst12|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst12|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst4|inst~feeder_combout\ = \inst12|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst|inst4|inst~0_combout\,
	combout => \inst12|inst|inst4|inst~feeder_combout\);

-- Location: FF_X18_Y11_N29
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

-- Location: LCCOMB_X18_Y11_N2
\inst12|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst5|inst~0_combout\ = !\inst12|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst5|inst~q\,
	combout => \inst12|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst12|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst5|inst~feeder_combout\ = \inst12|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|inst5|inst~0_combout\,
	combout => \inst12|inst|inst5|inst~feeder_combout\);

-- Location: FF_X18_Y11_N27
\inst12|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst4|ALT_INV_inst~q\,
	d => \inst12|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst|inst5|inst~q\);

-- Location: LCCOMB_X17_Y11_N18
\inst12|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst6|inst~0_combout\ = !\inst12|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst6|inst~q\,
	combout => \inst12|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst12|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|inst6|inst~feeder_combout\ = \inst12|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst|inst6|inst~0_combout\,
	combout => \inst12|inst|inst6|inst~feeder_combout\);

-- Location: FF_X17_Y11_N5
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

-- Location: LCCOMB_X16_Y11_N12
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

-- Location: FF_X16_Y11_N3
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

-- Location: LCCOMB_X16_Y11_N28
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

-- Location: LCCOMB_X16_Y11_N14
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

-- Location: FF_X16_Y11_N15
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

-- Location: LCCOMB_X14_Y11_N20
\inst12|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst2|inst~0_combout\ = !\inst12|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|inst~q\,
	combout => \inst12|inst2|inst~0_combout\);

-- Location: FF_X14_Y11_N19
\inst12|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst|inst8|inst~q\,
	asdata => \inst12|inst2|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst2|inst~q\);

-- Location: LCCOMB_X14_Y11_N28
\inst12|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst9|inst~0_combout\ = !\inst12|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst9|inst~q\,
	combout => \inst12|inst9|inst~0_combout\);

-- Location: LCCOMB_X14_Y11_N22
\inst12|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst9|inst~feeder_combout\ = \inst12|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst9|inst~0_combout\,
	combout => \inst12|inst9|inst~feeder_combout\);

-- Location: FF_X14_Y11_N23
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

-- Location: LCCOMB_X13_Y11_N6
\inst12|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst~0_combout\ = !\inst12|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst7|inst~q\,
	combout => \inst12|inst7|inst~0_combout\);

-- Location: LCCOMB_X13_Y11_N18
\inst12|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst~feeder_combout\ = \inst12|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst7|inst~0_combout\,
	combout => \inst12|inst7|inst~feeder_combout\);

-- Location: FF_X13_Y11_N19
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

-- Location: LCCOMB_X13_Y11_N2
\inst12|inst7|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst7~0_combout\ = \inst12|inst7|inst~q\ $ (\inst12|inst7|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst~q\,
	datad => \inst12|inst7|inst7~q\,
	combout => \inst12|inst7|inst7~0_combout\);

-- Location: LCCOMB_X13_Y11_N20
\inst12|inst7|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst7~feeder_combout\ = \inst12|inst7|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst7~0_combout\,
	combout => \inst12|inst7|inst7~feeder_combout\);

-- Location: FF_X13_Y11_N21
\inst12|inst7|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst12|inst9|inst~q\,
	d => \inst12|inst7|inst7~feeder_combout\,
	clrn => \inst12|inst7|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst7|inst7~q\);

-- Location: LCCOMB_X13_Y11_N26
\inst12|inst7|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst8~0_combout\ = \inst12|inst7|inst8~q\ $ (((\inst12|inst7|inst~q\ & \inst12|inst7|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst7|inst~q\,
	datac => \inst12|inst7|inst8~q\,
	datad => \inst12|inst7|inst7~q\,
	combout => \inst12|inst7|inst8~0_combout\);

-- Location: FF_X13_Y11_N27
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

-- Location: LCCOMB_X13_Y11_N22
\inst12|inst7|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst9~0_combout\ = \inst12|inst7|inst9~q\ $ (((\inst12|inst7|inst8~q\ & (\inst12|inst7|inst~q\ & \inst12|inst7|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst8~q\,
	datab => \inst12|inst7|inst~q\,
	datac => \inst12|inst7|inst9~q\,
	datad => \inst12|inst7|inst7~q\,
	combout => \inst12|inst7|inst9~0_combout\);

-- Location: FF_X13_Y11_N23
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

-- Location: LCCOMB_X13_Y11_N30
\inst12|inst7|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst29~0_combout\ = (!\inst12|inst7|inst8~q\ & (!\inst12|inst7|inst7~q\ & (!\inst12|inst7|inst9~q\ & \inst12|inst7|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst8~q\,
	datab => \inst12|inst7|inst7~q\,
	datac => \inst12|inst7|inst9~q\,
	datad => \inst12|inst7|inst~q\,
	combout => \inst12|inst7|inst29~0_combout\);

-- Location: LCCOMB_X13_Y11_N14
\inst12|inst7|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst13~combout\ = (\inst12|inst7|inst9~q\ & (\inst12|inst7|inst~q\ & (\inst12|inst7|inst8~q\ & \inst12|inst7|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst9~q\,
	datab => \inst12|inst7|inst~q\,
	datac => \inst12|inst7|inst8~q\,
	datad => \inst12|inst7|inst7~q\,
	combout => \inst12|inst7|inst13~combout\);

-- Location: LCCOMB_X13_Y11_N8
\inst12|inst7|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst14~0_combout\ = \inst12|inst7|inst14~q\ $ (\inst12|inst7|inst13~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst7|inst14~q\,
	datad => \inst12|inst7|inst13~combout\,
	combout => \inst12|inst7|inst14~0_combout\);

-- Location: FF_X13_Y11_N9
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

-- Location: LCCOMB_X13_Y11_N4
\inst12|inst7|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst17~0_combout\ = \inst12|inst7|inst17~q\ $ (((\inst12|inst7|inst14~q\ & \inst12|inst7|inst13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst7|inst14~q\,
	datac => \inst12|inst7|inst17~q\,
	datad => \inst12|inst7|inst13~combout\,
	combout => \inst12|inst7|inst17~0_combout\);

-- Location: FF_X13_Y11_N5
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

-- Location: LCCOMB_X13_Y11_N28
\inst12|inst7|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst19~0_combout\ = \inst12|inst7|inst19~q\ $ (((\inst12|inst7|inst14~q\ & (\inst12|inst7|inst17~q\ & \inst12|inst7|inst13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst14~q\,
	datab => \inst12|inst7|inst17~q\,
	datac => \inst12|inst7|inst19~q\,
	datad => \inst12|inst7|inst13~combout\,
	combout => \inst12|inst7|inst19~0_combout\);

-- Location: FF_X13_Y11_N29
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

-- Location: LCCOMB_X13_Y11_N10
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

-- Location: LCCOMB_X13_Y11_N12
\inst12|inst7|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst21~1_combout\ = \inst12|inst7|inst21~q\ $ (((\inst12|inst7|inst13~combout\ & (\inst12|inst7|inst14~q\ & !\inst12|inst7|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst13~combout\,
	datab => \inst12|inst7|inst14~q\,
	datac => \inst12|inst7|inst21~q\,
	datad => \inst12|inst7|inst21~0_combout\,
	combout => \inst12|inst7|inst21~1_combout\);

-- Location: FF_X13_Y11_N13
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

-- Location: LCCOMB_X13_Y11_N0
\inst12|inst7|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst29~1_combout\ = (\inst12|inst7|inst17~q\ & (!\inst12|inst7|inst19~q\ & (!\inst12|inst7|inst14~q\ & !\inst12|inst7|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst7|inst17~q\,
	datab => \inst12|inst7|inst19~q\,
	datac => \inst12|inst7|inst14~q\,
	datad => \inst12|inst7|inst21~q\,
	combout => \inst12|inst7|inst29~1_combout\);

-- Location: LCCOMB_X13_Y11_N16
\inst12|inst7|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|inst29~combout\ = LCELL((\inst12|inst7|inst29~0_combout\ & \inst12|inst7|inst29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst7|inst29~0_combout\,
	datad => \inst12|inst7|inst29~1_combout\,
	combout => \inst12|inst7|inst29~combout\);

-- Location: LCCOMB_X13_Y11_N24
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

-- Location: FF_X13_Y11_N25
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

-- Location: LCCOMB_X25_Y11_N28
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

-- Location: LCCOMB_X25_Y12_N30
\inst45|inst32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst32~combout\ = LCELL((\inst45|inst~q\ & \FPGA_CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst~q\,
	datad => \FPGA_CLK~input_o\,
	combout => \inst45|inst32~combout\);

-- Location: LCCOMB_X25_Y12_N24
\inst45|inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst|inst~0_combout\ = !\inst45|inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst|inst|inst~q\,
	combout => \inst45|inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X25_Y12_N31
\inst45|inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst32~combout\,
	asdata => \inst45|inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X25_Y12_N16
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

-- Location: LCCOMB_X25_Y12_N14
\inst45|inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst2|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X25_Y12_N15
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

-- Location: LCCOMB_X26_Y12_N18
\inst45|inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst3|inst~0_combout\ = !\inst45|inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst3|inst~q\,
	combout => \inst45|inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X26_Y12_N16
\inst45|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X26_Y12_N17
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

-- Location: LCCOMB_X26_Y12_N4
\inst45|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst4|inst~0_combout\ = !\inst45|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst|inst4|inst~q\,
	combout => \inst45|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X26_Y12_N14
\inst45|inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst4|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X26_Y12_N15
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

-- Location: LCCOMB_X22_Y12_N18
\inst45|inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst5|inst~0_combout\ = !\inst45|inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst|inst5|inst~q\,
	combout => \inst45|inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X22_Y12_N20
\inst45|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X22_Y12_N21
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

-- Location: LCCOMB_X22_Y12_N4
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

-- Location: LCCOMB_X22_Y12_N2
\inst45|inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst6|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X22_Y12_N3
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

-- Location: LCCOMB_X17_Y12_N22
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

-- Location: LCCOMB_X17_Y12_N14
\inst45|inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst|inst7|inst~feeder_combout\ = \inst45|inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst45|inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X17_Y12_N15
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

-- Location: LCCOMB_X17_Y12_N30
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

-- Location: LCCOMB_X17_Y12_N0
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

-- Location: FF_X17_Y12_N1
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

-- Location: LCCOMB_X17_Y13_N26
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

-- Location: LCCOMB_X17_Y13_N18
\inst45|inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X17_Y13_N19
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

-- Location: LCCOMB_X17_Y13_N4
\inst45|inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst2|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst2|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X17_Y13_N0
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

-- Location: FF_X17_Y13_N1
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

-- Location: LCCOMB_X17_Y16_N28
\inst45|inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst3|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst3|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X17_Y16_N22
\inst45|inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X17_Y16_N23
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

-- Location: LCCOMB_X17_Y16_N14
\inst45|inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst4|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst1|inst4|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X17_Y16_N30
\inst45|inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X17_Y16_N31
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

-- Location: LCCOMB_X18_Y16_N28
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

-- Location: LCCOMB_X18_Y16_N12
\inst45|inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X18_Y16_N13
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

-- Location: LCCOMB_X18_Y16_N8
\inst45|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst45|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst45|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X18_Y16_N26
\inst45|inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X18_Y16_N27
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

-- Location: LCCOMB_X19_Y16_N16
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

-- Location: LCCOMB_X19_Y16_N22
\inst45|inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst45|inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst45|inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X19_Y16_N23
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

-- Location: LCCOMB_X19_Y16_N28
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

-- Location: LCCOMB_X19_Y16_N0
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

-- Location: FF_X19_Y16_N1
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

-- Location: LCCOMB_X19_Y17_N10
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

-- Location: LCCOMB_X19_Y17_N24
\inst45|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst2|inst~feeder_combout\ = \inst45|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst2|inst~0_combout\,
	combout => \inst45|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X19_Y17_N25
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

-- Location: LCCOMB_X19_Y17_N22
\inst45|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst3|inst~0_combout\ = !\inst45|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst3|inst~q\,
	combout => \inst45|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X19_Y17_N14
\inst45|inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst3|inst~feeder_combout\ = \inst45|inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst3|inst~0_combout\,
	combout => \inst45|inst31|inst3|inst~feeder_combout\);

-- Location: FF_X19_Y17_N15
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

-- Location: LCCOMB_X22_Y17_N14
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

-- Location: LCCOMB_X22_Y17_N26
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

-- Location: FF_X22_Y17_N27
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

-- Location: LCCOMB_X23_Y17_N26
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

-- Location: LCCOMB_X23_Y17_N20
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

-- Location: FF_X23_Y17_N21
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

-- Location: LCCOMB_X23_Y17_N14
\inst45|inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst9|inst~0_combout\ = !\inst45|inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst9|inst~q\,
	combout => \inst45|inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X23_Y17_N22
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

-- Location: FF_X23_Y17_N23
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

-- Location: LCCOMB_X24_Y17_N28
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

-- Location: FF_X24_Y17_N1
\inst45|inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst9|ALT_INV_inst~q\,
	asdata => \inst45|inst31|inst10|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst10|inst~q\);

-- Location: LCCOMB_X24_Y18_N18
\inst45|inst31|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst~0_combout\ = !\inst45|inst31|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst13|inst~q\,
	combout => \inst45|inst31|inst13|inst~0_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst45|inst31|inst13|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst~feeder_combout\ = \inst45|inst31|inst13|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst13|inst~0_combout\,
	combout => \inst45|inst31|inst13|inst~feeder_combout\);

-- Location: FF_X24_Y18_N3
\inst45|inst31|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst13|inst~feeder_combout\,
	clrn => \inst45|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst13|inst~q\);

-- Location: LCCOMB_X24_Y18_N6
\inst45|inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst7~0_combout\ = \inst45|inst31|inst13|inst~q\ $ (\inst45|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst13|inst~q\,
	datac => \inst45|inst31|inst13|inst7~q\,
	combout => \inst45|inst31|inst13|inst7~0_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst45|inst31|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst7~feeder_combout\ = \inst45|inst31|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst13|inst7~0_combout\,
	combout => \inst45|inst31|inst13|inst7~feeder_combout\);

-- Location: FF_X24_Y18_N15
\inst45|inst31|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst13|inst7~feeder_combout\,
	clrn => \inst45|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst13|inst7~q\);

-- Location: LCCOMB_X24_Y18_N10
\inst45|inst31|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst5~0_combout\ = (\inst45|inst31|inst13|inst7~q\ & \inst45|inst31|inst13|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst13|inst7~q\,
	datad => \inst45|inst31|inst13|inst~q\,
	combout => \inst45|inst31|inst13|inst5~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst45|inst31|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst8~0_combout\ = \inst45|inst31|inst13|inst8~q\ $ (((\inst45|inst31|inst13|inst~q\ & \inst45|inst31|inst13|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst13|inst~q\,
	datac => \inst45|inst31|inst13|inst8~q\,
	datad => \inst45|inst31|inst13|inst7~q\,
	combout => \inst45|inst31|inst13|inst8~0_combout\);

-- Location: FF_X24_Y18_N25
\inst45|inst31|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst13|inst8~0_combout\,
	clrn => \inst45|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst13|inst8~q\);

-- Location: LCCOMB_X24_Y18_N30
\inst45|inst31|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst9~0_combout\ = \inst45|inst31|inst13|inst9~q\ $ (((\inst45|inst31|inst13|inst8~q\ & (\inst45|inst31|inst13|inst~q\ & \inst45|inst31|inst13|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst13|inst8~q\,
	datab => \inst45|inst31|inst13|inst~q\,
	datac => \inst45|inst31|inst13|inst9~q\,
	datad => \inst45|inst31|inst13|inst7~q\,
	combout => \inst45|inst31|inst13|inst9~0_combout\);

-- Location: FF_X24_Y18_N31
\inst45|inst31|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst13|inst9~0_combout\,
	clrn => \inst45|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst13|inst9~q\);

-- Location: LCCOMB_X24_Y18_N28
\inst45|inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst14~0_combout\ = \inst45|inst31|inst13|inst14~q\ $ (((\inst45|inst31|inst13|inst9~q\ & (\inst45|inst31|inst13|inst5~0_combout\ & \inst45|inst31|inst13|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst13|inst9~q\,
	datab => \inst45|inst31|inst13|inst5~0_combout\,
	datac => \inst45|inst31|inst13|inst14~q\,
	datad => \inst45|inst31|inst13|inst8~q\,
	combout => \inst45|inst31|inst13|inst14~0_combout\);

-- Location: FF_X24_Y18_N29
\inst45|inst31|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst13|inst14~0_combout\,
	clrn => \inst45|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst13|inst14~q\);

-- Location: LCCOMB_X24_Y18_N22
\inst45|inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst16~combout\ = (\inst45|inst31|inst13|inst9~q\ & (\inst45|inst31|inst13|inst8~q\ & (\inst45|inst31|inst13|inst5~0_combout\ & \inst45|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst13|inst9~q\,
	datab => \inst45|inst31|inst13|inst8~q\,
	datac => \inst45|inst31|inst13|inst5~0_combout\,
	datad => \inst45|inst31|inst13|inst14~q\,
	combout => \inst45|inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X24_Y18_N26
\inst45|inst31|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst17~0_combout\ = \inst45|inst31|inst13|inst17~q\ $ (\inst45|inst31|inst13|inst16~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|inst31|inst13|inst17~q\,
	datad => \inst45|inst31|inst13|inst16~combout\,
	combout => \inst45|inst31|inst13|inst17~0_combout\);

-- Location: FF_X24_Y18_N27
\inst45|inst31|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst13|inst17~0_combout\,
	clrn => \inst45|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst13|inst17~q\);

-- Location: LCCOMB_X24_Y18_N0
\inst45|inst31|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst19~0_combout\ = ((!\inst45|inst31|inst13|inst14~q\) # (!\inst45|inst31|inst13|inst9~q\)) # (!\inst45|inst31|inst13|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|inst31|inst13|inst8~q\,
	datac => \inst45|inst31|inst13|inst9~q\,
	datad => \inst45|inst31|inst13|inst14~q\,
	combout => \inst45|inst31|inst13|inst19~0_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst45|inst31|inst13|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst19~1_combout\ = \inst45|inst31|inst13|inst19~q\ $ (((\inst45|inst31|inst13|inst17~q\ & (\inst45|inst31|inst13|inst5~0_combout\ & !\inst45|inst31|inst13|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst13|inst17~q\,
	datab => \inst45|inst31|inst13|inst5~0_combout\,
	datac => \inst45|inst31|inst13|inst19~q\,
	datad => \inst45|inst31|inst13|inst19~0_combout\,
	combout => \inst45|inst31|inst13|inst19~1_combout\);

-- Location: FF_X24_Y18_N9
\inst45|inst31|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst13|inst19~1_combout\,
	clrn => \inst45|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst13|inst19~q\);

-- Location: LCCOMB_X24_Y18_N4
\inst45|inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst21~0_combout\ = \inst45|inst31|inst13|inst21~q\ $ (((\inst45|inst31|inst13|inst17~q\ & (\inst45|inst31|inst13|inst19~q\ & \inst45|inst31|inst13|inst16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst13|inst17~q\,
	datab => \inst45|inst31|inst13|inst19~q\,
	datac => \inst45|inst31|inst13|inst21~q\,
	datad => \inst45|inst31|inst13|inst16~combout\,
	combout => \inst45|inst31|inst13|inst21~0_combout\);

-- Location: FF_X24_Y18_N5
\inst45|inst31|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst10|inst~q\,
	d => \inst45|inst31|inst13|inst21~0_combout\,
	clrn => \inst45|inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst13|inst21~q\);

-- Location: LCCOMB_X24_Y18_N16
\inst45|inst31|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst29~0_combout\ = (!\inst45|inst31|inst13|inst17~q\ & (!\inst45|inst31|inst13|inst21~q\ & (!\inst45|inst31|inst13|inst19~q\ & !\inst45|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst13|inst17~q\,
	datab => \inst45|inst31|inst13|inst21~q\,
	datac => \inst45|inst31|inst13|inst19~q\,
	datad => \inst45|inst31|inst13|inst14~q\,
	combout => \inst45|inst31|inst13|inst29~0_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst45|inst31|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst29~combout\ = LCELL((\inst45|inst31|inst13|inst5~0_combout\ & (!\inst45|inst31|inst13|inst8~q\ & (!\inst45|inst31|inst13|inst9~q\ & \inst45|inst31|inst13|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst13|inst5~0_combout\,
	datab => \inst45|inst31|inst13|inst8~q\,
	datac => \inst45|inst31|inst13|inst9~q\,
	datad => \inst45|inst31|inst13|inst29~0_combout\,
	combout => \inst45|inst31|inst13|inst29~combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst45|inst31|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst31|inst13|inst4~0_combout\ = !\inst45|inst31|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst31|inst13|inst4~q\,
	combout => \inst45|inst31|inst13|inst4~0_combout\);

-- Location: FF_X24_Y18_N19
\inst45|inst31|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst13|inst29~combout\,
	asdata => \inst45|inst31|inst13|inst4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst31|inst13|inst4~q\);

-- Location: LCCOMB_X24_Y15_N26
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

-- Location: LCCOMB_X24_Y15_N30
\inst45|inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|inst17|inst~feeder_combout\ = \inst45|inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|inst17|inst~0_combout\,
	combout => \inst45|inst17|inst~feeder_combout\);

-- Location: FF_X24_Y15_N31
\inst45|inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst45|inst31|inst13|inst4~q\,
	d => \inst45|inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|inst17|inst~q\);

-- Location: LCCOMB_X24_Y15_N0
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

-- Location: FF_X24_Y15_N1
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

-- Location: FF_X25_Y11_N29
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

-- Location: LCCOMB_X21_Y11_N14
\inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\inst46|inst~q\ & ((\inst13|inst7|inst4~q\) # ((\inst12|inst7|inst4~q\ & \inst45|inst~q\)))) # (!\inst46|inst~q\ & (((\inst12|inst7|inst4~q\ & \inst45|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst~q\,
	datab => \inst13|inst7|inst4~q\,
	datac => \inst12|inst7|inst4~q\,
	datad => \inst45|inst~q\,
	combout => \inst10~1_combout\);

-- Location: LCCOMB_X22_Y11_N10
inst10 : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (\inst10~0_combout\) # (\inst10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~0_combout\,
	datad => \inst10~1_combout\,
	combout => \inst10~combout\);

ww_beep <= \beep~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;
END structure;


