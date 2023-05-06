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

-- DATE "05/06/2023 14:03:32"

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
-- l1	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l2	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l3	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l4	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l5	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b1	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b5	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b4	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b3	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b2	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \t|Add0~12_combout\ : std_logic;
SIGNAL \t|Add0~34_combout\ : std_logic;
SIGNAL \t|Add0~44_combout\ : std_logic;
SIGNAL \t|Add0~54_combout\ : std_logic;
SIGNAL \t|Add0~60_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \used_counter[0][4]~regout\ : std_logic;
SIGNAL \used_counter[4][5]~regout\ : std_logic;
SIGNAL \used_counter[4][1]~regout\ : std_logic;
SIGNAL \used_counter[1][6]~regout\ : std_logic;
SIGNAL \used_counter[1][5]~regout\ : std_logic;
SIGNAL \used_counter[1][3]~regout\ : std_logic;
SIGNAL \used_counter[1][0]~regout\ : std_logic;
SIGNAL \used_counter[2][4]~regout\ : std_logic;
SIGNAL \used_counter[2][1]~regout\ : std_logic;
SIGNAL \used_counter[3][7]~regout\ : std_logic;
SIGNAL \used_counter[3][3]~regout\ : std_logic;
SIGNAL \used_counter~2_combout\ : std_logic;
SIGNAL \used_counter~5_combout\ : std_logic;
SIGNAL \used_counter~9_combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \used_counter~14_combout\ : std_logic;
SIGNAL \used_counter~17_combout\ : std_logic;
SIGNAL \used_counter~21_combout\ : std_logic;
SIGNAL \used_counter~25_combout\ : std_logic;
SIGNAL \used_counter~28_combout\ : std_logic;
SIGNAL \used_counter~32_combout\ : std_logic;
SIGNAL \used_counter~36_combout\ : std_logic;
SIGNAL \used_counter~39_combout\ : std_logic;
SIGNAL \used_counter~43_combout\ : std_logic;
SIGNAL \used_counter~49_combout\ : std_logic;
SIGNAL \used_counter~50_combout\ : std_logic;
SIGNAL \used_counter~51_combout\ : std_logic;
SIGNAL \used_counter~52_combout\ : std_logic;
SIGNAL \used_counter~58_combout\ : std_logic;
SIGNAL \used_counter~64_combout\ : std_logic;
SIGNAL \used_counter~68_combout\ : std_logic;
SIGNAL \lowestValue~40_combout\ : std_logic;
SIGNAL \used_counter~71_combout\ : std_logic;
SIGNAL \used_counter~72_combout\ : std_logic;
SIGNAL \used_counter~74_combout\ : std_logic;
SIGNAL \used_counter~78_combout\ : std_logic;
SIGNAL \used_counter~83_combout\ : std_logic;
SIGNAL \used_counter~86_combout\ : std_logic;
SIGNAL \used_counter~89_combout\ : std_logic;
SIGNAL \used_counter~93_combout\ : std_logic;
SIGNAL \t|Equal0~2_combout\ : std_logic;
SIGNAL \t|Equal0~5_combout\ : std_logic;
SIGNAL \t|Equal0~6_combout\ : std_logic;
SIGNAL \t|Equal0~7_combout\ : std_logic;
SIGNAL \t|counter~2_combout\ : std_logic;
SIGNAL \t|counter~4_combout\ : std_logic;
SIGNAL \t|counter~6_combout\ : std_logic;
SIGNAL \t|counter~7_combout\ : std_logic;
SIGNAL \t|counter~13_combout\ : std_logic;
SIGNAL \t|counter~15_combout\ : std_logic;
SIGNAL \t|counter~22_combout\ : std_logic;
SIGNAL \t|counter~25_combout\ : std_logic;
SIGNAL \t|counter~27_combout\ : std_logic;
SIGNAL \t|counter~28_combout\ : std_logic;
SIGNAL \t|counter~30_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \b4~combout\ : std_logic;
SIGNAL \b5~combout\ : std_logic;
SIGNAL \b1~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \t|counter~26_combout\ : std_logic;
SIGNAL \t|counter~18_combout\ : std_logic;
SIGNAL \t|counter~5_combout\ : std_logic;
SIGNAL \t|counter~1_combout\ : std_logic;
SIGNAL \t|Add0~0_combout\ : std_logic;
SIGNAL \t|counter~0_combout\ : std_logic;
SIGNAL \t|Add0~1\ : std_logic;
SIGNAL \t|Add0~3\ : std_logic;
SIGNAL \t|Add0~5\ : std_logic;
SIGNAL \t|Add0~6_combout\ : std_logic;
SIGNAL \t|counter~3_combout\ : std_logic;
SIGNAL \t|Add0~7\ : std_logic;
SIGNAL \t|Add0~9\ : std_logic;
SIGNAL \t|Add0~11\ : std_logic;
SIGNAL \t|Add0~13\ : std_logic;
SIGNAL \t|Add0~15\ : std_logic;
SIGNAL \t|Add0~16_combout\ : std_logic;
SIGNAL \t|counter~8_combout\ : std_logic;
SIGNAL \t|Add0~17\ : std_logic;
SIGNAL \t|Add0~18_combout\ : std_logic;
SIGNAL \t|counter~9_combout\ : std_logic;
SIGNAL \t|Add0~19\ : std_logic;
SIGNAL \t|Add0~20_combout\ : std_logic;
SIGNAL \t|counter~10_combout\ : std_logic;
SIGNAL \t|Add0~21\ : std_logic;
SIGNAL \t|Add0~22_combout\ : std_logic;
SIGNAL \t|counter~11_combout\ : std_logic;
SIGNAL \t|Add0~23\ : std_logic;
SIGNAL \t|Add0~24_combout\ : std_logic;
SIGNAL \t|counter~12_combout\ : std_logic;
SIGNAL \t|Add0~25\ : std_logic;
SIGNAL \t|Add0~27\ : std_logic;
SIGNAL \t|Add0~28_combout\ : std_logic;
SIGNAL \t|counter~14_combout\ : std_logic;
SIGNAL \t|Add0~29\ : std_logic;
SIGNAL \t|Add0~31\ : std_logic;
SIGNAL \t|Add0~32_combout\ : std_logic;
SIGNAL \t|counter~16_combout\ : std_logic;
SIGNAL \t|Add0~33\ : std_logic;
SIGNAL \t|Add0~35\ : std_logic;
SIGNAL \t|Add0~36_combout\ : std_logic;
SIGNAL \t|counter~17_combout\ : std_logic;
SIGNAL \t|Add0~37\ : std_logic;
SIGNAL \t|Add0~38_combout\ : std_logic;
SIGNAL \t|counter~19_combout\ : std_logic;
SIGNAL \t|Add0~39\ : std_logic;
SIGNAL \t|Add0~40_combout\ : std_logic;
SIGNAL \t|counter~20_combout\ : std_logic;
SIGNAL \t|Add0~41\ : std_logic;
SIGNAL \t|Add0~42_combout\ : std_logic;
SIGNAL \t|counter~21_combout\ : std_logic;
SIGNAL \t|Add0~43\ : std_logic;
SIGNAL \t|Add0~45\ : std_logic;
SIGNAL \t|Add0~46_combout\ : std_logic;
SIGNAL \t|counter~23_combout\ : std_logic;
SIGNAL \t|Add0~47\ : std_logic;
SIGNAL \t|Add0~48_combout\ : std_logic;
SIGNAL \t|counter~24_combout\ : std_logic;
SIGNAL \t|Add0~49\ : std_logic;
SIGNAL \t|Add0~50_combout\ : std_logic;
SIGNAL \t|Add0~51\ : std_logic;
SIGNAL \t|Add0~52_combout\ : std_logic;
SIGNAL \t|Equal0~8_combout\ : std_logic;
SIGNAL \t|counter~31_combout\ : std_logic;
SIGNAL \t|Add0~53\ : std_logic;
SIGNAL \t|Add0~55\ : std_logic;
SIGNAL \t|Add0~57\ : std_logic;
SIGNAL \t|Add0~58_combout\ : std_logic;
SIGNAL \t|counter~29_combout\ : std_logic;
SIGNAL \t|Add0~59\ : std_logic;
SIGNAL \t|Add0~61\ : std_logic;
SIGNAL \t|Add0~62_combout\ : std_logic;
SIGNAL \t|Add0~56_combout\ : std_logic;
SIGNAL \t|Equal0~9_combout\ : std_logic;
SIGNAL \t|Add0~8_combout\ : std_logic;
SIGNAL \t|Add0~14_combout\ : std_logic;
SIGNAL \t|Add0~10_combout\ : std_logic;
SIGNAL \t|Equal0~1_combout\ : std_logic;
SIGNAL \t|Add0~30_combout\ : std_logic;
SIGNAL \t|Add0~26_combout\ : std_logic;
SIGNAL \t|Equal0~3_combout\ : std_logic;
SIGNAL \t|Add0~4_combout\ : std_logic;
SIGNAL \t|Add0~2_combout\ : std_logic;
SIGNAL \t|Equal0~0_combout\ : std_logic;
SIGNAL \t|Equal0~4_combout\ : std_logic;
SIGNAL \t|Equal0~10_combout\ : std_logic;
SIGNAL \t|timedClock~0_combout\ : std_logic;
SIGNAL \t|timedClock~regout\ : std_logic;
SIGNAL \addedIndex[2]~6_combout\ : std_logic;
SIGNAL \b2~combout\ : std_logic;
SIGNAL \addedIndex~0_combout\ : std_logic;
SIGNAL \addedIndex~1_combout\ : std_logic;
SIGNAL \addedIndex~4_combout\ : std_logic;
SIGNAL \addedIndex~5_combout\ : std_logic;
SIGNAL \b3~combout\ : std_logic;
SIGNAL \addedIndex~2_combout\ : std_logic;
SIGNAL \addedIndex~3_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \used_counter~96_combout\ : std_logic;
SIGNAL \used_counter[1][6]~13_combout\ : std_logic;
SIGNAL \used_counter[3][0]~regout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \lowestValue~24_combout\ : std_logic;
SIGNAL \used_counter~92_combout\ : std_logic;
SIGNAL \used_counter[3][4]~regout\ : std_logic;
SIGNAL \used_counter~94_combout\ : std_logic;
SIGNAL \used_counter[3][2]~regout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \used_counter~91_combout\ : std_logic;
SIGNAL \used_counter[3][5]~regout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \lowestValue~36_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \used_counter~66_combout\ : std_logic;
SIGNAL \used_counter[4][3]~regout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \used_counter~69_combout\ : std_logic;
SIGNAL \used_counter[4][0]~regout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \used_counter~67_combout\ : std_logic;
SIGNAL \used_counter[4][2]~regout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \lowestValue~39_combout\ : std_logic;
SIGNAL \used_counter~57_combout\ : std_logic;
SIGNAL \used_counter[0][3]~regout\ : std_logic;
SIGNAL \used_counter~56_combout\ : std_logic;
SIGNAL \used_counter[0][2]~regout\ : std_logic;
SIGNAL \used_counter~6_combout\ : std_logic;
SIGNAL \used_counter~7_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \used_counter~61_combout\ : std_logic;
SIGNAL \used_counter[0][7]~regout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \used_counter~33_combout\ : std_logic;
SIGNAL \used_counter~34_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \used_counter~63_combout\ : std_logic;
SIGNAL \used_counter[4][6]~regout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \used_counter~65_combout\ : std_logic;
SIGNAL \used_counter[4][4]~regout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \used_counter~80_combout\ : std_logic;
SIGNAL \used_counter[2][7]~regout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \used_counter~81_combout\ : std_logic;
SIGNAL \used_counter[2][6]~regout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \used_counter~35_combout\ : std_logic;
SIGNAL \used_counter~79_combout\ : std_logic;
SIGNAL \used_counter~87_combout\ : std_logic;
SIGNAL \used_counter[2][0]~regout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \used_counter~85_combout\ : std_logic;
SIGNAL \used_counter[2][2]~regout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \used_counter~84_combout\ : std_logic;
SIGNAL \used_counter[2][3]~regout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \lowestValue~11_combout\ : std_logic;
SIGNAL \lowestValue~2_combout\ : std_logic;
SIGNAL \lowestValue~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \used_counter~54_combout\ : std_logic;
SIGNAL \used_counter[0][0]~regout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \lowestValue~6_combout\ : std_logic;
SIGNAL \lowestValue~14_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \lowestValue~7_combout\ : std_logic;
SIGNAL \lowestValue~15_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \lowestValue~19_combout\ : std_logic;
SIGNAL \lowestValue~27_combout\ : std_logic;
SIGNAL \used_counter~26_combout\ : std_logic;
SIGNAL \used_counter~27_combout\ : std_logic;
SIGNAL \used_counter~29_combout\ : std_logic;
SIGNAL \used_counter~30_combout\ : std_logic;
SIGNAL \used_counter~31_combout\ : std_logic;
SIGNAL \used_counter~82_combout\ : std_logic;
SIGNAL \used_counter[2][5]~regout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \lowestValue~18_combout\ : std_logic;
SIGNAL \lowestValue~26_combout\ : std_logic;
SIGNAL \lowestValue~37_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \lowestValue~5_combout\ : std_logic;
SIGNAL \lowestValue~13_combout\ : std_logic;
SIGNAL \lowestValue~21_combout\ : std_logic;
SIGNAL \lowestValue~29_combout\ : std_logic;
SIGNAL \used_counter~10_combout\ : std_logic;
SIGNAL \used_counter~11_combout\ : std_logic;
SIGNAL \used_counter~12_combout\ : std_logic;
SIGNAL \used_counter~97_combout\ : std_logic;
SIGNAL \used_counter~55_combout\ : std_logic;
SIGNAL \used_counter[0][1]~regout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \lowestValue~4_combout\ : std_logic;
SIGNAL \lowestValue~12_combout\ : std_logic;
SIGNAL \lowestValue~20_combout\ : std_logic;
SIGNAL \lowestValue~28_combout\ : std_logic;
SIGNAL \used_counter~22_combout\ : std_logic;
SIGNAL \used_counter~23_combout\ : std_logic;
SIGNAL \used_counter~24_combout\ : std_logic;
SIGNAL \used_counter~75_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \used_counter~70_combout\ : std_logic;
SIGNAL \used_counter[1][7]~regout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \used_counter~18_combout\ : std_logic;
SIGNAL \used_counter~19_combout\ : std_logic;
SIGNAL \used_counter~15_combout\ : std_logic;
SIGNAL \used_counter~16_combout\ : std_logic;
SIGNAL \used_counter~20_combout\ : std_logic;
SIGNAL \used_counter~77_combout\ : std_logic;
SIGNAL \used_counter[1][1]~regout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \used_counter~76_combout\ : std_logic;
SIGNAL \used_counter[1][2]~regout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \used_counter~73_combout\ : std_logic;
SIGNAL \used_counter[1][4]~regout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \lowestValue[7]~35_combout\ : std_logic;
SIGNAL \lowestValue~1_combout\ : std_logic;
SIGNAL \lowestValue~38_combout\ : std_logic;
SIGNAL \lowestValue~3_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \lowestValue~9_combout\ : std_logic;
SIGNAL \lowestValue~17_combout\ : std_logic;
SIGNAL \lowestValue~25_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~14_combout\ : std_logic;
SIGNAL \used_counter~47_combout\ : std_logic;
SIGNAL \used_counter~48_combout\ : std_logic;
SIGNAL \used_counter~53_combout\ : std_logic;
SIGNAL \used_counter~62_combout\ : std_logic;
SIGNAL \used_counter[4][7]~regout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \lowestValue~34_combout\ : std_logic;
SIGNAL \lowestValue~0_combout\ : std_logic;
SIGNAL \lowestValue~8_combout\ : std_logic;
SIGNAL \lowestValue~16_combout\ : std_logic;
SIGNAL \lowestValue~23_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~14_combout\ : std_logic;
SIGNAL \lowestValue~31_combout\ : std_logic;
SIGNAL \lowestValue~33_combout\ : std_logic;
SIGNAL \used_counter~46_combout\ : std_logic;
SIGNAL \used_counter~44_combout\ : std_logic;
SIGNAL \used_counter~45_combout\ : std_logic;
SIGNAL \used_counter~88_combout\ : std_logic;
SIGNAL \used_counter~90_combout\ : std_logic;
SIGNAL \used_counter[3][6]~regout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \used_counter~40_combout\ : std_logic;
SIGNAL \used_counter~41_combout\ : std_logic;
SIGNAL \used_counter~37_combout\ : std_logic;
SIGNAL \used_counter~38_combout\ : std_logic;
SIGNAL \used_counter~42_combout\ : std_logic;
SIGNAL \used_counter~95_combout\ : std_logic;
SIGNAL \used_counter[3][1]~regout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \lowestValue~22_combout\ : std_logic;
SIGNAL \lowestValue~30_combout\ : std_logic;
SIGNAL \lowestValue~32_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \used_counter~59_combout\ : std_logic;
SIGNAL \used_counter[0][5]~regout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \used_counter~3_combout\ : std_logic;
SIGNAL \used_counter~4_combout\ : std_logic;
SIGNAL \used_counter~8_combout\ : std_logic;
SIGNAL \used_counter~60_combout\ : std_logic;
SIGNAL \used_counter[0][6]~regout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \l1~reg0_regout\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \l2~reg0_regout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr7~1_combout\ : std_logic;
SIGNAL \l3~reg0_regout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr8~1_combout\ : std_logic;
SIGNAL \l4~reg0_regout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \l5~reg0_regout\ : std_logic;
SIGNAL lowestValue : std_logic_vector(7 DOWNTO 0);
SIGNAL addedIndex : std_logic_vector(4 DOWNTO 0);
SIGNAL \t|counter\ : std_logic_vector(31 DOWNTO 0);

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

-- Location: LCCOMB_X43_Y27_N26
\Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\used_counter[4][5]~regout\ & (!\Add4~9\)) # (!\used_counter[4][5]~regout\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\used_counter[4][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][5]~regout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X40_Y26_N8
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\used_counter[3][4]~regout\ & (\Add3~7\ $ (GND))) # (!\used_counter[3][4]~regout\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\used_counter[3][4]~regout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][4]~regout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X43_Y33_N12
\t|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~12_combout\ = (\t|counter\(6) & (\t|Add0~11\ $ (GND))) # (!\t|counter\(6) & (!\t|Add0~11\ & VCC))
-- \t|Add0~13\ = CARRY((\t|counter\(6) & !\t|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(6),
	datad => VCC,
	cin => \t|Add0~11\,
	combout => \t|Add0~12_combout\,
	cout => \t|Add0~13\);

-- Location: LCCOMB_X43_Y32_N2
\t|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~34_combout\ = (\t|counter\(17) & (!\t|Add0~33\)) # (!\t|counter\(17) & ((\t|Add0~33\) # (GND)))
-- \t|Add0~35\ = CARRY((!\t|Add0~33\) # (!\t|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(17),
	datad => VCC,
	cin => \t|Add0~33\,
	combout => \t|Add0~34_combout\,
	cout => \t|Add0~35\);

-- Location: LCCOMB_X43_Y32_N12
\t|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~44_combout\ = (\t|counter\(22) & (\t|Add0~43\ $ (GND))) # (!\t|counter\(22) & (!\t|Add0~43\ & VCC))
-- \t|Add0~45\ = CARRY((\t|counter\(22) & !\t|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(22),
	datad => VCC,
	cin => \t|Add0~43\,
	combout => \t|Add0~44_combout\,
	cout => \t|Add0~45\);

-- Location: LCCOMB_X43_Y32_N22
\t|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~54_combout\ = (\t|counter\(27) & (!\t|Add0~53\)) # (!\t|counter\(27) & ((\t|Add0~53\) # (GND)))
-- \t|Add0~55\ = CARRY((!\t|Add0~53\) # (!\t|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(27),
	datad => VCC,
	cin => \t|Add0~53\,
	combout => \t|Add0~54_combout\,
	cout => \t|Add0~55\);

-- Location: LCCOMB_X43_Y32_N28
\t|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~60_combout\ = (\t|counter\(30) & (\t|Add0~59\ $ (GND))) # (!\t|counter\(30) & (!\t|Add0~59\ & VCC))
-- \t|Add0~61\ = CARRY((\t|counter\(30) & !\t|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(30),
	datad => VCC,
	cin => \t|Add0~59\,
	combout => \t|Add0~60_combout\,
	cout => \t|Add0~61\);

-- Location: LCCOMB_X50_Y26_N24
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\Add0~0_combout\) # ((\Add0~4_combout\) # ((\Add0~2_combout\) # (\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~6_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCFF_X42_Y26_N31
\used_counter[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~58_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][4]~regout\);

-- Location: LCFF_X44_Y27_N7
\used_counter[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~64_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][5]~regout\);

-- Location: LCFF_X44_Y27_N3
\used_counter[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~68_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][1]~regout\);

-- Location: LCFF_X48_Y26_N7
\lowestValue[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~40_combout\,
	ena => \lowestValue[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(2));

-- Location: LCFF_X46_Y27_N21
\used_counter[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~71_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][6]~regout\);

-- Location: LCFF_X45_Y27_N1
\used_counter[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~72_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][5]~regout\);

-- Location: LCFF_X45_Y27_N21
\used_counter[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~74_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][3]~regout\);

-- Location: LCFF_X45_Y27_N11
\used_counter[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~78_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][0]~regout\);

-- Location: LCFF_X49_Y26_N13
\used_counter[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~83_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][4]~regout\);

-- Location: LCFF_X49_Y26_N31
\used_counter[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~86_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][1]~regout\);

-- Location: LCFF_X41_Y26_N27
\used_counter[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~89_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][7]~regout\);

-- Location: LCFF_X41_Y26_N7
\used_counter[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~93_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][3]~regout\);

-- Location: LCCOMB_X43_Y27_N10
\used_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~2_combout\ = (\Add0~10_combout\ & ((\Add4~8_combout\ $ (\Add0~8_combout\)) # (!\Add4~10_combout\))) # (!\Add0~10_combout\ & ((\Add4~10_combout\) # (\Add4~8_combout\ $ (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add4~10_combout\,
	datac => \Add4~8_combout\,
	datad => \Add0~8_combout\,
	combout => \used_counter~2_combout\);

-- Location: LCCOMB_X43_Y27_N8
\used_counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~5_combout\ = (\Add4~12_combout\ & ((\Add0~14_combout\ $ (\Add4~14_combout\)) # (!\Add0~12_combout\))) # (!\Add4~12_combout\ & ((\Add0~12_combout\) # (\Add0~14_combout\ $ (\Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add4~14_combout\,
	combout => \used_counter~5_combout\);

-- Location: LCCOMB_X50_Y26_N30
\used_counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~9_combout\ = (\Add4~4_combout\ & ((\Add4~6_combout\ $ (\Add0~6_combout\)) # (!\Add0~4_combout\))) # (!\Add4~4_combout\ & ((\Add0~4_combout\) # (\Add4~6_combout\ $ (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \Add0~4_combout\,
	datac => \Add4~6_combout\,
	datad => \Add0~6_combout\,
	combout => \used_counter~9_combout\);

-- Location: LCCOMB_X43_Y27_N12
\WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (\Add4~8_combout\) # (\Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~8_combout\,
	datad => \Add4~10_combout\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X40_Y26_N20
\WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (\Add3~10_combout\) # ((\Add3~14_combout\) # ((\Add3~8_combout\) # (\Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add3~14_combout\,
	datac => \Add3~8_combout\,
	datad => \Add3~12_combout\,
	combout => \WideOr3~1_combout\);

-- Location: LCCOMB_X46_Y27_N0
\used_counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~14_combout\ = (\Add1~8_combout\ & ((\Add1~10_combout\ $ (\Add4~10_combout\)) # (!\Add4~8_combout\))) # (!\Add1~8_combout\ & ((\Add4~8_combout\) # (\Add1~10_combout\ $ (\Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~10_combout\,
	datac => \Add4~10_combout\,
	datad => \Add4~8_combout\,
	combout => \used_counter~14_combout\);

-- Location: LCCOMB_X46_Y27_N30
\used_counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~17_combout\ = (\Add4~14_combout\ & ((\Add1~12_combout\ $ (\Add4~12_combout\)) # (!\Add1~14_combout\))) # (!\Add4~14_combout\ & ((\Add1~14_combout\) # (\Add1~12_combout\ $ (\Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \Add1~14_combout\,
	datac => \Add1~12_combout\,
	datad => \Add4~12_combout\,
	combout => \used_counter~17_combout\);

-- Location: LCCOMB_X46_Y27_N2
\used_counter~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~21_combout\ = (\Add1~6_combout\ & ((\Add4~4_combout\ $ (\Add1~4_combout\)) # (!\Add4~6_combout\))) # (!\Add1~6_combout\ & ((\Add4~6_combout\) # (\Add4~4_combout\ $ (\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add4~6_combout\,
	datac => \Add4~4_combout\,
	datad => \Add1~4_combout\,
	combout => \used_counter~21_combout\);

-- Location: LCCOMB_X50_Y26_N26
\used_counter~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~25_combout\ = (\Add4~10_combout\ & ((\Add4~8_combout\ $ (\Add2~8_combout\)) # (!\Add2~10_combout\))) # (!\Add4~10_combout\ & ((\Add2~10_combout\) # (\Add4~8_combout\ $ (\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Add4~8_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~10_combout\,
	combout => \used_counter~25_combout\);

-- Location: LCCOMB_X49_Y26_N10
\used_counter~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~28_combout\ = (\Add4~14_combout\ & ((\Add2~12_combout\ $ (\Add4~12_combout\)) # (!\Add2~14_combout\))) # (!\Add4~14_combout\ & ((\Add2~14_combout\) # (\Add2~12_combout\ $ (\Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~14_combout\,
	datad => \Add4~12_combout\,
	combout => \used_counter~28_combout\);

-- Location: LCCOMB_X50_Y26_N16
\used_counter~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~32_combout\ = (\Add4~4_combout\ & ((\Add4~6_combout\ $ (\Add2~6_combout\)) # (!\Add2~4_combout\))) # (!\Add4~4_combout\ & ((\Add2~4_combout\) # (\Add4~6_combout\ $ (\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \Add2~4_combout\,
	datac => \Add4~6_combout\,
	datad => \Add2~6_combout\,
	combout => \used_counter~32_combout\);

-- Location: LCCOMB_X40_Y26_N30
\used_counter~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~36_combout\ = (\Add4~8_combout\ & ((\Add4~10_combout\ $ (\Add3~10_combout\)) # (!\Add3~8_combout\))) # (!\Add4~8_combout\ & ((\Add3~8_combout\) # (\Add4~10_combout\ $ (\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datab => \Add4~10_combout\,
	datac => \Add3~8_combout\,
	datad => \Add3~10_combout\,
	combout => \used_counter~36_combout\);

-- Location: LCCOMB_X40_Y26_N24
\used_counter~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~39_combout\ = (\Add3~12_combout\ & ((\Add4~14_combout\ $ (\Add3~14_combout\)) # (!\Add4~12_combout\))) # (!\Add3~12_combout\ & ((\Add4~12_combout\) # (\Add4~14_combout\ $ (\Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add4~14_combout\,
	datac => \Add3~14_combout\,
	datad => \Add4~12_combout\,
	combout => \used_counter~39_combout\);

-- Location: LCCOMB_X50_Y26_N22
\used_counter~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~43_combout\ = (\Add4~4_combout\ & ((\Add3~6_combout\ $ (\Add4~6_combout\)) # (!\Add3~4_combout\))) # (!\Add4~4_combout\ & ((\Add3~4_combout\) # (\Add3~6_combout\ $ (\Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \Add3~6_combout\,
	datac => \Add4~6_combout\,
	datad => \Add3~4_combout\,
	combout => \used_counter~43_combout\);

-- Location: LCCOMB_X48_Y26_N26
\used_counter~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~49_combout\ = (\Add4~4_combout\ & ((\Add4~6_combout\ $ (\lowestValue~28_combout\)) # (!\lowestValue~29_combout\))) # (!\Add4~4_combout\ & ((\lowestValue~29_combout\) # (\Add4~6_combout\ $ (\lowestValue~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \Add4~6_combout\,
	datac => \lowestValue~28_combout\,
	datad => \lowestValue~29_combout\,
	combout => \used_counter~49_combout\);

-- Location: LCCOMB_X44_Y27_N12
\used_counter~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~50_combout\ = (\Add4~10_combout\ & ((\Add4~8_combout\ $ (\lowestValue~27_combout\)) # (!\lowestValue~26_combout\))) # (!\Add4~10_combout\ & ((\lowestValue~26_combout\) # (\Add4~8_combout\ $ (\lowestValue~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Add4~8_combout\,
	datac => \lowestValue~26_combout\,
	datad => \lowestValue~27_combout\,
	combout => \used_counter~50_combout\);

-- Location: LCCOMB_X44_Y27_N26
\used_counter~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~51_combout\ = (\Add4~14_combout\ & ((\Add4~12_combout\ $ (\lowestValue~25_combout\)) # (!\lowestValue~24_combout\))) # (!\Add4~14_combout\ & ((\lowestValue~24_combout\) # (\Add4~12_combout\ $ (\lowestValue~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \Add4~12_combout\,
	datac => \lowestValue~25_combout\,
	datad => \lowestValue~24_combout\,
	combout => \used_counter~51_combout\);

-- Location: LCCOMB_X44_Y27_N16
\used_counter~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~52_combout\ = (\used_counter~51_combout\) # ((\used_counter~49_combout\) # (\used_counter~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~51_combout\,
	datac => \used_counter~49_combout\,
	datad => \used_counter~50_combout\,
	combout => \used_counter~52_combout\);

-- Location: LCCOMB_X42_Y26_N30
\used_counter~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~58_combout\ = (!\rst~combout\ & (\Add0~8_combout\ & ((\used_counter~8_combout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add0~8_combout\,
	datac => \used_counter~8_combout\,
	datad => \WideOr5~0_combout\,
	combout => \used_counter~58_combout\);

-- Location: LCCOMB_X44_Y27_N6
\used_counter~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~64_combout\ = (\Add4~10_combout\ & (!\rst~combout\ & \used_counter~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~10_combout\,
	datac => \rst~combout\,
	datad => \used_counter~53_combout\,
	combout => \used_counter~64_combout\);

-- Location: LCCOMB_X44_Y27_N2
\used_counter~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~68_combout\ = (\Add4~2_combout\ & (!\rst~combout\ & \used_counter~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~2_combout\,
	datac => \rst~combout\,
	datad => \used_counter~53_combout\,
	combout => \used_counter~68_combout\);

-- Location: LCCOMB_X48_Y26_N6
\lowestValue~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~40_combout\ = (\Equal5~4_combout\ & (((!\lowestValue~29_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (!\Add4~4_combout\)) # (!\LessThan4~14_combout\ & ((!\lowestValue~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \Equal5~4_combout\,
	datac => \LessThan4~14_combout\,
	datad => \lowestValue~29_combout\,
	combout => \lowestValue~40_combout\);

-- Location: LCCOMB_X46_Y27_N20
\used_counter~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~71_combout\ = (\Add1~12_combout\ & (!\rst~combout\ & ((\used_counter~20_combout\) # (\WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \rst~combout\,
	datac => \used_counter~20_combout\,
	datad => \WideOr6~0_combout\,
	combout => \used_counter~71_combout\);

-- Location: LCCOMB_X45_Y27_N0
\used_counter~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~72_combout\ = (!\rst~combout\ & (\Add1~10_combout\ & ((\WideOr6~0_combout\) # (\used_counter~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add1~10_combout\,
	datac => \WideOr6~0_combout\,
	datad => \used_counter~20_combout\,
	combout => \used_counter~72_combout\);

-- Location: LCCOMB_X45_Y27_N20
\used_counter~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~74_combout\ = (!\rst~combout\ & (\Add1~6_combout\ & ((\WideOr6~0_combout\) # (\used_counter~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add1~6_combout\,
	datac => \WideOr6~0_combout\,
	datad => \used_counter~20_combout\,
	combout => \used_counter~74_combout\);

-- Location: LCCOMB_X45_Y27_N10
\used_counter~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~78_combout\ = (!\rst~combout\ & (\Add1~0_combout\ & ((\WideOr6~0_combout\) # (\used_counter~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add1~0_combout\,
	datac => \WideOr6~0_combout\,
	datad => \used_counter~20_combout\,
	combout => \used_counter~78_combout\);

-- Location: LCCOMB_X49_Y26_N12
\used_counter~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~83_combout\ = (!\rst~combout\ & (\Add2~8_combout\ & ((\used_counter~31_combout\) # (\used_counter~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add2~8_combout\,
	datac => \used_counter~31_combout\,
	datad => \used_counter~79_combout\,
	combout => \used_counter~83_combout\);

-- Location: LCCOMB_X49_Y26_N30
\used_counter~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~86_combout\ = (\Add2~2_combout\ & (!\rst~combout\ & ((\used_counter~31_combout\) # (\used_counter~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \rst~combout\,
	datac => \used_counter~31_combout\,
	datad => \used_counter~79_combout\,
	combout => \used_counter~86_combout\);

-- Location: LCCOMB_X41_Y26_N26
\used_counter~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~89_combout\ = (!\rst~combout\ & (\Add3~14_combout\ & ((\used_counter~42_combout\) # (\used_counter~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add3~14_combout\,
	datac => \used_counter~42_combout\,
	datad => \used_counter~88_combout\,
	combout => \used_counter~89_combout\);

-- Location: LCCOMB_X41_Y26_N6
\used_counter~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~93_combout\ = (!\rst~combout\ & (\Add3~6_combout\ & ((\used_counter~42_combout\) # (\used_counter~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add3~6_combout\,
	datac => \used_counter~42_combout\,
	datad => \used_counter~88_combout\,
	combout => \used_counter~93_combout\);

-- Location: LCFF_X44_Y33_N5
\t|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(2));

-- Location: LCFF_X44_Y33_N7
\t|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(7));

-- Location: LCFF_X44_Y33_N3
\t|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(5));

-- Location: LCFF_X44_Y33_N17
\t|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(4));

-- Location: LCCOMB_X44_Y33_N24
\t|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~2_combout\ = (\t|Add0~22_combout\) # ((\t|Add0~16_combout\) # ((\t|Add0~20_combout\) # (\t|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~22_combout\,
	datab => \t|Add0~16_combout\,
	datac => \t|Add0~20_combout\,
	datad => \t|Add0~18_combout\,
	combout => \t|Equal0~2_combout\);

-- Location: LCFF_X42_Y33_N15
\t|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(13));

-- Location: LCFF_X42_Y33_N31
\t|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(15));

-- Location: LCCOMB_X44_Y32_N2
\t|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~5_combout\ = (\t|Add0~32_combout\) # (((\t|Add0~36_combout\) # (!\t|Add0~34_combout\)) # (!\t|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~32_combout\,
	datab => \t|Add0~38_combout\,
	datac => \t|Add0~36_combout\,
	datad => \t|Add0~34_combout\,
	combout => \t|Equal0~5_combout\);

-- Location: LCCOMB_X42_Y32_N24
\t|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~6_combout\ = (!\t|Add0~40_combout\) # (!\t|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~42_combout\,
	datac => \t|Add0~40_combout\,
	combout => \t|Equal0~6_combout\);

-- Location: LCFF_X43_Y32_N7
\t|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(22));

-- Location: LCCOMB_X42_Y32_N10
\t|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~7_combout\ = (\t|Equal0~6_combout\) # (((\t|Equal0~5_combout\) # (!\t|Add0~44_combout\)) # (!\t|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~6_combout\,
	datab => \t|Add0~46_combout\,
	datac => \t|Add0~44_combout\,
	datad => \t|Equal0~5_combout\,
	combout => \t|Equal0~7_combout\);

-- Location: LCFF_X43_Y32_N13
\t|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(26));

-- Location: LCFF_X43_Y32_N17
\t|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(27));

-- Location: LCFF_X43_Y32_N21
\t|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(28));

-- Location: LCFF_X43_Y32_N25
\t|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(30));

-- Location: LCCOMB_X44_Y33_N4
\t|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~2_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~4_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~4_combout\,
	datad => \rst~combout\,
	combout => \t|counter~2_combout\);

-- Location: LCCOMB_X44_Y33_N6
\t|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~4_combout\ = (\t|Add0~14_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~14_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~4_combout\);

-- Location: LCCOMB_X44_Y33_N2
\t|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~6_combout\ = (\t|Add0~10_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~10_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~6_combout\);

-- Location: LCCOMB_X44_Y33_N16
\t|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~7_combout\ = (\t|Add0~8_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~8_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~7_combout\);

-- Location: LCCOMB_X42_Y33_N14
\t|counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~13_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~26_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~26_combout\,
	datad => \rst~combout\,
	combout => \t|counter~13_combout\);

-- Location: LCCOMB_X42_Y33_N30
\t|counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~15_combout\ = (\t|Add0~30_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~30_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~15_combout\);

-- Location: LCCOMB_X42_Y32_N30
\t|counter~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~22_combout\ = (!\rst~combout\ & (\t|Add0~44_combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~44_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~22_combout\);

-- Location: LCCOMB_X42_Y32_N6
\t|counter~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~25_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~52_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~10_combout\,
	datab => \t|Add0~52_combout\,
	datac => \rst~combout\,
	combout => \t|counter~25_combout\);

-- Location: LCCOMB_X42_Y32_N26
\t|counter~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~27_combout\ = (\t|Equal0~10_combout\ & (!\rst~combout\ & \t|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~10_combout\,
	datab => \rst~combout\,
	datac => \t|Add0~54_combout\,
	combout => \t|counter~27_combout\);

-- Location: LCCOMB_X42_Y32_N8
\t|counter~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~28_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~56_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~10_combout\,
	datab => \t|Add0~56_combout\,
	datac => \rst~combout\,
	combout => \t|counter~28_combout\);

-- Location: LCCOMB_X42_Y32_N20
\t|counter~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~30_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~60_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~10_combout\,
	datab => \t|Add0~60_combout\,
	datac => \rst~combout\,
	combout => \t|counter~30_combout\);

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

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y32_N16
\t|counter~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~26_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~50_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~10_combout\,
	datab => \t|Add0~50_combout\,
	datac => \rst~combout\,
	combout => \t|counter~26_combout\);

-- Location: LCFF_X43_Y32_N15
\t|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(25));

-- Location: LCCOMB_X44_Y32_N30
\t|counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~18_combout\ = (\t|Add0~34_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~34_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~18_combout\);

-- Location: LCFF_X44_Y32_N31
\t|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(17));

-- Location: LCCOMB_X44_Y33_N20
\t|counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~5_combout\ = (\t|Add0~12_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~12_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~5_combout\);

-- Location: LCFF_X44_Y33_N21
\t|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(6));

-- Location: LCCOMB_X44_Y33_N30
\t|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~1_combout\ = (\t|Add0~2_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~2_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~1_combout\);

-- Location: LCFF_X44_Y33_N31
\t|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(1));

-- Location: LCCOMB_X43_Y33_N0
\t|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~0_combout\ = \t|counter\(0) $ (VCC)
-- \t|Add0~1\ = CARRY(\t|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(0),
	datad => VCC,
	combout => \t|Add0~0_combout\,
	cout => \t|Add0~1\);

-- Location: LCCOMB_X44_Y33_N0
\t|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~0_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~0_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~0_combout\,
	datad => \rst~combout\,
	combout => \t|counter~0_combout\);

-- Location: LCFF_X44_Y33_N1
\t|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(0));

-- Location: LCCOMB_X43_Y33_N2
\t|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~2_combout\ = (\t|counter\(1) & (!\t|Add0~1\)) # (!\t|counter\(1) & ((\t|Add0~1\) # (GND)))
-- \t|Add0~3\ = CARRY((!\t|Add0~1\) # (!\t|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(1),
	datad => VCC,
	cin => \t|Add0~1\,
	combout => \t|Add0~2_combout\,
	cout => \t|Add0~3\);

-- Location: LCCOMB_X43_Y33_N4
\t|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~4_combout\ = (\t|counter\(2) & (\t|Add0~3\ $ (GND))) # (!\t|counter\(2) & (!\t|Add0~3\ & VCC))
-- \t|Add0~5\ = CARRY((\t|counter\(2) & !\t|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(2),
	datad => VCC,
	cin => \t|Add0~3\,
	combout => \t|Add0~4_combout\,
	cout => \t|Add0~5\);

-- Location: LCCOMB_X43_Y33_N6
\t|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~6_combout\ = (\t|counter\(3) & (!\t|Add0~5\)) # (!\t|counter\(3) & ((\t|Add0~5\) # (GND)))
-- \t|Add0~7\ = CARRY((!\t|Add0~5\) # (!\t|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(3),
	datad => VCC,
	cin => \t|Add0~5\,
	combout => \t|Add0~6_combout\,
	cout => \t|Add0~7\);

-- Location: LCCOMB_X44_Y33_N14
\t|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~3_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~6_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~6_combout\,
	datad => \rst~combout\,
	combout => \t|counter~3_combout\);

-- Location: LCFF_X44_Y33_N15
\t|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(3));

-- Location: LCCOMB_X43_Y33_N8
\t|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~8_combout\ = (\t|counter\(4) & (\t|Add0~7\ $ (GND))) # (!\t|counter\(4) & (!\t|Add0~7\ & VCC))
-- \t|Add0~9\ = CARRY((\t|counter\(4) & !\t|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(4),
	datad => VCC,
	cin => \t|Add0~7\,
	combout => \t|Add0~8_combout\,
	cout => \t|Add0~9\);

-- Location: LCCOMB_X43_Y33_N10
\t|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~10_combout\ = (\t|counter\(5) & (!\t|Add0~9\)) # (!\t|counter\(5) & ((\t|Add0~9\) # (GND)))
-- \t|Add0~11\ = CARRY((!\t|Add0~9\) # (!\t|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(5),
	datad => VCC,
	cin => \t|Add0~9\,
	combout => \t|Add0~10_combout\,
	cout => \t|Add0~11\);

-- Location: LCCOMB_X43_Y33_N14
\t|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~14_combout\ = (\t|counter\(7) & (!\t|Add0~13\)) # (!\t|counter\(7) & ((\t|Add0~13\) # (GND)))
-- \t|Add0~15\ = CARRY((!\t|Add0~13\) # (!\t|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(7),
	datad => VCC,
	cin => \t|Add0~13\,
	combout => \t|Add0~14_combout\,
	cout => \t|Add0~15\);

-- Location: LCCOMB_X43_Y33_N16
\t|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~16_combout\ = (\t|counter\(8) & (\t|Add0~15\ $ (GND))) # (!\t|counter\(8) & (!\t|Add0~15\ & VCC))
-- \t|Add0~17\ = CARRY((\t|counter\(8) & !\t|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(8),
	datad => VCC,
	cin => \t|Add0~15\,
	combout => \t|Add0~16_combout\,
	cout => \t|Add0~17\);

-- Location: LCCOMB_X44_Y33_N28
\t|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~8_combout\ = (\t|Add0~16_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~16_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~8_combout\);

-- Location: LCFF_X44_Y33_N29
\t|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(8));

-- Location: LCCOMB_X43_Y33_N18
\t|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~18_combout\ = (\t|counter\(9) & (!\t|Add0~17\)) # (!\t|counter\(9) & ((\t|Add0~17\) # (GND)))
-- \t|Add0~19\ = CARRY((!\t|Add0~17\) # (!\t|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(9),
	datad => VCC,
	cin => \t|Add0~17\,
	combout => \t|Add0~18_combout\,
	cout => \t|Add0~19\);

-- Location: LCCOMB_X44_Y33_N10
\t|counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~9_combout\ = (\t|Add0~18_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~18_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~9_combout\);

-- Location: LCFF_X44_Y33_N11
\t|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(9));

-- Location: LCCOMB_X43_Y33_N20
\t|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~20_combout\ = (\t|counter\(10) & (\t|Add0~19\ $ (GND))) # (!\t|counter\(10) & (!\t|Add0~19\ & VCC))
-- \t|Add0~21\ = CARRY((\t|counter\(10) & !\t|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(10),
	datad => VCC,
	cin => \t|Add0~19\,
	combout => \t|Add0~20_combout\,
	cout => \t|Add0~21\);

-- Location: LCCOMB_X44_Y33_N8
\t|counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~10_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~20_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~20_combout\,
	datad => \rst~combout\,
	combout => \t|counter~10_combout\);

-- Location: LCFF_X44_Y33_N9
\t|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(10));

-- Location: LCCOMB_X43_Y33_N22
\t|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~22_combout\ = (\t|counter\(11) & (!\t|Add0~21\)) # (!\t|counter\(11) & ((\t|Add0~21\) # (GND)))
-- \t|Add0~23\ = CARRY((!\t|Add0~21\) # (!\t|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(11),
	datad => VCC,
	cin => \t|Add0~21\,
	combout => \t|Add0~22_combout\,
	cout => \t|Add0~23\);

-- Location: LCCOMB_X44_Y33_N18
\t|counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~11_combout\ = (\t|Add0~22_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~22_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~11_combout\);

-- Location: LCFF_X44_Y33_N19
\t|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(11));

-- Location: LCCOMB_X43_Y33_N24
\t|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~24_combout\ = (\t|counter\(12) & (\t|Add0~23\ $ (GND))) # (!\t|counter\(12) & (!\t|Add0~23\ & VCC))
-- \t|Add0~25\ = CARRY((\t|counter\(12) & !\t|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(12),
	datad => VCC,
	cin => \t|Add0~23\,
	combout => \t|Add0~24_combout\,
	cout => \t|Add0~25\);

-- Location: LCCOMB_X42_Y33_N16
\t|counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~12_combout\ = (\t|Add0~24_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~24_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~12_combout\);

-- Location: LCFF_X42_Y33_N17
\t|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(12));

-- Location: LCCOMB_X43_Y33_N26
\t|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~26_combout\ = (\t|counter\(13) & (!\t|Add0~25\)) # (!\t|counter\(13) & ((\t|Add0~25\) # (GND)))
-- \t|Add0~27\ = CARRY((!\t|Add0~25\) # (!\t|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(13),
	datad => VCC,
	cin => \t|Add0~25\,
	combout => \t|Add0~26_combout\,
	cout => \t|Add0~27\);

-- Location: LCCOMB_X43_Y33_N28
\t|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~28_combout\ = (\t|counter\(14) & (\t|Add0~27\ $ (GND))) # (!\t|counter\(14) & (!\t|Add0~27\ & VCC))
-- \t|Add0~29\ = CARRY((\t|counter\(14) & !\t|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(14),
	datad => VCC,
	cin => \t|Add0~27\,
	combout => \t|Add0~28_combout\,
	cout => \t|Add0~29\);

-- Location: LCCOMB_X42_Y33_N28
\t|counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~14_combout\ = (\t|Add0~28_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~28_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~14_combout\);

-- Location: LCFF_X42_Y33_N29
\t|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(14));

-- Location: LCCOMB_X43_Y33_N30
\t|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~30_combout\ = (\t|counter\(15) & (!\t|Add0~29\)) # (!\t|counter\(15) & ((\t|Add0~29\) # (GND)))
-- \t|Add0~31\ = CARRY((!\t|Add0~29\) # (!\t|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(15),
	datad => VCC,
	cin => \t|Add0~29\,
	combout => \t|Add0~30_combout\,
	cout => \t|Add0~31\);

-- Location: LCCOMB_X43_Y32_N0
\t|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~32_combout\ = (\t|counter\(16) & (\t|Add0~31\ $ (GND))) # (!\t|counter\(16) & (!\t|Add0~31\ & VCC))
-- \t|Add0~33\ = CARRY((\t|counter\(16) & !\t|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(16),
	datad => VCC,
	cin => \t|Add0~31\,
	combout => \t|Add0~32_combout\,
	cout => \t|Add0~33\);

-- Location: LCCOMB_X44_Y32_N14
\t|counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~16_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~32_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~32_combout\,
	datad => \rst~combout\,
	combout => \t|counter~16_combout\);

-- Location: LCFF_X44_Y32_N15
\t|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(16));

-- Location: LCCOMB_X43_Y32_N4
\t|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~36_combout\ = (\t|counter\(18) & (\t|Add0~35\ $ (GND))) # (!\t|counter\(18) & (!\t|Add0~35\ & VCC))
-- \t|Add0~37\ = CARRY((\t|counter\(18) & !\t|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(18),
	datad => VCC,
	cin => \t|Add0~35\,
	combout => \t|Add0~36_combout\,
	cout => \t|Add0~37\);

-- Location: LCCOMB_X44_Y32_N0
\t|counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~17_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~36_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~36_combout\,
	datad => \rst~combout\,
	combout => \t|counter~17_combout\);

-- Location: LCFF_X44_Y32_N1
\t|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(18));

-- Location: LCCOMB_X43_Y32_N6
\t|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~38_combout\ = (\t|counter\(19) & (!\t|Add0~37\)) # (!\t|counter\(19) & ((\t|Add0~37\) # (GND)))
-- \t|Add0~39\ = CARRY((!\t|Add0~37\) # (!\t|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(19),
	datad => VCC,
	cin => \t|Add0~37\,
	combout => \t|Add0~38_combout\,
	cout => \t|Add0~39\);

-- Location: LCCOMB_X44_Y32_N24
\t|counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~19_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~38_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~38_combout\,
	datad => \rst~combout\,
	combout => \t|counter~19_combout\);

-- Location: LCFF_X44_Y32_N25
\t|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(19));

-- Location: LCCOMB_X43_Y32_N8
\t|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~40_combout\ = (\t|counter\(20) & (\t|Add0~39\ $ (GND))) # (!\t|counter\(20) & (!\t|Add0~39\ & VCC))
-- \t|Add0~41\ = CARRY((\t|counter\(20) & !\t|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(20),
	datad => VCC,
	cin => \t|Add0~39\,
	combout => \t|Add0~40_combout\,
	cout => \t|Add0~41\);

-- Location: LCCOMB_X42_Y32_N22
\t|counter~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~20_combout\ = (!\rst~combout\ & (\t|Add0~40_combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~40_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~20_combout\);

-- Location: LCFF_X43_Y32_N1
\t|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(20));

-- Location: LCCOMB_X43_Y32_N10
\t|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~42_combout\ = (\t|counter\(21) & (!\t|Add0~41\)) # (!\t|counter\(21) & ((\t|Add0~41\) # (GND)))
-- \t|Add0~43\ = CARRY((!\t|Add0~41\) # (!\t|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(21),
	datad => VCC,
	cin => \t|Add0~41\,
	combout => \t|Add0~42_combout\,
	cout => \t|Add0~43\);

-- Location: LCCOMB_X42_Y32_N0
\t|counter~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~21_combout\ = (!\rst~combout\ & (\t|Add0~42_combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~42_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~21_combout\);

-- Location: LCFF_X43_Y32_N3
\t|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(21));

-- Location: LCCOMB_X43_Y32_N14
\t|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~46_combout\ = (\t|counter\(23) & (!\t|Add0~45\)) # (!\t|counter\(23) & ((\t|Add0~45\) # (GND)))
-- \t|Add0~47\ = CARRY((!\t|Add0~45\) # (!\t|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(23),
	datad => VCC,
	cin => \t|Add0~45\,
	combout => \t|Add0~46_combout\,
	cout => \t|Add0~47\);

-- Location: LCCOMB_X42_Y32_N4
\t|counter~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~23_combout\ = (!\rst~combout\ & (\t|Add0~46_combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~46_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~23_combout\);

-- Location: LCFF_X43_Y32_N9
\t|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(23));

-- Location: LCCOMB_X43_Y32_N16
\t|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~48_combout\ = (\t|counter\(24) & (\t|Add0~47\ $ (GND))) # (!\t|counter\(24) & (!\t|Add0~47\ & VCC))
-- \t|Add0~49\ = CARRY((\t|counter\(24) & !\t|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(24),
	datad => VCC,
	cin => \t|Add0~47\,
	combout => \t|Add0~48_combout\,
	cout => \t|Add0~49\);

-- Location: LCCOMB_X44_Y32_N20
\t|counter~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~24_combout\ = (\t|Add0~48_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~48_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~24_combout\);

-- Location: LCFF_X44_Y32_N21
\t|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(24));

-- Location: LCCOMB_X43_Y32_N18
\t|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~50_combout\ = (\t|counter\(25) & (!\t|Add0~49\)) # (!\t|counter\(25) & ((\t|Add0~49\) # (GND)))
-- \t|Add0~51\ = CARRY((!\t|Add0~49\) # (!\t|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(25),
	datad => VCC,
	cin => \t|Add0~49\,
	combout => \t|Add0~50_combout\,
	cout => \t|Add0~51\);

-- Location: LCCOMB_X43_Y32_N20
\t|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~52_combout\ = (\t|counter\(26) & (\t|Add0~51\ $ (GND))) # (!\t|counter\(26) & (!\t|Add0~51\ & VCC))
-- \t|Add0~53\ = CARRY((\t|counter\(26) & !\t|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(26),
	datad => VCC,
	cin => \t|Add0~51\,
	combout => \t|Add0~52_combout\,
	cout => \t|Add0~53\);

-- Location: LCCOMB_X42_Y32_N28
\t|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~8_combout\ = (\t|Add0~54_combout\) # (((\t|Add0~48_combout\) # (\t|Add0~52_combout\)) # (!\t|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~54_combout\,
	datab => \t|Add0~50_combout\,
	datac => \t|Add0~48_combout\,
	datad => \t|Add0~52_combout\,
	combout => \t|Equal0~8_combout\);

-- Location: LCCOMB_X42_Y32_N18
\t|counter~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~31_combout\ = (\t|Equal0~10_combout\ & (\t|Add0~62_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~10_combout\,
	datab => \t|Add0~62_combout\,
	datac => \rst~combout\,
	combout => \t|counter~31_combout\);

-- Location: LCFF_X43_Y32_N27
\t|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(31));

-- Location: LCCOMB_X43_Y32_N24
\t|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~56_combout\ = (\t|counter\(28) & (\t|Add0~55\ $ (GND))) # (!\t|counter\(28) & (!\t|Add0~55\ & VCC))
-- \t|Add0~57\ = CARRY((\t|counter\(28) & !\t|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(28),
	datad => VCC,
	cin => \t|Add0~55\,
	combout => \t|Add0~56_combout\,
	cout => \t|Add0~57\);

-- Location: LCCOMB_X43_Y32_N26
\t|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~58_combout\ = (\t|counter\(29) & (!\t|Add0~57\)) # (!\t|counter\(29) & ((\t|Add0~57\) # (GND)))
-- \t|Add0~59\ = CARRY((!\t|Add0~57\) # (!\t|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(29),
	datad => VCC,
	cin => \t|Add0~57\,
	combout => \t|Add0~58_combout\,
	cout => \t|Add0~59\);

-- Location: LCCOMB_X42_Y32_N2
\t|counter~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~29_combout\ = (!\rst~combout\ & (\t|Add0~58_combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~58_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~29_combout\);

-- Location: LCFF_X43_Y32_N23
\t|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(29));

-- Location: LCCOMB_X43_Y32_N30
\t|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~62_combout\ = \t|Add0~61\ $ (\t|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t|counter\(31),
	cin => \t|Add0~61\,
	combout => \t|Add0~62_combout\);

-- Location: LCCOMB_X42_Y32_N14
\t|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~9_combout\ = (\t|Add0~60_combout\) # ((\t|Add0~62_combout\) # ((\t|Add0~58_combout\) # (\t|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~60_combout\,
	datab => \t|Add0~62_combout\,
	datac => \t|Add0~58_combout\,
	datad => \t|Add0~56_combout\,
	combout => \t|Equal0~9_combout\);

-- Location: LCCOMB_X44_Y33_N22
\t|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~1_combout\ = (((\t|Add0~14_combout\) # (!\t|Add0~10_combout\)) # (!\t|Add0~8_combout\)) # (!\t|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~12_combout\,
	datab => \t|Add0~8_combout\,
	datac => \t|Add0~14_combout\,
	datad => \t|Add0~10_combout\,
	combout => \t|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y33_N12
\t|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~3_combout\ = (((!\t|Add0~24_combout\) # (!\t|Add0~26_combout\)) # (!\t|Add0~30_combout\)) # (!\t|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~28_combout\,
	datab => \t|Add0~30_combout\,
	datac => \t|Add0~26_combout\,
	datad => \t|Add0~24_combout\,
	combout => \t|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y33_N12
\t|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~0_combout\ = (((!\t|Add0~2_combout\) # (!\t|Add0~4_combout\)) # (!\t|Add0~6_combout\)) # (!\t|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~0_combout\,
	datab => \t|Add0~6_combout\,
	datac => \t|Add0~4_combout\,
	datad => \t|Add0~2_combout\,
	combout => \t|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y33_N26
\t|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~4_combout\ = (\t|Equal0~2_combout\) # ((\t|Equal0~1_combout\) # ((\t|Equal0~3_combout\) # (\t|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~2_combout\,
	datab => \t|Equal0~1_combout\,
	datac => \t|Equal0~3_combout\,
	datad => \t|Equal0~0_combout\,
	combout => \t|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y32_N12
\t|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~10_combout\ = (\t|Equal0~7_combout\) # ((\t|Equal0~8_combout\) # ((\t|Equal0~9_combout\) # (\t|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~7_combout\,
	datab => \t|Equal0~8_combout\,
	datac => \t|Equal0~9_combout\,
	datad => \t|Equal0~4_combout\,
	combout => \t|Equal0~10_combout\);

-- Location: LCCOMB_X44_Y32_N12
\t|timedClock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|timedClock~0_combout\ = (\rst~combout\ & ((\t|timedClock~regout\))) # (!\rst~combout\ & (!\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Equal0~10_combout\,
	datac => \t|timedClock~regout\,
	datad => \rst~combout\,
	combout => \t|timedClock~0_combout\);

-- Location: LCFF_X44_Y32_N13
\t|timedClock\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|timedClock~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|timedClock~regout\);

-- Location: LCCOMB_X44_Y28_N22
\addedIndex[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \addedIndex[2]~6_combout\ = (\t|timedClock~regout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t|timedClock~regout\,
	datad => \rst~combout\,
	combout => \addedIndex[2]~6_combout\);

-- Location: LCFF_X47_Y27_N13
\addedIndex[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \addedIndex~1_combout\,
	sload => VCC,
	ena => \addedIndex[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addedIndex(0));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X47_Y27_N12
\addedIndex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \addedIndex~0_combout\ = (\b2~combout\) # ((!\b1~combout\ & addedIndex(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => addedIndex(0),
	datad => \b2~combout\,
	combout => \addedIndex~0_combout\);

-- Location: LCCOMB_X47_Y27_N2
\addedIndex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \addedIndex~1_combout\ = (!\b5~combout\ & ((\b4~combout\) # ((!\b3~combout\ & \addedIndex~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b3~combout\,
	datab => \b4~combout\,
	datac => \b5~combout\,
	datad => \addedIndex~0_combout\,
	combout => \addedIndex~1_combout\);

-- Location: LCFF_X47_Y27_N1
\addedIndex[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \addedIndex~5_combout\,
	sload => VCC,
	ena => \addedIndex[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addedIndex(1));

-- Location: LCCOMB_X47_Y27_N0
\addedIndex~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \addedIndex~4_combout\ = (!\b1~combout\ & (addedIndex(1) & !\b2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => addedIndex(1),
	datad => \b2~combout\,
	combout => \addedIndex~4_combout\);

-- Location: LCCOMB_X47_Y27_N14
\addedIndex~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \addedIndex~5_combout\ = (!\b5~combout\ & ((\b3~combout\) # ((\b4~combout\) # (\addedIndex~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b3~combout\,
	datab => \b4~combout\,
	datac => \b5~combout\,
	datad => \addedIndex~4_combout\,
	combout => \addedIndex~5_combout\);

-- Location: LCFF_X47_Y27_N31
\addedIndex[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addedIndex~3_combout\,
	ena => \addedIndex[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addedIndex(2));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X47_Y27_N28
\addedIndex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \addedIndex~2_combout\ = (!\b2~combout\ & (!\b1~combout\ & (!\b4~combout\ & !\b3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b1~combout\,
	datac => \b4~combout\,
	datad => \b3~combout\,
	combout => \addedIndex~2_combout\);

-- Location: LCCOMB_X47_Y27_N30
\addedIndex~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \addedIndex~3_combout\ = (\b5~combout\) # ((addedIndex(2) & \addedIndex~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b5~combout\,
	datac => addedIndex(2),
	datad => \addedIndex~2_combout\,
	combout => \addedIndex~3_combout\);

-- Location: LCCOMB_X47_Y27_N26
\Equal5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (!\addedIndex~1_combout\ & (!\addedIndex~5_combout\ & \addedIndex~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addedIndex~1_combout\,
	datac => \addedIndex~5_combout\,
	datad => \addedIndex~3_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X41_Y26_N0
\used_counter~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~96_combout\ = (\Add3~0_combout\ & (!\rst~combout\ & ((\used_counter~42_combout\) # (\used_counter~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \rst~combout\,
	datac => \used_counter~42_combout\,
	datad => \used_counter~88_combout\,
	combout => \used_counter~96_combout\);

-- Location: LCCOMB_X44_Y28_N12
\used_counter[1][6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][6]~13_combout\ = (\t|timedClock~regout\) # (\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t|timedClock~regout\,
	datad => \rst~combout\,
	combout => \used_counter[1][6]~13_combout\);

-- Location: LCFF_X41_Y26_N1
\used_counter[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~96_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][0]~regout\);

-- Location: LCCOMB_X40_Y26_N0
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\b4~combout\ & (\used_counter[3][0]~regout\ $ (VCC))) # (!\b4~combout\ & (\used_counter[3][0]~regout\ & VCC))
-- \Add3~1\ = CARRY((\b4~combout\ & \used_counter[3][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b4~combout\,
	datab => \used_counter[3][0]~regout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X47_Y27_N8
\Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (\addedIndex~1_combout\ & (\addedIndex~5_combout\ & !\addedIndex~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addedIndex~1_combout\,
	datac => \addedIndex~5_combout\,
	datad => \addedIndex~3_combout\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X46_Y27_N26
\Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!\addedIndex~1_combout\ & (\addedIndex~5_combout\ & !\addedIndex~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addedIndex~1_combout\,
	datac => \addedIndex~5_combout\,
	datad => \addedIndex~3_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X45_Y26_N24
\lowestValue~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~24_combout\ = (\Equal5~3_combout\ & (((\lowestValue~16_combout\)))) # (!\Equal5~3_combout\ & ((\LessThan3~14_combout\ & (\Add3~14_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Add3~14_combout\,
	datac => \LessThan3~14_combout\,
	datad => \lowestValue~16_combout\,
	combout => \lowestValue~24_combout\);

-- Location: LCCOMB_X41_Y26_N28
\used_counter~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~92_combout\ = (\Add3~8_combout\ & (!\rst~combout\ & ((\used_counter~42_combout\) # (\used_counter~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \rst~combout\,
	datac => \used_counter~42_combout\,
	datad => \used_counter~88_combout\,
	combout => \used_counter~92_combout\);

-- Location: LCFF_X41_Y26_N29
\used_counter[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~92_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][4]~regout\);

-- Location: LCCOMB_X41_Y26_N12
\used_counter~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~94_combout\ = (\Add3~4_combout\ & (!\rst~combout\ & ((\used_counter~42_combout\) # (\used_counter~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \rst~combout\,
	datac => \used_counter~42_combout\,
	datad => \used_counter~88_combout\,
	combout => \used_counter~94_combout\);

-- Location: LCFF_X41_Y26_N13
\used_counter[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~94_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][2]~regout\);

-- Location: LCCOMB_X40_Y26_N2
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\used_counter[3][1]~regout\ & (!\Add3~1\)) # (!\used_counter[3][1]~regout\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\used_counter[3][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][1]~regout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X40_Y26_N4
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\used_counter[3][2]~regout\ & (\Add3~3\ $ (GND))) # (!\used_counter[3][2]~regout\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\used_counter[3][2]~regout\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][2]~regout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X40_Y26_N6
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\used_counter[3][3]~regout\ & (!\Add3~5\)) # (!\used_counter[3][3]~regout\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\used_counter[3][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][3]~regout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X40_Y26_N10
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\used_counter[3][5]~regout\ & (!\Add3~9\)) # (!\used_counter[3][5]~regout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\used_counter[3][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][5]~regout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X41_Y26_N22
\used_counter~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~91_combout\ = (!\rst~combout\ & (\Add3~10_combout\ & ((\used_counter~42_combout\) # (\used_counter~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add3~10_combout\,
	datac => \used_counter~42_combout\,
	datad => \used_counter~88_combout\,
	combout => \used_counter~91_combout\);

-- Location: LCFF_X41_Y26_N23
\used_counter[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~91_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][5]~regout\);

-- Location: LCCOMB_X40_Y26_N12
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\used_counter[3][6]~regout\ & (\Add3~11\ $ (GND))) # (!\used_counter[3][6]~regout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\used_counter[3][6]~regout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][6]~regout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X47_Y27_N22
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\addedIndex~3_combout\ & (!\addedIndex~5_combout\ & \addedIndex~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addedIndex~3_combout\,
	datac => \addedIndex~5_combout\,
	datad => \addedIndex~1_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X48_Y26_N8
\lowestValue~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~36_combout\ = (\Equal5~4_combout\ & (((!\lowestValue~25_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (!\Add4~12_combout\)) # (!\LessThan4~14_combout\ & ((!\lowestValue~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Equal5~4_combout\,
	datac => \LessThan4~14_combout\,
	datad => \lowestValue~25_combout\,
	combout => \lowestValue~36_combout\);

-- Location: LCCOMB_X46_Y27_N4
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\used_counter[1][0]~regout\ & (\b2~combout\ $ (VCC))) # (!\used_counter[1][0]~regout\ & (\b2~combout\ & VCC))
-- \Add1~1\ = CARRY((\used_counter[1][0]~regout\ & \b2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~regout\,
	datab => \b2~combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X46_Y27_N6
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\used_counter[1][1]~regout\ & (!\Add1~1\)) # (!\used_counter[1][1]~regout\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\used_counter[1][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[1][1]~regout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X46_Y27_N10
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\used_counter[1][3]~regout\ & (!\Add1~5\)) # (!\used_counter[1][3]~regout\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\used_counter[1][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][3]~regout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X44_Y27_N14
\used_counter~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~66_combout\ = (!\rst~combout\ & (\Add4~6_combout\ & \used_counter~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \Add4~6_combout\,
	datad => \used_counter~53_combout\,
	combout => \used_counter~66_combout\);

-- Location: LCFF_X44_Y27_N15
\used_counter[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~66_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][3]~regout\);

-- Location: LCCOMB_X43_Y27_N16
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\b5~combout\ & (\used_counter[4][0]~regout\ $ (VCC))) # (!\b5~combout\ & (\used_counter[4][0]~regout\ & VCC))
-- \Add4~1\ = CARRY((\b5~combout\ & \used_counter[4][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~combout\,
	datab => \used_counter[4][0]~regout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X44_Y27_N20
\used_counter~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~69_combout\ = (\Add4~0_combout\ & (!\rst~combout\ & \used_counter~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~0_combout\,
	datac => \rst~combout\,
	datad => \used_counter~53_combout\,
	combout => \used_counter~69_combout\);

-- Location: LCFF_X44_Y27_N21
\used_counter[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~69_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][0]~regout\);

-- Location: LCCOMB_X43_Y27_N18
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\used_counter[4][1]~regout\ & (!\Add4~1\)) # (!\used_counter[4][1]~regout\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\used_counter[4][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~regout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X43_Y27_N20
\Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\used_counter[4][2]~regout\ & (\Add4~3\ $ (GND))) # (!\used_counter[4][2]~regout\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\used_counter[4][2]~regout\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][2]~regout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X44_Y27_N8
\used_counter~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~67_combout\ = (!\rst~combout\ & (\Add4~4_combout\ & \used_counter~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \Add4~4_combout\,
	datad => \used_counter~53_combout\,
	combout => \used_counter~67_combout\);

-- Location: LCFF_X44_Y27_N9
\used_counter[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~67_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][2]~regout\);

-- Location: LCCOMB_X43_Y27_N22
\Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\used_counter[4][3]~regout\ & (!\Add4~5\)) # (!\used_counter[4][3]~regout\ & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!\used_counter[4][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][3]~regout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X48_Y26_N16
\lowestValue~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~39_combout\ = (\Equal5~4_combout\ & (!\lowestValue~28_combout\)) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & ((!\Add4~6_combout\))) # (!\LessThan4~14_combout\ & (!\lowestValue~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~28_combout\,
	datab => \Equal5~4_combout\,
	datac => \LessThan4~14_combout\,
	datad => \Add4~6_combout\,
	combout => \lowestValue~39_combout\);

-- Location: LCFF_X48_Y26_N17
\lowestValue[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~39_combout\,
	ena => \lowestValue[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(3));

-- Location: LCCOMB_X42_Y26_N4
\used_counter~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~57_combout\ = (!\rst~combout\ & (\Add0~6_combout\ & ((\used_counter~8_combout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add0~6_combout\,
	datac => \used_counter~8_combout\,
	datad => \WideOr5~0_combout\,
	combout => \used_counter~57_combout\);

-- Location: LCFF_X42_Y26_N5
\used_counter[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~57_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][3]~regout\);

-- Location: LCCOMB_X42_Y26_N22
\used_counter~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~56_combout\ = (\Add0~4_combout\ & (!\rst~combout\ & ((\used_counter~8_combout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \rst~combout\,
	datac => \used_counter~8_combout\,
	datad => \WideOr5~0_combout\,
	combout => \used_counter~56_combout\);

-- Location: LCFF_X42_Y26_N23
\used_counter[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~56_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][2]~regout\);

-- Location: LCCOMB_X42_Y27_N18
\used_counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~6_combout\ = (\Add0~14_combout\ & ((\Add0~12_combout\ $ (\lowestValue~25_combout\)) # (!\lowestValue~24_combout\))) # (!\Add0~14_combout\ & ((\lowestValue~24_combout\) # (\Add0~12_combout\ $ (\lowestValue~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~12_combout\,
	datac => \lowestValue~25_combout\,
	datad => \lowestValue~24_combout\,
	combout => \used_counter~6_combout\);

-- Location: LCCOMB_X42_Y26_N2
\used_counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~7_combout\ = (\Equal5~4_combout\ & (((\used_counter~6_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~5_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~5_combout\,
	datab => \Equal5~4_combout\,
	datac => \used_counter~6_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~7_combout\);

-- Location: LCCOMB_X43_Y26_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\used_counter[0][2]~regout\ & (\Add0~3\ $ (GND))) # (!\used_counter[0][2]~regout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\used_counter[0][2]~regout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][2]~regout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X47_Y27_N16
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\addedIndex~3_combout\ & (!\addedIndex~5_combout\ & !\addedIndex~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addedIndex~3_combout\,
	datac => \addedIndex~5_combout\,
	datad => \addedIndex~1_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X42_Y26_N8
\used_counter~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~61_combout\ = (!\rst~combout\ & (\Add0~14_combout\ & ((\used_counter~8_combout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add0~14_combout\,
	datac => \used_counter~8_combout\,
	datad => \WideOr5~0_combout\,
	combout => \used_counter~61_combout\);

-- Location: LCFF_X42_Y26_N9
\used_counter[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~61_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][7]~regout\);

-- Location: LCCOMB_X43_Y26_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\used_counter[0][3]~regout\ & (!\Add0~5\)) # (!\used_counter[0][3]~regout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\used_counter[0][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][3]~regout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X43_Y26_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\used_counter[0][4]~regout\ & (\Add0~7\ $ (GND))) # (!\used_counter[0][4]~regout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\used_counter[0][4]~regout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][4]~regout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X43_Y26_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\used_counter[0][5]~regout\ & (!\Add0~9\)) # (!\used_counter[0][5]~regout\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\used_counter[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][5]~regout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X43_Y26_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\used_counter[0][6]~regout\ & (\Add0~11\ $ (GND))) # (!\used_counter[0][6]~regout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\used_counter[0][6]~regout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][6]~regout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X43_Y26_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (\used_counter[0][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter[0][7]~regout\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X50_Y26_N0
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\b3~combout\ & (\used_counter[2][0]~regout\ $ (VCC))) # (!\b3~combout\ & (\used_counter[2][0]~regout\ & VCC))
-- \Add2~1\ = CARRY((\b3~combout\ & \used_counter[2][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b3~combout\,
	datab => \used_counter[2][0]~regout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X48_Y26_N22
\used_counter~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~33_combout\ = (\Add2~6_combout\ & ((\Add2~4_combout\ $ (\lowestValue~29_combout\)) # (!\lowestValue~28_combout\))) # (!\Add2~6_combout\ & ((\lowestValue~28_combout\) # (\Add2~4_combout\ $ (\lowestValue~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~4_combout\,
	datac => \lowestValue~28_combout\,
	datad => \lowestValue~29_combout\,
	combout => \used_counter~33_combout\);

-- Location: LCCOMB_X48_Y26_N4
\used_counter~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~34_combout\ = (\Equal5~4_combout\ & (((\used_counter~33_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~32_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~32_combout\,
	datab => \used_counter~33_combout\,
	datac => \Equal5~4_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~34_combout\);

-- Location: LCCOMB_X43_Y27_N14
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\Add4~0_combout\) # ((\Add4~6_combout\) # ((\Add4~4_combout\) # (\Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add4~6_combout\,
	datac => \Add4~4_combout\,
	datad => \Add4~2_combout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X44_Y27_N24
\used_counter~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~63_combout\ = (\Add4~12_combout\ & (!\rst~combout\ & \used_counter~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~12_combout\,
	datac => \rst~combout\,
	datad => \used_counter~53_combout\,
	combout => \used_counter~63_combout\);

-- Location: LCFF_X44_Y27_N25
\used_counter[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~63_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][6]~regout\);

-- Location: LCCOMB_X43_Y27_N24
\Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\used_counter[4][4]~regout\ & (\Add4~7\ $ (GND))) # (!\used_counter[4][4]~regout\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\used_counter[4][4]~regout\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][4]~regout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X44_Y27_N28
\used_counter~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~65_combout\ = (\Add4~8_combout\ & (!\rst~combout\ & \used_counter~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~8_combout\,
	datac => \rst~combout\,
	datad => \used_counter~53_combout\,
	combout => \used_counter~65_combout\);

-- Location: LCFF_X44_Y27_N29
\used_counter[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~65_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][4]~regout\);

-- Location: LCCOMB_X43_Y27_N28
\Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\used_counter[4][6]~regout\ & (\Add4~11\ $ (GND))) # (!\used_counter[4][6]~regout\ & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((\used_counter[4][6]~regout\ & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][6]~regout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X43_Y27_N2
WideOr4 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\WideOr4~1_combout\) # ((\Add4~14_combout\) # ((\WideOr4~0_combout\) # (\Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~1_combout\,
	datab => \Add4~14_combout\,
	datac => \WideOr4~0_combout\,
	datad => \Add4~12_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X49_Y26_N22
\used_counter~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~80_combout\ = (!\rst~combout\ & (\Add2~14_combout\ & ((\used_counter~31_combout\) # (\used_counter~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add2~14_combout\,
	datac => \used_counter~31_combout\,
	datad => \used_counter~79_combout\,
	combout => \used_counter~80_combout\);

-- Location: LCFF_X49_Y26_N23
\used_counter[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~80_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][7]~regout\);

-- Location: LCCOMB_X50_Y26_N8
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\used_counter[2][4]~regout\ & (\Add2~7\ $ (GND))) # (!\used_counter[2][4]~regout\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\used_counter[2][4]~regout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][4]~regout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X50_Y26_N10
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\used_counter[2][5]~regout\ & (!\Add2~9\)) # (!\used_counter[2][5]~regout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\used_counter[2][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[2][5]~regout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X50_Y26_N12
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\used_counter[2][6]~regout\ & (\Add2~11\ $ (GND))) # (!\used_counter[2][6]~regout\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\used_counter[2][6]~regout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[2][6]~regout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X49_Y26_N16
\used_counter~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~81_combout\ = (!\rst~combout\ & (\Add2~12_combout\ & ((\used_counter~31_combout\) # (\used_counter~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add2~12_combout\,
	datac => \used_counter~31_combout\,
	datad => \used_counter~79_combout\,
	combout => \used_counter~81_combout\);

-- Location: LCFF_X49_Y26_N17
\used_counter[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~81_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][6]~regout\);

-- Location: LCCOMB_X50_Y26_N14
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (\used_counter[2][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter[2][7]~regout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X50_Y26_N18
\WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\Add2~10_combout\) # ((\Add2~8_combout\) # ((\Add2~14_combout\) # (\Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~14_combout\,
	datad => \Add2~12_combout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X40_Y26_N26
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\Add3~6_combout\) # ((\Add3~0_combout\) # ((\Add3~4_combout\) # (\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~0_combout\,
	datac => \Add3~4_combout\,
	datad => \Add3~2_combout\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X50_Y26_N2
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\used_counter[2][1]~regout\ & (!\Add2~1\)) # (!\used_counter[2][1]~regout\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\used_counter[2][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][1]~regout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X50_Y26_N28
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\Add2~6_combout\) # ((\Add2~2_combout\) # ((\Add2~4_combout\) # (\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~2_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~0_combout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X50_Y26_N20
\always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (\WideOr3~1_combout\ & ((\WideOr2~1_combout\) # ((\WideOr2~0_combout\)))) # (!\WideOr3~1_combout\ & (\WideOr3~0_combout\ & ((\WideOr2~1_combout\) # (\WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~1_combout\,
	datab => \WideOr2~1_combout\,
	datac => \WideOr3~0_combout\,
	datad => \WideOr2~0_combout\,
	combout => \always0~1_combout\);

-- Location: LCCOMB_X47_Y27_N6
\always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (\always0~0_combout\ & (\WideOr4~combout\ & \always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \always0~0_combout\,
	datac => \WideOr4~combout\,
	datad => \always0~1_combout\,
	combout => \always0~2_combout\);

-- Location: LCCOMB_X44_Y26_N8
\used_counter~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~35_combout\ = (\Equal5~2_combout\) # ((\Add2~0_combout\ $ (!\lowestValue~33_combout\)) # (!\always0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Add2~0_combout\,
	datac => \always0~2_combout\,
	datad => \lowestValue~33_combout\,
	combout => \used_counter~35_combout\);

-- Location: LCCOMB_X49_Y26_N6
\used_counter~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~79_combout\ = (\used_counter~34_combout\) # ((\used_counter~35_combout\) # (\Add2~2_combout\ $ (!\lowestValue~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \used_counter~34_combout\,
	datac => \lowestValue~32_combout\,
	datad => \used_counter~35_combout\,
	combout => \used_counter~79_combout\);

-- Location: LCCOMB_X49_Y26_N4
\used_counter~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~87_combout\ = (!\rst~combout\ & (\Add2~0_combout\ & ((\used_counter~31_combout\) # (\used_counter~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add2~0_combout\,
	datac => \used_counter~31_combout\,
	datad => \used_counter~79_combout\,
	combout => \used_counter~87_combout\);

-- Location: LCFF_X49_Y26_N5
\used_counter[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~87_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][0]~regout\);

-- Location: LCCOMB_X50_Y26_N4
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\used_counter[2][2]~regout\ & (\Add2~3\ $ (GND))) # (!\used_counter[2][2]~regout\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\used_counter[2][2]~regout\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[2][2]~regout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X49_Y26_N24
\used_counter~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~85_combout\ = (!\rst~combout\ & (\Add2~4_combout\ & ((\used_counter~31_combout\) # (\used_counter~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add2~4_combout\,
	datac => \used_counter~31_combout\,
	datad => \used_counter~79_combout\,
	combout => \used_counter~85_combout\);

-- Location: LCFF_X49_Y26_N25
\used_counter[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~85_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][2]~regout\);

-- Location: LCCOMB_X50_Y26_N6
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\used_counter[2][3]~regout\ & (!\Add2~5\)) # (!\used_counter[2][3]~regout\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\used_counter[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[2][3]~regout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X49_Y26_N26
\used_counter~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~84_combout\ = (!\rst~combout\ & (\Add2~6_combout\ & ((\used_counter~31_combout\) # (\used_counter~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add2~6_combout\,
	datac => \used_counter~31_combout\,
	datad => \used_counter~79_combout\,
	combout => \used_counter~84_combout\);

-- Location: LCFF_X49_Y26_N27
\used_counter[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~84_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][3]~regout\);

-- Location: LCCOMB_X46_Y26_N0
\lowestValue~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~11_combout\ = (\Equal5~1_combout\ & (\lowestValue~3_combout\)) # (!\Equal5~1_combout\ & ((\LessThan1~14_combout\ & ((\Add1~8_combout\))) # (!\LessThan1~14_combout\ & (\lowestValue~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~3_combout\,
	datab => \Equal5~1_combout\,
	datac => \LessThan1~14_combout\,
	datad => \Add1~8_combout\,
	combout => \lowestValue~11_combout\);

-- Location: LCCOMB_X47_Y26_N20
\lowestValue~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~2_combout\ = (\Equal5~0_combout\ & (!lowestValue(5))) # (!\Equal5~0_combout\ & ((\LessThan0~14_combout\ & ((\Add0~10_combout\))) # (!\LessThan0~14_combout\ & (!lowestValue(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => lowestValue(5),
	datac => \Add0~10_combout\,
	datad => \LessThan0~14_combout\,
	combout => \lowestValue~2_combout\);

-- Location: LCCOMB_X46_Y26_N26
\lowestValue~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~10_combout\ = (\Equal5~1_combout\ & (((\lowestValue~2_combout\)))) # (!\Equal5~1_combout\ & ((\LessThan1~14_combout\ & (\Add1~10_combout\)) # (!\LessThan1~14_combout\ & ((\lowestValue~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add1~10_combout\,
	datac => \LessThan1~14_combout\,
	datad => \lowestValue~2_combout\,
	combout => \lowestValue~10_combout\);

-- Location: LCCOMB_X43_Y26_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\b1~combout\ & (\used_counter[0][0]~regout\ $ (VCC))) # (!\b1~combout\ & (\used_counter[0][0]~regout\ & VCC))
-- \Add0~1\ = CARRY((\b1~combout\ & \used_counter[0][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \used_counter[0][0]~regout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X42_Y26_N6
\used_counter~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~54_combout\ = (!\rst~combout\ & (\Add0~0_combout\ & ((\used_counter~8_combout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add0~0_combout\,
	datac => \used_counter~8_combout\,
	datad => \WideOr5~0_combout\,
	combout => \used_counter~54_combout\);

-- Location: LCFF_X42_Y26_N7
\used_counter[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~54_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][0]~regout\);

-- Location: LCCOMB_X43_Y26_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\used_counter[0][1]~regout\ & (!\Add0~1\)) # (!\used_counter[0][1]~regout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\used_counter[0][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][1]~regout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCFF_X44_Y26_N5
\lowestValue[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~32_combout\,
	ena => \lowestValue[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(1));

-- Location: LCCOMB_X48_Y26_N24
\lowestValue~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~6_combout\ = (\Equal5~0_combout\ & (((!lowestValue(1))))) # (!\Equal5~0_combout\ & ((\LessThan0~14_combout\ & (\Add0~2_combout\)) # (!\LessThan0~14_combout\ & ((!lowestValue(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Add0~2_combout\,
	datac => lowestValue(1),
	datad => \LessThan0~14_combout\,
	combout => \lowestValue~6_combout\);

-- Location: LCCOMB_X46_Y26_N2
\lowestValue~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~14_combout\ = (\Equal5~1_combout\ & (((\lowestValue~6_combout\)))) # (!\Equal5~1_combout\ & ((\LessThan1~14_combout\ & (\Add1~2_combout\)) # (!\LessThan1~14_combout\ & ((\lowestValue~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Equal5~1_combout\,
	datac => \LessThan1~14_combout\,
	datad => \lowestValue~6_combout\,
	combout => \lowestValue~14_combout\);

-- Location: LCFF_X44_Y26_N11
\lowestValue[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~33_combout\,
	ena => \lowestValue[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(0));

-- Location: LCCOMB_X48_Y26_N30
\lowestValue~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~7_combout\ = (\Equal5~0_combout\ & (!lowestValue(0))) # (!\Equal5~0_combout\ & ((\LessThan0~14_combout\ & ((\Add0~0_combout\))) # (!\LessThan0~14_combout\ & (!lowestValue(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => lowestValue(0),
	datac => \Add0~0_combout\,
	datad => \LessThan0~14_combout\,
	combout => \lowestValue~7_combout\);

-- Location: LCCOMB_X47_Y26_N30
\lowestValue~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~15_combout\ = (\Equal5~1_combout\ & (((\lowestValue~7_combout\)))) # (!\Equal5~1_combout\ & ((\LessThan1~14_combout\ & (\Add1~0_combout\)) # (!\LessThan1~14_combout\ & ((\lowestValue~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add1~0_combout\,
	datac => \LessThan1~14_combout\,
	datad => \lowestValue~7_combout\,
	combout => \lowestValue~15_combout\);

-- Location: LCCOMB_X46_Y26_N8
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!\Add2~0_combout\ & \lowestValue~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \lowestValue~15_combout\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X46_Y26_N10
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\Add2~2_combout\ & ((!\LessThan2~1_cout\) # (!\lowestValue~14_combout\))) # (!\Add2~2_combout\ & (!\lowestValue~14_combout\ & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \lowestValue~14_combout\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X46_Y26_N12
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\Add2~4_combout\ & (\lowestValue~13_combout\ & !\LessThan2~3_cout\)) # (!\Add2~4_combout\ & ((\lowestValue~13_combout\) # (!\LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \lowestValue~13_combout\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X46_Y26_N14
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\Add2~6_combout\ & ((!\LessThan2~5_cout\) # (!\lowestValue~12_combout\))) # (!\Add2~6_combout\ & (!\lowestValue~12_combout\ & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \lowestValue~12_combout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X46_Y26_N16
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\Add2~8_combout\ & (\lowestValue~11_combout\ & !\LessThan2~7_cout\)) # (!\Add2~8_combout\ & ((\lowestValue~11_combout\) # (!\LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \lowestValue~11_combout\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X46_Y26_N18
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\Add2~10_combout\ & ((!\LessThan2~9_cout\) # (!\lowestValue~10_combout\))) # (!\Add2~10_combout\ & (!\lowestValue~10_combout\ & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \lowestValue~10_combout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X46_Y26_N20
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\Add2~12_combout\ & (\lowestValue~9_combout\ & !\LessThan2~11_cout\)) # (!\Add2~12_combout\ & ((\lowestValue~9_combout\) # (!\LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \lowestValue~9_combout\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X46_Y26_N22
\LessThan2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (\lowestValue~8_combout\ & ((\LessThan2~13_cout\) # (!\Add2~14_combout\))) # (!\lowestValue~8_combout\ & (\LessThan2~13_cout\ & !\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~8_combout\,
	datad => \Add2~14_combout\,
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X45_Y26_N22
\lowestValue~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~19_combout\ = (\Equal5~2_combout\ & (((\lowestValue~11_combout\)))) # (!\Equal5~2_combout\ & ((\LessThan2~14_combout\ & (\Add2~8_combout\)) # (!\LessThan2~14_combout\ & ((\lowestValue~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Add2~8_combout\,
	datac => \lowestValue~11_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~19_combout\);

-- Location: LCCOMB_X45_Y26_N26
\lowestValue~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~27_combout\ = (\Equal5~3_combout\ & (((\lowestValue~19_combout\)))) # (!\Equal5~3_combout\ & ((\LessThan3~14_combout\ & (\Add3~8_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Equal5~3_combout\,
	datac => \LessThan3~14_combout\,
	datad => \lowestValue~19_combout\,
	combout => \lowestValue~27_combout\);

-- Location: LCCOMB_X49_Y26_N14
\used_counter~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~26_combout\ = (\lowestValue~26_combout\ & ((\Add2~8_combout\ $ (\lowestValue~27_combout\)) # (!\Add2~10_combout\))) # (!\lowestValue~26_combout\ & ((\Add2~10_combout\) # (\Add2~8_combout\ $ (\lowestValue~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~26_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~10_combout\,
	datad => \lowestValue~27_combout\,
	combout => \used_counter~26_combout\);

-- Location: LCCOMB_X49_Y26_N8
\used_counter~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~27_combout\ = (\Equal5~4_combout\ & (((\used_counter~26_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~25_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~25_combout\,
	datab => \used_counter~26_combout\,
	datac => \Equal5~4_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~27_combout\);

-- Location: LCCOMB_X49_Y26_N28
\used_counter~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~29_combout\ = (\lowestValue~24_combout\ & ((\Add2~12_combout\ $ (\lowestValue~25_combout\)) # (!\Add2~14_combout\))) # (!\lowestValue~24_combout\ & ((\Add2~14_combout\) # (\Add2~12_combout\ $ (\lowestValue~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~24_combout\,
	datab => \Add2~14_combout\,
	datac => \Add2~12_combout\,
	datad => \lowestValue~25_combout\,
	combout => \used_counter~29_combout\);

-- Location: LCCOMB_X49_Y26_N2
\used_counter~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~30_combout\ = (\Equal5~4_combout\ & (((\used_counter~29_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~28_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~28_combout\,
	datab => \used_counter~29_combout\,
	datac => \Equal5~4_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~30_combout\);

-- Location: LCCOMB_X49_Y26_N20
\used_counter~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~31_combout\ = (\used_counter~27_combout\) # (\used_counter~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~27_combout\,
	datad => \used_counter~30_combout\,
	combout => \used_counter~31_combout\);

-- Location: LCCOMB_X49_Y26_N18
\used_counter~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~82_combout\ = (!\rst~combout\ & (\Add2~10_combout\ & ((\used_counter~31_combout\) # (\used_counter~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add2~10_combout\,
	datac => \used_counter~31_combout\,
	datad => \used_counter~79_combout\,
	combout => \used_counter~82_combout\);

-- Location: LCFF_X49_Y26_N19
\used_counter[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~82_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][5]~regout\);

-- Location: LCCOMB_X45_Y26_N28
\lowestValue~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~18_combout\ = (\Equal5~2_combout\ & (((\lowestValue~10_combout\)))) # (!\Equal5~2_combout\ & ((\LessThan2~14_combout\ & (\Add2~10_combout\)) # (!\LessThan2~14_combout\ & ((\lowestValue~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Add2~10_combout\,
	datac => \lowestValue~10_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~18_combout\);

-- Location: LCCOMB_X45_Y26_N20
\lowestValue~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~26_combout\ = (\Equal5~3_combout\ & (((\lowestValue~18_combout\)))) # (!\Equal5~3_combout\ & ((\LessThan3~14_combout\ & (\Add3~10_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Equal5~3_combout\,
	datac => \LessThan3~14_combout\,
	datad => \lowestValue~18_combout\,
	combout => \lowestValue~26_combout\);

-- Location: LCCOMB_X42_Y26_N18
\lowestValue~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~37_combout\ = (\Equal5~4_combout\ & (((!\lowestValue~26_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (!\Add4~10_combout\)) # (!\LessThan4~14_combout\ & ((!\lowestValue~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Equal5~4_combout\,
	datac => \LessThan4~14_combout\,
	datad => \lowestValue~26_combout\,
	combout => \lowestValue~37_combout\);

-- Location: LCFF_X42_Y26_N19
\lowestValue[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~37_combout\,
	ena => \lowestValue[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(5));

-- Location: LCCOMB_X43_Y26_N16
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!lowestValue(0) & !\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(0),
	datab => \Add0~0_combout\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X43_Y26_N18
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((lowestValue(1) & ((\Add0~2_combout\) # (!\LessThan0~1_cout\))) # (!lowestValue(1) & (\Add0~2_combout\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(1),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X43_Y26_N20
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((lowestValue(2) & (!\Add0~4_combout\ & !\LessThan0~3_cout\)) # (!lowestValue(2) & ((!\LessThan0~3_cout\) # (!\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(2),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X43_Y26_N22
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Add0~6_combout\ & ((lowestValue(3)) # (!\LessThan0~5_cout\))) # (!\Add0~6_combout\ & (lowestValue(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => lowestValue(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X43_Y26_N24
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((lowestValue(4) & (!\Add0~8_combout\ & !\LessThan0~7_cout\)) # (!lowestValue(4) & ((!\LessThan0~7_cout\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(4),
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X43_Y26_N26
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\Add0~10_combout\ & ((lowestValue(5)) # (!\LessThan0~9_cout\))) # (!\Add0~10_combout\ & (lowestValue(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => lowestValue(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X43_Y26_N28
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\Add0~12_combout\ & (!lowestValue(6) & !\LessThan0~11_cout\)) # (!\Add0~12_combout\ & ((!\LessThan0~11_cout\) # (!lowestValue(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => lowestValue(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X43_Y26_N30
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\Add0~14_combout\ & (\LessThan0~13_cout\ & !lowestValue(7))) # (!\Add0~14_combout\ & ((\LessThan0~13_cout\) # (!lowestValue(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => lowestValue(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X48_Y26_N14
\lowestValue~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~5_combout\ = (\Equal5~0_combout\ & (!lowestValue(2))) # (!\Equal5~0_combout\ & ((\LessThan0~14_combout\ & ((\Add0~4_combout\))) # (!\LessThan0~14_combout\ & (!lowestValue(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lowestValue(2),
	datab => \Add0~4_combout\,
	datac => \Equal5~0_combout\,
	datad => \LessThan0~14_combout\,
	combout => \lowestValue~5_combout\);

-- Location: LCCOMB_X47_Y26_N24
\lowestValue~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~13_combout\ = (\LessThan1~14_combout\ & ((\Equal5~1_combout\ & ((\lowestValue~5_combout\))) # (!\Equal5~1_combout\ & (\Add1~4_combout\)))) # (!\LessThan1~14_combout\ & (((\lowestValue~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \lowestValue~5_combout\,
	datac => \LessThan1~14_combout\,
	datad => \Equal5~1_combout\,
	combout => \lowestValue~13_combout\);

-- Location: LCCOMB_X46_Y26_N30
\lowestValue~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~21_combout\ = (\Equal5~2_combout\ & (((\lowestValue~13_combout\)))) # (!\Equal5~2_combout\ & ((\LessThan2~14_combout\ & (\Add2~4_combout\)) # (!\LessThan2~14_combout\ & ((\lowestValue~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \lowestValue~13_combout\,
	datac => \Equal5~2_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~21_combout\);

-- Location: LCCOMB_X48_Y26_N10
\lowestValue~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~29_combout\ = (\Equal5~3_combout\ & (((\lowestValue~21_combout\)))) # (!\Equal5~3_combout\ & ((\LessThan3~14_combout\ & (\Add3~4_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \lowestValue~21_combout\,
	datac => \Equal5~3_combout\,
	datad => \LessThan3~14_combout\,
	combout => \lowestValue~29_combout\);

-- Location: LCCOMB_X41_Y26_N30
\used_counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~10_combout\ = (\Add0~4_combout\ & ((\Add0~6_combout\ $ (\lowestValue~28_combout\)) # (!\lowestValue~29_combout\))) # (!\Add0~4_combout\ & ((\lowestValue~29_combout\) # (\Add0~6_combout\ $ (\lowestValue~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datac => \lowestValue~28_combout\,
	datad => \lowestValue~29_combout\,
	combout => \used_counter~10_combout\);

-- Location: LCCOMB_X42_Y26_N14
\used_counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~11_combout\ = (\Equal5~4_combout\ & (((\used_counter~10_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~9_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~9_combout\,
	datab => \Equal5~4_combout\,
	datac => \used_counter~10_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~11_combout\);

-- Location: LCCOMB_X44_Y26_N30
\used_counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~12_combout\ = (\Equal5~0_combout\) # ((\Add0~0_combout\ $ (!\lowestValue~33_combout\)) # (!\always0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal5~0_combout\,
	datac => \always0~2_combout\,
	datad => \lowestValue~33_combout\,
	combout => \used_counter~12_combout\);

-- Location: LCCOMB_X42_Y26_N10
\used_counter~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~97_combout\ = (\used_counter~4_combout\) # ((\used_counter~7_combout\) # ((\used_counter~11_combout\) # (\used_counter~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~4_combout\,
	datab => \used_counter~7_combout\,
	datac => \used_counter~11_combout\,
	datad => \used_counter~12_combout\,
	combout => \used_counter~97_combout\);

-- Location: LCCOMB_X42_Y26_N28
\used_counter~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~55_combout\ = (\Add0~2_combout\ & (!\rst~combout\ & ((\lowestValue~32_combout\) # (\used_counter~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \rst~combout\,
	datac => \lowestValue~32_combout\,
	datad => \used_counter~97_combout\,
	combout => \used_counter~55_combout\);

-- Location: LCFF_X42_Y26_N29
\used_counter[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~55_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][1]~regout\);

-- Location: LCCOMB_X48_Y26_N28
\lowestValue~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~4_combout\ = (\Equal5~0_combout\ & (!lowestValue(3))) # (!\Equal5~0_combout\ & ((\LessThan0~14_combout\ & ((\Add0~6_combout\))) # (!\LessThan0~14_combout\ & (!lowestValue(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => lowestValue(3),
	datac => \Add0~6_combout\,
	datad => \LessThan0~14_combout\,
	combout => \lowestValue~4_combout\);

-- Location: LCCOMB_X47_Y26_N18
\lowestValue~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~12_combout\ = (\Equal5~1_combout\ & (((\lowestValue~4_combout\)))) # (!\Equal5~1_combout\ & ((\LessThan1~14_combout\ & (\Add1~6_combout\)) # (!\LessThan1~14_combout\ & ((\lowestValue~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Equal5~1_combout\,
	datac => \LessThan1~14_combout\,
	datad => \lowestValue~4_combout\,
	combout => \lowestValue~12_combout\);

-- Location: LCCOMB_X46_Y26_N24
\lowestValue~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~20_combout\ = (\Equal5~2_combout\ & (((\lowestValue~12_combout\)))) # (!\Equal5~2_combout\ & ((\LessThan2~14_combout\ & (\Add2~6_combout\)) # (!\LessThan2~14_combout\ & ((\lowestValue~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Equal5~2_combout\,
	datac => \lowestValue~12_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~20_combout\);

-- Location: LCCOMB_X48_Y26_N20
\lowestValue~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~28_combout\ = (\Equal5~3_combout\ & (((\lowestValue~20_combout\)))) # (!\Equal5~3_combout\ & ((\LessThan3~14_combout\ & (\Add3~6_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Add3~6_combout\,
	datac => \lowestValue~20_combout\,
	datad => \LessThan3~14_combout\,
	combout => \lowestValue~28_combout\);

-- Location: LCCOMB_X48_Y26_N0
\used_counter~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~22_combout\ = (\Add1~4_combout\ & ((\Add1~6_combout\ $ (\lowestValue~28_combout\)) # (!\lowestValue~29_combout\))) # (!\Add1~4_combout\ & ((\lowestValue~29_combout\) # (\Add1~6_combout\ $ (\lowestValue~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~6_combout\,
	datac => \lowestValue~28_combout\,
	datad => \lowestValue~29_combout\,
	combout => \used_counter~22_combout\);

-- Location: LCCOMB_X45_Y27_N16
\used_counter~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~23_combout\ = (\Equal5~4_combout\ & (((\used_counter~22_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~21_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~21_combout\,
	datab => \Equal5~4_combout\,
	datac => \LessThan4~14_combout\,
	datad => \used_counter~22_combout\,
	combout => \used_counter~23_combout\);

-- Location: LCCOMB_X45_Y27_N2
\used_counter~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~24_combout\ = ((\Equal5~1_combout\) # (\Add1~0_combout\ $ (!\lowestValue~33_combout\))) # (!\always0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add1~0_combout\,
	datad => \lowestValue~33_combout\,
	combout => \used_counter~24_combout\);

-- Location: LCCOMB_X45_Y27_N14
\used_counter~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~75_combout\ = (\used_counter~23_combout\) # ((\used_counter~24_combout\) # (\lowestValue~32_combout\ $ (!\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~32_combout\,
	datab => \Add1~2_combout\,
	datac => \used_counter~23_combout\,
	datad => \used_counter~24_combout\,
	combout => \used_counter~75_combout\);

-- Location: LCCOMB_X45_Y27_N8
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\used_counter~23_combout\) # ((\used_counter~24_combout\) # (\lowestValue~32_combout\ $ (!\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~32_combout\,
	datab => \Add1~2_combout\,
	datac => \used_counter~23_combout\,
	datad => \used_counter~24_combout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X45_Y27_N18
\used_counter~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~70_combout\ = (\Add1~14_combout\ & (!\rst~combout\ & ((\WideOr6~0_combout\) # (\used_counter~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \rst~combout\,
	datac => \WideOr6~0_combout\,
	datad => \used_counter~20_combout\,
	combout => \used_counter~70_combout\);

-- Location: LCFF_X45_Y27_N19
\used_counter[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~70_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][7]~regout\);

-- Location: LCCOMB_X46_Y27_N14
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\used_counter[1][5]~regout\ & (!\Add1~9\)) # (!\used_counter[1][5]~regout\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\used_counter[1][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][5]~regout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X46_Y27_N16
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\used_counter[1][6]~regout\ & (\Add1~11\ $ (GND))) # (!\used_counter[1][6]~regout\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\used_counter[1][6]~regout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][6]~regout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X46_Y27_N18
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (\used_counter[1][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter[1][7]~regout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X46_Y27_N24
\used_counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~18_combout\ = (\Add1~12_combout\ & ((\Add1~14_combout\ $ (\lowestValue~24_combout\)) # (!\lowestValue~25_combout\))) # (!\Add1~12_combout\ & ((\lowestValue~25_combout\) # (\Add1~14_combout\ $ (\lowestValue~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~14_combout\,
	datac => \lowestValue~25_combout\,
	datad => \lowestValue~24_combout\,
	combout => \used_counter~18_combout\);

-- Location: LCCOMB_X45_Y27_N24
\used_counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~19_combout\ = (\Equal5~4_combout\ & (((\used_counter~18_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~17_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~17_combout\,
	datab => \Equal5~4_combout\,
	datac => \LessThan4~14_combout\,
	datad => \used_counter~18_combout\,
	combout => \used_counter~19_combout\);

-- Location: LCCOMB_X45_Y27_N12
\used_counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~15_combout\ = (\Add1~10_combout\ & ((\Add1~8_combout\ $ (\lowestValue~27_combout\)) # (!\lowestValue~26_combout\))) # (!\Add1~10_combout\ & ((\lowestValue~26_combout\) # (\Add1~8_combout\ $ (\lowestValue~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~8_combout\,
	datac => \lowestValue~27_combout\,
	datad => \lowestValue~26_combout\,
	combout => \used_counter~15_combout\);

-- Location: LCCOMB_X45_Y27_N22
\used_counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~16_combout\ = (\Equal5~4_combout\ & (((\used_counter~15_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~14_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~14_combout\,
	datab => \Equal5~4_combout\,
	datac => \LessThan4~14_combout\,
	datad => \used_counter~15_combout\,
	combout => \used_counter~16_combout\);

-- Location: LCCOMB_X45_Y27_N30
\used_counter~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~20_combout\ = (\used_counter~19_combout\) # (\used_counter~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~19_combout\,
	datad => \used_counter~16_combout\,
	combout => \used_counter~20_combout\);

-- Location: LCCOMB_X45_Y27_N4
\used_counter~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~77_combout\ = (\Add1~2_combout\ & (!\rst~combout\ & ((\used_counter~75_combout\) # (\used_counter~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \rst~combout\,
	datac => \used_counter~75_combout\,
	datad => \used_counter~20_combout\,
	combout => \used_counter~77_combout\);

-- Location: LCFF_X45_Y27_N5
\used_counter[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~77_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][1]~regout\);

-- Location: LCCOMB_X46_Y27_N8
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\used_counter[1][2]~regout\ & (\Add1~3\ $ (GND))) # (!\used_counter[1][2]~regout\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\used_counter[1][2]~regout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[1][2]~regout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X45_Y27_N6
\used_counter~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~76_combout\ = (!\rst~combout\ & (\Add1~4_combout\ & ((\used_counter~75_combout\) # (\used_counter~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add1~4_combout\,
	datac => \used_counter~75_combout\,
	datad => \used_counter~20_combout\,
	combout => \used_counter~76_combout\);

-- Location: LCFF_X45_Y27_N7
\used_counter[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~76_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][2]~regout\);

-- Location: LCCOMB_X46_Y27_N12
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\used_counter[1][4]~regout\ & (\Add1~7\ $ (GND))) # (!\used_counter[1][4]~regout\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\used_counter[1][4]~regout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[1][4]~regout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X45_Y27_N26
\used_counter~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~73_combout\ = (!\rst~combout\ & (\Add1~8_combout\ & ((\WideOr6~0_combout\) # (\used_counter~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add1~8_combout\,
	datac => \WideOr6~0_combout\,
	datad => \used_counter~20_combout\,
	combout => \used_counter~73_combout\);

-- Location: LCFF_X45_Y27_N27
\used_counter[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~73_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][4]~regout\);

-- Location: LCCOMB_X46_Y27_N28
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\Add1~8_combout\) # ((\Add1~10_combout\) # ((\Add1~12_combout\) # (\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~12_combout\,
	datad => \Add1~14_combout\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X47_Y27_N24
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\Add1~6_combout\) # ((\Add1~2_combout\) # ((\Add1~0_combout\) # (\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~2_combout\,
	datac => \Add1~0_combout\,
	datad => \Add1~4_combout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X46_Y27_N22
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\WideOr0~0_combout\ & ((\WideOr1~1_combout\) # ((\WideOr1~0_combout\)))) # (!\WideOr0~0_combout\ & (\WideOr0~1_combout\ & ((\WideOr1~1_combout\) # (\WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \WideOr1~1_combout\,
	datac => \WideOr0~1_combout\,
	datad => \WideOr1~0_combout\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X47_Y27_N4
\lowestValue[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue[7]~35_combout\ = (\addedIndex[2]~6_combout\ & (\always0~0_combout\ & (\WideOr4~combout\ & \always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addedIndex[2]~6_combout\,
	datab => \always0~0_combout\,
	datac => \WideOr4~combout\,
	datad => \always0~1_combout\,
	combout => \lowestValue[7]~35_combout\);

-- Location: LCFF_X48_Y26_N9
\lowestValue[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~36_combout\,
	ena => \lowestValue[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(6));

-- Location: LCCOMB_X47_Y26_N26
\lowestValue~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~1_combout\ = (\Equal5~0_combout\ & (!lowestValue(6))) # (!\Equal5~0_combout\ & ((\LessThan0~14_combout\ & ((\Add0~12_combout\))) # (!\LessThan0~14_combout\ & (!lowestValue(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => lowestValue(6),
	datac => \Add0~12_combout\,
	datad => \LessThan0~14_combout\,
	combout => \lowestValue~1_combout\);

-- Location: LCCOMB_X48_Y26_N18
\lowestValue~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~38_combout\ = (\Equal5~4_combout\ & (((!\lowestValue~27_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (!\Add4~8_combout\)) # (!\LessThan4~14_combout\ & ((!\lowestValue~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datab => \Equal5~4_combout\,
	datac => \LessThan4~14_combout\,
	datad => \lowestValue~27_combout\,
	combout => \lowestValue~38_combout\);

-- Location: LCFF_X48_Y26_N19
\lowestValue[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~38_combout\,
	ena => \lowestValue[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(4));

-- Location: LCCOMB_X47_Y26_N22
\lowestValue~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~3_combout\ = (\Equal5~0_combout\ & (!lowestValue(4))) # (!\Equal5~0_combout\ & ((\LessThan0~14_combout\ & ((\Add0~8_combout\))) # (!\LessThan0~14_combout\ & (!lowestValue(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => lowestValue(4),
	datac => \Add0~8_combout\,
	datad => \LessThan0~14_combout\,
	combout => \lowestValue~3_combout\);

-- Location: LCCOMB_X47_Y26_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\Add1~0_combout\ & \lowestValue~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \lowestValue~7_combout\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X47_Y26_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\Add1~2_combout\ & ((!\LessThan1~1_cout\) # (!\lowestValue~6_combout\))) # (!\Add1~2_combout\ & (!\lowestValue~6_combout\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \lowestValue~6_combout\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X47_Y26_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\Add1~4_combout\ & (\lowestValue~5_combout\ & !\LessThan1~3_cout\)) # (!\Add1~4_combout\ & ((\lowestValue~5_combout\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \lowestValue~5_combout\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X47_Y26_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\Add1~6_combout\ & ((!\LessThan1~5_cout\) # (!\lowestValue~4_combout\))) # (!\Add1~6_combout\ & (!\lowestValue~4_combout\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \lowestValue~4_combout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X47_Y26_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\Add1~8_combout\ & (\lowestValue~3_combout\ & !\LessThan1~7_cout\)) # (!\Add1~8_combout\ & ((\lowestValue~3_combout\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \lowestValue~3_combout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X47_Y26_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\lowestValue~2_combout\ & (\Add1~10_combout\ & !\LessThan1~9_cout\)) # (!\lowestValue~2_combout\ & ((\Add1~10_combout\) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~2_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X47_Y26_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\Add1~12_combout\ & (\lowestValue~1_combout\ & !\LessThan1~11_cout\)) # (!\Add1~12_combout\ & ((\lowestValue~1_combout\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \lowestValue~1_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X47_Y26_N14
\LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\Add1~14_combout\ & (\LessThan1~13_cout\ & \lowestValue~0_combout\)) # (!\Add1~14_combout\ & ((\LessThan1~13_cout\) # (\lowestValue~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datad => \lowestValue~0_combout\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X46_Y26_N4
\lowestValue~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~9_combout\ = (\Equal5~1_combout\ & (((\lowestValue~1_combout\)))) # (!\Equal5~1_combout\ & ((\LessThan1~14_combout\ & (\Add1~12_combout\)) # (!\LessThan1~14_combout\ & ((\lowestValue~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Equal5~1_combout\,
	datac => \LessThan1~14_combout\,
	datad => \lowestValue~1_combout\,
	combout => \lowestValue~9_combout\);

-- Location: LCCOMB_X46_Y26_N6
\lowestValue~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~17_combout\ = (\Equal5~2_combout\ & (((\lowestValue~9_combout\)))) # (!\Equal5~2_combout\ & ((\LessThan2~14_combout\ & (\Add2~12_combout\)) # (!\LessThan2~14_combout\ & ((\lowestValue~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Equal5~2_combout\,
	datac => \lowestValue~9_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~17_combout\);

-- Location: LCCOMB_X45_Y26_N18
\lowestValue~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~25_combout\ = (\Equal5~3_combout\ & (((\lowestValue~17_combout\)))) # (!\Equal5~3_combout\ & ((\LessThan3~14_combout\ & (\Add3~12_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Add3~12_combout\,
	datac => \LessThan3~14_combout\,
	datad => \lowestValue~17_combout\,
	combout => \lowestValue~25_combout\);

-- Location: LCCOMB_X44_Y26_N12
\LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((!\Add4~0_combout\ & \lowestValue~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \lowestValue~31_combout\,
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X44_Y26_N14
\LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((\Add4~2_combout\ & ((!\LessThan4~1_cout\) # (!\lowestValue~30_combout\))) # (!\Add4~2_combout\ & (!\lowestValue~30_combout\ & !\LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \lowestValue~30_combout\,
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X44_Y26_N16
\LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((\Add4~4_combout\ & (\lowestValue~29_combout\ & !\LessThan4~3_cout\)) # (!\Add4~4_combout\ & ((\lowestValue~29_combout\) # (!\LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \lowestValue~29_combout\,
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X44_Y26_N18
\LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((\lowestValue~28_combout\ & (\Add4~6_combout\ & !\LessThan4~5_cout\)) # (!\lowestValue~28_combout\ & ((\Add4~6_combout\) # (!\LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~28_combout\,
	datab => \Add4~6_combout\,
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X44_Y26_N20
\LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((\lowestValue~27_combout\ & ((!\LessThan4~7_cout\) # (!\Add4~8_combout\))) # (!\lowestValue~27_combout\ & (!\Add4~8_combout\ & !\LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~27_combout\,
	datab => \Add4~8_combout\,
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X44_Y26_N22
\LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((\Add4~10_combout\ & ((!\LessThan4~9_cout\) # (!\lowestValue~26_combout\))) # (!\Add4~10_combout\ & (!\lowestValue~26_combout\ & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \lowestValue~26_combout\,
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X44_Y26_N24
\LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((\Add4~12_combout\ & (\lowestValue~25_combout\ & !\LessThan4~11_cout\)) # (!\Add4~12_combout\ & ((\lowestValue~25_combout\) # (!\LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \lowestValue~25_combout\,
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X44_Y26_N26
\LessThan4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~14_combout\ = (\Add4~14_combout\ & (\LessThan4~13_cout\ & \lowestValue~24_combout\)) # (!\Add4~14_combout\ & ((\LessThan4~13_cout\) # (\lowestValue~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datad => \lowestValue~24_combout\,
	cin => \LessThan4~13_cout\,
	combout => \LessThan4~14_combout\);

-- Location: LCCOMB_X44_Y27_N4
\used_counter~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~47_combout\ = (\lowestValue~30_combout\ & ((\Add4~0_combout\ $ (\lowestValue~31_combout\)) # (!\Add4~2_combout\))) # (!\lowestValue~30_combout\ & ((\Add4~2_combout\) # (\Add4~0_combout\ $ (\lowestValue~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~30_combout\,
	datab => \Add4~0_combout\,
	datac => \Add4~2_combout\,
	datad => \lowestValue~31_combout\,
	combout => \used_counter~47_combout\);

-- Location: LCCOMB_X44_Y27_N18
\used_counter~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~48_combout\ = ((\Equal5~4_combout\) # ((\used_counter~47_combout\ & !\LessThan4~14_combout\))) # (!\always0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \Equal5~4_combout\,
	datac => \used_counter~47_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~48_combout\);

-- Location: LCCOMB_X44_Y27_N22
\used_counter~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~53_combout\ = (\used_counter~48_combout\) # ((\used_counter~52_combout\ & ((\Equal5~4_combout\) # (!\LessThan4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~52_combout\,
	datab => \Equal5~4_combout\,
	datac => \LessThan4~14_combout\,
	datad => \used_counter~48_combout\,
	combout => \used_counter~53_combout\);

-- Location: LCCOMB_X44_Y27_N30
\used_counter~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~62_combout\ = (!\rst~combout\ & (\Add4~14_combout\ & \used_counter~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \Add4~14_combout\,
	datad => \used_counter~53_combout\,
	combout => \used_counter~62_combout\);

-- Location: LCFF_X44_Y27_N31
\used_counter[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~62_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][7]~regout\);

-- Location: LCCOMB_X43_Y27_N30
\Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = \Add4~13\ $ (\used_counter[4][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter[4][7]~regout\,
	cin => \Add4~13\,
	combout => \Add4~14_combout\);

-- Location: LCCOMB_X40_Y26_N16
\lowestValue~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~34_combout\ = (\Equal5~4_combout\ & (!\lowestValue~24_combout\)) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & ((!\Add4~14_combout\))) # (!\LessThan4~14_combout\ & (!\lowestValue~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~24_combout\,
	datab => \Equal5~4_combout\,
	datac => \Add4~14_combout\,
	datad => \LessThan4~14_combout\,
	combout => \lowestValue~34_combout\);

-- Location: LCFF_X40_Y26_N17
\lowestValue[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lowestValue~34_combout\,
	ena => \lowestValue[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lowestValue(7));

-- Location: LCCOMB_X47_Y26_N28
\lowestValue~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~0_combout\ = (\Equal5~0_combout\ & (((!lowestValue(7))))) # (!\Equal5~0_combout\ & ((\LessThan0~14_combout\ & (\Add0~14_combout\)) # (!\LessThan0~14_combout\ & ((!lowestValue(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => lowestValue(7),
	datac => \Equal5~0_combout\,
	datad => \LessThan0~14_combout\,
	combout => \lowestValue~0_combout\);

-- Location: LCCOMB_X47_Y26_N16
\lowestValue~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~8_combout\ = (\Equal5~1_combout\ & (\lowestValue~0_combout\)) # (!\Equal5~1_combout\ & ((\LessThan1~14_combout\ & ((\Add1~14_combout\))) # (!\LessThan1~14_combout\ & (\lowestValue~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \lowestValue~0_combout\,
	datac => \Add1~14_combout\,
	datad => \LessThan1~14_combout\,
	combout => \lowestValue~8_combout\);

-- Location: LCCOMB_X46_Y26_N28
\lowestValue~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~16_combout\ = (\Equal5~2_combout\ & (((\lowestValue~8_combout\)))) # (!\Equal5~2_combout\ & ((\LessThan2~14_combout\ & (\Add2~14_combout\)) # (!\LessThan2~14_combout\ & ((\lowestValue~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Equal5~2_combout\,
	datac => \lowestValue~8_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~16_combout\);

-- Location: LCCOMB_X45_Y26_N30
\lowestValue~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~23_combout\ = (\Equal5~2_combout\ & (((\lowestValue~15_combout\)))) # (!\Equal5~2_combout\ & ((\LessThan2~14_combout\ & (\Add2~0_combout\)) # (!\LessThan2~14_combout\ & ((\lowestValue~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Add2~0_combout\,
	datac => \lowestValue~15_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~23_combout\);

-- Location: LCCOMB_X45_Y26_N0
\LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!\Add3~0_combout\ & \lowestValue~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \lowestValue~23_combout\,
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X45_Y26_N2
\LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\lowestValue~22_combout\ & (\Add3~2_combout\ & !\LessThan3~1_cout\)) # (!\lowestValue~22_combout\ & ((\Add3~2_combout\) # (!\LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~22_combout\,
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X45_Y26_N4
\LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\Add3~4_combout\ & (\lowestValue~21_combout\ & !\LessThan3~3_cout\)) # (!\Add3~4_combout\ & ((\lowestValue~21_combout\) # (!\LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \lowestValue~21_combout\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X45_Y26_N6
\LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((\Add3~6_combout\ & ((!\LessThan3~5_cout\) # (!\lowestValue~20_combout\))) # (!\Add3~6_combout\ & (!\lowestValue~20_combout\ & !\LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \lowestValue~20_combout\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X45_Y26_N8
\LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\Add3~8_combout\ & (\lowestValue~19_combout\ & !\LessThan3~7_cout\)) # (!\Add3~8_combout\ & ((\lowestValue~19_combout\) # (!\LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \lowestValue~19_combout\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X45_Y26_N10
\LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\Add3~10_combout\ & ((!\LessThan3~9_cout\) # (!\lowestValue~18_combout\))) # (!\Add3~10_combout\ & (!\lowestValue~18_combout\ & !\LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \lowestValue~18_combout\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X45_Y26_N12
\LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\lowestValue~17_combout\ & ((!\LessThan3~11_cout\) # (!\Add3~12_combout\))) # (!\lowestValue~17_combout\ & (!\Add3~12_combout\ & !\LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~17_combout\,
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X45_Y26_N14
\LessThan3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~14_combout\ = (\Add3~14_combout\ & (\LessThan3~13_cout\ & \lowestValue~16_combout\)) # (!\Add3~14_combout\ & ((\LessThan3~13_cout\) # (\lowestValue~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~14_combout\,
	datad => \lowestValue~16_combout\,
	cin => \LessThan3~13_cout\,
	combout => \LessThan3~14_combout\);

-- Location: LCCOMB_X44_Y26_N0
\lowestValue~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~31_combout\ = (\Equal5~3_combout\ & (((\lowestValue~23_combout\)))) # (!\Equal5~3_combout\ & ((\LessThan3~14_combout\ & (\Add3~0_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Add3~0_combout\,
	datac => \LessThan3~14_combout\,
	datad => \lowestValue~23_combout\,
	combout => \lowestValue~31_combout\);

-- Location: LCCOMB_X44_Y26_N10
\lowestValue~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~33_combout\ = (\Equal5~4_combout\ & (((!\lowestValue~31_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (!\Add4~0_combout\)) # (!\LessThan4~14_combout\ & ((!\lowestValue~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \lowestValue~31_combout\,
	datac => \Equal5~4_combout\,
	datad => \LessThan4~14_combout\,
	combout => \lowestValue~33_combout\);

-- Location: LCCOMB_X44_Y26_N28
\used_counter~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~46_combout\ = ((\Equal5~3_combout\) # (\Add3~0_combout\ $ (!\lowestValue~33_combout\))) # (!\always0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \Add3~0_combout\,
	datac => \Equal5~3_combout\,
	datad => \lowestValue~33_combout\,
	combout => \used_counter~46_combout\);

-- Location: LCCOMB_X48_Y26_N2
\used_counter~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~44_combout\ = (\Add3~4_combout\ & ((\Add3~6_combout\ $ (\lowestValue~28_combout\)) # (!\lowestValue~29_combout\))) # (!\Add3~4_combout\ & ((\lowestValue~29_combout\) # (\Add3~6_combout\ $ (\lowestValue~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add3~6_combout\,
	datac => \lowestValue~28_combout\,
	datad => \lowestValue~29_combout\,
	combout => \used_counter~44_combout\);

-- Location: LCCOMB_X48_Y26_N12
\used_counter~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~45_combout\ = (\Equal5~4_combout\ & (((\used_counter~44_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~43_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~43_combout\,
	datab => \used_counter~44_combout\,
	datac => \Equal5~4_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~45_combout\);

-- Location: LCCOMB_X44_Y26_N6
\used_counter~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~88_combout\ = (\used_counter~46_combout\) # ((\used_counter~45_combout\) # (\Add3~2_combout\ $ (!\lowestValue~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \used_counter~46_combout\,
	datac => \lowestValue~32_combout\,
	datad => \used_counter~45_combout\,
	combout => \used_counter~88_combout\);

-- Location: LCCOMB_X41_Y26_N8
\used_counter~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~90_combout\ = (\Add3~12_combout\ & (!\rst~combout\ & ((\used_counter~42_combout\) # (\used_counter~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \rst~combout\,
	datac => \used_counter~42_combout\,
	datad => \used_counter~88_combout\,
	combout => \used_counter~90_combout\);

-- Location: LCFF_X41_Y26_N9
\used_counter[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~90_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][6]~regout\);

-- Location: LCCOMB_X40_Y26_N14
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \used_counter[3][7]~regout\ $ (\Add3~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][7]~regout\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X41_Y26_N4
\used_counter~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~40_combout\ = (\Add3~12_combout\ & ((\Add3~14_combout\ $ (\lowestValue~24_combout\)) # (!\lowestValue~25_combout\))) # (!\Add3~12_combout\ & ((\lowestValue~25_combout\) # (\Add3~14_combout\ $ (\lowestValue~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add3~14_combout\,
	datac => \lowestValue~24_combout\,
	datad => \lowestValue~25_combout\,
	combout => \used_counter~40_combout\);

-- Location: LCCOMB_X41_Y26_N14
\used_counter~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~41_combout\ = (\Equal5~4_combout\ & (((\used_counter~40_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~39_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~39_combout\,
	datab => \Equal5~4_combout\,
	datac => \used_counter~40_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~41_combout\);

-- Location: LCCOMB_X41_Y26_N20
\used_counter~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~37_combout\ = (\Add3~8_combout\ & ((\Add3~10_combout\ $ (\lowestValue~26_combout\)) # (!\lowestValue~27_combout\))) # (!\Add3~8_combout\ & ((\lowestValue~27_combout\) # (\Add3~10_combout\ $ (\lowestValue~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add3~10_combout\,
	datac => \lowestValue~27_combout\,
	datad => \lowestValue~26_combout\,
	combout => \used_counter~37_combout\);

-- Location: LCCOMB_X41_Y26_N2
\used_counter~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~38_combout\ = (\Equal5~4_combout\ & (((\used_counter~37_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~36_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~36_combout\,
	datab => \Equal5~4_combout\,
	datac => \used_counter~37_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~38_combout\);

-- Location: LCCOMB_X41_Y26_N16
\used_counter~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~42_combout\ = (\used_counter~41_combout\) # (\used_counter~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~41_combout\,
	datad => \used_counter~38_combout\,
	combout => \used_counter~42_combout\);

-- Location: LCCOMB_X41_Y26_N10
\used_counter~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~95_combout\ = (\Add3~2_combout\ & (!\rst~combout\ & ((\used_counter~42_combout\) # (\used_counter~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \rst~combout\,
	datac => \used_counter~42_combout\,
	datad => \used_counter~88_combout\,
	combout => \used_counter~95_combout\);

-- Location: LCFF_X41_Y26_N11
\used_counter[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~95_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][1]~regout\);

-- Location: LCCOMB_X45_Y26_N16
\lowestValue~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~22_combout\ = (\Equal5~2_combout\ & (\lowestValue~14_combout\)) # (!\Equal5~2_combout\ & ((\LessThan2~14_combout\ & ((\Add2~2_combout\))) # (!\LessThan2~14_combout\ & (\lowestValue~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~14_combout\,
	datab => \Add2~2_combout\,
	datac => \Equal5~2_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~22_combout\);

-- Location: LCCOMB_X44_Y27_N10
\lowestValue~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~30_combout\ = (\Equal5~3_combout\ & (((\lowestValue~22_combout\)))) # (!\Equal5~3_combout\ & ((\LessThan3~14_combout\ & (\Add3~2_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Add3~2_combout\,
	datac => \LessThan3~14_combout\,
	datad => \lowestValue~22_combout\,
	combout => \lowestValue~30_combout\);

-- Location: LCCOMB_X44_Y26_N4
\lowestValue~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~32_combout\ = (\Equal5~4_combout\ & (((!\lowestValue~30_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (!\Add4~2_combout\)) # (!\LessThan4~14_combout\ & ((!\lowestValue~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Equal5~4_combout\,
	datac => \lowestValue~30_combout\,
	datad => \LessThan4~14_combout\,
	combout => \lowestValue~32_combout\);

-- Location: LCCOMB_X42_Y26_N0
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\used_counter~11_combout\) # ((\used_counter~12_combout\) # (\Add0~2_combout\ $ (!\lowestValue~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \lowestValue~32_combout\,
	datac => \used_counter~11_combout\,
	datad => \used_counter~12_combout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X42_Y26_N16
\used_counter~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~59_combout\ = (!\rst~combout\ & (\Add0~10_combout\ & ((\used_counter~8_combout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add0~10_combout\,
	datac => \used_counter~8_combout\,
	datad => \WideOr5~0_combout\,
	combout => \used_counter~59_combout\);

-- Location: LCFF_X42_Y26_N17
\used_counter[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~59_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][5]~regout\);

-- Location: LCCOMB_X42_Y27_N16
\used_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~3_combout\ = (\Add0~8_combout\ & ((\Add0~10_combout\ $ (\lowestValue~26_combout\)) # (!\lowestValue~27_combout\))) # (!\Add0~8_combout\ & ((\lowestValue~27_combout\) # (\Add0~10_combout\ $ (\lowestValue~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \lowestValue~27_combout\,
	datad => \lowestValue~26_combout\,
	combout => \used_counter~3_combout\);

-- Location: LCCOMB_X42_Y26_N24
\used_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~4_combout\ = (\Equal5~4_combout\ & (((\used_counter~3_combout\)))) # (!\Equal5~4_combout\ & ((\LessThan4~14_combout\ & (\used_counter~2_combout\)) # (!\LessThan4~14_combout\ & ((\used_counter~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~2_combout\,
	datab => \Equal5~4_combout\,
	datac => \used_counter~3_combout\,
	datad => \LessThan4~14_combout\,
	combout => \used_counter~4_combout\);

-- Location: LCCOMB_X42_Y26_N20
\used_counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~8_combout\ = (\used_counter~4_combout\) # (\used_counter~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~4_combout\,
	datad => \used_counter~7_combout\,
	combout => \used_counter~8_combout\);

-- Location: LCCOMB_X42_Y26_N26
\used_counter~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~60_combout\ = (!\rst~combout\ & (\Add0~12_combout\ & ((\used_counter~8_combout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add0~12_combout\,
	datac => \used_counter~8_combout\,
	datad => \WideOr5~0_combout\,
	combout => \used_counter~60_combout\);

-- Location: LCFF_X42_Y26_N27
\used_counter[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~60_combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][6]~regout\);

-- Location: LCCOMB_X43_Y27_N4
\WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\Add0~10_combout\) # ((\Add0~12_combout\) # ((\Add0~14_combout\) # (\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~8_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X42_Y26_N12
\WideOr5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (\WideOr0~0_combout\ & (((\used_counter~8_combout\) # (\WideOr5~0_combout\)))) # (!\WideOr0~0_combout\ & (\WideOr0~1_combout\ & ((\used_counter~8_combout\) # (\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \WideOr0~1_combout\,
	datac => \used_counter~8_combout\,
	datad => \WideOr5~0_combout\,
	combout => \WideOr5~1_combout\);

-- Location: LCFF_X42_Y26_N13
\l1~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr5~1_combout\,
	sclr => \rst~combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1~reg0_regout\);

-- Location: LCCOMB_X45_Y27_N28
\WideOr6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~1_combout\ = (\WideOr1~0_combout\ & (((\WideOr6~0_combout\) # (\used_counter~20_combout\)))) # (!\WideOr1~0_combout\ & (\WideOr1~1_combout\ & ((\WideOr6~0_combout\) # (\used_counter~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \WideOr1~1_combout\,
	datac => \WideOr6~0_combout\,
	datad => \used_counter~20_combout\,
	combout => \WideOr6~1_combout\);

-- Location: LCFF_X45_Y27_N29
\l2~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr6~1_combout\,
	sclr => \rst~combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2~reg0_regout\);

-- Location: LCCOMB_X44_Y26_N2
\WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\used_counter~35_combout\) # ((\used_counter~34_combout\) # (\Add2~2_combout\ $ (!\lowestValue~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \lowestValue~32_combout\,
	datac => \used_counter~35_combout\,
	datad => \used_counter~34_combout\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X49_Y26_N0
\WideOr7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~1_combout\ = (\WideOr2~0_combout\ & (((\used_counter~31_combout\) # (\WideOr7~0_combout\)))) # (!\WideOr2~0_combout\ & (\WideOr2~1_combout\ & ((\used_counter~31_combout\) # (\WideOr7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \WideOr2~1_combout\,
	datac => \used_counter~31_combout\,
	datad => \WideOr7~0_combout\,
	combout => \WideOr7~1_combout\);

-- Location: LCFF_X49_Y26_N1
\l3~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr7~1_combout\,
	sclr => \rst~combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3~reg0_regout\);

-- Location: LCCOMB_X41_Y26_N18
\WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\used_counter~46_combout\) # ((\used_counter~45_combout\) # (\lowestValue~32_combout\ $ (!\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~32_combout\,
	datab => \Add3~2_combout\,
	datac => \used_counter~46_combout\,
	datad => \used_counter~45_combout\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X41_Y26_N24
\WideOr8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~1_combout\ = (\WideOr3~1_combout\ & (((\used_counter~42_combout\) # (\WideOr8~0_combout\)))) # (!\WideOr3~1_combout\ & (\WideOr3~0_combout\ & ((\used_counter~42_combout\) # (\WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~1_combout\,
	datab => \WideOr3~0_combout\,
	datac => \used_counter~42_combout\,
	datad => \WideOr8~0_combout\,
	combout => \WideOr8~1_combout\);

-- Location: LCFF_X41_Y26_N25
\l4~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr8~1_combout\,
	sclr => \rst~combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4~reg0_regout\);

-- Location: LCCOMB_X44_Y27_N0
\WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\WideOr4~combout\ & \used_counter~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr4~combout\,
	datad => \used_counter~53_combout\,
	combout => \WideOr9~0_combout\);

-- Location: LCFF_X44_Y27_N1
\l5~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr9~0_combout\,
	sclr => \rst~combout\,
	ena => \used_counter[1][6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l5~reg0_regout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


