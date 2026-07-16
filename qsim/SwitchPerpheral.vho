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
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "07/16/2026 15:11:58"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \IO_DATA[0]~input_o\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \IO_ADDR[5]~input_o\ : std_logic;
SIGNAL \IO_ADDR[10]~input_o\ : std_logic;
SIGNAL \IO_ADDR[0]~input_o\ : std_logic;
SIGNAL \IO_ADDR[1]~input_o\ : std_logic;
SIGNAL \IO_ADDR[2]~input_o\ : std_logic;
SIGNAL \IO_ADDR[3]~input_o\ : std_logic;
SIGNAL \IO_ADDR[4]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \IO_ADDR[6]~input_o\ : std_logic;
SIGNAL \IO_ADDR[7]~input_o\ : std_logic;
SIGNAL \IO_ADDR[8]~input_o\ : std_logic;
SIGNAL \IO_ADDR[9]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \IO_WRITE~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \EXT_WIRES[0]~input_o\ : std_logic;
SIGNAL \IO_DATA~32_combout\ : std_logic;
SIGNAL \IO_READ~input_o\ : std_logic;
SIGNAL \IO_DATA~33_combout\ : std_logic;
SIGNAL \IO_DATA[1]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[1]~input_o\ : std_logic;
SIGNAL \IO_DATA~34_combout\ : std_logic;
SIGNAL \IO_DATA[2]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[2]~input_o\ : std_logic;
SIGNAL \IO_DATA~35_combout\ : std_logic;
SIGNAL \IO_DATA[3]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[3]~input_o\ : std_logic;
SIGNAL \IO_DATA~36_combout\ : std_logic;
SIGNAL \IO_DATA[4]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[4]~input_o\ : std_logic;
SIGNAL \IO_DATA~37_combout\ : std_logic;
SIGNAL \IO_DATA[5]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[5]~input_o\ : std_logic;
SIGNAL \IO_DATA~38_combout\ : std_logic;
SIGNAL \IO_DATA[6]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[6]~input_o\ : std_logic;
SIGNAL \IO_DATA~39_combout\ : std_logic;
SIGNAL \IO_DATA[7]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[7]~input_o\ : std_logic;
SIGNAL \IO_DATA~40_combout\ : std_logic;
SIGNAL \IO_DATA[8]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[8]~input_o\ : std_logic;
SIGNAL \IO_DATA~41_combout\ : std_logic;
SIGNAL \IO_DATA[9]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[9]~input_o\ : std_logic;
SIGNAL \IO_DATA~42_combout\ : std_logic;
SIGNAL \IO_DATA[10]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[10]~input_o\ : std_logic;
SIGNAL \IO_DATA~43_combout\ : std_logic;
SIGNAL \IO_DATA[11]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[11]~input_o\ : std_logic;
SIGNAL \IO_DATA~44_combout\ : std_logic;
SIGNAL \IO_DATA[12]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[12]~input_o\ : std_logic;
SIGNAL \IO_DATA~45_combout\ : std_logic;
SIGNAL \IO_DATA[13]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[13]~input_o\ : std_logic;
SIGNAL \IO_DATA~46_combout\ : std_logic;
SIGNAL \IO_DATA[14]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[14]~input_o\ : std_logic;
SIGNAL \IO_DATA~47_combout\ : std_logic;
SIGNAL \IO_DATA[15]~input_o\ : std_logic;
SIGNAL \EXT_WIRES[15]~input_o\ : std_logic;
SIGNAL \IO_DATA~48_combout\ : std_logic;
SIGNAL MASK : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_MASK : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_IO_WRITE~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_ADDR[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_READ~input_o\ : std_logic;
SIGNAL \ALT_INV_EXT_WIRES[0]~input_o\ : std_logic;

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
ALT_INV_MASK(14) <= NOT MASK(14);
ALT_INV_MASK(13) <= NOT MASK(13);
ALT_INV_MASK(12) <= NOT MASK(12);
ALT_INV_MASK(11) <= NOT MASK(11);
ALT_INV_MASK(10) <= NOT MASK(10);
ALT_INV_MASK(9) <= NOT MASK(9);
ALT_INV_MASK(8) <= NOT MASK(8);
ALT_INV_MASK(7) <= NOT MASK(7);
ALT_INV_MASK(6) <= NOT MASK(6);
ALT_INV_MASK(5) <= NOT MASK(5);
ALT_INV_MASK(4) <= NOT MASK(4);
ALT_INV_MASK(3) <= NOT MASK(3);
ALT_INV_MASK(2) <= NOT MASK(2);
ALT_INV_MASK(1) <= NOT MASK(1);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_MASK(0) <= NOT MASK(0);
\ALT_INV_IO_WRITE~input_o\ <= NOT \IO_WRITE~input_o\;
\ALT_INV_EXT_WIRES[15]~input_o\ <= NOT \EXT_WIRES[15]~input_o\;
\ALT_INV_EXT_WIRES[14]~input_o\ <= NOT \EXT_WIRES[14]~input_o\;
\ALT_INV_EXT_WIRES[13]~input_o\ <= NOT \EXT_WIRES[13]~input_o\;
\ALT_INV_EXT_WIRES[12]~input_o\ <= NOT \EXT_WIRES[12]~input_o\;
\ALT_INV_EXT_WIRES[11]~input_o\ <= NOT \EXT_WIRES[11]~input_o\;
\ALT_INV_EXT_WIRES[10]~input_o\ <= NOT \EXT_WIRES[10]~input_o\;
\ALT_INV_EXT_WIRES[9]~input_o\ <= NOT \EXT_WIRES[9]~input_o\;
\ALT_INV_EXT_WIRES[8]~input_o\ <= NOT \EXT_WIRES[8]~input_o\;
\ALT_INV_EXT_WIRES[7]~input_o\ <= NOT \EXT_WIRES[7]~input_o\;
\ALT_INV_EXT_WIRES[6]~input_o\ <= NOT \EXT_WIRES[6]~input_o\;
\ALT_INV_EXT_WIRES[5]~input_o\ <= NOT \EXT_WIRES[5]~input_o\;
\ALT_INV_EXT_WIRES[4]~input_o\ <= NOT \EXT_WIRES[4]~input_o\;
\ALT_INV_EXT_WIRES[3]~input_o\ <= NOT \EXT_WIRES[3]~input_o\;
\ALT_INV_EXT_WIRES[2]~input_o\ <= NOT \EXT_WIRES[2]~input_o\;
\ALT_INV_EXT_WIRES[1]~input_o\ <= NOT \EXT_WIRES[1]~input_o\;
\ALT_INV_IO_ADDR[9]~input_o\ <= NOT \IO_ADDR[9]~input_o\;
\ALT_INV_IO_ADDR[8]~input_o\ <= NOT \IO_ADDR[8]~input_o\;
\ALT_INV_IO_ADDR[7]~input_o\ <= NOT \IO_ADDR[7]~input_o\;
\ALT_INV_IO_ADDR[6]~input_o\ <= NOT \IO_ADDR[6]~input_o\;
\ALT_INV_IO_ADDR[4]~input_o\ <= NOT \IO_ADDR[4]~input_o\;
\ALT_INV_IO_ADDR[3]~input_o\ <= NOT \IO_ADDR[3]~input_o\;
\ALT_INV_IO_ADDR[2]~input_o\ <= NOT \IO_ADDR[2]~input_o\;
\ALT_INV_IO_ADDR[1]~input_o\ <= NOT \IO_ADDR[1]~input_o\;
\ALT_INV_IO_ADDR[0]~input_o\ <= NOT \IO_ADDR[0]~input_o\;
\ALT_INV_IO_ADDR[10]~input_o\ <= NOT \IO_ADDR[10]~input_o\;
\ALT_INV_IO_ADDR[5]~input_o\ <= NOT \IO_ADDR[5]~input_o\;
\ALT_INV_IO_READ~input_o\ <= NOT \IO_READ~input_o\;
\ALT_INV_EXT_WIRES[0]~input_o\ <= NOT \EXT_WIRES[0]~input_o\;
ALT_INV_MASK(15) <= NOT MASK(15);

\IO_DATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_DATA~32_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~34_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~35_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~36_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~37_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~38_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~39_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~40_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~41_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~42_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~43_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~44_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~45_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~46_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~47_combout\,
	oe => \IO_DATA~33_combout\,
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
	i => \IO_DATA~48_combout\,
	oe => \IO_DATA~33_combout\,
	devoe => ww_devoe,
	o => \IO_DATA[15]~output_o\);

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

\IO_ADDR[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(5),
	o => \IO_ADDR[5]~input_o\);

\IO_ADDR[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(10),
	o => \IO_ADDR[10]~input_o\);

\IO_ADDR[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(0),
	o => \IO_ADDR[0]~input_o\);

\IO_ADDR[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(1),
	o => \IO_ADDR[1]~input_o\);

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

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\IO_ADDR[4]~input_o\ & ( (\IO_ADDR[0]~input_o\ & (!\IO_ADDR[1]~input_o\ & (\IO_ADDR[2]~input_o\ & !\IO_ADDR[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[0]~input_o\,
	datab => \ALT_INV_IO_ADDR[1]~input_o\,
	datac => \ALT_INV_IO_ADDR[2]~input_o\,
	datad => \ALT_INV_IO_ADDR[3]~input_o\,
	datae => \ALT_INV_IO_ADDR[4]~input_o\,
	combout => \Equal0~0_combout\);

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

\IO_ADDR[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_ADDR(9),
	o => \IO_ADDR[9]~input_o\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\IO_ADDR[6]~input_o\ & (!\IO_ADDR[7]~input_o\ & (!\IO_ADDR[8]~input_o\ & !\IO_ADDR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[6]~input_o\,
	datab => \ALT_INV_IO_ADDR[7]~input_o\,
	datac => \ALT_INV_IO_ADDR[8]~input_o\,
	datad => \ALT_INV_IO_ADDR[9]~input_o\,
	combout => \Equal0~1_combout\);

\IO_WRITE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_WRITE,
	o => \IO_WRITE~input_o\);

\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \IO_WRITE~input_o\ & ( (!\IO_ADDR[5]~input_o\ & (!\IO_ADDR[10]~input_o\ & (\Equal0~0_combout\ & \Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_ADDR[5]~input_o\,
	datab => \ALT_INV_IO_ADDR[10]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_IO_WRITE~input_o\,
	combout => \process_0~0_combout\);

\MASK[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[0]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(0));

\EXT_WIRES[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(0),
	o => \EXT_WIRES[0]~input_o\);

\IO_DATA~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~32_combout\ = !MASK(0) $ (!\EXT_WIRES[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(0),
	datab => \ALT_INV_EXT_WIRES[0]~input_o\,
	combout => \IO_DATA~32_combout\);

\IO_READ~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IO_READ,
	o => \IO_READ~input_o\);

\IO_DATA~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~33_combout\ = ( \Equal0~1_combout\ & ( (\IO_READ~input_o\ & (!\IO_ADDR[5]~input_o\ & (!\IO_ADDR[10]~input_o\ & \Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_READ~input_o\,
	datab => \ALT_INV_IO_ADDR[5]~input_o\,
	datac => \ALT_INV_IO_ADDR[10]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	combout => \IO_DATA~33_combout\);

\IO_DATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(1),
	o => \IO_DATA[1]~input_o\);

\MASK[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[1]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(1));

\EXT_WIRES[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(1),
	o => \EXT_WIRES[1]~input_o\);

\IO_DATA~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~34_combout\ = !MASK(1) $ (!\EXT_WIRES[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(1),
	datab => \ALT_INV_EXT_WIRES[1]~input_o\,
	combout => \IO_DATA~34_combout\);

\IO_DATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(2),
	o => \IO_DATA[2]~input_o\);

\MASK[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[2]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(2));

\EXT_WIRES[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(2),
	o => \EXT_WIRES[2]~input_o\);

\IO_DATA~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~35_combout\ = !MASK(2) $ (!\EXT_WIRES[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(2),
	datab => \ALT_INV_EXT_WIRES[2]~input_o\,
	combout => \IO_DATA~35_combout\);

\IO_DATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(3),
	o => \IO_DATA[3]~input_o\);

\MASK[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[3]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(3));

\EXT_WIRES[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(3),
	o => \EXT_WIRES[3]~input_o\);

\IO_DATA~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~36_combout\ = !MASK(3) $ (!\EXT_WIRES[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(3),
	datab => \ALT_INV_EXT_WIRES[3]~input_o\,
	combout => \IO_DATA~36_combout\);

\IO_DATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(4),
	o => \IO_DATA[4]~input_o\);

\MASK[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[4]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(4));

\EXT_WIRES[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(4),
	o => \EXT_WIRES[4]~input_o\);

\IO_DATA~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~37_combout\ = !MASK(4) $ (!\EXT_WIRES[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(4),
	datab => \ALT_INV_EXT_WIRES[4]~input_o\,
	combout => \IO_DATA~37_combout\);

\IO_DATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(5),
	o => \IO_DATA[5]~input_o\);

\MASK[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[5]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(5));

\EXT_WIRES[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(5),
	o => \EXT_WIRES[5]~input_o\);

\IO_DATA~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~38_combout\ = !MASK(5) $ (!\EXT_WIRES[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(5),
	datab => \ALT_INV_EXT_WIRES[5]~input_o\,
	combout => \IO_DATA~38_combout\);

\IO_DATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(6),
	o => \IO_DATA[6]~input_o\);

\MASK[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[6]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(6));

\EXT_WIRES[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(6),
	o => \EXT_WIRES[6]~input_o\);

\IO_DATA~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~39_combout\ = !MASK(6) $ (!\EXT_WIRES[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(6),
	datab => \ALT_INV_EXT_WIRES[6]~input_o\,
	combout => \IO_DATA~39_combout\);

\IO_DATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(7),
	o => \IO_DATA[7]~input_o\);

\MASK[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[7]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(7));

\EXT_WIRES[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(7),
	o => \EXT_WIRES[7]~input_o\);

\IO_DATA~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~40_combout\ = !MASK(7) $ (!\EXT_WIRES[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(7),
	datab => \ALT_INV_EXT_WIRES[7]~input_o\,
	combout => \IO_DATA~40_combout\);

\IO_DATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(8),
	o => \IO_DATA[8]~input_o\);

\MASK[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[8]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(8));

\EXT_WIRES[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(8),
	o => \EXT_WIRES[8]~input_o\);

\IO_DATA~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~41_combout\ = !MASK(8) $ (!\EXT_WIRES[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(8),
	datab => \ALT_INV_EXT_WIRES[8]~input_o\,
	combout => \IO_DATA~41_combout\);

\IO_DATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(9),
	o => \IO_DATA[9]~input_o\);

\MASK[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[9]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(9));

\EXT_WIRES[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(9),
	o => \EXT_WIRES[9]~input_o\);

\IO_DATA~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~42_combout\ = !MASK(9) $ (!\EXT_WIRES[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(9),
	datab => \ALT_INV_EXT_WIRES[9]~input_o\,
	combout => \IO_DATA~42_combout\);

\IO_DATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(10),
	o => \IO_DATA[10]~input_o\);

\MASK[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[10]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(10));

\EXT_WIRES[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(10),
	o => \EXT_WIRES[10]~input_o\);

\IO_DATA~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~43_combout\ = !MASK(10) $ (!\EXT_WIRES[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(10),
	datab => \ALT_INV_EXT_WIRES[10]~input_o\,
	combout => \IO_DATA~43_combout\);

\IO_DATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(11),
	o => \IO_DATA[11]~input_o\);

\MASK[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[11]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(11));

\EXT_WIRES[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(11),
	o => \EXT_WIRES[11]~input_o\);

\IO_DATA~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~44_combout\ = !MASK(11) $ (!\EXT_WIRES[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(11),
	datab => \ALT_INV_EXT_WIRES[11]~input_o\,
	combout => \IO_DATA~44_combout\);

\IO_DATA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(12),
	o => \IO_DATA[12]~input_o\);

\MASK[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[12]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(12));

\EXT_WIRES[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(12),
	o => \EXT_WIRES[12]~input_o\);

\IO_DATA~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~45_combout\ = !MASK(12) $ (!\EXT_WIRES[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(12),
	datab => \ALT_INV_EXT_WIRES[12]~input_o\,
	combout => \IO_DATA~45_combout\);

\IO_DATA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(13),
	o => \IO_DATA[13]~input_o\);

\MASK[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[13]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(13));

\EXT_WIRES[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(13),
	o => \EXT_WIRES[13]~input_o\);

\IO_DATA~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~46_combout\ = !MASK(13) $ (!\EXT_WIRES[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(13),
	datab => \ALT_INV_EXT_WIRES[13]~input_o\,
	combout => \IO_DATA~46_combout\);

\IO_DATA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(14),
	o => \IO_DATA[14]~input_o\);

\MASK[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[14]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(14));

\EXT_WIRES[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(14),
	o => \EXT_WIRES[14]~input_o\);

\IO_DATA~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~47_combout\ = !MASK(14) $ (!\EXT_WIRES[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(14),
	datab => \ALT_INV_EXT_WIRES[14]~input_o\,
	combout => \IO_DATA~47_combout\);

\IO_DATA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(15),
	o => \IO_DATA[15]~input_o\);

\MASK[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IO_DATA[15]~input_o\,
	clrn => \RESETN~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MASK(15));

\EXT_WIRES[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EXT_WIRES(15),
	o => \EXT_WIRES[15]~input_o\);

\IO_DATA~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \IO_DATA~48_combout\ = !MASK(15) $ (!\EXT_WIRES[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_MASK(15),
	datab => \ALT_INV_EXT_WIRES[15]~input_o\,
	combout => \IO_DATA~48_combout\);

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


