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

-- DATE "05/15/2023 21:52:25"

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
	l1 : OUT std_logic;
	l2 : OUT std_logic;
	l3 : OUT std_logic;
	l4 : OUT std_logic
	);
END lfu;

-- Design Ports Information
-- l1	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l2	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l3	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l4	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rst	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b4	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b3	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b1	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b2	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_l1 : std_logic;
SIGNAL ww_l2 : std_logic;
SIGNAL ww_l3 : std_logic;
SIGNAL ww_l4 : std_logic;
SIGNAL \t|timedClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \used_counter_ff[2][2]~regout\ : std_logic;
SIGNAL \used_counter_ff[3][3]~regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \t|Add0~0_combout\ : std_logic;
SIGNAL \t|Add0~1\ : std_logic;
SIGNAL \t|Add0~2_combout\ : std_logic;
SIGNAL \t|Add0~3\ : std_logic;
SIGNAL \t|Add0~4_combout\ : std_logic;
SIGNAL \t|Add0~5\ : std_logic;
SIGNAL \t|Add0~6_combout\ : std_logic;
SIGNAL \t|Add0~7\ : std_logic;
SIGNAL \t|Add0~8_combout\ : std_logic;
SIGNAL \t|Add0~9\ : std_logic;
SIGNAL \t|Add0~10_combout\ : std_logic;
SIGNAL \t|Add0~11\ : std_logic;
SIGNAL \t|Add0~12_combout\ : std_logic;
SIGNAL \t|Add0~13\ : std_logic;
SIGNAL \t|Add0~14_combout\ : std_logic;
SIGNAL \t|Add0~15\ : std_logic;
SIGNAL \t|Add0~16_combout\ : std_logic;
SIGNAL \t|Add0~17\ : std_logic;
SIGNAL \t|Add0~18_combout\ : std_logic;
SIGNAL \t|Add0~19\ : std_logic;
SIGNAL \t|Add0~20_combout\ : std_logic;
SIGNAL \t|Add0~21\ : std_logic;
SIGNAL \t|Add0~22_combout\ : std_logic;
SIGNAL \t|Add0~23\ : std_logic;
SIGNAL \t|Add0~24_combout\ : std_logic;
SIGNAL \t|Add0~25\ : std_logic;
SIGNAL \t|Add0~26_combout\ : std_logic;
SIGNAL \t|Add0~27\ : std_logic;
SIGNAL \t|Add0~28_combout\ : std_logic;
SIGNAL \t|Add0~29\ : std_logic;
SIGNAL \t|Add0~30_combout\ : std_logic;
SIGNAL \t|Add0~31\ : std_logic;
SIGNAL \t|Add0~32_combout\ : std_logic;
SIGNAL \t|Add0~33\ : std_logic;
SIGNAL \t|Add0~34_combout\ : std_logic;
SIGNAL \t|Add0~35\ : std_logic;
SIGNAL \t|Add0~36_combout\ : std_logic;
SIGNAL \t|Add0~37\ : std_logic;
SIGNAL \t|Add0~38_combout\ : std_logic;
SIGNAL \t|Add0~39\ : std_logic;
SIGNAL \t|Add0~40_combout\ : std_logic;
SIGNAL \t|Add0~41\ : std_logic;
SIGNAL \t|Add0~42_combout\ : std_logic;
SIGNAL \t|Add0~43\ : std_logic;
SIGNAL \t|Add0~44_combout\ : std_logic;
SIGNAL \t|Add0~45\ : std_logic;
SIGNAL \t|Add0~46_combout\ : std_logic;
SIGNAL \t|Add0~47\ : std_logic;
SIGNAL \t|Add0~48_combout\ : std_logic;
SIGNAL \t|Add0~49\ : std_logic;
SIGNAL \t|Add0~50_combout\ : std_logic;
SIGNAL \t|Add0~51\ : std_logic;
SIGNAL \t|Add0~52_combout\ : std_logic;
SIGNAL \t|Add0~53\ : std_logic;
SIGNAL \t|Add0~54_combout\ : std_logic;
SIGNAL \t|Add0~55\ : std_logic;
SIGNAL \t|Add0~56_combout\ : std_logic;
SIGNAL \t|Add0~57\ : std_logic;
SIGNAL \t|Add0~58_combout\ : std_logic;
SIGNAL \t|Add0~59\ : std_logic;
SIGNAL \t|Add0~60_combout\ : std_logic;
SIGNAL \t|Add0~61\ : std_logic;
SIGNAL \t|Add0~62_combout\ : std_logic;
SIGNAL \NextState~1_combout\ : std_logic;
SIGNAL \t|timedClock~regout\ : std_logic;
SIGNAL \used_counter~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \used_counter~1_combout\ : std_logic;
SIGNAL \used_counter~3_combout\ : std_logic;
SIGNAL \lowestValue~2_combout\ : std_logic;
SIGNAL \lowestValue~4_combout\ : std_logic;
SIGNAL \lowestValue~5_combout\ : std_logic;
SIGNAL \lowestValue~6_combout\ : std_logic;
SIGNAL \lowestValue~7_combout\ : std_logic;
SIGNAL \used_counter~8_combout\ : std_logic;
SIGNAL \used_counter~10_combout\ : std_logic;
SIGNAL \used_counter~12_combout\ : std_logic;
SIGNAL \used_counter~16_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \used_counter~22_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \t|Equal0~0_combout\ : std_logic;
SIGNAL \t|Equal0~1_combout\ : std_logic;
SIGNAL \t|Equal0~2_combout\ : std_logic;
SIGNAL \t|Equal0~3_combout\ : std_logic;
SIGNAL \t|Equal0~4_combout\ : std_logic;
SIGNAL \t|Equal0~5_combout\ : std_logic;
SIGNAL \t|Equal0~6_combout\ : std_logic;
SIGNAL \t|Equal0~7_combout\ : std_logic;
SIGNAL \t|Equal0~8_combout\ : std_logic;
SIGNAL \t|Equal0~9_combout\ : std_logic;
SIGNAL \t|Equal0~10_combout\ : std_logic;
SIGNAL \t|counter~0_combout\ : std_logic;
SIGNAL \t|counter~1_combout\ : std_logic;
SIGNAL \t|counter~2_combout\ : std_logic;
SIGNAL \t|counter~3_combout\ : std_logic;
SIGNAL \t|counter~4_combout\ : std_logic;
SIGNAL \t|counter~5_combout\ : std_logic;
SIGNAL \t|counter~6_combout\ : std_logic;
SIGNAL \t|counter~7_combout\ : std_logic;
SIGNAL \t|counter~8_combout\ : std_logic;
SIGNAL \t|counter~9_combout\ : std_logic;
SIGNAL \t|counter~10_combout\ : std_logic;
SIGNAL \t|counter~11_combout\ : std_logic;
SIGNAL \t|counter~12_combout\ : std_logic;
SIGNAL \t|counter~13_combout\ : std_logic;
SIGNAL \t|counter~14_combout\ : std_logic;
SIGNAL \t|counter~15_combout\ : std_logic;
SIGNAL \t|counter~16_combout\ : std_logic;
SIGNAL \t|counter~17_combout\ : std_logic;
SIGNAL \t|counter~18_combout\ : std_logic;
SIGNAL \t|counter~19_combout\ : std_logic;
SIGNAL \t|counter~20_combout\ : std_logic;
SIGNAL \t|counter~21_combout\ : std_logic;
SIGNAL \t|counter~22_combout\ : std_logic;
SIGNAL \t|counter~23_combout\ : std_logic;
SIGNAL \t|counter~24_combout\ : std_logic;
SIGNAL \t|counter~25_combout\ : std_logic;
SIGNAL \t|counter~26_combout\ : std_logic;
SIGNAL \t|counter~27_combout\ : std_logic;
SIGNAL \t|counter~28_combout\ : std_logic;
SIGNAL \t|counter~29_combout\ : std_logic;
SIGNAL \t|counter~30_combout\ : std_logic;
SIGNAL \t|counter~31_combout\ : std_logic;
SIGNAL \b2~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \t|timedClock~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \b1~combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \used_counter~5_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \b3~combout\ : std_logic;
SIGNAL \b4~combout\ : std_logic;
SIGNAL \NextState[0]~0_combout\ : std_logic;
SIGNAL \NextState~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \used_counter_ff[3][5]~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \used_counter_ff[3][4]~regout\ : std_logic;
SIGNAL \used_counter~4_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \used_counter_ff[3][2]~regout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \used_counter~2_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \used_counter_ff[1][0]~regout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \used_counter_ff[0][7]~regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \used_counter_ff[1][7]~regout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \used_counter_ff[1][1]~regout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \used_counter_ff[1][3]~regout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \used_counter_ff[1][4]~regout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \used_counter_ff[1][6]~regout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \used_counter_ff[0][3]~regout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \used_counter_ff[0][2]~regout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \used_counter_ff[0][1]~regout\ : std_logic;
SIGNAL \Selector31~3_combout\ : std_logic;
SIGNAL \used_counter_ff[0][0]~regout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \lowestValue~1_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \used_counter_ff[2][1]~regout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \used_counter_ff[2][0]~regout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \used_counter~29_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \used_counter_ff[3][6]~regout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \WideOr7~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \used_counter_ff[2][3]~regout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \used_counter_ff[2][5]~regout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \always1~1_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \used_counter_ff[3][7]~regout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \used_counter~34_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \used_counter_ff[2][6]~regout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \lowestValue~0_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \lowestValue~10_combout\ : std_logic;
SIGNAL \used_counter~35_combout\ : std_logic;
SIGNAL \used_counter~36_combout\ : std_logic;
SIGNAL \used_counter~31_combout\ : std_logic;
SIGNAL \lowestValue~12_combout\ : std_logic;
SIGNAL \used_counter~32_combout\ : std_logic;
SIGNAL \used_counter~33_combout\ : std_logic;
SIGNAL \used_counter~37_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \lowestValue~13_combout\ : std_logic;
SIGNAL \lowestValue~19_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \lowestValue~14_combout\ : std_logic;
SIGNAL \lowestValue~18_combout\ : std_logic;
SIGNAL \used_counter~30_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \used_counter_ff[2][7]~regout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \lowestValue~9_combout\ : std_logic;
SIGNAL \lowestValue~8_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~14_combout\ : std_logic;
SIGNAL \lowestValue~16_combout\ : std_logic;
SIGNAL \used_counter~20_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \used_counter~21_combout\ : std_logic;
SIGNAL \used_counter~25_combout\ : std_logic;
SIGNAL \used_counter~26_combout\ : std_logic;
SIGNAL \used_counter~27_combout\ : std_logic;
SIGNAL \used_counter~23_combout\ : std_logic;
SIGNAL \used_counter~24_combout\ : std_logic;
SIGNAL \used_counter~28_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \used_counter_ff[1][5]~regout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \used_counter_ff[0][4]~regout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \used_counter_ff[0][5]~regout\ : std_logic;
SIGNAL \lowestValue~3_combout\ : std_logic;
SIGNAL \lowestValue~11_combout\ : std_logic;
SIGNAL \used_counter~40_combout\ : std_logic;
SIGNAL \used_counter~41_combout\ : std_logic;
SIGNAL \used_counter~42_combout\ : std_logic;
SIGNAL \used_counter~43_combout\ : std_logic;
SIGNAL \used_counter~38_combout\ : std_logic;
SIGNAL \used_counter~39_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \used_counter_ff[3][1]~regout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \lowestValue~15_combout\ : std_logic;
SIGNAL \lowestValue~17_combout\ : std_logic;
SIGNAL \used_counter~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \used_counter~7_combout\ : std_logic;
SIGNAL \used_counter~9_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \used_counter~15_combout\ : std_logic;
SIGNAL \used_counter~17_combout\ : std_logic;
SIGNAL \used_counter~18_combout\ : std_logic;
SIGNAL \used_counter~11_combout\ : std_logic;
SIGNAL \used_counter~13_combout\ : std_logic;
SIGNAL \used_counter~14_combout\ : std_logic;
SIGNAL \used_counter~19_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \used_counter_ff[0][6]~regout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \used_counter_ff[1][2]~regout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \used_counter_ff[2][4]~regout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \used_counter_ff[3][0]~regout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL NextState : std_logic_vector(31 DOWNTO 0);
SIGNAL \t|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_b1 <= b1;
ww_b2 <= b2;
ww_b3 <= b3;
ww_b4 <= b4;
l1 <= ww_l1;
l2 <= ww_l2;
l3 <= ww_l3;
l4 <= ww_l4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\t|timedClock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \t|timedClock~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: LCFF_X60_Y21_N3
\used_counter_ff[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[2][2]~regout\);

-- Location: LCFF_X58_Y21_N17
\used_counter_ff[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[3][3]~regout\);

-- Location: LCCOMB_X53_Y20_N4
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \used_counter_ff[0][0]~regout\ $ (VCC)
-- \Add0~1\ = CARRY(\used_counter_ff[0][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][0]~regout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X53_Y20_N10
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\used_counter_ff[0][3]~regout\ & (!\Add0~5\)) # (!\used_counter_ff[0][3]~regout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\used_counter_ff[0][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[0][3]~regout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X53_Y20_N12
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\used_counter_ff[0][4]~regout\ & (\Add0~7\ $ (GND))) # (!\used_counter_ff[0][4]~regout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\used_counter_ff[0][4]~regout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[0][4]~regout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X53_Y20_N16
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\used_counter_ff[0][6]~regout\ & (\Add0~11\ $ (GND))) # (!\used_counter_ff[0][6]~regout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\used_counter_ff[0][6]~regout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[0][6]~regout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X53_Y20_N18
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (\used_counter_ff[0][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter_ff[0][7]~regout\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X56_Y20_N10
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\used_counter_ff[1][1]~regout\ & (!\Add1~1\)) # (!\used_counter_ff[1][1]~regout\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\used_counter_ff[1][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[1][1]~regout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X47_Y25_N0
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

-- Location: LCCOMB_X47_Y25_N2
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

-- Location: LCCOMB_X47_Y25_N4
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

-- Location: LCCOMB_X47_Y25_N6
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

-- Location: LCCOMB_X47_Y25_N8
\t|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~8_combout\ = (\t|counter\(4) & (\t|Add0~7\ $ (GND))) # (!\t|counter\(4) & (!\t|Add0~7\ & VCC))
-- \t|Add0~9\ = CARRY((\t|counter\(4) & !\t|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(4),
	datad => VCC,
	cin => \t|Add0~7\,
	combout => \t|Add0~8_combout\,
	cout => \t|Add0~9\);

-- Location: LCCOMB_X47_Y25_N10
\t|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~10_combout\ = (\t|counter\(5) & (!\t|Add0~9\)) # (!\t|counter\(5) & ((\t|Add0~9\) # (GND)))
-- \t|Add0~11\ = CARRY((!\t|Add0~9\) # (!\t|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(5),
	datad => VCC,
	cin => \t|Add0~9\,
	combout => \t|Add0~10_combout\,
	cout => \t|Add0~11\);

-- Location: LCCOMB_X47_Y25_N12
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

-- Location: LCCOMB_X47_Y25_N14
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

-- Location: LCCOMB_X47_Y25_N16
\t|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~16_combout\ = (\t|counter\(8) & (\t|Add0~15\ $ (GND))) # (!\t|counter\(8) & (!\t|Add0~15\ & VCC))
-- \t|Add0~17\ = CARRY((\t|counter\(8) & !\t|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(8),
	datad => VCC,
	cin => \t|Add0~15\,
	combout => \t|Add0~16_combout\,
	cout => \t|Add0~17\);

-- Location: LCCOMB_X47_Y25_N18
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

-- Location: LCCOMB_X47_Y25_N20
\t|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~20_combout\ = (\t|counter\(10) & (\t|Add0~19\ $ (GND))) # (!\t|counter\(10) & (!\t|Add0~19\ & VCC))
-- \t|Add0~21\ = CARRY((\t|counter\(10) & !\t|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(10),
	datad => VCC,
	cin => \t|Add0~19\,
	combout => \t|Add0~20_combout\,
	cout => \t|Add0~21\);

-- Location: LCCOMB_X47_Y25_N22
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

-- Location: LCCOMB_X47_Y25_N24
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

-- Location: LCCOMB_X47_Y25_N26
\t|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~26_combout\ = (\t|counter\(13) & (!\t|Add0~25\)) # (!\t|counter\(13) & ((\t|Add0~25\) # (GND)))
-- \t|Add0~27\ = CARRY((!\t|Add0~25\) # (!\t|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(13),
	datad => VCC,
	cin => \t|Add0~25\,
	combout => \t|Add0~26_combout\,
	cout => \t|Add0~27\);

-- Location: LCCOMB_X47_Y25_N28
\t|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~28_combout\ = (\t|counter\(14) & (\t|Add0~27\ $ (GND))) # (!\t|counter\(14) & (!\t|Add0~27\ & VCC))
-- \t|Add0~29\ = CARRY((\t|counter\(14) & !\t|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(14),
	datad => VCC,
	cin => \t|Add0~27\,
	combout => \t|Add0~28_combout\,
	cout => \t|Add0~29\);

-- Location: LCCOMB_X47_Y25_N30
\t|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~30_combout\ = (\t|counter\(15) & (!\t|Add0~29\)) # (!\t|counter\(15) & ((\t|Add0~29\) # (GND)))
-- \t|Add0~31\ = CARRY((!\t|Add0~29\) # (!\t|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(15),
	datad => VCC,
	cin => \t|Add0~29\,
	combout => \t|Add0~30_combout\,
	cout => \t|Add0~31\);

-- Location: LCCOMB_X47_Y24_N0
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

-- Location: LCCOMB_X47_Y24_N2
\t|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~34_combout\ = (\t|counter\(17) & (!\t|Add0~33\)) # (!\t|counter\(17) & ((\t|Add0~33\) # (GND)))
-- \t|Add0~35\ = CARRY((!\t|Add0~33\) # (!\t|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(17),
	datad => VCC,
	cin => \t|Add0~33\,
	combout => \t|Add0~34_combout\,
	cout => \t|Add0~35\);

-- Location: LCCOMB_X47_Y24_N4
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

-- Location: LCCOMB_X47_Y24_N6
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

-- Location: LCCOMB_X47_Y24_N8
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

-- Location: LCCOMB_X47_Y24_N10
\t|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~42_combout\ = (\t|counter\(21) & (!\t|Add0~41\)) # (!\t|counter\(21) & ((\t|Add0~41\) # (GND)))
-- \t|Add0~43\ = CARRY((!\t|Add0~41\) # (!\t|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(21),
	datad => VCC,
	cin => \t|Add0~41\,
	combout => \t|Add0~42_combout\,
	cout => \t|Add0~43\);

-- Location: LCCOMB_X47_Y24_N12
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

-- Location: LCCOMB_X47_Y24_N14
\t|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~46_combout\ = (\t|counter\(23) & (!\t|Add0~45\)) # (!\t|counter\(23) & ((\t|Add0~45\) # (GND)))
-- \t|Add0~47\ = CARRY((!\t|Add0~45\) # (!\t|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(23),
	datad => VCC,
	cin => \t|Add0~45\,
	combout => \t|Add0~46_combout\,
	cout => \t|Add0~47\);

-- Location: LCCOMB_X47_Y24_N16
\t|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~48_combout\ = (\t|counter\(24) & (\t|Add0~47\ $ (GND))) # (!\t|counter\(24) & (!\t|Add0~47\ & VCC))
-- \t|Add0~49\ = CARRY((\t|counter\(24) & !\t|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(24),
	datad => VCC,
	cin => \t|Add0~47\,
	combout => \t|Add0~48_combout\,
	cout => \t|Add0~49\);

-- Location: LCCOMB_X47_Y24_N18
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

-- Location: LCCOMB_X47_Y24_N20
\t|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~52_combout\ = (\t|counter\(26) & (\t|Add0~51\ $ (GND))) # (!\t|counter\(26) & (!\t|Add0~51\ & VCC))
-- \t|Add0~53\ = CARRY((\t|counter\(26) & !\t|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(26),
	datad => VCC,
	cin => \t|Add0~51\,
	combout => \t|Add0~52_combout\,
	cout => \t|Add0~53\);

-- Location: LCCOMB_X47_Y24_N22
\t|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~54_combout\ = (\t|counter\(27) & (!\t|Add0~53\)) # (!\t|counter\(27) & ((\t|Add0~53\) # (GND)))
-- \t|Add0~55\ = CARRY((!\t|Add0~53\) # (!\t|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(27),
	datad => VCC,
	cin => \t|Add0~53\,
	combout => \t|Add0~54_combout\,
	cout => \t|Add0~55\);

-- Location: LCCOMB_X47_Y24_N24
\t|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~56_combout\ = (\t|counter\(28) & (\t|Add0~55\ $ (GND))) # (!\t|counter\(28) & (!\t|Add0~55\ & VCC))
-- \t|Add0~57\ = CARRY((\t|counter\(28) & !\t|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(28),
	datad => VCC,
	cin => \t|Add0~55\,
	combout => \t|Add0~56_combout\,
	cout => \t|Add0~57\);

-- Location: LCCOMB_X47_Y24_N26
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

-- Location: LCCOMB_X47_Y24_N28
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

-- Location: LCCOMB_X47_Y24_N30
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

-- Location: LCFF_X61_Y20_N13
\NextState[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \NextState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => NextState(1));

-- Location: LCCOMB_X61_Y20_N12
\NextState~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \NextState~1_combout\ = (NextState(0) & (!NextState(1) & !\NextState[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => NextState(0),
	datac => NextState(1),
	datad => \NextState[0]~0_combout\,
	combout => \NextState~1_combout\);

-- Location: LCFF_X48_Y24_N1
\t|timedClock\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|Equal0~10_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|timedClock~regout\);

-- Location: LCCOMB_X53_Y20_N2
\used_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~0_combout\ = (\b1~combout\ & ((\Add0~14_combout\))) # (!\b1~combout\ & (\used_counter_ff[0][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[0][7]~regout\,
	datac => \b1~combout\,
	datad => \Add0~14_combout\,
	combout => \used_counter~0_combout\);

-- Location: LCCOMB_X61_Y20_N0
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!NextState(0) & NextState(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => NextState(0),
	datad => NextState(1),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X54_Y20_N10
\used_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~1_combout\ = (\b1~combout\ & (\Add0~0_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => \Add0~0_combout\,
	datad => \used_counter_ff[0][0]~regout\,
	combout => \used_counter~1_combout\);

-- Location: LCCOMB_X61_Y20_N4
\used_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~3_combout\ = (\b1~combout\) # (!\b2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datac => \b1~combout\,
	combout => \used_counter~3_combout\);

-- Location: LCCOMB_X57_Y20_N0
\lowestValue~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~2_combout\ = (\used_counter~3_combout\ & ((\LessThan1~14_combout\ & ((\Add1~12_combout\))) # (!\LessThan1~14_combout\ & (\used_counter_ff[0][6]~regout\)))) # (!\used_counter~3_combout\ & (\used_counter_ff[0][6]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \used_counter_ff[0][6]~regout\,
	datac => \Add1~12_combout\,
	datad => \LessThan1~14_combout\,
	combout => \lowestValue~2_combout\);

-- Location: LCCOMB_X57_Y20_N12
\lowestValue~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~4_combout\ = (\used_counter~3_combout\ & ((\LessThan1~14_combout\ & (\Add1~8_combout\)) # (!\LessThan1~14_combout\ & ((\used_counter_ff[0][4]~regout\))))) # (!\used_counter~3_combout\ & (((\used_counter_ff[0][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \Add1~8_combout\,
	datac => \used_counter_ff[0][4]~regout\,
	datad => \LessThan1~14_combout\,
	combout => \lowestValue~4_combout\);

-- Location: LCCOMB_X57_Y20_N10
\lowestValue~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~5_combout\ = (\used_counter~3_combout\ & ((\LessThan1~14_combout\ & (\Add1~6_combout\)) # (!\LessThan1~14_combout\ & ((\used_counter_ff[0][3]~regout\))))) # (!\used_counter~3_combout\ & (((\used_counter_ff[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \Add1~6_combout\,
	datac => \used_counter_ff[0][3]~regout\,
	datad => \LessThan1~14_combout\,
	combout => \lowestValue~5_combout\);

-- Location: LCCOMB_X57_Y20_N8
\lowestValue~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~6_combout\ = (\used_counter~3_combout\ & ((\LessThan1~14_combout\ & ((\Add1~4_combout\))) # (!\LessThan1~14_combout\ & (\used_counter_ff[0][2]~regout\)))) # (!\used_counter~3_combout\ & (\used_counter_ff[0][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \used_counter_ff[0][2]~regout\,
	datac => \Add1~4_combout\,
	datad => \LessThan1~14_combout\,
	combout => \lowestValue~6_combout\);

-- Location: LCCOMB_X57_Y20_N2
\lowestValue~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~7_combout\ = (\used_counter~3_combout\ & ((\LessThan1~14_combout\ & ((\Add1~2_combout\))) # (!\LessThan1~14_combout\ & (\used_counter_ff[0][1]~regout\)))) # (!\used_counter~3_combout\ & (\used_counter_ff[0][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \used_counter_ff[0][1]~regout\,
	datac => \Add1~2_combout\,
	datad => \LessThan1~14_combout\,
	combout => \lowestValue~7_combout\);

-- Location: LCCOMB_X54_Y20_N28
\used_counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~8_combout\ = (\b1~combout\ & ((\Add0~6_combout\))) # (!\b1~combout\ & (\used_counter_ff[0][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => \used_counter_ff[0][3]~regout\,
	datad => \Add0~6_combout\,
	combout => \used_counter~8_combout\);

-- Location: LCCOMB_X53_Y20_N28
\used_counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~10_combout\ = (\b1~combout\ & ((\Add0~8_combout\))) # (!\b1~combout\ & (\used_counter_ff[0][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[0][4]~regout\,
	datac => \b1~combout\,
	datad => \Add0~8_combout\,
	combout => \used_counter~10_combout\);

-- Location: LCCOMB_X54_Y20_N2
\used_counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~12_combout\ = (\used_counter~10_combout\ & ((\used_counter~11_combout\ $ (\Add3~10_combout\)) # (!\Add3~8_combout\))) # (!\used_counter~10_combout\ & ((\Add3~8_combout\) # (\used_counter~11_combout\ $ (\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~10_combout\,
	datab => \used_counter~11_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~8_combout\,
	combout => \used_counter~12_combout\);

-- Location: LCCOMB_X60_Y20_N10
\used_counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~16_combout\ = (\Add3~14_combout\ & ((\used_counter~15_combout\ $ (\Add3~12_combout\)) # (!\used_counter~0_combout\))) # (!\Add3~14_combout\ & ((\used_counter~0_combout\) # (\used_counter~15_combout\ $ (\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \used_counter~0_combout\,
	datac => \used_counter~15_combout\,
	datad => \Add3~12_combout\,
	combout => \used_counter~16_combout\);

-- Location: LCCOMB_X53_Y20_N30
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\used_counter~11_combout\) # ((\used_counter~10_combout\) # ((\used_counter~15_combout\) # (\used_counter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~11_combout\,
	datab => \used_counter~10_combout\,
	datac => \used_counter~15_combout\,
	datad => \used_counter~0_combout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X54_Y20_N8
\WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (\used_counter~1_combout\) # ((\b1~combout\ & ((\Add0~2_combout\))) # (!\b1~combout\ & (\used_counter_ff[0][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][1]~regout\,
	datab => \b1~combout\,
	datac => \Add0~2_combout\,
	datad => \used_counter~1_combout\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X54_Y20_N14
WideOr4 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\WideOr4~0_combout\) # ((\used_counter~8_combout\) # ((\WideOr4~1_combout\) # (\used_counter~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0_combout\,
	datab => \used_counter~8_combout\,
	datac => \WideOr4~1_combout\,
	datad => \used_counter~7_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X60_Y20_N12
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\Add1~2_combout\) # ((\Add1~4_combout\) # ((\Add1~0_combout\) # (\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Add1~6_combout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X60_Y20_N4
\used_counter~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~22_combout\ = (\Add1~10_combout\ & ((\Add3~8_combout\ $ (\Add1~8_combout\)) # (!\Add3~10_combout\))) # (!\Add1~10_combout\ & ((\Add3~10_combout\) # (\Add3~8_combout\ $ (\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add3~8_combout\,
	datac => \Add3~10_combout\,
	datad => \Add1~8_combout\,
	combout => \used_counter~22_combout\);

-- Location: LCCOMB_X60_Y21_N2
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Add2~4_combout\ & \Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X58_Y21_N16
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add3~6_combout\ & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~6_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X48_Y25_N29
\t|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(1));

-- Location: LCFF_X48_Y24_N17
\t|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(0));

-- Location: LCFF_X48_Y25_N19
\t|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(3));

-- Location: LCFF_X48_Y24_N23
\t|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(2));

-- Location: LCCOMB_X48_Y25_N12
\t|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~0_combout\ = ((\t|Add0~6_combout\) # ((\t|Add0~2_combout\) # (!\t|Add0~4_combout\))) # (!\t|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~0_combout\,
	datab => \t|Add0~6_combout\,
	datac => \t|Add0~4_combout\,
	datad => \t|Add0~2_combout\,
	combout => \t|Equal0~0_combout\);

-- Location: LCFF_X48_Y24_N13
\t|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(4));

-- Location: LCFF_X48_Y25_N31
\t|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(5));

-- Location: LCFF_X48_Y25_N9
\t|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(6));

-- Location: LCFF_X48_Y24_N21
\t|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(7));

-- Location: LCCOMB_X48_Y25_N10
\t|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~1_combout\ = (\t|Add0~8_combout\) # ((\t|Add0~12_combout\) # ((\t|Add0~14_combout\) # (\t|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~8_combout\,
	datab => \t|Add0~12_combout\,
	datac => \t|Add0~14_combout\,
	datad => \t|Add0~10_combout\,
	combout => \t|Equal0~1_combout\);

-- Location: LCFF_X48_Y25_N17
\t|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(8));

-- Location: LCFF_X48_Y25_N7
\t|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(9));

-- Location: LCFF_X48_Y25_N5
\t|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(10));

-- Location: LCFF_X48_Y25_N15
\t|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(11));

-- Location: LCCOMB_X48_Y25_N20
\t|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~2_combout\ = (\t|Add0~16_combout\) # ((\t|Add0~18_combout\) # ((\t|Add0~20_combout\) # (\t|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~16_combout\,
	datab => \t|Add0~18_combout\,
	datac => \t|Add0~20_combout\,
	datad => \t|Add0~22_combout\,
	combout => \t|Equal0~2_combout\);

-- Location: LCFF_X48_Y25_N23
\t|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(12));

-- Location: LCFF_X48_Y25_N1
\t|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(13));

-- Location: LCFF_X48_Y25_N27
\t|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(14));

-- Location: LCFF_X48_Y25_N25
\t|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(15));

-- Location: LCCOMB_X48_Y25_N2
\t|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~3_combout\ = (\t|Add0~30_combout\) # ((\t|Add0~26_combout\) # ((\t|Add0~24_combout\) # (\t|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~30_combout\,
	datab => \t|Add0~26_combout\,
	datac => \t|Add0~24_combout\,
	datad => \t|Add0~28_combout\,
	combout => \t|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y24_N24
\t|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~4_combout\ = (\t|Equal0~1_combout\) # ((\t|Equal0~0_combout\) # ((\t|Equal0~2_combout\) # (\t|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~1_combout\,
	datab => \t|Equal0~0_combout\,
	datac => \t|Equal0~2_combout\,
	datad => \t|Equal0~3_combout\,
	combout => \t|Equal0~4_combout\);

-- Location: LCFF_X48_Y24_N15
\t|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(16));

-- Location: LCFF_X48_Y24_N27
\t|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(17));

-- Location: LCFF_X48_Y24_N9
\t|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(18));

-- Location: LCFF_X48_Y24_N31
\t|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(19));

-- Location: LCCOMB_X48_Y24_N6
\t|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~5_combout\ = (\t|Add0~32_combout\) # ((\t|Add0~36_combout\) # ((\t|Add0~38_combout\) # (\t|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~32_combout\,
	datab => \t|Add0~36_combout\,
	datac => \t|Add0~38_combout\,
	datad => \t|Add0~34_combout\,
	combout => \t|Equal0~5_combout\);

-- Location: LCFF_X48_Y24_N19
\t|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(20));

-- Location: LCFF_X49_Y24_N9
\t|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(21));

-- Location: LCCOMB_X48_Y24_N4
\t|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~6_combout\ = (\t|Add0~40_combout\) # (\t|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~40_combout\,
	datad => \t|Add0~42_combout\,
	combout => \t|Equal0~6_combout\);

-- Location: LCFF_X49_Y24_N19
\t|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(22));

-- Location: LCFF_X49_Y24_N21
\t|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(23));

-- Location: LCCOMB_X48_Y24_N10
\t|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~7_combout\ = (\t|Add0~44_combout\) # ((\t|Add0~46_combout\) # ((\t|Equal0~6_combout\) # (\t|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~44_combout\,
	datab => \t|Add0~46_combout\,
	datac => \t|Equal0~6_combout\,
	datad => \t|Equal0~5_combout\,
	combout => \t|Equal0~7_combout\);

-- Location: LCFF_X49_Y24_N23
\t|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(24));

-- Location: LCFF_X49_Y24_N13
\t|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(25));

-- Location: LCFF_X49_Y24_N7
\t|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(26));

-- Location: LCFF_X49_Y24_N5
\t|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(27));

-- Location: LCCOMB_X48_Y24_N2
\t|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~8_combout\ = (\t|Add0~52_combout\) # ((\t|Add0~48_combout\) # ((\t|Add0~50_combout\) # (\t|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~52_combout\,
	datab => \t|Add0~48_combout\,
	datac => \t|Add0~50_combout\,
	datad => \t|Add0~54_combout\,
	combout => \t|Equal0~8_combout\);

-- Location: LCFF_X49_Y24_N27
\t|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(28));

-- Location: LCFF_X49_Y24_N25
\t|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(29));

-- Location: LCFF_X49_Y24_N11
\t|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(30));

-- Location: LCFF_X49_Y24_N29
\t|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(31));

-- Location: LCCOMB_X48_Y24_N28
\t|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~9_combout\ = (\t|Add0~56_combout\) # ((\t|Add0~58_combout\) # ((\t|Add0~62_combout\) # (\t|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~56_combout\,
	datab => \t|Add0~58_combout\,
	datac => \t|Add0~62_combout\,
	datad => \t|Add0~60_combout\,
	combout => \t|Equal0~9_combout\);

-- Location: LCCOMB_X48_Y24_N0
\t|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~10_combout\ = (!\t|Equal0~7_combout\ & (!\t|Equal0~8_combout\ & (!\t|Equal0~4_combout\ & !\t|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~7_combout\,
	datab => \t|Equal0~8_combout\,
	datac => \t|Equal0~4_combout\,
	datad => \t|Equal0~9_combout\,
	combout => \t|Equal0~10_combout\);

-- Location: LCCOMB_X48_Y25_N28
\t|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~0_combout\ = (\t|Add0~2_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~2_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~0_combout\);

-- Location: LCCOMB_X48_Y24_N16
\t|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~1_combout\ = (!\rst~combout\ & (\t|Add0~0_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \t|Add0~0_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~1_combout\);

-- Location: LCCOMB_X48_Y25_N18
\t|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~2_combout\ = (!\rst~combout\ & (\t|Add0~6_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~6_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~2_combout\);

-- Location: LCCOMB_X48_Y24_N22
\t|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~3_combout\ = (!\rst~combout\ & (\t|Add0~4_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \t|Add0~4_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~3_combout\);

-- Location: LCCOMB_X48_Y24_N12
\t|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~4_combout\ = (!\rst~combout\ & (\t|Add0~8_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~8_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~4_combout\);

-- Location: LCCOMB_X48_Y25_N30
\t|counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~5_combout\ = (\t|Add0~10_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~10_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~5_combout\);

-- Location: LCCOMB_X48_Y25_N8
\t|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~6_combout\ = (\t|Add0~12_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~12_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~6_combout\);

-- Location: LCCOMB_X48_Y24_N20
\t|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~7_combout\ = (!\rst~combout\ & (\t|Add0~14_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \t|Add0~14_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~7_combout\);

-- Location: LCCOMB_X48_Y25_N16
\t|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~8_combout\ = (\t|Add0~16_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~16_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~8_combout\);

-- Location: LCCOMB_X48_Y25_N6
\t|counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~9_combout\ = (\t|Add0~18_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~18_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~9_combout\);

-- Location: LCCOMB_X48_Y25_N4
\t|counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~10_combout\ = (!\rst~combout\ & (\t|Add0~20_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~20_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~10_combout\);

-- Location: LCCOMB_X48_Y25_N14
\t|counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~11_combout\ = (\t|Add0~22_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~22_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~11_combout\);

-- Location: LCCOMB_X48_Y25_N22
\t|counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~12_combout\ = (\t|Add0~24_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~24_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~12_combout\);

-- Location: LCCOMB_X48_Y25_N0
\t|counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~13_combout\ = (\t|Add0~26_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~26_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~13_combout\);

-- Location: LCCOMB_X48_Y25_N26
\t|counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~14_combout\ = (\t|Add0~28_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~28_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~14_combout\);

-- Location: LCCOMB_X48_Y25_N24
\t|counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~15_combout\ = (!\rst~combout\ & (\t|Add0~30_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~30_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~15_combout\);

-- Location: LCCOMB_X48_Y24_N14
\t|counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~16_combout\ = (\t|Add0~32_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~32_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~16_combout\);

-- Location: LCCOMB_X48_Y24_N26
\t|counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~17_combout\ = (\t|Add0~34_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~34_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~17_combout\);

-- Location: LCCOMB_X48_Y24_N8
\t|counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~18_combout\ = (!\rst~combout\ & (\t|Add0~36_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~36_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~18_combout\);

-- Location: LCCOMB_X48_Y24_N30
\t|counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~19_combout\ = (!\rst~combout\ & (\t|Add0~38_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~38_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~19_combout\);

-- Location: LCCOMB_X48_Y24_N18
\t|counter~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~20_combout\ = (\t|Add0~40_combout\ & (!\rst~combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~40_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~20_combout\);

-- Location: LCCOMB_X49_Y24_N8
\t|counter~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~21_combout\ = (!\rst~combout\ & (\t|Add0~42_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~42_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~21_combout\);

-- Location: LCCOMB_X49_Y24_N18
\t|counter~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~22_combout\ = (!\rst~combout\ & (\t|Add0~44_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \t|Add0~44_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~22_combout\);

-- Location: LCCOMB_X49_Y24_N20
\t|counter~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~23_combout\ = (!\rst~combout\ & (\t|Add0~46_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~46_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~23_combout\);

-- Location: LCCOMB_X49_Y24_N22
\t|counter~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~24_combout\ = (!\rst~combout\ & (\t|Add0~48_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~48_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~24_combout\);

-- Location: LCCOMB_X49_Y24_N12
\t|counter~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~25_combout\ = (!\rst~combout\ & (\t|Add0~50_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~50_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~25_combout\);

-- Location: LCCOMB_X49_Y24_N6
\t|counter~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~26_combout\ = (!\rst~combout\ & (\t|Add0~52_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~52_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~26_combout\);

-- Location: LCCOMB_X49_Y24_N4
\t|counter~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~27_combout\ = (!\rst~combout\ & (\t|Add0~54_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \t|Add0~54_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~27_combout\);

-- Location: LCCOMB_X49_Y24_N26
\t|counter~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~28_combout\ = (!\rst~combout\ & (\t|Add0~56_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~56_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~28_combout\);

-- Location: LCCOMB_X49_Y24_N24
\t|counter~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~29_combout\ = (!\rst~combout\ & (\t|Add0~58_combout\ & !\t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Add0~58_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~29_combout\);

-- Location: LCCOMB_X49_Y24_N10
\t|counter~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~30_combout\ = (!\rst~combout\ & (!\t|Equal0~10_combout\ & \t|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Equal0~10_combout\,
	datad => \t|Add0~60_combout\,
	combout => \t|counter~30_combout\);

-- Location: LCCOMB_X49_Y24_N28
\t|counter~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~31_combout\ = (!\rst~combout\ & (!\t|Equal0~10_combout\ & \t|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \t|Equal0~10_combout\,
	datad => \t|Add0~62_combout\,
	combout => \t|counter~31_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G7
\t|timedClock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \t|timedClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \t|timedClock~clkctrl_outclk\);

-- Location: CLKCTRL_G2
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

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X53_Y20_N6
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\used_counter_ff[0][1]~regout\ & (!\Add0~1\)) # (!\used_counter_ff[0][1]~regout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\used_counter_ff[0][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][1]~regout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X54_Y20_N16
\used_counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~5_combout\ = (\b1~combout\ & ((\Add0~2_combout\))) # (!\b1~combout\ & (\used_counter_ff[0][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][1]~regout\,
	datab => \b1~combout\,
	datac => \Add0~2_combout\,
	combout => \used_counter~5_combout\);

-- Location: LCCOMB_X58_Y21_N20
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Add3~10_combout\ & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~10_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X61_Y20_N22
\NextState[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \NextState[0]~0_combout\ = (!\b2~combout\ & (!\b3~combout\ & (!\b1~combout\ & !\b4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b3~combout\,
	datac => \b1~combout\,
	datad => \b4~combout\,
	combout => \NextState[0]~0_combout\);

-- Location: LCCOMB_X61_Y20_N26
\NextState~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \NextState~2_combout\ = (NextState(1)) # (((!\rst~combout\ & \NextState[0]~0_combout\)) # (!NextState(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextState(1),
	datab => \rst~combout\,
	datac => NextState(0),
	datad => \NextState[0]~0_combout\,
	combout => \NextState~2_combout\);

-- Location: LCFF_X61_Y20_N27
\NextState[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \NextState~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => NextState(0));

-- Location: LCCOMB_X61_Y20_N18
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (NextState(1)) # ((\rst~combout\) # (!NextState(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextState(1),
	datab => NextState(0),
	datac => \rst~combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X58_Y21_N21
\used_counter_ff[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[3][5]~regout\);

-- Location: LCCOMB_X58_Y21_N14
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Add3~8_combout\ & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X58_Y21_N15
\used_counter_ff[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[3][4]~regout\);

-- Location: LCCOMB_X61_Y20_N2
\used_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~4_combout\ = (\b2~combout\) # ((\b3~combout\) # ((\b1~combout\) # (!\b4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b3~combout\,
	datac => \b1~combout\,
	datad => \b4~combout\,
	combout => \used_counter~4_combout\);

-- Location: LCCOMB_X57_Y21_N0
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\used_counter_ff[3][0]~regout\ & (\used_counter~4_combout\ $ (GND))) # (!\used_counter_ff[3][0]~regout\ & (!\used_counter~4_combout\ & VCC))
-- \Add3~1\ = CARRY((\used_counter_ff[3][0]~regout\ & !\used_counter~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[3][0]~regout\,
	datab => \used_counter~4_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X57_Y21_N2
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\used_counter_ff[3][1]~regout\ & (!\Add3~1\)) # (!\used_counter_ff[3][1]~regout\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\used_counter_ff[3][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[3][1]~regout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X57_Y21_N4
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\used_counter_ff[3][2]~regout\ & (\Add3~3\ $ (GND))) # (!\used_counter_ff[3][2]~regout\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\used_counter_ff[3][2]~regout\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[3][2]~regout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X58_Y21_N18
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add3~4_combout\ & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~4_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X58_Y21_N19
\used_counter_ff[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[3][2]~regout\);

-- Location: LCCOMB_X57_Y21_N6
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\used_counter_ff[3][3]~regout\ & (!\Add3~5\)) # (!\used_counter_ff[3][3]~regout\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\used_counter_ff[3][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[3][3]~regout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X57_Y21_N8
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\used_counter_ff[3][4]~regout\ & (\Add3~7\ $ (GND))) # (!\used_counter_ff[3][4]~regout\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\used_counter_ff[3][4]~regout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[3][4]~regout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X57_Y21_N10
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\used_counter_ff[3][5]~regout\ & (!\Add3~9\)) # (!\used_counter_ff[3][5]~regout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\used_counter_ff[3][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[3][5]~regout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X61_Y20_N10
\used_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~2_combout\ = (\b2~combout\) # ((\b1~combout\) # (!\b3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b1~combout\,
	datac => \b3~combout\,
	combout => \used_counter~2_combout\);

-- Location: LCCOMB_X56_Y20_N2
\Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Add1~0_combout\ & \Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCFF_X56_Y20_N3
\used_counter_ff[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector23~1_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[1][0]~regout\);

-- Location: LCCOMB_X56_Y20_N8
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\used_counter~3_combout\ & (\used_counter_ff[1][0]~regout\ & VCC)) # (!\used_counter~3_combout\ & (\used_counter_ff[1][0]~regout\ $ (VCC)))
-- \Add1~1\ = CARRY((!\used_counter~3_combout\ & \used_counter_ff[1][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \used_counter_ff[1][0]~regout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X56_Y20_N28
\Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\Selector31~2_combout\ & ((\b1~combout\ & (\Add0~14_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \b1~combout\,
	datac => \used_counter_ff[0][7]~regout\,
	datad => \Selector31~2_combout\,
	combout => \Selector24~2_combout\);

-- Location: LCFF_X56_Y20_N29
\used_counter_ff[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector24~2_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[0][7]~regout\);

-- Location: LCCOMB_X55_Y20_N2
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\Add1~14_combout\ & \Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCFF_X55_Y20_N3
\used_counter_ff[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[1][7]~regout\);

-- Location: LCCOMB_X56_Y20_N4
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\Add1~2_combout\ & \Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: LCFF_X56_Y20_N5
\used_counter_ff[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector22~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[1][1]~regout\);

-- Location: LCCOMB_X56_Y20_N12
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\used_counter_ff[1][2]~regout\ & (\Add1~3\ $ (GND))) # (!\used_counter_ff[1][2]~regout\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\used_counter_ff[1][2]~regout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[1][2]~regout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X56_Y20_N14
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\used_counter_ff[1][3]~regout\ & (!\Add1~5\)) # (!\used_counter_ff[1][3]~regout\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\used_counter_ff[1][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[1][3]~regout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X55_Y20_N16
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add1~6_combout\ & \Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCFF_X55_Y20_N17
\used_counter_ff[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector20~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[1][3]~regout\);

-- Location: LCCOMB_X56_Y20_N16
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\used_counter_ff[1][4]~regout\ & (\Add1~7\ $ (GND))) # (!\used_counter_ff[1][4]~regout\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\used_counter_ff[1][4]~regout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[1][4]~regout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X56_Y20_N26
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Add1~8_combout\ & \Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCFF_X56_Y20_N27
\used_counter_ff[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[1][4]~regout\);

-- Location: LCCOMB_X56_Y20_N18
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\used_counter_ff[1][5]~regout\ & (!\Add1~9\)) # (!\used_counter_ff[1][5]~regout\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\used_counter_ff[1][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[1][5]~regout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X56_Y20_N20
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\used_counter_ff[1][6]~regout\ & (\Add1~11\ $ (GND))) # (!\used_counter_ff[1][6]~regout\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\used_counter_ff[1][6]~regout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[1][6]~regout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X56_Y20_N30
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Add1~12_combout\ & \Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~12_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCFF_X56_Y20_N31
\used_counter_ff[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[1][6]~regout\);

-- Location: LCCOMB_X56_Y20_N22
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (\used_counter_ff[1][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter_ff[1][7]~regout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X54_Y20_N20
\Selector28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\Selector31~2_combout\ & ((\b1~combout\ & (\Add0~6_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \b1~combout\,
	datac => \used_counter_ff[0][3]~regout\,
	datad => \Selector31~2_combout\,
	combout => \Selector28~2_combout\);

-- Location: LCFF_X54_Y20_N21
\used_counter_ff[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector28~2_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[0][3]~regout\);

-- Location: LCCOMB_X54_Y20_N18
\Selector29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\Selector31~2_combout\ & ((\b1~combout\ & (\Add0~4_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \b1~combout\,
	datac => \used_counter_ff[0][2]~regout\,
	datad => \Selector31~2_combout\,
	combout => \Selector29~2_combout\);

-- Location: LCFF_X54_Y20_N19
\used_counter_ff[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector29~2_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[0][2]~regout\);

-- Location: LCCOMB_X56_Y20_N6
\Selector30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = (\Selector31~2_combout\ & ((\b1~combout\ & (\Add0~2_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \b1~combout\,
	datac => \used_counter_ff[0][1]~regout\,
	datad => \Selector31~2_combout\,
	combout => \Selector30~2_combout\);

-- Location: LCFF_X56_Y20_N7
\used_counter_ff[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector30~2_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[0][1]~regout\);

-- Location: LCCOMB_X56_Y20_N24
\Selector31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~3_combout\ = (\Selector31~2_combout\ & ((\b1~combout\ & (\Add0~0_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \b1~combout\,
	datac => \used_counter_ff[0][0]~regout\,
	datad => \Selector31~2_combout\,
	combout => \Selector31~3_combout\);

-- Location: LCFF_X56_Y20_N25
\used_counter_ff[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector31~3_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[0][0]~regout\);

-- Location: LCCOMB_X57_Y20_N16
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\Add1~0_combout\ & \used_counter_ff[0][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \used_counter_ff[0][0]~regout\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X57_Y20_N18
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\Add1~2_combout\ & ((!\LessThan1~1_cout\) # (!\used_counter_ff[0][1]~regout\))) # (!\Add1~2_combout\ & (!\used_counter_ff[0][1]~regout\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \used_counter_ff[0][1]~regout\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X57_Y20_N20
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\Add1~4_combout\ & (\used_counter_ff[0][2]~regout\ & !\LessThan1~3_cout\)) # (!\Add1~4_combout\ & ((\used_counter_ff[0][2]~regout\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \used_counter_ff[0][2]~regout\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X57_Y20_N22
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\Add1~6_combout\ & ((!\LessThan1~5_cout\) # (!\used_counter_ff[0][3]~regout\))) # (!\Add1~6_combout\ & (!\used_counter_ff[0][3]~regout\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \used_counter_ff[0][3]~regout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X57_Y20_N24
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\used_counter_ff[0][4]~regout\ & ((!\LessThan1~7_cout\) # (!\Add1~8_combout\))) # (!\used_counter_ff[0][4]~regout\ & (!\Add1~8_combout\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][4]~regout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X57_Y20_N26
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\used_counter_ff[0][5]~regout\ & (\Add1~10_combout\ & !\LessThan1~9_cout\)) # (!\used_counter_ff[0][5]~regout\ & ((\Add1~10_combout\) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][5]~regout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X57_Y20_N28
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\Add1~12_combout\ & (\used_counter_ff[0][6]~regout\ & !\LessThan1~11_cout\)) # (!\Add1~12_combout\ & ((\used_counter_ff[0][6]~regout\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \used_counter_ff[0][6]~regout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X57_Y20_N30
\LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\used_counter_ff[0][7]~regout\ & ((\LessThan1~13_cout\) # (!\Add1~14_combout\))) # (!\used_counter_ff[0][7]~regout\ & (\LessThan1~13_cout\ & !\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[0][7]~regout\,
	datad => \Add1~14_combout\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X57_Y20_N14
\lowestValue~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~1_combout\ = (\used_counter~3_combout\ & ((\LessThan1~14_combout\ & ((\Add1~14_combout\))) # (!\LessThan1~14_combout\ & (\used_counter_ff[0][7]~regout\)))) # (!\used_counter~3_combout\ & (\used_counter_ff[0][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \used_counter_ff[0][7]~regout\,
	datac => \Add1~14_combout\,
	datad => \LessThan1~14_combout\,
	combout => \lowestValue~1_combout\);

-- Location: LCCOMB_X60_Y21_N8
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Add2~2_combout\ & \Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCFF_X60_Y21_N9
\used_counter_ff[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[2][1]~regout\);

-- Location: LCCOMB_X59_Y21_N0
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\used_counter~2_combout\ & (\used_counter_ff[2][0]~regout\ & VCC)) # (!\used_counter~2_combout\ & (\used_counter_ff[2][0]~regout\ $ (VCC)))
-- \Add2~1\ = CARRY((!\used_counter~2_combout\ & \used_counter_ff[2][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~2_combout\,
	datab => \used_counter_ff[2][0]~regout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X60_Y21_N30
\Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Add2~0_combout\ & \Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCFF_X60_Y21_N31
\used_counter_ff[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector15~1_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[2][0]~regout\);

-- Location: LCCOMB_X59_Y21_N2
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\used_counter_ff[2][1]~regout\ & (!\Add2~1\)) # (!\used_counter_ff[2][1]~regout\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\used_counter_ff[2][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[2][1]~regout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X60_Y21_N22
\used_counter~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~29_combout\ = (\Add2~0_combout\ & ((\Add2~2_combout\ $ (\lowestValue~17_combout\)) # (!\lowestValue~16_combout\))) # (!\Add2~0_combout\ & ((\lowestValue~16_combout\) # (\Add2~2_combout\ $ (\lowestValue~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~2_combout\,
	datac => \lowestValue~16_combout\,
	datad => \lowestValue~17_combout\,
	combout => \used_counter~29_combout\);

-- Location: LCCOMB_X57_Y21_N26
\WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\Add3~6_combout\) # ((\Add3~0_combout\) # ((\Add3~4_combout\) # (\Add3~2_combout\)))

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
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X58_Y21_N30
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Add3~12_combout\ & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X58_Y21_N31
\used_counter_ff[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[3][6]~regout\);

-- Location: LCCOMB_X57_Y21_N12
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\used_counter_ff[3][6]~regout\ & (\Add3~11\ $ (GND))) # (!\used_counter_ff[3][6]~regout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\used_counter_ff[3][6]~regout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[3][6]~regout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X60_Y20_N16
\WideOr7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~1_combout\ = (\Add3~14_combout\) # ((\Add3~8_combout\) # ((\Add3~10_combout\) # (\Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Add3~8_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~12_combout\,
	combout => \WideOr7~1_combout\);

-- Location: LCCOMB_X60_Y21_N24
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Add2~6_combout\ & \Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X60_Y21_N25
\used_counter_ff[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[2][3]~regout\);

-- Location: LCCOMB_X59_Y21_N4
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\used_counter_ff[2][2]~regout\ & (\Add2~3\ $ (GND))) # (!\used_counter_ff[2][2]~regout\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\used_counter_ff[2][2]~regout\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[2][2]~regout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X59_Y21_N6
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\used_counter_ff[2][3]~regout\ & (!\Add2~5\)) # (!\used_counter_ff[2][3]~regout\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\used_counter_ff[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[2][3]~regout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X60_Y20_N0
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\Add2~4_combout\) # ((\Add2~0_combout\) # ((\Add2~2_combout\) # (\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~6_combout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X60_Y21_N12
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Add2~10_combout\ & \Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~10_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X60_Y21_N13
\used_counter_ff[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[2][5]~regout\);

-- Location: LCCOMB_X59_Y21_N8
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\used_counter_ff[2][4]~regout\ & (\Add2~7\ $ (GND))) # (!\used_counter_ff[2][4]~regout\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\used_counter_ff[2][4]~regout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[2][4]~regout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X59_Y21_N10
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\used_counter_ff[2][5]~regout\ & (!\Add2~9\)) # (!\used_counter_ff[2][5]~regout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\used_counter_ff[2][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[2][5]~regout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X60_Y21_N16
\WideOr6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~1_combout\ = (\Add2~12_combout\) # ((\Add2~10_combout\) # ((\Add2~14_combout\) # (\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add2~10_combout\,
	datac => \Add2~14_combout\,
	datad => \Add2~8_combout\,
	combout => \WideOr6~1_combout\);

-- Location: LCCOMB_X60_Y20_N26
\WideOr5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (\Add1~12_combout\) # ((\Add1~8_combout\) # ((\Add1~10_combout\) # (\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~10_combout\,
	datad => \Add1~14_combout\,
	combout => \WideOr5~1_combout\);

-- Location: LCCOMB_X60_Y20_N22
\always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (\WideOr5~0_combout\ & ((\WideOr6~0_combout\) # ((\WideOr6~1_combout\)))) # (!\WideOr5~0_combout\ & (\WideOr5~1_combout\ & ((\WideOr6~0_combout\) # (\WideOr6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~0_combout\,
	datab => \WideOr6~0_combout\,
	datac => \WideOr6~1_combout\,
	datad => \WideOr5~1_combout\,
	combout => \always1~0_combout\);

-- Location: LCCOMB_X60_Y20_N18
\always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always1~1_combout\ = (\WideOr4~combout\ & (\always1~0_combout\ & ((\WideOr7~0_combout\) # (\WideOr7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => \WideOr7~0_combout\,
	datac => \WideOr7~1_combout\,
	datad => \always1~0_combout\,
	combout => \always1~1_combout\);

-- Location: LCCOMB_X58_Y21_N24
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Add3~14_combout\ & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCFF_X58_Y21_N25
\used_counter_ff[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector0~1_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[3][7]~regout\);

-- Location: LCCOMB_X57_Y21_N14
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \Add3~13\ $ (\used_counter_ff[3][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter_ff[3][7]~regout\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X60_Y21_N0
\used_counter~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~34_combout\ = (\Add2~12_combout\ & ((\Add2~14_combout\ $ (\Add3~14_combout\)) # (!\Add3~12_combout\))) # (!\Add2~12_combout\ & ((\Add3~12_combout\) # (\Add2~14_combout\ $ (\Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add2~14_combout\,
	datac => \Add3~12_combout\,
	datad => \Add3~14_combout\,
	combout => \used_counter~34_combout\);

-- Location: LCCOMB_X60_Y21_N10
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Add2~12_combout\ & \Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X60_Y21_N11
\used_counter_ff[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[2][6]~regout\);

-- Location: LCCOMB_X59_Y21_N12
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\used_counter_ff[2][6]~regout\ & (\Add2~11\ $ (GND))) # (!\used_counter_ff[2][6]~regout\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\used_counter_ff[2][6]~regout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[2][6]~regout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X57_Y20_N4
\lowestValue~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~0_combout\ = (\used_counter~3_combout\ & ((\LessThan1~14_combout\ & ((\Add1~0_combout\))) # (!\LessThan1~14_combout\ & (\used_counter_ff[0][0]~regout\)))) # (!\used_counter~3_combout\ & (\used_counter_ff[0][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \used_counter_ff[0][0]~regout\,
	datac => \Add1~0_combout\,
	datad => \LessThan1~14_combout\,
	combout => \lowestValue~0_combout\);

-- Location: LCCOMB_X58_Y20_N4
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!\Add2~0_combout\ & \lowestValue~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \lowestValue~0_combout\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X58_Y20_N6
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\lowestValue~7_combout\ & (\Add2~2_combout\ & !\LessThan2~1_cout\)) # (!\lowestValue~7_combout\ & ((\Add2~2_combout\) # (!\LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~7_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X58_Y20_N8
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\lowestValue~6_combout\ & ((!\LessThan2~3_cout\) # (!\Add2~4_combout\))) # (!\lowestValue~6_combout\ & (!\Add2~4_combout\ & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~6_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X58_Y20_N10
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\lowestValue~5_combout\ & (\Add2~6_combout\ & !\LessThan2~5_cout\)) # (!\lowestValue~5_combout\ & ((\Add2~6_combout\) # (!\LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~5_combout\,
	datab => \Add2~6_combout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X58_Y20_N12
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\lowestValue~4_combout\ & ((!\LessThan2~7_cout\) # (!\Add2~8_combout\))) # (!\lowestValue~4_combout\ & (!\Add2~8_combout\ & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~4_combout\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X58_Y20_N14
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\Add2~10_combout\ & ((!\LessThan2~9_cout\) # (!\lowestValue~3_combout\))) # (!\Add2~10_combout\ & (!\lowestValue~3_combout\ & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \lowestValue~3_combout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X58_Y20_N16
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\lowestValue~2_combout\ & ((!\LessThan2~11_cout\) # (!\Add2~12_combout\))) # (!\lowestValue~2_combout\ & (!\Add2~12_combout\ & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~2_combout\,
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X58_Y20_N18
\LessThan2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (\Add2~14_combout\ & (\LessThan2~13_cout\ & \lowestValue~1_combout\)) # (!\Add2~14_combout\ & ((\LessThan2~13_cout\) # (\lowestValue~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datad => \lowestValue~1_combout\,
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X58_Y20_N0
\lowestValue~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~10_combout\ = (\used_counter~2_combout\ & ((\LessThan2~14_combout\ & ((\Add2~12_combout\))) # (!\LessThan2~14_combout\ & (\lowestValue~2_combout\)))) # (!\used_counter~2_combout\ & (\lowestValue~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~2_combout\,
	datab => \Add2~12_combout\,
	datac => \used_counter~2_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~10_combout\);

-- Location: LCCOMB_X59_Y21_N30
\used_counter~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~35_combout\ = (\Add2~12_combout\ & ((\Add2~14_combout\ $ (\lowestValue~9_combout\)) # (!\lowestValue~10_combout\))) # (!\Add2~12_combout\ & ((\lowestValue~10_combout\) # (\Add2~14_combout\ $ (\lowestValue~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add2~14_combout\,
	datac => \lowestValue~10_combout\,
	datad => \lowestValue~9_combout\,
	combout => \used_counter~35_combout\);

-- Location: LCCOMB_X60_Y21_N14
\used_counter~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~36_combout\ = (\Equal7~0_combout\ & (((\used_counter~35_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\used_counter~34_combout\)) # (!\LessThan3~14_combout\ & ((\used_counter~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \used_counter~34_combout\,
	datac => \used_counter~35_combout\,
	datad => \LessThan3~14_combout\,
	combout => \used_counter~36_combout\);

-- Location: LCCOMB_X60_Y21_N28
\used_counter~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~31_combout\ = (\Add3~10_combout\ & ((\Add3~8_combout\ $ (\Add2~8_combout\)) # (!\Add2~10_combout\))) # (!\Add3~10_combout\ & ((\Add2~10_combout\) # (\Add3~8_combout\ $ (\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add2~10_combout\,
	datac => \Add3~8_combout\,
	datad => \Add2~8_combout\,
	combout => \used_counter~31_combout\);

-- Location: LCCOMB_X58_Y20_N20
\lowestValue~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~12_combout\ = (\used_counter~2_combout\ & ((\LessThan2~14_combout\ & ((\Add2~8_combout\))) # (!\LessThan2~14_combout\ & (\lowestValue~4_combout\)))) # (!\used_counter~2_combout\ & (\lowestValue~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~4_combout\,
	datab => \Add2~8_combout\,
	datac => \used_counter~2_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~12_combout\);

-- Location: LCCOMB_X59_Y21_N20
\used_counter~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~32_combout\ = (\Add2~10_combout\ & ((\Add2~8_combout\ $ (\lowestValue~12_combout\)) # (!\lowestValue~11_combout\))) # (!\Add2~10_combout\ & ((\lowestValue~11_combout\) # (\Add2~8_combout\ $ (\lowestValue~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~8_combout\,
	datac => \lowestValue~11_combout\,
	datad => \lowestValue~12_combout\,
	combout => \used_counter~32_combout\);

-- Location: LCCOMB_X60_Y21_N26
\used_counter~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~33_combout\ = (\Equal7~0_combout\ & (((\used_counter~32_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\used_counter~31_combout\)) # (!\LessThan3~14_combout\ & ((\used_counter~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \used_counter~31_combout\,
	datac => \used_counter~32_combout\,
	datad => \LessThan3~14_combout\,
	combout => \used_counter~33_combout\);

-- Location: LCCOMB_X60_Y21_N20
\used_counter~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~37_combout\ = (((\used_counter~36_combout\) # (\used_counter~33_combout\)) # (!\always1~1_combout\)) # (!\used_counter~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~2_combout\,
	datab => \always1~1_combout\,
	datac => \used_counter~36_combout\,
	datad => \used_counter~33_combout\,
	combout => \used_counter~37_combout\);

-- Location: LCCOMB_X58_Y20_N2
\lowestValue~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~13_combout\ = (\used_counter~2_combout\ & ((\LessThan2~14_combout\ & ((\Add2~6_combout\))) # (!\LessThan2~14_combout\ & (\lowestValue~5_combout\)))) # (!\used_counter~2_combout\ & (\lowestValue~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~5_combout\,
	datab => \Add2~6_combout\,
	datac => \used_counter~2_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~13_combout\);

-- Location: LCCOMB_X59_Y20_N20
\lowestValue~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~19_combout\ = (\Equal7~0_combout\ & (((\lowestValue~13_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\Add3~6_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add3~6_combout\,
	datac => \LessThan3~14_combout\,
	datad => \lowestValue~13_combout\,
	combout => \lowestValue~19_combout\);

-- Location: LCCOMB_X61_Y20_N24
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\b2~combout\ & (!\b3~combout\ & (!\b1~combout\ & \b4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b3~combout\,
	datac => \b1~combout\,
	datad => \b4~combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X58_Y20_N28
\lowestValue~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~14_combout\ = (\used_counter~2_combout\ & ((\LessThan2~14_combout\ & ((\Add2~4_combout\))) # (!\LessThan2~14_combout\ & (\lowestValue~6_combout\)))) # (!\used_counter~2_combout\ & (\lowestValue~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~6_combout\,
	datab => \used_counter~2_combout\,
	datac => \Add2~4_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~14_combout\);

-- Location: LCCOMB_X55_Y20_N6
\lowestValue~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~18_combout\ = (\Equal7~0_combout\ & (((\lowestValue~14_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\Add3~4_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Equal7~0_combout\,
	datac => \lowestValue~14_combout\,
	datad => \LessThan3~14_combout\,
	combout => \lowestValue~18_combout\);

-- Location: LCCOMB_X59_Y21_N18
\used_counter~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~30_combout\ = (\Add2~6_combout\ & ((\Add2~4_combout\ $ (\lowestValue~18_combout\)) # (!\lowestValue~19_combout\))) # (!\Add2~6_combout\ & ((\lowestValue~19_combout\) # (\Add2~4_combout\ $ (\lowestValue~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~4_combout\,
	datac => \lowestValue~19_combout\,
	datad => \lowestValue~18_combout\,
	combout => \used_counter~30_combout\);

-- Location: LCCOMB_X60_Y21_N18
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Selector7~0_combout\ & ((\used_counter~29_combout\) # ((\used_counter~37_combout\) # (\used_counter~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \used_counter~29_combout\,
	datac => \used_counter~37_combout\,
	datad => \used_counter~30_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X60_Y21_N4
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add2~14_combout\ & \Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~14_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X60_Y21_N5
\used_counter_ff[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[2][7]~regout\);

-- Location: LCCOMB_X59_Y21_N14
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (\used_counter_ff[2][7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \used_counter_ff[2][7]~regout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X59_Y20_N22
\lowestValue~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~9_combout\ = (\used_counter~2_combout\ & ((\LessThan2~14_combout\ & ((\Add2~14_combout\))) # (!\LessThan2~14_combout\ & (\lowestValue~1_combout\)))) # (!\used_counter~2_combout\ & (\lowestValue~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~2_combout\,
	datab => \lowestValue~1_combout\,
	datac => \Add2~14_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~9_combout\);

-- Location: LCCOMB_X59_Y20_N28
\lowestValue~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~8_combout\ = (\used_counter~2_combout\ & ((\LessThan2~14_combout\ & ((\Add2~0_combout\))) # (!\LessThan2~14_combout\ & (\lowestValue~0_combout\)))) # (!\used_counter~2_combout\ & (\lowestValue~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~2_combout\,
	datab => \lowestValue~0_combout\,
	datac => \Add2~0_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~8_combout\);

-- Location: LCCOMB_X59_Y20_N0
\LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!\Add3~0_combout\ & \lowestValue~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \lowestValue~8_combout\,
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X59_Y20_N2
\LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\lowestValue~15_combout\ & (\Add3~2_combout\ & !\LessThan3~1_cout\)) # (!\lowestValue~15_combout\ & ((\Add3~2_combout\) # (!\LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~15_combout\,
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X59_Y20_N4
\LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\Add3~4_combout\ & (\lowestValue~14_combout\ & !\LessThan3~3_cout\)) # (!\Add3~4_combout\ & ((\lowestValue~14_combout\) # (!\LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \lowestValue~14_combout\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X59_Y20_N6
\LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((\lowestValue~13_combout\ & (\Add3~6_combout\ & !\LessThan3~5_cout\)) # (!\lowestValue~13_combout\ & ((\Add3~6_combout\) # (!\LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~13_combout\,
	datab => \Add3~6_combout\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X59_Y20_N8
\LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\lowestValue~12_combout\ & ((!\LessThan3~7_cout\) # (!\Add3~8_combout\))) # (!\lowestValue~12_combout\ & (!\Add3~8_combout\ & !\LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~12_combout\,
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X59_Y20_N10
\LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\Add3~10_combout\ & ((!\LessThan3~9_cout\) # (!\lowestValue~11_combout\))) # (!\Add3~10_combout\ & (!\lowestValue~11_combout\ & !\LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \lowestValue~11_combout\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X59_Y20_N12
\LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\lowestValue~10_combout\ & ((!\LessThan3~11_cout\) # (!\Add3~12_combout\))) # (!\lowestValue~10_combout\ & (!\Add3~12_combout\ & !\LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~10_combout\,
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X59_Y20_N14
\LessThan3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~14_combout\ = (\Add3~14_combout\ & (\LessThan3~13_cout\ & \lowestValue~9_combout\)) # (!\Add3~14_combout\ & ((\LessThan3~13_cout\) # (\lowestValue~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datad => \lowestValue~9_combout\,
	cin => \LessThan3~13_cout\,
	combout => \LessThan3~14_combout\);

-- Location: LCCOMB_X59_Y20_N16
\lowestValue~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~16_combout\ = (\Equal7~0_combout\ & (((\lowestValue~8_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\Add3~0_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add3~0_combout\,
	datac => \LessThan3~14_combout\,
	datad => \lowestValue~8_combout\,
	combout => \lowestValue~16_combout\);

-- Location: LCCOMB_X55_Y20_N14
\used_counter~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~20_combout\ = (\Add1~2_combout\ & ((\Add1~0_combout\ $ (\lowestValue~16_combout\)) # (!\lowestValue~17_combout\))) # (!\Add1~2_combout\ & ((\lowestValue~17_combout\) # (\Add1~0_combout\ $ (\lowestValue~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~0_combout\,
	datac => \lowestValue~17_combout\,
	datad => \lowestValue~16_combout\,
	combout => \used_counter~20_combout\);

-- Location: LCCOMB_X55_Y20_N4
\used_counter~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~21_combout\ = (\Add1~6_combout\ & ((\Add1~4_combout\ $ (\lowestValue~18_combout\)) # (!\lowestValue~19_combout\))) # (!\Add1~6_combout\ & ((\lowestValue~19_combout\) # (\Add1~4_combout\ $ (\lowestValue~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~4_combout\,
	datac => \lowestValue~19_combout\,
	datad => \lowestValue~18_combout\,
	combout => \used_counter~21_combout\);

-- Location: LCCOMB_X60_Y20_N30
\used_counter~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~25_combout\ = (\Add3~14_combout\ & ((\Add1~12_combout\ $ (\Add3~12_combout\)) # (!\Add1~14_combout\))) # (!\Add3~14_combout\ & ((\Add1~14_combout\) # (\Add1~12_combout\ $ (\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Add1~14_combout\,
	datac => \Add1~12_combout\,
	datad => \Add3~12_combout\,
	combout => \used_counter~25_combout\);

-- Location: LCCOMB_X60_Y20_N20
\used_counter~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~26_combout\ = (\Add1~12_combout\ & ((\Add1~14_combout\ $ (\lowestValue~9_combout\)) # (!\lowestValue~10_combout\))) # (!\Add1~12_combout\ & ((\lowestValue~10_combout\) # (\Add1~14_combout\ $ (\lowestValue~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~14_combout\,
	datac => \lowestValue~10_combout\,
	datad => \lowestValue~9_combout\,
	combout => \used_counter~26_combout\);

-- Location: LCCOMB_X60_Y20_N6
\used_counter~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~27_combout\ = (\Equal7~0_combout\ & (((\used_counter~26_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\used_counter~25_combout\)) # (!\LessThan3~14_combout\ & ((\used_counter~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \used_counter~25_combout\,
	datac => \used_counter~26_combout\,
	datad => \LessThan3~14_combout\,
	combout => \used_counter~27_combout\);

-- Location: LCCOMB_X58_Y20_N26
\used_counter~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~23_combout\ = (\Add1~10_combout\ & ((\Add1~8_combout\ $ (\lowestValue~12_combout\)) # (!\lowestValue~11_combout\))) # (!\Add1~10_combout\ & ((\lowestValue~11_combout\) # (\Add1~8_combout\ $ (\lowestValue~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~8_combout\,
	datac => \lowestValue~12_combout\,
	datad => \lowestValue~11_combout\,
	combout => \used_counter~23_combout\);

-- Location: LCCOMB_X55_Y20_N10
\used_counter~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~24_combout\ = (\Equal7~0_combout\ & (((\used_counter~23_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\used_counter~22_combout\)) # (!\LessThan3~14_combout\ & ((\used_counter~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~22_combout\,
	datab => \Equal7~0_combout\,
	datac => \used_counter~23_combout\,
	datad => \LessThan3~14_combout\,
	combout => \used_counter~24_combout\);

-- Location: LCCOMB_X55_Y20_N12
\used_counter~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~28_combout\ = (((\used_counter~27_combout\) # (\used_counter~24_combout\)) # (!\always1~1_combout\)) # (!\used_counter~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \always1~1_combout\,
	datac => \used_counter~27_combout\,
	datad => \used_counter~24_combout\,
	combout => \used_counter~28_combout\);

-- Location: LCCOMB_X55_Y20_N26
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Selector7~0_combout\ & ((\used_counter~20_combout\) # ((\used_counter~21_combout\) # (\used_counter~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \used_counter~20_combout\,
	datac => \used_counter~21_combout\,
	datad => \used_counter~28_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X56_Y20_N0
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Add1~10_combout\ & \Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCFF_X56_Y20_N1
\used_counter_ff[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[1][5]~regout\);

-- Location: LCCOMB_X54_Y20_N30
\Selector27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\Selector31~2_combout\ & ((\b1~combout\ & (\Add0~8_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \b1~combout\,
	datac => \used_counter_ff[0][4]~regout\,
	datad => \Selector31~2_combout\,
	combout => \Selector27~2_combout\);

-- Location: LCFF_X54_Y20_N31
\used_counter_ff[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector27~2_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[0][4]~regout\);

-- Location: LCCOMB_X53_Y20_N8
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\used_counter_ff[0][2]~regout\ & (\Add0~3\ $ (GND))) # (!\used_counter_ff[0][2]~regout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\used_counter_ff[0][2]~regout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[0][2]~regout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X53_Y20_N14
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\used_counter_ff[0][5]~regout\ & (!\Add0~9\)) # (!\used_counter_ff[0][5]~regout\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\used_counter_ff[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][5]~regout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X55_Y20_N20
\Selector26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (\Selector31~2_combout\ & ((\b1~combout\ & (\Add0~10_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \Add0~10_combout\,
	datac => \used_counter_ff[0][5]~regout\,
	datad => \Selector31~2_combout\,
	combout => \Selector26~2_combout\);

-- Location: LCFF_X55_Y20_N21
\used_counter_ff[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector26~2_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[0][5]~regout\);

-- Location: LCCOMB_X57_Y20_N6
\lowestValue~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~3_combout\ = (\used_counter~3_combout\ & ((\LessThan1~14_combout\ & (\Add1~10_combout\)) # (!\LessThan1~14_combout\ & ((\used_counter_ff[0][5]~regout\))))) # (!\used_counter~3_combout\ & (((\used_counter_ff[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~3_combout\,
	datab => \Add1~10_combout\,
	datac => \used_counter_ff[0][5]~regout\,
	datad => \LessThan1~14_combout\,
	combout => \lowestValue~3_combout\);

-- Location: LCCOMB_X58_Y20_N22
\lowestValue~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~11_combout\ = (\used_counter~2_combout\ & ((\LessThan2~14_combout\ & (\Add2~10_combout\)) # (!\LessThan2~14_combout\ & ((\lowestValue~3_combout\))))) # (!\used_counter~2_combout\ & (((\lowestValue~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \used_counter~2_combout\,
	datac => \lowestValue~3_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~11_combout\);

-- Location: LCCOMB_X58_Y21_N22
\used_counter~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~40_combout\ = (\Add3~12_combout\ & ((\Add3~10_combout\ $ (\lowestValue~11_combout\)) # (!\lowestValue~10_combout\))) # (!\Add3~12_combout\ & ((\lowestValue~10_combout\) # (\Add3~10_combout\ $ (\lowestValue~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add3~10_combout\,
	datac => \lowestValue~11_combout\,
	datad => \lowestValue~10_combout\,
	combout => \used_counter~40_combout\);

-- Location: LCCOMB_X59_Y20_N18
\used_counter~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~41_combout\ = (\lowestValue~12_combout\ & ((\Add3~6_combout\ $ (\lowestValue~13_combout\)) # (!\Add3~8_combout\))) # (!\lowestValue~12_combout\ & ((\Add3~8_combout\) # (\Add3~6_combout\ $ (\lowestValue~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~12_combout\,
	datab => \Add3~8_combout\,
	datac => \Add3~6_combout\,
	datad => \lowestValue~13_combout\,
	combout => \used_counter~41_combout\);

-- Location: LCCOMB_X58_Y21_N4
\used_counter~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~42_combout\ = (\used_counter~41_combout\) # (\Add3~14_combout\ $ (\lowestValue~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datac => \used_counter~41_combout\,
	datad => \lowestValue~9_combout\,
	combout => \used_counter~42_combout\);

-- Location: LCCOMB_X58_Y21_N2
\used_counter~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~43_combout\ = (\Equal7~0_combout\ & ((\used_counter~40_combout\) # ((\used_counter~42_combout\)))) # (!\Equal7~0_combout\ & (!\LessThan3~14_combout\ & ((\used_counter~40_combout\) # (\used_counter~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \used_counter~40_combout\,
	datac => \used_counter~42_combout\,
	datad => \LessThan3~14_combout\,
	combout => \used_counter~43_combout\);

-- Location: LCCOMB_X59_Y20_N24
\used_counter~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~38_combout\ = (\Equal7~0_combout\) # ((\lowestValue~16_combout\ $ (\Add3~0_combout\)) # (!\always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \always1~1_combout\,
	datac => \lowestValue~16_combout\,
	datad => \Add3~0_combout\,
	combout => \used_counter~38_combout\);

-- Location: LCCOMB_X58_Y21_N12
\used_counter~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~39_combout\ = (\Add3~2_combout\ & ((\Add3~4_combout\ $ (\lowestValue~18_combout\)) # (!\lowestValue~17_combout\))) # (!\Add3~2_combout\ & ((\lowestValue~17_combout\) # (\Add3~4_combout\ $ (\lowestValue~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~4_combout\,
	datac => \lowestValue~17_combout\,
	datad => \lowestValue~18_combout\,
	combout => \used_counter~39_combout\);

-- Location: LCCOMB_X58_Y21_N28
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\ & ((\used_counter~43_combout\) # ((\used_counter~38_combout\) # (\used_counter~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \used_counter~43_combout\,
	datac => \used_counter~38_combout\,
	datad => \used_counter~39_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X58_Y21_N8
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add3~2_combout\ & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X58_Y21_N9
\used_counter_ff[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[3][1]~regout\);

-- Location: LCCOMB_X58_Y20_N30
\lowestValue~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~15_combout\ = (\used_counter~2_combout\ & ((\LessThan2~14_combout\ & ((\Add2~2_combout\))) # (!\LessThan2~14_combout\ & (\lowestValue~7_combout\)))) # (!\used_counter~2_combout\ & (\lowestValue~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lowestValue~7_combout\,
	datab => \used_counter~2_combout\,
	datac => \Add2~2_combout\,
	datad => \LessThan2~14_combout\,
	combout => \lowestValue~15_combout\);

-- Location: LCCOMB_X59_Y20_N26
\lowestValue~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \lowestValue~17_combout\ = (\Equal7~0_combout\ & (((\lowestValue~15_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\Add3~2_combout\)) # (!\LessThan3~14_combout\ & ((\lowestValue~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add3~2_combout\,
	datac => \LessThan3~14_combout\,
	datad => \lowestValue~15_combout\,
	combout => \lowestValue~17_combout\);

-- Location: LCCOMB_X55_Y20_N0
\used_counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~6_combout\ = (\used_counter~1_combout\ & ((\used_counter~5_combout\ $ (\lowestValue~17_combout\)) # (!\lowestValue~16_combout\))) # (!\used_counter~1_combout\ & ((\lowestValue~16_combout\) # (\used_counter~5_combout\ $ 
-- (\lowestValue~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~1_combout\,
	datab => \used_counter~5_combout\,
	datac => \lowestValue~17_combout\,
	datad => \lowestValue~16_combout\,
	combout => \used_counter~6_combout\);

-- Location: LCCOMB_X54_Y20_N26
\used_counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~7_combout\ = (\b1~combout\ & ((\Add0~4_combout\))) # (!\b1~combout\ & (\used_counter_ff[0][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter_ff[0][2]~regout\,
	datac => \b1~combout\,
	datad => \Add0~4_combout\,
	combout => \used_counter~7_combout\);

-- Location: LCCOMB_X55_Y20_N8
\used_counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~9_combout\ = (\used_counter~8_combout\ & ((\used_counter~7_combout\ $ (\lowestValue~18_combout\)) # (!\lowestValue~19_combout\))) # (!\used_counter~8_combout\ & ((\lowestValue~19_combout\) # (\used_counter~7_combout\ $ 
-- (\lowestValue~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~8_combout\,
	datab => \used_counter~7_combout\,
	datac => \lowestValue~19_combout\,
	datad => \lowestValue~18_combout\,
	combout => \used_counter~9_combout\);

-- Location: LCCOMB_X53_Y20_N20
\used_counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~15_combout\ = (\b1~combout\ & (\Add0~12_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => \Add0~12_combout\,
	datad => \used_counter_ff[0][6]~regout\,
	combout => \used_counter~15_combout\);

-- Location: LCCOMB_X59_Y20_N30
\used_counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~17_combout\ = (\used_counter~0_combout\ & ((\used_counter~15_combout\ $ (\lowestValue~10_combout\)) # (!\lowestValue~9_combout\))) # (!\used_counter~0_combout\ & ((\lowestValue~9_combout\) # (\used_counter~15_combout\ $ 
-- (\lowestValue~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~0_combout\,
	datab => \used_counter~15_combout\,
	datac => \lowestValue~10_combout\,
	datad => \lowestValue~9_combout\,
	combout => \used_counter~17_combout\);

-- Location: LCCOMB_X55_Y20_N24
\used_counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~18_combout\ = (\Equal7~0_combout\ & (((\used_counter~17_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\used_counter~16_combout\)) # (!\LessThan3~14_combout\ & ((\used_counter~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~16_combout\,
	datab => \Equal7~0_combout\,
	datac => \used_counter~17_combout\,
	datad => \LessThan3~14_combout\,
	combout => \used_counter~18_combout\);

-- Location: LCCOMB_X53_Y20_N22
\used_counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~11_combout\ = (\b1~combout\ & ((\Add0~10_combout\))) # (!\b1~combout\ & (\used_counter_ff[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][5]~regout\,
	datab => \b1~combout\,
	datac => \Add0~10_combout\,
	combout => \used_counter~11_combout\);

-- Location: LCCOMB_X58_Y20_N24
\used_counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~13_combout\ = (\used_counter~10_combout\ & ((\used_counter~11_combout\ $ (\lowestValue~11_combout\)) # (!\lowestValue~12_combout\))) # (!\used_counter~10_combout\ & ((\lowestValue~12_combout\) # (\used_counter~11_combout\ $ 
-- (\lowestValue~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~10_combout\,
	datab => \used_counter~11_combout\,
	datac => \lowestValue~12_combout\,
	datad => \lowestValue~11_combout\,
	combout => \used_counter~13_combout\);

-- Location: LCCOMB_X55_Y20_N22
\used_counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~14_combout\ = (\Equal7~0_combout\ & (((\used_counter~13_combout\)))) # (!\Equal7~0_combout\ & ((\LessThan3~14_combout\ & (\used_counter~12_combout\)) # (!\LessThan3~14_combout\ & ((\used_counter~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~12_combout\,
	datab => \Equal7~0_combout\,
	datac => \used_counter~13_combout\,
	datad => \LessThan3~14_combout\,
	combout => \used_counter~14_combout\);

-- Location: LCCOMB_X55_Y20_N18
\used_counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~19_combout\ = (\b1~combout\) # (((\used_counter~18_combout\) # (\used_counter~14_combout\)) # (!\always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \always1~1_combout\,
	datac => \used_counter~18_combout\,
	datad => \used_counter~14_combout\,
	combout => \used_counter~19_combout\);

-- Location: LCCOMB_X55_Y20_N28
\Selector31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\Selector7~0_combout\ & ((\used_counter~6_combout\) # ((\used_counter~9_combout\) # (\used_counter~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \used_counter~6_combout\,
	datac => \used_counter~9_combout\,
	datad => \used_counter~19_combout\,
	combout => \Selector31~2_combout\);

-- Location: LCCOMB_X54_Y20_N24
\Selector25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\Selector31~2_combout\ & ((\b1~combout\ & (\Add0~12_combout\)) # (!\b1~combout\ & ((\used_counter_ff[0][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \b1~combout\,
	datac => \used_counter_ff[0][6]~regout\,
	datad => \Selector31~2_combout\,
	combout => \Selector25~2_combout\);

-- Location: LCFF_X54_Y20_N25
\used_counter_ff[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector25~2_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[0][6]~regout\);

-- Location: LCCOMB_X53_Y20_N24
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\used_counter_ff[0][4]~regout\) # ((\used_counter_ff[0][6]~regout\) # ((\used_counter_ff[0][5]~regout\) # (\used_counter_ff[0][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][4]~regout\,
	datab => \used_counter_ff[0][6]~regout\,
	datac => \used_counter_ff[0][5]~regout\,
	datad => \used_counter_ff[0][7]~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X61_Y20_N20
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!\rst~combout\ & ((NextState(1)) # (NextState(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextState(1),
	datab => NextState(0),
	datac => \rst~combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X54_Y20_N0
\WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\used_counter_ff[0][1]~regout\) # ((\used_counter_ff[0][2]~regout\) # ((\used_counter_ff[0][3]~regout\) # (\used_counter_ff[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[0][1]~regout\,
	datab => \used_counter_ff[0][2]~regout\,
	datac => \used_counter_ff[0][3]~regout\,
	datad => \used_counter_ff[0][0]~regout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X54_Y20_N6
\Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\Equal8~0_combout\ & ((\WideOr0~0_combout\) # (\WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \WideOr0~1_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X54_Y20_N12
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\used_counter_ff[1][4]~regout\) # ((\used_counter_ff[1][5]~regout\) # ((\used_counter_ff[1][6]~regout\) # (\used_counter_ff[1][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[1][4]~regout\,
	datab => \used_counter_ff[1][5]~regout\,
	datac => \used_counter_ff[1][6]~regout\,
	datad => \used_counter_ff[1][7]~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X55_Y20_N30
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\Add1~4_combout\ & \Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	datad => \Selector23~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCFF_X55_Y20_N31
\used_counter_ff[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector21~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[1][2]~regout\);

-- Location: LCCOMB_X56_Y21_N16
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\used_counter_ff[1][3]~regout\) # ((\used_counter_ff[1][2]~regout\) # ((\used_counter_ff[1][1]~regout\) # (\used_counter_ff[1][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[1][3]~regout\,
	datab => \used_counter_ff[1][2]~regout\,
	datac => \used_counter_ff[1][1]~regout\,
	datad => \used_counter_ff[1][0]~regout\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X60_Y20_N24
\Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\Equal8~0_combout\ & ((\WideOr1~0_combout\) # (\WideOr1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \WideOr1~0_combout\,
	datad => \WideOr1~1_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X59_Y21_N22
\WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\used_counter_ff[2][2]~regout\) # ((\used_counter_ff[2][0]~regout\) # ((\used_counter_ff[2][1]~regout\) # (\used_counter_ff[2][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[2][2]~regout\,
	datab => \used_counter_ff[2][0]~regout\,
	datac => \used_counter_ff[2][1]~regout\,
	datad => \used_counter_ff[2][3]~regout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X60_Y21_N6
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Add2~8_combout\ & \Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X60_Y21_N7
\used_counter_ff[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[2][4]~regout\);

-- Location: LCCOMB_X59_Y21_N28
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\used_counter_ff[2][7]~regout\) # ((\used_counter_ff[2][5]~regout\) # ((\used_counter_ff[2][6]~regout\) # (\used_counter_ff[2][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[2][7]~regout\,
	datab => \used_counter_ff[2][5]~regout\,
	datac => \used_counter_ff[2][6]~regout\,
	datad => \used_counter_ff[2][4]~regout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X59_Y21_N16
\Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\Equal8~0_combout\ & ((\WideOr2~1_combout\) # (\WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr2~1_combout\,
	datac => \Equal8~0_combout\,
	datad => \WideOr2~0_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X58_Y21_N26
\Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\Add3~0_combout\ & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~0_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCFF_X58_Y21_N27
\used_counter_ff[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \t|timedClock~clkctrl_outclk\,
	datain => \Selector7~2_combout\,
	sclr => \rst~combout\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter_ff[3][0]~regout\);

-- Location: LCCOMB_X57_Y21_N22
\WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (\used_counter_ff[3][3]~regout\) # ((\used_counter_ff[3][2]~regout\) # ((\used_counter_ff[3][1]~regout\) # (\used_counter_ff[3][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[3][3]~regout\,
	datab => \used_counter_ff[3][2]~regout\,
	datac => \used_counter_ff[3][1]~regout\,
	datad => \used_counter_ff[3][0]~regout\,
	combout => \WideOr3~1_combout\);

-- Location: LCCOMB_X57_Y21_N24
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\used_counter_ff[3][5]~regout\) # ((\used_counter_ff[3][6]~regout\) # ((\used_counter_ff[3][4]~regout\) # (\used_counter_ff[3][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter_ff[3][5]~regout\,
	datab => \used_counter_ff[3][6]~regout\,
	datac => \used_counter_ff[3][4]~regout\,
	datad => \used_counter_ff[3][7]~regout\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X57_Y21_N16
\Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\Equal8~0_combout\ & ((\WideOr3~1_combout\) # (\WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr3~1_combout\,
	datac => \WideOr3~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \Selector35~0_combout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l1);

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l2);

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l3);

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l4);
END structure;


