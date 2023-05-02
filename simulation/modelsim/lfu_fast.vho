-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/02/2023 19:33:20"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lfu IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	b1 : IN std_logic;
	b2 : IN std_logic;
	b3 : IN std_logic;
	b4 : IN std_logic;
	b5 : IN std_logic;
	l1 : OUT std_logic;
	l2 : OUT std_logic;
	l3 : OUT std_logic;
	l4 : OUT std_logic;
	l5 : OUT std_logic
	);
END lfu;

-- Design Ports Information
-- l1	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l2	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l3	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l4	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l5	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b1	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b2	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b3	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b4	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b5	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lfu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_b5 : std_logic;
SIGNAL ww_l1 : std_logic;
SIGNAL ww_l2 : std_logic;
SIGNAL ww_l3 : std_logic;
SIGNAL ww_l4 : std_logic;
SIGNAL ww_l5 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \used_counter[2][2]~regout\ : std_logic;
SIGNAL \used_counter[4][1]~regout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \used_counter[2][2]~101_combout\ : std_logic;
SIGNAL \used_counter[4][1]~149_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \used_counter[0][1]~44_combout\ : std_logic;
SIGNAL \used_counter[0][0]~48_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \counter~15_combout\ : std_logic;
SIGNAL \used_counter~66_combout\ : std_logic;
SIGNAL \used_counter~93_combout\ : std_logic;
SIGNAL \used_counter[2][0]~97_combout\ : std_logic;
SIGNAL \used_counter~118_combout\ : std_logic;
SIGNAL \used_counter~140_combout\ : std_logic;
SIGNAL \used_counter~144_combout\ : std_logic;
SIGNAL \used_counter[4][0]~147_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \used_counter[0][0]~41\ : std_logic;
SIGNAL \used_counter[0][1]~50_combout\ : std_logic;
SIGNAL \used_counter[4][0]~138_combout\ : std_logic;
SIGNAL \used_counter[2][0]~89\ : std_logic;
SIGNAL \used_counter[2][1]~99_combout\ : std_logic;
SIGNAL \b3~combout\ : std_logic;
SIGNAL \b1~combout\ : std_logic;
SIGNAL \b2~combout\ : std_logic;
SIGNAL \used_counter~90_combout\ : std_logic;
SIGNAL \used_counter[4][3]~153_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \counter~13_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \counter~14_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \counter~16_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \counter~17_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \counter~18_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \used_counter[4][0]~148_combout\ : std_logic;
SIGNAL \used_counter[4][3]~regout\ : std_logic;
SIGNAL \WideNor4~0_combout\ : std_logic;
SIGNAL \used_counter[4][6]~159_combout\ : std_logic;
SIGNAL \used_counter[4][6]~regout\ : std_logic;
SIGNAL \WideNor4~1_combout\ : std_logic;
SIGNAL \WideNor4~combout\ : std_logic;
SIGNAL \used_counter[1][0]~65\ : std_logic;
SIGNAL \used_counter[1][1]~74_combout\ : std_logic;
SIGNAL \used_counter[3][0]~113_combout\ : std_logic;
SIGNAL \used_counter~115_combout\ : std_logic;
SIGNAL \used_counter[3][3]~129\ : std_logic;
SIGNAL \used_counter[3][4]~130_combout\ : std_logic;
SIGNAL \b4~combout\ : std_logic;
SIGNAL \used_counter[3][0]~122_combout\ : std_logic;
SIGNAL \used_counter[3][0]~123_combout\ : std_logic;
SIGNAL \used_counter[3][4]~regout\ : std_logic;
SIGNAL \used_counter[3][4]~131\ : std_logic;
SIGNAL \used_counter[3][5]~133\ : std_logic;
SIGNAL \used_counter[3][6]~134_combout\ : std_logic;
SIGNAL \used_counter[3][6]~regout\ : std_logic;
SIGNAL \used_counter[3][6]~135\ : std_logic;
SIGNAL \used_counter[3][7]~136_combout\ : std_logic;
SIGNAL \used_counter[3][7]~regout\ : std_logic;
SIGNAL \used_counter~119_combout\ : std_logic;
SIGNAL \used_counter~117_combout\ : std_logic;
SIGNAL \used_counter~116_combout\ : std_logic;
SIGNAL \used_counter~120_combout\ : std_logic;
SIGNAL \used_counter~121_combout\ : std_logic;
SIGNAL \used_counter[3][0]~regout\ : std_logic;
SIGNAL \used_counter[3][0]~114\ : std_logic;
SIGNAL \used_counter[3][1]~124_combout\ : std_logic;
SIGNAL \used_counter[3][1]~regout\ : std_logic;
SIGNAL \used_counter[3][1]~125\ : std_logic;
SIGNAL \used_counter[3][2]~126_combout\ : std_logic;
SIGNAL \used_counter[3][2]~regout\ : std_logic;
SIGNAL \used_counter[3][2]~127\ : std_logic;
SIGNAL \used_counter[3][3]~128_combout\ : std_logic;
SIGNAL \used_counter[3][3]~regout\ : std_logic;
SIGNAL \used_counter[1][1]~75\ : std_logic;
SIGNAL \used_counter[1][2]~77\ : std_logic;
SIGNAL \used_counter[1][3]~78_combout\ : std_logic;
SIGNAL \used_counter[1][0]~72_combout\ : std_logic;
SIGNAL \used_counter[1][0]~73_combout\ : std_logic;
SIGNAL \used_counter[1][3]~regout\ : std_logic;
SIGNAL \used_counter[1][3]~79\ : std_logic;
SIGNAL \used_counter[1][4]~81\ : std_logic;
SIGNAL \used_counter[1][5]~82_combout\ : std_logic;
SIGNAL \used_counter[1][5]~regout\ : std_logic;
SIGNAL \used_counter[1][5]~83\ : std_logic;
SIGNAL \used_counter[1][6]~85\ : std_logic;
SIGNAL \used_counter[1][7]~86_combout\ : std_logic;
SIGNAL \used_counter[1][7]~regout\ : std_logic;
SIGNAL \used_counter[0][5]~58_combout\ : std_logic;
SIGNAL \used_counter[0][0]~49_combout\ : std_logic;
SIGNAL \used_counter[0][5]~regout\ : std_logic;
SIGNAL \lowestValue~19_combout\ : std_logic;
SIGNAL \lowestValue~20_combout\ : std_logic;
SIGNAL \lowestValue~21_combout\ : std_logic;
SIGNAL \lowestValue[0]~5_combout\ : std_logic;
SIGNAL \lowestValue[7]~6_combout\ : std_logic;
SIGNAL \used_counter[1][4]~80_combout\ : std_logic;
SIGNAL \used_counter[1][4]~regout\ : std_logic;
SIGNAL \used_counter[1][2]~76_combout\ : std_logic;
SIGNAL \used_counter[1][2]~regout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \used_counter[2][6]~110\ : std_logic;
SIGNAL \used_counter[2][7]~111_combout\ : std_logic;
SIGNAL \used_counter~94_combout\ : std_logic;
SIGNAL \used_counter[2][0]~88_combout\ : std_logic;
SIGNAL \used_counter[2][0]~regout\ : std_logic;
SIGNAL \used_counter~91_combout\ : std_logic;
SIGNAL \lowestValue~10_combout\ : std_logic;
SIGNAL \lowestValue~11_combout\ : std_logic;
SIGNAL \lowestValue~12_combout\ : std_logic;
SIGNAL \used_counter~92_combout\ : std_logic;
SIGNAL \used_counter~95_combout\ : std_logic;
SIGNAL \used_counter[2][0]~98_combout\ : std_logic;
SIGNAL \used_counter[2][7]~regout\ : std_logic;
SIGNAL \used_counter[4][4]~155_combout\ : std_logic;
SIGNAL \used_counter[4][4]~regout\ : std_logic;
SIGNAL \lowestValue~16_combout\ : std_logic;
SIGNAL \lowestValue~17_combout\ : std_logic;
SIGNAL \lowestValue~18_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \lowestValue[0]~1_combout\ : std_logic;
SIGNAL \lowestValue~13_combout\ : std_logic;
SIGNAL \lowestValue~14_combout\ : std_logic;
SIGNAL \lowestValue~15_combout\ : std_logic;
SIGNAL \used_counter~67_combout\ : std_logic;
SIGNAL \used_counter~68_combout\ : std_logic;
SIGNAL \used_counter[1][6]~84_combout\ : std_logic;
SIGNAL \used_counter[1][6]~regout\ : std_logic;
SIGNAL \used_counter~69_combout\ : std_logic;
SIGNAL \used_counter~70_combout\ : std_logic;
SIGNAL \used_counter~71_combout\ : std_logic;
SIGNAL \used_counter[1][1]~regout\ : std_logic;
SIGNAL \used_counter[1][0]~64_combout\ : std_logic;
SIGNAL \used_counter[1][0]~regout\ : std_logic;
SIGNAL \WideNor1~0_combout\ : std_logic;
SIGNAL \used_counter[0][0]~40_combout\ : std_logic;
SIGNAL \used_counter[0][0]~regout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \used_counter[2][4]~105_combout\ : std_logic;
SIGNAL \used_counter[2][4]~regout\ : std_logic;
SIGNAL \WideNor2~1_combout\ : std_logic;
SIGNAL \WideNor2~0_combout\ : std_logic;
SIGNAL \WideNor2~combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \used_counter~96_combout\ : std_logic;
SIGNAL \used_counter[2][1]~regout\ : std_logic;
SIGNAL \used_counter[2][1]~100\ : std_logic;
SIGNAL \used_counter[2][2]~102\ : std_logic;
SIGNAL \used_counter[2][3]~103_combout\ : std_logic;
SIGNAL \used_counter[2][3]~regout\ : std_logic;
SIGNAL \used_counter[2][3]~104\ : std_logic;
SIGNAL \used_counter[2][4]~106\ : std_logic;
SIGNAL \used_counter[2][5]~107_combout\ : std_logic;
SIGNAL \used_counter[2][5]~regout\ : std_logic;
SIGNAL \used_counter[2][5]~108\ : std_logic;
SIGNAL \used_counter[2][6]~109_combout\ : std_logic;
SIGNAL \used_counter[2][6]~regout\ : std_logic;
SIGNAL \lowestValue~22_combout\ : std_logic;
SIGNAL \lowestValue~23_combout\ : std_logic;
SIGNAL \lowestValue~24_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~14_combout\ : std_logic;
SIGNAL \lowestValue[0]~0_combout\ : std_logic;
SIGNAL \lowestValue~2_combout\ : std_logic;
SIGNAL \lowestValue~3_combout\ : std_logic;
SIGNAL \lowestValue~4_combout\ : std_logic;
SIGNAL \used_counter~141_combout\ : std_logic;
SIGNAL \used_counter~143_combout\ : std_logic;
SIGNAL \used_counter~142_combout\ : std_logic;
SIGNAL \used_counter~145_combout\ : std_logic;
SIGNAL \b5~combout\ : std_logic;
SIGNAL \used_counter~146_combout\ : std_logic;
SIGNAL \used_counter[4][0]~regout\ : std_logic;
SIGNAL \used_counter[4][0]~139\ : std_logic;
SIGNAL \used_counter[4][1]~150\ : std_logic;
SIGNAL \used_counter[4][2]~151_combout\ : std_logic;
SIGNAL \used_counter[4][2]~regout\ : std_logic;
SIGNAL \used_counter[4][2]~152\ : std_logic;
SIGNAL \used_counter[4][3]~154\ : std_logic;
SIGNAL \used_counter[4][4]~156\ : std_logic;
SIGNAL \used_counter[4][5]~157_combout\ : std_logic;
SIGNAL \used_counter[4][5]~regout\ : std_logic;
SIGNAL \used_counter[4][5]~158\ : std_logic;
SIGNAL \used_counter[4][6]~160\ : std_logic;
SIGNAL \used_counter[4][7]~161_combout\ : std_logic;
SIGNAL \used_counter[4][7]~regout\ : std_logic;
SIGNAL \lowestValue~25_combout\ : std_logic;
SIGNAL \lowestValue~26_combout\ : std_logic;
SIGNAL \lowestValue~27_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~14_combout\ : std_logic;
SIGNAL \lowestValue~7_combout\ : std_logic;
SIGNAL \lowestValue~8_combout\ : std_logic;
SIGNAL \lowestValue~9_combout\ : std_logic;
SIGNAL \used_counter[0][1]~42_combout\ : std_logic;
SIGNAL \used_counter[0][1]~43_combout\ : std_logic;
SIGNAL \used_counter[0][1]~45_combout\ : std_logic;
SIGNAL \used_counter[0][1]~46_combout\ : std_logic;
SIGNAL \used_counter[0][1]~47_combout\ : std_logic;
SIGNAL \used_counter[0][1]~regout\ : std_logic;
SIGNAL \used_counter[0][1]~51\ : std_logic;
SIGNAL \used_counter[0][2]~52_combout\ : std_logic;
SIGNAL \used_counter[0][2]~regout\ : std_logic;
SIGNAL \used_counter[0][2]~53\ : std_logic;
SIGNAL \used_counter[0][3]~54_combout\ : std_logic;
SIGNAL \used_counter[0][3]~regout\ : std_logic;
SIGNAL \used_counter[0][3]~55\ : std_logic;
SIGNAL \used_counter[0][4]~56_combout\ : std_logic;
SIGNAL \used_counter[0][4]~regout\ : std_logic;
SIGNAL \used_counter[0][4]~57\ : std_logic;
SIGNAL \used_counter[0][5]~59\ : std_logic;
SIGNAL \used_counter[0][6]~60_combout\ : std_logic;
SIGNAL \used_counter[0][6]~regout\ : std_logic;
SIGNAL \used_counter[0][6]~61\ : std_logic;
SIGNAL \used_counter[0][7]~62_combout\ : std_logic;
SIGNAL \used_counter[0][7]~regout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \l1~reg0_regout\ : std_logic;
SIGNAL \WideNor1~1_combout\ : std_logic;
SIGNAL \WideNor1~combout\ : std_logic;
SIGNAL \l2~reg0_regout\ : std_logic;
SIGNAL \l3~reg0feeder_combout\ : std_logic;
SIGNAL \l3~reg0_regout\ : std_logic;
SIGNAL \WideNor3~0_combout\ : std_logic;
SIGNAL \used_counter[3][5]~132_combout\ : std_logic;
SIGNAL \used_counter[3][5]~regout\ : std_logic;
SIGNAL \WideNor3~1_combout\ : std_logic;
SIGNAL \WideNor3~combout\ : std_logic;
SIGNAL \l4~reg0feeder_combout\ : std_logic;
SIGNAL \l4~reg0_regout\ : std_logic;
SIGNAL \l5~reg0_regout\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL lowestValue : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_b1 <= b1;
ww_b2 <= b2;
ww_b3 <= b3;
ww_b4 <= b4;
ww_b5 <= b5;
l1 <= ww_l1;
l2 <= ww_l2;
l3 <= ww_l3;
l4 <= ww_l4;
l5 <= ww_l5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X44_Y32_N21
\used_counter[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[2][2]~101_combout\,
	sclr => \used_counter~96_combout\,
	ena => \used_counter[2][0]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][2]~regout\);

-- Location: LCFF_X45_Y34_N7
\used_counter[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[4][1]~149_combout\,
	sclr => \used_counter~146_combout\,
	ena => \used_counter[4][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][1]~regout\);

-- Location: LCCOMB_X44_Y31_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X44_Y31_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X44_Y31_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X44_Y31_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X44_Y31_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X44_Y30_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X44_Y30_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(30) & (\Add0~59\ $ (GND))) # (!counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X44_Y30_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X44_Y32_N20
\used_counter[2][2]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][2]~101_combout\ = (\used_counter[2][2]~regout\ & (\used_counter[2][1]~100\ $ (GND))) # (!\used_counter[2][2]~regout\ & (!\used_counter[2][1]~100\ & VCC))
-- \used_counter[2][2]~102\ = CARRY((\used_counter[2][2]~regout\ & !\used_counter[2][1]~100\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][2]~regout\,
	datad => VCC,
	cin => \used_counter[2][1]~100\,
	combout => \used_counter[2][2]~101_combout\,
	cout => \used_counter[2][2]~102\);

-- Location: LCCOMB_X45_Y34_N6
\used_counter[4][1]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][1]~149_combout\ = (\used_counter[4][1]~regout\ & (!\used_counter[4][0]~139\)) # (!\used_counter[4][1]~regout\ & ((\used_counter[4][0]~139\) # (GND)))
-- \used_counter[4][1]~150\ = CARRY((!\used_counter[4][0]~139\) # (!\used_counter[4][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~regout\,
	datad => VCC,
	cin => \used_counter[4][0]~139\,
	combout => \used_counter[4][1]~149_combout\,
	cout => \used_counter[4][1]~150\);

-- Location: LCCOMB_X41_Y33_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!lowestValue(0) & \used_counter[0][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(0),
	datab => \used_counter[0][0]~regout\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X41_Y33_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((lowestValue(1) & ((!\LessThan0~1_cout\) # (!\used_counter[0][1]~regout\))) # (!lowestValue(1) & (!\used_counter[0][1]~regout\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(1),
	datab => \used_counter[0][1]~regout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X41_Y33_N4
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\used_counter[0][2]~regout\ & ((!\LessThan0~3_cout\) # (!lowestValue(2)))) # (!\used_counter[0][2]~regout\ & (!lowestValue(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][2]~regout\,
	datab => lowestValue(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X41_Y33_N6
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\used_counter[0][3]~regout\ & (lowestValue(3) & !\LessThan0~5_cout\)) # (!\used_counter[0][3]~regout\ & ((lowestValue(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][3]~regout\,
	datab => lowestValue(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X41_Y33_N8
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((lowestValue(4) & (\used_counter[0][4]~regout\ & !\LessThan0~7_cout\)) # (!lowestValue(4) & ((\used_counter[0][4]~regout\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(4),
	datab => \used_counter[0][4]~regout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X41_Y33_N10
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\used_counter[0][5]~regout\ & (lowestValue(5) & !\LessThan0~9_cout\)) # (!\used_counter[0][5]~regout\ & ((lowestValue(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][5]~regout\,
	datab => lowestValue(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X41_Y33_N12
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\used_counter[0][6]~regout\ & ((!\LessThan0~11_cout\) # (!lowestValue(6)))) # (!\used_counter[0][6]~regout\ & (!lowestValue(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][6]~regout\,
	datab => lowestValue(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X41_Y33_N14
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\used_counter[0][7]~regout\ & ((\LessThan0~13_cout\) # (!lowestValue(7)))) # (!\used_counter[0][7]~regout\ & (\LessThan0~13_cout\ & !lowestValue(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][7]~regout\,
	datad => lowestValue(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X44_Y34_N0
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(3) & (counter(1) & (!counter(0) & counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X45_Y31_N17
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X45_Y31_N24
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(4) & (counter(6) & (counter(7) & counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(6),
	datac => counter(7),
	datad => counter(5),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X44_Y31_N17
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCFF_X44_Y31_N21
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X45_Y31_N26
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(10) & (!counter(9) & (!counter(8) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(9),
	datac => counter(8),
	datad => counter(11),
	combout => \Equal0~2_combout\);

-- Location: LCFF_X45_Y31_N3
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCFF_X44_Y31_N25
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X45_Y31_N6
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(15) & (counter(14) & (counter(13) & !counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(14),
	datac => counter(13),
	datad => counter(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X45_Y31_N12
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCFF_X45_Y32_N3
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCCOMB_X45_Y32_N6
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (counter(23) & counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => counter(22),
	combout => \Equal0~6_combout\);

-- Location: LCFF_X44_Y30_N31
\counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(31));

-- Location: LCCOMB_X41_Y32_N30
\used_counter[0][1]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][1]~44_combout\ = (lowestValue(4) & ((\used_counter[0][5]~regout\ $ (lowestValue(5))) # (!\used_counter[0][4]~regout\))) # (!lowestValue(4) & ((\used_counter[0][4]~regout\) # (\used_counter[0][5]~regout\ $ (lowestValue(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(4),
	datab => \used_counter[0][4]~regout\,
	datac => \used_counter[0][5]~regout\,
	datad => lowestValue(5),
	combout => \used_counter[0][1]~44_combout\);

-- Location: LCCOMB_X42_Y32_N2
\used_counter[0][0]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][0]~48_combout\ = (\b1~combout\) # (\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b1~combout\,
	datad => \rst~combout\,
	combout => \used_counter[0][0]~48_combout\);

-- Location: LCCOMB_X45_Y31_N16
\counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (!\Equal0~10_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~8_combout\,
	combout => \counter~4_combout\);

-- Location: LCCOMB_X45_Y31_N2
\counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (!\Equal0~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~28_combout\,
	combout => \counter~9_combout\);

-- Location: LCCOMB_X45_Y32_N2
\counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~15_combout\ = (!\Equal0~10_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~44_combout\,
	combout => \counter~15_combout\);

-- Location: LCCOMB_X45_Y33_N24
\used_counter~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~66_combout\ = (lowestValue(0) & ((\used_counter[1][1]~regout\ $ (lowestValue(1))) # (!\used_counter[1][0]~regout\))) # (!lowestValue(0) & ((\used_counter[1][0]~regout\) # (\used_counter[1][1]~regout\ $ (lowestValue(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(0),
	datab => \used_counter[1][0]~regout\,
	datac => \used_counter[1][1]~regout\,
	datad => lowestValue(1),
	combout => \used_counter~66_combout\);

-- Location: LCCOMB_X45_Y32_N24
\used_counter~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~93_combout\ = (\used_counter[2][4]~regout\ & ((lowestValue(5) $ (\used_counter[2][5]~regout\)) # (!lowestValue(4)))) # (!\used_counter[2][4]~regout\ & ((lowestValue(4)) # (lowestValue(5) $ (\used_counter[2][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][4]~regout\,
	datab => lowestValue(4),
	datac => lowestValue(5),
	datad => \used_counter[2][5]~regout\,
	combout => \used_counter~93_combout\);

-- Location: LCCOMB_X46_Y33_N28
\used_counter[2][0]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][0]~97_combout\ = (\rst~combout\) # ((\b3~combout\ & (!\b1~combout\ & !\b2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \b3~combout\,
	datac => \b1~combout\,
	datad => \b2~combout\,
	combout => \used_counter[2][0]~97_combout\);

-- Location: LCCOMB_X41_Y33_N24
\used_counter~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~118_combout\ = (lowestValue(4) & ((lowestValue(5) $ (\used_counter[3][5]~regout\)) # (!\used_counter[3][4]~regout\))) # (!lowestValue(4) & ((\used_counter[3][4]~regout\) # (lowestValue(5) $ (\used_counter[3][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(4),
	datab => lowestValue(5),
	datac => \used_counter[3][5]~regout\,
	datad => \used_counter[3][4]~regout\,
	combout => \used_counter~118_combout\);

-- Location: LCCOMB_X46_Y33_N8
\used_counter~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~140_combout\ = (!\b4~combout\ & (!\b3~combout\ & (!\b1~combout\ & !\b2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b4~combout\,
	datab => \b3~combout\,
	datac => \b1~combout\,
	datad => \b2~combout\,
	combout => \used_counter~140_combout\);

-- Location: LCCOMB_X44_Y34_N30
\used_counter~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~144_combout\ = (\used_counter[4][6]~regout\ & ((\used_counter[4][7]~regout\ $ (lowestValue(7))) # (!lowestValue(6)))) # (!\used_counter[4][6]~regout\ & ((lowestValue(6)) # (\used_counter[4][7]~regout\ $ (lowestValue(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][6]~regout\,
	datab => \used_counter[4][7]~regout\,
	datac => lowestValue(7),
	datad => lowestValue(6),
	combout => \used_counter~144_combout\);

-- Location: LCCOMB_X45_Y34_N20
\used_counter[4][0]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][0]~147_combout\ = (\rst~combout\) # ((\used_counter~115_combout\ & (\b5~combout\ & !\b4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~115_combout\,
	datab => \rst~combout\,
	datac => \b5~combout\,
	datad => \b4~combout\,
	combout => \used_counter[4][0]~147_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y32_N6
\used_counter[0][0]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][0]~40_combout\ = \used_counter[0][0]~regout\ $ (VCC)
-- \used_counter[0][0]~41\ = CARRY(\used_counter[0][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][0]~regout\,
	datad => VCC,
	combout => \used_counter[0][0]~40_combout\,
	cout => \used_counter[0][0]~41\);

-- Location: LCCOMB_X42_Y32_N8
\used_counter[0][1]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][1]~50_combout\ = (\used_counter[0][1]~regout\ & (!\used_counter[0][0]~41\)) # (!\used_counter[0][1]~regout\ & ((\used_counter[0][0]~41\) # (GND)))
-- \used_counter[0][1]~51\ = CARRY((!\used_counter[0][0]~41\) # (!\used_counter[0][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][1]~regout\,
	datad => VCC,
	cin => \used_counter[0][0]~41\,
	combout => \used_counter[0][1]~50_combout\,
	cout => \used_counter[0][1]~51\);

-- Location: LCCOMB_X45_Y34_N4
\used_counter[4][0]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][0]~138_combout\ = \used_counter[4][0]~regout\ $ (VCC)
-- \used_counter[4][0]~139\ = CARRY(\used_counter[4][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][0]~regout\,
	datad => VCC,
	combout => \used_counter[4][0]~138_combout\,
	cout => \used_counter[4][0]~139\);

-- Location: LCCOMB_X44_Y32_N16
\used_counter[2][0]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][0]~88_combout\ = \used_counter[2][0]~regout\ $ (VCC)
-- \used_counter[2][0]~89\ = CARRY(\used_counter[2][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~regout\,
	datad => VCC,
	combout => \used_counter[2][0]~88_combout\,
	cout => \used_counter[2][0]~89\);

-- Location: LCCOMB_X44_Y32_N18
\used_counter[2][1]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][1]~99_combout\ = (\used_counter[2][1]~regout\ & (!\used_counter[2][0]~89\)) # (!\used_counter[2][1]~regout\ & ((\used_counter[2][0]~89\) # (GND)))
-- \used_counter[2][1]~100\ = CARRY((!\used_counter[2][0]~89\) # (!\used_counter[2][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[2][1]~regout\,
	datad => VCC,
	cin => \used_counter[2][0]~89\,
	combout => \used_counter[2][1]~99_combout\,
	cout => \used_counter[2][1]~100\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b3,
	combout => \b3~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b1,
	combout => \b1~combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b2,
	combout => \b2~combout\);

-- Location: LCCOMB_X46_Y33_N10
\used_counter~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~90_combout\ = (\b3~combout\ & (!\b1~combout\ & !\b2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b3~combout\,
	datac => \b1~combout\,
	datad => \b2~combout\,
	combout => \used_counter~90_combout\);

-- Location: LCCOMB_X45_Y34_N10
\used_counter[4][3]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][3]~153_combout\ = (\used_counter[4][3]~regout\ & (!\used_counter[4][2]~152\)) # (!\used_counter[4][3]~regout\ & ((\used_counter[4][2]~152\) # (GND)))
-- \used_counter[4][3]~154\ = CARRY((!\used_counter[4][2]~152\) # (!\used_counter[4][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][3]~regout\,
	datad => VCC,
	cin => \used_counter[4][2]~152\,
	combout => \used_counter[4][3]~153_combout\,
	cout => \used_counter[4][3]~154\);

-- Location: LCCOMB_X44_Y31_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X44_Y34_N2
\counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~0_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~3_combout\);

-- Location: LCFF_X44_Y34_N3
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X44_Y31_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X44_Y34_N28
\counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (!\Equal0~10_combout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~2_combout\,
	combout => \counter~0_combout\);

-- Location: LCFF_X44_Y34_N29
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X44_Y31_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X44_Y34_N22
\counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~4_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~1_combout\);

-- Location: LCFF_X44_Y34_N23
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X44_Y31_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X44_Y34_N24
\counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (!\Equal0~10_combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~6_combout\,
	combout => \counter~2_combout\);

-- Location: LCFF_X44_Y34_N25
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X44_Y31_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X45_Y31_N30
\counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (!\Equal0~10_combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~10_combout\,
	combout => \counter~5_combout\);

-- Location: LCFF_X45_Y31_N31
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X44_Y31_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X45_Y31_N0
\counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (!\Equal0~10_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~12_combout\,
	combout => \counter~6_combout\);

-- Location: LCFF_X45_Y31_N1
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X44_Y31_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X45_Y31_N14
\counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (!\Equal0~10_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~14_combout\,
	combout => \counter~7_combout\);

-- Location: LCFF_X45_Y31_N15
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X44_Y31_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCFF_X44_Y31_N19
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X44_Y31_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCFF_X44_Y31_N23
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X44_Y31_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X45_Y31_N20
\counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (!\Equal0~10_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~26_combout\,
	combout => \counter~8_combout\);

-- Location: LCFF_X45_Y31_N21
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X44_Y31_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X45_Y31_N28
\counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (\Add0~30_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~10_combout\);

-- Location: LCFF_X45_Y31_N29
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X44_Y30_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X45_Y32_N0
\counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (!\Equal0~10_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~32_combout\,
	combout => \counter~11_combout\);

-- Location: LCFF_X45_Y32_N1
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X44_Y30_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCFF_X44_Y30_N3
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCCOMB_X44_Y30_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X45_Y32_N10
\counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (!\Equal0~10_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~36_combout\,
	combout => \counter~12_combout\);

-- Location: LCFF_X45_Y32_N11
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCCOMB_X44_Y30_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X44_Y30_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X45_Y32_N18
\counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~13_combout\ = (!\Equal0~10_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~40_combout\,
	combout => \counter~13_combout\);

-- Location: LCFF_X45_Y32_N19
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCCOMB_X44_Y30_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X45_Y32_N8
\counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~14_combout\ = (!\Equal0~10_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~42_combout\,
	combout => \counter~14_combout\);

-- Location: LCFF_X45_Y32_N9
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCCOMB_X44_Y30_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X45_Y32_N28
\counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~16_combout\ = (!\Equal0~10_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~46_combout\,
	combout => \counter~16_combout\);

-- Location: LCFF_X45_Y32_N29
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCCOMB_X44_Y30_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X45_Y30_N12
\counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~17_combout\ = (!\Equal0~10_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~48_combout\,
	combout => \counter~17_combout\);

-- Location: LCFF_X45_Y30_N13
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCCOMB_X44_Y30_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter(25) & (!\Add0~49\)) # (!counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCFF_X44_Y30_N19
\counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

-- Location: LCCOMB_X44_Y30_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter(26) & (\Add0~51\ $ (GND))) # (!counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X45_Y30_N14
\counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~18_combout\ = (!\Equal0~10_combout\ & \Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~52_combout\,
	combout => \counter~18_combout\);

-- Location: LCFF_X45_Y30_N15
\counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(26));

-- Location: LCCOMB_X44_Y30_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(27) & (!\Add0~53\)) # (!counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCFF_X44_Y30_N23
\counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(27));

-- Location: LCCOMB_X45_Y30_N0
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (counter(24) & (!counter(27) & (counter(26) & !counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(27),
	datac => counter(26),
	datad => counter(25),
	combout => \Equal0~8_combout\);

-- Location: LCFF_X44_Y30_N7
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X45_Y32_N12
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (counter(18) & (counter(16) & (!counter(17) & !counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(16),
	datac => counter(17),
	datad => counter(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X45_Y32_N16
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (counter(20) & (counter(21) & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => counter(20),
	datac => counter(21),
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X44_Y30_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter(28) & (\Add0~55\ $ (GND))) # (!counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X44_Y30_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter(29) & (!\Add0~57\)) # (!counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCFF_X44_Y30_N27
\counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(29));

-- Location: LCFF_X44_Y30_N29
\counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(30));

-- Location: LCFF_X44_Y30_N25
\counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(28));

-- Location: LCCOMB_X45_Y30_N6
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!counter(31) & (!counter(29) & (!counter(30) & !counter(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	datab => counter(29),
	datac => counter(30),
	datad => counter(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X45_Y31_N10
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~8_combout\ & (\Equal0~7_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X45_Y34_N2
\used_counter[4][0]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][0]~148_combout\ = (\Equal0~10_combout\ & ((\used_counter[4][0]~147_combout\) # ((!\used_counter~145_combout\ & \always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][0]~147_combout\,
	datab => \used_counter~145_combout\,
	datac => \Equal0~10_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter[4][0]~148_combout\);

-- Location: LCFF_X45_Y34_N11
\used_counter[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[4][3]~153_combout\,
	sclr => \used_counter~146_combout\,
	ena => \used_counter[4][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][3]~regout\);

-- Location: LCCOMB_X45_Y34_N24
\WideNor4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor4~0_combout\ = (\used_counter[4][1]~regout\) # ((\used_counter[4][0]~regout\) # ((\used_counter[4][2]~regout\) # (\used_counter[4][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~regout\,
	datab => \used_counter[4][0]~regout\,
	datac => \used_counter[4][2]~regout\,
	datad => \used_counter[4][3]~regout\,
	combout => \WideNor4~0_combout\);

-- Location: LCCOMB_X45_Y34_N16
\used_counter[4][6]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][6]~159_combout\ = (\used_counter[4][6]~regout\ & (\used_counter[4][5]~158\ $ (GND))) # (!\used_counter[4][6]~regout\ & (!\used_counter[4][5]~158\ & VCC))
-- \used_counter[4][6]~160\ = CARRY((\used_counter[4][6]~regout\ & !\used_counter[4][5]~158\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][6]~regout\,
	datad => VCC,
	cin => \used_counter[4][5]~158\,
	combout => \used_counter[4][6]~159_combout\,
	cout => \used_counter[4][6]~160\);

-- Location: LCFF_X45_Y34_N17
\used_counter[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[4][6]~159_combout\,
	sclr => \used_counter~146_combout\,
	ena => \used_counter[4][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][6]~regout\);

-- Location: LCCOMB_X45_Y34_N30
\WideNor4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor4~1_combout\ = (\used_counter[4][4]~regout\) # ((\used_counter[4][5]~regout\) # ((\used_counter[4][6]~regout\) # (\used_counter[4][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][4]~regout\,
	datab => \used_counter[4][5]~regout\,
	datac => \used_counter[4][6]~regout\,
	datad => \used_counter[4][7]~regout\,
	combout => \WideNor4~1_combout\);

-- Location: LCCOMB_X45_Y34_N28
WideNor4 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor4~combout\ = (!\WideNor4~0_combout\ & !\WideNor4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor4~0_combout\,
	datad => \WideNor4~1_combout\,
	combout => \WideNor4~combout\);

-- Location: LCCOMB_X46_Y33_N12
\used_counter[1][0]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][0]~64_combout\ = \used_counter[1][0]~regout\ $ (VCC)
-- \used_counter[1][0]~65\ = CARRY(\used_counter[1][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~regout\,
	datad => VCC,
	combout => \used_counter[1][0]~64_combout\,
	cout => \used_counter[1][0]~65\);

-- Location: LCCOMB_X46_Y33_N14
\used_counter[1][1]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][1]~74_combout\ = (\used_counter[1][1]~regout\ & (!\used_counter[1][0]~65\)) # (!\used_counter[1][1]~regout\ & ((\used_counter[1][0]~65\) # (GND)))
-- \used_counter[1][1]~75\ = CARRY((!\used_counter[1][0]~65\) # (!\used_counter[1][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[1][1]~regout\,
	datad => VCC,
	cin => \used_counter[1][0]~65\,
	combout => \used_counter[1][1]~74_combout\,
	cout => \used_counter[1][1]~75\);

-- Location: LCCOMB_X42_Y33_N0
\used_counter[3][0]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][0]~113_combout\ = \used_counter[3][0]~regout\ $ (VCC)
-- \used_counter[3][0]~114\ = CARRY(\used_counter[3][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][0]~regout\,
	datad => VCC,
	combout => \used_counter[3][0]~113_combout\,
	cout => \used_counter[3][0]~114\);

-- Location: LCCOMB_X46_Y33_N6
\used_counter~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~115_combout\ = (!\b3~combout\ & (!\b1~combout\ & !\b2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b3~combout\,
	datac => \b1~combout\,
	datad => \b2~combout\,
	combout => \used_counter~115_combout\);

-- Location: LCCOMB_X42_Y33_N6
\used_counter[3][3]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][3]~128_combout\ = (\used_counter[3][3]~regout\ & (!\used_counter[3][2]~127\)) # (!\used_counter[3][3]~regout\ & ((\used_counter[3][2]~127\) # (GND)))
-- \used_counter[3][3]~129\ = CARRY((!\used_counter[3][2]~127\) # (!\used_counter[3][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][3]~regout\,
	datad => VCC,
	cin => \used_counter[3][2]~127\,
	combout => \used_counter[3][3]~128_combout\,
	cout => \used_counter[3][3]~129\);

-- Location: LCCOMB_X42_Y33_N8
\used_counter[3][4]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][4]~130_combout\ = (\used_counter[3][4]~regout\ & (\used_counter[3][3]~129\ $ (GND))) # (!\used_counter[3][4]~regout\ & (!\used_counter[3][3]~129\ & VCC))
-- \used_counter[3][4]~131\ = CARRY((\used_counter[3][4]~regout\ & !\used_counter[3][3]~129\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][4]~regout\,
	datad => VCC,
	cin => \used_counter[3][3]~129\,
	combout => \used_counter[3][4]~130_combout\,
	cout => \used_counter[3][4]~131\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b4,
	combout => \b4~combout\);

-- Location: LCCOMB_X41_Y33_N28
\used_counter[3][0]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][0]~122_combout\ = (\rst~combout\) # ((\used_counter~115_combout\ & \b4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \used_counter~115_combout\,
	datad => \b4~combout\,
	combout => \used_counter[3][0]~122_combout\);

-- Location: LCCOMB_X41_Y33_N26
\used_counter[3][0]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][0]~123_combout\ = (\Equal0~10_combout\ & ((\used_counter[3][0]~122_combout\) # ((!\used_counter~120_combout\ & \always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~120_combout\,
	datab => \used_counter[3][0]~122_combout\,
	datac => \always0~1_combout\,
	datad => \Equal0~10_combout\,
	combout => \used_counter[3][0]~123_combout\);

-- Location: LCFF_X42_Y33_N9
\used_counter[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[3][4]~130_combout\,
	sclr => \used_counter~121_combout\,
	ena => \used_counter[3][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][4]~regout\);

-- Location: LCCOMB_X42_Y33_N10
\used_counter[3][5]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][5]~132_combout\ = (\used_counter[3][5]~regout\ & (!\used_counter[3][4]~131\)) # (!\used_counter[3][5]~regout\ & ((\used_counter[3][4]~131\) # (GND)))
-- \used_counter[3][5]~133\ = CARRY((!\used_counter[3][4]~131\) # (!\used_counter[3][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][5]~regout\,
	datad => VCC,
	cin => \used_counter[3][4]~131\,
	combout => \used_counter[3][5]~132_combout\,
	cout => \used_counter[3][5]~133\);

-- Location: LCCOMB_X42_Y33_N12
\used_counter[3][6]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][6]~134_combout\ = (\used_counter[3][6]~regout\ & (\used_counter[3][5]~133\ $ (GND))) # (!\used_counter[3][6]~regout\ & (!\used_counter[3][5]~133\ & VCC))
-- \used_counter[3][6]~135\ = CARRY((\used_counter[3][6]~regout\ & !\used_counter[3][5]~133\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][6]~regout\,
	datad => VCC,
	cin => \used_counter[3][5]~133\,
	combout => \used_counter[3][6]~134_combout\,
	cout => \used_counter[3][6]~135\);

-- Location: LCFF_X42_Y33_N13
\used_counter[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[3][6]~134_combout\,
	sclr => \used_counter~121_combout\,
	ena => \used_counter[3][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][6]~regout\);

-- Location: LCCOMB_X42_Y33_N14
\used_counter[3][7]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][7]~136_combout\ = \used_counter[3][7]~regout\ $ (\used_counter[3][6]~135\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][7]~regout\,
	cin => \used_counter[3][6]~135\,
	combout => \used_counter[3][7]~136_combout\);

-- Location: LCFF_X42_Y33_N15
\used_counter[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[3][7]~136_combout\,
	sclr => \used_counter~121_combout\,
	ena => \used_counter[3][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][7]~regout\);

-- Location: LCCOMB_X41_Y33_N22
\used_counter~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~119_combout\ = (lowestValue(7) & ((\used_counter[3][6]~regout\ $ (lowestValue(6))) # (!\used_counter[3][7]~regout\))) # (!lowestValue(7) & ((\used_counter[3][7]~regout\) # (\used_counter[3][6]~regout\ $ (lowestValue(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(7),
	datab => \used_counter[3][6]~regout\,
	datac => \used_counter[3][7]~regout\,
	datad => lowestValue(6),
	combout => \used_counter~119_combout\);

-- Location: LCCOMB_X45_Y33_N26
\used_counter~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~117_combout\ = (lowestValue(2) & ((\used_counter[3][3]~regout\ $ (lowestValue(3))) # (!\used_counter[3][2]~regout\))) # (!lowestValue(2) & ((\used_counter[3][2]~regout\) # (\used_counter[3][3]~regout\ $ (lowestValue(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(2),
	datab => \used_counter[3][2]~regout\,
	datac => \used_counter[3][3]~regout\,
	datad => lowestValue(3),
	combout => \used_counter~117_combout\);

-- Location: LCCOMB_X41_Y33_N18
\used_counter~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~116_combout\ = (lowestValue(0) & ((\used_counter[3][1]~regout\ $ (lowestValue(1))) # (!\used_counter[3][0]~regout\))) # (!lowestValue(0) & ((\used_counter[3][0]~regout\) # (\used_counter[3][1]~regout\ $ (lowestValue(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(0),
	datab => \used_counter[3][1]~regout\,
	datac => \used_counter[3][0]~regout\,
	datad => lowestValue(1),
	combout => \used_counter~116_combout\);

-- Location: LCCOMB_X41_Y33_N20
\used_counter~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~120_combout\ = (\used_counter~118_combout\) # ((\used_counter~119_combout\) # ((\used_counter~117_combout\) # (\used_counter~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~118_combout\,
	datab => \used_counter~119_combout\,
	datac => \used_counter~117_combout\,
	datad => \used_counter~116_combout\,
	combout => \used_counter~120_combout\);

-- Location: LCCOMB_X41_Y33_N30
\used_counter~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~121_combout\ = (((!\used_counter~120_combout\ & \always0~1_combout\)) # (!\used_counter~115_combout\)) # (!\b4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b4~combout\,
	datab => \used_counter~115_combout\,
	datac => \used_counter~120_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter~121_combout\);

-- Location: LCFF_X42_Y33_N1
\used_counter[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[3][0]~113_combout\,
	sclr => \used_counter~121_combout\,
	ena => \used_counter[3][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][0]~regout\);

-- Location: LCCOMB_X42_Y33_N2
\used_counter[3][1]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][1]~124_combout\ = (\used_counter[3][1]~regout\ & (!\used_counter[3][0]~114\)) # (!\used_counter[3][1]~regout\ & ((\used_counter[3][0]~114\) # (GND)))
-- \used_counter[3][1]~125\ = CARRY((!\used_counter[3][0]~114\) # (!\used_counter[3][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][1]~regout\,
	datad => VCC,
	cin => \used_counter[3][0]~114\,
	combout => \used_counter[3][1]~124_combout\,
	cout => \used_counter[3][1]~125\);

-- Location: LCFF_X42_Y33_N3
\used_counter[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[3][1]~124_combout\,
	sclr => \used_counter~121_combout\,
	ena => \used_counter[3][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][1]~regout\);

-- Location: LCCOMB_X42_Y33_N4
\used_counter[3][2]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][2]~126_combout\ = (\used_counter[3][2]~regout\ & (\used_counter[3][1]~125\ $ (GND))) # (!\used_counter[3][2]~regout\ & (!\used_counter[3][1]~125\ & VCC))
-- \used_counter[3][2]~127\ = CARRY((\used_counter[3][2]~regout\ & !\used_counter[3][1]~125\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][2]~regout\,
	datad => VCC,
	cin => \used_counter[3][1]~125\,
	combout => \used_counter[3][2]~126_combout\,
	cout => \used_counter[3][2]~127\);

-- Location: LCFF_X42_Y33_N5
\used_counter[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[3][2]~126_combout\,
	sclr => \used_counter~121_combout\,
	ena => \used_counter[3][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][2]~regout\);

-- Location: LCFF_X42_Y33_N7
\used_counter[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[3][3]~128_combout\,
	sclr => \used_counter~121_combout\,
	ena => \used_counter[3][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][3]~regout\);

-- Location: LCCOMB_X46_Y33_N16
\used_counter[1][2]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][2]~76_combout\ = (\used_counter[1][2]~regout\ & (\used_counter[1][1]~75\ $ (GND))) # (!\used_counter[1][2]~regout\ & (!\used_counter[1][1]~75\ & VCC))
-- \used_counter[1][2]~77\ = CARRY((\used_counter[1][2]~regout\ & !\used_counter[1][1]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][2]~regout\,
	datad => VCC,
	cin => \used_counter[1][1]~75\,
	combout => \used_counter[1][2]~76_combout\,
	cout => \used_counter[1][2]~77\);

-- Location: LCCOMB_X46_Y33_N18
\used_counter[1][3]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][3]~78_combout\ = (\used_counter[1][3]~regout\ & (!\used_counter[1][2]~77\)) # (!\used_counter[1][3]~regout\ & ((\used_counter[1][2]~77\) # (GND)))
-- \used_counter[1][3]~79\ = CARRY((!\used_counter[1][2]~77\) # (!\used_counter[1][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[1][3]~regout\,
	datad => VCC,
	cin => \used_counter[1][2]~77\,
	combout => \used_counter[1][3]~78_combout\,
	cout => \used_counter[1][3]~79\);

-- Location: LCCOMB_X46_Y33_N30
\used_counter[1][0]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][0]~72_combout\ = (\rst~combout\) # ((!\b1~combout\ & \b2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \b1~combout\,
	datad => \b2~combout\,
	combout => \used_counter[1][0]~72_combout\);

-- Location: LCCOMB_X46_Y33_N4
\used_counter[1][0]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][0]~73_combout\ = (\Equal0~10_combout\ & ((\used_counter[1][0]~72_combout\) # ((!\used_counter~70_combout\ & \always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \used_counter[1][0]~72_combout\,
	datac => \used_counter~70_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter[1][0]~73_combout\);

-- Location: LCFF_X46_Y33_N19
\used_counter[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[1][3]~78_combout\,
	sclr => \used_counter~71_combout\,
	ena => \used_counter[1][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][3]~regout\);

-- Location: LCCOMB_X46_Y33_N20
\used_counter[1][4]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][4]~80_combout\ = (\used_counter[1][4]~regout\ & (\used_counter[1][3]~79\ $ (GND))) # (!\used_counter[1][4]~regout\ & (!\used_counter[1][3]~79\ & VCC))
-- \used_counter[1][4]~81\ = CARRY((\used_counter[1][4]~regout\ & !\used_counter[1][3]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][4]~regout\,
	datad => VCC,
	cin => \used_counter[1][3]~79\,
	combout => \used_counter[1][4]~80_combout\,
	cout => \used_counter[1][4]~81\);

-- Location: LCCOMB_X46_Y33_N22
\used_counter[1][5]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][5]~82_combout\ = (\used_counter[1][5]~regout\ & (!\used_counter[1][4]~81\)) # (!\used_counter[1][5]~regout\ & ((\used_counter[1][4]~81\) # (GND)))
-- \used_counter[1][5]~83\ = CARRY((!\used_counter[1][4]~81\) # (!\used_counter[1][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[1][5]~regout\,
	datad => VCC,
	cin => \used_counter[1][4]~81\,
	combout => \used_counter[1][5]~82_combout\,
	cout => \used_counter[1][5]~83\);

-- Location: LCFF_X46_Y33_N23
\used_counter[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[1][5]~82_combout\,
	sclr => \used_counter~71_combout\,
	ena => \used_counter[1][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][5]~regout\);

-- Location: LCCOMB_X46_Y33_N24
\used_counter[1][6]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][6]~84_combout\ = (\used_counter[1][6]~regout\ & (\used_counter[1][5]~83\ $ (GND))) # (!\used_counter[1][6]~regout\ & (!\used_counter[1][5]~83\ & VCC))
-- \used_counter[1][6]~85\ = CARRY((\used_counter[1][6]~regout\ & !\used_counter[1][5]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][6]~regout\,
	datad => VCC,
	cin => \used_counter[1][5]~83\,
	combout => \used_counter[1][6]~84_combout\,
	cout => \used_counter[1][6]~85\);

-- Location: LCCOMB_X46_Y33_N26
\used_counter[1][7]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][7]~86_combout\ = \used_counter[1][6]~85\ $ (\used_counter[1][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter[1][7]~regout\,
	cin => \used_counter[1][6]~85\,
	combout => \used_counter[1][7]~86_combout\);

-- Location: LCFF_X46_Y33_N27
\used_counter[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[1][7]~86_combout\,
	sclr => \used_counter~71_combout\,
	ena => \used_counter[1][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][7]~regout\);

-- Location: LCCOMB_X42_Y32_N16
\used_counter[0][5]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][5]~58_combout\ = (\used_counter[0][5]~regout\ & (!\used_counter[0][4]~57\)) # (!\used_counter[0][5]~regout\ & ((\used_counter[0][4]~57\) # (GND)))
-- \used_counter[0][5]~59\ = CARRY((!\used_counter[0][4]~57\) # (!\used_counter[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][5]~regout\,
	datad => VCC,
	cin => \used_counter[0][4]~57\,
	combout => \used_counter[0][5]~58_combout\,
	cout => \used_counter[0][5]~59\);

-- Location: LCCOMB_X42_Y32_N28
\used_counter[0][0]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][0]~49_combout\ = (\Equal0~10_combout\ & ((\used_counter[0][0]~48_combout\) # ((!\used_counter[0][1]~46_combout\ & \always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][0]~48_combout\,
	datab => \used_counter[0][1]~46_combout\,
	datac => \Equal0~10_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter[0][0]~49_combout\);

-- Location: LCFF_X42_Y32_N17
\used_counter[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[0][5]~58_combout\,
	sclr => \used_counter[0][1]~47_combout\,
	ena => \used_counter[0][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][5]~regout\);

-- Location: LCCOMB_X43_Y33_N28
\lowestValue~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~19_combout\ = (\lowestValue[0]~0_combout\ & (((\used_counter[0][5]~regout\) # (\lowestValue[0]~1_combout\)))) # (!\lowestValue[0]~0_combout\ & (\used_counter[2][5]~regout\ & ((!\lowestValue[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][5]~regout\,
	datab => \used_counter[0][5]~regout\,
	datac => \lowestValue[0]~0_combout\,
	datad => \lowestValue[0]~1_combout\,
	combout => \lowestValue~19_combout\);

-- Location: LCCOMB_X43_Y33_N22
\lowestValue~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~20_combout\ = (\lowestValue[0]~1_combout\ & ((\lowestValue~19_combout\ & ((\used_counter[1][5]~regout\))) # (!\lowestValue~19_combout\ & (\used_counter[3][5]~regout\)))) # (!\lowestValue[0]~1_combout\ & (((\lowestValue~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][5]~regout\,
	datab => \lowestValue[0]~1_combout\,
	datac => \used_counter[1][5]~regout\,
	datad => \lowestValue~19_combout\,
	combout => \lowestValue~20_combout\);

-- Location: LCCOMB_X43_Y33_N18
\lowestValue~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~21_combout\ = (\LessThan4~14_combout\ & (\used_counter[4][5]~regout\)) # (!\LessThan4~14_combout\ & ((\lowestValue~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~14_combout\,
	datac => \used_counter[4][5]~regout\,
	datad => \lowestValue~20_combout\,
	combout => \lowestValue~21_combout\);

-- Location: LCCOMB_X43_Y33_N24
\lowestValue[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue[0]~5_combout\ = (\LessThan2~14_combout\) # ((\LessThan3~14_combout\) # ((\LessThan1~14_combout\) # (\LessThan4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datab => \LessThan3~14_combout\,
	datac => \LessThan1~14_combout\,
	datad => \LessThan4~14_combout\,
	combout => \lowestValue[0]~5_combout\);

-- Location: LCCOMB_X44_Y33_N28
\lowestValue[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue[7]~6_combout\ = (\always0~1_combout\ & (\Equal0~10_combout\ & ((\LessThan0~14_combout\) # (\lowestValue[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~14_combout\,
	datab => \always0~1_combout\,
	datac => \Equal0~10_combout\,
	datad => \lowestValue[0]~5_combout\,
	combout => \lowestValue[7]~6_combout\);

-- Location: LCFF_X43_Y33_N19
\lowestValue[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~21_combout\,
	ena => \lowestValue[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(5));

-- Location: LCFF_X46_Y33_N21
\used_counter[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[1][4]~80_combout\,
	sclr => \used_counter~71_combout\,
	ena => \used_counter[1][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][4]~regout\);

-- Location: LCFF_X46_Y33_N17
\used_counter[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[1][2]~76_combout\,
	sclr => \used_counter~71_combout\,
	ena => \used_counter[1][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][2]~regout\);

-- Location: LCCOMB_X42_Y33_N16
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\used_counter[1][0]~regout\ & !lowestValue(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~regout\,
	datab => lowestValue(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X42_Y33_N18
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((lowestValue(1) & ((!\LessThan1~1_cout\) # (!\used_counter[1][1]~regout\))) # (!lowestValue(1) & (!\used_counter[1][1]~regout\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(1),
	datab => \used_counter[1][1]~regout\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X42_Y33_N20
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((lowestValue(2) & (\used_counter[1][2]~regout\ & !\LessThan1~3_cout\)) # (!lowestValue(2) & ((\used_counter[1][2]~regout\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(2),
	datab => \used_counter[1][2]~regout\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X42_Y33_N22
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((lowestValue(3) & ((!\LessThan1~5_cout\) # (!\used_counter[1][3]~regout\))) # (!lowestValue(3) & (!\used_counter[1][3]~regout\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(3),
	datab => \used_counter[1][3]~regout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X42_Y33_N24
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((lowestValue(4) & (\used_counter[1][4]~regout\ & !\LessThan1~7_cout\)) # (!lowestValue(4) & ((\used_counter[1][4]~regout\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(4),
	datab => \used_counter[1][4]~regout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X42_Y33_N26
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\used_counter[1][5]~regout\ & (lowestValue(5) & !\LessThan1~9_cout\)) # (!\used_counter[1][5]~regout\ & ((lowestValue(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][5]~regout\,
	datab => lowestValue(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X42_Y33_N28
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\used_counter[1][6]~regout\ & ((!\LessThan1~11_cout\) # (!lowestValue(6)))) # (!\used_counter[1][6]~regout\ & (!lowestValue(6) & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][6]~regout\,
	datab => lowestValue(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X42_Y33_N30
\LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (lowestValue(7) & (\LessThan1~13_cout\ & \used_counter[1][7]~regout\)) # (!lowestValue(7) & ((\LessThan1~13_cout\) # (\used_counter[1][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(7),
	datad => \used_counter[1][7]~regout\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X44_Y32_N28
\used_counter[2][6]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][6]~109_combout\ = (\used_counter[2][6]~regout\ & (\used_counter[2][5]~108\ $ (GND))) # (!\used_counter[2][6]~regout\ & (!\used_counter[2][5]~108\ & VCC))
-- \used_counter[2][6]~110\ = CARRY((\used_counter[2][6]~regout\ & !\used_counter[2][5]~108\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[2][6]~regout\,
	datad => VCC,
	cin => \used_counter[2][5]~108\,
	combout => \used_counter[2][6]~109_combout\,
	cout => \used_counter[2][6]~110\);

-- Location: LCCOMB_X44_Y32_N30
\used_counter[2][7]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][7]~111_combout\ = \used_counter[2][6]~110\ $ (\used_counter[2][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter[2][7]~regout\,
	cin => \used_counter[2][6]~110\,
	combout => \used_counter[2][7]~111_combout\);

-- Location: LCCOMB_X43_Y32_N16
\used_counter~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~94_combout\ = (lowestValue(6) & ((lowestValue(7) $ (\used_counter[2][7]~regout\)) # (!\used_counter[2][6]~regout\))) # (!lowestValue(6) & ((\used_counter[2][6]~regout\) # (lowestValue(7) $ (\used_counter[2][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(6),
	datab => \used_counter[2][6]~regout\,
	datac => lowestValue(7),
	datad => \used_counter[2][7]~regout\,
	combout => \used_counter~94_combout\);

-- Location: LCFF_X44_Y32_N17
\used_counter[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[2][0]~88_combout\,
	sclr => \used_counter~96_combout\,
	ena => \used_counter[2][0]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][0]~regout\);

-- Location: LCCOMB_X45_Y32_N4
\used_counter~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~91_combout\ = (lowestValue(0) & ((lowestValue(1) $ (\used_counter[2][1]~regout\)) # (!\used_counter[2][0]~regout\))) # (!lowestValue(0) & ((\used_counter[2][0]~regout\) # (lowestValue(1) $ (\used_counter[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(0),
	datab => \used_counter[2][0]~regout\,
	datac => lowestValue(1),
	datad => \used_counter[2][1]~regout\,
	combout => \used_counter~91_combout\);

-- Location: LCCOMB_X44_Y33_N14
\lowestValue~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~10_combout\ = (\lowestValue[0]~1_combout\ & (((\used_counter[1][2]~regout\) # (!\lowestValue[0]~0_combout\)))) # (!\lowestValue[0]~1_combout\ & (\used_counter[0][2]~regout\ & ((\lowestValue[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][2]~regout\,
	datab => \used_counter[1][2]~regout\,
	datac => \lowestValue[0]~1_combout\,
	datad => \lowestValue[0]~0_combout\,
	combout => \lowestValue~10_combout\);

-- Location: LCCOMB_X45_Y33_N12
\lowestValue~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~11_combout\ = (\lowestValue[0]~0_combout\ & (((\lowestValue~10_combout\)))) # (!\lowestValue[0]~0_combout\ & ((\lowestValue~10_combout\ & ((\used_counter[3][2]~regout\))) # (!\lowestValue~10_combout\ & (\used_counter[2][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][2]~regout\,
	datab => \used_counter[3][2]~regout\,
	datac => \lowestValue[0]~0_combout\,
	datad => \lowestValue~10_combout\,
	combout => \lowestValue~11_combout\);

-- Location: LCCOMB_X45_Y33_N6
\lowestValue~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~12_combout\ = (\LessThan4~14_combout\ & (\used_counter[4][2]~regout\)) # (!\LessThan4~14_combout\ & ((\lowestValue~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][2]~regout\,
	datac => \LessThan4~14_combout\,
	datad => \lowestValue~11_combout\,
	combout => \lowestValue~12_combout\);

-- Location: LCFF_X45_Y33_N7
\lowestValue[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~12_combout\,
	ena => \lowestValue[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(2));

-- Location: LCCOMB_X45_Y32_N22
\used_counter~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~92_combout\ = (\used_counter[2][2]~regout\ & ((\used_counter[2][3]~regout\ $ (lowestValue(3))) # (!lowestValue(2)))) # (!\used_counter[2][2]~regout\ & ((lowestValue(2)) # (\used_counter[2][3]~regout\ $ (lowestValue(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][2]~regout\,
	datab => \used_counter[2][3]~regout\,
	datac => lowestValue(3),
	datad => lowestValue(2),
	combout => \used_counter~92_combout\);

-- Location: LCCOMB_X45_Y32_N14
\used_counter~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~95_combout\ = (\used_counter~93_combout\) # ((\used_counter~94_combout\) # ((\used_counter~91_combout\) # (\used_counter~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~93_combout\,
	datab => \used_counter~94_combout\,
	datac => \used_counter~91_combout\,
	datad => \used_counter~92_combout\,
	combout => \used_counter~95_combout\);

-- Location: LCCOMB_X45_Y32_N30
\used_counter[2][0]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][0]~98_combout\ = (\Equal0~10_combout\ & ((\used_counter[2][0]~97_combout\) # ((!\used_counter~95_combout\ & \always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~97_combout\,
	datab => \used_counter~95_combout\,
	datac => \always0~1_combout\,
	datad => \Equal0~10_combout\,
	combout => \used_counter[2][0]~98_combout\);

-- Location: LCFF_X44_Y32_N31
\used_counter[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[2][7]~111_combout\,
	sclr => \used_counter~96_combout\,
	ena => \used_counter[2][0]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][7]~regout\);

-- Location: LCCOMB_X45_Y34_N12
\used_counter[4][4]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][4]~155_combout\ = (\used_counter[4][4]~regout\ & (\used_counter[4][3]~154\ $ (GND))) # (!\used_counter[4][4]~regout\ & (!\used_counter[4][3]~154\ & VCC))
-- \used_counter[4][4]~156\ = CARRY((\used_counter[4][4]~regout\ & !\used_counter[4][3]~154\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][4]~regout\,
	datad => VCC,
	cin => \used_counter[4][3]~154\,
	combout => \used_counter[4][4]~155_combout\,
	cout => \used_counter[4][4]~156\);

-- Location: LCFF_X45_Y34_N13
\used_counter[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[4][4]~155_combout\,
	sclr => \used_counter~146_combout\,
	ena => \used_counter[4][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][4]~regout\);

-- Location: LCCOMB_X43_Y33_N26
\lowestValue~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~16_combout\ = (\lowestValue[0]~0_combout\ & ((\lowestValue[0]~1_combout\ & ((\used_counter[1][4]~regout\))) # (!\lowestValue[0]~1_combout\ & (\used_counter[0][4]~regout\)))) # (!\lowestValue[0]~0_combout\ & (((\lowestValue[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][4]~regout\,
	datab => \used_counter[1][4]~regout\,
	datac => \lowestValue[0]~0_combout\,
	datad => \lowestValue[0]~1_combout\,
	combout => \lowestValue~16_combout\);

-- Location: LCCOMB_X43_Y32_N22
\lowestValue~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~17_combout\ = (\lowestValue[0]~0_combout\ & (((\lowestValue~16_combout\)))) # (!\lowestValue[0]~0_combout\ & ((\lowestValue~16_combout\ & ((\used_counter[3][4]~regout\))) # (!\lowestValue~16_combout\ & (\used_counter[2][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][4]~regout\,
	datab => \used_counter[3][4]~regout\,
	datac => \lowestValue[0]~0_combout\,
	datad => \lowestValue~16_combout\,
	combout => \lowestValue~17_combout\);

-- Location: LCCOMB_X43_Y32_N20
\lowestValue~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~18_combout\ = (\LessThan4~14_combout\ & (\used_counter[4][4]~regout\)) # (!\LessThan4~14_combout\ & ((\lowestValue~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][4]~regout\,
	datac => \LessThan4~14_combout\,
	datad => \lowestValue~17_combout\,
	combout => \lowestValue~18_combout\);

-- Location: LCFF_X43_Y32_N21
\lowestValue[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~18_combout\,
	ena => \lowestValue[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(4));

-- Location: LCCOMB_X44_Y32_N0
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!lowestValue(0) & \used_counter[2][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(0),
	datab => \used_counter[2][0]~regout\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X44_Y32_N2
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((lowestValue(1) & ((!\LessThan2~1_cout\) # (!\used_counter[2][1]~regout\))) # (!lowestValue(1) & (!\used_counter[2][1]~regout\ & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(1),
	datab => \used_counter[2][1]~regout\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X44_Y32_N4
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\used_counter[2][2]~regout\ & ((!\LessThan2~3_cout\) # (!lowestValue(2)))) # (!\used_counter[2][2]~regout\ & (!lowestValue(2) & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][2]~regout\,
	datab => lowestValue(2),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X44_Y32_N6
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((lowestValue(3) & ((!\LessThan2~5_cout\) # (!\used_counter[2][3]~regout\))) # (!lowestValue(3) & (!\used_counter[2][3]~regout\ & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(3),
	datab => \used_counter[2][3]~regout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X44_Y32_N8
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\used_counter[2][4]~regout\ & ((!\LessThan2~7_cout\) # (!lowestValue(4)))) # (!\used_counter[2][4]~regout\ & (!lowestValue(4) & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][4]~regout\,
	datab => lowestValue(4),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X44_Y32_N10
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((lowestValue(5) & ((!\LessThan2~9_cout\) # (!\used_counter[2][5]~regout\))) # (!lowestValue(5) & (!\used_counter[2][5]~regout\ & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(5),
	datab => \used_counter[2][5]~regout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X44_Y32_N12
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\used_counter[2][6]~regout\ & ((!\LessThan2~11_cout\) # (!lowestValue(6)))) # (!\used_counter[2][6]~regout\ & (!lowestValue(6) & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][6]~regout\,
	datab => lowestValue(6),
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X44_Y32_N14
\LessThan2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (lowestValue(7) & (\LessThan2~13_cout\ & \used_counter[2][7]~regout\)) # (!lowestValue(7) & ((\LessThan2~13_cout\) # (\used_counter[2][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(7),
	datad => \used_counter[2][7]~regout\,
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X43_Y33_N30
\lowestValue[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue[0]~1_combout\ = (\LessThan3~14_combout\) # ((\LessThan1~14_combout\ & !\LessThan2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~14_combout\,
	datac => \LessThan1~14_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue[0]~1_combout\);

-- Location: LCCOMB_X44_Y33_N24
\lowestValue~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~13_combout\ = (\lowestValue[0]~1_combout\ & (((\lowestValue[0]~0_combout\)))) # (!\lowestValue[0]~1_combout\ & ((\lowestValue[0]~0_combout\ & ((\used_counter[0][3]~regout\))) # (!\lowestValue[0]~0_combout\ & (\used_counter[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][3]~regout\,
	datab => \used_counter[0][3]~regout\,
	datac => \lowestValue[0]~1_combout\,
	datad => \lowestValue[0]~0_combout\,
	combout => \lowestValue~13_combout\);

-- Location: LCCOMB_X44_Y33_N30
\lowestValue~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~14_combout\ = (\lowestValue~13_combout\ & ((\used_counter[1][3]~regout\) # ((!\lowestValue[0]~1_combout\)))) # (!\lowestValue~13_combout\ & (((\used_counter[3][3]~regout\ & \lowestValue[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][3]~regout\,
	datab => \used_counter[3][3]~regout\,
	datac => \lowestValue~13_combout\,
	datad => \lowestValue[0]~1_combout\,
	combout => \lowestValue~14_combout\);

-- Location: LCCOMB_X44_Y33_N26
\lowestValue~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~15_combout\ = (\LessThan4~14_combout\ & (\used_counter[4][3]~regout\)) # (!\LessThan4~14_combout\ & ((\lowestValue~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][3]~regout\,
	datab => \LessThan4~14_combout\,
	datad => \lowestValue~14_combout\,
	combout => \lowestValue~15_combout\);

-- Location: LCFF_X44_Y33_N27
\lowestValue[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~15_combout\,
	ena => \lowestValue[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(3));

-- Location: LCCOMB_X45_Y33_N30
\used_counter~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~67_combout\ = (lowestValue(2) & ((lowestValue(3) $ (\used_counter[1][3]~regout\)) # (!\used_counter[1][2]~regout\))) # (!lowestValue(2) & ((\used_counter[1][2]~regout\) # (lowestValue(3) $ (\used_counter[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(2),
	datab => lowestValue(3),
	datac => \used_counter[1][2]~regout\,
	datad => \used_counter[1][3]~regout\,
	combout => \used_counter~67_combout\);

-- Location: LCCOMB_X45_Y33_N20
\used_counter~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~68_combout\ = (\used_counter[1][4]~regout\ & ((\used_counter[1][5]~regout\ $ (lowestValue(5))) # (!lowestValue(4)))) # (!\used_counter[1][4]~regout\ & ((lowestValue(4)) # (\used_counter[1][5]~regout\ $ (lowestValue(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][4]~regout\,
	datab => \used_counter[1][5]~regout\,
	datac => lowestValue(4),
	datad => lowestValue(5),
	combout => \used_counter~68_combout\);

-- Location: LCFF_X46_Y33_N25
\used_counter[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[1][6]~84_combout\,
	sclr => \used_counter~71_combout\,
	ena => \used_counter[1][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][6]~regout\);

-- Location: LCCOMB_X45_Y33_N14
\used_counter~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~69_combout\ = (lowestValue(6) & ((\used_counter[1][7]~regout\ $ (lowestValue(7))) # (!\used_counter[1][6]~regout\))) # (!lowestValue(6) & ((\used_counter[1][6]~regout\) # (\used_counter[1][7]~regout\ $ (lowestValue(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(6),
	datab => \used_counter[1][6]~regout\,
	datac => \used_counter[1][7]~regout\,
	datad => lowestValue(7),
	combout => \used_counter~69_combout\);

-- Location: LCCOMB_X45_Y33_N0
\used_counter~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~70_combout\ = (\used_counter~66_combout\) # ((\used_counter~67_combout\) # ((\used_counter~68_combout\) # (\used_counter~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~66_combout\,
	datab => \used_counter~67_combout\,
	datac => \used_counter~68_combout\,
	datad => \used_counter~69_combout\,
	combout => \used_counter~70_combout\);

-- Location: LCCOMB_X46_Y33_N0
\used_counter~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~71_combout\ = (\b1~combout\) # (((!\used_counter~70_combout\ & \always0~1_combout\)) # (!\b2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \b2~combout\,
	datac => \used_counter~70_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter~71_combout\);

-- Location: LCFF_X46_Y33_N15
\used_counter[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[1][1]~74_combout\,
	sclr => \used_counter~71_combout\,
	ena => \used_counter[1][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][1]~regout\);

-- Location: LCFF_X46_Y33_N13
\used_counter[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[1][0]~64_combout\,
	sclr => \used_counter~71_combout\,
	ena => \used_counter[1][0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][0]~regout\);

-- Location: LCCOMB_X45_Y33_N18
\WideNor1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor1~0_combout\ = (\used_counter[1][2]~regout\) # ((\used_counter[1][1]~regout\) # ((\used_counter[1][0]~regout\) # (\used_counter[1][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][2]~regout\,
	datab => \used_counter[1][1]~regout\,
	datac => \used_counter[1][0]~regout\,
	datad => \used_counter[1][3]~regout\,
	combout => \WideNor1~0_combout\);

-- Location: LCFF_X42_Y32_N7
\used_counter[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[0][0]~40_combout\,
	sclr => \used_counter[0][1]~47_combout\,
	ena => \used_counter[0][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][0]~regout\);

-- Location: LCCOMB_X43_Y32_N24
\WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (\used_counter[0][1]~regout\) # ((\used_counter[0][0]~regout\) # ((\used_counter[0][2]~regout\) # (\used_counter[0][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][1]~regout\,
	datab => \used_counter[0][0]~regout\,
	datac => \used_counter[0][2]~regout\,
	datad => \used_counter[0][3]~regout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X44_Y33_N20
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\WideNor1~1_combout\ & (((\WideNor0~1_combout\) # (\WideNor0~0_combout\)))) # (!\WideNor1~1_combout\ & (\WideNor1~0_combout\ & ((\WideNor0~1_combout\) # (\WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor1~1_combout\,
	datab => \WideNor1~0_combout\,
	datac => \WideNor0~1_combout\,
	datad => \WideNor0~0_combout\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X44_Y32_N24
\used_counter[2][4]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][4]~105_combout\ = (\used_counter[2][4]~regout\ & (\used_counter[2][3]~104\ $ (GND))) # (!\used_counter[2][4]~regout\ & (!\used_counter[2][3]~104\ & VCC))
-- \used_counter[2][4]~106\ = CARRY((\used_counter[2][4]~regout\ & !\used_counter[2][3]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][4]~regout\,
	datad => VCC,
	cin => \used_counter[2][3]~104\,
	combout => \used_counter[2][4]~105_combout\,
	cout => \used_counter[2][4]~106\);

-- Location: LCFF_X44_Y32_N25
\used_counter[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[2][4]~105_combout\,
	sclr => \used_counter~96_combout\,
	ena => \used_counter[2][0]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][4]~regout\);

-- Location: LCCOMB_X43_Y32_N4
\WideNor2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor2~1_combout\ = (\used_counter[2][5]~regout\) # ((\used_counter[2][6]~regout\) # ((\used_counter[2][4]~regout\) # (\used_counter[2][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][5]~regout\,
	datab => \used_counter[2][6]~regout\,
	datac => \used_counter[2][4]~regout\,
	datad => \used_counter[2][7]~regout\,
	combout => \WideNor2~1_combout\);

-- Location: LCCOMB_X45_Y32_N26
\WideNor2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor2~0_combout\ = (\used_counter[2][2]~regout\) # ((\used_counter[2][1]~regout\) # ((\used_counter[2][3]~regout\) # (\used_counter[2][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][2]~regout\,
	datab => \used_counter[2][1]~regout\,
	datac => \used_counter[2][3]~regout\,
	datad => \used_counter[2][0]~regout\,
	combout => \WideNor2~0_combout\);

-- Location: LCCOMB_X44_Y33_N0
WideNor2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor2~combout\ = (!\WideNor2~1_combout\ & !\WideNor2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor2~1_combout\,
	datad => \WideNor2~0_combout\,
	combout => \WideNor2~combout\);

-- Location: LCCOMB_X44_Y33_N22
\always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (!\WideNor3~combout\ & (!\WideNor4~combout\ & (\always0~0_combout\ & !\WideNor2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor3~combout\,
	datab => \WideNor4~combout\,
	datac => \always0~0_combout\,
	datad => \WideNor2~combout\,
	combout => \always0~1_combout\);

-- Location: LCCOMB_X45_Y32_N20
\used_counter~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~96_combout\ = ((\always0~1_combout\ & !\used_counter~95_combout\)) # (!\used_counter~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~90_combout\,
	datac => \always0~1_combout\,
	datad => \used_counter~95_combout\,
	combout => \used_counter~96_combout\);

-- Location: LCFF_X44_Y32_N19
\used_counter[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[2][1]~99_combout\,
	sclr => \used_counter~96_combout\,
	ena => \used_counter[2][0]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][1]~regout\);

-- Location: LCCOMB_X44_Y32_N22
\used_counter[2][3]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][3]~103_combout\ = (\used_counter[2][3]~regout\ & (!\used_counter[2][2]~102\)) # (!\used_counter[2][3]~regout\ & ((\used_counter[2][2]~102\) # (GND)))
-- \used_counter[2][3]~104\ = CARRY((!\used_counter[2][2]~102\) # (!\used_counter[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[2][3]~regout\,
	datad => VCC,
	cin => \used_counter[2][2]~102\,
	combout => \used_counter[2][3]~103_combout\,
	cout => \used_counter[2][3]~104\);

-- Location: LCFF_X44_Y32_N23
\used_counter[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[2][3]~103_combout\,
	sclr => \used_counter~96_combout\,
	ena => \used_counter[2][0]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][3]~regout\);

-- Location: LCCOMB_X44_Y32_N26
\used_counter[2][5]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][5]~107_combout\ = (\used_counter[2][5]~regout\ & (!\used_counter[2][4]~106\)) # (!\used_counter[2][5]~regout\ & ((\used_counter[2][4]~106\) # (GND)))
-- \used_counter[2][5]~108\ = CARRY((!\used_counter[2][4]~106\) # (!\used_counter[2][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[2][5]~regout\,
	datad => VCC,
	cin => \used_counter[2][4]~106\,
	combout => \used_counter[2][5]~107_combout\,
	cout => \used_counter[2][5]~108\);

-- Location: LCFF_X44_Y32_N27
\used_counter[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[2][5]~107_combout\,
	sclr => \used_counter~96_combout\,
	ena => \used_counter[2][0]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][5]~regout\);

-- Location: LCFF_X44_Y32_N29
\used_counter[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[2][6]~109_combout\,
	sclr => \used_counter~96_combout\,
	ena => \used_counter[2][0]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][6]~regout\);

-- Location: LCCOMB_X43_Y32_N0
\lowestValue~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~22_combout\ = (\lowestValue[0]~0_combout\ & ((\lowestValue[0]~1_combout\ & (\used_counter[1][6]~regout\)) # (!\lowestValue[0]~1_combout\ & ((\used_counter[0][6]~regout\))))) # (!\lowestValue[0]~0_combout\ & (((\lowestValue[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][6]~regout\,
	datab => \used_counter[0][6]~regout\,
	datac => \lowestValue[0]~0_combout\,
	datad => \lowestValue[0]~1_combout\,
	combout => \lowestValue~22_combout\);

-- Location: LCCOMB_X43_Y32_N30
\lowestValue~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~23_combout\ = (\lowestValue[0]~0_combout\ & (((\lowestValue~22_combout\)))) # (!\lowestValue[0]~0_combout\ & ((\lowestValue~22_combout\ & (\used_counter[3][6]~regout\)) # (!\lowestValue~22_combout\ & ((\used_counter[2][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][6]~regout\,
	datab => \used_counter[2][6]~regout\,
	datac => \lowestValue[0]~0_combout\,
	datad => \lowestValue~22_combout\,
	combout => \lowestValue~23_combout\);

-- Location: LCCOMB_X43_Y32_N6
\lowestValue~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~24_combout\ = (\LessThan4~14_combout\ & (\used_counter[4][6]~regout\)) # (!\LessThan4~14_combout\ & ((\lowestValue~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][6]~regout\,
	datac => \LessThan4~14_combout\,
	datad => \lowestValue~23_combout\,
	combout => \lowestValue~24_combout\);

-- Location: LCFF_X43_Y32_N7
\lowestValue[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~24_combout\,
	ena => \lowestValue[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(6));

-- Location: LCCOMB_X43_Y33_N0
\LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((\used_counter[3][0]~regout\ & !lowestValue(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][0]~regout\,
	datab => lowestValue(0),
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X43_Y33_N2
\LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\used_counter[3][1]~regout\ & (lowestValue(1) & !\LessThan3~1_cout\)) # (!\used_counter[3][1]~regout\ & ((lowestValue(1)) # (!\LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][1]~regout\,
	datab => lowestValue(1),
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X43_Y33_N4
\LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((lowestValue(2) & (\used_counter[3][2]~regout\ & !\LessThan3~3_cout\)) # (!lowestValue(2) & ((\used_counter[3][2]~regout\) # (!\LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(2),
	datab => \used_counter[3][2]~regout\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X43_Y33_N6
\LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((lowestValue(3) & ((!\LessThan3~5_cout\) # (!\used_counter[3][3]~regout\))) # (!lowestValue(3) & (!\used_counter[3][3]~regout\ & !\LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(3),
	datab => \used_counter[3][3]~regout\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X43_Y33_N8
\LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\used_counter[3][4]~regout\ & ((!\LessThan3~7_cout\) # (!lowestValue(4)))) # (!\used_counter[3][4]~regout\ & (!lowestValue(4) & !\LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][4]~regout\,
	datab => lowestValue(4),
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X43_Y33_N10
\LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\used_counter[3][5]~regout\ & (lowestValue(5) & !\LessThan3~9_cout\)) # (!\used_counter[3][5]~regout\ & ((lowestValue(5)) # (!\LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][5]~regout\,
	datab => lowestValue(5),
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X43_Y33_N12
\LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\used_counter[3][6]~regout\ & ((!\LessThan3~11_cout\) # (!lowestValue(6)))) # (!\used_counter[3][6]~regout\ & (!lowestValue(6) & !\LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][6]~regout\,
	datab => lowestValue(6),
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X43_Y33_N14
\LessThan3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~14_combout\ = (\used_counter[3][7]~regout\ & ((\LessThan3~13_cout\) # (!lowestValue(7)))) # (!\used_counter[3][7]~regout\ & (\LessThan3~13_cout\ & !lowestValue(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][7]~regout\,
	datad => lowestValue(7),
	cin => \LessThan3~13_cout\,
	combout => \LessThan3~14_combout\);

-- Location: LCCOMB_X43_Y33_N16
\lowestValue[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue[0]~0_combout\ = (!\LessThan3~14_combout\ & !\LessThan2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan3~14_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue[0]~0_combout\);

-- Location: LCCOMB_X44_Y33_N8
\lowestValue~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~2_combout\ = (\lowestValue[0]~1_combout\ & ((\used_counter[1][0]~regout\) # ((!\lowestValue[0]~0_combout\)))) # (!\lowestValue[0]~1_combout\ & (((\used_counter[0][0]~regout\ & \lowestValue[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~regout\,
	datab => \used_counter[0][0]~regout\,
	datac => \lowestValue[0]~1_combout\,
	datad => \lowestValue[0]~0_combout\,
	combout => \lowestValue~2_combout\);

-- Location: LCCOMB_X44_Y33_N18
\lowestValue~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~3_combout\ = (\lowestValue[0]~0_combout\ & (((\lowestValue~2_combout\)))) # (!\lowestValue[0]~0_combout\ & ((\lowestValue~2_combout\ & ((\used_counter[3][0]~regout\))) # (!\lowestValue~2_combout\ & (\used_counter[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~regout\,
	datab => \lowestValue[0]~0_combout\,
	datac => \used_counter[3][0]~regout\,
	datad => \lowestValue~2_combout\,
	combout => \lowestValue~3_combout\);

-- Location: LCCOMB_X44_Y33_N16
\lowestValue~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~4_combout\ = (\LessThan4~14_combout\ & (\used_counter[4][0]~regout\)) # (!\LessThan4~14_combout\ & ((\lowestValue~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][0]~regout\,
	datab => \LessThan4~14_combout\,
	datad => \lowestValue~3_combout\,
	combout => \lowestValue~4_combout\);

-- Location: LCFF_X44_Y33_N17
\lowestValue[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~4_combout\,
	ena => \lowestValue[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(0));

-- Location: LCCOMB_X44_Y34_N26
\used_counter~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~141_combout\ = (\used_counter[4][1]~regout\ & ((lowestValue(0) $ (\used_counter[4][0]~regout\)) # (!lowestValue(1)))) # (!\used_counter[4][1]~regout\ & ((lowestValue(1)) # (lowestValue(0) $ (\used_counter[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~regout\,
	datab => lowestValue(0),
	datac => lowestValue(1),
	datad => \used_counter[4][0]~regout\,
	combout => \used_counter~141_combout\);

-- Location: LCCOMB_X44_Y34_N20
\used_counter~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~143_combout\ = (lowestValue(4) & ((\used_counter[4][5]~regout\ $ (lowestValue(5))) # (!\used_counter[4][4]~regout\))) # (!lowestValue(4) & ((\used_counter[4][4]~regout\) # (\used_counter[4][5]~regout\ $ (lowestValue(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(4),
	datab => \used_counter[4][4]~regout\,
	datac => \used_counter[4][5]~regout\,
	datad => lowestValue(5),
	combout => \used_counter~143_combout\);

-- Location: LCCOMB_X45_Y34_N22
\used_counter~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~142_combout\ = (\used_counter[4][2]~regout\ & ((lowestValue(3) $ (\used_counter[4][3]~regout\)) # (!lowestValue(2)))) # (!\used_counter[4][2]~regout\ & ((lowestValue(2)) # (lowestValue(3) $ (\used_counter[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][2]~regout\,
	datab => lowestValue(3),
	datac => lowestValue(2),
	datad => \used_counter[4][3]~regout\,
	combout => \used_counter~142_combout\);

-- Location: LCCOMB_X45_Y34_N0
\used_counter~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~145_combout\ = (\used_counter~144_combout\) # ((\used_counter~141_combout\) # ((\used_counter~143_combout\) # (\used_counter~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~144_combout\,
	datab => \used_counter~141_combout\,
	datac => \used_counter~143_combout\,
	datad => \used_counter~142_combout\,
	combout => \used_counter~145_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b5,
	combout => \b5~combout\);

-- Location: LCCOMB_X45_Y34_N26
\used_counter~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~146_combout\ = (((!\used_counter~145_combout\ & \always0~1_combout\)) # (!\b5~combout\)) # (!\used_counter~140_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~140_combout\,
	datab => \used_counter~145_combout\,
	datac => \b5~combout\,
	datad => \always0~1_combout\,
	combout => \used_counter~146_combout\);

-- Location: LCFF_X45_Y34_N5
\used_counter[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[4][0]~138_combout\,
	sclr => \used_counter~146_combout\,
	ena => \used_counter[4][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][0]~regout\);

-- Location: LCCOMB_X45_Y34_N8
\used_counter[4][2]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][2]~151_combout\ = (\used_counter[4][2]~regout\ & (\used_counter[4][1]~150\ $ (GND))) # (!\used_counter[4][2]~regout\ & (!\used_counter[4][1]~150\ & VCC))
-- \used_counter[4][2]~152\ = CARRY((\used_counter[4][2]~regout\ & !\used_counter[4][1]~150\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][2]~regout\,
	datad => VCC,
	cin => \used_counter[4][1]~150\,
	combout => \used_counter[4][2]~151_combout\,
	cout => \used_counter[4][2]~152\);

-- Location: LCFF_X45_Y34_N9
\used_counter[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[4][2]~151_combout\,
	sclr => \used_counter~146_combout\,
	ena => \used_counter[4][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][2]~regout\);

-- Location: LCCOMB_X45_Y34_N14
\used_counter[4][5]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][5]~157_combout\ = (\used_counter[4][5]~regout\ & (!\used_counter[4][4]~156\)) # (!\used_counter[4][5]~regout\ & ((\used_counter[4][4]~156\) # (GND)))
-- \used_counter[4][5]~158\ = CARRY((!\used_counter[4][4]~156\) # (!\used_counter[4][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][5]~regout\,
	datad => VCC,
	cin => \used_counter[4][4]~156\,
	combout => \used_counter[4][5]~157_combout\,
	cout => \used_counter[4][5]~158\);

-- Location: LCFF_X45_Y34_N15
\used_counter[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[4][5]~157_combout\,
	sclr => \used_counter~146_combout\,
	ena => \used_counter[4][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][5]~regout\);

-- Location: LCCOMB_X45_Y34_N18
\used_counter[4][7]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][7]~161_combout\ = \used_counter[4][6]~160\ $ (\used_counter[4][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter[4][7]~regout\,
	cin => \used_counter[4][6]~160\,
	combout => \used_counter[4][7]~161_combout\);

-- Location: LCFF_X45_Y34_N19
\used_counter[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[4][7]~161_combout\,
	sclr => \used_counter~146_combout\,
	ena => \used_counter[4][0]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][7]~regout\);

-- Location: LCCOMB_X43_Y32_N12
\lowestValue~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~25_combout\ = (\lowestValue[0]~0_combout\ & ((\used_counter[0][7]~regout\) # ((\lowestValue[0]~1_combout\)))) # (!\lowestValue[0]~0_combout\ & (((\used_counter[2][7]~regout\ & !\lowestValue[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][7]~regout\,
	datab => \used_counter[2][7]~regout\,
	datac => \lowestValue[0]~0_combout\,
	datad => \lowestValue[0]~1_combout\,
	combout => \lowestValue~25_combout\);

-- Location: LCCOMB_X43_Y32_N26
\lowestValue~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~26_combout\ = (\lowestValue[0]~1_combout\ & ((\lowestValue~25_combout\ & (\used_counter[1][7]~regout\)) # (!\lowestValue~25_combout\ & ((\used_counter[3][7]~regout\))))) # (!\lowestValue[0]~1_combout\ & (((\lowestValue~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][7]~regout\,
	datab => \used_counter[3][7]~regout\,
	datac => \lowestValue[0]~1_combout\,
	datad => \lowestValue~25_combout\,
	combout => \lowestValue~26_combout\);

-- Location: LCCOMB_X43_Y32_N8
\lowestValue~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~27_combout\ = (\LessThan4~14_combout\ & (\used_counter[4][7]~regout\)) # (!\LessThan4~14_combout\ & ((\lowestValue~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][7]~regout\,
	datac => \LessThan4~14_combout\,
	datad => \lowestValue~26_combout\,
	combout => \lowestValue~27_combout\);

-- Location: LCFF_X43_Y32_N9
\lowestValue[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~27_combout\,
	ena => \lowestValue[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(7));

-- Location: LCCOMB_X44_Y34_N4
\LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((\used_counter[4][0]~regout\ & !lowestValue(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][0]~regout\,
	datab => lowestValue(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X44_Y34_N6
\LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((\used_counter[4][1]~regout\ & (lowestValue(1) & !\LessThan4~1_cout\)) # (!\used_counter[4][1]~regout\ & ((lowestValue(1)) # (!\LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~regout\,
	datab => lowestValue(1),
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X44_Y34_N8
\LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((lowestValue(2) & (\used_counter[4][2]~regout\ & !\LessThan4~3_cout\)) # (!lowestValue(2) & ((\used_counter[4][2]~regout\) # (!\LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(2),
	datab => \used_counter[4][2]~regout\,
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X44_Y34_N10
\LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((lowestValue(3) & ((!\LessThan4~5_cout\) # (!\used_counter[4][3]~regout\))) # (!lowestValue(3) & (!\used_counter[4][3]~regout\ & !\LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(3),
	datab => \used_counter[4][3]~regout\,
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X44_Y34_N12
\LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((lowestValue(4) & (\used_counter[4][4]~regout\ & !\LessThan4~7_cout\)) # (!lowestValue(4) & ((\used_counter[4][4]~regout\) # (!\LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(4),
	datab => \used_counter[4][4]~regout\,
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X44_Y34_N14
\LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((lowestValue(5) & ((!\LessThan4~9_cout\) # (!\used_counter[4][5]~regout\))) # (!lowestValue(5) & (!\used_counter[4][5]~regout\ & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(5),
	datab => \used_counter[4][5]~regout\,
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X44_Y34_N16
\LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((\used_counter[4][6]~regout\ & ((!\LessThan4~11_cout\) # (!lowestValue(6)))) # (!\used_counter[4][6]~regout\ & (!lowestValue(6) & !\LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][6]~regout\,
	datab => lowestValue(6),
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X44_Y34_N18
\LessThan4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~14_combout\ = (lowestValue(7) & (\LessThan4~13_cout\ & \used_counter[4][7]~regout\)) # (!lowestValue(7) & ((\LessThan4~13_cout\) # (\used_counter[4][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lowestValue(7),
	datad => \used_counter[4][7]~regout\,
	cin => \LessThan4~13_cout\,
	combout => \LessThan4~14_combout\);

-- Location: LCCOMB_X43_Y32_N18
\lowestValue~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~7_combout\ = (\lowestValue[0]~0_combout\ & ((\used_counter[0][1]~regout\) # ((\lowestValue[0]~1_combout\)))) # (!\lowestValue[0]~0_combout\ & (((\used_counter[2][1]~regout\ & !\lowestValue[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][1]~regout\,
	datab => \used_counter[2][1]~regout\,
	datac => \lowestValue[0]~0_combout\,
	datad => \lowestValue[0]~1_combout\,
	combout => \lowestValue~7_combout\);

-- Location: LCCOMB_X43_Y32_N28
\lowestValue~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~8_combout\ = (\lowestValue[0]~1_combout\ & ((\lowestValue~7_combout\ & (\used_counter[1][1]~regout\)) # (!\lowestValue~7_combout\ & ((\used_counter[3][1]~regout\))))) # (!\lowestValue[0]~1_combout\ & (((\lowestValue~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][1]~regout\,
	datab => \used_counter[3][1]~regout\,
	datac => \lowestValue[0]~1_combout\,
	datad => \lowestValue~7_combout\,
	combout => \lowestValue~8_combout\);

-- Location: LCCOMB_X43_Y32_N10
\lowestValue~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~9_combout\ = (\LessThan4~14_combout\ & (\used_counter[4][1]~regout\)) # (!\LessThan4~14_combout\ & ((\lowestValue~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~regout\,
	datac => \LessThan4~14_combout\,
	datad => \lowestValue~8_combout\,
	combout => \lowestValue~9_combout\);

-- Location: LCFF_X43_Y32_N11
\lowestValue[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~9_combout\,
	ena => \lowestValue[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(1));

-- Location: LCCOMB_X42_Y32_N0
\used_counter[0][1]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][1]~42_combout\ = (lowestValue(0) & ((lowestValue(1) $ (\used_counter[0][1]~regout\)) # (!\used_counter[0][0]~regout\))) # (!lowestValue(0) & ((\used_counter[0][0]~regout\) # (lowestValue(1) $ (\used_counter[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(0),
	datab => lowestValue(1),
	datac => \used_counter[0][1]~regout\,
	datad => \used_counter[0][0]~regout\,
	combout => \used_counter[0][1]~42_combout\);

-- Location: LCCOMB_X41_Y32_N20
\used_counter[0][1]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][1]~43_combout\ = (\used_counter[0][3]~regout\ & ((\used_counter[0][2]~regout\ $ (lowestValue(2))) # (!lowestValue(3)))) # (!\used_counter[0][3]~regout\ & ((lowestValue(3)) # (\used_counter[0][2]~regout\ $ (lowestValue(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][3]~regout\,
	datab => \used_counter[0][2]~regout\,
	datac => lowestValue(2),
	datad => lowestValue(3),
	combout => \used_counter[0][1]~43_combout\);

-- Location: LCCOMB_X43_Y32_N14
\used_counter[0][1]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][1]~45_combout\ = (\used_counter[0][7]~regout\ & ((\used_counter[0][6]~regout\ $ (lowestValue(6))) # (!lowestValue(7)))) # (!\used_counter[0][7]~regout\ & ((lowestValue(7)) # (\used_counter[0][6]~regout\ $ (lowestValue(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][7]~regout\,
	datab => \used_counter[0][6]~regout\,
	datac => lowestValue(7),
	datad => lowestValue(6),
	combout => \used_counter[0][1]~45_combout\);

-- Location: LCCOMB_X42_Y32_N26
\used_counter[0][1]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][1]~46_combout\ = (\used_counter[0][1]~44_combout\) # ((\used_counter[0][1]~42_combout\) # ((\used_counter[0][1]~43_combout\) # (\used_counter[0][1]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][1]~44_combout\,
	datab => \used_counter[0][1]~42_combout\,
	datac => \used_counter[0][1]~43_combout\,
	datad => \used_counter[0][1]~45_combout\,
	combout => \used_counter[0][1]~46_combout\);

-- Location: LCCOMB_X42_Y32_N4
\used_counter[0][1]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][1]~47_combout\ = ((!\used_counter[0][1]~46_combout\ & \always0~1_combout\)) # (!\b1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][1]~46_combout\,
	datac => \b1~combout\,
	datad => \always0~1_combout\,
	combout => \used_counter[0][1]~47_combout\);

-- Location: LCFF_X42_Y32_N9
\used_counter[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[0][1]~50_combout\,
	sclr => \used_counter[0][1]~47_combout\,
	ena => \used_counter[0][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][1]~regout\);

-- Location: LCCOMB_X42_Y32_N10
\used_counter[0][2]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][2]~52_combout\ = (\used_counter[0][2]~regout\ & (\used_counter[0][1]~51\ $ (GND))) # (!\used_counter[0][2]~regout\ & (!\used_counter[0][1]~51\ & VCC))
-- \used_counter[0][2]~53\ = CARRY((\used_counter[0][2]~regout\ & !\used_counter[0][1]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][2]~regout\,
	datad => VCC,
	cin => \used_counter[0][1]~51\,
	combout => \used_counter[0][2]~52_combout\,
	cout => \used_counter[0][2]~53\);

-- Location: LCFF_X42_Y32_N11
\used_counter[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[0][2]~52_combout\,
	sclr => \used_counter[0][1]~47_combout\,
	ena => \used_counter[0][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][2]~regout\);

-- Location: LCCOMB_X42_Y32_N12
\used_counter[0][3]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][3]~54_combout\ = (\used_counter[0][3]~regout\ & (!\used_counter[0][2]~53\)) # (!\used_counter[0][3]~regout\ & ((\used_counter[0][2]~53\) # (GND)))
-- \used_counter[0][3]~55\ = CARRY((!\used_counter[0][2]~53\) # (!\used_counter[0][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][3]~regout\,
	datad => VCC,
	cin => \used_counter[0][2]~53\,
	combout => \used_counter[0][3]~54_combout\,
	cout => \used_counter[0][3]~55\);

-- Location: LCFF_X42_Y32_N13
\used_counter[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[0][3]~54_combout\,
	sclr => \used_counter[0][1]~47_combout\,
	ena => \used_counter[0][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][3]~regout\);

-- Location: LCCOMB_X42_Y32_N14
\used_counter[0][4]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][4]~56_combout\ = (\used_counter[0][4]~regout\ & (\used_counter[0][3]~55\ $ (GND))) # (!\used_counter[0][4]~regout\ & (!\used_counter[0][3]~55\ & VCC))
-- \used_counter[0][4]~57\ = CARRY((\used_counter[0][4]~regout\ & !\used_counter[0][3]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][4]~regout\,
	datad => VCC,
	cin => \used_counter[0][3]~55\,
	combout => \used_counter[0][4]~56_combout\,
	cout => \used_counter[0][4]~57\);

-- Location: LCFF_X42_Y32_N15
\used_counter[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[0][4]~56_combout\,
	sclr => \used_counter[0][1]~47_combout\,
	ena => \used_counter[0][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][4]~regout\);

-- Location: LCCOMB_X42_Y32_N18
\used_counter[0][6]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][6]~60_combout\ = (\used_counter[0][6]~regout\ & (\used_counter[0][5]~59\ $ (GND))) # (!\used_counter[0][6]~regout\ & (!\used_counter[0][5]~59\ & VCC))
-- \used_counter[0][6]~61\ = CARRY((\used_counter[0][6]~regout\ & !\used_counter[0][5]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][6]~regout\,
	datad => VCC,
	cin => \used_counter[0][5]~59\,
	combout => \used_counter[0][6]~60_combout\,
	cout => \used_counter[0][6]~61\);

-- Location: LCFF_X42_Y32_N19
\used_counter[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[0][6]~60_combout\,
	sclr => \used_counter[0][1]~47_combout\,
	ena => \used_counter[0][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][6]~regout\);

-- Location: LCCOMB_X42_Y32_N20
\used_counter[0][7]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][7]~62_combout\ = \used_counter[0][7]~regout\ $ (\used_counter[0][6]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][7]~regout\,
	cin => \used_counter[0][6]~61\,
	combout => \used_counter[0][7]~62_combout\);

-- Location: LCFF_X42_Y32_N21
\used_counter[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[0][7]~62_combout\,
	sclr => \used_counter[0][1]~47_combout\,
	ena => \used_counter[0][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][7]~regout\);

-- Location: LCCOMB_X43_Y32_N2
\WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (\used_counter[0][4]~regout\) # ((\used_counter[0][6]~regout\) # ((\used_counter[0][7]~regout\) # (\used_counter[0][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][4]~regout\,
	datab => \used_counter[0][6]~regout\,
	datac => \used_counter[0][7]~regout\,
	datad => \used_counter[0][5]~regout\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X44_Y33_N12
WideNor0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (!\WideNor0~1_combout\ & !\WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor0~1_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideNor0~combout\);

-- Location: LCFF_X44_Y33_N13
\l1~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideNor0~combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1~reg0_regout\);

-- Location: LCCOMB_X45_Y33_N16
\WideNor1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor1~1_combout\ = (\used_counter[1][7]~regout\) # ((\used_counter[1][5]~regout\) # ((\used_counter[1][4]~regout\) # (\used_counter[1][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][7]~regout\,
	datab => \used_counter[1][5]~regout\,
	datac => \used_counter[1][4]~regout\,
	datad => \used_counter[1][6]~regout\,
	combout => \WideNor1~1_combout\);

-- Location: LCCOMB_X45_Y33_N28
WideNor1 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor1~combout\ = (!\WideNor1~1_combout\ & !\WideNor1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor1~1_combout\,
	datad => \WideNor1~0_combout\,
	combout => \WideNor1~combout\);

-- Location: LCFF_X45_Y33_N29
\l2~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideNor1~combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2~reg0_regout\);

-- Location: LCCOMB_X44_Y33_N2
\l3~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3~reg0feeder_combout\ = \WideNor2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WideNor2~combout\,
	combout => \l3~reg0feeder_combout\);

-- Location: LCFF_X44_Y33_N3
\l3~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l3~reg0feeder_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3~reg0_regout\);

-- Location: LCCOMB_X43_Y33_N20
\WideNor3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor3~0_combout\ = (\used_counter[3][0]~regout\) # ((\used_counter[3][2]~regout\) # ((\used_counter[3][3]~regout\) # (\used_counter[3][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][0]~regout\,
	datab => \used_counter[3][2]~regout\,
	datac => \used_counter[3][3]~regout\,
	datad => \used_counter[3][1]~regout\,
	combout => \WideNor3~0_combout\);

-- Location: LCFF_X42_Y33_N11
\used_counter[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter[3][5]~132_combout\,
	sclr => \used_counter~121_combout\,
	ena => \used_counter[3][0]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][5]~regout\);

-- Location: LCCOMB_X41_Y33_N16
\WideNor3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor3~1_combout\ = (\used_counter[3][6]~regout\) # ((\used_counter[3][5]~regout\) # ((\used_counter[3][7]~regout\) # (\used_counter[3][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][6]~regout\,
	datab => \used_counter[3][5]~regout\,
	datac => \used_counter[3][7]~regout\,
	datad => \used_counter[3][4]~regout\,
	combout => \WideNor3~1_combout\);

-- Location: LCCOMB_X44_Y33_N10
WideNor3 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor3~combout\ = (!\WideNor3~0_combout\ & !\WideNor3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor3~0_combout\,
	datad => \WideNor3~1_combout\,
	combout => \WideNor3~combout\);

-- Location: LCCOMB_X44_Y33_N4
\l4~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4~reg0feeder_combout\ = \WideNor3~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WideNor3~combout\,
	combout => \l4~reg0feeder_combout\);

-- Location: LCFF_X44_Y33_N5
\l4~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l4~reg0feeder_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4~reg0_regout\);

-- Location: LCFF_X44_Y33_N7
\l5~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \WideNor4~combout\,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l5~reg0_regout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l1~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l1);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l2~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l2);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l3~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l3);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l4);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l5~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l5);
END structure;


