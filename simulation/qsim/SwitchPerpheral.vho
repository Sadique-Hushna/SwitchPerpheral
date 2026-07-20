-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "07/19/2026 18:39:06"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SwitchPerpheral IS
    PORT (
	RESETN : IN std_logic;
	CLOCK : IN std_logic;
	IO_ADDR : IN std_logic_vector(10 DOWNTO 0);
	IO_READ : IN std_logic;
	EXT_WIRES : IN std_logic_vector(15 DOWNTO 0);
	IO_WRITE : IN std_logic;
	IO_DATA : INOUT std_logic_vector(15 DOWNTO 0)
	);
END SwitchPerpheral;

ARCHITECTURE structure OF SwitchPerpheral IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESETN : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_IO_ADDR : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_IO_READ : std_logic;
SIGNAL ww_EXT_WIRES : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IO_WRITE : std_logic;
SIGNAL \IO_DATA[0]~output_o\ : std_logic;
SIGNAL \IO_DATA[1]~output_o\ : std_logic;
SIGNAL \IO_DATA[2]~output_o\ : std_logic;
SIGNAL \IO_DATA[3]~output_o\ : std_logic;
SIGNAL \IO_DATA[4]~output_o\ : std_logic;
SIGNAL \IO_DATA[5]~output_o\ : std_logic;
SIGNAL \IO_DATA[6]~output_o\ : std_logic;
SIGNAL \IO_DATA[7]~output_o\ : std_logic;
SIGNAL \IO_DATA[8]~output_o\ : std_logic;
SIGNAL \IO_DATA[9]~output_o\ : std_logic;
SIGNAL \IO_DATA[10]~output_o\ : std_logic;
SIGNAL \IO_DATA[11]~output_o\ : std_logic;
SIGNAL \IO_DATA[12]~output_o\ : std_logic;
SIGNAL \IO_DATA[13]~output_o\ : std_logic;
SIGNAL \IO_DATA[14]~output_o\ : std_logic;
SIGNAL \IO_DATA[15]~output_o\ : std_logic;
SIGNAL \EXT_WIRES[0]~input_o\ : std_logic;
SIGNAL \IO_ADDR[1]~input_o\ : std_logic;
SIGNAL \IO_ADDR[0]~input_o\ : std_logic;
SIGNAL \IO_ADDR[2]~input_o\ : std_logic;
SIGNAL \IO_ADDR[3]~input_o\ : std_logic;
SIGNAL \IO_ADDR[4]~input_o\ : std_logic;
SIGNAL \IO_ADDR[5]~input_o\ : std_logic;
SIGNAL \IO_ADDR[6]~input_o\ : std_logic;
SIGNAL \IO_ADDR[7]~input_o\ : std_logic;
SIGNAL \IO_ADDR[8]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \IO_ADDR[9]~input_o\ : std_logic;
SIGNAL \IO_ADDR[10]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \IO_DATA[0]~32_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \IO_DATA[0]~input_o\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \IO_WRITE~input_o\ : std_logic;
SIGNAL \XOR_MASK[0]~0_combout\ : std_logic;
SIGNAL \TAIL[0]~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \IO_READ~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \ENQ_FIN~q\ : std_logic;
SIGNAL \DEQ_READ~combout\ : std_logic;
SIGNAL \DEQ_READ_PREV~q\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \HEAD[2]~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \HEAD[1]~3_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \HEAD[3]~1_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \TAIL[2]~2_combout\ : std_logic;
SIGNAL \TAIL[3]~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \HEAD[0]~2_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \TAIL[3]~0_combout\ : std_logic;
SIGNAL \QUEUE[2][0]~0_combout\ : std_logic;
SIGNAL \QUEUE[2][0]~q\ : std_logic;
SIGNAL \FRONT[4]~0_combout\ : std_logic;
SIGNAL \FRONT[4]~1_combout\ : std_logic;
SIGNAL \FRONT[4]~2_combout\ : std_logic;
SIGNAL \QUEUE[4][0]~1_combout\ : std_logic;
SIGNAL \QUEUE[4][0]~q\ : std_logic;
SIGNAL \QUEUE[7][0]~2_combout\ : std_logic;
SIGNAL \QUEUE[5][0]~3_combout\ : std_logic;
SIGNAL \QUEUE[5][0]~q\ : std_logic;
SIGNAL \QUEUE[6][0]~4_combout\ : std_logic;
SIGNAL \QUEUE[6][0]~q\ : std_logic;
SIGNAL \QUEUE[7][0]~5_combout\ : std_logic;
SIGNAL \QUEUE[7][0]~q\ : std_logic;
SIGNAL \FRONT[0]~3_combout\ : std_logic;
SIGNAL \QUEUE[3][0]~6_combout\ : std_logic;
SIGNAL \QUEUE[3][0]~q\ : std_logic;
SIGNAL \QUEUE[1][0]~7_combout\ : std_logic;
SIGNAL \QUEUE[1][0]~q\ : std_logic;
SIGNAL \QUEUE[0][0]~8_combout\ : std_logic;
SIGNAL \QUEUE[0][0]~q\ : std_logic;
SIGNAL \FRONT[0]~4_combout\ : std_logic;
SIGNAL \FRONT[0]~5_combout\ : std_logic;
SIGNAL \IO_DATA[0]~33_combout\ : std_logic;
SIGNAL \OR_MASK[0]~0_combout\ : std_logic;
SIGNAL \IO_DATA[0]~34_combout\ : std_logic;
SIGNAL \AND_MASK[0]~0_combout\ : std_logic;
SIGNAL \IO_DATA[0]~35_combout\ : std_logic;
SIGNAL \IO_DATA[0]~36_combout\ : std_logic;
SIGNAL \IO_DATA[15]~37_combout\ : std_logic;
SIGNAL \EXT_WIRES[1]~input_o\ : std_logic;
SIGNAL \IO_DATA[1]~38_combout\ : std_logic;
SIGNAL \IO_DATA[1]~input_o\ : std_logic;
SIGNAL \QUEUE[2][1]~q\ : std_logic;
SIGNAL \QUEUE[4][1]~q\ : std_logic;
SIGNAL \QUEUE[5][1]~q\ : std_logic;
SIGNAL \QUEUE[6][1]~q\ : std_logic;
SIGNAL \QUEUE[7][1]~q\ : std_logic;
SIGNAL \FRONT[1]~6_combout\ : std_logic;
SIGNAL \QUEUE[3][1]~q\ : std_logic;
SIGNAL \QUEUE[1][1]~q\ : std_logic;
SIGNAL \QUEUE[0][1]~q\ : std_logic;
SIGNAL \FRONT[1]~7_combout\ : std_logic;
SIGNAL \FRONT[1]~8_combout\ : std_logic;
SIGNAL \IO_DATA[1]~39_combout\ : std_logic;
SIGNAL \IO_DATA[1]~40_combout\ : std_logic;
SIGNAL \IO_DATA[1]~41_combout\ : std_logic;
SIGNAL \EXT_WIRES[2]~input_o\ : std_logic;
SIGNAL \IO_DATA[2]~42_combout\ : std_logic;
SIGNAL \IO_DATA[2]~input_o\ : std_logic;
SIGNAL \QUEUE[2][2]~q\ : std_logic;
SIGNAL \QUEUE[4][2]~q\ : std_logic;
SIGNAL \QUEUE[5][2]~q\ : std_logic;
SIGNAL \QUEUE[6][2]~q\ : std_logic;
SIGNAL \QUEUE[7][2]~q\ : std_logic;
SIGNAL \FRONT[2]~9_combout\ : std_logic;
SIGNAL \QUEUE[3][2]~q\ : std_logic;
SIGNAL \QUEUE[1][2]~q\ : std_logic;
SIGNAL \QUEUE[0][2]~q\ : std_logic;
SIGNAL \FRONT[2]~10_combout\ : std_logic;
SIGNAL \FRONT[2]~11_combout\ : std_logic;
SIGNAL \IO_DATA[2]~43_combout\ : std_logic;
SIGNAL \IO_DATA[2]~44_combout\ : std_logic;
SIGNAL \IO_DATA[2]~45_combout\ : std_logic;
SIGNAL \EXT_WIRES[3]~input_o\ : std_logic;
SIGNAL \IO_DATA[3]~46_combout\ : std_logic;
SIGNAL \IO_DATA[3]~input_o\ : std_logic;
SIGNAL \QUEUE[2][3]~q\ : std_logic;
SIGNAL \QUEUE[4][3]~q\ : std_logic;
SIGNAL \QUEUE[5][3]~q\ : std_logic;
SIGNAL \QUEUE[6][3]~q\ : std_logic;
SIGNAL \QUEUE[7][3]~q\ : std_logic;
SIGNAL \FRONT[3]~12_combout\ : std_logic;
SIGNAL \QUEUE[3][3]~q\ : std_logic;
SIGNAL \QUEUE[1][3]~q\ : std_logic;
SIGNAL \QUEUE[0][3]~q\ : std_logic;
SIGNAL \FRONT[3]~13_combout\ : std_logic;
SIGNAL \FRONT[3]~14_combout\ : std_logic;
SIGNAL \IO_DATA[3]~47_combout\ : std_logic;
SIGNAL \IO_DATA[3]~48_combout\ : std_logic;
SIGNAL \IO_DATA[3]~49_combout\ : std_logic;
SIGNAL \EXT_WIRES[4]~input_o\ : std_logic;
SIGNAL \IO_DATA[4]~50_combout\ : std_logic;
SIGNAL \IO_DATA[4]~input_o\ : std_logic;
SIGNAL \QUEUE[2][4]~q\ : std_logic;
SIGNAL \QUEUE[4][4]~q\ : std_logic;
SIGNAL \QUEUE[5][4]~q\ : std_logic;
SIGNAL \QUEUE[6][4]~q\ : std_logic;
SIGNAL \QUEUE[7][4]~q\ : std_logic;
SIGNAL \FRONT[4]~15_combout\ : std_logic;
SIGNAL \QUEUE[3][4]~q\ : std_logic;
SIGNAL \QUEUE[1][4]~q\ : std_logic;
SIGNAL \QUEUE[0][4]~q\ : std_logic;
SIGNAL \FRONT[4]~16_combout\ : std_logic;
SIGNAL \FRONT[4]~17_combout\ : std_logic;
SIGNAL \IO_DATA[4]~51_combout\ : std_logic;
SIGNAL \IO_DATA[4]~52_combout\ : std_logic;
SIGNAL \IO_DATA[4]~53_combout\ : std_logic;
SIGNAL \EXT_WIRES[5]~input_o\ : std_logic;
SIGNAL \IO_DATA[5]~54_combout\ : std_logic;
SIGNAL \IO_DATA[5]~input_o\ : std_logic;
SIGNAL \QUEUE[2][5]~q\ : std_logic;
SIGNAL \QUEUE[4][5]~q\ : std_logic;
SIGNAL \QUEUE[5][5]~q\ : std_logic;
SIGNAL \QUEUE[6][5]~q\ : std_logic;
SIGNAL \QUEUE[7][5]~q\ : std_logic;
SIGNAL \FRONT[5]~18_combout\ : std_logic;
SIGNAL \QUEUE[3][5]~q\ : std_logic;
SIGNAL \QUEUE[1][5]~q\ : std_logic;
SIGNAL \QUEUE[0][5]~q\ : std_logic;
SIGNAL \FRONT[5]~19_combout\ : std_logic;
SIGNAL \FRONT[5]~20_combout\ : std_logic;
SIGNAL \IO_DATA[5]~55_combout\ : std_logic;
SIGNAL \IO_DATA[5]~56_combout\ : std_logic;
SIGNAL \IO_DATA[5]~57_combout\ : std_logic;
SIGNAL \EXT_WIRES[6]~input_o\ : std_logic;
SIGNAL \IO_DATA[6]~58_combout\ : std_logic;
SIGNAL \IO_DATA[6]~input_o\ : std_logic;
SIGNAL \QUEUE[2][6]~q\ : std_logic;
SIGNAL \QUEUE[4][6]~q\ : std_logic;
SIGNAL \QUEUE[5][6]~q\ : std_logic;
SIGNAL \QUEUE[6][6]~q\ : std_logic;
SIGNAL \QUEUE[7][6]~q\ : std_logic;
SIGNAL \FRONT[6]~21_combout\ : std_logic;
SIGNAL \QUEUE[3][6]~q\ : std_logic;
SIGNAL \QUEUE[1][6]~q\ : std_logic;
SIGNAL \QUEUE[0][6]~q\ : std_logic;
SIGNAL \FRONT[6]~22_combout\ : std_logic;
SIGNAL \FRONT[6]~23_combout\ : std_logic;
SIGNAL \IO_DATA[6]~59_combout\ : std_logic;
SIGNAL \IO_DATA[6]~60_combout\ : std_logic;
SIGNAL \IO_DATA[6]~61_combout\ : std_logic;
SIGNAL \EXT_WIRES[7]~input_o\ : std_logic;
SIGNAL \IO_DATA[7]~62_combout\ : std_logic;
SIGNAL \IO_DATA[7]~input_o\ : std_logic;
SIGNAL \QUEUE[2][7]~q\ : std_logic;
SIGNAL \QUEUE[4][7]~q\ : std_logic;
SIGNAL \QUEUE[5][7]~q\ : std_logic;
SIGNAL \QUEUE[6][7]~q\ : std_logic;
SIGNAL \QUEUE[7][7]~q\ : std_logic;
SIGNAL \FRONT[7]~24_combout\ : std_logic;
SIGNAL \QUEUE[3][7]~q\ : std_logic;
SIGNAL \QUEUE[1][7]~q\ : std_logic;
SIGNAL \QUEUE[0][7]~q\ : std_logic;
SIGNAL \FRONT[7]~25_combout\ : std_logic;
SIGNAL \FRONT[7]~26_combout\ : std_logic;
SIGNAL \IO_DATA[7]~63_combout\ : std_logic;
SIGNAL \IO_DATA[7]~64_combout\ : std_logic;
SIGNAL \IO_DATA[7]~65_combout\ : std_logic;
SIGNAL \EXT_WIRES[8]~input_o\ : std_logic;
SIGNAL \IO_DATA[8]~66_combout\ : std_logic;
SIGNAL \IO_DATA[8]~input_o\ : std_logic;
SIGNAL \QUEUE[2][8]~q\ : std_logic;
SIGNAL \QUEUE[4][8]~q\ : std_logic;
SIGNAL \QUEUE[5][8]~q\ : std_logic;
SIGNAL \QUEUE[6][8]~q\ : std_logic;
SIGNAL \QUEUE[7][8]~q\ : std_logic;
SIGNAL \FRONT[8]~27_combout\ : std_logic;
SIGNAL \QUEUE[3][8]~q\ : std_logic;
SIGNAL \QUEUE[1][8]~q\ : std_logic;
SIGNAL \QUEUE[0][8]~q\ : std_logic;
SIGNAL \FRONT[8]~28_combout\ : std_logic;
SIGNAL \FRONT[8]~29_combout\ : std_logic;
SIGNAL \IO_DATA[8]~67_combout\ : std_logic;
SIGNAL \IO_DATA[8]~68_combout\ : std_logic;
SIGNAL \IO_DATA[8]~69_combout\ : std_logic;
SIGNAL \EXT_WIRES[9]~input_o\ : std_logic;
SIGNAL \IO_DATA[9]~70_combout\ : std_logic;
SIGNAL \IO_DATA[9]~input_o\ : std_logic;
SIGNAL \QUEUE[2][9]~q\ : std_logic;
SIGNAL \QUEUE[4][9]~q\ : std_logic;
SIGNAL \QUEUE[5][9]~q\ : std_logic;
SIGNAL \QUEUE[6][9]~q\ : std_logic;
SIGNAL \QUEUE[7][9]~q\ : std_logic;
SIGNAL \FRONT[9]~30_combout\ : std_logic;
SIGNAL \QUEUE[3][9]~q\ : std_logic;
SIGNAL \QUEUE[1][9]~q\ : std_logic;
SIGNAL \QUEUE[0][9]~q\ : std_logic;
SIGNAL \FRONT[9]~31_combout\ : std_logic;
SIGNAL \FRONT[9]~32_combout\ : std_logic;
SIGNAL \IO_DATA[9]~71_combout\ : std_logic;
SIGNAL \IO_DATA[9]~72_combout\ : std_logic;
SIGNAL \IO_DATA[9]~73_combout\ : std_logic;
SIGNAL \EXT_WIRES[10]~input_o\ : std_logic;
SIGNAL \IO_DATA[10]~74_combout\ : std_logic;
SIGNAL \IO_DATA[10]~input_o\ : std_logic;
SIGNAL \QUEUE[2][10]~q\ : std_logic;
SIGNAL \QUEUE[4][10]~q\ : std_logic;
SIGNAL \QUEUE[5][10]~q\ : std_logic;
SIGNAL \QUEUE[6][10]~q\ : std_logic;
SIGNAL \QUEUE[7][10]~q\ : std_logic;
SIGNAL \FRONT[10]~33_combout\ : std_logic;
SIGNAL \QUEUE[3][10]~q\ : std_logic;
SIGNAL \QUEUE[1][10]~q\ : std_logic;
SIGNAL \QUEUE[0][10]~q\ : std_logic;
SIGNAL \FRONT[10]~34_combout\ : std_logic;
SIGNAL \FRONT[10]~35_combout\ : std_logic;
SIGNAL \IO_DATA[10]~75_combout\ : std_logic;
SIGNAL \IO_DATA[10]~76_combout\ : std_logic;
SIGNAL \IO_DATA[10]~77_combout\ : std_logic;
SIGNAL \EXT_WIRES[11]~input_o\ : std_logic;
SIGNAL \IO_DATA[11]~78_combout\ : std_logic;
SIGNAL \IO_DATA[11]~input_o\ : std_logic;
SIGNAL \QUEUE[2][11]~q\ : std_logic;
SIGNAL \QUEUE[4][11]~q\ : std_logic;
SIGNAL \QUEUE[5][11]~q\ : std_logic;
SIGNAL \QUEUE[6][11]~q\ : std_logic;
SIGNAL \QUEUE[7][11]~q\ : std_logic;
SIGNAL \FRONT[11]~36_combout\ : std_logic;
SIGNAL \QUEUE[3][11]~q\ : std_logic;
SIGNAL \QUEUE[1][11]~q\ : std_logic;
SIGNAL \QUEUE[0][11]~q\ : std_logic;
SIGNAL \FRONT[11]~37_combout\ : std_logic;
SIGNAL \FRONT[11]~38_combout\ : std_logic;
SIGNAL \IO_DATA[11]~79_combout\ : std_logic;
SIGNAL \IO_DATA[11]~80_combout\ : std_logic;
SIGNAL \IO_DATA[11]~81_combout\ : std_logic;
SIGNAL \EXT_WIRES[12]~input_o\ : std_logic;
SIGNAL \IO_DATA[12]~82_combout\ : std_logic;
SIGNAL \IO_DATA[12]~input_o\ : std_logic;
SIGNAL \QUEUE[2][12]~q\ : std_logic;
SIGNAL \QUEUE[4][12]~q\ : std_logic;
SIGNAL \QUEUE[5][12]~q\ : std_logic;
SIGNAL \QUEUE[6][12]~q\ : std_logic;
SIGNAL \QUEUE[7][12]~q\ : std_logic;
SIGNAL \FRONT[12]~39_combout\ : std_logic;
SIGNAL \QUEUE[3][12]~q\ : std_logic;
SIGNAL \QUEUE[1][12]~q\ : std_logic;
SIGNAL \QUEUE[0][12]~q\ : std_logic;
SIGNAL \FRONT[12]~40_combout\ : std_logic;
SIGNAL \FRONT[12]~41_combout\ : std_logic;
SIGNAL \IO_DATA[12]~83_combout\ : std_logic;
SIGNAL \IO_DATA[12]~84_combout\ : std_logic;
SIGNAL \IO_DATA[12]~85_combout\ : std_logic;
SIGNAL \EXT_WIRES[13]~input_o\ : std_logic;
SIGNAL \IO_DATA[13]~86_combout\ : std_logic;
SIGNAL \IO_DATA[13]~input_o\ : std_logic;
SIGNAL \QUEUE[2][13]~q\ : std_logic;
SIGNAL \QUEUE[4][13]~q\ : std_logic;
SIGNAL \QUEUE[5][13]~q\ : std_logic;
SIGNAL \QUEUE[6][13]~q\ : std_logic;
SIGNAL \QUEUE[7][13]~q\ : std_logic;
SIGNAL \FRONT[13]~42_combout\ : std_logic;
SIGNAL \QUEUE[3][13]~q\ : std_logic;
SIGNAL \QUEUE[1][13]~q\ : std_logic;
SIGNAL \QUEUE[0][13]~q\ : std_logic;
SIGNAL \FRONT[13]~43_combout\ : std_logic;
SIGNAL \FRONT[13]~44_combout\ : std_logic;
SIGNAL \IO_DATA[13]~87_combout\ : std_logic;
SIGNAL \IO_DATA[13]~88_combout\ : std_logic;
SIGNAL \IO_DATA[13]~89_combout\ : std_logic;
SIGNAL \EXT_WIRES[14]~input_o\ : std_logic;
SIGNAL \IO_DATA[14]~90_combout\ : std_logic;
SIGNAL \IO_DATA[14]~input_o\ : std_logic;
SIGNAL \QUEUE[2][14]~q\ : std_logic;
SIGNAL \QUEUE[4][14]~q\ : std_logic;
SIGNAL \QUEUE[5][14]~q\ : std_logic;
SIGNAL \QUEUE[6][14]~q\ : std_logic;
SIGNAL \QUEUE[7][14]~q\ : std_logic;
SIGNAL \FRONT[14]~45_combout\ : std_logic;
SIGNAL \QUEUE[3][14]~q\ : std_logic;
SIGNAL \QUEUE[1][14]~q\ : std_logic;
SIGNAL \QUEUE[0][14]~q\ : std_logic;
SIGNAL \FRONT[14]~46_combout\ : std_logic;
SIGNAL \FRONT[14]~47_combout\ : std_logic;
SIGNAL \IO_DATA[14]~91_combout\ : std_logic;
SIGNAL \IO_DATA[14]~92_combout\ : std_logic;
SIGNAL \IO_DATA[14]~93_combout\ : std_logic;
SIGNAL \EXT_WIRES[15]~input_o\ : std_logic;
SIGNAL \IO_DATA[15]~94_combout\ : std_logic;
SIGNAL \IO_DATA[15]~input_o\ : std_logic;
SIGNAL \QUEUE[2][15]~q\ : std_logic;
SIGNAL \QUEUE[4][15]~q\ : std_logic;
SIGNAL \QUEUE[5][15]~q\ : std_logic;
SIGNAL \QUEUE[6][15]~q\ : std_logic;
SIGNAL \QUEUE[7][15]~q\ : std_logic;
SIGNAL \FRONT[15]~48_combout\ : std_logic;
SIGNAL \QUEUE[3][15]~q\ : std_logic;
SIGNAL \QUEUE[1][15]~q\ : std_logic;
SIGNAL \QUEUE[0][15]~q\ : std_logic;
SIGNAL \FRONT[15]~49_combout\ : std_logic;
SIGNAL \FRONT[15]~50_combout\ : std_logic;
SIGNAL \IO_DATA[15]~95_combout\ : std_logic;
SIGNAL \IO_DATA[15]~96_combout\ : std_logic;
SIGNAL \IO_DATA[15]~97_combout\ : std_logic;
SIGNAL XOR_MASK : std_logic_vector(15 DOWNTO 0);
SIGNAL HEAD : std_logic_vector(3 DOWNTO 0);
SIGNAL TAIL : std_logic_vector(3 DOWNTO 0);
SIGNAL OR_MASK : std_logic_vector(15 DOWNTO 0);
SIGNAL AND_MASK : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_FRONT[14]~46_combout\ : std_logic;
SIGNAL ALT_INV_AND_MASK : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_IO_DATA[12]~82_combout\ : std_logic;
SIGNAL ALT_INV_OR_MASK : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_FRONT[12]~41_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][13]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][13]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][12]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[13]~43_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][12]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[12]~40_combout\ : std_logic;
SIGNAL ALT_INV_XOR_MASK : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_QUEUE[1][13]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][14]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][14]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][14]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[14]~47_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[14]~91_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[12]~84_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[13]~87_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[14]~45_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][12]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][12]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[14]~92_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[14]~90_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][13]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][14]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[12]~39_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][12]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[13]~42_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[11]~80_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][12]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][12]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][13]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][14]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[15]~94_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[12]~83_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[13]~44_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][13]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][15]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][15]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][15]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][14]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][15]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][15]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][12]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][13]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][13]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][14]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[13]~86_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[13]~88_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][14]~q\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[15]~49_combout\ : std_logic;
SIGNAL \ALT_INV_DEQ_READ_PREV~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[15]~48_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[15]~95_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][15]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[15]~50_combout\ : std_logic;
SIGNAL \ALT_INV_ENQ_FIN~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][15]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[15]~96_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_DEQ_READ~combout\ : std_logic;
SIGNAL \ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_TAIL[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][15]~q\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_WRITE~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_READ~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[5]~18_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[6]~23_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[4]~51_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[5]~20_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[7]~63_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[7]~25_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[7]~26_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[7]~64_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[6]~21_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[8]~66_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[5]~55_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][8]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[4]~52_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[7]~62_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[6]~59_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[5]~56_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[5]~19_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[6]~22_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[6]~58_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[7]~24_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[5]~54_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[6]~60_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][10]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][11]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][11]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][11]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[8]~67_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][11]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][8]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[9]~70_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][8]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[10]~75_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][9]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[11]~78_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[10]~74_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][11]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][11]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[11]~37_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[9]~32_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[11]~79_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[11]~38_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[8]~27_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[8]~68_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[9]~71_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[10]~35_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][11]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[11]~36_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[8]~29_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[9]~30_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[8]~28_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][10]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][10]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[9]~72_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[10]~33_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[10]~34_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[10]~76_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][11]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[9]~31_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[0]~32_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL ALT_INV_HEAD : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_TAIL : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[0]~35_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[4]~2_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[1]~7_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[0]~34_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[1]~40_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[2]~11_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[2]~43_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[1]~38_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[1]~8_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[2]~42_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[4]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[0]~33_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[1]~39_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[2]~44_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[3]~46_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[4]~16_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[4]~15_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[3]~48_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[4]~17_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[3]~12_combout\ : std_logic;
SIGNAL \ALT_INV_FRONT[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_FRONT[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_QUEUE[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[3]~47_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[4]~50_combout\ : std_logic;

BEGIN

ww_RESETN <= RESETN;
ww_CLOCK <= CLOCK;
ww_IO_ADDR <= IO_ADDR;
ww_IO_READ <= IO_READ;
ww_EXT_WIRES <= EXT_WIRES;
ww_IO_WRITE <= IO_WRITE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_FRONT[14]~46_combout\ <= NOT \FRONT[14]~46_combout\;
ALT_INV_AND_MASK(13) <= NOT AND_MASK(13);
\ALT_INV_IO_DATA[12]~82_combout\ <= NOT \IO_DATA[12]~82_combout\;
ALT_INV_OR_MASK(12) <= NOT OR_MASK(12);
\ALT_INV_FRONT[12]~41_combout\ <= NOT \FRONT[12]~41_combout\;
\ALT_INV_QUEUE[4][13]~q\ <= NOT \QUEUE[4][13]~q\;
\ALT_INV_QUEUE[5][13]~q\ <= NOT \QUEUE[5][13]~q\;
\ALT_INV_QUEUE[5][12]~q\ <= NOT \QUEUE[5][12]~q\;
\ALT_INV_FRONT[13]~43_combout\ <= NOT \FRONT[13]~43_combout\;
ALT_INV_AND_MASK(11) <= NOT AND_MASK(11);
\ALT_INV_QUEUE[1][12]~q\ <= NOT \QUEUE[1][12]~q\;
\ALT_INV_FRONT[12]~40_combout\ <= NOT \FRONT[12]~40_combout\;
ALT_INV_XOR_MASK(14) <= NOT XOR_MASK(14);
\ALT_INV_QUEUE[1][13]~q\ <= NOT \QUEUE[1][13]~q\;
\ALT_INV_QUEUE[5][14]~q\ <= NOT \QUEUE[5][14]~q\;
\ALT_INV_QUEUE[3][14]~q\ <= NOT \QUEUE[3][14]~q\;
\ALT_INV_QUEUE[1][14]~q\ <= NOT \QUEUE[1][14]~q\;
\ALT_INV_FRONT[14]~47_combout\ <= NOT \FRONT[14]~47_combout\;
\ALT_INV_IO_DATA[14]~91_combout\ <= NOT \IO_DATA[14]~91_combout\;
ALT_INV_AND_MASK(14) <= NOT AND_MASK(14);
\ALT_INV_IO_DATA[12]~84_combout\ <= NOT \IO_DATA[12]~84_combout\;
\ALT_INV_IO_DATA[13]~87_combout\ <= NOT \IO_DATA[13]~87_combout\;
\ALT_INV_FRONT[14]~45_combout\ <= NOT \FRONT[14]~45_combout\;
\ALT_INV_QUEUE[2][12]~q\ <= NOT \QUEUE[2][12]~q\;
\ALT_INV_QUEUE[7][12]~q\ <= NOT \QUEUE[7][12]~q\;
\ALT_INV_IO_DATA[14]~92_combout\ <= NOT \IO_DATA[14]~92_combout\;
\ALT_INV_IO_DATA[14]~90_combout\ <= NOT \IO_DATA[14]~90_combout\;
\ALT_INV_QUEUE[6][13]~q\ <= NOT \QUEUE[6][13]~q\;
\ALT_INV_QUEUE[2][14]~q\ <= NOT \QUEUE[2][14]~q\;
\ALT_INV_FRONT[12]~39_combout\ <= NOT \FRONT[12]~39_combout\;
\ALT_INV_QUEUE[0][12]~q\ <= NOT \QUEUE[0][12]~q\;
\ALT_INV_FRONT[13]~42_combout\ <= NOT \FRONT[13]~42_combout\;
ALT_INV_OR_MASK(14) <= NOT OR_MASK(14);
ALT_INV_AND_MASK(12) <= NOT AND_MASK(12);
\ALT_INV_IO_DATA[11]~80_combout\ <= NOT \IO_DATA[11]~80_combout\;
ALT_INV_XOR_MASK(12) <= NOT XOR_MASK(12);
\ALT_INV_QUEUE[4][12]~q\ <= NOT \QUEUE[4][12]~q\;
\ALT_INV_QUEUE[6][12]~q\ <= NOT \QUEUE[6][12]~q\;
\ALT_INV_QUEUE[0][13]~q\ <= NOT \QUEUE[0][13]~q\;
ALT_INV_OR_MASK(13) <= NOT OR_MASK(13);
\ALT_INV_QUEUE[4][14]~q\ <= NOT \QUEUE[4][14]~q\;
ALT_INV_XOR_MASK(13) <= NOT XOR_MASK(13);
\ALT_INV_IO_DATA[15]~94_combout\ <= NOT \IO_DATA[15]~94_combout\;
\ALT_INV_IO_DATA[12]~83_combout\ <= NOT \IO_DATA[12]~83_combout\;
\ALT_INV_FRONT[13]~44_combout\ <= NOT \FRONT[13]~44_combout\;
ALT_INV_XOR_MASK(15) <= NOT XOR_MASK(15);
\ALT_INV_QUEUE[2][13]~q\ <= NOT \QUEUE[2][13]~q\;
\ALT_INV_QUEUE[2][15]~q\ <= NOT \QUEUE[2][15]~q\;
\ALT_INV_QUEUE[4][15]~q\ <= NOT \QUEUE[4][15]~q\;
\ALT_INV_QUEUE[5][15]~q\ <= NOT \QUEUE[5][15]~q\;
\ALT_INV_QUEUE[0][14]~q\ <= NOT \QUEUE[0][14]~q\;
\ALT_INV_QUEUE[6][15]~q\ <= NOT \QUEUE[6][15]~q\;
\ALT_INV_QUEUE[7][15]~q\ <= NOT \QUEUE[7][15]~q\;
\ALT_INV_QUEUE[3][12]~q\ <= NOT \QUEUE[3][12]~q\;
\ALT_INV_QUEUE[7][13]~q\ <= NOT \QUEUE[7][13]~q\;
\ALT_INV_QUEUE[3][13]~q\ <= NOT \QUEUE[3][13]~q\;
\ALT_INV_QUEUE[7][14]~q\ <= NOT \QUEUE[7][14]~q\;
\ALT_INV_IO_DATA[13]~86_combout\ <= NOT \IO_DATA[13]~86_combout\;
\ALT_INV_IO_DATA[13]~88_combout\ <= NOT \IO_DATA[13]~88_combout\;
\ALT_INV_QUEUE[6][14]~q\ <= NOT \QUEUE[6][14]~q\;
\ALT_INV_IO_ADDR[7]~input_o\ <= NOT \IO_ADDR[7]~input_o\;
\ALT_INV_IO_ADDR[8]~input_o\ <= NOT \IO_ADDR[8]~input_o\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_FRONT[15]~49_combout\ <= NOT \FRONT[15]~49_combout\;
ALT_INV_AND_MASK(15) <= NOT AND_MASK(15);
\ALT_INV_DEQ_READ_PREV~q\ <= NOT \DEQ_READ_PREV~q\;
\ALT_INV_FRONT[15]~48_combout\ <= NOT \FRONT[15]~48_combout\;
\ALT_INV_IO_DATA[15]~95_combout\ <= NOT \IO_DATA[15]~95_combout\;
\ALT_INV_QUEUE[3][15]~q\ <= NOT \QUEUE[3][15]~q\;
\ALT_INV_FRONT[15]~50_combout\ <= NOT \FRONT[15]~50_combout\;
\ALT_INV_ENQ_FIN~q\ <= NOT \ENQ_FIN~q\;
ALT_INV_OR_MASK(15) <= NOT OR_MASK(15);
\ALT_INV_QUEUE[7][0]~2_combout\ <= NOT \QUEUE[7][0]~2_combout\;
\ALT_INV_QUEUE[0][15]~q\ <= NOT \QUEUE[0][15]~q\;
\ALT_INV_IO_DATA[15]~96_combout\ <= NOT \IO_DATA[15]~96_combout\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\ALT_INV_DEQ_READ~combout\ <= NOT \DEQ_READ~combout\;
\ALT_INV_process_2~0_combout\ <= NOT \process_2~0_combout\;
\ALT_INV_TAIL[3]~0_combout\ <= NOT \TAIL[3]~0_combout\;
\ALT_INV_IO_ADDR[1]~input_o\ <= NOT \IO_ADDR[1]~input_o\;
\ALT_INV_IO_ADDR[0]~input_o\ <= NOT \IO_ADDR[0]~input_o\;
\ALT_INV_IO_ADDR[2]~input_o\ <= NOT \IO_ADDR[2]~input_o\;
\ALT_INV_IO_ADDR[3]~input_o\ <= NOT \IO_ADDR[3]~input_o\;
\ALT_INV_IO_ADDR[4]~input_o\ <= NOT \IO_ADDR[4]~input_o\;
\ALT_INV_QUEUE[1][15]~q\ <= NOT \QUEUE[1][15]~q\;
\ALT_INV_EXT_WIRES[0]~input_o\ <= NOT \EXT_WIRES[0]~input_o\;
\ALT_INV_IO_ADDR[5]~input_o\ <= NOT \IO_ADDR[5]~input_o\;
\ALT_INV_IO_ADDR[6]~input_o\ <= NOT \IO_ADDR[6]~input_o\;
\ALT_INV_IO_WRITE~input_o\ <= NOT \IO_WRITE~input_o\;
\ALT_INV_EXT_WIRES[3]~input_o\ <= NOT \EXT_WIRES[3]~input_o\;
\ALT_INV_EXT_WIRES[13]~input_o\ <= NOT \EXT_WIRES[13]~input_o\;
\ALT_INV_EXT_WIRES[5]~input_o\ <= NOT \EXT_WIRES[5]~input_o\;
\ALT_INV_EXT_WIRES[7]~input_o\ <= NOT \EXT_WIRES[7]~input_o\;
\ALT_INV_EXT_WIRES[9]~input_o\ <= NOT \EXT_WIRES[9]~input_o\;
\ALT_INV_IO_ADDR[10]~input_o\ <= NOT \IO_ADDR[10]~input_o\;
\ALT_INV_IO_ADDR[9]~input_o\ <= NOT \IO_ADDR[9]~input_o\;
\ALT_INV_EXT_WIRES[14]~input_o\ <= NOT \EXT_WIRES[14]~input_o\;
\ALT_INV_IO_READ~input_o\ <= NOT \IO_READ~input_o\;
\ALT_INV_EXT_WIRES[8]~input_o\ <= NOT \EXT_WIRES[8]~input_o\;
\ALT_INV_EXT_WIRES[10]~input_o\ <= NOT \EXT_WIRES[10]~input_o\;
\ALT_INV_EXT_WIRES[15]~input_o\ <= NOT \EXT_WIRES[15]~input_o\;
\ALT_INV_EXT_WIRES[6]~input_o\ <= NOT \EXT_WIRES[6]~input_o\;
\ALT_INV_EXT_WIRES[1]~input_o\ <= NOT \EXT_WIRES[1]~input_o\;
\ALT_INV_EXT_WIRES[11]~input_o\ <= NOT \EXT_WIRES[11]~input_o\;
\ALT_INV_EXT_WIRES[12]~input_o\ <= NOT \EXT_WIRES[12]~input_o\;
\ALT_INV_EXT_WIRES[4]~input_o\ <= NOT \EXT_WIRES[4]~input_o\;
\ALT_INV_EXT_WIRES[2]~input_o\ <= NOT \EXT_WIRES[2]~input_o\;
\ALT_INV_QUEUE[0][7]~q\ <= NOT \QUEUE[0][7]~q\;
\ALT_INV_QUEUE[1][6]~q\ <= NOT \QUEUE[1][6]~q\;
\ALT_INV_FRONT[5]~18_combout\ <= NOT \FRONT[5]~18_combout\;
\ALT_INV_QUEUE[3][6]~q\ <= NOT \QUEUE[3][6]~q\;
ALT_INV_XOR_MASK(5) <= NOT XOR_MASK(5);
\ALT_INV_QUEUE[3][5]~q\ <= NOT \QUEUE[3][5]~q\;
\ALT_INV_FRONT[6]~23_combout\ <= NOT \FRONT[6]~23_combout\;
\ALT_INV_IO_DATA[4]~51_combout\ <= NOT \IO_DATA[4]~51_combout\;
\ALT_INV_FRONT[5]~20_combout\ <= NOT \FRONT[5]~20_combout\;
\ALT_INV_QUEUE[0][6]~q\ <= NOT \QUEUE[0][6]~q\;
ALT_INV_OR_MASK(7) <= NOT OR_MASK(7);
\ALT_INV_QUEUE[2][6]~q\ <= NOT \QUEUE[2][6]~q\;
\ALT_INV_QUEUE[5][6]~q\ <= NOT \QUEUE[5][6]~q\;
\ALT_INV_QUEUE[7][5]~q\ <= NOT \QUEUE[7][5]~q\;
\ALT_INV_QUEUE[4][7]~q\ <= NOT \QUEUE[4][7]~q\;
\ALT_INV_IO_DATA[7]~63_combout\ <= NOT \IO_DATA[7]~63_combout\;
\ALT_INV_FRONT[7]~25_combout\ <= NOT \FRONT[7]~25_combout\;
\ALT_INV_QUEUE[6][7]~q\ <= NOT \QUEUE[6][7]~q\;
\ALT_INV_FRONT[7]~26_combout\ <= NOT \FRONT[7]~26_combout\;
ALT_INV_AND_MASK(7) <= NOT AND_MASK(7);
\ALT_INV_QUEUE[5][7]~q\ <= NOT \QUEUE[5][7]~q\;
\ALT_INV_IO_DATA[7]~64_combout\ <= NOT \IO_DATA[7]~64_combout\;
\ALT_INV_FRONT[6]~21_combout\ <= NOT \FRONT[6]~21_combout\;
\ALT_INV_IO_DATA[8]~66_combout\ <= NOT \IO_DATA[8]~66_combout\;
ALT_INV_XOR_MASK(8) <= NOT XOR_MASK(8);
ALT_INV_AND_MASK(4) <= NOT AND_MASK(4);
\ALT_INV_IO_DATA[5]~55_combout\ <= NOT \IO_DATA[5]~55_combout\;
ALT_INV_AND_MASK(6) <= NOT AND_MASK(6);
\ALT_INV_QUEUE[2][8]~q\ <= NOT \QUEUE[2][8]~q\;
\ALT_INV_QUEUE[4][8]~q\ <= NOT \QUEUE[4][8]~q\;
\ALT_INV_QUEUE[5][8]~q\ <= NOT \QUEUE[5][8]~q\;
\ALT_INV_IO_DATA[4]~52_combout\ <= NOT \IO_DATA[4]~52_combout\;
ALT_INV_OR_MASK(5) <= NOT OR_MASK(5);
\ALT_INV_IO_DATA[7]~62_combout\ <= NOT \IO_DATA[7]~62_combout\;
\ALT_INV_IO_DATA[6]~59_combout\ <= NOT \IO_DATA[6]~59_combout\;
\ALT_INV_QUEUE[7][6]~q\ <= NOT \QUEUE[7][6]~q\;
\ALT_INV_IO_DATA[5]~56_combout\ <= NOT \IO_DATA[5]~56_combout\;
ALT_INV_OR_MASK(4) <= NOT OR_MASK(4);
\ALT_INV_QUEUE[2][5]~q\ <= NOT \QUEUE[2][5]~q\;
\ALT_INV_QUEUE[6][5]~q\ <= NOT \QUEUE[6][5]~q\;
\ALT_INV_QUEUE[4][5]~q\ <= NOT \QUEUE[4][5]~q\;
\ALT_INV_FRONT[5]~19_combout\ <= NOT \FRONT[5]~19_combout\;
\ALT_INV_QUEUE[0][5]~q\ <= NOT \QUEUE[0][5]~q\;
\ALT_INV_FRONT[6]~22_combout\ <= NOT \FRONT[6]~22_combout\;
\ALT_INV_QUEUE[1][5]~q\ <= NOT \QUEUE[1][5]~q\;
\ALT_INV_QUEUE[6][6]~q\ <= NOT \QUEUE[6][6]~q\;
ALT_INV_XOR_MASK(6) <= NOT XOR_MASK(6);
\ALT_INV_IO_DATA[6]~58_combout\ <= NOT \IO_DATA[6]~58_combout\;
\ALT_INV_QUEUE[7][7]~q\ <= NOT \QUEUE[7][7]~q\;
\ALT_INV_FRONT[7]~24_combout\ <= NOT \FRONT[7]~24_combout\;
ALT_INV_XOR_MASK(7) <= NOT XOR_MASK(7);
\ALT_INV_QUEUE[3][7]~q\ <= NOT \QUEUE[3][7]~q\;
ALT_INV_OR_MASK(6) <= NOT OR_MASK(6);
\ALT_INV_QUEUE[1][7]~q\ <= NOT \QUEUE[1][7]~q\;
\ALT_INV_IO_DATA[5]~54_combout\ <= NOT \IO_DATA[5]~54_combout\;
\ALT_INV_QUEUE[4][6]~q\ <= NOT \QUEUE[4][6]~q\;
ALT_INV_AND_MASK(5) <= NOT AND_MASK(5);
\ALT_INV_IO_DATA[6]~60_combout\ <= NOT \IO_DATA[6]~60_combout\;
\ALT_INV_QUEUE[5][5]~q\ <= NOT \QUEUE[5][5]~q\;
\ALT_INV_QUEUE[2][7]~q\ <= NOT \QUEUE[2][7]~q\;
\ALT_INV_QUEUE[5][10]~q\ <= NOT \QUEUE[5][10]~q\;
\ALT_INV_QUEUE[3][11]~q\ <= NOT \QUEUE[3][11]~q\;
\ALT_INV_QUEUE[1][11]~q\ <= NOT \QUEUE[1][11]~q\;
\ALT_INV_QUEUE[4][10]~q\ <= NOT \QUEUE[4][10]~q\;
\ALT_INV_QUEUE[0][11]~q\ <= NOT \QUEUE[0][11]~q\;
\ALT_INV_IO_DATA[8]~67_combout\ <= NOT \IO_DATA[8]~67_combout\;
\ALT_INV_QUEUE[1][10]~q\ <= NOT \QUEUE[1][10]~q\;
\ALT_INV_QUEUE[4][11]~q\ <= NOT \QUEUE[4][11]~q\;
\ALT_INV_QUEUE[0][9]~q\ <= NOT \QUEUE[0][9]~q\;
\ALT_INV_QUEUE[3][8]~q\ <= NOT \QUEUE[3][8]~q\;
\ALT_INV_QUEUE[6][8]~q\ <= NOT \QUEUE[6][8]~q\;
\ALT_INV_QUEUE[6][9]~q\ <= NOT \QUEUE[6][9]~q\;
\ALT_INV_IO_DATA[9]~70_combout\ <= NOT \IO_DATA[9]~70_combout\;
\ALT_INV_QUEUE[7][8]~q\ <= NOT \QUEUE[7][8]~q\;
\ALT_INV_QUEUE[2][9]~q\ <= NOT \QUEUE[2][9]~q\;
ALT_INV_XOR_MASK(10) <= NOT XOR_MASK(10);
\ALT_INV_QUEUE[0][10]~q\ <= NOT \QUEUE[0][10]~q\;
\ALT_INV_IO_DATA[10]~75_combout\ <= NOT \IO_DATA[10]~75_combout\;
ALT_INV_AND_MASK(10) <= NOT AND_MASK(10);
\ALT_INV_QUEUE[7][9]~q\ <= NOT \QUEUE[7][9]~q\;
\ALT_INV_IO_DATA[11]~78_combout\ <= NOT \IO_DATA[11]~78_combout\;
\ALT_INV_IO_DATA[10]~74_combout\ <= NOT \IO_DATA[10]~74_combout\;
\ALT_INV_QUEUE[2][11]~q\ <= NOT \QUEUE[2][11]~q\;
ALT_INV_XOR_MASK(11) <= NOT XOR_MASK(11);
\ALT_INV_QUEUE[6][11]~q\ <= NOT \QUEUE[6][11]~q\;
\ALT_INV_FRONT[11]~37_combout\ <= NOT \FRONT[11]~37_combout\;
ALT_INV_OR_MASK(11) <= NOT OR_MASK(11);
\ALT_INV_FRONT[9]~32_combout\ <= NOT \FRONT[9]~32_combout\;
\ALT_INV_IO_DATA[11]~79_combout\ <= NOT \IO_DATA[11]~79_combout\;
ALT_INV_AND_MASK(8) <= NOT AND_MASK(8);
\ALT_INV_FRONT[11]~38_combout\ <= NOT \FRONT[11]~38_combout\;
\ALT_INV_FRONT[8]~27_combout\ <= NOT \FRONT[8]~27_combout\;
\ALT_INV_IO_DATA[8]~68_combout\ <= NOT \IO_DATA[8]~68_combout\;
\ALT_INV_IO_DATA[9]~71_combout\ <= NOT \IO_DATA[9]~71_combout\;
\ALT_INV_QUEUE[3][10]~q\ <= NOT \QUEUE[3][10]~q\;
\ALT_INV_FRONT[10]~35_combout\ <= NOT \FRONT[10]~35_combout\;
\ALT_INV_QUEUE[5][11]~q\ <= NOT \QUEUE[5][11]~q\;
\ALT_INV_FRONT[11]~36_combout\ <= NOT \FRONT[11]~36_combout\;
\ALT_INV_FRONT[8]~29_combout\ <= NOT \FRONT[8]~29_combout\;
ALT_INV_XOR_MASK(9) <= NOT XOR_MASK(9);
\ALT_INV_QUEUE[3][9]~q\ <= NOT \QUEUE[3][9]~q\;
\ALT_INV_FRONT[9]~30_combout\ <= NOT \FRONT[9]~30_combout\;
\ALT_INV_QUEUE[1][9]~q\ <= NOT \QUEUE[1][9]~q\;
\ALT_INV_FRONT[8]~28_combout\ <= NOT \FRONT[8]~28_combout\;
\ALT_INV_QUEUE[0][8]~q\ <= NOT \QUEUE[0][8]~q\;
ALT_INV_OR_MASK(9) <= NOT OR_MASK(9);
ALT_INV_AND_MASK(9) <= NOT AND_MASK(9);
ALT_INV_OR_MASK(8) <= NOT OR_MASK(8);
\ALT_INV_QUEUE[2][10]~q\ <= NOT \QUEUE[2][10]~q\;
\ALT_INV_QUEUE[6][10]~q\ <= NOT \QUEUE[6][10]~q\;
\ALT_INV_QUEUE[7][10]~q\ <= NOT \QUEUE[7][10]~q\;
\ALT_INV_IO_DATA[9]~72_combout\ <= NOT \IO_DATA[9]~72_combout\;
\ALT_INV_FRONT[10]~33_combout\ <= NOT \FRONT[10]~33_combout\;
\ALT_INV_FRONT[10]~34_combout\ <= NOT \FRONT[10]~34_combout\;
\ALT_INV_QUEUE[4][9]~q\ <= NOT \QUEUE[4][9]~q\;
ALT_INV_OR_MASK(10) <= NOT OR_MASK(10);
\ALT_INV_IO_DATA[10]~76_combout\ <= NOT \IO_DATA[10]~76_combout\;
\ALT_INV_QUEUE[7][11]~q\ <= NOT \QUEUE[7][11]~q\;
\ALT_INV_FRONT[9]~31_combout\ <= NOT \FRONT[9]~31_combout\;
\ALT_INV_QUEUE[1][8]~q\ <= NOT \QUEUE[1][8]~q\;
\ALT_INV_QUEUE[5][9]~q\ <= NOT \QUEUE[5][9]~q\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_IO_DATA[0]~32_combout\ <= NOT \IO_DATA[0]~32_combout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_XOR_MASK(0) <= NOT XOR_MASK(0);
\ALT_INV_QUEUE[2][0]~q\ <= NOT \QUEUE[2][0]~q\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_HEAD(2) <= NOT HEAD(2);
ALT_INV_TAIL(3) <= NOT TAIL(3);
ALT_INV_HEAD(3) <= NOT HEAD(3);
\ALT_INV_Equal5~0_combout\ <= NOT \Equal5~0_combout\;
ALT_INV_HEAD(0) <= NOT HEAD(0);
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_QUEUE[3][0]~q\ <= NOT \QUEUE[3][0]~q\;
\ALT_INV_IO_DATA[0]~35_combout\ <= NOT \IO_DATA[0]~35_combout\;
ALT_INV_AND_MASK(0) <= NOT AND_MASK(0);
\ALT_INV_FRONT[4]~2_combout\ <= NOT \FRONT[4]~2_combout\;
\ALT_INV_QUEUE[0][1]~q\ <= NOT \QUEUE[0][1]~q\;
ALT_INV_HEAD(1) <= NOT HEAD(1);
ALT_INV_TAIL(1) <= NOT TAIL(1);
\ALT_INV_FRONT[4]~1_combout\ <= NOT \FRONT[4]~1_combout\;
\ALT_INV_QUEUE[4][0]~q\ <= NOT \QUEUE[4][0]~q\;
ALT_INV_OR_MASK(0) <= NOT OR_MASK(0);
\ALT_INV_FRONT[1]~7_combout\ <= NOT \FRONT[1]~7_combout\;
ALT_INV_OR_MASK(1) <= NOT OR_MASK(1);
\ALT_INV_QUEUE[0][0]~q\ <= NOT \QUEUE[0][0]~q\;
\ALT_INV_FRONT[1]~6_combout\ <= NOT \FRONT[1]~6_combout\;
\ALT_INV_QUEUE[6][2]~q\ <= NOT \QUEUE[6][2]~q\;
\ALT_INV_IO_DATA[0]~34_combout\ <= NOT \IO_DATA[0]~34_combout\;
\ALT_INV_QUEUE[5][1]~q\ <= NOT \QUEUE[5][1]~q\;
\ALT_INV_QUEUE[7][2]~q\ <= NOT \QUEUE[7][2]~q\;
\ALT_INV_QUEUE[1][2]~q\ <= NOT \QUEUE[1][2]~q\;
\ALT_INV_QUEUE[0][2]~q\ <= NOT \QUEUE[0][2]~q\;
ALT_INV_XOR_MASK(2) <= NOT XOR_MASK(2);
\ALT_INV_FRONT[2]~9_combout\ <= NOT \FRONT[2]~9_combout\;
ALT_INV_OR_MASK(2) <= NOT OR_MASK(2);
\ALT_INV_QUEUE[5][0]~q\ <= NOT \QUEUE[5][0]~q\;
ALT_INV_TAIL(2) <= NOT TAIL(2);
\ALT_INV_IO_DATA[1]~40_combout\ <= NOT \IO_DATA[1]~40_combout\;
\ALT_INV_QUEUE[5][2]~q\ <= NOT \QUEUE[5][2]~q\;
\ALT_INV_FRONT[2]~11_combout\ <= NOT \FRONT[2]~11_combout\;
\ALT_INV_IO_DATA[2]~43_combout\ <= NOT \IO_DATA[2]~43_combout\;
\ALT_INV_FRONT[0]~3_combout\ <= NOT \FRONT[0]~3_combout\;
\ALT_INV_QUEUE[7][0]~q\ <= NOT \QUEUE[7][0]~q\;
\ALT_INV_IO_DATA[1]~38_combout\ <= NOT \IO_DATA[1]~38_combout\;
\ALT_INV_FRONT[1]~8_combout\ <= NOT \FRONT[1]~8_combout\;
\ALT_INV_IO_DATA[2]~42_combout\ <= NOT \IO_DATA[2]~42_combout\;
\ALT_INV_FRONT[4]~0_combout\ <= NOT \FRONT[4]~0_combout\;
ALT_INV_TAIL(0) <= NOT TAIL(0);
\ALT_INV_Equal5~1_combout\ <= NOT \Equal5~1_combout\;
\ALT_INV_QUEUE[1][0]~q\ <= NOT \QUEUE[1][0]~q\;
\ALT_INV_FRONT[0]~5_combout\ <= NOT \FRONT[0]~5_combout\;
\ALT_INV_IO_DATA[0]~33_combout\ <= NOT \IO_DATA[0]~33_combout\;
\ALT_INV_QUEUE[7][1]~q\ <= NOT \QUEUE[7][1]~q\;
\ALT_INV_QUEUE[3][1]~q\ <= NOT \QUEUE[3][1]~q\;
\ALT_INV_QUEUE[1][1]~q\ <= NOT \QUEUE[1][1]~q\;
\ALT_INV_QUEUE[4][1]~q\ <= NOT \QUEUE[4][1]~q\;
\ALT_INV_IO_DATA[1]~39_combout\ <= NOT \IO_DATA[1]~39_combout\;
\ALT_INV_QUEUE[3][2]~q\ <= NOT \QUEUE[3][2]~q\;
\ALT_INV_FRONT[2]~10_combout\ <= NOT \FRONT[2]~10_combout\;
\ALT_INV_QUEUE[4][2]~q\ <= NOT \QUEUE[4][2]~q\;
\ALT_INV_QUEUE[2][1]~q\ <= NOT \QUEUE[2][1]~q\;
\ALT_INV_QUEUE[2][2]~q\ <= NOT \QUEUE[2][2]~q\;
ALT_INV_AND_MASK(2) <= NOT AND_MASK(2);
\ALT_INV_FRONT[0]~4_combout\ <= NOT \FRONT[0]~4_combout\;
ALT_INV_XOR_MASK(1) <= NOT XOR_MASK(1);
ALT_INV_AND_MASK(1) <= NOT AND_MASK(1);
\ALT_INV_QUEUE[6][0]~q\ <= NOT \QUEUE[6][0]~q\;
\ALT_INV_QUEUE[6][1]~q\ <= NOT \QUEUE[6][1]~q\;
\ALT_INV_IO_DATA[2]~44_combout\ <= NOT \IO_DATA[2]~44_combout\;
\ALT_INV_IO_DATA[3]~46_combout\ <= NOT \IO_DATA[3]~46_combout\;
\ALT_INV_QUEUE[5][4]~q\ <= NOT \QUEUE[5][4]~q\;
\ALT_INV_QUEUE[5][3]~q\ <= NOT \QUEUE[5][3]~q\;
ALT_INV_XOR_MASK(3) <= NOT XOR_MASK(3);
\ALT_INV_QUEUE[7][4]~q\ <= NOT \QUEUE[7][4]~q\;
\ALT_INV_QUEUE[1][4]~q\ <= NOT \QUEUE[1][4]~q\;
ALT_INV_OR_MASK(3) <= NOT OR_MASK(3);
\ALT_INV_QUEUE[1][3]~q\ <= NOT \QUEUE[1][3]~q\;
\ALT_INV_FRONT[4]~16_combout\ <= NOT \FRONT[4]~16_combout\;
\ALT_INV_QUEUE[0][3]~q\ <= NOT \QUEUE[0][3]~q\;
\ALT_INV_QUEUE[0][4]~q\ <= NOT \QUEUE[0][4]~q\;
\ALT_INV_FRONT[4]~15_combout\ <= NOT \FRONT[4]~15_combout\;
\ALT_INV_IO_DATA[3]~48_combout\ <= NOT \IO_DATA[3]~48_combout\;
\ALT_INV_QUEUE[4][3]~q\ <= NOT \QUEUE[4][3]~q\;
\ALT_INV_QUEUE[3][4]~q\ <= NOT \QUEUE[3][4]~q\;
\ALT_INV_FRONT[4]~17_combout\ <= NOT \FRONT[4]~17_combout\;
\ALT_INV_QUEUE[7][3]~q\ <= NOT \QUEUE[7][3]~q\;
\ALT_INV_FRONT[3]~12_combout\ <= NOT \FRONT[3]~12_combout\;
\ALT_INV_FRONT[3]~14_combout\ <= NOT \FRONT[3]~14_combout\;
\ALT_INV_QUEUE[3][3]~q\ <= NOT \QUEUE[3][3]~q\;
\ALT_INV_QUEUE[4][4]~q\ <= NOT \QUEUE[4][4]~q\;
\ALT_INV_QUEUE[6][4]~q\ <= NOT \QUEUE[6][4]~q\;
\ALT_INV_QUEUE[6][3]~q\ <= NOT \QUEUE[6][3]~q\;
ALT_INV_AND_MASK(3) <= NOT AND_MASK(3);
ALT_INV_XOR_MASK(4) <= NOT XOR_MASK(4);
\ALT_INV_QUEUE[2][3]~q\ <= NOT \QUEUE[2][3]~q\;
\ALT_INV_FRONT[3]~13_combout\ <= NOT \FRONT[3]~13_combout\;
\ALT_INV_QUEUE[2][4]~q\ <= NOT \QUEUE[2][4]~q\;
\ALT_INV_IO_DATA[3]~47_combout\ <= NOT \IO_DATA[3]~47_combout\;
\ALT_INV_IO_DATA[4]~50_combout\ <= NOT \IO_DATA[4]~50_combout\;

\IO_DATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[0]~36_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[0]~output_o\);

\IO_DATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[1]~41_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[1]~output_o\);

\IO_DATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[2]~45_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[2]~output_o\);

\IO_DATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[3]~49_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[3]~output_o\);

\IO_DATA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[4]~53_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[4]~output_o\);

\IO_DATA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[5]~57_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[5]~output_o\);

\IO_DATA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[6]~61_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[6]~output_o\);

\IO_DATA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[7]~65_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[7]~output_o\);

\IO_DATA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[8]~69_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[8]~output_o\);

\IO_DATA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[9]~73_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[9]~output_o\);

\IO_DATA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[10]~77_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[10]~output_o\);

\IO_DATA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[11]~81_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[11]~output_o\);

\IO_DATA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[12]~85_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[12]~output_o\);

\IO_DATA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[13]~89_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[13]~output_o\);

\IO_DATA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[14]~93_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[14]~output_o\);

\IO_DATA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA[15]~97_combout\,
	oe => \IO_DATA[15]~37_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[15]~output_o\);

\EXT_WIRES[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(0),
	o => \EXT_WIRES[0]~input_o\);

\IO_ADDR[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(1),
	o => \IO_ADDR[1]~input_o\);

\IO_ADDR[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(0),
	o => \IO_ADDR[0]~input_o\);

\IO_ADDR[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(2),
	o => \IO_ADDR[2]~input_o\);

\IO_ADDR[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(3),
	o => \IO_ADDR[3]~input_o\);

\IO_ADDR[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(4),
	o => \IO_ADDR[4]~input_o\);

\IO_ADDR[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(5),
	o => \IO_ADDR[5]~input_o\);

\IO_ADDR[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(6),
	o => \IO_ADDR[6]~input_o\);

\IO_ADDR[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(7),
	o => \IO_ADDR[7]~input_o\);

\IO_ADDR[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(8),
	o => \IO_ADDR[8]~input_o\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\IO_ADDR[7]~input_o\ & ( !\IO_ADDR[8]~input_o\ & ( (!\IO_ADDR[3]~input_o\ & (!\IO_ADDR[4]~input_o\ & (!\IO_ADDR[5]~input_o\ & !\IO_ADDR[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[3]~input_o\,
	datab => \ALT_INV_IO_ADDR[4]~input_o\,
	datac => \ALT_INV_IO_ADDR[5]~input_o\,
	datad => \ALT_INV_IO_ADDR[6]~input_o\,
	datae => \ALT_INV_IO_ADDR[7]~input_o\,
	dataf => \ALT_INV_IO_ADDR[8]~input_o\,
	combout => \Equal0~0_combout\);

\IO_ADDR[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(9),
	o => \IO_ADDR[9]~input_o\);

\IO_ADDR[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(10),
	o => \IO_ADDR[10]~input_o\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\IO_ADDR[9]~input_o\ & !\IO_ADDR[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[9]~input_o\,
	datab => \ALT_INV_IO_ADDR[10]~input_o\,
	combout => \Equal0~1_combout\);

\IO_DATA[0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[0]~32_combout\ = ( \Equal0~0_combout\ & ( \Equal0~1_combout\ & ( (\EXT_WIRES[0]~input_o\ & (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EXT_WIRES[0]~input_o\,
	datab => \ALT_INV_IO_ADDR[1]~input_o\,
	datac => \ALT_INV_IO_ADDR[0]~input_o\,
	datad => \ALT_INV_IO_ADDR[2]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \IO_DATA[0]~32_combout\);

\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

\IO_DATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(0),
	o => \IO_DATA[0]~input_o\);

\RESETN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESETN,
	o => \RESETN~input_o\);

\IO_WRITE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_WRITE,
	o => \IO_WRITE~input_o\);

\XOR_MASK[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \XOR_MASK[0]~0_combout\ = ( \Equal0~1_combout\ & ( \IO_WRITE~input_o\ & ( (!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_IO_WRITE~input_o\,
	combout => \XOR_MASK[0]~0_combout\);

\XOR_MASK[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(0));

\TAIL[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \TAIL[0]~3_combout\ = !TAIL(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	combout => \TAIL[0]~3_combout\);

\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = !TAIL(0) $ (!TAIL(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	combout => \Add1~0_combout\);

\TAIL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Add1~0_combout\,
	clrn => \RESETN~input_o\,
	ena => \TAIL[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TAIL(1));

\IO_READ~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_READ,
	o => \IO_READ~input_o\);

\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( \Equal0~1_combout\ & ( \IO_READ~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_IO_READ~input_o\,
	combout => \process_1~0_combout\);

ENQ_FIN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \process_1~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENQ_FIN~q\);

DEQ_READ : cyclonev_lcell_comb
-- Equation(s):
-- \DEQ_READ~combout\ = ( \Equal0~1_combout\ & ( \IO_READ~input_o\ & ( (\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_IO_READ~input_o\,
	combout => \DEQ_READ~combout\);

DEQ_READ_PREV : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \DEQ_READ~combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEQ_READ_PREV~q\);

\process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\DEQ_READ_PREV~q\ & ((!\Equal5~1_combout\) # (\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_Equal5~1_combout\,
	datac => \ALT_INV_DEQ_READ_PREV~q\,
	combout => \process_2~0_combout\);

\HEAD[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEAD[2]~0_combout\ = ( \process_2~0_combout\ & ( !HEAD(2) $ (((!HEAD(0)) # ((!HEAD(1)) # (\DEQ_READ~combout\)))) ) ) # ( !\process_2~0_combout\ & ( HEAD(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111100000111100001111000011110001111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => ALT_INV_HEAD(2),
	datad => \ALT_INV_DEQ_READ~combout\,
	datae => \ALT_INV_process_2~0_combout\,
	combout => \HEAD[2]~0_combout\);

\HEAD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \HEAD[2]~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEAD(2));

\Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = ( TAIL(2) & ( HEAD(2) & ( (!TAIL(0) & (!HEAD(0) & (!TAIL(1) $ (HEAD(1))))) # (TAIL(0) & (HEAD(0) & (!TAIL(1) $ (HEAD(1))))) ) ) ) # ( !TAIL(2) & ( !HEAD(2) & ( (!TAIL(0) & (!HEAD(0) & (!TAIL(1) $ (HEAD(1))))) # (TAIL(0) & (HEAD(0) & 
-- (!TAIL(1) $ (HEAD(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_HEAD(0),
	datac => ALT_INV_TAIL(1),
	datad => ALT_INV_HEAD(1),
	datae => ALT_INV_TAIL(2),
	dataf => ALT_INV_HEAD(2),
	combout => \Equal5~1_combout\);

\HEAD[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEAD[1]~3_combout\ = ( \DEQ_READ~combout\ & ( \DEQ_READ_PREV~q\ & ( HEAD(1) ) ) ) # ( !\DEQ_READ~combout\ & ( \DEQ_READ_PREV~q\ & ( !HEAD(1) $ (((!HEAD(0)) # ((!\Equal5~0_combout\ & \Equal5~1_combout\)))) ) ) ) # ( \DEQ_READ~combout\ & ( 
-- !\DEQ_READ_PREV~q\ & ( HEAD(1) ) ) ) # ( !\DEQ_READ~combout\ & ( !\DEQ_READ_PREV~q\ & ( HEAD(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101100110001101100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_Equal5~0_combout\,
	datad => \ALT_INV_Equal5~1_combout\,
	datae => \ALT_INV_DEQ_READ~combout\,
	dataf => \ALT_INV_DEQ_READ_PREV~q\,
	combout => \HEAD[1]~3_combout\);

\HEAD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \HEAD[1]~3_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEAD(1));

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !TAIL(0) $ (!HEAD(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !TAIL(0) $ (!HEAD(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((!HEAD(0)) # (TAIL(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_TAIL(0),
	datad => ALT_INV_HEAD(0),
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !TAIL(1) $ (HEAD(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !TAIL(1) $ (HEAD(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((TAIL(1) & !HEAD(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_TAIL(1),
	datad => ALT_INV_HEAD(1),
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !TAIL(2) $ (HEAD(2)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !TAIL(2) $ (HEAD(2)) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((TAIL(2) & !HEAD(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_TAIL(2),
	datad => ALT_INV_HEAD(2),
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

\HEAD[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEAD[3]~1_combout\ = ( \DEQ_READ~combout\ & ( \process_2~0_combout\ & ( HEAD(3) ) ) ) # ( !\DEQ_READ~combout\ & ( \process_2~0_combout\ & ( !HEAD(3) $ (((!HEAD(0)) # ((!HEAD(1)) # (!HEAD(2))))) ) ) ) # ( \DEQ_READ~combout\ & ( !\process_2~0_combout\ & ( 
-- HEAD(3) ) ) ) # ( !\DEQ_READ~combout\ & ( !\process_2~0_combout\ & ( HEAD(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => ALT_INV_HEAD(2),
	datad => ALT_INV_HEAD(3),
	datae => \ALT_INV_DEQ_READ~combout\,
	dataf => \ALT_INV_process_2~0_combout\,
	combout => \HEAD[3]~1_combout\);

\HEAD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \HEAD[3]~1_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEAD(3));

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !TAIL(3) $ (HEAD(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_TAIL(3),
	datad => ALT_INV_HEAD(3),
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\);

\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\Add0~1_sumout\ & (!\Add0~5_sumout\ & (!\Add0~9_sumout\ & \Add0~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	combout => \Equal6~0_combout\);

\TAIL[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TAIL[2]~2_combout\ = ( \ENQ_FIN~q\ & ( \Equal6~0_combout\ & ( TAIL(2) ) ) ) # ( !\ENQ_FIN~q\ & ( \Equal6~0_combout\ & ( TAIL(2) ) ) ) # ( \ENQ_FIN~q\ & ( !\Equal6~0_combout\ & ( TAIL(2) ) ) ) # ( !\ENQ_FIN~q\ & ( !\Equal6~0_combout\ & ( !TAIL(2) $ 
-- (((!TAIL(0)) # ((!TAIL(1)) # (!\process_1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datad => \ALT_INV_process_1~0_combout\,
	datae => \ALT_INV_ENQ_FIN~q\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \TAIL[2]~2_combout\);

\TAIL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \TAIL[2]~2_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TAIL(2));

\TAIL[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TAIL[3]~1_combout\ = ( \TAIL[3]~0_combout\ & ( !TAIL(3) $ (((!TAIL(0)) # ((!TAIL(1)) # (!TAIL(2))))) ) ) # ( !\TAIL[3]~0_combout\ & ( TAIL(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000011111111000000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datad => ALT_INV_TAIL(3),
	datae => \ALT_INV_TAIL[3]~0_combout\,
	combout => \TAIL[3]~1_combout\);

\TAIL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \TAIL[3]~1_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TAIL(3));

\Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = !TAIL(3) $ (!HEAD(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(3),
	datab => ALT_INV_HEAD(3),
	combout => \Equal5~0_combout\);

\HEAD[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEAD[0]~2_combout\ = ( \DEQ_READ_PREV~q\ & ( !HEAD(0) $ ((((!\Equal5~0_combout\ & \Equal5~1_combout\)) # (\DEQ_READ~combout\))) ) ) # ( !\DEQ_READ_PREV~q\ & ( HEAD(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101001100101010101010101010101011010011001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => \ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_Equal5~1_combout\,
	datad => \ALT_INV_DEQ_READ~combout\,
	datae => \ALT_INV_DEQ_READ_PREV~q\,
	combout => \HEAD[0]~2_combout\);

\HEAD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \HEAD[0]~2_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HEAD(0));

\TAIL[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TAIL[3]~0_combout\ = ( \process_1~0_combout\ & ( !\ENQ_FIN~q\ & ( (((!\Add0~13_sumout\) # (\Add0~9_sumout\)) # (\Add0~5_sumout\)) # (\Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_process_1~0_combout\,
	dataf => \ALT_INV_ENQ_FIN~q\,
	combout => \TAIL[3]~0_combout\);

\TAIL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \TAIL[0]~3_combout\,
	clrn => \RESETN~input_o\,
	ena => \TAIL[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TAIL(0));

\QUEUE[2][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \QUEUE[2][0]~0_combout\ = ( !\ENQ_FIN~q\ & ( \Equal6~0_combout\ & ( (TAIL(0) & (TAIL(1) & (!TAIL(2) & \process_1~0_combout\))) ) ) ) # ( !\ENQ_FIN~q\ & ( !\Equal6~0_combout\ & ( (!TAIL(0) & (TAIL(1) & (!TAIL(2) & \process_1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datad => \ALT_INV_process_1~0_combout\,
	datae => \ALT_INV_ENQ_FIN~q\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \QUEUE[2][0]~0_combout\);

\QUEUE[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][0]~q\);

\FRONT[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[4]~0_combout\ = (!HEAD(0) & HEAD(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	combout => \FRONT[4]~0_combout\);

\FRONT[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[4]~1_combout\ = (!HEAD(2) & (((!\Equal5~0_combout\ & \Equal5~1_combout\)) # (\FRONT[4]~0_combout\))) # (HEAD(2) & (!\Equal5~0_combout\ & ((\Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011001110000010101100111000001010110011100000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(2),
	datab => \ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_FRONT[4]~0_combout\,
	datad => \ALT_INV_Equal5~1_combout\,
	combout => \FRONT[4]~1_combout\);

\FRONT[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[4]~2_combout\ = (!HEAD(2) & ((!\FRONT[4]~0_combout\) # ((!\Equal5~0_combout\ & \Equal5~1_combout\)))) # (HEAD(2) & (!\Equal5~0_combout\ & ((\Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011101100101000001110110010100000111011001010000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(2),
	datab => \ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_FRONT[4]~0_combout\,
	datad => \ALT_INV_Equal5~1_combout\,
	combout => \FRONT[4]~2_combout\);

\QUEUE[4][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \QUEUE[4][0]~1_combout\ = ( !\ENQ_FIN~q\ & ( \Equal6~0_combout\ & ( (TAIL(0) & (!TAIL(1) & (TAIL(2) & \process_1~0_combout\))) ) ) ) # ( !\ENQ_FIN~q\ & ( !\Equal6~0_combout\ & ( (!TAIL(0) & (!TAIL(1) & (TAIL(2) & \process_1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datad => \ALT_INV_process_1~0_combout\,
	datae => \ALT_INV_ENQ_FIN~q\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \QUEUE[4][0]~1_combout\);

\QUEUE[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][0]~q\);

\QUEUE[7][0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \QUEUE[7][0]~2_combout\ = ( \process_1~0_combout\ & ( !\ENQ_FIN~q\ & ( (!\Add0~1_sumout\ & (!\Add0~5_sumout\ & (!\Add0~9_sumout\ & \Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_process_1~0_combout\,
	dataf => \ALT_INV_ENQ_FIN~q\,
	combout => \QUEUE[7][0]~2_combout\);

\QUEUE[5][0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \QUEUE[5][0]~3_combout\ = ( \QUEUE[7][0]~2_combout\ & ( \TAIL[3]~0_combout\ & ( (TAIL(2) & (!TAIL(0) $ (!TAIL(1)))) ) ) ) # ( !\QUEUE[7][0]~2_combout\ & ( \TAIL[3]~0_combout\ & ( (TAIL(0) & (!TAIL(1) & TAIL(2))) ) ) ) # ( \QUEUE[7][0]~2_combout\ & ( 
-- !\TAIL[3]~0_combout\ & ( (!TAIL(0) & (TAIL(1) & TAIL(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000100000001000000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datae => \ALT_INV_QUEUE[7][0]~2_combout\,
	dataf => \ALT_INV_TAIL[3]~0_combout\,
	combout => \QUEUE[5][0]~3_combout\);

\QUEUE[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][0]~q\);

\QUEUE[6][0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \QUEUE[6][0]~4_combout\ = ( !\ENQ_FIN~q\ & ( \Equal6~0_combout\ & ( (TAIL(0) & (TAIL(1) & (TAIL(2) & \process_1~0_combout\))) ) ) ) # ( !\ENQ_FIN~q\ & ( !\Equal6~0_combout\ & ( (!TAIL(0) & (TAIL(1) & (TAIL(2) & \process_1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datad => \ALT_INV_process_1~0_combout\,
	datae => \ALT_INV_ENQ_FIN~q\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \QUEUE[6][0]~4_combout\);

\QUEUE[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][0]~q\);

\QUEUE[7][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \QUEUE[7][0]~5_combout\ = ( !\ENQ_FIN~q\ & ( \Equal6~0_combout\ & ( (!TAIL(0) & (!TAIL(1) & (!TAIL(2) & \process_1~0_combout\))) ) ) ) # ( !\ENQ_FIN~q\ & ( !\Equal6~0_combout\ & ( (TAIL(0) & (TAIL(1) & (TAIL(2) & \process_1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datad => \ALT_INV_process_1~0_combout\,
	datae => \ALT_INV_ENQ_FIN~q\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \QUEUE[7][0]~5_combout\);

\QUEUE[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][0]~q\);

\FRONT[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[0]~3_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][0]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][0]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][0]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][0]~q\,
	datab => \ALT_INV_QUEUE[5][0]~q\,
	datac => \ALT_INV_QUEUE[6][0]~q\,
	datad => \ALT_INV_QUEUE[7][0]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[0]~3_combout\);

\QUEUE[3][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \QUEUE[3][0]~6_combout\ = ( \QUEUE[7][0]~2_combout\ & ( \TAIL[3]~0_combout\ & ( (!TAIL(0) & (!TAIL(1) & TAIL(2))) # (TAIL(0) & (TAIL(1) & !TAIL(2))) ) ) ) # ( !\QUEUE[7][0]~2_combout\ & ( \TAIL[3]~0_combout\ & ( (TAIL(0) & (TAIL(1) & !TAIL(2))) ) ) ) # ( 
-- \QUEUE[7][0]~2_combout\ & ( !\TAIL[3]~0_combout\ & ( (!TAIL(0) & (!TAIL(1) & TAIL(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000010000000100000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datae => \ALT_INV_QUEUE[7][0]~2_combout\,
	dataf => \ALT_INV_TAIL[3]~0_combout\,
	combout => \QUEUE[3][0]~6_combout\);

\QUEUE[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][0]~q\);

\QUEUE[1][0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \QUEUE[1][0]~7_combout\ = ( \QUEUE[7][0]~2_combout\ & ( \TAIL[3]~0_combout\ & ( (!TAIL(2) & (!TAIL(0) $ (!TAIL(1)))) ) ) ) # ( !\QUEUE[7][0]~2_combout\ & ( \TAIL[3]~0_combout\ & ( (TAIL(0) & (!TAIL(1) & !TAIL(2))) ) ) ) # ( \QUEUE[7][0]~2_combout\ & ( 
-- !\TAIL[3]~0_combout\ & ( (!TAIL(0) & (TAIL(1) & !TAIL(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000001000000010000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datae => \ALT_INV_QUEUE[7][0]~2_combout\,
	dataf => \ALT_INV_TAIL[3]~0_combout\,
	combout => \QUEUE[1][0]~7_combout\);

\QUEUE[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][0]~q\);

\QUEUE[0][0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \QUEUE[0][0]~8_combout\ = ( !\ENQ_FIN~q\ & ( \Equal6~0_combout\ & ( (TAIL(0) & (!TAIL(1) & (!TAIL(2) & \process_1~0_combout\))) ) ) ) # ( !\ENQ_FIN~q\ & ( !\Equal6~0_combout\ & ( (!TAIL(0) & (!TAIL(1) & (!TAIL(2) & \process_1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TAIL(0),
	datab => ALT_INV_TAIL(1),
	datac => ALT_INV_TAIL(2),
	datad => \ALT_INV_process_1~0_combout\,
	datae => \ALT_INV_ENQ_FIN~q\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \QUEUE[0][0]~8_combout\);

\QUEUE[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][0]~q\);

\FRONT[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[0]~4_combout\ = ( \QUEUE[0][0]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][0]~q\)))) # (HEAD(1) & (((\QUEUE[3][0]~q\)))) ) ) # ( !\QUEUE[0][0]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][0]~q\)))) # (HEAD(1) & (((\QUEUE[3][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][0]~q\,
	datad => \ALT_INV_QUEUE[1][0]~q\,
	datae => \ALT_INV_QUEUE[0][0]~q\,
	combout => \FRONT[0]~4_combout\);

\FRONT[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[0]~5_combout\ = ( \FRONT[0]~4_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[0]~3_combout\) # (\FRONT[4]~2_combout\)))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][0]~q\ & (!\FRONT[4]~2_combout\))) ) ) # ( !\FRONT[0]~4_combout\ & ( (!\FRONT[4]~2_combout\ 
-- & ((!\FRONT[4]~1_combout\ & ((\FRONT[0]~3_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010000110100000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[2][0]~q\,
	datab => \ALT_INV_FRONT[4]~1_combout\,
	datac => \ALT_INV_FRONT[4]~2_combout\,
	datad => \ALT_INV_FRONT[0]~3_combout\,
	datae => \ALT_INV_FRONT[0]~4_combout\,
	combout => \FRONT[0]~5_combout\);

\IO_DATA[0]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[0]~33_combout\ = ( \Equal0~1_combout\ & ( (!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	combout => \IO_DATA[0]~33_combout\);

\OR_MASK[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OR_MASK[0]~0_combout\ = ( \Equal0~1_combout\ & ( \IO_WRITE~input_o\ & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_IO_WRITE~input_o\,
	combout => \OR_MASK[0]~0_combout\);

\OR_MASK[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(0));

\IO_DATA[0]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[0]~34_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(0) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(0),
	combout => \IO_DATA[0]~34_combout\);

\AND_MASK[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_MASK[0]~0_combout\ = ( \Equal0~1_combout\ & ( \IO_WRITE~input_o\ & ( (\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & (!\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_IO_WRITE~input_o\,
	combout => \AND_MASK[0]~0_combout\);

\AND_MASK[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(0));

\IO_DATA[0]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[0]~35_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(0) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(0) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(0),
	combout => \IO_DATA[0]~35_combout\);

\IO_DATA[0]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[0]~36_combout\ = ( \IO_DATA[0]~34_combout\ & ( \IO_DATA[0]~35_combout\ ) ) # ( !\IO_DATA[0]~34_combout\ & ( \IO_DATA[0]~35_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(0) $ (!\FRONT[0]~5_combout\)))) # (\IO_DATA[0]~32_combout\) ) ) ) # ( 
-- \IO_DATA[0]~34_combout\ & ( !\IO_DATA[0]~35_combout\ ) ) # ( !\IO_DATA[0]~34_combout\ & ( !\IO_DATA[0]~35_combout\ & ( (((XOR_MASK(0) & \IO_DATA[0]~33_combout\)) # (\FRONT[0]~5_combout\)) # (\IO_DATA[0]~32_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111111111111111111101010101011111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~32_combout\,
	datab => ALT_INV_XOR_MASK(0),
	datac => \ALT_INV_FRONT[0]~5_combout\,
	datad => \ALT_INV_IO_DATA[0]~33_combout\,
	datae => \ALT_INV_IO_DATA[0]~34_combout\,
	dataf => \ALT_INV_IO_DATA[0]~35_combout\,
	combout => \IO_DATA[0]~36_combout\);

\IO_DATA[15]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[15]~37_combout\ = ( \Equal0~1_combout\ & ( \IO_READ~input_o\ & ( (\Equal0~0_combout\ & (((\IO_ADDR[1]~input_o\ & \IO_ADDR[0]~input_o\)) # (\IO_ADDR[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_IO_READ~input_o\,
	combout => \IO_DATA[15]~37_combout\);

\EXT_WIRES[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(1),
	o => \EXT_WIRES[1]~input_o\);

\IO_DATA[1]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[1]~38_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[1]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[1]~input_o\,
	combout => \IO_DATA[1]~38_combout\);

\IO_DATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(1),
	o => \IO_DATA[1]~input_o\);

\XOR_MASK[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(1));

\QUEUE[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][1]~q\);

\QUEUE[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][1]~q\);

\QUEUE[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][1]~q\);

\QUEUE[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][1]~q\);

\QUEUE[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][1]~q\);

\FRONT[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[1]~6_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][1]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][1]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][1]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][1]~q\,
	datab => \ALT_INV_QUEUE[5][1]~q\,
	datac => \ALT_INV_QUEUE[6][1]~q\,
	datad => \ALT_INV_QUEUE[7][1]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[1]~6_combout\);

\QUEUE[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][1]~q\);

\QUEUE[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][1]~q\);

\QUEUE[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][1]~q\);

\FRONT[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[1]~7_combout\ = ( \QUEUE[0][1]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][1]~q\)))) # (HEAD(1) & (((\QUEUE[3][1]~q\)))) ) ) # ( !\QUEUE[0][1]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][1]~q\)))) # (HEAD(1) & (((\QUEUE[3][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][1]~q\,
	datad => \ALT_INV_QUEUE[1][1]~q\,
	datae => \ALT_INV_QUEUE[0][1]~q\,
	combout => \FRONT[1]~7_combout\);

\FRONT[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[1]~8_combout\ = ( \FRONT[1]~7_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[1]~6_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][1]~q\))) ) ) # ( !\FRONT[1]~7_combout\ & ( (!\FRONT[4]~2_combout\ 
-- & ((!\FRONT[4]~1_combout\ & ((\FRONT[1]~6_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][1]~q\,
	datad => \ALT_INV_FRONT[1]~6_combout\,
	datae => \ALT_INV_FRONT[1]~7_combout\,
	combout => \FRONT[1]~8_combout\);

\OR_MASK[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(1));

\IO_DATA[1]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[1]~39_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(1) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(1),
	combout => \IO_DATA[1]~39_combout\);

\AND_MASK[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(1));

\IO_DATA[1]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[1]~40_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(1) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(1) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(1),
	combout => \IO_DATA[1]~40_combout\);

\IO_DATA[1]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[1]~41_combout\ = ( \IO_DATA[1]~39_combout\ & ( \IO_DATA[1]~40_combout\ ) ) # ( !\IO_DATA[1]~39_combout\ & ( \IO_DATA[1]~40_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(1) $ (!\FRONT[1]~8_combout\)))) # (\IO_DATA[1]~38_combout\) ) ) ) # ( 
-- \IO_DATA[1]~39_combout\ & ( !\IO_DATA[1]~40_combout\ ) ) # ( !\IO_DATA[1]~39_combout\ & ( !\IO_DATA[1]~40_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(1))) # (\FRONT[1]~8_combout\)) # (\IO_DATA[1]~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[1]~38_combout\,
	datac => ALT_INV_XOR_MASK(1),
	datad => \ALT_INV_FRONT[1]~8_combout\,
	datae => \ALT_INV_IO_DATA[1]~39_combout\,
	dataf => \ALT_INV_IO_DATA[1]~40_combout\,
	combout => \IO_DATA[1]~41_combout\);

\EXT_WIRES[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(2),
	o => \EXT_WIRES[2]~input_o\);

\IO_DATA[2]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[2]~42_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[2]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[2]~input_o\,
	combout => \IO_DATA[2]~42_combout\);

\IO_DATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(2),
	o => \IO_DATA[2]~input_o\);

\XOR_MASK[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(2));

\QUEUE[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][2]~q\);

\QUEUE[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][2]~q\);

\QUEUE[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][2]~q\);

\QUEUE[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][2]~q\);

\QUEUE[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][2]~q\);

\FRONT[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[2]~9_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][2]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][2]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][2]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][2]~q\,
	datab => \ALT_INV_QUEUE[5][2]~q\,
	datac => \ALT_INV_QUEUE[6][2]~q\,
	datad => \ALT_INV_QUEUE[7][2]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[2]~9_combout\);

\QUEUE[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][2]~q\);

\QUEUE[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][2]~q\);

\QUEUE[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][2]~q\);

\FRONT[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[2]~10_combout\ = ( \QUEUE[0][2]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][2]~q\)))) # (HEAD(1) & (((\QUEUE[3][2]~q\)))) ) ) # ( !\QUEUE[0][2]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][2]~q\)))) # (HEAD(1) & (((\QUEUE[3][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][2]~q\,
	datad => \ALT_INV_QUEUE[1][2]~q\,
	datae => \ALT_INV_QUEUE[0][2]~q\,
	combout => \FRONT[2]~10_combout\);

\FRONT[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[2]~11_combout\ = ( \FRONT[2]~10_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[2]~9_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][2]~q\))) ) ) # ( !\FRONT[2]~10_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[2]~9_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][2]~q\,
	datad => \ALT_INV_FRONT[2]~9_combout\,
	datae => \ALT_INV_FRONT[2]~10_combout\,
	combout => \FRONT[2]~11_combout\);

\OR_MASK[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(2));

\IO_DATA[2]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[2]~43_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(2) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(2),
	combout => \IO_DATA[2]~43_combout\);

\AND_MASK[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(2));

\IO_DATA[2]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[2]~44_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(2) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(2) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(2),
	combout => \IO_DATA[2]~44_combout\);

\IO_DATA[2]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[2]~45_combout\ = ( \IO_DATA[2]~43_combout\ & ( \IO_DATA[2]~44_combout\ ) ) # ( !\IO_DATA[2]~43_combout\ & ( \IO_DATA[2]~44_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(2) $ (!\FRONT[2]~11_combout\)))) # (\IO_DATA[2]~42_combout\) ) ) ) # ( 
-- \IO_DATA[2]~43_combout\ & ( !\IO_DATA[2]~44_combout\ ) ) # ( !\IO_DATA[2]~43_combout\ & ( !\IO_DATA[2]~44_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(2))) # (\FRONT[2]~11_combout\)) # (\IO_DATA[2]~42_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[2]~42_combout\,
	datac => ALT_INV_XOR_MASK(2),
	datad => \ALT_INV_FRONT[2]~11_combout\,
	datae => \ALT_INV_IO_DATA[2]~43_combout\,
	dataf => \ALT_INV_IO_DATA[2]~44_combout\,
	combout => \IO_DATA[2]~45_combout\);

\EXT_WIRES[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(3),
	o => \EXT_WIRES[3]~input_o\);

\IO_DATA[3]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[3]~46_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[3]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[3]~input_o\,
	combout => \IO_DATA[3]~46_combout\);

\IO_DATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(3),
	o => \IO_DATA[3]~input_o\);

\XOR_MASK[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(3));

\QUEUE[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][3]~q\);

\QUEUE[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][3]~q\);

\QUEUE[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][3]~q\);

\QUEUE[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][3]~q\);

\QUEUE[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][3]~q\);

\FRONT[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[3]~12_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][3]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][3]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][3]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][3]~q\,
	datab => \ALT_INV_QUEUE[5][3]~q\,
	datac => \ALT_INV_QUEUE[6][3]~q\,
	datad => \ALT_INV_QUEUE[7][3]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[3]~12_combout\);

\QUEUE[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][3]~q\);

\QUEUE[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][3]~q\);

\QUEUE[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][3]~q\);

\FRONT[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[3]~13_combout\ = ( \QUEUE[0][3]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][3]~q\)))) # (HEAD(1) & (((\QUEUE[3][3]~q\)))) ) ) # ( !\QUEUE[0][3]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][3]~q\)))) # (HEAD(1) & (((\QUEUE[3][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][3]~q\,
	datad => \ALT_INV_QUEUE[1][3]~q\,
	datae => \ALT_INV_QUEUE[0][3]~q\,
	combout => \FRONT[3]~13_combout\);

\FRONT[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[3]~14_combout\ = ( \FRONT[3]~13_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[3]~12_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][3]~q\))) ) ) # ( !\FRONT[3]~13_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[3]~12_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][3]~q\,
	datad => \ALT_INV_FRONT[3]~12_combout\,
	datae => \ALT_INV_FRONT[3]~13_combout\,
	combout => \FRONT[3]~14_combout\);

\OR_MASK[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(3));

\IO_DATA[3]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[3]~47_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(3) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(3),
	combout => \IO_DATA[3]~47_combout\);

\AND_MASK[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(3));

\IO_DATA[3]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[3]~48_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(3) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(3) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(3),
	combout => \IO_DATA[3]~48_combout\);

\IO_DATA[3]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[3]~49_combout\ = ( \IO_DATA[3]~47_combout\ & ( \IO_DATA[3]~48_combout\ ) ) # ( !\IO_DATA[3]~47_combout\ & ( \IO_DATA[3]~48_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(3) $ (!\FRONT[3]~14_combout\)))) # (\IO_DATA[3]~46_combout\) ) ) ) # ( 
-- \IO_DATA[3]~47_combout\ & ( !\IO_DATA[3]~48_combout\ ) ) # ( !\IO_DATA[3]~47_combout\ & ( !\IO_DATA[3]~48_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(3))) # (\FRONT[3]~14_combout\)) # (\IO_DATA[3]~46_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[3]~46_combout\,
	datac => ALT_INV_XOR_MASK(3),
	datad => \ALT_INV_FRONT[3]~14_combout\,
	datae => \ALT_INV_IO_DATA[3]~47_combout\,
	dataf => \ALT_INV_IO_DATA[3]~48_combout\,
	combout => \IO_DATA[3]~49_combout\);

\EXT_WIRES[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(4),
	o => \EXT_WIRES[4]~input_o\);

\IO_DATA[4]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[4]~50_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[4]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[4]~input_o\,
	combout => \IO_DATA[4]~50_combout\);

\IO_DATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(4),
	o => \IO_DATA[4]~input_o\);

\XOR_MASK[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(4));

\QUEUE[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][4]~q\);

\QUEUE[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][4]~q\);

\QUEUE[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][4]~q\);

\QUEUE[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][4]~q\);

\QUEUE[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][4]~q\);

\FRONT[4]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[4]~15_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][4]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][4]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][4]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][4]~q\,
	datab => \ALT_INV_QUEUE[5][4]~q\,
	datac => \ALT_INV_QUEUE[6][4]~q\,
	datad => \ALT_INV_QUEUE[7][4]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[4]~15_combout\);

\QUEUE[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][4]~q\);

\QUEUE[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][4]~q\);

\QUEUE[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][4]~q\);

\FRONT[4]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[4]~16_combout\ = ( \QUEUE[0][4]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][4]~q\)))) # (HEAD(1) & (((\QUEUE[3][4]~q\)))) ) ) # ( !\QUEUE[0][4]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][4]~q\)))) # (HEAD(1) & (((\QUEUE[3][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][4]~q\,
	datad => \ALT_INV_QUEUE[1][4]~q\,
	datae => \ALT_INV_QUEUE[0][4]~q\,
	combout => \FRONT[4]~16_combout\);

\FRONT[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[4]~17_combout\ = ( \FRONT[4]~16_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[4]~15_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][4]~q\))) ) ) # ( !\FRONT[4]~16_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[4]~15_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][4]~q\,
	datad => \ALT_INV_FRONT[4]~15_combout\,
	datae => \ALT_INV_FRONT[4]~16_combout\,
	combout => \FRONT[4]~17_combout\);

\OR_MASK[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(4));

\IO_DATA[4]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[4]~51_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(4) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(4),
	combout => \IO_DATA[4]~51_combout\);

\AND_MASK[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(4));

\IO_DATA[4]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[4]~52_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(4) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(4) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(4),
	combout => \IO_DATA[4]~52_combout\);

\IO_DATA[4]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[4]~53_combout\ = ( \IO_DATA[4]~51_combout\ & ( \IO_DATA[4]~52_combout\ ) ) # ( !\IO_DATA[4]~51_combout\ & ( \IO_DATA[4]~52_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(4) $ (!\FRONT[4]~17_combout\)))) # (\IO_DATA[4]~50_combout\) ) ) ) # ( 
-- \IO_DATA[4]~51_combout\ & ( !\IO_DATA[4]~52_combout\ ) ) # ( !\IO_DATA[4]~51_combout\ & ( !\IO_DATA[4]~52_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(4))) # (\FRONT[4]~17_combout\)) # (\IO_DATA[4]~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[4]~50_combout\,
	datac => ALT_INV_XOR_MASK(4),
	datad => \ALT_INV_FRONT[4]~17_combout\,
	datae => \ALT_INV_IO_DATA[4]~51_combout\,
	dataf => \ALT_INV_IO_DATA[4]~52_combout\,
	combout => \IO_DATA[4]~53_combout\);

\EXT_WIRES[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(5),
	o => \EXT_WIRES[5]~input_o\);

\IO_DATA[5]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[5]~54_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[5]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[5]~input_o\,
	combout => \IO_DATA[5]~54_combout\);

\IO_DATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(5),
	o => \IO_DATA[5]~input_o\);

\XOR_MASK[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(5));

\QUEUE[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][5]~q\);

\QUEUE[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][5]~q\);

\QUEUE[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][5]~q\);

\QUEUE[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][5]~q\);

\QUEUE[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][5]~q\);

\FRONT[5]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[5]~18_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][5]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][5]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][5]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][5]~q\,
	datab => \ALT_INV_QUEUE[5][5]~q\,
	datac => \ALT_INV_QUEUE[6][5]~q\,
	datad => \ALT_INV_QUEUE[7][5]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[5]~18_combout\);

\QUEUE[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][5]~q\);

\QUEUE[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][5]~q\);

\QUEUE[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][5]~q\);

\FRONT[5]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[5]~19_combout\ = ( \QUEUE[0][5]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][5]~q\)))) # (HEAD(1) & (((\QUEUE[3][5]~q\)))) ) ) # ( !\QUEUE[0][5]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][5]~q\)))) # (HEAD(1) & (((\QUEUE[3][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][5]~q\,
	datad => \ALT_INV_QUEUE[1][5]~q\,
	datae => \ALT_INV_QUEUE[0][5]~q\,
	combout => \FRONT[5]~19_combout\);

\FRONT[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[5]~20_combout\ = ( \FRONT[5]~19_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[5]~18_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][5]~q\))) ) ) # ( !\FRONT[5]~19_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[5]~18_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][5]~q\,
	datad => \ALT_INV_FRONT[5]~18_combout\,
	datae => \ALT_INV_FRONT[5]~19_combout\,
	combout => \FRONT[5]~20_combout\);

\OR_MASK[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(5));

\IO_DATA[5]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[5]~55_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(5) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(5),
	combout => \IO_DATA[5]~55_combout\);

\AND_MASK[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(5));

\IO_DATA[5]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[5]~56_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(5) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(5) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(5),
	combout => \IO_DATA[5]~56_combout\);

\IO_DATA[5]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[5]~57_combout\ = ( \IO_DATA[5]~55_combout\ & ( \IO_DATA[5]~56_combout\ ) ) # ( !\IO_DATA[5]~55_combout\ & ( \IO_DATA[5]~56_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(5) $ (!\FRONT[5]~20_combout\)))) # (\IO_DATA[5]~54_combout\) ) ) ) # ( 
-- \IO_DATA[5]~55_combout\ & ( !\IO_DATA[5]~56_combout\ ) ) # ( !\IO_DATA[5]~55_combout\ & ( !\IO_DATA[5]~56_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(5))) # (\FRONT[5]~20_combout\)) # (\IO_DATA[5]~54_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[5]~54_combout\,
	datac => ALT_INV_XOR_MASK(5),
	datad => \ALT_INV_FRONT[5]~20_combout\,
	datae => \ALT_INV_IO_DATA[5]~55_combout\,
	dataf => \ALT_INV_IO_DATA[5]~56_combout\,
	combout => \IO_DATA[5]~57_combout\);

\EXT_WIRES[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(6),
	o => \EXT_WIRES[6]~input_o\);

\IO_DATA[6]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[6]~58_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[6]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[6]~input_o\,
	combout => \IO_DATA[6]~58_combout\);

\IO_DATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(6),
	o => \IO_DATA[6]~input_o\);

\XOR_MASK[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(6));

\QUEUE[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][6]~q\);

\QUEUE[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][6]~q\);

\QUEUE[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][6]~q\);

\QUEUE[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][6]~q\);

\QUEUE[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][6]~q\);

\FRONT[6]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[6]~21_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][6]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][6]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][6]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][6]~q\,
	datab => \ALT_INV_QUEUE[5][6]~q\,
	datac => \ALT_INV_QUEUE[6][6]~q\,
	datad => \ALT_INV_QUEUE[7][6]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[6]~21_combout\);

\QUEUE[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][6]~q\);

\QUEUE[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][6]~q\);

\QUEUE[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][6]~q\);

\FRONT[6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[6]~22_combout\ = ( \QUEUE[0][6]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][6]~q\)))) # (HEAD(1) & (((\QUEUE[3][6]~q\)))) ) ) # ( !\QUEUE[0][6]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][6]~q\)))) # (HEAD(1) & (((\QUEUE[3][6]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][6]~q\,
	datad => \ALT_INV_QUEUE[1][6]~q\,
	datae => \ALT_INV_QUEUE[0][6]~q\,
	combout => \FRONT[6]~22_combout\);

\FRONT[6]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[6]~23_combout\ = ( \FRONT[6]~22_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[6]~21_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][6]~q\))) ) ) # ( !\FRONT[6]~22_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[6]~21_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][6]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][6]~q\,
	datad => \ALT_INV_FRONT[6]~21_combout\,
	datae => \ALT_INV_FRONT[6]~22_combout\,
	combout => \FRONT[6]~23_combout\);

\OR_MASK[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(6));

\IO_DATA[6]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[6]~59_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(6) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(6),
	combout => \IO_DATA[6]~59_combout\);

\AND_MASK[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(6));

\IO_DATA[6]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[6]~60_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(6) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(6) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(6),
	combout => \IO_DATA[6]~60_combout\);

\IO_DATA[6]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[6]~61_combout\ = ( \IO_DATA[6]~59_combout\ & ( \IO_DATA[6]~60_combout\ ) ) # ( !\IO_DATA[6]~59_combout\ & ( \IO_DATA[6]~60_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(6) $ (!\FRONT[6]~23_combout\)))) # (\IO_DATA[6]~58_combout\) ) ) ) # ( 
-- \IO_DATA[6]~59_combout\ & ( !\IO_DATA[6]~60_combout\ ) ) # ( !\IO_DATA[6]~59_combout\ & ( !\IO_DATA[6]~60_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(6))) # (\FRONT[6]~23_combout\)) # (\IO_DATA[6]~58_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[6]~58_combout\,
	datac => ALT_INV_XOR_MASK(6),
	datad => \ALT_INV_FRONT[6]~23_combout\,
	datae => \ALT_INV_IO_DATA[6]~59_combout\,
	dataf => \ALT_INV_IO_DATA[6]~60_combout\,
	combout => \IO_DATA[6]~61_combout\);

\EXT_WIRES[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(7),
	o => \EXT_WIRES[7]~input_o\);

\IO_DATA[7]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[7]~62_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[7]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[7]~input_o\,
	combout => \IO_DATA[7]~62_combout\);

\IO_DATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(7),
	o => \IO_DATA[7]~input_o\);

\XOR_MASK[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(7));

\QUEUE[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][7]~q\);

\QUEUE[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][7]~q\);

\QUEUE[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][7]~q\);

\QUEUE[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][7]~q\);

\QUEUE[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][7]~q\);

\FRONT[7]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[7]~24_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][7]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][7]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][7]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][7]~q\,
	datab => \ALT_INV_QUEUE[5][7]~q\,
	datac => \ALT_INV_QUEUE[6][7]~q\,
	datad => \ALT_INV_QUEUE[7][7]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[7]~24_combout\);

\QUEUE[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][7]~q\);

\QUEUE[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][7]~q\);

\QUEUE[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][7]~q\);

\FRONT[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[7]~25_combout\ = ( \QUEUE[0][7]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][7]~q\)))) # (HEAD(1) & (((\QUEUE[3][7]~q\)))) ) ) # ( !\QUEUE[0][7]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][7]~q\)))) # (HEAD(1) & (((\QUEUE[3][7]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][7]~q\,
	datad => \ALT_INV_QUEUE[1][7]~q\,
	datae => \ALT_INV_QUEUE[0][7]~q\,
	combout => \FRONT[7]~25_combout\);

\FRONT[7]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[7]~26_combout\ = ( \FRONT[7]~25_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[7]~24_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][7]~q\))) ) ) # ( !\FRONT[7]~25_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[7]~24_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][7]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][7]~q\,
	datad => \ALT_INV_FRONT[7]~24_combout\,
	datae => \ALT_INV_FRONT[7]~25_combout\,
	combout => \FRONT[7]~26_combout\);

\OR_MASK[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(7));

\IO_DATA[7]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[7]~63_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(7) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(7),
	combout => \IO_DATA[7]~63_combout\);

\AND_MASK[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(7));

\IO_DATA[7]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[7]~64_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(7) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(7) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(7),
	combout => \IO_DATA[7]~64_combout\);

\IO_DATA[7]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[7]~65_combout\ = ( \IO_DATA[7]~63_combout\ & ( \IO_DATA[7]~64_combout\ ) ) # ( !\IO_DATA[7]~63_combout\ & ( \IO_DATA[7]~64_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(7) $ (!\FRONT[7]~26_combout\)))) # (\IO_DATA[7]~62_combout\) ) ) ) # ( 
-- \IO_DATA[7]~63_combout\ & ( !\IO_DATA[7]~64_combout\ ) ) # ( !\IO_DATA[7]~63_combout\ & ( !\IO_DATA[7]~64_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(7))) # (\FRONT[7]~26_combout\)) # (\IO_DATA[7]~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[7]~62_combout\,
	datac => ALT_INV_XOR_MASK(7),
	datad => \ALT_INV_FRONT[7]~26_combout\,
	datae => \ALT_INV_IO_DATA[7]~63_combout\,
	dataf => \ALT_INV_IO_DATA[7]~64_combout\,
	combout => \IO_DATA[7]~65_combout\);

\EXT_WIRES[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(8),
	o => \EXT_WIRES[8]~input_o\);

\IO_DATA[8]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[8]~66_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[8]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[8]~input_o\,
	combout => \IO_DATA[8]~66_combout\);

\IO_DATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(8),
	o => \IO_DATA[8]~input_o\);

\XOR_MASK[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(8));

\QUEUE[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][8]~q\);

\QUEUE[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][8]~q\);

\QUEUE[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][8]~q\);

\QUEUE[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][8]~q\);

\QUEUE[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][8]~q\);

\FRONT[8]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[8]~27_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][8]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][8]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][8]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][8]~q\,
	datab => \ALT_INV_QUEUE[5][8]~q\,
	datac => \ALT_INV_QUEUE[6][8]~q\,
	datad => \ALT_INV_QUEUE[7][8]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[8]~27_combout\);

\QUEUE[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][8]~q\);

\QUEUE[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][8]~q\);

\QUEUE[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][8]~q\);

\FRONT[8]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[8]~28_combout\ = ( \QUEUE[0][8]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][8]~q\)))) # (HEAD(1) & (((\QUEUE[3][8]~q\)))) ) ) # ( !\QUEUE[0][8]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][8]~q\)))) # (HEAD(1) & (((\QUEUE[3][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][8]~q\,
	datad => \ALT_INV_QUEUE[1][8]~q\,
	datae => \ALT_INV_QUEUE[0][8]~q\,
	combout => \FRONT[8]~28_combout\);

\FRONT[8]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[8]~29_combout\ = ( \FRONT[8]~28_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[8]~27_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][8]~q\))) ) ) # ( !\FRONT[8]~28_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[8]~27_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][8]~q\,
	datad => \ALT_INV_FRONT[8]~27_combout\,
	datae => \ALT_INV_FRONT[8]~28_combout\,
	combout => \FRONT[8]~29_combout\);

\OR_MASK[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(8));

\IO_DATA[8]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[8]~67_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(8) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(8),
	combout => \IO_DATA[8]~67_combout\);

\AND_MASK[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(8));

\IO_DATA[8]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[8]~68_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(8) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(8) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(8),
	combout => \IO_DATA[8]~68_combout\);

\IO_DATA[8]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[8]~69_combout\ = ( \IO_DATA[8]~67_combout\ & ( \IO_DATA[8]~68_combout\ ) ) # ( !\IO_DATA[8]~67_combout\ & ( \IO_DATA[8]~68_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(8) $ (!\FRONT[8]~29_combout\)))) # (\IO_DATA[8]~66_combout\) ) ) ) # ( 
-- \IO_DATA[8]~67_combout\ & ( !\IO_DATA[8]~68_combout\ ) ) # ( !\IO_DATA[8]~67_combout\ & ( !\IO_DATA[8]~68_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(8))) # (\FRONT[8]~29_combout\)) # (\IO_DATA[8]~66_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[8]~66_combout\,
	datac => ALT_INV_XOR_MASK(8),
	datad => \ALT_INV_FRONT[8]~29_combout\,
	datae => \ALT_INV_IO_DATA[8]~67_combout\,
	dataf => \ALT_INV_IO_DATA[8]~68_combout\,
	combout => \IO_DATA[8]~69_combout\);

\EXT_WIRES[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(9),
	o => \EXT_WIRES[9]~input_o\);

\IO_DATA[9]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[9]~70_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[9]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[9]~input_o\,
	combout => \IO_DATA[9]~70_combout\);

\IO_DATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(9),
	o => \IO_DATA[9]~input_o\);

\XOR_MASK[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(9));

\QUEUE[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][9]~q\);

\QUEUE[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][9]~q\);

\QUEUE[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][9]~q\);

\QUEUE[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][9]~q\);

\QUEUE[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][9]~q\);

\FRONT[9]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[9]~30_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][9]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][9]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][9]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][9]~q\,
	datab => \ALT_INV_QUEUE[5][9]~q\,
	datac => \ALT_INV_QUEUE[6][9]~q\,
	datad => \ALT_INV_QUEUE[7][9]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[9]~30_combout\);

\QUEUE[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][9]~q\);

\QUEUE[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][9]~q\);

\QUEUE[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][9]~q\);

\FRONT[9]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[9]~31_combout\ = ( \QUEUE[0][9]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][9]~q\)))) # (HEAD(1) & (((\QUEUE[3][9]~q\)))) ) ) # ( !\QUEUE[0][9]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][9]~q\)))) # (HEAD(1) & (((\QUEUE[3][9]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][9]~q\,
	datad => \ALT_INV_QUEUE[1][9]~q\,
	datae => \ALT_INV_QUEUE[0][9]~q\,
	combout => \FRONT[9]~31_combout\);

\FRONT[9]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[9]~32_combout\ = ( \FRONT[9]~31_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[9]~30_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][9]~q\))) ) ) # ( !\FRONT[9]~31_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[9]~30_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][9]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][9]~q\,
	datad => \ALT_INV_FRONT[9]~30_combout\,
	datae => \ALT_INV_FRONT[9]~31_combout\,
	combout => \FRONT[9]~32_combout\);

\OR_MASK[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(9));

\IO_DATA[9]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[9]~71_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(9) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(9),
	combout => \IO_DATA[9]~71_combout\);

\AND_MASK[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(9));

\IO_DATA[9]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[9]~72_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(9) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(9) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(9),
	combout => \IO_DATA[9]~72_combout\);

\IO_DATA[9]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[9]~73_combout\ = ( \IO_DATA[9]~71_combout\ & ( \IO_DATA[9]~72_combout\ ) ) # ( !\IO_DATA[9]~71_combout\ & ( \IO_DATA[9]~72_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(9) $ (!\FRONT[9]~32_combout\)))) # (\IO_DATA[9]~70_combout\) ) ) ) # ( 
-- \IO_DATA[9]~71_combout\ & ( !\IO_DATA[9]~72_combout\ ) ) # ( !\IO_DATA[9]~71_combout\ & ( !\IO_DATA[9]~72_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(9))) # (\FRONT[9]~32_combout\)) # (\IO_DATA[9]~70_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[9]~70_combout\,
	datac => ALT_INV_XOR_MASK(9),
	datad => \ALT_INV_FRONT[9]~32_combout\,
	datae => \ALT_INV_IO_DATA[9]~71_combout\,
	dataf => \ALT_INV_IO_DATA[9]~72_combout\,
	combout => \IO_DATA[9]~73_combout\);

\EXT_WIRES[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(10),
	o => \EXT_WIRES[10]~input_o\);

\IO_DATA[10]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[10]~74_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[10]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[10]~input_o\,
	combout => \IO_DATA[10]~74_combout\);

\IO_DATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(10),
	o => \IO_DATA[10]~input_o\);

\XOR_MASK[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(10));

\QUEUE[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][10]~q\);

\QUEUE[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][10]~q\);

\QUEUE[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][10]~q\);

\QUEUE[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][10]~q\);

\QUEUE[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][10]~q\);

\FRONT[10]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[10]~33_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][10]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][10]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][10]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][10]~q\,
	datab => \ALT_INV_QUEUE[5][10]~q\,
	datac => \ALT_INV_QUEUE[6][10]~q\,
	datad => \ALT_INV_QUEUE[7][10]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[10]~33_combout\);

\QUEUE[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][10]~q\);

\QUEUE[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][10]~q\);

\QUEUE[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][10]~q\);

\FRONT[10]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[10]~34_combout\ = ( \QUEUE[0][10]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][10]~q\)))) # (HEAD(1) & (((\QUEUE[3][10]~q\)))) ) ) # ( !\QUEUE[0][10]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][10]~q\)))) # (HEAD(1) & (((\QUEUE[3][10]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][10]~q\,
	datad => \ALT_INV_QUEUE[1][10]~q\,
	datae => \ALT_INV_QUEUE[0][10]~q\,
	combout => \FRONT[10]~34_combout\);

\FRONT[10]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[10]~35_combout\ = ( \FRONT[10]~34_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[10]~33_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][10]~q\))) ) ) # ( !\FRONT[10]~34_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[10]~33_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][10]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][10]~q\,
	datad => \ALT_INV_FRONT[10]~33_combout\,
	datae => \ALT_INV_FRONT[10]~34_combout\,
	combout => \FRONT[10]~35_combout\);

\OR_MASK[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(10));

\IO_DATA[10]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[10]~75_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(10) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(10),
	combout => \IO_DATA[10]~75_combout\);

\AND_MASK[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(10));

\IO_DATA[10]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[10]~76_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(10) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(10) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(10),
	combout => \IO_DATA[10]~76_combout\);

\IO_DATA[10]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[10]~77_combout\ = ( \IO_DATA[10]~75_combout\ & ( \IO_DATA[10]~76_combout\ ) ) # ( !\IO_DATA[10]~75_combout\ & ( \IO_DATA[10]~76_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(10) $ (!\FRONT[10]~35_combout\)))) # (\IO_DATA[10]~74_combout\) ) 
-- ) ) # ( \IO_DATA[10]~75_combout\ & ( !\IO_DATA[10]~76_combout\ ) ) # ( !\IO_DATA[10]~75_combout\ & ( !\IO_DATA[10]~76_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(10))) # (\FRONT[10]~35_combout\)) # (\IO_DATA[10]~74_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[10]~74_combout\,
	datac => ALT_INV_XOR_MASK(10),
	datad => \ALT_INV_FRONT[10]~35_combout\,
	datae => \ALT_INV_IO_DATA[10]~75_combout\,
	dataf => \ALT_INV_IO_DATA[10]~76_combout\,
	combout => \IO_DATA[10]~77_combout\);

\EXT_WIRES[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(11),
	o => \EXT_WIRES[11]~input_o\);

\IO_DATA[11]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[11]~78_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[11]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[11]~input_o\,
	combout => \IO_DATA[11]~78_combout\);

\IO_DATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(11),
	o => \IO_DATA[11]~input_o\);

\XOR_MASK[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(11));

\QUEUE[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][11]~q\);

\QUEUE[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][11]~q\);

\QUEUE[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][11]~q\);

\QUEUE[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][11]~q\);

\QUEUE[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][11]~q\);

\FRONT[11]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[11]~36_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][11]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][11]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][11]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][11]~q\,
	datab => \ALT_INV_QUEUE[5][11]~q\,
	datac => \ALT_INV_QUEUE[6][11]~q\,
	datad => \ALT_INV_QUEUE[7][11]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[11]~36_combout\);

\QUEUE[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][11]~q\);

\QUEUE[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][11]~q\);

\QUEUE[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][11]~q\);

\FRONT[11]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[11]~37_combout\ = ( \QUEUE[0][11]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][11]~q\)))) # (HEAD(1) & (((\QUEUE[3][11]~q\)))) ) ) # ( !\QUEUE[0][11]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][11]~q\)))) # (HEAD(1) & (((\QUEUE[3][11]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][11]~q\,
	datad => \ALT_INV_QUEUE[1][11]~q\,
	datae => \ALT_INV_QUEUE[0][11]~q\,
	combout => \FRONT[11]~37_combout\);

\FRONT[11]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[11]~38_combout\ = ( \FRONT[11]~37_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[11]~36_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][11]~q\))) ) ) # ( !\FRONT[11]~37_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[11]~36_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][11]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][11]~q\,
	datad => \ALT_INV_FRONT[11]~36_combout\,
	datae => \ALT_INV_FRONT[11]~37_combout\,
	combout => \FRONT[11]~38_combout\);

\OR_MASK[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(11));

\IO_DATA[11]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[11]~79_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(11) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(11),
	combout => \IO_DATA[11]~79_combout\);

\AND_MASK[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(11));

\IO_DATA[11]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[11]~80_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(11) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(11) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(11),
	combout => \IO_DATA[11]~80_combout\);

\IO_DATA[11]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[11]~81_combout\ = ( \IO_DATA[11]~79_combout\ & ( \IO_DATA[11]~80_combout\ ) ) # ( !\IO_DATA[11]~79_combout\ & ( \IO_DATA[11]~80_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(11) $ (!\FRONT[11]~38_combout\)))) # (\IO_DATA[11]~78_combout\) ) 
-- ) ) # ( \IO_DATA[11]~79_combout\ & ( !\IO_DATA[11]~80_combout\ ) ) # ( !\IO_DATA[11]~79_combout\ & ( !\IO_DATA[11]~80_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(11))) # (\FRONT[11]~38_combout\)) # (\IO_DATA[11]~78_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[11]~78_combout\,
	datac => ALT_INV_XOR_MASK(11),
	datad => \ALT_INV_FRONT[11]~38_combout\,
	datae => \ALT_INV_IO_DATA[11]~79_combout\,
	dataf => \ALT_INV_IO_DATA[11]~80_combout\,
	combout => \IO_DATA[11]~81_combout\);

\EXT_WIRES[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(12),
	o => \EXT_WIRES[12]~input_o\);

\IO_DATA[12]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[12]~82_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[12]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[12]~input_o\,
	combout => \IO_DATA[12]~82_combout\);

\IO_DATA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(12),
	o => \IO_DATA[12]~input_o\);

\XOR_MASK[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(12));

\QUEUE[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][12]~q\);

\QUEUE[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][12]~q\);

\QUEUE[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][12]~q\);

\QUEUE[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][12]~q\);

\QUEUE[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][12]~q\);

\FRONT[12]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[12]~39_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][12]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][12]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][12]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][12]~q\,
	datab => \ALT_INV_QUEUE[5][12]~q\,
	datac => \ALT_INV_QUEUE[6][12]~q\,
	datad => \ALT_INV_QUEUE[7][12]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[12]~39_combout\);

\QUEUE[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][12]~q\);

\QUEUE[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][12]~q\);

\QUEUE[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][12]~q\);

\FRONT[12]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[12]~40_combout\ = ( \QUEUE[0][12]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][12]~q\)))) # (HEAD(1) & (((\QUEUE[3][12]~q\)))) ) ) # ( !\QUEUE[0][12]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][12]~q\)))) # (HEAD(1) & (((\QUEUE[3][12]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][12]~q\,
	datad => \ALT_INV_QUEUE[1][12]~q\,
	datae => \ALT_INV_QUEUE[0][12]~q\,
	combout => \FRONT[12]~40_combout\);

\FRONT[12]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[12]~41_combout\ = ( \FRONT[12]~40_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[12]~39_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][12]~q\))) ) ) # ( !\FRONT[12]~40_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[12]~39_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][12]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][12]~q\,
	datad => \ALT_INV_FRONT[12]~39_combout\,
	datae => \ALT_INV_FRONT[12]~40_combout\,
	combout => \FRONT[12]~41_combout\);

\OR_MASK[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(12));

\IO_DATA[12]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[12]~83_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(12) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(12),
	combout => \IO_DATA[12]~83_combout\);

\AND_MASK[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(12));

\IO_DATA[12]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[12]~84_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(12) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(12) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(12),
	combout => \IO_DATA[12]~84_combout\);

\IO_DATA[12]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[12]~85_combout\ = ( \IO_DATA[12]~83_combout\ & ( \IO_DATA[12]~84_combout\ ) ) # ( !\IO_DATA[12]~83_combout\ & ( \IO_DATA[12]~84_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(12) $ (!\FRONT[12]~41_combout\)))) # (\IO_DATA[12]~82_combout\) ) 
-- ) ) # ( \IO_DATA[12]~83_combout\ & ( !\IO_DATA[12]~84_combout\ ) ) # ( !\IO_DATA[12]~83_combout\ & ( !\IO_DATA[12]~84_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(12))) # (\FRONT[12]~41_combout\)) # (\IO_DATA[12]~82_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[12]~82_combout\,
	datac => ALT_INV_XOR_MASK(12),
	datad => \ALT_INV_FRONT[12]~41_combout\,
	datae => \ALT_INV_IO_DATA[12]~83_combout\,
	dataf => \ALT_INV_IO_DATA[12]~84_combout\,
	combout => \IO_DATA[12]~85_combout\);

\EXT_WIRES[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(13),
	o => \EXT_WIRES[13]~input_o\);

\IO_DATA[13]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[13]~86_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[13]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[13]~input_o\,
	combout => \IO_DATA[13]~86_combout\);

\IO_DATA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(13),
	o => \IO_DATA[13]~input_o\);

\XOR_MASK[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(13));

\QUEUE[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][13]~q\);

\QUEUE[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][13]~q\);

\QUEUE[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][13]~q\);

\QUEUE[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][13]~q\);

\QUEUE[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][13]~q\);

\FRONT[13]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[13]~42_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][13]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][13]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][13]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][13]~q\,
	datab => \ALT_INV_QUEUE[5][13]~q\,
	datac => \ALT_INV_QUEUE[6][13]~q\,
	datad => \ALT_INV_QUEUE[7][13]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[13]~42_combout\);

\QUEUE[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][13]~q\);

\QUEUE[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][13]~q\);

\QUEUE[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][13]~q\);

\FRONT[13]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[13]~43_combout\ = ( \QUEUE[0][13]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][13]~q\)))) # (HEAD(1) & (((\QUEUE[3][13]~q\)))) ) ) # ( !\QUEUE[0][13]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][13]~q\)))) # (HEAD(1) & (((\QUEUE[3][13]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][13]~q\,
	datad => \ALT_INV_QUEUE[1][13]~q\,
	datae => \ALT_INV_QUEUE[0][13]~q\,
	combout => \FRONT[13]~43_combout\);

\FRONT[13]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[13]~44_combout\ = ( \FRONT[13]~43_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[13]~42_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][13]~q\))) ) ) # ( !\FRONT[13]~43_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[13]~42_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][13]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][13]~q\,
	datad => \ALT_INV_FRONT[13]~42_combout\,
	datae => \ALT_INV_FRONT[13]~43_combout\,
	combout => \FRONT[13]~44_combout\);

\OR_MASK[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(13));

\IO_DATA[13]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[13]~87_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(13) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(13),
	combout => \IO_DATA[13]~87_combout\);

\AND_MASK[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(13));

\IO_DATA[13]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[13]~88_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(13) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(13) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(13),
	combout => \IO_DATA[13]~88_combout\);

\IO_DATA[13]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[13]~89_combout\ = ( \IO_DATA[13]~87_combout\ & ( \IO_DATA[13]~88_combout\ ) ) # ( !\IO_DATA[13]~87_combout\ & ( \IO_DATA[13]~88_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(13) $ (!\FRONT[13]~44_combout\)))) # (\IO_DATA[13]~86_combout\) ) 
-- ) ) # ( \IO_DATA[13]~87_combout\ & ( !\IO_DATA[13]~88_combout\ ) ) # ( !\IO_DATA[13]~87_combout\ & ( !\IO_DATA[13]~88_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(13))) # (\FRONT[13]~44_combout\)) # (\IO_DATA[13]~86_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[13]~86_combout\,
	datac => ALT_INV_XOR_MASK(13),
	datad => \ALT_INV_FRONT[13]~44_combout\,
	datae => \ALT_INV_IO_DATA[13]~87_combout\,
	dataf => \ALT_INV_IO_DATA[13]~88_combout\,
	combout => \IO_DATA[13]~89_combout\);

\EXT_WIRES[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(14),
	o => \EXT_WIRES[14]~input_o\);

\IO_DATA[14]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[14]~90_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[14]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[14]~input_o\,
	combout => \IO_DATA[14]~90_combout\);

\IO_DATA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(14),
	o => \IO_DATA[14]~input_o\);

\XOR_MASK[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(14));

\QUEUE[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][14]~q\);

\QUEUE[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][14]~q\);

\QUEUE[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][14]~q\);

\QUEUE[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][14]~q\);

\QUEUE[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][14]~q\);

\FRONT[14]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[14]~45_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][14]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][14]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][14]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][14]~q\,
	datab => \ALT_INV_QUEUE[5][14]~q\,
	datac => \ALT_INV_QUEUE[6][14]~q\,
	datad => \ALT_INV_QUEUE[7][14]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[14]~45_combout\);

\QUEUE[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][14]~q\);

\QUEUE[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][14]~q\);

\QUEUE[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][14]~q\);

\FRONT[14]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[14]~46_combout\ = ( \QUEUE[0][14]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][14]~q\)))) # (HEAD(1) & (((\QUEUE[3][14]~q\)))) ) ) # ( !\QUEUE[0][14]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][14]~q\)))) # (HEAD(1) & (((\QUEUE[3][14]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][14]~q\,
	datad => \ALT_INV_QUEUE[1][14]~q\,
	datae => \ALT_INV_QUEUE[0][14]~q\,
	combout => \FRONT[14]~46_combout\);

\FRONT[14]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[14]~47_combout\ = ( \FRONT[14]~46_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[14]~45_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][14]~q\))) ) ) # ( !\FRONT[14]~46_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[14]~45_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][14]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][14]~q\,
	datad => \ALT_INV_FRONT[14]~45_combout\,
	datae => \ALT_INV_FRONT[14]~46_combout\,
	combout => \FRONT[14]~47_combout\);

\OR_MASK[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(14));

\IO_DATA[14]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[14]~91_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(14) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(14),
	combout => \IO_DATA[14]~91_combout\);

\AND_MASK[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(14));

\IO_DATA[14]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[14]~92_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(14) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(14) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(14),
	combout => \IO_DATA[14]~92_combout\);

\IO_DATA[14]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[14]~93_combout\ = ( \IO_DATA[14]~91_combout\ & ( \IO_DATA[14]~92_combout\ ) ) # ( !\IO_DATA[14]~91_combout\ & ( \IO_DATA[14]~92_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(14) $ (!\FRONT[14]~47_combout\)))) # (\IO_DATA[14]~90_combout\) ) 
-- ) ) # ( \IO_DATA[14]~91_combout\ & ( !\IO_DATA[14]~92_combout\ ) ) # ( !\IO_DATA[14]~91_combout\ & ( !\IO_DATA[14]~92_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(14))) # (\FRONT[14]~47_combout\)) # (\IO_DATA[14]~90_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[14]~90_combout\,
	datac => ALT_INV_XOR_MASK(14),
	datad => \ALT_INV_FRONT[14]~47_combout\,
	datae => \ALT_INV_IO_DATA[14]~91_combout\,
	dataf => \ALT_INV_IO_DATA[14]~92_combout\,
	combout => \IO_DATA[14]~93_combout\);

\EXT_WIRES[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(15),
	o => \EXT_WIRES[15]~input_o\);

\IO_DATA[15]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[15]~94_combout\ = ( \Equal0~1_combout\ & ( \EXT_WIRES[15]~input_o\ & ( (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_EXT_WIRES[15]~input_o\,
	combout => \IO_DATA[15]~94_combout\);

\IO_DATA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(15),
	o => \IO_DATA[15]~input_o\);

\XOR_MASK[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \XOR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => XOR_MASK(15));

\QUEUE[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[2][15]~q\);

\QUEUE[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[4][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[4][15]~q\);

\QUEUE[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[5][15]~q\);

\QUEUE[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[6][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[6][15]~q\);

\QUEUE[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[7][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[7][15]~q\);

\FRONT[15]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[15]~48_combout\ = ( HEAD(0) & ( HEAD(1) & ( \QUEUE[7][15]~q\ ) ) ) # ( !HEAD(0) & ( HEAD(1) & ( \QUEUE[6][15]~q\ ) ) ) # ( HEAD(0) & ( !HEAD(1) & ( \QUEUE[5][15]~q\ ) ) ) # ( !HEAD(0) & ( !HEAD(1) & ( \QUEUE[4][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_QUEUE[4][15]~q\,
	datab => \ALT_INV_QUEUE[5][15]~q\,
	datac => \ALT_INV_QUEUE[6][15]~q\,
	datad => \ALT_INV_QUEUE[7][15]~q\,
	datae => ALT_INV_HEAD(0),
	dataf => ALT_INV_HEAD(1),
	combout => \FRONT[15]~48_combout\);

\QUEUE[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[3][15]~q\);

\QUEUE[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[1][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[1][15]~q\);

\QUEUE[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXT_WIRES[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \QUEUE[0][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUEUE[0][15]~q\);

\FRONT[15]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[15]~49_combout\ = ( \QUEUE[0][15]~q\ & ( (!HEAD(1) & ((!HEAD(0)) # ((\QUEUE[1][15]~q\)))) # (HEAD(1) & (((\QUEUE[3][15]~q\)))) ) ) # ( !\QUEUE[0][15]~q\ & ( (!HEAD(1) & (HEAD(0) & ((\QUEUE[1][15]~q\)))) # (HEAD(1) & (((\QUEUE[3][15]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_HEAD(0),
	datab => ALT_INV_HEAD(1),
	datac => \ALT_INV_QUEUE[3][15]~q\,
	datad => \ALT_INV_QUEUE[1][15]~q\,
	datae => \ALT_INV_QUEUE[0][15]~q\,
	combout => \FRONT[15]~49_combout\);

\FRONT[15]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \FRONT[15]~50_combout\ = ( \FRONT[15]~49_combout\ & ( (!\FRONT[4]~1_combout\ & (((\FRONT[15]~48_combout\)) # (\FRONT[4]~2_combout\))) # (\FRONT[4]~1_combout\ & (!\FRONT[4]~2_combout\ & (\QUEUE[2][15]~q\))) ) ) # ( !\FRONT[15]~49_combout\ & ( 
-- (!\FRONT[4]~2_combout\ & ((!\FRONT[4]~1_combout\ & ((\FRONT[15]~48_combout\))) # (\FRONT[4]~1_combout\ & (\QUEUE[2][15]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FRONT[4]~1_combout\,
	datab => \ALT_INV_FRONT[4]~2_combout\,
	datac => \ALT_INV_QUEUE[2][15]~q\,
	datad => \ALT_INV_FRONT[15]~48_combout\,
	datae => \ALT_INV_FRONT[15]~49_combout\,
	combout => \FRONT[15]~50_combout\);

\OR_MASK[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \OR_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OR_MASK(15));

\IO_DATA[15]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[15]~95_combout\ = ( \Equal0~1_combout\ & ( OR_MASK(15) & ( (!\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ & (\IO_ADDR[2]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_OR_MASK(15),
	combout => \IO_DATA[15]~95_combout\);

\AND_MASK[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \AND_MASK[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AND_MASK(15));

\IO_DATA[15]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[15]~96_combout\ = ( \Equal0~1_combout\ & ( AND_MASK(15) & ( (\IO_ADDR[2]~input_o\ & (\Equal0~0_combout\ & (!\IO_ADDR[1]~input_o\ $ (!\IO_ADDR[0]~input_o\)))) ) ) ) # ( \Equal0~1_combout\ & ( !AND_MASK(15) & ( (\Equal0~0_combout\ & 
-- ((!\IO_ADDR[1]~input_o\ & (\IO_ADDR[0]~input_o\ & \IO_ADDR[2]~input_o\)) # (\IO_ADDR[1]~input_o\ & (!\IO_ADDR[0]~input_o\ $ (!\IO_ADDR[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[1]~input_o\,
	datab => \ALT_INV_IO_ADDR[0]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_AND_MASK(15),
	combout => \IO_DATA[15]~96_combout\);

\IO_DATA[15]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA[15]~97_combout\ = ( \IO_DATA[15]~95_combout\ & ( \IO_DATA[15]~96_combout\ ) ) # ( !\IO_DATA[15]~95_combout\ & ( \IO_DATA[15]~96_combout\ & ( ((\IO_DATA[0]~33_combout\ & (!XOR_MASK(15) $ (!\FRONT[15]~50_combout\)))) # (\IO_DATA[15]~94_combout\) ) 
-- ) ) # ( \IO_DATA[15]~95_combout\ & ( !\IO_DATA[15]~96_combout\ ) ) # ( !\IO_DATA[15]~95_combout\ & ( !\IO_DATA[15]~96_combout\ & ( (((\IO_DATA[0]~33_combout\ & XOR_MASK(15))) # (\FRONT[15]~50_combout\)) # (\IO_DATA[15]~94_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011111111111111111111111111100110111011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[0]~33_combout\,
	datab => \ALT_INV_IO_DATA[15]~94_combout\,
	datac => ALT_INV_XOR_MASK(15),
	datad => \ALT_INV_FRONT[15]~50_combout\,
	datae => \ALT_INV_IO_DATA[15]~95_combout\,
	dataf => \ALT_INV_IO_DATA[15]~96_combout\,
	combout => \IO_DATA[15]~97_combout\);

IO_DATA(0) <= \IO_DATA[0]~output_o\;

IO_DATA(1) <= \IO_DATA[1]~output_o\;

IO_DATA(2) <= \IO_DATA[2]~output_o\;

IO_DATA(3) <= \IO_DATA[3]~output_o\;

IO_DATA(4) <= \IO_DATA[4]~output_o\;

IO_DATA(5) <= \IO_DATA[5]~output_o\;

IO_DATA(6) <= \IO_DATA[6]~output_o\;

IO_DATA(7) <= \IO_DATA[7]~output_o\;

IO_DATA(8) <= \IO_DATA[8]~output_o\;

IO_DATA(9) <= \IO_DATA[9]~output_o\;

IO_DATA(10) <= \IO_DATA[10]~output_o\;

IO_DATA(11) <= \IO_DATA[11]~output_o\;

IO_DATA(12) <= \IO_DATA[12]~output_o\;

IO_DATA(13) <= \IO_DATA[13]~output_o\;

IO_DATA(14) <= \IO_DATA[14]~output_o\;

IO_DATA(15) <= \IO_DATA[15]~output_o\;
END structure;


