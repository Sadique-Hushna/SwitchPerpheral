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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/16/2026 15:11:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SwitchPerpheral
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SwitchPerpheral_vhd_vec_tst IS
END SwitchPerpheral_vhd_vec_tst;
ARCHITECTURE SwitchPerpheral_arch OF SwitchPerpheral_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK : STD_LOGIC;
SIGNAL EXT_WIRES : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IO_ADDR : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL IO_DATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IO_READ : STD_LOGIC;
SIGNAL IO_WRITE : STD_LOGIC;
SIGNAL RESETN : STD_LOGIC;
COMPONENT SwitchPerpheral
	PORT (
	CLOCK : IN STD_LOGIC;
	EXT_WIRES : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	IO_ADDR : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
	IO_DATA : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	IO_READ : IN STD_LOGIC;
	IO_WRITE : IN STD_LOGIC;
	RESETN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SwitchPerpheral
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	EXT_WIRES => EXT_WIRES,
	IO_ADDR => IO_ADDR,
	IO_DATA => IO_DATA,
	IO_READ => IO_READ,
	IO_WRITE => IO_WRITE,
	RESETN => RESETN
	);

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 50000 ps;
	CLOCK <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;

-- RESETN
t_prcs_RESETN: PROCESS
BEGIN
	RESETN <= '0';
	WAIT FOR 40000 ps;
	RESETN <= '1';
WAIT;
END PROCESS t_prcs_RESETN;

-- IO_READ
t_prcs_IO_READ: PROCESS
BEGIN
	IO_READ <= '0';
	WAIT FOR 240000 ps;
	IO_READ <= '1';
	WAIT FOR 60000 ps;
	IO_READ <= '0';
	WAIT FOR 320000 ps;
	IO_READ <= '1';
	WAIT FOR 80000 ps;
	IO_READ <= '0';
WAIT;
END PROCESS t_prcs_IO_READ;

-- IO_WRITE
t_prcs_IO_WRITE: PROCESS
BEGIN
	IO_WRITE <= '0';
	WAIT FOR 120000 ps;
	IO_WRITE <= '1';
	WAIT FOR 60000 ps;
	IO_WRITE <= '0';
	WAIT FOR 280000 ps;
	IO_WRITE <= '1';
	WAIT FOR 120000 ps;
	IO_WRITE <= '0';
WAIT;
END PROCESS t_prcs_IO_WRITE;
-- IO_DATA[15]
t_prcs_IO_DATA_15: PROCESS
BEGIN
	IO_DATA(15) <= '0';
	WAIT FOR 20000 ps;
	IO_DATA(15) <= '1';
	WAIT FOR 180000 ps;
	IO_DATA(15) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_15;
-- IO_DATA[14]
t_prcs_IO_DATA_14: PROCESS
BEGIN
	IO_DATA(14) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_14;
-- IO_DATA[13]
t_prcs_IO_DATA_13: PROCESS
BEGIN
	IO_DATA(13) <= '0';
	WAIT FOR 20000 ps;
	IO_DATA(13) <= '1';
	WAIT FOR 180000 ps;
	IO_DATA(13) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_13;
-- IO_DATA[12]
t_prcs_IO_DATA_12: PROCESS
BEGIN
	IO_DATA(12) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_12;
-- IO_DATA[11]
t_prcs_IO_DATA_11: PROCESS
BEGIN
	IO_DATA(11) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_11;
-- IO_DATA[10]
t_prcs_IO_DATA_10: PROCESS
BEGIN
	IO_DATA(10) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_10;
-- IO_DATA[9]
t_prcs_IO_DATA_9: PROCESS
BEGIN
	IO_DATA(9) <= '0';
	WAIT FOR 300000 ps;
	IO_DATA(9) <= '1';
	WAIT FOR 600000 ps;
	IO_DATA(9) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_9;
-- IO_DATA[8]
t_prcs_IO_DATA_8: PROCESS
BEGIN
	IO_DATA(8) <= '0';
	WAIT FOR 300000 ps;
	IO_DATA(8) <= '1';
	WAIT FOR 600000 ps;
	IO_DATA(8) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_8;
-- IO_DATA[7]
t_prcs_IO_DATA_7: PROCESS
BEGIN
	IO_DATA(7) <= '0';
	WAIT FOR 300000 ps;
	IO_DATA(7) <= '1';
	WAIT FOR 600000 ps;
	IO_DATA(7) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_7;
-- IO_DATA[6]
t_prcs_IO_DATA_6: PROCESS
BEGIN
	IO_DATA(6) <= '0';
	WAIT FOR 300000 ps;
	IO_DATA(6) <= '1';
	WAIT FOR 600000 ps;
	IO_DATA(6) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_6;
-- IO_DATA[5]
t_prcs_IO_DATA_5: PROCESS
BEGIN
	IO_DATA(5) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_5;
-- IO_DATA[4]
t_prcs_IO_DATA_4: PROCESS
BEGIN
	IO_DATA(4) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_4;
-- IO_DATA[3]
t_prcs_IO_DATA_3: PROCESS
BEGIN
	IO_DATA(3) <= '0';
	WAIT FOR 40000 ps;
	IO_DATA(3) <= '1';
	WAIT FOR 200000 ps;
	IO_DATA(3) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_3;
-- IO_DATA[2]
t_prcs_IO_DATA_2: PROCESS
BEGIN
	IO_DATA(2) <= '0';
	WAIT FOR 40000 ps;
	IO_DATA(2) <= '1';
	WAIT FOR 200000 ps;
	IO_DATA(2) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_2;
-- IO_DATA[1]
t_prcs_IO_DATA_1: PROCESS
BEGIN
	IO_DATA(1) <= '0';
	WAIT FOR 40000 ps;
	IO_DATA(1) <= '1';
	WAIT FOR 200000 ps;
	IO_DATA(1) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_1;
-- IO_DATA[0]
t_prcs_IO_DATA_0: PROCESS
BEGIN
	IO_DATA(0) <= '0';
	WAIT FOR 40000 ps;
	IO_DATA(0) <= '1';
	WAIT FOR 200000 ps;
	IO_DATA(0) <= '0';
WAIT;
END PROCESS t_prcs_IO_DATA_0;
-- IO_ADDR[10]
t_prcs_IO_ADDR_10: PROCESS
BEGIN
	IO_ADDR(10) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_10;
-- IO_ADDR[9]
t_prcs_IO_ADDR_9: PROCESS
BEGIN
	IO_ADDR(9) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_9;
-- IO_ADDR[8]
t_prcs_IO_ADDR_8: PROCESS
BEGIN
	IO_ADDR(8) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_8;
-- IO_ADDR[7]
t_prcs_IO_ADDR_7: PROCESS
BEGIN
	IO_ADDR(7) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_7;
-- IO_ADDR[6]
t_prcs_IO_ADDR_6: PROCESS
BEGIN
	IO_ADDR(6) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_6;
-- IO_ADDR[5]
t_prcs_IO_ADDR_5: PROCESS
BEGIN
	IO_ADDR(5) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_5;
-- IO_ADDR[4]
t_prcs_IO_ADDR_4: PROCESS
BEGIN
	IO_ADDR(4) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_4;
-- IO_ADDR[3]
t_prcs_IO_ADDR_3: PROCESS
BEGIN
	IO_ADDR(3) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_3;
-- IO_ADDR[2]
t_prcs_IO_ADDR_2: PROCESS
BEGIN
	IO_ADDR(2) <= '0';
	WAIT FOR 420000 ps;
	IO_ADDR(2) <= '1';
	WAIT FOR 560000 ps;
	IO_ADDR(2) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_2;
-- IO_ADDR[1]
t_prcs_IO_ADDR_1: PROCESS
BEGIN
	IO_ADDR(1) <= '1';
	WAIT FOR 400000 ps;
	IO_ADDR(1) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_1;
-- IO_ADDR[0]
t_prcs_IO_ADDR_0: PROCESS
BEGIN
	IO_ADDR(0) <= '1';
	WAIT FOR 400000 ps;
	IO_ADDR(0) <= '0';
WAIT;
END PROCESS t_prcs_IO_ADDR_0;
-- EXT_WIRES[15]
t_prcs_EXT_WIRES_15: PROCESS
BEGIN
	EXT_WIRES(15) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_15;
-- EXT_WIRES[14]
t_prcs_EXT_WIRES_14: PROCESS
BEGIN
	EXT_WIRES(14) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_14;
-- EXT_WIRES[13]
t_prcs_EXT_WIRES_13: PROCESS
BEGIN
	EXT_WIRES(13) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_13;
-- EXT_WIRES[12]
t_prcs_EXT_WIRES_12: PROCESS
BEGIN
	EXT_WIRES(12) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_12;
-- EXT_WIRES[11]
t_prcs_EXT_WIRES_11: PROCESS
BEGIN
	EXT_WIRES(11) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_11;
-- EXT_WIRES[10]
t_prcs_EXT_WIRES_10: PROCESS
BEGIN
	EXT_WIRES(10) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_10;
-- EXT_WIRES[9]
t_prcs_EXT_WIRES_9: PROCESS
BEGIN
	EXT_WIRES(9) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_9;
-- EXT_WIRES[8]
t_prcs_EXT_WIRES_8: PROCESS
BEGIN
	EXT_WIRES(8) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_8;
-- EXT_WIRES[7]
t_prcs_EXT_WIRES_7: PROCESS
BEGIN
	EXT_WIRES(7) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_7;
-- EXT_WIRES[6]
t_prcs_EXT_WIRES_6: PROCESS
BEGIN
	EXT_WIRES(6) <= '1';
WAIT;
END PROCESS t_prcs_EXT_WIRES_6;
-- EXT_WIRES[5]
t_prcs_EXT_WIRES_5: PROCESS
BEGIN
	EXT_WIRES(5) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_5;
-- EXT_WIRES[4]
t_prcs_EXT_WIRES_4: PROCESS
BEGIN
	EXT_WIRES(4) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_4;
-- EXT_WIRES[3]
t_prcs_EXT_WIRES_3: PROCESS
BEGIN
	EXT_WIRES(3) <= '1';
WAIT;
END PROCESS t_prcs_EXT_WIRES_3;
-- EXT_WIRES[2]
t_prcs_EXT_WIRES_2: PROCESS
BEGIN
	EXT_WIRES(2) <= '0';
WAIT;
END PROCESS t_prcs_EXT_WIRES_2;
-- EXT_WIRES[1]
t_prcs_EXT_WIRES_1: PROCESS
BEGIN
	EXT_WIRES(1) <= '1';
WAIT;
END PROCESS t_prcs_EXT_WIRES_1;
-- EXT_WIRES[0]
t_prcs_EXT_WIRES_0: PROCESS
BEGIN
	EXT_WIRES(0) <= '1';
WAIT;
END PROCESS t_prcs_EXT_WIRES_0;
END SwitchPerpheral_arch;
