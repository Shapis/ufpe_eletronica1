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

-- DATE "06/24/2023 17:25:23"

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
	beep : INOUT std_logic;
	KEY4 : IN std_logic;
	FPGA_CLK : IN std_logic;
	LED : OUT std_logic_vector(1 DOWNTO 1)
	);
END projeto1;

-- Design Ports Information
-- LED[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beep	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY4	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_KEY4 : std_logic;
SIGNAL ww_FPGA_CLK : std_logic;
SIGNAL ww_LED : std_logic_vector(1 DOWNTO 1);
SIGNAL \FPGA_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \beep~input_o\ : std_logic;
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \FPGA_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst4|inst~0_combout\ : std_logic;
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
SIGNAL \inst|inst1|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|inst21~1_combout\ : std_logic;
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
SIGNAL \KEY4~input_o\ : std_logic;
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
SIGNAL \inst|inst10|inst~feeder_combout\ : std_logic;
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
SIGNAL \inst|inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst|inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst|inst31|inst13|inst21~0_combout\ : std_logic;
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
SIGNAL \inst|inst30|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst2|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst9|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst~q\ : std_logic;
SIGNAL \inst|inst30|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst7~feeder_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst7~q\ : std_logic;
SIGNAL \inst|inst30|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst8~q\ : std_logic;
SIGNAL \inst|inst30|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst9~q\ : std_logic;
SIGNAL \inst|inst30|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst14~q\ : std_logic;
SIGNAL \inst|inst30|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst17~q\ : std_logic;
SIGNAL \inst|inst30|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst19~q\ : std_logic;
SIGNAL \inst|inst30|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst21~1_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst21~q\ : std_logic;
SIGNAL \inst|inst30|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst29~combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst30|inst4|inst4~q\ : std_logic;
SIGNAL \inst|inst29~combout\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst30|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst|inst30|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst30|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst1|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst17|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst|inst10|ALT_INV_inst~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY4 <= KEY4;
ww_FPGA_CLK <= FPGA_CLK;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FPGA_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FPGA_CLK~input_o\);
\inst|inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst|inst~q\;
\inst|inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst2|inst~q\;
\inst|inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst3|inst~q\;
\inst|inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst4|inst~q\;
\inst|inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst5|inst~q\;
\inst|inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst6|inst~q\;
\inst|inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst|inst7|inst~q\;
\inst|inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst|inst~q\;
\inst|inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst2|inst~q\;
\inst|inst1|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst|inst~q\;
\inst|inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst3|inst~q\;
\inst|inst1|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst2|inst~q\;
\inst|inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst4|inst~q\;
\inst|inst1|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst3|inst~q\;
\inst|inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst5|inst~q\;
\inst|inst1|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst4|inst~q\;
\inst|inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst6|inst~q\;
\inst|inst1|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst5|inst~q\;
\inst|inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst7|inst~q\;
\inst|inst1|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst6|inst~q\;
\inst|inst30|inst|inst|ALT_INV_inst~q\ <= NOT \inst|inst30|inst|inst|inst~q\;
\inst|inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst|inst31|inst|inst1|inst8|inst~q\;
\inst|inst1|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst|inst7|inst~q\;
\inst|inst30|inst|inst2|ALT_INV_inst~q\ <= NOT \inst|inst30|inst|inst2|inst~q\;
\inst|inst31|inst2|ALT_INV_inst~q\ <= NOT \inst|inst31|inst2|inst~q\;
\inst|inst30|inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst30|inst|inst3|inst~q\;
\inst|inst31|inst3|ALT_INV_inst~q\ <= NOT \inst|inst31|inst3|inst~q\;
\inst|inst1|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst2|inst~q\;
\inst|inst30|inst|inst4|ALT_INV_inst~q\ <= NOT \inst|inst30|inst|inst4|inst~q\;
\inst|inst31|inst7|ALT_INV_inst~q\ <= NOT \inst|inst31|inst7|inst~q\;
\inst|inst1|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst3|inst~q\;
\inst|inst30|inst|inst5|ALT_INV_inst~q\ <= NOT \inst|inst30|inst|inst5|inst~q\;
\inst|inst31|inst8|ALT_INV_inst~q\ <= NOT \inst|inst31|inst8|inst~q\;
\inst|inst1|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst7|inst~q\;
\inst|inst30|inst|inst6|ALT_INV_inst~q\ <= NOT \inst|inst30|inst|inst6|inst~q\;
\inst|inst31|inst9|ALT_INV_inst~q\ <= NOT \inst|inst31|inst9|inst~q\;
\inst|inst1|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst|inst1|inst24|inst8|inst~q\;
\inst|inst30|inst|inst7|ALT_INV_inst~q\ <= NOT \inst|inst30|inst|inst7|inst~q\;
\inst|inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst|inst31|inst13|inst29~combout\;
\inst|inst1|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst|inst1|inst24|inst4|inst29~combout\;
\inst|inst30|inst2|ALT_INV_inst~q\ <= NOT \inst|inst30|inst2|inst~q\;
\inst|inst30|inst4|ALT_INV_inst29~combout\ <= NOT \inst|inst30|inst4|inst29~combout\;
\inst|inst3|ALT_INV_inst~q\ <= NOT \inst|inst3|inst~q\;
\inst|inst1|inst25|ALT_INV_inst~q\ <= NOT \inst|inst1|inst25|inst~q\;
\inst|inst17|ALT_INV_inst~q\ <= NOT \inst|inst17|inst~q\;
\inst|inst10|ALT_INV_inst~q\ <= NOT \inst|inst10|inst~q\;
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
	i => \inst|inst29~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \beep~output_o\);

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

-- Location: LCCOMB_X22_Y16_N24
\inst|inst1|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst|inst~0_combout\ = !\inst|inst1|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst|inst|inst~q\,
	combout => \inst|inst1|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\inst|inst1|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X22_Y16_N29
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

-- Location: LCCOMB_X22_Y16_N22
\inst|inst1|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst2|inst~0_combout\ = !\inst|inst1|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst|inst2|inst~q\,
	combout => \inst|inst1|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X22_Y16_N14
\inst|inst1|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst2|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst2|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X22_Y16_N15
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

-- Location: LCCOMB_X23_Y16_N18
\inst|inst1|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst3|inst~0_combout\ = !\inst|inst1|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst|inst3|inst~q\,
	combout => \inst|inst1|inst24|inst|inst3|inst~0_combout\);

-- Location: FF_X23_Y16_N7
\inst|inst1|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst2|ALT_INV_inst~q\,
	asdata => \inst|inst1|inst24|inst|inst3|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X24_Y16_N10
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

-- Location: FF_X24_Y16_N21
\inst|inst1|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst|inst3|ALT_INV_inst~q\,
	asdata => \inst|inst1|inst24|inst|inst4|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X24_Y16_N22
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

-- Location: LCCOMB_X24_Y16_N14
\inst|inst1|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst5|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst5|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X24_Y16_N15
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

-- Location: LCCOMB_X24_Y13_N16
\inst|inst1|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst6|inst~0_combout\ = !\inst|inst1|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst6|inst~q\,
	combout => \inst|inst1|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X24_Y13_N12
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

-- Location: FF_X24_Y13_N13
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

-- Location: LCCOMB_X24_Y13_N28
\inst|inst1|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst7|inst~0_combout\ = !\inst|inst1|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst|inst7|inst~q\,
	combout => \inst|inst1|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst|inst1|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst7|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|inst24|inst|inst7|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X24_Y13_N31
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

-- Location: LCCOMB_X23_Y12_N4
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

-- Location: LCCOMB_X23_Y12_N20
\inst|inst1|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst|inst8|inst~feeder_combout\ = \inst|inst1|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst|inst8|inst~0_combout\,
	combout => \inst|inst1|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X23_Y12_N21
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

-- Location: LCCOMB_X23_Y12_N28
\inst|inst1|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst2|inst~0_combout\ = !\inst|inst1|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst2|inst~q\,
	combout => \inst|inst1|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
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

-- Location: FF_X23_Y12_N11
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

-- Location: LCCOMB_X22_Y12_N18
\inst|inst1|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst3|inst~0_combout\ = !\inst|inst1|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst3|inst~q\,
	combout => \inst|inst1|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst|inst1|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst3|inst~feeder_combout\ = \inst|inst1|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst3|inst~0_combout\,
	combout => \inst|inst1|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X22_Y12_N25
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

-- Location: LCCOMB_X22_Y12_N4
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

-- Location: LCCOMB_X22_Y12_N14
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

-- Location: FF_X22_Y12_N15
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

-- Location: LCCOMB_X22_Y10_N18
\inst|inst1|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst8|inst~0_combout\ = !\inst|inst1|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst8|inst~q\,
	combout => \inst|inst1|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X22_Y10_N8
\inst|inst1|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst8|inst~feeder_combout\ = \inst|inst1|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst8|inst~0_combout\,
	combout => \inst|inst1|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X22_Y10_N9
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

-- Location: LCCOMB_X22_Y10_N4
\inst|inst1|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst9|inst~0_combout\ = !\inst|inst1|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst9|inst~q\,
	combout => \inst|inst1|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X22_Y10_N22
\inst|inst1|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst9|inst~feeder_combout\ = \inst|inst1|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst9|inst~0_combout\,
	combout => \inst|inst1|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X22_Y10_N23
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

-- Location: LCCOMB_X31_Y10_N28
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

-- Location: LCCOMB_X31_Y10_N16
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

-- Location: FF_X31_Y10_N17
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

-- Location: LCCOMB_X31_Y10_N6
\inst|inst1|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst7~0_combout\ = \inst|inst1|inst24|inst4|inst~q\ $ (\inst|inst1|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst4|inst~q\,
	datad => \inst|inst1|inst24|inst4|inst7~q\,
	combout => \inst|inst1|inst24|inst4|inst7~0_combout\);

-- Location: LCCOMB_X31_Y10_N10
\inst|inst1|inst24|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst7~feeder_combout\ = \inst|inst1|inst24|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst4|inst7~0_combout\,
	combout => \inst|inst1|inst24|inst4|inst7~feeder_combout\);

-- Location: FF_X31_Y10_N11
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

-- Location: LCCOMB_X31_Y10_N8
\inst|inst1|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst8~0_combout\ = \inst|inst1|inst24|inst4|inst8~q\ $ (((\inst|inst1|inst24|inst4|inst~q\ & \inst|inst1|inst24|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst~q\,
	datab => \inst|inst1|inst24|inst4|inst7~q\,
	datac => \inst|inst1|inst24|inst4|inst8~q\,
	combout => \inst|inst1|inst24|inst4|inst8~0_combout\);

-- Location: FF_X31_Y10_N9
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

-- Location: LCCOMB_X31_Y10_N4
\inst|inst1|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst9~0_combout\ = \inst|inst1|inst24|inst4|inst9~q\ $ (((\inst|inst1|inst24|inst4|inst~q\ & (\inst|inst1|inst24|inst4|inst7~q\ & \inst|inst1|inst24|inst4|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst~q\,
	datab => \inst|inst1|inst24|inst4|inst7~q\,
	datac => \inst|inst1|inst24|inst4|inst9~q\,
	datad => \inst|inst1|inst24|inst4|inst8~q\,
	combout => \inst|inst1|inst24|inst4|inst9~0_combout\);

-- Location: FF_X31_Y10_N5
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

-- Location: LCCOMB_X31_Y10_N30
\inst|inst1|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst29~0_combout\ = (\inst|inst1|inst24|inst4|inst~q\ & (\inst|inst1|inst24|inst4|inst8~q\ & \inst|inst1|inst24|inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst4|inst~q\,
	datac => \inst|inst1|inst24|inst4|inst8~q\,
	datad => \inst|inst1|inst24|inst4|inst7~q\,
	combout => \inst|inst1|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X31_Y10_N24
\inst|inst1|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst14~0_combout\ = \inst|inst1|inst24|inst4|inst14~q\ $ (((\inst|inst1|inst24|inst4|inst9~q\ & \inst|inst1|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst4|inst9~q\,
	datac => \inst|inst1|inst24|inst4|inst14~q\,
	datad => \inst|inst1|inst24|inst4|inst29~0_combout\,
	combout => \inst|inst1|inst24|inst4|inst14~0_combout\);

-- Location: FF_X31_Y10_N25
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

-- Location: LCCOMB_X31_Y10_N26
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

-- Location: FF_X31_Y10_N27
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

-- Location: LCCOMB_X31_Y10_N12
\inst|inst1|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst18~combout\ = (\inst|inst1|inst24|inst4|inst9~q\ & (\inst|inst1|inst24|inst4|inst29~0_combout\ & (\inst|inst1|inst24|inst4|inst17~q\ & \inst|inst1|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst9~q\,
	datab => \inst|inst1|inst24|inst4|inst29~0_combout\,
	datac => \inst|inst1|inst24|inst4|inst17~q\,
	datad => \inst|inst1|inst24|inst4|inst14~q\,
	combout => \inst|inst1|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X31_Y10_N22
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

-- Location: FF_X31_Y10_N23
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

-- Location: LCCOMB_X31_Y10_N14
\inst|inst1|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst21~0_combout\ = ((!\inst|inst1|inst24|inst4|inst14~q\) # (!\inst|inst1|inst24|inst4|inst17~q\)) # (!\inst|inst1|inst24|inst4|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst19~q\,
	datac => \inst|inst1|inst24|inst4|inst17~q\,
	datad => \inst|inst1|inst24|inst4|inst14~q\,
	combout => \inst|inst1|inst24|inst4|inst21~0_combout\);

-- Location: LCCOMB_X31_Y10_N18
\inst|inst1|inst24|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst21~1_combout\ = \inst|inst1|inst24|inst4|inst21~q\ $ (((\inst|inst1|inst24|inst4|inst29~0_combout\ & (!\inst|inst1|inst24|inst4|inst21~0_combout\ & \inst|inst1|inst24|inst4|inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst29~0_combout\,
	datab => \inst|inst1|inst24|inst4|inst21~0_combout\,
	datac => \inst|inst1|inst24|inst4|inst21~q\,
	datad => \inst|inst1|inst24|inst4|inst9~q\,
	combout => \inst|inst1|inst24|inst4|inst21~1_combout\);

-- Location: FF_X31_Y10_N19
\inst|inst1|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst24|inst9|inst~q\,
	d => \inst|inst1|inst24|inst4|inst21~1_combout\,
	clrn => \inst|inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X31_Y10_N20
\inst|inst1|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst29~1_combout\ = (!\inst|inst1|inst24|inst4|inst19~q\ & (!\inst|inst1|inst24|inst4|inst21~q\ & (!\inst|inst1|inst24|inst4|inst17~q\ & !\inst|inst1|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst24|inst4|inst19~q\,
	datab => \inst|inst1|inst24|inst4|inst21~q\,
	datac => \inst|inst1|inst24|inst4|inst17~q\,
	datad => \inst|inst1|inst24|inst4|inst14~q\,
	combout => \inst|inst1|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X31_Y10_N0
\inst|inst1|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst29~combout\ = LCELL((!\inst|inst1|inst24|inst4|inst9~q\ & (\inst|inst1|inst24|inst4|inst29~0_combout\ & \inst|inst1|inst24|inst4|inst29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst24|inst4|inst9~q\,
	datac => \inst|inst1|inst24|inst4|inst29~0_combout\,
	datad => \inst|inst1|inst24|inst4|inst29~1_combout\,
	combout => \inst|inst1|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X31_Y11_N30
\inst|inst1|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst24|inst4|inst4~0_combout\ = !\inst|inst1|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst24|inst4|inst4~q\,
	combout => \inst|inst1|inst24|inst4|inst4~0_combout\);

-- Location: LCCOMB_X31_Y11_N24
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

-- Location: FF_X31_Y11_N25
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

-- Location: LCCOMB_X31_Y11_N28
\inst|inst1|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst25|inst~0_combout\ = !\inst|inst1|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|inst25|inst~q\,
	combout => \inst|inst1|inst25|inst~0_combout\);

-- Location: LCCOMB_X31_Y11_N6
\inst|inst1|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst25|inst~feeder_combout\ = \inst|inst1|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst25|inst~0_combout\,
	combout => \inst|inst1|inst25|inst~feeder_combout\);

-- Location: FF_X31_Y11_N7
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

-- Location: LCCOMB_X30_Y11_N26
\inst|inst1|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst26|inst~0_combout\ = !\inst|inst1|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst26|inst~q\,
	combout => \inst|inst1|inst26|inst~0_combout\);

-- Location: LCCOMB_X30_Y11_N4
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

-- Location: FF_X30_Y11_N5
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

-- Location: LCCOMB_X30_Y11_N30
\inst|inst1|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|dasda~0_combout\ = !\KEY4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY4~input_o\,
	combout => \inst|inst1|dasda~0_combout\);

-- Location: FF_X30_Y11_N31
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

-- Location: LCCOMB_X30_Y11_N20
\inst|inst1|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst29~feeder_combout\ = \inst|inst1|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|dasda~q\,
	combout => \inst|inst1|inst29~feeder_combout\);

-- Location: FF_X30_Y11_N21
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

-- Location: LCCOMB_X30_Y11_N24
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

-- Location: FF_X30_Y11_N25
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

-- Location: LCCOMB_X30_Y11_N8
\inst|inst1|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst31~feeder_combout\ = \inst|inst1|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|inst30~q\,
	combout => \inst|inst1|inst31~feeder_combout\);

-- Location: FF_X30_Y11_N9
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

-- Location: LCCOMB_X30_Y11_N18
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

-- Location: FF_X30_Y11_N19
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

-- Location: LCCOMB_X30_Y11_N12
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

-- Location: FF_X30_Y11_N13
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

-- Location: LCCOMB_X30_Y11_N14
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

-- Location: FF_X30_Y11_N15
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

-- Location: FF_X30_Y11_N23
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

-- Location: LCCOMB_X30_Y11_N22
\inst|inst1|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst36~1_combout\ = (\inst|inst1|inst33~q\ & (\inst|inst1|inst23~q\ & (\inst|inst1|1231~q\ & \inst|inst1|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst33~q\,
	datab => \inst|inst1|inst23~q\,
	datac => \inst|inst1|1231~q\,
	datad => \inst|inst1|inst32~q\,
	combout => \inst|inst1|inst36~1_combout\);

-- Location: LCCOMB_X30_Y11_N28
\inst|inst1|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst36~0_combout\ = (\inst|inst1|dasda~q\ & (\inst|inst1|inst30~q\ & (\inst|inst1|inst31~q\ & \inst|inst1|inst29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|dasda~q\,
	datab => \inst|inst1|inst30~q\,
	datac => \inst|inst1|inst31~q\,
	datad => \inst|inst1|inst29~q\,
	combout => \inst|inst1|inst36~0_combout\);

-- Location: LCCOMB_X30_Y11_N10
\inst|inst1|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst36~combout\ = LCELL((\inst|inst1|inst36~1_combout\ & \inst|inst1|inst36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst1|inst36~1_combout\,
	datad => \inst|inst1|inst36~0_combout\,
	combout => \inst|inst1|inst36~combout\);

-- Location: LCCOMB_X29_Y11_N20
\inst|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst~0_combout\ = !\inst|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst10|inst~q\,
	combout => \inst|inst10|inst~0_combout\);

-- Location: LCCOMB_X29_Y11_N18
\inst|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst10|inst~feeder_combout\ = \inst|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst~0_combout\,
	combout => \inst|inst10|inst~feeder_combout\);

-- Location: FF_X29_Y11_N19
\inst|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst36~combout\,
	d => \inst|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst10|inst~q\);

-- Location: LCCOMB_X23_Y11_N4
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

-- Location: LCCOMB_X23_Y11_N30
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

-- Location: LCCOMB_X23_Y9_N28
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

-- Location: LCCOMB_X23_Y9_N30
\inst|inst31|inst|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst|inst~feeder_combout\ = \inst|inst31|inst|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst|inst~feeder_combout\);

-- Location: FF_X23_Y9_N31
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

-- Location: LCCOMB_X23_Y9_N16
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

-- Location: LCCOMB_X23_Y9_N14
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

-- Location: FF_X23_Y9_N15
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

-- Location: LCCOMB_X24_Y9_N30
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

-- Location: LCCOMB_X24_Y9_N26
\inst|inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst3|inst~feeder_combout\ = \inst|inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X24_Y9_N27
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

-- Location: LCCOMB_X24_Y9_N28
\inst|inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst4|inst~0_combout\ = !\inst|inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst|inst4|inst~q\,
	combout => \inst|inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X24_Y9_N6
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

-- Location: FF_X24_Y9_N7
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

-- Location: LCCOMB_X25_Y9_N24
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

-- Location: LCCOMB_X25_Y9_N28
\inst|inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst5|inst~feeder_combout\ = \inst|inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X25_Y9_N29
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

-- Location: LCCOMB_X25_Y9_N26
\inst|inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst6|inst~0_combout\ = !\inst|inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst|inst|inst6|inst~q\,
	combout => \inst|inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X25_Y9_N30
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

-- Location: FF_X25_Y9_N31
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

-- Location: LCCOMB_X24_Y12_N20
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

-- Location: LCCOMB_X24_Y12_N14
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

-- Location: FF_X24_Y12_N15
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

-- Location: LCCOMB_X24_Y12_N30
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

-- Location: LCCOMB_X24_Y12_N16
\inst|inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst|inst8|inst~feeder_combout\ = \inst|inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst|inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X24_Y12_N17
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

-- Location: LCCOMB_X25_Y12_N22
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

-- Location: LCCOMB_X25_Y12_N26
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

-- Location: FF_X25_Y12_N27
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

-- Location: LCCOMB_X25_Y12_N16
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

-- Location: LCCOMB_X25_Y12_N14
\inst|inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst|inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst|inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X25_Y12_N15
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

-- Location: LCCOMB_X26_Y12_N18
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

-- Location: LCCOMB_X26_Y12_N16
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

-- Location: FF_X26_Y12_N17
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

-- Location: LCCOMB_X26_Y12_N4
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

-- Location: LCCOMB_X26_Y12_N2
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

-- Location: FF_X26_Y12_N3
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

-- Location: LCCOMB_X25_Y10_N18
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

-- Location: LCCOMB_X25_Y10_N16
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

-- Location: FF_X25_Y10_N17
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

-- Location: LCCOMB_X29_Y10_N18
\inst|inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst6|inst~0_combout\ = !\inst|inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst6|inst~q\,
	combout => \inst|inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X29_Y10_N16
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

-- Location: FF_X29_Y10_N17
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

-- Location: LCCOMB_X29_Y10_N28
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

-- Location: LCCOMB_X29_Y10_N14
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

-- Location: FF_X29_Y10_N15
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

-- Location: LCCOMB_X28_Y10_N12
\inst|inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst|inst1|inst8|inst~0_combout\ = !\inst|inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst|inst1|inst8|inst~q\,
	combout => \inst|inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X28_Y10_N4
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

-- Location: FF_X28_Y10_N5
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

-- Location: LCCOMB_X28_Y10_N16
\inst|inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst2|inst~0_combout\ = !\inst|inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst2|inst~q\,
	combout => \inst|inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X28_Y10_N14
\inst|inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst2|inst~feeder_combout\ = \inst|inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst2|inst~0_combout\,
	combout => \inst|inst31|inst2|inst~feeder_combout\);

-- Location: FF_X28_Y10_N15
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

-- Location: LCCOMB_X28_Y7_N18
\inst|inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst3|inst~0_combout\ = !\inst|inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst3|inst~q\,
	combout => \inst|inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X28_Y7_N16
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

-- Location: FF_X28_Y7_N17
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

-- Location: LCCOMB_X28_Y7_N4
\inst|inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst7|inst~0_combout\ = !\inst|inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst7|inst~q\,
	combout => \inst|inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X28_Y7_N28
\inst|inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst7|inst~feeder_combout\ = \inst|inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst7|inst~0_combout\,
	combout => \inst|inst31|inst7|inst~feeder_combout\);

-- Location: FF_X28_Y7_N29
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

-- Location: LCCOMB_X26_Y7_N30
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

-- Location: LCCOMB_X26_Y7_N16
\inst|inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst8|inst~feeder_combout\ = \inst|inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst8|inst~0_combout\,
	combout => \inst|inst31|inst8|inst~feeder_combout\);

-- Location: FF_X26_Y7_N17
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

-- Location: LCCOMB_X26_Y7_N14
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

-- Location: LCCOMB_X26_Y7_N0
\inst|inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst9|inst~feeder_combout\ = \inst|inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst9|inst~0_combout\,
	combout => \inst|inst31|inst9|inst~feeder_combout\);

-- Location: FF_X26_Y7_N1
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

-- Location: LCCOMB_X25_Y8_N16
\inst|inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst10|inst~0_combout\ = !\inst|inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst31|inst10|inst~q\,
	combout => \inst|inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X25_Y8_N20
\inst|inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst10|inst~feeder_combout\ = \inst|inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst10|inst~0_combout\,
	combout => \inst|inst31|inst10|inst~feeder_combout\);

-- Location: FF_X25_Y8_N21
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

-- Location: LCCOMB_X25_Y8_N28
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

-- Location: LCCOMB_X25_Y8_N22
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

-- Location: FF_X25_Y8_N23
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

-- Location: LCCOMB_X25_Y8_N18
\inst|inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst7~0_combout\ = \inst|inst31|inst13|inst~q\ $ (\inst|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst13|inst~q\,
	datad => \inst|inst31|inst13|inst7~q\,
	combout => \inst|inst31|inst13|inst7~0_combout\);

-- Location: LCCOMB_X25_Y8_N24
\inst|inst31|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst7~feeder_combout\ = \inst|inst31|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst7~0_combout\,
	combout => \inst|inst31|inst13|inst7~feeder_combout\);

-- Location: FF_X25_Y8_N25
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

-- Location: LCCOMB_X25_Y8_N14
\inst|inst31|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst8~0_combout\ = \inst|inst31|inst13|inst8~q\ $ (((\inst|inst31|inst13|inst~q\ & \inst|inst31|inst13|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst31|inst13|inst~q\,
	datac => \inst|inst31|inst13|inst8~q\,
	datad => \inst|inst31|inst13|inst7~q\,
	combout => \inst|inst31|inst13|inst8~0_combout\);

-- Location: FF_X25_Y8_N15
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

-- Location: LCCOMB_X25_Y8_N6
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

-- Location: FF_X25_Y8_N7
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

-- Location: LCCOMB_X25_Y8_N10
\inst|inst31|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst5~0_combout\ = (\inst|inst31|inst13|inst~q\ & \inst|inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst31|inst13|inst~q\,
	datad => \inst|inst31|inst13|inst7~q\,
	combout => \inst|inst31|inst13|inst5~0_combout\);

-- Location: LCCOMB_X25_Y8_N0
\inst|inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst14~0_combout\ = \inst|inst31|inst13|inst14~q\ $ (((\inst|inst31|inst13|inst9~q\ & (\inst|inst31|inst13|inst8~q\ & \inst|inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst9~q\,
	datab => \inst|inst31|inst13|inst8~q\,
	datac => \inst|inst31|inst13|inst14~q\,
	datad => \inst|inst31|inst13|inst5~0_combout\,
	combout => \inst|inst31|inst13|inst14~0_combout\);

-- Location: FF_X25_Y8_N1
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

-- Location: LCCOMB_X25_Y8_N2
\inst|inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst16~combout\ = (\inst|inst31|inst13|inst9~q\ & (\inst|inst31|inst13|inst5~0_combout\ & (\inst|inst31|inst13|inst8~q\ & \inst|inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst9~q\,
	datab => \inst|inst31|inst13|inst5~0_combout\,
	datac => \inst|inst31|inst13|inst8~q\,
	datad => \inst|inst31|inst13|inst14~q\,
	combout => \inst|inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X25_Y8_N4
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

-- Location: FF_X25_Y8_N5
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

-- Location: LCCOMB_X25_Y8_N30
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

-- Location: FF_X25_Y8_N31
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

-- Location: LCCOMB_X25_Y8_N26
\inst|inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst21~0_combout\ = \inst|inst31|inst13|inst21~q\ $ (((\inst|inst31|inst13|inst16~combout\ & (\inst|inst31|inst13|inst17~q\ & \inst|inst31|inst13|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst16~combout\,
	datab => \inst|inst31|inst13|inst17~q\,
	datac => \inst|inst31|inst13|inst21~q\,
	datad => \inst|inst31|inst13|inst19~q\,
	combout => \inst|inst31|inst13|inst21~0_combout\);

-- Location: FF_X25_Y8_N27
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

-- Location: LCCOMB_X25_Y8_N8
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

-- Location: LCCOMB_X25_Y8_N12
\inst|inst31|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst29~combout\ = LCELL((!\inst|inst31|inst13|inst9~q\ & (!\inst|inst31|inst13|inst8~q\ & (\inst|inst31|inst13|inst29~0_combout\ & \inst|inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst9~q\,
	datab => \inst|inst31|inst13|inst8~q\,
	datac => \inst|inst31|inst13|inst29~0_combout\,
	datad => \inst|inst31|inst13|inst5~0_combout\,
	combout => \inst|inst31|inst13|inst29~combout\);

-- Location: LCCOMB_X24_Y8_N10
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

-- Location: LCCOMB_X24_Y8_N30
\inst|inst31|inst13|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst31|inst13|inst4~feeder_combout\ = \inst|inst31|inst13|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst31|inst13|inst4~0_combout\,
	combout => \inst|inst31|inst13|inst4~feeder_combout\);

-- Location: FF_X24_Y8_N31
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

-- Location: LCCOMB_X24_Y8_N28
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

-- Location: LCCOMB_X24_Y8_N2
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

-- Location: FF_X24_Y8_N3
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

-- Location: LCCOMB_X23_Y11_N20
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

-- Location: FF_X23_Y11_N21
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

-- Location: FF_X23_Y11_N5
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

-- Location: LCCOMB_X22_Y13_N30
\inst|inst30|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst|inst~0_combout\ = !\inst|inst30|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst|inst|inst~q\,
	combout => \inst|inst30|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X22_Y13_N28
\inst|inst30|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst|inst~feeder_combout\ = \inst|inst30|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst|inst|inst~0_combout\,
	combout => \inst|inst30|inst|inst|inst~feeder_combout\);

-- Location: FF_X22_Y13_N29
\inst|inst30|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~inputclkctrl_outclk\,
	d => \inst|inst30|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst|inst|inst~q\);

-- Location: LCCOMB_X22_Y13_N26
\inst|inst30|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst2|inst~0_combout\ = !\inst|inst30|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst30|inst|inst2|inst~q\,
	combout => \inst|inst30|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\inst|inst30|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst2|inst~feeder_combout\ = \inst|inst30|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst30|inst|inst2|inst~0_combout\,
	combout => \inst|inst30|inst|inst2|inst~feeder_combout\);

-- Location: FF_X22_Y13_N7
\inst|inst30|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst|inst|ALT_INV_inst~q\,
	d => \inst|inst30|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst|inst2|inst~q\);

-- Location: LCCOMB_X23_Y13_N26
\inst|inst30|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst3|inst~0_combout\ = !\inst|inst30|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst30|inst|inst3|inst~q\,
	combout => \inst|inst30|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst|inst30|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst3|inst~feeder_combout\ = \inst|inst30|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst30|inst|inst3|inst~0_combout\,
	combout => \inst|inst30|inst|inst3|inst~feeder_combout\);

-- Location: FF_X23_Y13_N9
\inst|inst30|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst|inst2|ALT_INV_inst~q\,
	d => \inst|inst30|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst|inst3|inst~q\);

-- Location: LCCOMB_X24_Y14_N28
\inst|inst30|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst4|inst~0_combout\ = !\inst|inst30|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst30|inst|inst4|inst~q\,
	combout => \inst|inst30|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N20
\inst|inst30|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst4|inst~feeder_combout\ = \inst|inst30|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst30|inst|inst4|inst~0_combout\,
	combout => \inst|inst30|inst|inst4|inst~feeder_combout\);

-- Location: FF_X24_Y14_N21
\inst|inst30|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst|inst3|ALT_INV_inst~q\,
	d => \inst|inst30|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst|inst4|inst~q\);

-- Location: LCCOMB_X24_Y14_N4
\inst|inst30|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst5|inst~0_combout\ = !\inst|inst30|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst|inst5|inst~q\,
	combout => \inst|inst30|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N14
\inst|inst30|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst5|inst~feeder_combout\ = \inst|inst30|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst30|inst|inst5|inst~0_combout\,
	combout => \inst|inst30|inst|inst5|inst~feeder_combout\);

-- Location: FF_X24_Y14_N15
\inst|inst30|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst|inst4|ALT_INV_inst~q\,
	d => \inst|inst30|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst|inst5|inst~q\);

-- Location: LCCOMB_X23_Y14_N4
\inst|inst30|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst6|inst~0_combout\ = !\inst|inst30|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst|inst6|inst~q\,
	combout => \inst|inst30|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst|inst30|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst6|inst~feeder_combout\ = \inst|inst30|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst30|inst|inst6|inst~0_combout\,
	combout => \inst|inst30|inst|inst6|inst~feeder_combout\);

-- Location: FF_X23_Y14_N25
\inst|inst30|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst|inst5|ALT_INV_inst~q\,
	d => \inst|inst30|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst|inst6|inst~q\);

-- Location: LCCOMB_X23_Y14_N28
\inst|inst30|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst7|inst~0_combout\ = !\inst|inst30|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst|inst7|inst~q\,
	combout => \inst|inst30|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst|inst30|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst7|inst~feeder_combout\ = \inst|inst30|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst30|inst|inst7|inst~0_combout\,
	combout => \inst|inst30|inst|inst7|inst~feeder_combout\);

-- Location: FF_X23_Y14_N15
\inst|inst30|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst|inst6|ALT_INV_inst~q\,
	d => \inst|inst30|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst|inst7|inst~q\);

-- Location: LCCOMB_X22_Y14_N26
\inst|inst30|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst8|inst~0_combout\ = !\inst|inst30|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst30|inst|inst8|inst~q\,
	combout => \inst|inst30|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X22_Y14_N10
\inst|inst30|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst|inst8|inst~feeder_combout\ = \inst|inst30|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst|inst8|inst~0_combout\,
	combout => \inst|inst30|inst|inst8|inst~feeder_combout\);

-- Location: FF_X22_Y14_N11
\inst|inst30|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst|inst7|ALT_INV_inst~q\,
	d => \inst|inst30|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst|inst8|inst~q\);

-- Location: LCCOMB_X22_Y14_N28
\inst|inst30|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst2|inst~0_combout\ = !\inst|inst30|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst2|inst~q\,
	combout => \inst|inst30|inst2|inst~0_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst|inst30|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst2|inst~feeder_combout\ = \inst|inst30|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst2|inst~0_combout\,
	combout => \inst|inst30|inst2|inst~feeder_combout\);

-- Location: FF_X22_Y14_N25
\inst|inst30|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst|inst8|inst~q\,
	d => \inst|inst30|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst2|inst~q\);

-- Location: LCCOMB_X21_Y11_N30
\inst|inst30|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst9|inst~0_combout\ = !\inst|inst30|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst30|inst9|inst~q\,
	combout => \inst|inst30|inst9|inst~0_combout\);

-- Location: FF_X21_Y11_N21
\inst|inst30|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst2|ALT_INV_inst~q\,
	asdata => \inst|inst30|inst9|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst9|inst~q\);

-- Location: LCCOMB_X22_Y11_N28
\inst|inst30|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst~0_combout\ = !\inst|inst30|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst30|inst4|inst~q\,
	combout => \inst|inst30|inst4|inst~0_combout\);

-- Location: LCCOMB_X22_Y11_N20
\inst|inst30|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst~feeder_combout\ = \inst|inst30|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst30|inst4|inst~0_combout\,
	combout => \inst|inst30|inst4|inst~feeder_combout\);

-- Location: FF_X22_Y11_N21
\inst|inst30|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst9|inst~q\,
	d => \inst|inst30|inst4|inst~feeder_combout\,
	clrn => \inst|inst30|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4|inst~q\);

-- Location: LCCOMB_X22_Y11_N16
\inst|inst30|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst7~0_combout\ = \inst|inst30|inst4|inst~q\ $ (\inst|inst30|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst4|inst~q\,
	datac => \inst|inst30|inst4|inst7~q\,
	combout => \inst|inst30|inst4|inst7~0_combout\);

-- Location: LCCOMB_X22_Y11_N8
\inst|inst30|inst4|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst7~feeder_combout\ = \inst|inst30|inst4|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst4|inst7~0_combout\,
	combout => \inst|inst30|inst4|inst7~feeder_combout\);

-- Location: FF_X22_Y11_N9
\inst|inst30|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst9|inst~q\,
	d => \inst|inst30|inst4|inst7~feeder_combout\,
	clrn => \inst|inst30|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4|inst7~q\);

-- Location: LCCOMB_X22_Y11_N4
\inst|inst30|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst8~0_combout\ = \inst|inst30|inst4|inst8~q\ $ (((\inst|inst30|inst4|inst~q\ & \inst|inst30|inst4|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst30|inst4|inst~q\,
	datac => \inst|inst30|inst4|inst8~q\,
	datad => \inst|inst30|inst4|inst7~q\,
	combout => \inst|inst30|inst4|inst8~0_combout\);

-- Location: FF_X22_Y11_N5
\inst|inst30|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst9|inst~q\,
	d => \inst|inst30|inst4|inst8~0_combout\,
	clrn => \inst|inst30|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4|inst8~q\);

-- Location: LCCOMB_X22_Y11_N12
\inst|inst30|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst9~0_combout\ = \inst|inst30|inst4|inst9~q\ $ (((\inst|inst30|inst4|inst8~q\ & (\inst|inst30|inst4|inst~q\ & \inst|inst30|inst4|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst4|inst8~q\,
	datab => \inst|inst30|inst4|inst~q\,
	datac => \inst|inst30|inst4|inst9~q\,
	datad => \inst|inst30|inst4|inst7~q\,
	combout => \inst|inst30|inst4|inst9~0_combout\);

-- Location: FF_X22_Y11_N13
\inst|inst30|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst9|inst~q\,
	d => \inst|inst30|inst4|inst9~0_combout\,
	clrn => \inst|inst30|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4|inst9~q\);

-- Location: LCCOMB_X22_Y11_N30
\inst|inst30|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst29~0_combout\ = (\inst|inst30|inst4|inst9~q\ & (\inst|inst30|inst4|inst8~q\ & (\inst|inst30|inst4|inst7~q\ & \inst|inst30|inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst4|inst9~q\,
	datab => \inst|inst30|inst4|inst8~q\,
	datac => \inst|inst30|inst4|inst7~q\,
	datad => \inst|inst30|inst4|inst~q\,
	combout => \inst|inst30|inst4|inst29~0_combout\);

-- Location: LCCOMB_X22_Y11_N22
\inst|inst30|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst14~0_combout\ = \inst|inst30|inst4|inst14~q\ $ (\inst|inst30|inst4|inst29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst30|inst4|inst14~q\,
	datad => \inst|inst30|inst4|inst29~0_combout\,
	combout => \inst|inst30|inst4|inst14~0_combout\);

-- Location: FF_X22_Y11_N23
\inst|inst30|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst9|inst~q\,
	d => \inst|inst30|inst4|inst14~0_combout\,
	clrn => \inst|inst30|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4|inst14~q\);

-- Location: LCCOMB_X22_Y11_N24
\inst|inst30|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst17~0_combout\ = \inst|inst30|inst4|inst17~q\ $ (((\inst|inst30|inst4|inst29~0_combout\ & \inst|inst30|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst30|inst4|inst29~0_combout\,
	datac => \inst|inst30|inst4|inst17~q\,
	datad => \inst|inst30|inst4|inst14~q\,
	combout => \inst|inst30|inst4|inst17~0_combout\);

-- Location: FF_X22_Y11_N25
\inst|inst30|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst9|inst~q\,
	d => \inst|inst30|inst4|inst17~0_combout\,
	clrn => \inst|inst30|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4|inst17~q\);

-- Location: LCCOMB_X22_Y11_N26
\inst|inst30|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst19~0_combout\ = \inst|inst30|inst4|inst19~q\ $ (((\inst|inst30|inst4|inst14~q\ & (\inst|inst30|inst4|inst29~0_combout\ & \inst|inst30|inst4|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst4|inst14~q\,
	datab => \inst|inst30|inst4|inst29~0_combout\,
	datac => \inst|inst30|inst4|inst19~q\,
	datad => \inst|inst30|inst4|inst17~q\,
	combout => \inst|inst30|inst4|inst19~0_combout\);

-- Location: FF_X22_Y11_N27
\inst|inst30|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst9|inst~q\,
	d => \inst|inst30|inst4|inst19~0_combout\,
	clrn => \inst|inst30|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4|inst19~q\);

-- Location: LCCOMB_X22_Y11_N6
\inst|inst30|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst21~0_combout\ = (!\inst|inst30|inst4|inst19~q\) # (!\inst|inst30|inst4|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst30|inst4|inst17~q\,
	datac => \inst|inst30|inst4|inst19~q\,
	combout => \inst|inst30|inst4|inst21~0_combout\);

-- Location: LCCOMB_X22_Y11_N10
\inst|inst30|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst21~1_combout\ = \inst|inst30|inst4|inst21~q\ $ (((\inst|inst30|inst4|inst14~q\ & (\inst|inst30|inst4|inst29~0_combout\ & !\inst|inst30|inst4|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst4|inst14~q\,
	datab => \inst|inst30|inst4|inst29~0_combout\,
	datac => \inst|inst30|inst4|inst21~q\,
	datad => \inst|inst30|inst4|inst21~0_combout\,
	combout => \inst|inst30|inst4|inst21~1_combout\);

-- Location: FF_X22_Y11_N11
\inst|inst30|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst9|inst~q\,
	d => \inst|inst30|inst4|inst21~1_combout\,
	clrn => \inst|inst30|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4|inst21~q\);

-- Location: LCCOMB_X22_Y11_N18
\inst|inst30|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst29~1_combout\ = (!\inst|inst30|inst4|inst19~q\ & (\inst|inst30|inst4|inst17~q\ & (!\inst|inst30|inst4|inst14~q\ & !\inst|inst30|inst4|inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst30|inst4|inst19~q\,
	datab => \inst|inst30|inst4|inst17~q\,
	datac => \inst|inst30|inst4|inst14~q\,
	datad => \inst|inst30|inst4|inst21~q\,
	combout => \inst|inst30|inst4|inst29~1_combout\);

-- Location: LCCOMB_X22_Y11_N14
\inst|inst30|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst29~combout\ = LCELL((\inst|inst30|inst4|inst29~0_combout\ & \inst|inst30|inst4|inst29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst30|inst4|inst29~0_combout\,
	datad => \inst|inst30|inst4|inst29~1_combout\,
	combout => \inst|inst30|inst4|inst29~combout\);

-- Location: LCCOMB_X22_Y11_N2
\inst|inst30|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst30|inst4|inst4~0_combout\ = !\inst|inst30|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst30|inst4|inst4~q\,
	combout => \inst|inst30|inst4|inst4~0_combout\);

-- Location: FF_X22_Y11_N3
\inst|inst30|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst30|inst4|inst29~combout\,
	d => \inst|inst30|inst4|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst30|inst4|inst4~q\);

-- Location: LCCOMB_X23_Y11_N28
\inst|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst29~combout\ = (\inst|inst~q\ & \inst|inst30|inst4|inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst~q\,
	datad => \inst|inst30|inst4|inst4~q\,
	combout => \inst|inst29~combout\);

-- Location: IOIBUF_X30_Y24_N1
\beep~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => beep,
	o => \beep~input_o\);

ww_LED(1) <= \LED[1]~output_o\;

beep <= \beep~output_o\;
END structure;


