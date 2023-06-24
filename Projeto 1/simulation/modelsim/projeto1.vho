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

-- DATE "06/24/2023 17:27:23"

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

ENTITY 	chave_led_buzzer IS
    PORT (
	beep : OUT std_logic;
	FPGA_CLK : IN std_logic;
	KEY : IN std_logic;
	beep_freq : IN std_logic;
	LED : OUT std_logic
	);
END chave_led_buzzer;

-- Design Ports Information
-- beep	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beep_freq	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF chave_led_buzzer IS
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
SIGNAL ww_KEY : std_logic;
SIGNAL ww_beep_freq : std_logic;
SIGNAL ww_LED : std_logic;
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \LED~output_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \inst1|inst24|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst2|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst3|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst7|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst8|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst9|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst7~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst8~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst8~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst9~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst9~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst29~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst14~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst14~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst17~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst17~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst18~combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst19~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst19~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst21~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst21~1_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst21~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst29~1_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst29~combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst4~feeder_combout\ : std_logic;
SIGNAL \inst1|inst24|inst4|inst4~q\ : std_logic;
SIGNAL \inst1|inst25|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst25|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst25|inst~q\ : std_logic;
SIGNAL \inst1|inst26|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst26|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst26|inst~q\ : std_logic;
SIGNAL \KEY~input_o\ : std_logic;
SIGNAL \inst1|dasda~0_combout\ : std_logic;
SIGNAL \inst1|dasda~q\ : std_logic;
SIGNAL \inst1|inst29~feeder_combout\ : std_logic;
SIGNAL \inst1|inst29~q\ : std_logic;
SIGNAL \inst1|inst30~feeder_combout\ : std_logic;
SIGNAL \inst1|inst30~q\ : std_logic;
SIGNAL \inst1|inst31~feeder_combout\ : std_logic;
SIGNAL \inst1|inst31~q\ : std_logic;
SIGNAL \inst1|inst32~feeder_combout\ : std_logic;
SIGNAL \inst1|inst32~q\ : std_logic;
SIGNAL \inst1|inst33~feeder_combout\ : std_logic;
SIGNAL \inst1|inst33~q\ : std_logic;
SIGNAL \inst1|inst23~feeder_combout\ : std_logic;
SIGNAL \inst1|inst23~q\ : std_logic;
SIGNAL \inst1|1231~q\ : std_logic;
SIGNAL \inst1|inst36~1_combout\ : std_logic;
SIGNAL \inst1|inst36~0_combout\ : std_logic;
SIGNAL \inst1|inst36~combout\ : std_logic;
SIGNAL \inst10|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst10|inst~q\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst32~combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst2|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst3|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst4|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst5|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst6|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst7|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst8|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst2|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst3|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst4|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst4|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst4|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst5|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst5|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst5|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst6|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst6|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst6|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst7|inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst|inst1|inst8|inst~q\ : std_logic;
SIGNAL \inst31|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst2|inst~q\ : std_logic;
SIGNAL \inst31|inst3|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst3|inst~q\ : std_logic;
SIGNAL \inst31|inst7|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst7|inst~q\ : std_logic;
SIGNAL \inst31|inst8|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst8|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst8|inst~q\ : std_logic;
SIGNAL \inst31|inst9|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst9|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst9|inst~q\ : std_logic;
SIGNAL \inst31|inst10|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst10|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst10|inst~q\ : std_logic;
SIGNAL \inst31|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst~feeder_combout\ : std_logic;
SIGNAL \inst31|inst13|inst~q\ : std_logic;
SIGNAL \inst31|inst13|inst7~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst7~feeder_combout\ : std_logic;
SIGNAL \inst31|inst13|inst7~q\ : std_logic;
SIGNAL \inst31|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst8~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst8~q\ : std_logic;
SIGNAL \inst31|inst13|inst9~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst9~q\ : std_logic;
SIGNAL \inst31|inst13|inst14~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst14~q\ : std_logic;
SIGNAL \inst31|inst13|inst17~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst17~1_combout\ : std_logic;
SIGNAL \inst31|inst13|inst17~q\ : std_logic;
SIGNAL \inst31|inst13|inst16~combout\ : std_logic;
SIGNAL \inst31|inst13|inst19~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst19~q\ : std_logic;
SIGNAL \inst31|inst13|inst21~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst21~q\ : std_logic;
SIGNAL \inst31|inst13|inst29~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst29~combout\ : std_logic;
SIGNAL \inst31|inst13|inst4~0_combout\ : std_logic;
SIGNAL \inst31|inst13|inst4~feeder_combout\ : std_logic;
SIGNAL \inst31|inst13|inst4~q\ : std_logic;
SIGNAL \inst17|inst~0_combout\ : std_logic;
SIGNAL \inst17|inst~feeder_combout\ : std_logic;
SIGNAL \inst17|inst~q\ : std_logic;
SIGNAL \inst3|inst~feeder_combout\ : std_logic;
SIGNAL \inst3|inst~q\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \beep_freq~input_o\ : std_logic;
SIGNAL \inst29~combout\ : std_logic;
SIGNAL \inst31|inst|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst9|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst4|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst31|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst8|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst4|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst1|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst2|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst24|inst|inst|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst7|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst6|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst|inst|inst5|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst1|inst25|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst31|inst13|ALT_INV_inst29~combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst3|ALT_INV_inst~q\ : std_logic;
SIGNAL \inst17|ALT_INV_inst~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

beep <= ww_beep;
ww_FPGA_CLK <= FPGA_CLK;
ww_KEY <= KEY;
ww_beep_freq <= beep_freq;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst31|inst|inst|inst|ALT_INV_inst~q\ <= NOT \inst31|inst|inst|inst|inst~q\;
\inst31|inst|inst|inst2|ALT_INV_inst~q\ <= NOT \inst31|inst|inst|inst2|inst~q\;
\inst31|inst|inst|inst3|ALT_INV_inst~q\ <= NOT \inst31|inst|inst|inst3|inst~q\;
\inst31|inst|inst|inst4|ALT_INV_inst~q\ <= NOT \inst31|inst|inst|inst4|inst~q\;
\inst31|inst9|ALT_INV_inst~q\ <= NOT \inst31|inst9|inst~q\;
\inst1|inst24|inst4|ALT_INV_inst29~combout\ <= NOT \inst1|inst24|inst4|inst29~combout\;
\inst31|inst8|ALT_INV_inst~q\ <= NOT \inst31|inst8|inst~q\;
\inst31|inst7|ALT_INV_inst~q\ <= NOT \inst31|inst7|inst~q\;
\inst1|inst24|inst8|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst8|inst~q\;
\inst31|inst3|ALT_INV_inst~q\ <= NOT \inst31|inst3|inst~q\;
\inst1|inst24|inst7|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst7|inst~q\;
\inst31|inst2|ALT_INV_inst~q\ <= NOT \inst31|inst2|inst~q\;
\inst1|inst24|inst3|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst3|inst~q\;
\inst31|inst|inst1|inst8|ALT_INV_inst~q\ <= NOT \inst31|inst|inst1|inst8|inst~q\;
\inst1|inst24|inst2|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst2|inst~q\;
\inst31|inst|inst1|inst7|ALT_INV_inst~q\ <= NOT \inst31|inst|inst1|inst7|inst~q\;
\inst31|inst|inst1|inst6|ALT_INV_inst~q\ <= NOT \inst31|inst|inst1|inst6|inst~q\;
\inst31|inst|inst1|inst5|ALT_INV_inst~q\ <= NOT \inst31|inst|inst1|inst5|inst~q\;
\inst1|inst24|inst|inst7|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst|inst7|inst~q\;
\inst1|inst24|inst|inst6|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst|inst6|inst~q\;
\inst1|inst24|inst|inst5|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst|inst5|inst~q\;
\inst31|inst|inst1|inst4|ALT_INV_inst~q\ <= NOT \inst31|inst|inst1|inst4|inst~q\;
\inst31|inst|inst1|inst3|ALT_INV_inst~q\ <= NOT \inst31|inst|inst1|inst3|inst~q\;
\inst31|inst|inst1|inst2|ALT_INV_inst~q\ <= NOT \inst31|inst|inst1|inst2|inst~q\;
\inst1|inst24|inst|inst4|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst|inst4|inst~q\;
\inst1|inst24|inst|inst3|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst|inst3|inst~q\;
\inst31|inst|inst1|inst|ALT_INV_inst~q\ <= NOT \inst31|inst|inst1|inst|inst~q\;
\inst1|inst24|inst|inst2|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst|inst2|inst~q\;
\inst1|inst24|inst|inst|ALT_INV_inst~q\ <= NOT \inst1|inst24|inst|inst|inst~q\;
\inst31|inst|inst|inst7|ALT_INV_inst~q\ <= NOT \inst31|inst|inst|inst7|inst~q\;
\inst31|inst|inst|inst6|ALT_INV_inst~q\ <= NOT \inst31|inst|inst|inst6|inst~q\;
\inst31|inst|inst|inst5|ALT_INV_inst~q\ <= NOT \inst31|inst|inst|inst5|inst~q\;
\inst1|inst25|ALT_INV_inst~q\ <= NOT \inst1|inst25|inst~q\;
\inst31|inst13|ALT_INV_inst29~combout\ <= NOT \inst31|inst13|inst29~combout\;
\inst10|ALT_INV_inst~q\ <= NOT \inst10|inst~q\;
\inst3|ALT_INV_inst~q\ <= NOT \inst3|inst~q\;
\inst17|ALT_INV_inst~q\ <= NOT \inst17|inst~q\;
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
	i => \inst29~combout\,
	devoe => ww_devoe,
	o => \beep~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\LED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst~q\,
	devoe => ww_devoe,
	o => \LED~output_o\);

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

-- Location: LCCOMB_X8_Y11_N18
\inst1|inst24|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst|inst~0_combout\ = !\inst1|inst24|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst|inst|inst~q\,
	combout => \inst1|inst24|inst|inst|inst~0_combout\);

-- Location: LCCOMB_X8_Y11_N6
\inst1|inst24|inst|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst|inst~feeder_combout\ = \inst1|inst24|inst|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst|inst|inst~0_combout\,
	combout => \inst1|inst24|inst|inst|inst~feeder_combout\);

-- Location: FF_X8_Y11_N7
\inst1|inst24|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK~input_o\,
	d => \inst1|inst24|inst|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst|inst|inst~q\);

-- Location: LCCOMB_X9_Y11_N20
\inst1|inst24|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst2|inst~0_combout\ = !\inst1|inst24|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst|inst2|inst~q\,
	combout => \inst1|inst24|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X9_Y11_N28
\inst1|inst24|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst2|inst~feeder_combout\ = \inst1|inst24|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst|inst2|inst~0_combout\,
	combout => \inst1|inst24|inst|inst2|inst~feeder_combout\);

-- Location: FF_X9_Y11_N29
\inst1|inst24|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst|inst|ALT_INV_inst~q\,
	d => \inst1|inst24|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst|inst2|inst~q\);

-- Location: LCCOMB_X9_Y11_N30
\inst1|inst24|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst3|inst~0_combout\ = !\inst1|inst24|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst|inst3|inst~q\,
	combout => \inst1|inst24|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X9_Y11_N14
\inst1|inst24|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst3|inst~feeder_combout\ = \inst1|inst24|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|inst|inst3|inst~0_combout\,
	combout => \inst1|inst24|inst|inst3|inst~feeder_combout\);

-- Location: FF_X9_Y11_N15
\inst1|inst24|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst|inst2|ALT_INV_inst~q\,
	d => \inst1|inst24|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst|inst3|inst~q\);

-- Location: LCCOMB_X10_Y14_N28
\inst1|inst24|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst4|inst~0_combout\ = !\inst1|inst24|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst|inst4|inst~q\,
	combout => \inst1|inst24|inst|inst4|inst~0_combout\);

-- Location: FF_X10_Y14_N7
\inst1|inst24|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst|inst3|ALT_INV_inst~q\,
	asdata => \inst1|inst24|inst|inst4|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst|inst4|inst~q\);

-- Location: LCCOMB_X10_Y14_N16
\inst1|inst24|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst5|inst~0_combout\ = !\inst1|inst24|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst|inst5|inst~q\,
	combout => \inst1|inst24|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X10_Y14_N24
\inst1|inst24|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst5|inst~feeder_combout\ = \inst1|inst24|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst|inst5|inst~0_combout\,
	combout => \inst1|inst24|inst|inst5|inst~feeder_combout\);

-- Location: FF_X10_Y14_N25
\inst1|inst24|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst|inst4|ALT_INV_inst~q\,
	d => \inst1|inst24|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst|inst5|inst~q\);

-- Location: LCCOMB_X13_Y14_N6
\inst1|inst24|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst6|inst~0_combout\ = !\inst1|inst24|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst|inst6|inst~q\,
	combout => \inst1|inst24|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X13_Y14_N24
\inst1|inst24|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst6|inst~feeder_combout\ = \inst1|inst24|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|inst|inst6|inst~0_combout\,
	combout => \inst1|inst24|inst|inst6|inst~feeder_combout\);

-- Location: FF_X13_Y14_N25
\inst1|inst24|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst|inst5|ALT_INV_inst~q\,
	d => \inst1|inst24|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst|inst6|inst~q\);

-- Location: LCCOMB_X13_Y14_N14
\inst1|inst24|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst7|inst~0_combout\ = !\inst1|inst24|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst|inst7|inst~q\,
	combout => \inst1|inst24|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X13_Y14_N16
\inst1|inst24|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst7|inst~feeder_combout\ = \inst1|inst24|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst|inst7|inst~0_combout\,
	combout => \inst1|inst24|inst|inst7|inst~feeder_combout\);

-- Location: FF_X13_Y14_N17
\inst1|inst24|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst|inst6|ALT_INV_inst~q\,
	d => \inst1|inst24|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst|inst7|inst~q\);

-- Location: LCCOMB_X14_Y14_N24
\inst1|inst24|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst8|inst~0_combout\ = !\inst1|inst24|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst|inst8|inst~q\,
	combout => \inst1|inst24|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X14_Y14_N18
\inst1|inst24|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst|inst8|inst~feeder_combout\ = \inst1|inst24|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst|inst8|inst~0_combout\,
	combout => \inst1|inst24|inst|inst8|inst~feeder_combout\);

-- Location: FF_X14_Y14_N19
\inst1|inst24|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst|inst7|ALT_INV_inst~q\,
	d => \inst1|inst24|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst|inst8|inst~q\);

-- Location: LCCOMB_X14_Y14_N20
\inst1|inst24|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst2|inst~0_combout\ = !\inst1|inst24|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst2|inst~q\,
	combout => \inst1|inst24|inst2|inst~0_combout\);

-- Location: LCCOMB_X14_Y14_N28
\inst1|inst24|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst2|inst~feeder_combout\ = \inst1|inst24|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst2|inst~0_combout\,
	combout => \inst1|inst24|inst2|inst~feeder_combout\);

-- Location: FF_X14_Y14_N29
\inst1|inst24|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst|inst8|inst~q\,
	d => \inst1|inst24|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst2|inst~q\);

-- Location: LCCOMB_X14_Y16_N2
\inst1|inst24|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst3|inst~0_combout\ = !\inst1|inst24|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst3|inst~q\,
	combout => \inst1|inst24|inst3|inst~0_combout\);

-- Location: LCCOMB_X14_Y16_N6
\inst1|inst24|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst3|inst~feeder_combout\ = \inst1|inst24|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|inst3|inst~0_combout\,
	combout => \inst1|inst24|inst3|inst~feeder_combout\);

-- Location: FF_X14_Y16_N7
\inst1|inst24|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst2|ALT_INV_inst~q\,
	d => \inst1|inst24|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst3|inst~q\);

-- Location: LCCOMB_X14_Y16_N16
\inst1|inst24|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst7|inst~0_combout\ = !\inst1|inst24|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|inst7|inst~q\,
	combout => \inst1|inst24|inst7|inst~0_combout\);

-- Location: LCCOMB_X14_Y16_N30
\inst1|inst24|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst7|inst~feeder_combout\ = \inst1|inst24|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst7|inst~0_combout\,
	combout => \inst1|inst24|inst7|inst~feeder_combout\);

-- Location: FF_X14_Y16_N31
\inst1|inst24|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst3|ALT_INV_inst~q\,
	d => \inst1|inst24|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst7|inst~q\);

-- Location: LCCOMB_X14_Y20_N18
\inst1|inst24|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst8|inst~0_combout\ = !\inst1|inst24|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst8|inst~q\,
	combout => \inst1|inst24|inst8|inst~0_combout\);

-- Location: LCCOMB_X14_Y20_N16
\inst1|inst24|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst8|inst~feeder_combout\ = \inst1|inst24|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|inst8|inst~0_combout\,
	combout => \inst1|inst24|inst8|inst~feeder_combout\);

-- Location: FF_X14_Y20_N17
\inst1|inst24|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst7|ALT_INV_inst~q\,
	d => \inst1|inst24|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst8|inst~q\);

-- Location: LCCOMB_X14_Y20_N28
\inst1|inst24|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst9|inst~0_combout\ = !\inst1|inst24|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|inst9|inst~q\,
	combout => \inst1|inst24|inst9|inst~0_combout\);

-- Location: LCCOMB_X14_Y20_N30
\inst1|inst24|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst9|inst~feeder_combout\ = \inst1|inst24|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst9|inst~0_combout\,
	combout => \inst1|inst24|inst9|inst~feeder_combout\);

-- Location: FF_X14_Y20_N31
\inst1|inst24|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst8|ALT_INV_inst~q\,
	d => \inst1|inst24|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst9|inst~q\);

-- Location: LCCOMB_X13_Y20_N24
\inst1|inst24|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst~0_combout\ = !\inst1|inst24|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst4|inst~q\,
	combout => \inst1|inst24|inst4|inst~0_combout\);

-- Location: FF_X13_Y20_N15
\inst1|inst24|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst9|inst~q\,
	asdata => \inst1|inst24|inst4|inst~0_combout\,
	clrn => \inst1|inst24|inst4|ALT_INV_inst29~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst4|inst~q\);

-- Location: LCCOMB_X13_Y20_N0
\inst1|inst24|inst4|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst7~0_combout\ = \inst1|inst24|inst4|inst~q\ $ (\inst1|inst24|inst4|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst4|inst~q\,
	datad => \inst1|inst24|inst4|inst7~q\,
	combout => \inst1|inst24|inst4|inst7~0_combout\);

-- Location: FF_X13_Y20_N19
\inst1|inst24|inst4|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst9|inst~q\,
	asdata => \inst1|inst24|inst4|inst7~0_combout\,
	clrn => \inst1|inst24|inst4|ALT_INV_inst29~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst4|inst7~q\);

-- Location: LCCOMB_X13_Y20_N4
\inst1|inst24|inst4|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst8~0_combout\ = \inst1|inst24|inst4|inst8~q\ $ (((\inst1|inst24|inst4|inst7~q\ & \inst1|inst24|inst4|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst4|inst7~q\,
	datab => \inst1|inst24|inst4|inst~q\,
	datac => \inst1|inst24|inst4|inst8~q\,
	combout => \inst1|inst24|inst4|inst8~0_combout\);

-- Location: FF_X13_Y20_N5
\inst1|inst24|inst4|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst9|inst~q\,
	d => \inst1|inst24|inst4|inst8~0_combout\,
	clrn => \inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst4|inst8~q\);

-- Location: LCCOMB_X13_Y20_N30
\inst1|inst24|inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst9~0_combout\ = \inst1|inst24|inst4|inst9~q\ $ (((\inst1|inst24|inst4|inst8~q\ & (\inst1|inst24|inst4|inst~q\ & \inst1|inst24|inst4|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst4|inst8~q\,
	datab => \inst1|inst24|inst4|inst~q\,
	datac => \inst1|inst24|inst4|inst9~q\,
	datad => \inst1|inst24|inst4|inst7~q\,
	combout => \inst1|inst24|inst4|inst9~0_combout\);

-- Location: FF_X13_Y20_N31
\inst1|inst24|inst4|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst9|inst~q\,
	d => \inst1|inst24|inst4|inst9~0_combout\,
	clrn => \inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst4|inst9~q\);

-- Location: LCCOMB_X13_Y20_N10
\inst1|inst24|inst4|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst29~0_combout\ = (\inst1|inst24|inst4|inst~q\ & (\inst1|inst24|inst4|inst8~q\ & \inst1|inst24|inst4|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|inst4|inst~q\,
	datac => \inst1|inst24|inst4|inst8~q\,
	datad => \inst1|inst24|inst4|inst7~q\,
	combout => \inst1|inst24|inst4|inst29~0_combout\);

-- Location: LCCOMB_X13_Y20_N20
\inst1|inst24|inst4|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst14~0_combout\ = \inst1|inst24|inst4|inst14~q\ $ (((\inst1|inst24|inst4|inst9~q\ & \inst1|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst4|inst9~q\,
	datab => \inst1|inst24|inst4|inst29~0_combout\,
	datac => \inst1|inst24|inst4|inst14~q\,
	combout => \inst1|inst24|inst4|inst14~0_combout\);

-- Location: FF_X13_Y20_N21
\inst1|inst24|inst4|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst9|inst~q\,
	d => \inst1|inst24|inst4|inst14~0_combout\,
	clrn => \inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst4|inst14~q\);

-- Location: LCCOMB_X13_Y20_N26
\inst1|inst24|inst4|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst17~0_combout\ = \inst1|inst24|inst4|inst17~q\ $ (((\inst1|inst24|inst4|inst9~q\ & (\inst1|inst24|inst4|inst29~0_combout\ & \inst1|inst24|inst4|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst4|inst9~q\,
	datab => \inst1|inst24|inst4|inst29~0_combout\,
	datac => \inst1|inst24|inst4|inst17~q\,
	datad => \inst1|inst24|inst4|inst14~q\,
	combout => \inst1|inst24|inst4|inst17~0_combout\);

-- Location: FF_X13_Y20_N27
\inst1|inst24|inst4|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst9|inst~q\,
	d => \inst1|inst24|inst4|inst17~0_combout\,
	clrn => \inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst4|inst17~q\);

-- Location: LCCOMB_X13_Y20_N2
\inst1|inst24|inst4|inst18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst18~combout\ = (\inst1|inst24|inst4|inst9~q\ & (\inst1|inst24|inst4|inst14~q\ & (\inst1|inst24|inst4|inst29~0_combout\ & \inst1|inst24|inst4|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst4|inst9~q\,
	datab => \inst1|inst24|inst4|inst14~q\,
	datac => \inst1|inst24|inst4|inst29~0_combout\,
	datad => \inst1|inst24|inst4|inst17~q\,
	combout => \inst1|inst24|inst4|inst18~combout\);

-- Location: LCCOMB_X13_Y20_N12
\inst1|inst24|inst4|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst19~0_combout\ = \inst1|inst24|inst4|inst19~q\ $ (\inst1|inst24|inst4|inst18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst4|inst19~q\,
	datad => \inst1|inst24|inst4|inst18~combout\,
	combout => \inst1|inst24|inst4|inst19~0_combout\);

-- Location: FF_X13_Y20_N13
\inst1|inst24|inst4|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst9|inst~q\,
	d => \inst1|inst24|inst4|inst19~0_combout\,
	clrn => \inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst4|inst19~q\);

-- Location: LCCOMB_X13_Y20_N16
\inst1|inst24|inst4|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst21~0_combout\ = ((!\inst1|inst24|inst4|inst17~q\) # (!\inst1|inst24|inst4|inst9~q\)) # (!\inst1|inst24|inst4|inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst24|inst4|inst14~q\,
	datac => \inst1|inst24|inst4|inst9~q\,
	datad => \inst1|inst24|inst4|inst17~q\,
	combout => \inst1|inst24|inst4|inst21~0_combout\);

-- Location: LCCOMB_X13_Y20_N8
\inst1|inst24|inst4|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst21~1_combout\ = \inst1|inst24|inst4|inst21~q\ $ (((\inst1|inst24|inst4|inst19~q\ & (\inst1|inst24|inst4|inst29~0_combout\ & !\inst1|inst24|inst4|inst21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst4|inst19~q\,
	datab => \inst1|inst24|inst4|inst29~0_combout\,
	datac => \inst1|inst24|inst4|inst21~q\,
	datad => \inst1|inst24|inst4|inst21~0_combout\,
	combout => \inst1|inst24|inst4|inst21~1_combout\);

-- Location: FF_X13_Y20_N9
\inst1|inst24|inst4|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst9|inst~q\,
	d => \inst1|inst24|inst4|inst21~1_combout\,
	clrn => \inst1|inst24|inst4|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst4|inst21~q\);

-- Location: LCCOMB_X13_Y20_N22
\inst1|inst24|inst4|inst29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst29~1_combout\ = (!\inst1|inst24|inst4|inst19~q\ & (!\inst1|inst24|inst4|inst21~q\ & (!\inst1|inst24|inst4|inst17~q\ & !\inst1|inst24|inst4|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst4|inst19~q\,
	datab => \inst1|inst24|inst4|inst21~q\,
	datac => \inst1|inst24|inst4|inst17~q\,
	datad => \inst1|inst24|inst4|inst14~q\,
	combout => \inst1|inst24|inst4|inst29~1_combout\);

-- Location: LCCOMB_X13_Y20_N28
\inst1|inst24|inst4|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst29~combout\ = LCELL((!\inst1|inst24|inst4|inst9~q\ & (\inst1|inst24|inst4|inst29~1_combout\ & \inst1|inst24|inst4|inst29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst24|inst4|inst9~q\,
	datac => \inst1|inst24|inst4|inst29~1_combout\,
	datad => \inst1|inst24|inst4|inst29~0_combout\,
	combout => \inst1|inst24|inst4|inst29~combout\);

-- Location: LCCOMB_X16_Y20_N20
\inst1|inst24|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst4~0_combout\ = !\inst1|inst24|inst4|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst4|inst4~q\,
	combout => \inst1|inst24|inst4|inst4~0_combout\);

-- Location: LCCOMB_X16_Y20_N30
\inst1|inst24|inst4|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst24|inst4|inst4~feeder_combout\ = \inst1|inst24|inst4|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst24|inst4|inst4~0_combout\,
	combout => \inst1|inst24|inst4|inst4~feeder_combout\);

-- Location: FF_X16_Y20_N31
\inst1|inst24|inst4|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst4|inst29~combout\,
	d => \inst1|inst24|inst4|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst24|inst4|inst4~q\);

-- Location: LCCOMB_X16_Y20_N28
\inst1|inst25|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst25|inst~0_combout\ = !\inst1|inst25|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst25|inst~q\,
	combout => \inst1|inst25|inst~0_combout\);

-- Location: LCCOMB_X16_Y20_N6
\inst1|inst25|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst25|inst~feeder_combout\ = \inst1|inst25|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst25|inst~0_combout\,
	combout => \inst1|inst25|inst~feeder_combout\);

-- Location: FF_X16_Y20_N7
\inst1|inst25|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst24|inst4|inst4~q\,
	d => \inst1|inst25|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst25|inst~q\);

-- Location: LCCOMB_X17_Y20_N26
\inst1|inst26|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst26|inst~0_combout\ = !\inst1|inst26|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst26|inst~q\,
	combout => \inst1|inst26|inst~0_combout\);

-- Location: LCCOMB_X17_Y20_N24
\inst1|inst26|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst26|inst~feeder_combout\ = \inst1|inst26|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst26|inst~0_combout\,
	combout => \inst1|inst26|inst~feeder_combout\);

-- Location: FF_X17_Y20_N25
\inst1|inst26|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst25|ALT_INV_inst~q\,
	d => \inst1|inst26|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst26|inst~q\);

-- Location: IOIBUF_X16_Y24_N15
\KEY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY,
	o => \KEY~input_o\);

-- Location: LCCOMB_X17_Y20_N28
\inst1|dasda~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dasda~0_combout\ = !\KEY~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~input_o\,
	combout => \inst1|dasda~0_combout\);

-- Location: FF_X17_Y20_N29
\inst1|dasda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst26|inst~q\,
	d => \inst1|dasda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dasda~q\);

-- Location: LCCOMB_X17_Y20_N14
\inst1|inst29~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst29~feeder_combout\ = \inst1|dasda~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dasda~q\,
	combout => \inst1|inst29~feeder_combout\);

-- Location: FF_X17_Y20_N15
\inst1|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst26|inst~q\,
	d => \inst1|inst29~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst29~q\);

-- Location: LCCOMB_X17_Y20_N18
\inst1|inst30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst30~feeder_combout\ = \inst1|inst29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst29~q\,
	combout => \inst1|inst30~feeder_combout\);

-- Location: FF_X17_Y20_N19
\inst1|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst26|inst~q\,
	d => \inst1|inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst30~q\);

-- Location: LCCOMB_X17_Y20_N10
\inst1|inst31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst31~feeder_combout\ = \inst1|inst30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst30~q\,
	combout => \inst1|inst31~feeder_combout\);

-- Location: FF_X17_Y20_N11
\inst1|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst26|inst~q\,
	d => \inst1|inst31~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst31~q\);

-- Location: LCCOMB_X17_Y20_N2
\inst1|inst32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst32~feeder_combout\ = \inst1|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst31~q\,
	combout => \inst1|inst32~feeder_combout\);

-- Location: FF_X17_Y20_N3
\inst1|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst26|inst~q\,
	d => \inst1|inst32~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst32~q\);

-- Location: LCCOMB_X17_Y20_N22
\inst1|inst33~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst33~feeder_combout\ = \inst1|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst32~q\,
	combout => \inst1|inst33~feeder_combout\);

-- Location: FF_X17_Y20_N23
\inst1|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst26|inst~q\,
	d => \inst1|inst33~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst33~q\);

-- Location: LCCOMB_X17_Y20_N4
\inst1|inst23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst23~feeder_combout\ = \inst1|inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst33~q\,
	combout => \inst1|inst23~feeder_combout\);

-- Location: FF_X17_Y20_N5
\inst1|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst26|inst~q\,
	d => \inst1|inst23~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst23~q\);

-- Location: FF_X17_Y20_N31
\inst1|1231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst26|inst~q\,
	asdata => \inst1|inst23~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|1231~q\);

-- Location: LCCOMB_X17_Y20_N30
\inst1|inst36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst36~1_combout\ = (\inst1|inst33~q\ & (\inst1|inst23~q\ & (\inst1|1231~q\ & \inst1|inst32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst33~q\,
	datab => \inst1|inst23~q\,
	datac => \inst1|1231~q\,
	datad => \inst1|inst32~q\,
	combout => \inst1|inst36~1_combout\);

-- Location: LCCOMB_X17_Y20_N20
\inst1|inst36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst36~0_combout\ = (\inst1|inst31~q\ & (\inst1|inst30~q\ & (\inst1|inst29~q\ & \inst1|dasda~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst31~q\,
	datab => \inst1|inst30~q\,
	datac => \inst1|inst29~q\,
	datad => \inst1|dasda~q\,
	combout => \inst1|inst36~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\inst1|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst36~combout\ = LCELL((\inst1|inst36~1_combout\ & \inst1|inst36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst36~1_combout\,
	datad => \inst1|inst36~0_combout\,
	combout => \inst1|inst36~combout\);

-- Location: LCCOMB_X21_Y20_N18
\inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst~0_combout\ = !\inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst~q\,
	combout => \inst10|inst~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst~feeder_combout\ = \inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst~0_combout\,
	combout => \inst10|inst~feeder_combout\);

-- Location: FF_X21_Y20_N31
\inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst36~combout\,
	d => \inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst~q\);

-- Location: LCCOMB_X22_Y15_N4
\inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = !\inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~q\,
	combout => \inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N16
inst32 : cycloneive_lcell_comb
-- Equation(s):
-- \inst32~combout\ = LCELL((\FPGA_CLK~input_o\ & \inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_CLK~input_o\,
	datad => \inst~q\,
	combout => \inst32~combout\);

-- Location: LCCOMB_X23_Y13_N30
\inst31|inst|inst|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst|inst~0_combout\ = !\inst31|inst|inst|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst|inst|inst~q\,
	combout => \inst31|inst|inst|inst|inst~0_combout\);

-- Location: FF_X23_Y13_N17
\inst31|inst|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst32~combout\,
	asdata => \inst31|inst|inst|inst|inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst|inst|inst~q\);

-- Location: LCCOMB_X23_Y13_N26
\inst31|inst|inst|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst2|inst~0_combout\ = !\inst31|inst|inst|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst|inst|inst2|inst~q\,
	combout => \inst31|inst|inst|inst2|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst31|inst|inst|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst2|inst~feeder_combout\ = \inst31|inst|inst|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst|inst|inst2|inst~0_combout\,
	combout => \inst31|inst|inst|inst2|inst~feeder_combout\);

-- Location: FF_X23_Y13_N29
\inst31|inst|inst|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst|inst|ALT_INV_inst~q\,
	d => \inst31|inst|inst|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst|inst2|inst~q\);

-- Location: LCCOMB_X22_Y13_N18
\inst31|inst|inst|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst3|inst~0_combout\ = !\inst31|inst|inst|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst|inst3|inst~q\,
	combout => \inst31|inst|inst|inst3|inst~0_combout\);

-- Location: LCCOMB_X22_Y13_N14
\inst31|inst|inst|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst3|inst~feeder_combout\ = \inst31|inst|inst|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst|inst|inst3|inst~0_combout\,
	combout => \inst31|inst|inst|inst3|inst~feeder_combout\);

-- Location: FF_X22_Y13_N15
\inst31|inst|inst|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst|inst2|ALT_INV_inst~q\,
	d => \inst31|inst|inst|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst|inst3|inst~q\);

-- Location: LCCOMB_X22_Y13_N28
\inst31|inst|inst|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst4|inst~0_combout\ = !\inst31|inst|inst|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst|inst|inst4|inst~q\,
	combout => \inst31|inst|inst|inst4|inst~0_combout\);

-- Location: LCCOMB_X22_Y13_N16
\inst31|inst|inst|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst4|inst~feeder_combout\ = \inst31|inst|inst|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst|inst|inst4|inst~0_combout\,
	combout => \inst31|inst|inst|inst4|inst~feeder_combout\);

-- Location: FF_X22_Y13_N17
\inst31|inst|inst|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst|inst3|ALT_INV_inst~q\,
	d => \inst31|inst|inst|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst|inst4|inst~q\);

-- Location: LCCOMB_X22_Y16_N16
\inst31|inst|inst|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst5|inst~0_combout\ = !\inst31|inst|inst|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst|inst5|inst~q\,
	combout => \inst31|inst|inst|inst5|inst~0_combout\);

-- Location: LCCOMB_X22_Y16_N18
\inst31|inst|inst|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst5|inst~feeder_combout\ = \inst31|inst|inst|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst|inst5|inst~0_combout\,
	combout => \inst31|inst|inst|inst5|inst~feeder_combout\);

-- Location: FF_X22_Y16_N19
\inst31|inst|inst|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst|inst4|ALT_INV_inst~q\,
	d => \inst31|inst|inst|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst|inst5|inst~q\);

-- Location: LCCOMB_X22_Y16_N22
\inst31|inst|inst|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst6|inst~0_combout\ = !\inst31|inst|inst|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst|inst|inst6|inst~q\,
	combout => \inst31|inst|inst|inst6|inst~0_combout\);

-- Location: LCCOMB_X22_Y16_N14
\inst31|inst|inst|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst6|inst~feeder_combout\ = \inst31|inst|inst|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst|inst|inst6|inst~0_combout\,
	combout => \inst31|inst|inst|inst6|inst~feeder_combout\);

-- Location: FF_X22_Y16_N15
\inst31|inst|inst|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst|inst5|ALT_INV_inst~q\,
	d => \inst31|inst|inst|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst|inst6|inst~q\);

-- Location: LCCOMB_X23_Y16_N26
\inst31|inst|inst|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst7|inst~0_combout\ = !\inst31|inst|inst|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst|inst7|inst~q\,
	combout => \inst31|inst|inst|inst7|inst~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\inst31|inst|inst|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst7|inst~feeder_combout\ = \inst31|inst|inst|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst|inst7|inst~0_combout\,
	combout => \inst31|inst|inst|inst7|inst~feeder_combout\);

-- Location: FF_X23_Y16_N19
\inst31|inst|inst|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst|inst6|ALT_INV_inst~q\,
	d => \inst31|inst|inst|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst|inst7|inst~q\);

-- Location: LCCOMB_X23_Y16_N30
\inst31|inst|inst|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst8|inst~0_combout\ = !\inst31|inst|inst|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst|inst|inst8|inst~q\,
	combout => \inst31|inst|inst|inst8|inst~0_combout\);

-- Location: LCCOMB_X23_Y16_N14
\inst31|inst|inst|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst|inst8|inst~feeder_combout\ = \inst31|inst|inst|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst|inst|inst8|inst~0_combout\,
	combout => \inst31|inst|inst|inst8|inst~feeder_combout\);

-- Location: FF_X23_Y16_N15
\inst31|inst|inst|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst|inst7|ALT_INV_inst~q\,
	d => \inst31|inst|inst|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst|inst8|inst~q\);

-- Location: LCCOMB_X24_Y16_N18
\inst31|inst|inst1|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst|inst~0_combout\ = !\inst31|inst|inst1|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|inst|inst1|inst|inst~q\,
	combout => \inst31|inst|inst1|inst|inst~0_combout\);

-- Location: LCCOMB_X24_Y16_N14
\inst31|inst|inst1|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst|inst~feeder_combout\ = \inst31|inst|inst1|inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst1|inst|inst~0_combout\,
	combout => \inst31|inst|inst1|inst|inst~feeder_combout\);

-- Location: FF_X24_Y16_N15
\inst31|inst|inst1|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst|inst8|inst~q\,
	d => \inst31|inst|inst1|inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst1|inst|inst~q\);

-- Location: LCCOMB_X23_Y14_N30
\inst31|inst|inst1|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst2|inst~0_combout\ = !\inst31|inst|inst1|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst1|inst2|inst~q\,
	combout => \inst31|inst|inst1|inst2|inst~0_combout\);

-- Location: LCCOMB_X23_Y14_N16
\inst31|inst|inst1|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst2|inst~feeder_combout\ = \inst31|inst|inst1|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst1|inst2|inst~0_combout\,
	combout => \inst31|inst|inst1|inst2|inst~feeder_combout\);

-- Location: FF_X23_Y14_N17
\inst31|inst|inst1|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst1|inst|ALT_INV_inst~q\,
	d => \inst31|inst|inst1|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst1|inst2|inst~q\);

-- Location: LCCOMB_X23_Y14_N22
\inst31|inst|inst1|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst3|inst~0_combout\ = !\inst31|inst|inst1|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst|inst1|inst3|inst~q\,
	combout => \inst31|inst|inst1|inst3|inst~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst31|inst|inst1|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst3|inst~feeder_combout\ = \inst31|inst|inst1|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst|inst1|inst3|inst~0_combout\,
	combout => \inst31|inst|inst1|inst3|inst~feeder_combout\);

-- Location: FF_X23_Y14_N15
\inst31|inst|inst1|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst1|inst2|ALT_INV_inst~q\,
	d => \inst31|inst|inst1|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst1|inst3|inst~q\);

-- Location: LCCOMB_X24_Y14_N18
\inst31|inst|inst1|inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst4|inst~0_combout\ = !\inst31|inst|inst1|inst4|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst1|inst4|inst~q\,
	combout => \inst31|inst|inst1|inst4|inst~0_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst31|inst|inst1|inst4|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst4|inst~feeder_combout\ = \inst31|inst|inst1|inst4|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst1|inst4|inst~0_combout\,
	combout => \inst31|inst|inst1|inst4|inst~feeder_combout\);

-- Location: FF_X24_Y14_N7
\inst31|inst|inst1|inst4|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst1|inst3|ALT_INV_inst~q\,
	d => \inst31|inst|inst1|inst4|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst1|inst4|inst~q\);

-- Location: LCCOMB_X25_Y14_N10
\inst31|inst|inst1|inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst5|inst~0_combout\ = !\inst31|inst|inst1|inst5|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst|inst1|inst5|inst~q\,
	combout => \inst31|inst|inst1|inst5|inst~0_combout\);

-- Location: LCCOMB_X25_Y14_N24
\inst31|inst|inst1|inst5|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst5|inst~feeder_combout\ = \inst31|inst|inst1|inst5|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|inst|inst1|inst5|inst~0_combout\,
	combout => \inst31|inst|inst1|inst5|inst~feeder_combout\);

-- Location: FF_X25_Y14_N25
\inst31|inst|inst1|inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst1|inst4|ALT_INV_inst~q\,
	d => \inst31|inst|inst1|inst5|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst1|inst5|inst~q\);

-- Location: LCCOMB_X25_Y14_N16
\inst31|inst|inst1|inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst6|inst~0_combout\ = !\inst31|inst|inst1|inst6|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst|inst1|inst6|inst~q\,
	combout => \inst31|inst|inst1|inst6|inst~0_combout\);

-- Location: LCCOMB_X25_Y14_N14
\inst31|inst|inst1|inst6|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst6|inst~feeder_combout\ = \inst31|inst|inst1|inst6|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst|inst1|inst6|inst~0_combout\,
	combout => \inst31|inst|inst1|inst6|inst~feeder_combout\);

-- Location: FF_X25_Y14_N15
\inst31|inst|inst1|inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst1|inst5|ALT_INV_inst~q\,
	d => \inst31|inst|inst1|inst6|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst1|inst6|inst~q\);

-- Location: LCCOMB_X30_Y14_N26
\inst31|inst|inst1|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst7|inst~0_combout\ = !\inst31|inst|inst1|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst|inst1|inst7|inst~q\,
	combout => \inst31|inst|inst1|inst7|inst~0_combout\);

-- Location: LCCOMB_X30_Y14_N8
\inst31|inst|inst1|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst7|inst~feeder_combout\ = \inst31|inst|inst1|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst|inst1|inst7|inst~0_combout\,
	combout => \inst31|inst|inst1|inst7|inst~feeder_combout\);

-- Location: FF_X30_Y14_N9
\inst31|inst|inst1|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst1|inst6|ALT_INV_inst~q\,
	d => \inst31|inst|inst1|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst1|inst7|inst~q\);

-- Location: LCCOMB_X30_Y14_N28
\inst31|inst|inst1|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst8|inst~0_combout\ = !\inst31|inst|inst1|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst|inst1|inst8|inst~q\,
	combout => \inst31|inst|inst1|inst8|inst~0_combout\);

-- Location: LCCOMB_X30_Y14_N0
\inst31|inst|inst1|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst|inst1|inst8|inst~feeder_combout\ = \inst31|inst|inst1|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst|inst1|inst8|inst~0_combout\,
	combout => \inst31|inst|inst1|inst8|inst~feeder_combout\);

-- Location: FF_X30_Y14_N1
\inst31|inst|inst1|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst1|inst7|ALT_INV_inst~q\,
	d => \inst31|inst|inst1|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst|inst1|inst8|inst~q\);

-- Location: LCCOMB_X31_Y15_N18
\inst31|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst2|inst~0_combout\ = !\inst31|inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst2|inst~q\,
	combout => \inst31|inst2|inst~0_combout\);

-- Location: LCCOMB_X31_Y15_N0
\inst31|inst2|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst2|inst~feeder_combout\ = \inst31|inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst2|inst~0_combout\,
	combout => \inst31|inst2|inst~feeder_combout\);

-- Location: FF_X31_Y15_N1
\inst31|inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst|inst1|inst8|ALT_INV_inst~q\,
	d => \inst31|inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst2|inst~q\);

-- Location: LCCOMB_X31_Y15_N4
\inst31|inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst3|inst~0_combout\ = !\inst31|inst3|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst3|inst~q\,
	combout => \inst31|inst3|inst~0_combout\);

-- Location: LCCOMB_X31_Y15_N14
\inst31|inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst3|inst~feeder_combout\ = \inst31|inst3|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst3|inst~0_combout\,
	combout => \inst31|inst3|inst~feeder_combout\);

-- Location: FF_X31_Y15_N15
\inst31|inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst2|ALT_INV_inst~q\,
	d => \inst31|inst3|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst3|inst~q\);

-- Location: LCCOMB_X30_Y15_N28
\inst31|inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst7|inst~0_combout\ = !\inst31|inst7|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst7|inst~q\,
	combout => \inst31|inst7|inst~0_combout\);

-- Location: LCCOMB_X30_Y15_N4
\inst31|inst7|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst7|inst~feeder_combout\ = \inst31|inst7|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst7|inst~0_combout\,
	combout => \inst31|inst7|inst~feeder_combout\);

-- Location: FF_X30_Y15_N5
\inst31|inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst3|ALT_INV_inst~q\,
	d => \inst31|inst7|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst7|inst~q\);

-- Location: LCCOMB_X30_Y15_N30
\inst31|inst8|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst8|inst~0_combout\ = !\inst31|inst8|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst8|inst~q\,
	combout => \inst31|inst8|inst~0_combout\);

-- Location: LCCOMB_X30_Y15_N22
\inst31|inst8|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst8|inst~feeder_combout\ = \inst31|inst8|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst8|inst~0_combout\,
	combout => \inst31|inst8|inst~feeder_combout\);

-- Location: FF_X30_Y15_N23
\inst31|inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst7|ALT_INV_inst~q\,
	d => \inst31|inst8|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst8|inst~q\);

-- Location: LCCOMB_X29_Y15_N24
\inst31|inst9|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst9|inst~0_combout\ = !\inst31|inst9|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst9|inst~q\,
	combout => \inst31|inst9|inst~0_combout\);

-- Location: LCCOMB_X29_Y15_N8
\inst31|inst9|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst9|inst~feeder_combout\ = \inst31|inst9|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst9|inst~0_combout\,
	combout => \inst31|inst9|inst~feeder_combout\);

-- Location: FF_X29_Y15_N9
\inst31|inst9|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst8|ALT_INV_inst~q\,
	d => \inst31|inst9|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst9|inst~q\);

-- Location: LCCOMB_X29_Y15_N28
\inst31|inst10|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst10|inst~0_combout\ = !\inst31|inst10|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst10|inst~q\,
	combout => \inst31|inst10|inst~0_combout\);

-- Location: LCCOMB_X29_Y15_N22
\inst31|inst10|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst10|inst~feeder_combout\ = \inst31|inst10|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst10|inst~0_combout\,
	combout => \inst31|inst10|inst~feeder_combout\);

-- Location: FF_X29_Y15_N23
\inst31|inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst9|ALT_INV_inst~q\,
	d => \inst31|inst10|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst10|inst~q\);

-- Location: LCCOMB_X26_Y15_N6
\inst31|inst13|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst~0_combout\ = !\inst31|inst13|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst13|inst~q\,
	combout => \inst31|inst13|inst~0_combout\);

-- Location: LCCOMB_X26_Y15_N28
\inst31|inst13|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst~feeder_combout\ = \inst31|inst13|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst13|inst~0_combout\,
	combout => \inst31|inst13|inst~feeder_combout\);

-- Location: FF_X26_Y15_N29
\inst31|inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst10|inst~q\,
	d => \inst31|inst13|inst~feeder_combout\,
	clrn => \inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst13|inst~q\);

-- Location: LCCOMB_X26_Y15_N22
\inst31|inst13|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst7~0_combout\ = \inst31|inst13|inst~q\ $ (\inst31|inst13|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst~q\,
	datac => \inst31|inst13|inst7~q\,
	combout => \inst31|inst13|inst7~0_combout\);

-- Location: LCCOMB_X26_Y15_N26
\inst31|inst13|inst7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst7~feeder_combout\ = \inst31|inst13|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst13|inst7~0_combout\,
	combout => \inst31|inst13|inst7~feeder_combout\);

-- Location: FF_X26_Y15_N27
\inst31|inst13|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst10|inst~q\,
	d => \inst31|inst13|inst7~feeder_combout\,
	clrn => \inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst13|inst7~q\);

-- Location: LCCOMB_X26_Y15_N8
\inst31|inst13|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst5~0_combout\ = (\inst31|inst13|inst7~q\ & \inst31|inst13|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|inst13|inst7~q\,
	datad => \inst31|inst13|inst~q\,
	combout => \inst31|inst13|inst5~0_combout\);

-- Location: LCCOMB_X26_Y15_N30
\inst31|inst13|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst8~0_combout\ = \inst31|inst13|inst8~q\ $ (((\inst31|inst13|inst7~q\ & \inst31|inst13|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst13|inst7~q\,
	datac => \inst31|inst13|inst8~q\,
	datad => \inst31|inst13|inst~q\,
	combout => \inst31|inst13|inst8~0_combout\);

-- Location: FF_X26_Y15_N31
\inst31|inst13|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst10|inst~q\,
	d => \inst31|inst13|inst8~0_combout\,
	clrn => \inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst13|inst8~q\);

-- Location: LCCOMB_X26_Y15_N2
\inst31|inst13|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst9~0_combout\ = \inst31|inst13|inst9~q\ $ (((\inst31|inst13|inst~q\ & (\inst31|inst13|inst7~q\ & \inst31|inst13|inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst~q\,
	datab => \inst31|inst13|inst7~q\,
	datac => \inst31|inst13|inst9~q\,
	datad => \inst31|inst13|inst8~q\,
	combout => \inst31|inst13|inst9~0_combout\);

-- Location: FF_X26_Y15_N3
\inst31|inst13|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst10|inst~q\,
	d => \inst31|inst13|inst9~0_combout\,
	clrn => \inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst13|inst9~q\);

-- Location: LCCOMB_X26_Y15_N16
\inst31|inst13|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst14~0_combout\ = \inst31|inst13|inst14~q\ $ (((\inst31|inst13|inst9~q\ & (\inst31|inst13|inst8~q\ & \inst31|inst13|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst9~q\,
	datab => \inst31|inst13|inst8~q\,
	datac => \inst31|inst13|inst14~q\,
	datad => \inst31|inst13|inst5~0_combout\,
	combout => \inst31|inst13|inst14~0_combout\);

-- Location: FF_X26_Y15_N17
\inst31|inst13|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst10|inst~q\,
	d => \inst31|inst13|inst14~0_combout\,
	clrn => \inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst13|inst14~q\);

-- Location: LCCOMB_X26_Y15_N18
\inst31|inst13|inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst17~0_combout\ = (!\inst31|inst13|inst14~q\) # (!\inst31|inst13|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst13|inst9~q\,
	datad => \inst31|inst13|inst14~q\,
	combout => \inst31|inst13|inst17~0_combout\);

-- Location: LCCOMB_X26_Y15_N14
\inst31|inst13|inst17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst17~1_combout\ = \inst31|inst13|inst17~q\ $ (((\inst31|inst13|inst8~q\ & (\inst31|inst13|inst5~0_combout\ & !\inst31|inst13|inst17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst8~q\,
	datab => \inst31|inst13|inst5~0_combout\,
	datac => \inst31|inst13|inst17~q\,
	datad => \inst31|inst13|inst17~0_combout\,
	combout => \inst31|inst13|inst17~1_combout\);

-- Location: FF_X26_Y15_N15
\inst31|inst13|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst10|inst~q\,
	d => \inst31|inst13|inst17~1_combout\,
	clrn => \inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst13|inst17~q\);

-- Location: LCCOMB_X26_Y15_N20
\inst31|inst13|inst16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst16~combout\ = (\inst31|inst13|inst8~q\ & (\inst31|inst13|inst9~q\ & (\inst31|inst13|inst5~0_combout\ & \inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst8~q\,
	datab => \inst31|inst13|inst9~q\,
	datac => \inst31|inst13|inst5~0_combout\,
	datad => \inst31|inst13|inst14~q\,
	combout => \inst31|inst13|inst16~combout\);

-- Location: LCCOMB_X26_Y15_N4
\inst31|inst13|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst19~0_combout\ = \inst31|inst13|inst19~q\ $ (((\inst31|inst13|inst17~q\ & \inst31|inst13|inst16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|inst13|inst17~q\,
	datac => \inst31|inst13|inst19~q\,
	datad => \inst31|inst13|inst16~combout\,
	combout => \inst31|inst13|inst19~0_combout\);

-- Location: FF_X26_Y15_N5
\inst31|inst13|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst10|inst~q\,
	d => \inst31|inst13|inst19~0_combout\,
	clrn => \inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst13|inst19~q\);

-- Location: LCCOMB_X26_Y15_N12
\inst31|inst13|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst21~0_combout\ = \inst31|inst13|inst21~q\ $ (((\inst31|inst13|inst19~q\ & (\inst31|inst13|inst16~combout\ & \inst31|inst13|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst19~q\,
	datab => \inst31|inst13|inst16~combout\,
	datac => \inst31|inst13|inst21~q\,
	datad => \inst31|inst13|inst17~q\,
	combout => \inst31|inst13|inst21~0_combout\);

-- Location: FF_X26_Y15_N13
\inst31|inst13|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst10|inst~q\,
	d => \inst31|inst13|inst21~0_combout\,
	clrn => \inst31|inst13|ALT_INV_inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst13|inst21~q\);

-- Location: LCCOMB_X26_Y15_N24
\inst31|inst13|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst29~0_combout\ = (!\inst31|inst13|inst21~q\ & (!\inst31|inst13|inst19~q\ & (!\inst31|inst13|inst17~q\ & !\inst31|inst13|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst21~q\,
	datab => \inst31|inst13|inst19~q\,
	datac => \inst31|inst13|inst17~q\,
	datad => \inst31|inst13|inst14~q\,
	combout => \inst31|inst13|inst29~0_combout\);

-- Location: LCCOMB_X26_Y15_N10
\inst31|inst13|inst29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst29~combout\ = LCELL((\inst31|inst13|inst5~0_combout\ & (!\inst31|inst13|inst9~q\ & (!\inst31|inst13|inst8~q\ & \inst31|inst13|inst29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst5~0_combout\,
	datab => \inst31|inst13|inst9~q\,
	datac => \inst31|inst13|inst8~q\,
	datad => \inst31|inst13|inst29~0_combout\,
	combout => \inst31|inst13|inst29~combout\);

-- Location: LCCOMB_X21_Y15_N14
\inst31|inst13|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst4~0_combout\ = !\inst31|inst13|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst4~q\,
	combout => \inst31|inst13|inst4~0_combout\);

-- Location: LCCOMB_X21_Y15_N22
\inst31|inst13|inst4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|inst13|inst4~feeder_combout\ = \inst31|inst13|inst4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst13|inst4~0_combout\,
	combout => \inst31|inst13|inst4~feeder_combout\);

-- Location: FF_X21_Y15_N23
\inst31|inst13|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst13|inst29~combout\,
	d => \inst31|inst13|inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|inst13|inst4~q\);

-- Location: LCCOMB_X21_Y15_N28
\inst17|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst~0_combout\ = !\inst17|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|inst~q\,
	combout => \inst17|inst~0_combout\);

-- Location: LCCOMB_X21_Y15_N6
\inst17|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst~feeder_combout\ = \inst17|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst~0_combout\,
	combout => \inst17|inst~feeder_combout\);

-- Location: FF_X21_Y15_N7
\inst17|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|inst13|inst4~q\,
	d => \inst17|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst~q\);

-- Location: LCCOMB_X22_Y15_N18
\inst3|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|inst~feeder_combout\);

-- Location: FF_X22_Y15_N19
\inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|ALT_INV_inst~q\,
	d => \inst3|inst~feeder_combout\,
	clrn => \inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst~q\);

-- Location: FF_X22_Y15_N5
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|inst~q\,
	d => \inst~0_combout\,
	clrn => \inst3|ALT_INV_inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: IOIBUF_X23_Y24_N1
\beep_freq~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_beep_freq,
	o => \beep_freq~input_o\);

-- Location: LCCOMB_X23_Y23_N24
inst29 : cycloneive_lcell_comb
-- Equation(s):
-- \inst29~combout\ = (\inst~q\ & \beep_freq~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datad => \beep_freq~input_o\,
	combout => \inst29~combout\);

ww_beep <= \beep~output_o\;

ww_LED <= \LED~output_o\;
END structure;


